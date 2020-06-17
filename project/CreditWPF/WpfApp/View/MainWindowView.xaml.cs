using System.Windows.Media.Animation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows;
using System.Xml;
using System.Windows.Data;
using System;
using WpfApp.Content;
using WpfApp.ViewModel;

namespace WpfApp.View
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindowView : Window
    {
        private Storyboard _showStoryboard;
        private Storyboard _hideStoryboard;           

        private string NextRecord;    // Строка содержащая строку следующего меню, принадлежащую выбранному
        private string Metod;         // Метод соответствующий вкладке
        private string nameWorkspase; // Наименование выбранного меню        

        public MainWindowView()
        {
            InitializeComponent();

            _showStoryboard = Resources["ShowList"] as Storyboard;
            _hideStoryboard = Resources["HideList"] as Storyboard;            
        }

        private MainWindowViewModel GetDataContext
        {
            get
            {
                if (this.DataContext == null)
                    return new MainWindowViewModel(); ;
                return this.DataContext as MainWindowViewModel;
            }
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            var a = Environment.CurrentDirectory + StringProject.PathButtonMenu;
            XmlDataProvider ButtonMenu = FindResource("XmlData") as XmlDataProvider;
            ButtonMenu.Source = new Uri(a);
        }

        private void FirstLevelList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (FirstLevelList.SelectedIndex >= 0)
            {
                LevelList(FirstLevelList);
                if (NextRecord.Length > 0)
                {
                    this.txtMenuLevel.Text = MainWindowViewModel.DispMenu(0, nameWorkspase);
                    _showStoryboard.SetValue(Storyboard.TargetNameProperty, "SecondLevelGrid");
                    _showStoryboard.Begin();
                }
                else
                {
                    switch (Metod)
                    {
                        case "ShowUsers":
                            GetDataContext.ShowUsers(nameWorkspase);
                            break;
                        case "ShowCredit":
                            GetDataContext.ShowCredit(nameWorkspase);
                            break;
                    }
                    // Сбрасываем индекс, чтобы можно было повторно выбрать пункт меню
                    FirstLevelList.SelectedIndex = -1;
                }
            }
        }

        private void SecondLevelList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (SecondLevelList.SelectedIndex >= 0)
            {
                LevelList(SecondLevelList);
                if (NextRecord.Length > 0)
                {
                    this.txtMenuLevel.Text = MainWindowViewModel.DispMenu(1, nameWorkspase);
                    _showStoryboard.SetValue(Storyboard.TargetNameProperty, "ThirdLevelGrid");
                    _showStoryboard.Begin();
                }
                else
                {
                    switch (Metod)
                    {
                        case "ShowGroupCreditWorthiness":
                            GetDataContext.ShowGroupCreditWorthiness(nameWorkspase);
                            break;
                        case "ShowGroupCharacter":
                            GetDataContext.ShowGroupCharacter(nameWorkspase);
                            break;
                        case "ShowAbout":
                            GetDataContext.ShowAbout(nameWorkspase);
                            break;
                    }
                    // Сбрасываем индекс, чтобы можно было повторно выбрать пункт меню
                    SecondLevelList.SelectedIndex = -1;
                }
            }
        }

        private void SecondLeveButton_Click(object sender, RoutedEventArgs e)
        {
            this.txtMenuLevel.Text = MainWindowViewModel.DispMenu(0, null);
            FirstLevelList.UnselectAll();
            _hideStoryboard.SetValue(Storyboard.TargetNameProperty, "SecondLevelGrid");
            _hideStoryboard.Begin();
        }

        private void LevelList(object nameList)
        {
            NextRecord = (((XmlElement)(((Selector)(nameList)).SelectedItem))).InnerXml;
            nameWorkspase = (((XmlElement)(((Selector)(nameList)).SelectedItem))).Attributes.Item(0).Value;
            Metod = (((XmlElement)(((Selector)(nameList)).SelectedItem))).Attributes.Item(1).Value;
        }   
    }
}
