   M S B A M L   `   `   `  ���� 
  WpfApp    WpfApp.Style.MainWindowR NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   VS2012WindowBorderBrush  �� Color # VS2012WindowBorderBrushInactive   VS2012WindowStatusForeground ( $VS2012WindowStatusForegroundInactive  WindowlBrush �� EndPoint �� 
StartPoint � Color � Offset # VS2012WindowStyleTitleBarButton �� 
TargetType �� Property �� Value �� 
TargetType	 ��Name
 �� Triggers P� Property P� Value �� 
TargetName  VS2012WindowStyle&   System.Windows.Media.TextOptions   TextRenderingMode   TextFormattingMode �� Padding �� CornerRadius � ColumnDefinitions ��Name �� Path �� Mode �� RelativeSource ��Name ��Name �� Stretch �� EdgeMode �� AncestorType F�Name ��Name � Cursor	 �� X1  � ActualWidth	! �� X2	" �� Y1	# �� Y2$ � ActualHeight% ��Name& �� 	Resources' �� Triggers( �� Binding) �� Value  ShowDialogWindowsStyle* � RowDefinitions   F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     %�  &	        &	      &	 $     &	 7     &	 J     &	 �     7  &	     7  7  7  7  7  7  7  7   7  7  &	 +    7  7  7  7  �� $  Black���� $  #999999���� $  #FFFFFF���� $  #FFFFFF���� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FF515151��$ 0Q�� $ 	#FF979595��$ 1Q��� " ��.���  � |� .  ��  � �� �� " ��.R�� .+��� $	 PART_border��
������ �� 
 P�  �@J�IsMouseOver . . ��� $ PART_border�� � �� �#FFF�� $ PART_border�� �@J�Opacity$	 0.7Q�P�  � �� . . ��� $ PART_border��8    � ���� $ PART_border�� �@J�Opacity$ 1Q���  � �� �#FFF�� " �.���  �@�AllowsTransparency .  ��  �@�WindowStyle$
 None=���  �@�
ResizeMode$ CanResizeWithGrip=���  � �� �� " �.R�� $ 	ClearType=�$ Display=�.+��� $	 PART_Border��$
��Auto��$
��Auto��8��  
���   �$��3q�$ 0q�._�]� $��Stretch=�
������ $��Stretch=�.+��� $	 TitleBar��-   $	��Top=�$��0q�8�� $ 	12,12,0,0��._�� $��24�� �� $��36 ��� �� $��34 ��� $��34 ��� $��34 �.+��� $
 Icon��-   $��0��$��Right=�$��
-4,-7,7,-4q�$��25��$��25������ $
 Icon�$ OneWay=� �� *TemplatedParent+�� $ Caption��$��1��$
��Left=�$��Center=�$��4,0,0,0q�$��Segoe UI)�$��12(�$
��Bold"�
����������� $ Title�$ OneWay=� �� *TemplatedParent+�� $ 	MinButton��-   $��2��$	��Top=�$��34��$��26��8�� .��� $��9��$��9��.+�F� $��1��$
 None=�$ Aliased=�=����     z � z  z �    ��j � z ��j �    ��[ � z ��[ 	����  �� $ ButtonL�$ 
Foreground��� $ 	MaxButton��-   $��3��$	��Top=�$��34��$��26��8�� .��� $��9��$��9��.+�F� $ PART_MaxButton_Path��$��1��$
 None=�$ Aliased=�X����        � z     � z  z �     z �        �    @B � z @B �    �� � z �� 	����  �� $ ButtonL�$ 
Foreground��� $ CloseButton��-   $��4��$	��Top=�$��34��$��26��8�� .��� $��9��$��9��.+�F� $	��1.5��$
 None=�+����        � z  z �     z � z     	����  �� $ ButtonL�$ 
Foreground��� �� $ lnSizeNorth��-   
������ $ SizeNS��$ 1��#! z  $" 1��$# 1��$��3���� $ lnSizeSouth��-   
������ $��Bottom=�$ SizeNS��$ 1��#! z  #" z$ ## z$ $��3���� $ 
lnSizeWest��-   
������ $ SizeWE��$ 1��$! 1��$" 1��## z$ $��3���� $ 
lnSizeEast��-	   
������ $��Right=�$ SizeWE��# z  #! z  $" 1��## z$ $��3���� $% rectSizeNorthWest��-
   $ SizeNWSE��
������ $��5��$��5��$	��Top=�$
��Left=��� $% rectSizeNorthEast��-   $ SizeNESW��
������ $��5��$��5��$	��Top=�$��Right=��� $% rectSizeSouthWest��-   $ SizeNESW��
������ $��5��$��5��$��Bottom=�$
��Left=��� $% rectSizeSouthEast��-   $ SizeNWSE��
������ $��5��$��5��$��Bottom=�$��Right=�
 P�  �@�WindowState$ 	Maximized=�. ��� $ PART_MaxButton_Path�� � ��| ��    ��- �@KL ��- �@KL  z �     z �    ��- �     	= �@KL  	= ���-     � z     � z @KL ���j @KL ���- @B � z @B 	P�  �@�IsActive .  . ��� $ PART_Border��8   � ��& ���� '��       " ��' �� ( �� *
IsActive+ �� $ WindowL�) True.a���  � ��8  ��  � ��8  �� ( �� *
IsActive+ �� $ WindowL�	) False.a���  � ��8  ��  � ��8 	 �� " �.���  �@J�SnapsToDevicePixels . ��  �@�WindowStyle$
 None=���  �@�AllowsTransparency . ��  � ��
 ���� ��  � �� �� " �.R��� $��windowFrame��$
��Auto��$
��Auto��
���   �$��3q�$ 12��8��  ._�� * �� $
��Auto ��� .+��� $	 TitleBar��-   $	��Top=�$��0q�8�� $ 	12,12,0,0��._�� $��24�� �� $��36 ��� �� $��40 �.+��� $
 Icon��$��0��$��Right=�$��
-4,-7,7,-4q�$��25��$��25������ $
 Icon�$ OneWay=� �� *TemplatedParent+�� $ Caption��$��1��$
��Left=�$��Center=�$��4,0,0,0q�$��Segoe UI)�$��12(�$
��Bold"�
����������� $ Title�$ OneWay=� �� *TemplatedParent+�� $ CloseButton��-   $��2��$	��Top=�$
��Left=�$��34��$��26��8�� .��� $��9��$��9��.+�F� $	��1.5��$
 None=�+����        � z  z �     z � z     	����  �� $ ButtonL�$ 
Foreground��� 8�� $��1��$ 	0,0,12,12��._��� .u��� 