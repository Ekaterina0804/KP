   M S B A M L   `   `   `  ����@  <WpfEx, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullP4clr-namespace:WpfEx.AttachedBehaviors;assembly=WpfExWpfEx.AttachedBehaviors  5      
 WpfApp-   'WpfApp.View.AddGroupCreditWorthinesView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   
   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      N JWPFToolkit.Extended, Version=1.3.0.0, Culture=neutral, PublicKeyToken=null[
extToolkitJhttp://schemas.microsoft.com/winfx/2006/xaml/presentation/toolkit/extended  5      LattachedBehaviors4clr-namespace:WpfEx.AttachedBehaviors;assembly=WpfEx  5         ShowDialogWindowsStyle#��[  5        � Icon$'  !/WpfApp;component/Image/title.ico��5   	    � Title$$ Работа с группой��5       � WindowStartupLocation$ CenterScreen=�5	      $	��180��5
      $	��320��6   .��5      �  � RowDefinitions 5   
   �� 5      $��20 �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��Название:��6   
�������$��14(�68   $
��10,7q�6F   $��1��6T   $��0��6a   $��Right=�6q   �� 5   
   $&�� Max сумма кредита $:��6   
�������$��14(�6C   $
��10,7q�6Q   $��2��6_   $��0��6l   $��Right=�6|   �� 5   
   -   5        $��txtName��5      $��22��6!   $��50��6-   $��1��68   $��1��6E    �� 	MaxLength$ 32��6U   $	��0 6q�6e   $
��Left=�5      .  (Microsoft.Windows.Controls.MaskedTextBox  5   
   -   5        $��txtMaxSumma��5   #   $��2��66   $��1��6C   $��22��6S   $	��0 6q�6_      Mask$ #000000000000��5   #   $	��130��68   $
��Left=�6D   �� 5!   
    �� Orientation$ 
Horizontal=�6   $��7��6.   $��2��6;   $��Center=�6O   $��Bottom=�6l   $��8q�6�   .+�5"      �� -   5         ��Name$ CloseButton��5"      $��30��6*   $	��100��66   $
��10,0q�6B   $��Отмена��6P   	 �� IsCancel	 . 6{   �� 5#      -   5        $ 
SaveButton��5#      $��30��6)   $	��100��65   $
��10,0q�6A   $��Сохранить��6O   {�. 6|   5$      5%      5&      