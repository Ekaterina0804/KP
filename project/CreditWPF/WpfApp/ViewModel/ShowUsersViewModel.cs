
using System.Collections.Generic;
using System.Linq;
using WpfApp.Content;
using WpfApp.ViewModel.DefaultViewModel;
using WpfApp.ServiceWcfHost;
using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Input;
using WpfApp.View;

namespace WpfApp.ViewModel
{
    public class ShowUsersViewModel : WorkspaceViewModel
    {
        #region Fields

        private ServiceClient repository;
        RelayCommand  _updateCommand, _deleteCommand, _showUsersCreditCommand;

        #endregion // Fields


        #region Constructor

        public ShowUsersViewModel(ServiceClient repository, string displayName)
        {
            base.DisplayName = displayName;
            this.repository = repository;            
            CreateAllModel();
        }

        void CreateAllModel()
        {
            List<UserViewModel> all =
                (from item in repository.GetUsers() select new UserViewModel(item,repository)).ToList();

            AllModel = new ObservableCollection<UserViewModel>(all);
        }

        #endregion // Constructor


        #region Public Interface

        static public ObservableCollection<UserViewModel> AllModel { get; private set; }

        public ICommand UpdateCmd
        {
            get
            {
                return _updateCommand ?? (_updateCommand = new RelayCommand(
                    param => this.UpdateModel(param as UserViewModel)));
            }
        }

        public ICommand DeleteCmd
        {
            get
            {
                return _deleteCommand ?? (_deleteCommand = new RelayCommand(
                    param => this.DeleteModel(param as UserViewModel)));
            }
        }

        public ICommand ShowUserCreditCmd
        {
            get
            {
                return _showUsersCreditCommand ?? (_showUsersCreditCommand = new RelayCommand(
                    param => this.ShowUserCreditModel(param as UserViewModel)));
            }
        }

        public void ShowUserCreditModel(UserViewModel model)
        {
            if (model == null)
            {
                MessageBoxWPF.Show("Выберите заёмщика!", "Сообщение.", MessageBoxButton.OK, MessageBoxImage.Information);
                return;
            }
            List<Credit> list = repository.GetCreditsByIdUser(model.Id).ToList();
            ShowUsersCreditView view = new ShowUsersCreditView(list) { ShowInTaskbar = false };
            view.ShowDialog();
            if (view.DialogResult != true) return;
        }


        private void UpdateModel(UserViewModel model)
        {
            if (model == null)
            {
                MessageBoxWPF.Show("Выберите заёмщика!", "Сообщение.", MessageBoxButton.OK, MessageBoxImage.Information);
                return;
            }
            AddUserView view = new AddUserView(model.GetModel, repository) { ShowInTaskbar = false };
            view.ShowDialog();
            if (view.DialogResult != true) return;

            bool flag = repository.UpdateUser(model.GetModel);
            if (!flag)
            {
                MessageBoxWPF.Show(StringProject.ErrorUpdRecort, StringProject.ErrorCaption, MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            model.RefreshModel();
        }

        private void DeleteModel(UserViewModel model)
        {
            if (model == null)
            {
                MessageBoxWPF.Show("Выберите заёмщика!", "Сообщение.", MessageBoxButton.OK, MessageBoxImage.Information);
                return;
            }
            if (MessageBoxWPF.Show("Вы действительно хотите удалить пользователя <" + model.Fio + "> ?", StringProject.MessageCaption, MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.No)
                return;

            bool flag = repository.DeleteUser(model.GetModel);
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
