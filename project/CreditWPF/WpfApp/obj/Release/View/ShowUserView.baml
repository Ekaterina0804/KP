   M S B A M L   `   `   `  ���� 
  WpfApp    WpfApp.View.ShowUserView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     $	��300��$	��650��.��� .+�� -   $��RootGrid��  � RowDefinitions  �� $��* ��� $��30 ��� $��20 ��� $	��100 � � ColumnDefinitions �� $��* �.+�&   System.Windows.Controls.DataGrid  -   $��allModelDataGrid��$��0��$��0��   AutoGenerateColumns .     EnableRowVirtualization . $��Stretch=�$��Stretch=�   RowDetailsVisibilityMode$ VisibleWhenSelected=�   SelectionMode$ Single=����� *
AllModel+   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Имя��   Width5  /System.Windows.Controls.DataGridLengthConverter$ * 	   
IsReadOnly	 . 1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 ��  �� Path$	 Fio� �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�  $ Пол��$ 80 	 . 
 �� $ SexName�$ OneWay=�$ PropertyChanged=�  $ Возраст��$ 80 	 . 
 �� $	 Age�$ TwoWay=�$ PropertyChanged=�  $ Кол-во детей��$	 110 	 . 
 �� $ CountChildren�$ TwoWay=�$ PropertyChanged=�  $  Семейное пол-е��$
 Auto 	 . 
 �� $ MarriedName�$ OneWay=�$ PropertyChanged=�  $ Среднемес.зп $��$	 120 	 . 
 �� $ RevenueMonth�$ TwoWay=�$ PropertyChanged=�  $ Группа��$	 120 	 . 
 �� $ 	GroupName�$ OneWay=�$ PropertyChanged=��� $��1�� �� Orientation$ 
Horizontal=�$��0 2 0 0q�.+��� $'��!Просмотр кредитов��$	��170��$��25��$
��Left=����� $ ShowUserCreditCmd�����  �� ElementName$ allModelDataGrid��$ SelectedItem��� $��Изменить ��$	��100��$��25��$��Right=�$��20 0 0 0q����� $ 	UpdateCmd����� $ allModelDataGrid��$ SelectedItem��� $��Удалить��$	��100��$��25��$��Right=�$��0 0 0 0q����� $ 	DeleteCmd����� $ allModelDataGrid��$ SelectedItem��� $&�� Данные о кредитах��$��2��$��0 3 0 0q�$��15(�$
��Bold"�$��Times New Roman)�$��Center=�$	��Top=�� $��3�� � DataContext �� $ allModelDataGrid��$ SelectedItem�.+��� $	��0.5q�
���   �$��3 0 3 0q�$
��Auto��$	��Top=�$
��Auto�� �� CornerRadius$ 7��._��   �� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $	��145 ��� $	��155 �.+��� $��0��$��0��$"��Кол-во кредитов��$��14(�$	��5 0q�$��Times New Roman)�$��Center=�$��Right=��� $��0��$��1��$,��&Общая сумма кредитов��$��14(�$	��5 0q�$��Times New Roman)�$��Center=�$��Right=��� $��0��$��2��$7��1Общая сумма остатка выплат��$��14(�$	��5 0q�$��Times New Roman)�$��Center=�$��Right=��� $��1��$��0��$��20��$	��0 3q�$	��140�� �� 
IsReadOnly . ���� *CountCredit+$ OneWay=��� $��1��$��1��$��20��$	��0 3q�$	��140�� . ���� *FullSummaCredit+$ OneWay=��� $��1��$��2��$��20��$	��0 3q�$	��140�� . ���� *LostSummaCredit+$ OneWay=�