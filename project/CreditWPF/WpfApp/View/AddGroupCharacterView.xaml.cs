
using System;
using System.Linq;
using System.Windows;
using System.Windows.Forms;
using WpfApp.ServiceWcfHost;
using Application = System.Windows.Application;


namespace WpfApp.View
{
    /// <summary>
    /// Interaction logic for AddGroupCharacterView.xaml
    /// </summary>
    public partial class AddGroupCharacterView : Window
    {
        private GroupCharacter model;
        private readonly bool isNewRecord;
        private readonly ServiceClient repository;

        public AddGroupCharacterView(bool isNewRecord, GroupCharacter model, ServiceClient repository)
        {
            InitializeComponent();
            Owner = Application.Current.MainWindow;

            this.Title = "Добавление нового параметра";           

            this.isNewRecord = isNewRecord;
            this.repository = repository;
            this.model = model;

            cmbGroup.ItemsSource = repository.GetGroupCreditWorthinesss();
            cmbGroup.DisplayMemberPath = "Name";
            cmbGroup.SelectedValuePath = "Id";
            cmbGroup.SelectedValue = 1;

            cmbRevenue.ItemsSource = CustomType.CustomClass.ListCustomRevenue();
            cmbRevenue.DisplayMemberPath = "Show";
            cmbRevenue.SelectedValuePath = "Id";
            cmbRevenue.SelectedValue = 1;

            cmbSex.ItemsSource = CustomType.CustomClass.ListCustomSex();
            cmbSex.DisplayMemberPath = "Name";
            cmbSex.SelectedValuePath = "ShortName";

            txtAgeMin.Value = model.AgeMin;
            txtAgeMax.Value = 100;

            cmbCountChildren.ItemsSource = CustomType.CustomClass.ListCustomChildren();
            cmbCountChildren.DisplayMemberPath = "Show";
            cmbCountChildren.SelectedValuePath = "Id";
            cmbCountChildren.SelectedValue = 1;


            cmbMarried.ItemsSource = CustomType.CustomClass.ListCustomMarried();
            cmbMarried.DisplayMemberPath = "Name";
            cmbMarried.SelectedValuePath = "ShortName";

            if (!isNewRecord)
            {
                this.Title = "Редактирование параметра";
                cmbRevenue.SelectedValue = CustomType.CustomClass.ListCustomRevenue().First(x => x.Min == model.RevenueYearMin && x.Max == model.RevenueYearMax).Id;
                cmbSex.SelectedValue = model.Sex;
                cmbCountChildren.SelectedValue = CustomType.CustomClass.ListCustomChildren().First(x => x.Min == model.CountChildrenMin && x.Max == model.CountChildrenMax).Id;
                cmbMarried.SelectedValue = model.Married;
                cmbGroup.SelectedValue = model.IdGroupCreditWorthiness;
                txtAgeMax.Value = model.AgeMax;
            }
        }

        // Отмена
        private void CloseButton_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            this.DialogResult = false;
            this.Close();
        }

        // Сохранить
        private void SaveButton_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            if (Convert.ToInt32(txtAgeMin.Value) > Convert.ToInt32(txtAgeMax.Value))
            {
                MessageBoxWPF.Show("Не верный интервал возраста!", "Сообщение.", MessageBoxButton.OK, MessageBoxImage.Information);
                return;
            }

            model.Sex = cmbSex.SelectedValue.ToString();
            model.Married = cmbMarried.SelectedValue.ToString();

            model.GroupCreditWorthinessObj = cmbGroup.SelectedItem as GroupCreditWorthiness;
            model.IdGroupCreditWorthiness = model.GroupCreditWorthinessObj.Id;

            CustomType.CustomSegment revenueSelect =
                CustomType.CustomClass.ListCustomRevenue()
                    .First(x => x.Id == cmbRevenue.SelectedValue.ToString());

            model.RevenueYearMin = revenueSelect.Min;
            model.RevenueYearMax = revenueSelect.Max;

            CustomType.CustomSegment childrenSelect =
                CustomType.CustomClass.ListCustomChildren()
                    .First(x => x.Id == cmbCountChildren.SelectedValue.ToString());

            model.CountChildrenMin = childrenSelect.Min;
            model.CountChildrenMax = childrenSelect.Max;

            model.AgeMin = Convert.ToInt32(txtAgeMin.Value);
            model.AgeMax = Convert.ToInt32(txtAgeMax.Value);

            this.DialogResult = true;
            this.Close();
        }

    }
}
