using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using WpfApp.Content;
using WpfApp.ServiceWcfHost;
using WpfApp.View;
using WpfApp.ViewModel.DefaultViewModel;

namespace WpfApp.ViewModel
{
    public class ShowGroupCharacterViewModel : WorkspaceViewModel
    {
        #region Fields

        private ServiceClient repository;
        RelayCommand _addCommand, _updateCommand, _deleteCommand;

        #endregion // Fields


        #region Constructor

        public ShowGroupCharacterViewModel(ServiceClient repository, string displayName)
        {
            base.DisplayName = displayName;
            this.repository = repository;            
            CreateAllModel();
        }

        void CreateAllModel()
        {
            List<GroupCharacterViewModel> all =
                (from item in repository.GetGroupCharacters() select new GroupCharacterViewModel(item)).ToList();

            AllModel = new ObservableCollection<GroupCharacterViewModel>(all);
        }

        #endregion // Constructor


        #region Public Interface

        static public ObservableCollection<GroupCharacterViewModel> AllModel { get; private set; }

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
                    param => this.UpdateModel(param as GroupCharacterViewModel)));
            }
        }

        public ICommand DeleteCmd
        {
            get
            {
                return _deleteCommand ?? (_deleteCommand = new RelayCommand(
                    param => this.DeleteModel(param as GroupCharacterViewModel)));
            }
        }

        private void AddModel()
        {
            GroupCharacter model = new GroupCharacter();
            AddGroupCharacterView view = new AddGroupCharacterView(true, model, repository) { ShowInTaskbar = false };
            view.ShowDialog();

            if (view.DialogResult != true) return;

            model.Id = repository.AddGroupCharacter(model);
            if (model.Id == 0)
            {
                MessageBoxWPF.Show(StringProject.ErrorAddRecort, StringProject.ErrorCaption, MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            AllModel.Add(new GroupCharacterViewModel(model));
        }

        private void UpdateModel(GroupCharacterViewModel model)
        {
            if (model == null) return;
            AddGroupCharacterView view = new AddGroupCharacterView(false, model.GetModel, repository) { ShowInTaskbar = false };
            view.ShowDialog();
            if (view.DialogResult != true) return;

            bool flag = repository.UpdateGroupCharacter(model.GetModel);
            if (!flag)
            {
                MessageBoxWPF.Show(StringProject.ErrorUpdRecort, StringProject.ErrorCaption, MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            model.RefreshModel();
        }

        private void DeleteModel(GroupCharacterViewModel model)
        {
            if (model == null) return;
            if (MessageBoxWPF.Show("Вы действительно хотите удалить параметр ?", StringProject.MessageCaption, MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.No)
                return;

            bool flag = repository.DeleteGroupCharacter(model.GetModel);
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
