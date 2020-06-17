using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Forms;
using WpfApp.ServiceWcfHost;
using Application = System.Windows.Application;
using KeyEventArgs = System.Windows.Input.KeyEventArgs;

namespace WpfApp.View
{
    /// <summary>
    /// Interaction logic for CreateCreditView.xaml
    /// </summary>
    public partial class CreateCreditView : Window
    {
        private readonly ServiceClient repository;
        private User modelUser;
        private Credit modelCredit;
        private readonly bool isNewUser;

        public CreateCreditView(bool isNewUser, ServiceClient repository, User modelUser, Credit modelCredit )
        {
            InitializeComponent();
            Owner = Application.Current.MainWindow;
            this.Title = "Оформление кредита";
            this.modelUser = modelUser;
            this.modelCredit = modelCredit;
            this.repository = repository;
            this.isNewUser = isNewUser;

            cmbSex.ItemsSource = CustomType.CustomClass.ListCustomSex();
            cmbSex.DisplayMemberPath = "Name";
            cmbSex.SelectedValuePath = "ShortName";

            cmbMarried.ItemsSource = CustomType.CustomClass.ListCustomMarried();
            cmbMarried.DisplayMemberPath = "Name";
            cmbMarried.SelectedValuePath = "ShortName";

            if (isNewUser == false)
            {
                txtFio.Text = modelUser.Fio;
                txtFio.IsReadOnly = true;

                cmbSex.SelectedValue = modelUser.Sex;
                cmbSex.IsEnabled = false;

                txtAge.Text = modelUser.Age.ToString();
                txtAge.IsReadOnly = true;

                txtChildren.Text = modelUser.CountChildren.ToString();
                txtChildren.IsReadOnly = true;

                cmbMarried.SelectedValue = modelUser.Married;
                cmbMarried.IsEnabled = false;

                txtRevenueYear.Text = (modelUser.RevenueMonth*12).ToString();
                txtRevenueYear.IsReadOnly = true;

                txtGroup.Text = modelUser.GroupCreditWorthinessObj.Name;
                txtMaxSumma.Text = modelUser.GroupCreditWorthinessObj.MaxSumma.ToString();

                CalculationGroupButton.IsEnabled = false;
            }
            else
            {
                cmbSex.SelectedValue = "ж";
                cmbMarried.SelectedValue = "ж";
            }
        }

        // рассчитать социальное положение
        private void CalculationGroupButton_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            if (txtChildren.Text == "" || txtRevenueYear.Text == "")
            {
                MessageBoxWPF.Show("Не все поля заполнены!", "Сообщение.", MessageBoxButton.OK,
                    MessageBoxImage.Information);
                return;
            }
            string group = ""; // группа платёжеспособности
            int maxSumma = 0; // макс. сумма кредита по группе плат-ти

            string sex = cmbSex.SelectedValue.ToString();
            string married = cmbMarried.SelectedValue.ToString();
            int children = Convert.ToInt32(txtChildren.Text);
            int age = Convert.ToInt32(txtAge.Text);
            int revenueYear = Convert.ToInt32(txtRevenueYear.Text);

            List<GroupCharacter> listGroup = repository.AlgorirmForGroup(revenueYear, sex, age, children, married).ToList();
            if (listGroup.Count() != 0)
            {
                foreach (var item in listGroup)
                {
                    group = group + item.GroupCreditWorthinessObj.Name;
                    maxSumma = item.GroupCreditWorthinessObj.MaxSumma > maxSumma ? item.GroupCreditWorthinessObj.MaxSumma : maxSumma;
                }
            }

            txtGroup.Text = group;
            txtMaxSumma.Text = maxSumma.ToString();
        }

        // рассчитать экономические параметры
        private void CalculationButton_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            if (txtRevenueYear.Text == "" || txtMonth.Text == "" || txtStavka.Text == "")
            {
                MessageBoxWPF.Show("Не все поля заполнены!", "Сообщение.", MessageBoxButton.OK,
                    MessageBoxImage.Information);
                return;
            }
            int pay = 0; // платёжеспособность
            int maxSummaEconomic = 0; // макс сумма кредита по эконом показателям

            int revenueYear = Convert.ToInt32(txtRevenueYear.Text);
            int month = Convert.ToInt32(txtMonth.Text);
            int stavka = Convert.ToInt32(txtStavka.Text);

            if (month> 36 || month == 0)
            {
                MessageBoxWPF.Show("Не верный срок кредита, макс. кол-во месяцев 36!", "Сообщение.", MessageBoxButton.OK, MessageBoxImage.Information);
                return;
            }

            int revenueMonth = revenueYear / 12; // среднемесячный доход           

            int[] arrayEconomic = repository.AlgoritmEconomicValue(revenueMonth, month, stavka);
            pay = arrayEconomic[0];
            maxSummaEconomic = arrayEconomic[1];

            txtPay.Text = pay.ToString();
            txtMaxSummaEconomic.Text = maxSummaEconomic.ToString();
        }

        // рассчитать ежемесячный платёж
        private void CalculationPayButton_Click(object sender, System.Windows.RoutedEventArgs e)
        {
            int summaSocial = Convert.ToInt32(txtMaxSumma.Text);
            int summaEconomic = Convert.ToInt32(txtMaxSummaEconomic.Text);
            txtResulSocial.Text = "";
            txtResultEconomic.Text = "";

            if (txtSummaCredit.Text == "" || txtMonthCredit.Text == "" || txtStavka.Text == "")
            {
                MessageBoxWPF.Show("Не все поля заполнены!", "Сообщение.", MessageBoxButton.OK,
                    MessageBoxImage.Information);
                return;
            }

                int pay = 0; // ежемесячный платёж

                int summa = Convert.ToInt32(txtSummaCredit.Text);
                int month = Convert.ToInt32(txtMonthCredit.Text);
                int stavka = Convert.ToInt32(txtStavka.Text);

                if (month > 36 || month == 0)
                {
                    MessageBoxWPF.Show("Не верный срок кредита, макс. кол-во месяцев 36!", "Сообщение.", MessageBoxButton.OK,
                        MessageBoxImage.Information);
                    return;
                }

                if (stavka > 100 || month == 0)
                {
                    MessageBoxWPF.Show("Не верная процентная ставка!", "Сообщение.", MessageBoxButton.OK,
                        MessageBoxImage.Information);
                    return;
                }

                pay = repository.AlgoritmMonthPay(summa, stavka, month);

                txtSummaMonth.Text = pay.ToString();

                if (summa > summaSocial)
                {
                    txtResulSocial.Text = "Не соответствует социальным параметрам";
                }
                if (summa > summaEconomic)
                {
                    txtResultEconomic.Text = "Не соответствует экономическим параметрам";
                }

        }

        private void TxtParametrGroup_OnTextChanged(object sender, TextChangedEventArgs e)
        {
            txtGroup.Text = "";
            txtMaxSumma.Text = "";
        }

        private void TxtParametrRevenueYear_OnTextChanged(object sender, TextChangedEventArgs e)
        {
            txtGroup.Text = "";
            txtMaxSumma.Text = "";
            txtPay.Text = "";
            txtMaxSummaEconomic.Text = "";
        }

        private void TxtParametrEconomic_OnTextChanged(object sender, TextChangedEventArgs e)
        {
            txtPay.Text = "";
            txtMaxSummaEconomic.Text = "";
        }

        private void CmbParameter_OnSelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            txtGroup.Text = "";
            txtMaxSumma.Text = "";
        }

        private void TxtStavka_OnTextChanged(object sender, TextChangedEventArgs e)
        {
            txtPay.Text = "";
            txtMaxSummaEconomic.Text = "";
            txtSummaMonth.Text = "";
        }

        private void TxtCredit_OnTextChanged(object sender, TextChangedEventArgs e)
        {

            txtSummaMonth.Text = "";
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
            if (!String.IsNullOrEmpty(txtFio.Text))
            {
                if (isNewUser == true) // новый пользователь
                {
                    modelUser.Fio = txtFio.Text.Trim();
                    modelUser.Sex = cmbSex.SelectedValue.ToString();
                    modelUser.Age = Convert.ToInt32(txtAge.Text);
                    modelUser.CountChildren = Convert.ToInt32(txtChildren.Text);
                    modelUser.Married = cmbMarried.SelectedValue.ToString();
                    modelUser.RevenueMonth = Convert.ToInt32(txtRevenueYear.Text)/12;
                    modelUser.GroupCreditWorthinessObj =
                        repository.FirstGroupCreditWorthinessByName(txtGroup.Text.Trim());
                    if (modelUser.GroupCreditWorthinessObj != null)
                        modelUser.IdGroupCreditWorthiness = modelUser.GroupCreditWorthinessObj.Id;
                }

                modelCredit.TermMonth = Convert.ToInt32(txtMonthCredit.Text);
                modelCredit.SummaFull = Convert.ToInt32(txtSummaCredit.Text);
                modelCredit.SummaMonth = Convert.ToInt32(txtSummaMonth.Text);
                modelCredit.Stavka = Convert.ToInt32(txtStavka.Text);
                modelCredit.DataStart = DateTime.Now;

                this.DialogResult = true;
                this.Close();
            }
        }


    }
}
