   M S B A M L   `   `   `  ����@  <WpfEx, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullP4clr-namespace:WpfEx.AttachedBehaviors;assembly=WpfExWpfEx.AttachedBehaviors  5      
 WpfApp    WpfApp.View.AddPaymentView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      N JWPFToolkit.Extended, Version=1.3.0.0, Culture=neutral, PublicKeyToken=null[
extToolkitJhttp://schemas.microsoft.com/winfx/2006/xaml/presentation/toolkit/extended  5      LattachedBehaviors4clr-namespace:WpfEx.AttachedBehaviors;assembly=WpfEx  5         ShowDialogWindowsStyle#��[  5        � Icon$'  !/WpfApp;component/Image/title.ico��5   	    � Title$% Внесение платежа��5       � WindowStartupLocation$ CenterScreen=�5	      $	��330��5
      $	��450��6   .��5      �  � RowDefinitions 5   
   �� 5      $��20 �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $1��+Дата погашения платежа:��6   
�������$��14(�6F   $
��10,7q�6T   $��2��6b   $��0��6o   $��Right=�6   �� 5   
   $$��Остаток кредита:��6   
�������$��14(�6?   $
��10,7q�6M   $��3��6[   $��0��6h   $��Right=�6x   �� 5   
   $)��#Ежемесячный платёж��6   
�������$��14(�6A   $
��10,7q�6O   $��4��6]   $��0��6j   $��Right=�6z   �� 5   
   $ ��Сумма платежа:��6   
�������$��14(�6=   $
��10,7q�6K   $��5��6Y   $��0��6f   $��Right=�6v   �� 5   
   $=��7Остаток ежемесячного платежа:��6   
�������$��14(�6L   $
��10,7q�6Z   $��6��6h   $��0��6u   $��Right=�6�   �� 5    
   $��Номер месяца:��6   
�������$��14(�6<   $
��10,7q�6J   $��1��6X   $��0��6e   $��Right=�6u   �� 5"   
   -   5        $��txtNumberMonth��5"      $��22��6(   $	��189��64   $��1��6@   $��1��6M   $	��0 6q�6^   $
��Left=�5#       �� 
IsReadOnly . 6-   �� 5$   
   -   5        $��txtData��5$      $��22��6!   $	��189��6-   $��2��69   $��1��6F   $	��0 6q�6W   $
��Left=�5%       . 6-   �� 5&   
   -   5        $��txtLostSumma��5&      $��22��6&   $	��189��62   $��3��6>   $��1��6K   $	��0 6q�6]   $
��Left=�5'       . 6-   �� 5(   
   -   5        $��txtSummaMonth��5(      $��22��6'   $	��189��63   $��4��6?   $��1��6L   $	��0 6q�6]   $
��Left=�5)       . 6-   �� 5+   
   -   5         ��Name$ txtSummaPay��5+      $��22��6'   $	��189��63   $��5��6?   $��1��6L    �� 	MaxLength$ 7��6\   $	��0 6q�6k   $
��Left=�5,      -   'WpfEx.AttachedBehaviors.TextBoxBehavior   	IsInteger . 6`   �� 5-   
   -   5        $ txtSummalost��5-      $��22��6(   $	��189��64   $��6��6@   $��1��6M   $	��0 6q�6^   $
��Left=�5.       . 6-   �� 51   
   	 �� Orientation$	 
Horizontal=�6   $��7��6.   $��2��6;   $��Center=�6O   $��Bottom=�6l   $��8q�6�   .+�52      �� -   5        
 ��Name$
 CloseButton��52      $��30��6*   $	��100��66   $
��10,0q�6B   $��Отмена��6P    �� IsCancel . 6{   �� 53      -   5        $
 
SaveButton��53      $��30��6)   $	��100��65   $
��10,0q�6A   $��Сохранить��6O   {�. 6|   54      55      56      