   M S B A M L   `   `   `  ���� @  <WpfEx, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullP4clr-namespace:WpfEx.AttachedBehaviors;assembly=WpfExWpfEx.AttachedBehaviors  
 WpfApp-   'WpfApp.View.AddGroupCreditWorthinesView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     N JWPFToolkit.Extended, Version=1.3.0.0, Culture=neutral, PublicKeyToken=null[
extToolkitJhttp://schemas.microsoft.com/winfx/2006/xaml/presentation/toolkit/extended  LattachedBehaviors4clr-namespace:WpfEx.AttachedBehaviors;assembly=WpfEx     ShowDialogWindowsStyle#��[    � Icon$'  !/WpfApp;component/Image/title.ico�� � Title$$ Работа с группой�� � WindowStartupLocation$ CenterScreen=�$	��180��$	��320��.���  � RowDefinitions �� $��20 ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $��* � � ColumnDefinitions �� $
��Auto ��� $��* �.+��� $��Название:��
�������$��14(�$
��10,7q�$��1��$��0��$��Right=��� $&�� Max сумма кредита $:��
�������$��14(�$
��10,7q�$��2��$��0��$��Right=��� -   $��txtName��$��22��$��50��$��1��$��1�� �� 	MaxLength$ 32��$	��0 6q�$
��Left=�.  (Microsoft.Windows.Controls.MaskedTextBox  -   $��txtMaxSumma��$��2��$��1��$��22��$	��0 6q�   Mask$ #000000000000��$	��130��$
��Left=���  �� Orientation$ 
Horizontal=�$��7��$��2��$��Center=�$��Bottom=�$��8q�.+��� -    ��Name$ CloseButton��$��30��$	��100��$
��10,0q�$��Отмена��	 �� IsCancel	 . �� -   $ 
SaveButton��$��30��$	��100��$
��10,0q�$��Сохранить��{�. 