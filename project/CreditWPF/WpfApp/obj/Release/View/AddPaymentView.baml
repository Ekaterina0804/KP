   M S B A M L   `   `   `  ���� @  <WpfEx, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullP4clr-namespace:WpfEx.AttachedBehaviors;assembly=WpfExWpfEx.AttachedBehaviors  
 WpfApp    WpfApp.View.AddPaymentView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     N JWPFToolkit.Extended, Version=1.3.0.0, Culture=neutral, PublicKeyToken=null[
extToolkitJhttp://schemas.microsoft.com/winfx/2006/xaml/presentation/toolkit/extended  LattachedBehaviors4clr-namespace:WpfEx.AttachedBehaviors;assembly=WpfEx     ShowDialogWindowsStyle#��[    � Icon$'  !/WpfApp;component/Image/title.ico�� � Title$% Внесение платежа�� � WindowStartupLocation$ CenterScreen=�$	��330��$	��450��.���  � RowDefinitions �� $��20 ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $��* � � ColumnDefinitions �� $
��Auto ��� $��* �.+��� $1��+Дата погашения платежа:��
�������$��14(�$
��10,7q�$��2��$��0��$��Right=��� $$��Остаток кредита:��
�������$��14(�$
��10,7q�$��3��$��0��$��Right=��� $)��#Ежемесячный платёж��
�������$��14(�$
��10,7q�$��4��$��0��$��Right=��� $ ��Сумма платежа:��
�������$��14(�$
��10,7q�$��5��$��0��$��Right=��� $=��7Остаток ежемесячного платежа:��
�������$��14(�$
��10,7q�$��6��$��0��$��Right=��� $��Номер месяца:��
�������$��14(�$
��10,7q�$��1��$��0��$��Right=��� -   $��txtNumberMonth��$��22��$	��189��$��1��$��1��$	��0 6q�$
��Left=� �� 
IsReadOnly . �� -   $��txtData��$��22��$	��189��$��2��$��1��$	��0 6q�$
��Left=� . �� -   $��txtLostSumma��$��22��$	��189��$��3��$��1��$	��0 6q�$
��Left=� . �� -   $��txtSummaMonth��$��22��$	��189��$��4��$��1��$	��0 6q�$
��Left=� . �� -    ��Name$ txtSummaPay��$��22��$	��189��$��5��$��1�� �� 	MaxLength$ 7��$	��0 6q�$
��Left=�-   'WpfEx.AttachedBehaviors.TextBoxBehavior   	IsInteger . �� -   $ txtSummalost��$��22��$	��189��$��6��$��1��$	��0 6q�$
��Left=� . �� 	 �� Orientation$	 
Horizontal=�$��7��$��2��$��Center=�$��Bottom=�$��8q�.+��� -   
 ��Name$
 CloseButton��$��30��$	��100��$
��10,0q�$��Отмена�� �� IsCancel . �� -   $
 
SaveButton��$��30��$	��100��$
��10,0q�$��Сохранить��{�. 