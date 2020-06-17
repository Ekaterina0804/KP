
using System;
using WpfApp.ServiceWcfHost;
using WpfApp.ViewModel.DefaultViewModel;

namespace WpfApp.ViewModel
{
    public class GroupCreditWorthinesViewModel : WorkspaceViewModel
    {
        private readonly GroupCreditWorthiness model;

        public GroupCreditWorthinesViewModel(GroupCreditWorthiness model)
        {
            if (model == null)
                throw new ArgumentNullException("model");

            this.model = model;
        }

        public GroupCreditWorthiness GetModel { get { return model; } }

        public void RefreshModel()
        {
            base.OnPropertyChanged("Name");
            base.OnPropertyChanged("MaxSumma");
        }


        #region Properties

        public string Name
        {
            get { return model.Name; }
            set
            {
                if (value == model.Name)
                    return;

                model.Name = value;

                base.OnPropertyChanged("Name");
            }
        }

        public int MaxSumma
        {
            get { return model.MaxSumma; }
            set
            {
                if (value == model.MaxSumma)
                    return;

                model.MaxSumma = value;

                base.OnPropertyChanged("MaxSumma");
            }
        }

        #endregion // Properties

    }
}
