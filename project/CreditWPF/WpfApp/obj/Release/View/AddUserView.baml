   M S B A M L   `   `   `  ���� @  <WpfEx, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullP4clr-namespace:WpfEx.AttachedBehaviors;assembly=WpfExWpfEx.AttachedBehaviors  
 WpfApp   WpfApp.View.AddUserView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     N JWPFToolkit.Extended, Version=1.3.0.0, Culture=neutral, PublicKeyToken=null[
extToolkitJhttp://schemas.microsoft.com/winfx/2006/xaml/presentation/toolkit/extended  LattachedBehaviors4clr-namespace:WpfEx.AttachedBehaviors;assembly=WpfEx     ShowDialogWindowsStyle#��[    � Icon$'  !/WpfApp;component/Image/title.ico�� � Title$0 *Работа с пользователем�� � WindowStartupLocation$ CenterScreen=�$	��330��$	��450��.���  � RowDefinitions �� $��20 ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $��* � � ColumnDefinitions �� $
��Auto ��� $��* �.+��� $��	Ф И О:��
�������$��14(�$
��10,7q�$��1��$��0��$��Right=��� $��Пол:��
�������$��14(�$
��10,7q�$��2��$��0��$��Right=��� $��Возраст��
�������$��14(�$
��10,7q�$��3��$��0��$��Right=��� $��Кол-во детей:��
�������$��14(�$
��10,7q�$��4��$��0��$��Right=��� $*��$Семейное положение:��
�������$��14(�$
��10,7q�$��5��$��0��$��Right=��� $!��Среднемес. зп $:��
�������$��14(�$
��10,7q�$��6��$��0��$��Right=��� -   $��txtFio��$��22��$	��189��$��1��$��1�� �� 	MaxLength$ 32��$	��0 6q�$
��Left=��� -   $��cmbSex��$��0,5,0,6q�$��22��$	��189��$��2��$��1��$
��Left=�.  (Microsoft.Windows.Controls.MaskedTextBox  -   $��txtAge��$��3��$��1��$��22��$��0,7,0,5q�   Mask$ #0��$	��189��$
��Left=�  -   $��txtCountChildren��$��4��$��1��$��22��$��0,7,0,5q�$ #0��$	��189��$
��Left=��� -   $��
cmbMarried��$��0,5,0,6q�$��22��$	��189��$��5��$��1��$
��Left=�  -   $��txtRevenueMonth��$��6��$��1��$��22��$	��0 6q�$ #0000000000��$	��189��$
��Left=���  �� Orientation$ 
Horizontal=�$��7��$��2��$��Center=�$��Bottom=�$��8q�.+��� -    ��Name$ CloseButton��$��30��$	��100��$
��10,0q�$��Отмена��	 �� IsCancel	 . �� -   $ 
SaveButton��$��30��$	��100��$
��10,0q�$��Сохранить��{�. 