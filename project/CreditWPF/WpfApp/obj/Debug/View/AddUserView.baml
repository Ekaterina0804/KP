   M S B A M L   `   `   `  ����@  <WpfEx, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullP4clr-namespace:WpfEx.AttachedBehaviors;assembly=WpfExWpfEx.AttachedBehaviors  5      
 WpfApp   WpfApp.View.AddUserView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      N JWPFToolkit.Extended, Version=1.3.0.0, Culture=neutral, PublicKeyToken=null[
extToolkitJhttp://schemas.microsoft.com/winfx/2006/xaml/presentation/toolkit/extended  5      LattachedBehaviors4clr-namespace:WpfEx.AttachedBehaviors;assembly=WpfEx  5         ShowDialogWindowsStyle#��[  5        � Icon$'  !/WpfApp;component/Image/title.ico��5   	    � Title$0 *Работа с пользователем��5       � WindowStartupLocation$ CenterScreen=�5	      $	��330��5
      $	��450��6   .��5      �  � RowDefinitions 5   
   �� 5      $��20 �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��	Ф И О:��6   
�������$��14(�65   $
��10,7q�6C   $��1��6Q   $��0��6^   $��Right=�6n   �� 5   
   $��Пол:��6   
�������$��14(�63   $
��10,7q�6A   $��2��6O   $��0��6\   $��Right=�6l   �� 5   
   $��Возраст��6   
�������$��14(�66   $
��10,7q�6D   $��3��6R   $��0��6_   $��Right=�6o   �� 5   
   $��Кол-во детей:��6   
�������$��14(�6<   $
��10,7q�6J   $��4��6X   $��0��6e   $��Right=�6u   �� 5   
   $*��$Семейное положение:��6   
�������$��14(�6B   $
��10,7q�6P   $��5��6^   $��0��6k   $��Right=�6{   �� 5    
   $!��Среднемес. зп $:��6   
�������$��14(�6?   $
��10,7q�6M   $��6��6[   $��0��6h   $��Right=�6x   �� 5"   
   -   5        $��txtFio��5"      $��22��6    $	��189��6,   $��1��68   $��1��6E    �� 	MaxLength$ 32��6U   $	��0 6q�6e   $
��Left=�5#      �� 5$   
   -   5        $��cmbSex��5$      $��0,5,0,6q�6!   $��22��62   $	��189��6>   $��2��6J   $��1��6W   $
��Left=�6g   .  (Microsoft.Windows.Controls.MaskedTextBox  5%   
   -   5        $��txtAge��5%   #   $��3��61   $��1��6>   $��22��6N   $��0,7,0,5q�6Z      Mask$ #0��5&   #   $	��189��6-   $
��Left=�69     5'   
   -   5        $��txtCountChildren��5'   #   $��4��6;   $��1��6H   $��22��6X   $��0,7,0,5q�6d   $ #0��5(   #   $	��189��6-   $
��Left=�69   �� 5)   
   -   5        $��
cmbMarried��5)      $��0,5,0,6q�6%   $��22��66   $	��189��6B   $��5��6N   $��1��6[   $
��Left=�6k     5*   
   -   5        $��txtRevenueMonth��5*   #   $��6��6:   $��1��6G   $��22��6W   $	��0 6q�6c   $ #0000000000��5+   #   $	��189��66   $
��Left=�6B   �� 5-   
    �� Orientation$ 
Horizontal=�6   $��7��6.   $��2��6;   $��Center=�6O   $��Bottom=�6l   $��8q�6�   .+�5.      �� -   5         ��Name$ CloseButton��5.      $��30��6*   $	��100��66   $
��10,0q�6B   $��Отмена��6P   	 �� IsCancel	 . 6{   �� 5/      -   5        $ 
SaveButton��5/      $��30��6)   $	��100��65   $
��10,0q�6A   $��Сохранить��6O   {�. 6|   50      51      52      