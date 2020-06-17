using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using WpfApp.ServiceWcfHost;

namespace WpfApp.View
{
    /// <summary>
    /// Interaction logic for AddPaymentView.xaml
    /// </summary>
    public partial class AddPaymentView : Window
    {
        private Payment model;
        private readonly ServiceClient repository;

        public AddPaymentView(Payment model, ServiceClient repository)
        {
            InitializeComponent();
            Owner = Application.Current.MainWindow;

            this.Title = "Внесение платежа";
            this.repository = repository;
            this.model = model;

            txtNumberMonth.Text = model.NumberMonth.ToString();
            txtData.Text = model.Data;
            txtLostSumma.Text = model.LostSumma.ToString();
            txtSummaMonth.Text = model.SummaMonth.ToString();
        }

        private void TxtSummaPay_OnTextChanged(object sender, KeyEventArgs e)
        {
            int summaPay = Convert.ToInt32(txtSummaPay.Text);

            if ((model.SummaMonth - summaPay) < 0)
            {
                txtSummaPay.Text = "";
                txtSummalost.Text = "";
                MessageBoxWPF.Show("Сумма внесённого платежа превышает ежемесячную сумму платежа!", "Сообщение.",
                    MessageBoxButton.OK, MessageBoxImage.Information);
                return;
            }
            txtSummalost.Text = (model.SummaMonth - summaPay).ToString();
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
            if (!String.IsNullOrEmpty(txtSummaPay.Text))
            {
                if ((model.SummaMonth - Convert.ToInt32(txtSummaPay.Text)) < 0)
                {
                    MessageBoxWPF.Show("Сумма внесённого платежа превышает ежемесячную сумму платежа!", "Сообщение.",
                        MessageBoxButton.OK, MessageBoxImage.Information);
                    return;
                }

                model.SummaMonth = model.SummaMonth - Convert.ToInt32(txtSummaPay.Text);
                if (model.SummaMonth == 0)
                {
                    model.Repay = true;
                }
                this.DialogResult = true;
                this.Close();
            }
        }
    }
}
