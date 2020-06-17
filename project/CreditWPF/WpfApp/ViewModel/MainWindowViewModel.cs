using System;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Windows;
using System.Windows.Data;
using System.Globalization;
using WpfApp.ViewModel.DefaultViewModel;
using WpfApp.Content;
using WpfApp.ServiceWcfHost;

namespace WpfApp.ViewModel
{
    class MainWindowViewModel : WorkspaceViewModel
    {
        #region Fields

        static ObservableCollection<WorkspaceViewModel> _workspaces;
        static private string[] menuArray = new string[5];
        public static ServiceClient ServiceClient;

        #endregion // Fields

        /// <summary>
        /// Отображение даты на главной форме
        /// </summary>
        public string DisplayDate { get; protected set; }

        #region Constructor

        public MainWindowViewModel()
        {
            CultureInfo ci = new CultureInfo("ru-RU");
            DateTimeFormatInfo dtfi = ci.DateTimeFormat;
            base.DisplayName = StringProject.NameProject;
            this.DisplayDate = "Сегодня " + DateTime.Now.ToShortDateString() + " - " + dtfi.GetDayName(DateTime.Now.DayOfWeek);
        }

         //Получение соединения с сервисом WCF
        private ServiceClient ServiceRepository
        {
            get
            {
                try
                {
                    if (ServiceClient != null)
                        if (ServiceClient.State == CommunicationState.Opened) return ServiceClient;

                    ServiceClient = new ServiceClient("TcpBinding");

                    if (ServiceClient.ChannelFactory.State == CommunicationState.Created)
                        ServiceClient.Open();
                }
                catch (Exception ex)
                {
                    ServiceClient = null;
                    MessageBoxWPF.Show(StringProject.ErrorLoadService, StringProject.ErrorCaption, MessageBoxButton.OK, MessageBoxImage.Error);
                    MessageBoxWPF.Show(ex.Message, StringProject.ErrorCaption, MessageBoxButton.OK, MessageBoxImage.Error);
                }
                return ServiceClient;
            }
        }

        #endregion // Constructor

        #region DisplayMenu
        /// <summary>
        /// Формирование строки состояния вложенности меню
        /// </summary>
        static public string DispMenu(int index, string menuName)
        {
            menuArray[index] = menuName;
            StringBuilder temp = new StringBuilder();
            foreach (string value in menuArray.Where(value => value != null))
            {
                if (temp.Length > 0)
                {
                    temp.Append(" -> ");
                    temp.Append(value);
                }
                else
                    temp.Append(value);
            }
            return temp.ToString();
        }

        #endregion // DisplayMenu

        #region Workspaces

        /// <summary>
        /// Returns the collection of available workspaces to display.
        /// A 'workspace' is a ViewModel that can request to be closed.
        /// </summary>
        public ObservableCollection<WorkspaceViewModel> Workspaces
        {
            get
            {
                if (_workspaces == null)
                {
                    _workspaces = new ObservableCollection<WorkspaceViewModel>();
                    _workspaces.CollectionChanged += OnWorkspacesChanged;
                }
                return _workspaces;
            }
        }

        void OnWorkspacesChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null && e.NewItems.Count != 0)
                foreach (WorkspaceViewModel workspace in e.NewItems)
                    workspace.RequestClose += OnWorkspaceRequestClose;

            if (e.OldItems != null && e.OldItems.Count != 0)
                foreach (WorkspaceViewModel workspace in e.OldItems)
                    workspace.RequestClose -= OnWorkspaceRequestClose;
        }

        void OnWorkspaceRequestClose(object sender, EventArgs e)
        {
            WorkspaceViewModel workspace = sender as WorkspaceViewModel;
            workspace.Dispose();
            Workspaces.Remove(workspace);

            ServiceClient = null;
        }

        #endregion // Workspaces


        #region Private Helpers

        public void ShowUsers(string name)
        {
            base.DisplayName = name;
            ShowUsersViewModel workspace = Workspaces.FirstOrDefault(vm => vm is ShowUsersViewModel) as ShowUsersViewModel;

            if (workspace == null)
            {
                workspace = new ShowUsersViewModel(ServiceRepository, name);
                Workspaces.Add(workspace);
            }
            SetActiveWorkspace(workspace);
        }

        public void ShowGroupCreditWorthiness(string name)
        {
            base.DisplayName = name;
            ShowGroupCreditWorthinessViewModel workspace = Workspaces.FirstOrDefault(vm => vm is ShowGroupCreditWorthinessViewModel) as ShowGroupCreditWorthinessViewModel;

            if (workspace == null)
            {
                workspace = new ShowGroupCreditWorthinessViewModel(ServiceRepository, name);
                Workspaces.Add(workspace);
            }
            SetActiveWorkspace(workspace);
        }

        public void ShowGroupCharacter(string name)
        {
            base.DisplayName = name;
            ShowGroupCharacterViewModel workspace = Workspaces.FirstOrDefault(vm => vm is ShowGroupCharacterViewModel) as ShowGroupCharacterViewModel;

            if (workspace == null)
            {
                workspace = new ShowGroupCharacterViewModel(ServiceRepository, name);
                Workspaces.Add(workspace);
            }
            SetActiveWorkspace(workspace);
        }

        public void ShowCredit(string name)
        {
            base.DisplayName = name;
            ShowCreditViewModel workspace = Workspaces.FirstOrDefault(vm => vm is ShowCreditViewModel) as ShowCreditViewModel;

            if (workspace == null)
            {
                workspace = new ShowCreditViewModel(ServiceRepository, name);
                Workspaces.Add(workspace);
            }
            SetActiveWorkspace(workspace);
        }

        public void ShowAbout(string name)
        {
            View.AboutView f = new View.AboutView { ShowInTaskbar = false };
            f.ShowDialog();
        }

        void SetActiveWorkspace(WorkspaceViewModel workspace)
        {
            Debug.Assert(Workspaces.Contains(workspace));

            ICollectionView collectionView = CollectionViewSource.GetDefaultView(Workspaces);
            if (collectionView != null)
                collectionView.MoveCurrentTo(workspace);
        }

        #endregion // Private Helpers
    }
}
