using System;
using System.Windows.Input;

namespace WpfApp.ViewModel.DefaultViewModel
{
    /// <summary>
    /// This ViewModelBase subclass requests to be removed 
    /// from the UI when its CloseCommand executes.
    /// This class is abstract.
    /// </summary>
    public class WorkspaceViewModel : ViewModelBase
    {
        #region Fields

        RelayCommand _closeCommand;
        RelayCommand _maxWindowCommand;
        RelayCommand _minWindowCommand;

        #endregion // Fields

        #region Constructor

        protected WorkspaceViewModel()
        {
        }

        #endregion // Constructor

        #region CloseCommand

        /// <summary>
        /// Returns the command that, when invoked, attempts
        /// to remove this workspace from the user interface.
        /// </summary>
        public ICommand CloseCommand
        {
            get
            {
                if (_closeCommand == null)
                    _closeCommand = new RelayCommand(param => this.OnRequestClose());

                return _closeCommand;
            }
        }

        /// <summary>
        /// Raised when this workspace should be removed from the UI.
        /// </summary>
        public event EventHandler RequestClose;

        void OnRequestClose()
        {
            EventHandler handler = this.RequestClose;
            if (handler != null)
                handler(this, EventArgs.Empty);
        }

        #endregion // CloseCommand

        #region MaxWindowCommand

        public ICommand MaxWindowCommand
        {
            get
            {
                if (_maxWindowCommand == null)
                    _maxWindowCommand = new RelayCommand(param => this.OnRequestMax());

                return _maxWindowCommand;
            }
        }

        void OnRequestMax()
        {
            if (App.Current.MainWindow.WindowState == System.Windows.WindowState.Maximized)
                App.Current.MainWindow.WindowState = System.Windows.WindowState.Normal;
            else
                App.Current.MainWindow.WindowState = System.Windows.WindowState.Maximized;
        }

        #endregion  // MaxWindowComand


        #region MinWindowCommand

        public ICommand MinWindowCommand
        {
            get
            {
                if (_minWindowCommand == null)
                    _minWindowCommand = new RelayCommand(param => this.OnRequestMin());

                return _minWindowCommand;
            }
        }

        void OnRequestMin()
        {
            App.Current.MainWindow.WindowState = System.Windows.WindowState.Minimized;
        }

        #endregion  // MinWindowComand

    }
}
