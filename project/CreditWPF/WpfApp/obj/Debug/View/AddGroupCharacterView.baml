   M S B A M L   `   `   `  ����@  <WpfEx, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullP4clr-namespace:WpfEx.AttachedBehaviors;assembly=WpfExWpfEx.AttachedBehaviors  5      
 WpfApp'   !WpfApp.View.AddGroupCharacterView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      N JWPFToolkit.Extended, Version=1.3.0.0, Culture=neutral, PublicKeyToken=null[
extToolkitJhttp://schemas.microsoft.com/winfx/2006/xaml/presentation/toolkit/extended  5      LattachedBehaviors4clr-namespace:WpfEx.AttachedBehaviors;assembly=WpfEx  5         ShowDialogWindowsStyle#��[  5        � Icon$'  !/WpfApp;component/Image/title.ico��5       � Title$9 3Работа с параметрами группы��5       � WindowStartupLocation$ CenterScreen=�5	      $	��300��5
      $	��460��6   .��5      �  � RowDefinitions 5   
   �� 5      $��20 �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $/��)Группа платёжеспос-ти:��6   
�������$��14(�6E   $
��10,7q�6S   $��1��6a   $��0��6n   $��Right=�6~   �� 5   
   $"��Годовой доход $:��6   
�������$��14(�6?   $
��10,7q�6M   $��2��6[   $��0��6h   $��Right=�6x   �� 5   
   $��Пол:��6   
�������$��14(�63   $
��10,7q�6A   $��3��6O   $��0��6\   $��Right=�6l   �� 5   
   $��Возраст от��6   
�������$��14(�69   $
��10,7q�6G   $��4��6U   $��0��6b   $��Right=�6r   �� 5   
   $��Кол-во детей:��6   
�������$��14(�6<   $
��10,7q�6J   $��5��6X   $��0��6e   $��Right=�6u   �� 5   
   $*��$Семейное положение:��6   
�������$��14(�6B   $
��10,7q�6P   $��6��6^   $��0��6k   $��Right=�6{   �� 5!   
   -   5        $��cmbGroup��5!      $��0,6,0,5q�6#   $��22��64   $	��189��6@   $��1��6L   $��1��6Y   $
��Left=�6i   �� 5#   
   -   5        $��
cmbRevenue��5#      $��0,6,0,5q�6%   $��22��66   $	��189��6B   $��2��6N   $��1��6[   $
��Left=�6k   �� 5%   
   -   5        $��cmbSex��5%      $��0,5,0,6q�6!   $��22��62   $	��189��6>   $��3��6J   $��1��6W   $
��Left=�6g   .  (Microsoft.Windows.Controls.MaskedTextBox  5'   
   -   5        $��	txtAgeMin��5'   #   $��4��64   $��1��6A   $��22��6Q   $��0,7,0,5q�6]      Mask$	 #00��5(   #   $��76��6.   $
��Left=�69     5)   
   -   5          Name$ 	txtAgeMax��5)   #   $��4��66   $��1��6C   $��22��6S   $��	113,7,0,5q�6_   $	 #00��5*   
   $��76��6   $
��Left=�6     J� RenderTransformOrigin$ 0.553,-1.409&�6;   �� 5,   
   -   5        $��cmbCountChildren��5,      $��0,6,0,5q�6+   $��22��6<   $	��189��6H   $��5��6T   $��1��6a   $
��Left=�6q   �� 5.   
   -   5        $��
cmbMarried��5.      $��0,5,0,6q�6%   $��22��66   $	��189��6B   $��6��6N   $��1��6[   $
��Left=�6k   �� 50   
    �� Orientation$ 
Horizontal=�6   $��7��6.   $��2��6;   $��Center=�6O   $��Bottom=�6l   $��8q�6�   .+�51      �� -   5        	 ��Name$	 CloseButton��51      $��30��6*   $	��100��66   $
��10,0q�6B   $��Отмена��6P   
 �� IsCancel
 . 6{   �� 52      -	   5        $	 
SaveButton��52      $��30��6)   $	��100��65   $
��10,0q�6A   $��Сохранить��6O   {�. 6|   53      �� 54   
   $
��до��6   
�������$��14(�61   $��	0,7,182,8q�6?   $��4��6R   $��1��6_   $��Right=�6o   56      57      