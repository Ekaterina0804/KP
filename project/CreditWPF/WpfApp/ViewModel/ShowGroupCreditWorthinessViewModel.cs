
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using System.Windows.Input;
using WpfApp.Content;
using WpfApp.ServiceWcfHost;
using WpfApp.View;
using WpfApp.ViewModel.DefaultViewModel;

namespace WpfApp.ViewModel
{
    public class ShowGroupCreditWorthinessViewModel : WorkspaceViewModel
    {
       #region Fields

        private ServiceClient repository;
        RelayCommand _addCommand, _updateCommand, _deleteCommand;

        #endregion // Fields


        #region Constructor

        public ShowGroupCreditWorthinessViewModel(ServiceClient repository, string displayName)
        {
            base.DisplayName = displayName;
            this.repository = repository;            
            CreateAllModel();
        }

        void CreateAllModel()
        {
            List<GroupCreditWorthinesViewModel> all =
                (from item in repository.GetGroupCreditWorthinesss() select new GroupCreditWorthinesViewModel(item)).ToList();

            AllModel = new ObservableCollection<GroupCreditWorthinesViewModel>(all);
        }

        #endregion // Constructor


        #region Public Interface

        static public ObservableCollection<GroupCreditWorthinesViewModel> AllModel { get; private set; }

        public ICommand AddCmd
        {
            get
            {
                return _addCommand ?? (_addCommand = new RelayCommand(
                    param => this.AddModel()));
            }
        }

        public ICommand UpdateCmd
        {
            get
            {
                return _updateCommand ?? (_updateCommand = new RelayCommand(
                    param => this.UpdateModel(param as GroupCreditWorthinesViewModel)));
            }
        }

        public ICommand DeleteCmd
        {
            get
            {
                return _deleteCommand ?? (_deleteCommand = new RelayCommand(
                    param => this.DeleteModel(param as GroupCreditWorthinesViewModel)));
            }
        }

        private void AddModel()
        {
            GroupCreditWorthiness model = new GroupCreditWorthiness();
            AddGroupCreditWorthinesView view = new AddGroupCreditWorthinesView(true, model, repository) { ShowInTaskbar = false };
            view.ShowDialog();

            if (view.DialogResult != true) return;

            model.Id = repository.AddGroupCreditWorthiness(model);
            if (model.Id == 0)
            {
                MessageBoxWPF.Show(StringProject.ErrorAddRecort, StringProject.ErrorCaption, MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            AllModel.Add(new GroupCreditWorthinesViewModel(model));
        }

        private void UpdateModel(GroupCreditWorthinesViewModel model)
        {
            if (model == null) return;
            AddGroupCreditWorthinesView view = new AddGroupCreditWorthinesView(false, model.GetModel, repository) { ShowInTaskbar = false };
            view.ShowDialog();
            if (view.DialogResult != true) return;

            bool flag = repository.UpdateGroupCreditWorthiness(model.GetModel);
            if (!flag)
            {
                MessageBoxWPF.Show(StringProject.ErrorUpdRecort, StringProject.ErrorCaption, MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            model.RefreshModel();
        }

        private void DeleteModel(GroupCreditWorthinesViewModel model)
        {
            if (model == null) return;
            if (MessageBoxWPF.Show("Вы действительно хотите удалить группу <" + model.Name + "> ?", StringProject.MessageCaption, MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.No)
                return;

            bool flag = repository.DeleteGroupCreditWorthiness(model.GetModel);
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
