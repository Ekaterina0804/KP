using System;
using System.Windows;
using WpfApp.ServiceWcfHost;

namespace WpfApp.View
{
    /// <summary>
    /// Interaction logic for AddGroupCreditWorthinesView.xaml
    /// </summary>
    public partial class AddGroupCreditWorthinesView : Window
    {
        private GroupCreditWorthiness model;
        private readonly bool isNewRecord;
        private readonly ServiceClient repository;
        public AddGroupCreditWorthinesView(bool isNewRecord, GroupCreditWorthiness model, ServiceClient repository)
        {
            InitializeComponent();
            Owner = Application.Current.MainWindow;

            this.Title = isNewRecord ? "Добавление новой группы" : "Редактирование выбранной группы";
            this.isNewRecord = isNewRecord;
            this.repository = repository;
            this.model = model;
            txtName.Text = model.Name;
            txtMaxSumma.Value = model.MaxSumma;
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
            if (!String.IsNullOrEmpty(txtName.Text) &&
                Convert.ToInt32(txtMaxSumma.Value) != 0)
            {
                if (isNewRecord && repository.IsHasGroupByGroupName(txtName.Text.Trim()))
                {
                    MessageBoxWPF.Show("Группа с таким названием уже существует!", "Сообщение.", MessageBoxButton.OK, MessageBoxImage.Information);
                    return;
                }

                model.Name = txtName.Text.Trim();
                model.MaxSumma = Convert.ToInt32(txtMaxSumma.Value);

                this.DialogResult = true;
                this.Close();
            }
        }
    }
}
