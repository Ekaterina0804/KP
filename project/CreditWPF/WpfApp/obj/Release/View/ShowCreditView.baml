   M S B A M L   `   `   `  ���� 
  WpfApp     WpfApp.View.ShowCreditView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     $	��300��$	��650��.��� .+�� -   $��RootGrid��  � RowDefinitions  �� $��* ��� $
��Auto � � ColumnDefinitions �� $��* ��� $
��Auto �.+�&   System.Windows.Controls.DataGrid  -   $��allModelDataGrid��$��0��$��0��   AutoGenerateColumns .     EnableRowVirtualization . $��Stretch=�$��Stretch=�   RowDetailsVisibilityMode$ VisibleWhenSelected=�   SelectionMode$ Single=����� *
AllModel+   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Заёмщик��   Width5  /System.Windows.Controls.DataGridLengthConverter$ * 	   
IsReadOnly	 . 1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 ��  �� Path$ UserName� �� Mode$ OneWay=� �� UpdateSourceTrigger$ PropertyChanged=�  $ Сумма $��$
 Auto 	 . 
 �� $ 	SummaFull�$ OneWay=�$ PropertyChanged=�  $ Сумма выплат $��$
 Auto 	 . 
 �� $ 
SummaMonth�$ OneWay=�$ PropertyChanged=�  $% Срок кредита, мес��$
 Auto 	 . 
 �� $ 	TermMonth�$ OneWay=�$ PropertyChanged=�  $ Ставка %��$
 Auto 	 . 
 �� $ Stavka�$ OneWay=�$ PropertyChanged=�  $ Дата��$	 100 	 . 
 �� $ 	DataStart�$ OneWay=�$ PropertyChanged=�  $ Состояние��$ * 	 . 
 �� $ NameCondition�$ OneWay=�$ PropertyChanged=�� $��1��$��0��.+���  �� Orientation$ Vertical=�$��Center=�$��0 0 0 0q�.+��� $��Новый кредит��$	��140��$��25��$��5,0,5,0q����� $ AddCmd�����  �� ElementName$ allModelDataGrid��$ SelectedItem��� $��Внести платёж��$	��140��$��25��$��5,5,5,0q����� $ 	UpdateCmd����� $ allModelDataGrid��$ SelectedItem��� $��График выплат��$	��140��$��25��$��5,5,5,0q����� $ PaymentsCmd����� $ allModelDataGrid��$ SelectedItem��� $��Печать��$	��140��$��25��$��5,5,5,0q����� $ PrintCmd����� $ allModelDataGrid��$ SelectedItem��� $��Удалить��$	��140��$��25��$��5,5,5,0q����� $ 	DeleteCmd����� $ allModelDataGrid��$ SelectedItem�� $��1��.+��� $	��0.5q�
���   �$��3 10 3 0q�$
��Auto��$	��Top=�$
��Auto�� �� CornerRadius$ 7��._��   �� $
��Auto ��� $
��Auto � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �