   M S B A M L   `   `   `  ����
  WpfApp"    WpfApp.View.ShowPaymentsView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   
      ShowDialogWindowsStyle#��[  5   
     � Title$.  (График выплат кредита��5   
    � Icon$' !/WpfApp;component/Image/title.ico��5   	    � WindowStartupLocation$ CenterScreen=�5   
   $	��500��5   
   $	��550��6   .��5	      �  � RowDefinitions 5
   
   �� 5      $��20 �6   �� 5      $��* �6   �� 5      $��10 �6   �� 5      $��40 �6    � ColumnDefinitions 5   
   �� 5      $��20 �6   �� 5      $��* �6   �� 5      $��20 �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5        $��allModelDataGrid��5      $��1��5      $��1��6#      AutoGenerateColumns .     EnableRowVirtualization . $��Stretch=�5      $��Stretch=�5         RowDetailsVisibilityMode$ VisibleWhenSelected=�5         SelectionMode$ Single=�5      	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn
   Header$
 
Месяц��6|      Width5  /System.Windows.Controls.DataGridLengthConverter$ 80 6�      
IsReadOnly . 1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   ��  �� Path$ NumberMonth� �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�6�     5      $
 Дата��6u   $ * 6�    .  6%   �� $
 Data�$ OneWay=�$ PropertyChanged=�6�     5       $#
 Остаток кредита��6z   $	 120 6�    .  6%   �� $ 	LostSumma�$ TwoWay=�$ PropertyChanged=�6�     5!      $
 Проценты��6x   $ 80 6�    .  6%   �� $ MainPay�$ TwoWay=�$ PropertyChanged=�6�     5"      $"
 Всего за платёж��6{   $ * 6�    .  6%   �� $ 
SummaMonth�$ TwoWay=�$ PropertyChanged=�6�   5$      �� 5%   
   -   5        $��30��5%      $	��150��6   $��0,0,0,5q�6)   $��1��6:   $��3��6J   $��Закрыть��6W   6i   5'      5(      