   M S B A M L   `   `   `  ���� 
  WpfApp     WpfApp.View.MainWindowView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     -   $	��600��$
��1200��$
��1200��$
��1000��$	��600��$	��450��$��13(�$��Verdana)�  � WindowStartupLocation$  CenterScreen=� J� SnapsToDevicePixels .    VS2012WindowStyle#��[   � Icon$' !/WpfApp;component/Image/title.ico�� � Title ��  �� Path$ DisplayName� � 	Resources   XmlData � XPath  ItemTemplate � ColumnDefinitions ��Name	 �� TextAlignment
 �� XPath  ShowList �� TargetProperty	 W� To g� Duration  HideList��%F  &	       &	 $     &	 �     &	 �     � $ Menu_button/First_button���� .R�� $��5q� �� �� .+��� $��10,5,5,5q�$��1��.+��� $ NameText��$��12(�$
��Bold"�$	 Center=�
���   ����� $
 @Name���� .��W� $ Width�$	 230X�$ 0:0:0.4D��� .��W� $ Width�$ 0X�$ 0:0:0.5D�.��� $��4q� �� $
��Auto ��� $��5 ���  � RowDefinitions �� $
��Auto ��� $��* �.+�� $	��230��$��30��$	��Top=�$��5q�$��0��$��0��.+���  �� RadiusY$ 8�� �� RadiusX$ 8��
�������$��5��$��-3q���   BorderMenuStyle#��[ ._��� $��Center=�$��Center=�
�������$
��Bold"�$��11(����� $ DisplayDate�� $	��230��$��5,5,5,50q�$��0��$��1��.+��� $ 8��$ 8��
�������$��5��$��-3q��� #��[ ._��� -    ��Name$ FirstLevelList��  ButtonMenuListBox#���  #��[   ListBoxItemStyle#���  $��5q�����  �� Source# [ ��Z� ��Z� � -    �Name$ SecondLevelGrid��$��0��$��Right=�.+��� #��[ ._��� -   $ SecondLevelList��#���  #��[ #���  ��.  
 � Tag$ LeafNode�� � DataContext �� *SelectedItem+ �� ElementName$ FirstLevelList������ $
 Second_button����Z� ��Z� �� -   $��
Назад��$��Right=�$��Bottom=�  ButtonMenuStyle#���  $��	0,0,8,-37q�� $
��Auto��$��30��$	��Top=�$��5,5,5,0q�$��2��$��0��.+��� $ 8��$ 8��
�������$��5��$��-3q��� #��[ ._��� -   $��txtMenuLevel��$��Center=�$��Center=�
�������$
��Bold"�$��14(��� $��2�� 	 MainBorderStyle2#��[	 $��1��._���  
 WorkspacesTemplate#��[
   MainHeadereControlrStyle#��[ ���� $ 
Workspaces��� -   $��btnClose��$��1��$��
Выход��$��30��$
��Left=�$��10,0,0,5q�$��Bottom=�$	��100������ $ CloseCommand�