   M S B A M L   `   `   `  ���� 
  WpfApp"    WpfApp.View.ShowPaymentsView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml        ShowDialogWindowsStyle#��[    � Title$.  (График выплат кредита�� � Icon$' !/WpfApp;component/Image/title.ico�� � WindowStartupLocation$ CenterScreen=�$	��500��$	��550��.���  � RowDefinitions �� $��20 ��� $��* ��� $��10 ��� $��40 � � ColumnDefinitions �� $��20 ��� $��* ��� $��20 �.+�&   System.Windows.Controls.DataGrid  -   $��allModelDataGrid��$��1��$��1��   AutoGenerateColumns .     EnableRowVirtualization . $��Stretch=�$��Stretch=�   RowDetailsVisibilityMode$ VisibleWhenSelected=�   SelectionMode$ Single=�	   Columns	 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn
   Header$
 
Месяц��   Width5  /System.Windows.Controls.DataGridLengthConverter$ 80    
IsReadOnly . 1  +System.Windows.Controls.DataGridBoundColumn   Binding ��  �� Path$ NumberMonth� �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�  $
 Дата��$ *  .  �� $
 Data�$ OneWay=�$ PropertyChanged=�  $#
 Остаток кредита��$	 120  .  �� $ 	LostSumma�$ TwoWay=�$ PropertyChanged=�  $
 Проценты��$ 80  .  �� $ MainPay�$ TwoWay=�$ PropertyChanged=�  $"
 Всего за платёж��$ *  .  �� $ 
SummaMonth�$ TwoWay=�$ PropertyChanged=��� -   $��30��$	��150��$��0,0,0,5q�$��1��$��3��$��Закрыть��