   M S B A M L   `   `   `  ����
  WpfApp     WpfApp.View.ShowCreditView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      $	��300��5      $	��650��6   .��5      � .+�5	   
   � -   5        $��RootGrid��5	        � RowDefinitions  5
      �� 5      $��* �6    �� 5      $
��Auto �6     � ColumnDefinitions 5      �� 5      $��* �6#   �� 5      $
��Auto �6#   .+�5      &   System.Windows.Controls.DataGrid  -   5        $��allModelDataGrid��5      $��0��5      $��0��6#      AutoGenerateColumns .     EnableRowVirtualization . $��Stretch=�5      $��Stretch=�5         RowDetailsVisibilityMode$ VisibleWhenSelected=�5         SelectionMode$ Single=�5      ��5      �� *
AllModel+   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Заёмщик��6}      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6�   	   
IsReadOnly	 . 1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 6)   ��  �� Path$ UserName� �� Mode$ OneWay=� �� UpdateSourceTrigger$ PropertyChanged=�6�     5      $ Сумма $��6~   $
 Auto 6�   	 . 
 6)   �� $ 	SummaFull�$ OneWay=�$ PropertyChanged=�6�     5      $ Сумма выплат $��6   $
 Auto 6�   	 . 
 6)   �� $ 
SummaMonth�$ OneWay=�$ PropertyChanged=�6�     5       $% Срок кредита, мес��6~   $
 Auto 6�   	 . 
 6)   �� $ 	TermMonth�$ OneWay=�$ PropertyChanged=�6�     5!      $ Ставка %��6{   $
 Auto 6�   	 . 
 6)   �� $ Stavka�$ OneWay=�$ PropertyChanged=�6�     5"      $ Дата��6~   $	 100 6�   	 . 
 6)   �� $ 	DataStart�$ OneWay=�$ PropertyChanged=�6�     5#      $ Состояние��6�   $ * 6�   	 . 
 6)   �� $ NameCondition�$ OneWay=�$ PropertyChanged=�6�   5%      � 5'      $��1��6   $��0��6#   .+�5(      ��  �� Orientation$ Vertical=�6   $��Center=�64   $��0 0 0 0q�6O   .+�5)      �� $��Новый кредит��6   $	��140��65   $��25��6A   $��5,0,5,0q�6M   ��6^   �� $ AddCmd���6~   ��  �� ElementName$ allModelDataGrid��$ SelectedItem��� 5*      $��Внести платёж��6   $	��140��66   $��25��6B   $��5,5,5,0q�6N   ��6_   �� $ 	UpdateCmd���6�   �� $ allModelDataGrid��$ SelectedItem��� 5+      $��График выплат��6   $	��140��66   $��25��6B   $��5,5,5,0q�6N   ��6_   �� $ PaymentsCmd���6�   �� $ allModelDataGrid��$ SelectedItem��� 5,      $��Печать��6   $	��140��6/   $��25��6;   $��5,5,5,0q�6G   ��6X   �� $ PrintCmd���6z   �� $ allModelDataGrid��$ SelectedItem��� 5-      $��Удалить��6   $	��140��60   $��25��6<   $��5,5,5,0q�6H   ��6Y   �� $ 	DeleteCmd���6|   �� $ allModelDataGrid��$ SelectedItem�5.      5/      � 51      $��1��6   .+�52      �� $	��0.5q�6   
���   �$��3 10 3 0q�6C   $
��Auto��6U   $	��Top=�6b   $
��Auto��6z    �� CornerRadius$ 7��6�   ._�53      �   54      �� 55      $
��Auto �6,   �� 56      $
��Auto �6,    58      �� 59      $
��Auto �6/   �� 5:      $
��Auto �6/   �� 5;      $
��Auto �6/   �� 5<      $
��Auto �6/   �� 5=      $
��Auto �6/   5?      5@      5A      5B      5C      5D      