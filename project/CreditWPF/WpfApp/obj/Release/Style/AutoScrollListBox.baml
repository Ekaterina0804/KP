   M S B A M L   `   `   `  ���� R  NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   NormalBrush  �� Color  PressedBrush  DisabledForegroundBrush  NormalBorderBrush �� 
StartPoint �� EndPoint � Color � Offset  ScrollBarLineButton �� 
TargetType �� Property �� Value �� 
TargetType	 �� CornerRadius
 �� Path �� RelativeSource J� Opacity �� Triggers P� Property P� Value �� 
TargetName  ScrollBarPageButton  ScrollBarThumb  CustomListBoxItem �� 	Resources  Key �� TargetProperty �� 
TargetName O� KeyTime O� Value �� Triggers :� RoutedEvent ��Name 	 Storyboard1 
 OnMouseEnter1 �� Padding J� SnapsToDevicePixels $  ListBoxWithAutoScroll_Horizontal ��Name ��Name �� Orientation �� HorizontalOffset � Value  �� ScrollableWidth! � Maximum" �� ViewportWidth# �� ViewportSize,$ �� %ComputedHorizontalScrollBarVisibility% �� ElementName& ]�Name' ]� DecreaseRepeatButton( ]� IncreaseRepeatButton) ]� Thumb* �Name+ � ColumnDefinitions, ��Name- �� LineLeftCommand. �� 	ClickMode/ �� LineRightCommand0 ]� 
Conditions1 �� Property2 �� Value3 �� 
SourceName4 N� EnterActions	5 W� To6 g� Duration7 N� ExitActions8 $� Orientation  	TarePlace�� F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      :x,http://schemas.microsoft.com/winfx/2006/xaml      %  &	        &	      &	 *     &	 :     &	 �     7   7  7  7  &	 =    &	 �    &	 �    7 	 7 
 &	     7  7  7  7  7  7  &	 "    7 	 7 
 �� $  	#FFCCCCCC���� $  	#FFEEEEEE���� $
  #888���� $	 0,0&�$	 0,1&���� � $
 #CCC��$	 0.0Q�� $
 #444��$	 1.0Q��� " ��.���  �@J�SnapsToDevicePixels . ��  �@�OverridesDefaultStyle . ��  � |� .  ��  � �� �� " ��.R��� $��Border��$	 2��8��  8�� ._�F� $��Center=�$��Center=�
���   ����� $
 Content� �� *TemplatedParent+ �� $
 Opacity� �� *TemplatedParent+ P�  � �� . . ��� $ Border��8   � ��P�  � {� .  . ��� 8   � ���� " ��.���  �@J�SnapsToDevicePixels . ��  �@�OverridesDefaultStyle . ��  � �� .  ��  � |� .  ��  � �� �� " ��.R��� 
������ �� " n�.���  �@J�SnapsToDevicePixels . ��  �@�OverridesDefaultStyle . ��  � �� .  ��  � |� .  ��  � �� �� " n�.R��� $	 2��#��z��#��z��$��1q��� " �� ���� OnMouseEnter1 .��U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)� Z� .\��� $ 0��$ 1Q��� $ 0:0:0.2��$
 1.05Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)� Z� .\��� $ 0��$ 1Q��� $ 0:0:0.2��$
 1.05Q��� Storyboard1 .��U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)� Z� .\��� $ 0��$
 1.05Q��� $ 0:0:0.2��$ 1Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)� Z� .\��� $ 0��$
 1.05Q��� $ 0:0:0.2��$ 1Q� :� $ Mouse.MouseLeave��.[��� $! Storyboard1_BeginStoryboard��8��  :� $ Mouse.MouseEnter��.[��� $# OnMouseEnter1_BeginStoryboard��8�� .���  �@J�SnapsToDevicePixels . ��  �@�OverridesDefaultStyle . ��  � �� �� " ��.R��� $��Border��$ 2q� . ._��� ��  �@J�RenderTransformOrigin$ 0.5,0.5&���  � z� V� .~��� �� �� T� �� " ��.���  �@J�SnapsToDevicePixels . ��  �@�OverridesDefaultStyle . ��  � ��$
 Auto=���  � ��$
 Auto=���  � �� . ��  � ��
 ���� ��  � ��8   ��  � �� �� .R�� .+��� $ scrollviewer������ " ��.R�� .+��� $ PART_HorizontalScrollBar��$ 
Horizontal=�# z #! z  ## z" #y�z$ ���� *Height+$% Panel������ .R�]� $& 
PART_Track��' �� $��ScrollBar.PageLeftCommand��8�� ( �� $ ��ScrollBar.PageRightCommand��8�� ) n� 8�� 
���   �$	 0.8Q�$
��0,-1q��� $	��0,2q�$
��Auto��$��Center=�.���� � $* Panel��$	��0,2q�+ �� $
��Auto ��� $��* ��� $
��Auto �.+��� $, LineLeftButton��$��0��$��30��$ 0Q�$y�	Collapsed=�8�� $��M 8 0 L 8 32 L 0 16 Z��#��Z- $. Press=����� $% scrollviewer���� $, LineRightButton��$��2��$��30��$ 0Q�$y�	Collapsed=�8�� $��M 0 0 L 8 16 L 0 32 Z��#��Z/ $. Press=����� $% scrollviewer�� ]� 0 �� 1 �@J�IsMouseOver2 . �� $3 scrollviewer��-1 �@��%ComputedHorizontalScrollBarVisibility$2 Visible=�/��� $ LineLeftButton�� � y�$ Visible=��� $ LineRightButton�� � y�$ Visible=�4 �� .���� .��W� $ LineLeftButton��$ Opacity�$	5 0.8X�$6 0:0:0.25D�W� $ LineRightButton��$ Opacity�$	5 0.8X�$6 0:0:0.25D�7 �� .���� .��W� $ LineLeftButton��$ Opacity�$5 0X�$6 0:0:0.25D�W� $ LineRightButton��$ Opacity�$5 0X�$6 0:0:0.25D���  � �� �� .R�$� $8 
Horizontal=��� " �� ���� OnMouseEnter1 .��U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)� Z� .\��� $ 0��$ 1Q��� $ 0:0:0.2��$
 1.05Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)� Z� .\��� $ 0��$ 1Q��� $ 0:0:0.2��$
 1.05Q��� Storyboard1 .��U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)� Z� .\��� $ 0��$
 1.05Q��� $ 0:0:0.2��$ 1Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)� Z� .\��� $ 0��$
 1.05Q��� $ 0:0:0.2��$ 1Q� :� $ Mouse.MouseLeave��.[��� $! Storyboard1_BeginStoryboard��8��  :� $ Mouse.MouseEnter��.[��� $# OnMouseEnter1_BeginStoryboard��8�� .���  �@J�SnapsToDevicePixels . ��  �@�OverridesDefaultStyle . ��  � �� �� " ��.R��� $��Border��$ 2q� . ._��� ��  �@J�RenderTransformOrigin$ 0.5,0.5&���  � z� V� .~��� �� �� T� 