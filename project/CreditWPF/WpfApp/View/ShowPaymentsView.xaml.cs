using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using WpfApp.ServiceWcfHost;

namespace WpfApp.View
{
    /// <summary>
    /// Interaction logic for ShowPaymentsView.xaml
    /// </summary>
    public partial class ShowPaymentsView : Window
    {
        public ShowPaymentsView(List<Payment> list)
        {
            InitializeComponent();
            this.allModelDataGrid.ItemsSource = list;
        }

        private void CloseButton_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
