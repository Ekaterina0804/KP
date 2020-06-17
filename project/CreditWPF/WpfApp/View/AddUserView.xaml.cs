using System;
using System.Windows;
using WpfApp.ServiceWcfHost;
using Application = System.Windows.Application;

namespace WpfApp.View
{
    public partial class AddUserView : Window
    {
        private User model;
        private readonly ServiceClient repository;

        public AddUserView(User model, ServiceClient repository)
        {
            InitializeComponent();
            Owner = Application.Current.MainWindow;

            this.Title = "Редактирование выбранного пользователя";
            this.repository = repository;
            this.model = model;

            cmbSex.ItemsSource = CustomType.CustomClass.ListCustomSex();
            cmbSex.DisplayMemberPath = "Name";
            cmbSex.SelectedValuePath = "ShortName";
            cmbSex.SelectedValue = model.Sex;

            cmbMarried.ItemsSource = CustomType.CustomClass.ListCustomMarried();
            cmbMarried.DisplayMemberPath = "Name";
            cmbMarried.SelectedValuePath = "ShortName";
            cmbMarried.SelectedValue = model.Married;

            txtFio.Text = model.Fio;
            txtRevenueMonth.Value = model.RevenueMonth;
            txtAge.Value = model.Age;
            txtCountChildren.Value = model.CountChildren;
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
            if (!String.IsNullOrEmpty(txtFio.Text) &&
                Convert.ToInt32(txtRevenueMonth.Value) != 0 && 
                Convert.ToInt32(txtAge.Value) != 0 && 
            Convert.ToInt32(txtCountChildren.Value) != 0)
            {
                model.Fio = txtFio.Text.Trim();
                model.Sex = cmbSex.SelectedValue.ToString();
                model.Married = cmbMarried.SelectedValue.ToString();
                model.Age = Convert.ToInt32(txtAge.Value);
                model.CountChildren = Convert.ToInt32(txtCountChildren.Value);
                model.RevenueMonth = Convert.ToInt32(txtRevenueMonth.Value);

                this.DialogResult = true;
                this.Close();
            }
        }

    }
}
