using System;
using DevComponents.DotNetBar;
using WpfApp.ServiceWcfHost;
using WpfApp.ViewModel.DefaultViewModel;

namespace WpfApp.ViewModel
{
    public class GroupCharacterViewModel : WorkspaceViewModel
    {
         private readonly GroupCharacter model;

         public GroupCharacterViewModel(GroupCharacter model)
        {
            if (model == null)
                throw new ArgumentNullException("model");

            this.model = model;
        }

         public GroupCharacter GetModel { get { return model; } }

        public void RefreshModel()
        {
            base.OnPropertyChanged("RevenueYearMin");
            base.OnPropertyChanged("RevenueYearMax");
            base.OnPropertyChanged("Sex");
            base.OnPropertyChanged("AgeMin");
            base.OnPropertyChanged("AgeMax");
            base.OnPropertyChanged("CountChildrenMin");
            base.OnPropertyChanged("CountChildrenMax");
            base.OnPropertyChanged("Married");
            base.OnPropertyChanged("GroupName");
            base.OnPropertyChanged("ShowRevenue");
            base.OnPropertyChanged("ShowAge");
            base.OnPropertyChanged("ShowChildren");
        }


        #region Properties

        public int RevenueYearMin
        {
            get { return model.RevenueYearMin; }
            set
            {
                if (value == model.RevenueYearMin)
                    return;

                model.RevenueYearMin = value;

                base.OnPropertyChanged("RevenueYearMin");
            }
        }

        public int RevenueYearMax
        {
            get { return model.RevenueYearMax; }
            set
            {
                if (value == model.RevenueYearMax)
                    return;

                model.RevenueYearMax = value;

                base.OnPropertyChanged("RevenueYearMax");
            }
        }

        public string ShowRevenue
        {
            get
            {
                if (model.RevenueYearMin == 0)
                {
                    return "< " + model.RevenueYearMax;
                }
                return "> " + model.RevenueYearMin;
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

        public int AgeMin
        {
            get { return model.AgeMin; }
            set
            {
                if (value == model.AgeMin)
                    return;

                model.AgeMin = value;

                base.OnPropertyChanged("AgeMin");
            }
        }

        public int AgeMax
        {
            get { return model.AgeMax; }
            set
            {
                if (value == model.AgeMax)
                    return;

                model.AgeMax = value;

                base.OnPropertyChanged("AgeMax");
            }
        }
        public string ShowAge
        {
            get
            {
                if (model.AgeMin == 0 && model.AgeMax == 0) return "";
                if (model.AgeMax == 100)
                {
                    return "> " + model.AgeMin;
                }
                return model.AgeMin + " - " + model.AgeMax;
            }
        }
        public int CountChildrenMin
        {
            get { return model.CountChildrenMin; }
            set
            {
                if (value == model.CountChildrenMin)
                    return;

                model.CountChildrenMin = value;

                base.OnPropertyChanged("CountChildrenMin");
            }
        }

        public int CountChildrenMax
        {
            get { return model.CountChildrenMax; }
            set
            {
                if (value == model.CountChildrenMax)
                    return;

                model.CountChildrenMax = value;

                base.OnPropertyChanged("CountChildrenMax");
            }
        }

        public string ShowChildren
        {
            get
            {
                if (model.CountChildrenMin == 0)
                {
                    if (model.CountChildrenMax == 0) return "";
                    return "< " + model.CountChildrenMax;
                }
                return "> " + model.CountChildrenMin;
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

        public string GroupName
        {
            get { return model.GroupCreditWorthinessObj.Name; }
            set
            {
                if (value == model.GroupCreditWorthinessObj.Name)
                    return;

                model.GroupCreditWorthinessObj.Name = value;

                base.OnPropertyChanged("GroupName");
            }
        }

        #endregion // Properties
    }
}
