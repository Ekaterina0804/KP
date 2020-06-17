using System.Collections.Generic;
using System.Windows;
using WpfApp.ServiceWcfHost;

namespace WpfApp.View
{
    /// <summary>
    /// Interaction logic for ShowUsersCreditView.xaml
    /// </summary>
    public partial class ShowUsersCreditView : Window
    {
        public ShowUsersCreditView(List<Credit> list)
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
