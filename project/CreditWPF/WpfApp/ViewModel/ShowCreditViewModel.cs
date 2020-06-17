using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using WpfApp.Content;
using WpfApp.Report;
using WpfApp.ServiceWcfHost;
using WpfApp.View;
using WpfApp.ViewModel.DefaultViewModel;

namespace WpfApp.ViewModel
{
    public class ShowCreditViewModel : WorkspaceViewModel
    {
        #region Fields

        private ServiceClient repository;
        RelayCommand _addCommand, _updateCommand, _deleteCommand, _showPaymentCommand, _printCommand;

        #endregion // Fields


        #region Constructor

        public ShowCreditViewModel(ServiceClient repository, string displayName)
        {
            base.DisplayName = displayName;
            this.repository = repository;            
            CreateAllModel();
        }

        void CreateAllModel()
        {
            List<CreditViewModel> all =
                (from item in repository.GetCredits() select new CreditViewModel(item,repository)).ToList();

            AllModel = new ObservableCollection<CreditViewModel>(all);
        }

        #endregion // Constructor


        #region Public Interface

        static public ObservableCollection<CreditViewModel> AllModel { get; private set; }

        public ICommand AddCmd
        {
            get
            {
                return _addCommand ?? (_addCommand = new RelayCommand(
                    param => this.AddModel(param as CreditViewModel)));
            }
        }

        public ICommand UpdateCmd
        {
            get
            {
                return _updateCommand ?? (_updateCommand = new RelayCommand(
                    param => this.UpdateModel(param as CreditViewModel)));
            }
        }

        public ICommand DeleteCmd
        {
            get
            {
                return _deleteCommand ?? (_deleteCommand = new RelayCommand(
                    param => this.DeleteModel(param as CreditViewModel)));
            }
        }

        public ICommand PaymentsCmd
        {
            get
            {
                return _showPaymentCommand ?? (_showPaymentCommand = new RelayCommand(
                    param => this.ShowPaymentModel(param as CreditViewModel)));
            }
        }

        public ICommand PrintCmd
        {
            get
            {
                return _printCommand ?? (_printCommand = new RelayCommand(
                    param => this.PrintModel(param as CreditViewModel)));
            }
        }

        private void PrintModel(CreditViewModel model)
        {
            if (model == null)
            {
                MessageBoxWPF.Show("Выберите кредит!", "Сообщение.", MessageBoxButton.OK, MessageBoxImage.Information);
                return;
            }
            PrintReport.PrintCredit(model, repository);
        }

        public void ShowPaymentModel(CreditViewModel model)
        {
            if (model == null)
            {
                MessageBoxWPF.Show("Выберите кредит!", "Сообщение.", MessageBoxButton.OK, MessageBoxImage.Information);
                return;
            }
            List<Payment> list = repository.GetPaymentsByIdCredit(model.Id).ToList();
            ShowPaymentsView view = new ShowPaymentsView(list) { ShowInTaskbar = false };
            view.ShowDialog();
            if (view.DialogResult != true) return;
        }

        private void AddModel(CreditViewModel model)
        {
            Credit modelCredit = new Credit();
            User modelUser = new User();
            List<Payment> listPayment = new List<Payment>();
            CreateCreditView view;
            if (model == null)
            {
                 view = new CreateCreditView(true, repository, modelUser, modelCredit){ShowInTaskbar = false};
            }
            else
            {
                modelUser = repository.FirstUser(model.IdUser);
                view = new CreateCreditView(false,repository, modelUser, modelCredit) { ShowInTaskbar = false };
            }
           
            view.ShowDialog();

            if (view.DialogResult != true) return;

            if (model == null)
            {
                //Сохранение пользователя в БД
                modelUser.Id = repository.AddUser(modelUser);
                if (modelUser.Id == 0)
                {
                    MessageBoxWPF.Show(StringProject.ErrorAddRecort, StringProject.ErrorCaption, MessageBoxButton.OK,
                        MessageBoxImage.Error);
                    return;
                }
            }

            modelCredit.IdUser = modelUser.Id;
            modelCredit.UserObj = repository.FirstUser(modelUser.Id);
            //Сохранение кредита в БД
            modelCredit.Id = repository.AddCredit(modelCredit);

            if (modelCredit.Id == 0)
            {
                MessageBoxWPF.Show(StringProject.ErrorAddRecort, StringProject.ErrorCaption, MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            listPayment = repository.CalculationPayment(modelCredit.SummaFull, modelCredit.SummaMonth,
                    modelCredit.Stavka, modelCredit.TermMonth, modelCredit.DataStart).ToList();

            foreach (Payment item in listPayment)
            {
                item.IdCredit = modelCredit.Id;
                //Сохранение графика платежей в БД
                repository.AddPayment(item);
            }

            ConditionCredit modelConditionCredit = new ConditionCredit
            {
                Data = DateTime.Now,
                IdCredit = modelCredit.Id,
                IdCondition = 1 // оформлен
            };
            //Сохранение состояния кредита в БД
            repository.AddConditionCredit(modelConditionCredit);

            AllModel.Add(new CreditViewModel(modelCredit,repository));

        }

        private void UpdateModel(CreditViewModel model)
        {
            if (model == null)
            {
                MessageBoxWPF.Show("Выберите кредит!", "Сообщение.", MessageBoxButton.OK, MessageBoxImage.Information);
                return;
            } 
            Payment modelPay = repository.SearchPayment(model.Id);
            if (modelPay == null)
            {
                MessageBoxWPF.Show("Кредит уже выплачен!", "Сообщение.", MessageBoxButton.OK, MessageBoxImage.Information);
                return;
            }
            AddPaymentView view = new AddPaymentView(modelPay, repository) { ShowInTaskbar = false };
            view.ShowDialog();
            if (view.DialogResult != true) return;

            bool flag = repository.UpdatePayment(modelPay);
            if (!flag)
            {
                MessageBoxWPF.Show(StringProject.ErrorUpdRecort, StringProject.ErrorCaption, MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            List<Payment> list = repository.GetPaymentsByIdCredit(model.Id).ToList();
            if (list.All(x => x.Repay != false))
            {
                ConditionCredit modelConditionCredit = new ConditionCredit
                {
                    Data = DateTime.Now,
                    IdCredit = model.Id,
                    IdCondition = 2 // выплачен
                };
                //Сохранение состояния кредита в БД
                repository.AddConditionCredit(modelConditionCredit);
            }
            model.RefreshModel();
        }


        private void DeleteModel(CreditViewModel model)
        {
            if (model == null)
            {
                MessageBoxWPF.Show("Выберите кредит!", "Сообщение.", MessageBoxButton.OK, MessageBoxImage.Information);
                return;
            }
            if (MessageBoxWPF.Show("Вы действительно хотите удалить кредит ?", StringProject.MessageCaption, MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.No)
                return;

            bool flag = repository.DeleteCredit(model.GetModel);
            if (!flag)
            {
                MessageBoxWPF.Show(StringProject.ErrorDelRecort, StringProject.ErrorCaption, MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            AllModel.Remove(model);
        }

        #endregion // Public Interface
    }
}
