using System;
using System.Linq;
using System.Collections.Generic;
using WpfApp.ServiceWcfHost;
using WpfApp.ViewModel.DefaultViewModel;

namespace WpfApp.ViewModel
{
    public class UserViewModel : WorkspaceViewModel
    {
        private readonly User model;
        private readonly ServiceClient repository;

        public UserViewModel(User model, ServiceClient repository)
        {
            if (model == null)
                throw new ArgumentNullException("model");

            this.model = model;
            this.repository = repository;
        }

        public User GetModel { get { return model; } }

        public void RefreshModel()
        {
            base.OnPropertyChanged("Id");
            base.OnPropertyChanged("Fio");
            base.OnPropertyChanged("Sex");
            base.OnPropertyChanged("SexName");
            base.OnPropertyChanged("Age");
            base.OnPropertyChanged("CountChildren");
            base.OnPropertyChanged("Married");
            base.OnPropertyChanged("MarriedName");
            base.OnPropertyChanged("RevenueMonth");
            base.OnPropertyChanged("GroupName");
        }


        #region Properties

        public int Id
        {
            get { return model.Id; }
            set
            {
                if (value == model.Id)
                    return;

                model.Id = value;

                base.OnPropertyChanged("Id");
            }
        }

        public string Fio
        {
            get { return model.Fio; }
            set
            {
                if (value == model.Fio)
                    return;

                model.Fio = value;

                base.OnPropertyChanged("Fio");
            }
        }

        public int RevenueMonth
        {
            get { return model.RevenueMonth; }
            set
            {
                if (value == model.RevenueMonth)
                    return;

                model.RevenueMonth = value;

                base.OnPropertyChanged("RevenueMonth");
            }
        }

        public string Sex
        {
            get { return model.Sex; }
            set
            {
                if (value == model.Sex)
                    return;

                model.Sex = value;

                base.OnPropertyChanged("Sex");
            }
        }

        public string SexName
        {
            get { return CustomType.CustomClass.ListCustomSex().First(x => x.ShortName == model.Sex).Name; }
        }

        public int Age
        {
            get { return model.Age; }
            set
            {
                if (value == model.Age)
                    return;

                model.Age = value;

                base.OnPropertyChanged("Age");
            }
        }

        public int CountChildren
        {
            get { return model.CountChildren; }
            set
            {
                if (value == model.CountChildren)
                    return;

                model.CountChildren = value;

                base.OnPropertyChanged("CountChildren");
            }
        }

        public string Married
        {
            get { return model.Married; }
            set
            {
                if (value == model.Married)
                    return;

                model.Married = value;

                base.OnPropertyChanged("Married");
            }
        }

        public string MarriedName
        {
            get { return CustomType.CustomClass.ListCustomMarried().First(x => x.ShortName == model.Married).Name; }
        }

        public string GroupName
        {
            get
            {
                return model.GroupCreditWorthinessObj.Name;
            }
        }

        public int CountCredit
        {
            get
            {
                return repository.GetCountCredit(model.Id);
            }
        }

        public int FullSummaCredit
        {
            get
            {
                return repository.GetFullSummaCredits(model.Id);
            }
        }

        public int LostSummaCredit
        {
            get
            {
                return repository.GetLostSummaCredits(model.Id);
            }
        }

        #endregion // Properties
    }
}
