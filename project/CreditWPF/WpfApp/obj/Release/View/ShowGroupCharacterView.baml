   M S B A M L   `   `   `  ���� 
  WpfApp(    "WpfApp.View.ShowGroupCharacterView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     .��� .+�� -   $��RootGrid��  � RowDefinitions  �� $��* ��� $
��Auto � � ColumnDefinitions �� $��* �.+�&   System.Windows.Controls.DataGrid  -   $��allModelDataGrid��$��0��$��0��   AutoGenerateColumns .     EnableRowVirtualization . $��Stretch=�$��Stretch=�   RowDetailsVisibilityMode$ VisibleWhenSelected=�   SelectionMode$ Single=����� *
AllModel+   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Группа��   Width5  /System.Windows.Controls.DataGridLengthConverter$	 100 	   
IsReadOnly	 . 1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 ��  �� Path$ 	GroupName� �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�  $! Годовой доход $��$ * 	 . 
 �� $ ShowRevenue�$ OneWay=�$ PropertyChanged=�  $ Пол��$	 100 	 . 
 �� $	 Sex�$ TwoWay=�$ PropertyChanged=�  $ Возраст��$	 100 	 . 
 �� $ ShowAge�$ OneWay=�$ PropertyChanged=�  $) #Семейное положение��$ * 	 . 
 �� $ Married�$ TwoWay=�$ PropertyChanged=�  $ Кол-во детей��$ * 	 . 
 �� $ ShowChildren�$ OneWay=�$ PropertyChanged=���  �� Orientation$ 
Horizontal=�$
��Left=�$��2��$	��0 2q�.+��� $��Добавить��$	��100��$��25��$	��5,0q����� $ AddCmd��� $��Изменить��$	��100��$��25��$	��5,0q����� $ 	UpdateCmd�����  �� ElementName$ allModelDataGrid��$ SelectedItem��� $��Удалить��$	��100��$��25��$	��5,0q����� $ 	DeleteCmd����� $ allModelDataGrid��$ SelectedItem�