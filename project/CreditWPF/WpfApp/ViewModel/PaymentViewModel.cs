using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfApp.ServiceWcfHost;
using WpfApp.ViewModel.DefaultViewModel;

namespace WpfApp.ViewModel
{
    public class PaymentViewModel : WorkspaceViewModel
    {
        private readonly Payment model;

        public PaymentViewModel(Payment model)
        {
            if (model == null)
                throw new ArgumentNullException("model");

            this.model = model;
        }

        public Payment GetModel { get { return model; } }

        public void RefreshModel()
        {
            base.OnPropertyChanged("NumberMonth");
            base.OnPropertyChanged("Data");
            base.OnPropertyChanged("LostSumma");
            base.OnPropertyChanged("MainPay");
            base.OnPropertyChanged("Percent");
            base.OnPropertyChanged("SummaMonth");
            base.OnPropertyChanged("Repay");
        }


        #region Properties

        public int NumberMonth
        {
            get { return model.NumberMonth; }
            set
            {
                if (value == model.NumberMonth)
                    return;

                model.NumberMonth = value;

                base.OnPropertyChanged("NumberMonth");
            }
        }

        public string Data
        {
            get { return model.Data; }
            set
            {
                if (value == model.Data)
                    return;

                model.Data = value;

                base.OnPropertyChanged("Data");
            }
        }


        public int LostSumma
        {
            get { return model.LostSumma; }
            set
            {
                if (value == model.LostSumma)
                    return;

                model.LostSumma = value;

                base.OnPropertyChanged("LostSumma");
            }
        }


        public int MainPay
        {
            get { return model.MainPay; }
            set
            {
                if (value == model.MainPay)
                    return;

                model.MainPay = value;

                base.OnPropertyChanged("MainPay");
            }
        }

        public int Percent
        {
            get { return model.Percent; }
            set
            {
                if (value == model.Percent)
                    return;

                model.Percent = value;

                base.OnPropertyChanged("Percent");
            }
        }

        public int SummaMonth
        {
            get { return model.SummaMonth; }
            set
            {
                if (value == model.SummaMonth)
                    return;

                model.SummaMonth = value;

                base.OnPropertyChanged("SummaMonth");
            }
        }

        public bool Repay
        {
            get { return model.Repay; }
            set
            {
                if (value == model.Repay)
                    return;

                model.Repay = value;

                base.OnPropertyChanged("Repay");
            }
        }

        #endregion // Properties
    }
}
