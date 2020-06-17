using System;
using System.Collections.Generic;
using System.Linq;
using WpfApp.ServiceWcfHost;
using WpfApp.ViewModel.DefaultViewModel;

namespace WpfApp.ViewModel
{
    public class CreditViewModel : WorkspaceViewModel
    {
          private readonly Credit model;
          private readonly ServiceClient repository;

          public CreditViewModel(Credit model, ServiceClient repository)
        {
            if (model == null)
                throw new ArgumentNullException("model");

            this.model = model;
            this.repository = repository;
        }

        public Credit GetModel { get { return model; } }

        public void RefreshModel()
        {
            base.OnPropertyChanged("Id");
            base.OnPropertyChanged("TermMonth");
            base.OnPropertyChanged("SummaFull");
            base.OnPropertyChanged("SummaMonth");
            base.OnPropertyChanged("Stavka");
            base.OnPropertyChanged("DataStart");
            base.OnPropertyChanged("UserName");
            base.OnPropertyChanged("NameCondition");
        }


        #region Properties

        public int Id
        {
            get { return model.Id; }
        }

        public int TermMonth
        {
            get { return model.TermMonth; }
            set
            {
                if (value == model.TermMonth)
                    return;

                model.TermMonth = value;

                base.OnPropertyChanged("TermMonth");
            }
        }

        public int SummaFull
        {
            get { return model.SummaFull; }
            set
            {
                if (value == model.SummaFull)
                    return;

                model.SummaFull = value;

                base.OnPropertyChanged("SummaFull");
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

        public int Stavka
        {
            get { return model.Stavka; }
            set
            {
                if (value == model.Stavka)
                    return;

                model.Stavka = value;

                base.OnPropertyChanged("Stavka");
            }
        }

        public string DataStart
        {
            get { return model.DataStart.ToShortDateString(); }
            set
            {
                if (value == model.DataStart.ToShortDateString())
                    return;

                model.DataStart = Convert.ToDateTime(value);

                base.OnPropertyChanged("DataStart");
            }
        }

        public string UserName
        {
            get { return model.UserObj.Fio; }
            set
            {
                if (value == model.UserObj.Fio)
                    return;

                model.UserObj.Fio = value;

                base.OnPropertyChanged("UserName");
            }
        }

        public int IdUser
        {
            get { return model.IdUser; }
        }

        public string NameCondition
        {
            get { return GetNameCondition(model.Id); }
        }

        #endregion // Properties

        private string GetNameCondition(int idCredit)
        {
            List<ConditionCredit> list =
                repository.GetConditionCreditsByIdCredits(idCredit).OrderByDescending(x => x.ConditionObj.Id).ToList();
            return list.First().ConditionObj.Name;
        }
    }
}
