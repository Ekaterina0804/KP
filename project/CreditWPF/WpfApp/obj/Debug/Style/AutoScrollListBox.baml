   M S B A M L   `   `   `  ����R  NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   NormalBrush  �� Color  PressedBrush  DisabledForegroundBrush  NormalBorderBrush �� 
StartPoint �� EndPoint � Color � Offset  ScrollBarLineButton �� 
TargetType �� Property �� Value �� 
TargetType	 �� CornerRadius
 �� Path �� RelativeSource J� Opacity �� Triggers P� Property P� Value �� 
TargetName  ScrollBarPageButton  ScrollBarThumb  CustomListBoxItem �� 	Resources  Key �� TargetProperty �� 
TargetName O� KeyTime O� Value �� Triggers :� RoutedEvent ��Name 	 Storyboard1 
 OnMouseEnter1 �� Padding J� SnapsToDevicePixels $  ListBoxWithAutoScroll_Horizontal ��Name ��Name �� Orientation �� HorizontalOffset � Value  �� ScrollableWidth! � Maximum" �� ViewportWidth# �� ViewportSize,$ �� %ComputedHorizontalScrollBarVisibility% �� ElementName& ]�Name' ]� DecreaseRepeatButton( ]� IncreaseRepeatButton) ]� Thumb* �Name+ � ColumnDefinitions, ��Name- �� LineLeftCommand. �� 	ClickMode/ �� LineRightCommand0 ]� 
Conditions1 �� Property2 �� Value3 �� 
SourceName4 N� EnterActions	5 W� To6 g� Duration7 N� ExitActions8 $� Orientation  	TarePlace�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      :x,http://schemas.microsoft.com/winfx/2006/xaml      5      %5  &	        &	 #     &	 F     &	 d     &	     7   7  7  7  &	 �    &	     &	 k    7 	 7 
 &	 6    7  7  7  7  7  7  &	 �    7 	 7 
 �� 5      $  	#FFCCCCCC��6*   �� 5      $  	#FFEEEEEE��6+   �� 5
      $
  #888��66   �� 5      $	 0,0&�64   $	 0,1&�6E   ��5      � � 5      $
 #CCC��6   $	 0.0Q�6,   � 5      $
 #444��6   $	 1.0Q�6,   5      5      �� 5      " ��6(   .�5   
   ��  �@J�SnapsToDevicePixels . 60   �� 5   
    �@�OverridesDefaultStyle . 62   �� 5   
    � |� .  6&   �� 5   
    � �� 5      �� 5      " ��6"   .R�5      �� $��Border��6   $	 2��6+   8��  8�� ._�5!      F� $��Center=�6   $��Center=�6<   
���   ���5"   !   �� $
 Content� �� *TemplatedParent+ 5#   !   �� $
 Opacity� �� *TemplatedParent+5$       5%      P� 5&       � �� . . �5'      �� $ Border��6%   8   � ��6O   5(      P� 5)       � {� .  . �5*      �� 8   � ��6;   5+      5-      5/      50      �� 52      " ��6(   .�53   
   ��  �@J�SnapsToDevicePixels . 60   �� 54   
    �@�OverridesDefaultStyle . 62   �� 55   
    � �� .  6&   �� 56   
    � |� .  6&   �� 57   
    � �� 58      �� 59      " ��6"   .R�5:      �� 
������ 6   5;      5=      5>      �� 5@      " n�6#   .�5A   
   ��  �@J�SnapsToDevicePixels . 60   �� 5B   
    �@�OverridesDefaultStyle . 62   �� 5C   
    � �� .  6&   �� 5D   
    � |� .  6&   �� 5E   
    � �� 5F      �� 5G      " n�6"   .R�5H      �� $	 2��6   #��z��6.   #��z��5I   !   $��1q�6M   5J      5L      5M      �� 5O      " ��6&    5P   
   ���� 5Q      OnMouseEnter1 .��5R      U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�60    6�   Z� .\�5S      �� $ 0��6+   $ 1Q�67   �� 5T      $ 0:0:0.2��6+   $
 1.05Q�6=   5U      U� 5V      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�60    6�   Z� .\�5W      �� $ 0��6+   $ 1Q�67   �� 5X      $ 0:0:0.2��6+   $
 1.05Q�6=   5Y      5Z      �� 5[      Storyboard1 .��5\      U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�60    6�   Z� .\�5]      �� $ 0��6+   $
 1.05Q�67   �� 5^      $ 0:0:0.2��6+   $ 1Q�6=   5_      U� 5`      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�60    6�   Z� .\�5a      �� $ 0��6+   $
 1.05Q�67   �� 5b      $ 0:0:0.2��6+   $ 1Q�6=   5c      5d      5e       5f   
   :� 5g      $ Mouse.MouseLeave��6   .[�5h      �� $! Storyboard1_BeginStoryboard��6"   8��  6G   5i      :� 5j      $ Mouse.MouseEnter��6   .[�5k      �� $# OnMouseEnter1_BeginStoryboard��6"   8�� 6I   5l      .�5n   
   ��  �@J�SnapsToDevicePixels . 60   �� 5o   
    �@�OverridesDefaultStyle . 62   �� 5p   
    � �� 5q      �� 5r      " ��6"   .R�5s      �� $��Border��6   $ 2q�6,    . ._�5t      �� 5u      5v      5x      �� 5y   
    �@J�RenderTransformOrigin$ 0.5,0.5&�62   �� 5z   
    � z� 5{      V� 5|      .~�5}      �� �� 5~      �� 5      T� 5�      5�      5�      5�      �� 5�      " ��65   .�5�   
   ��  �@J�SnapsToDevicePixels . 60   �� 5�   
    �@�OverridesDefaultStyle . 62   �� 5�   
    � ��$
 Auto=�6G   �� 5�   
    � ��$
 Auto=�6E   �� 5�   
    � �� . 6:   �� 5�   
    � ��
 ���� 6'   �� 5�   
    � ��8   6/   �� 5�   
    � �� 5�      �� 5�      .R�5�      � .+�5�      �� $ scrollviewer��6'   ��5�      �� 5�   "   " ��62   .R�5�   &   � .+�5�   *   �� $ PART_HorizontalScrollBar��64   $ 
Horizontal=�6V   # z 5�   @   #! z  5�   @   ## z" 5�   @   #y�z$ 5�   @   ��5�   @   �� *Height+$% Panel����5�   .   �� 5�   2   .R�5�   6   ]� $& 
PART_Track��6<   ' 5�   :   �� 5�   >   $��ScrollBar.PageLeftCommand��6K   8�� 5�   ;   ( 5�   :   �� 5�   >   $ ��ScrollBar.PageRightCommand��6K   8�� 5�   ;   ) 5�   :   n� 5�   >   8�� 
���   �$	 0.8Q�5�   ]   $
��0,-1q�6k   5�   7   5�   3   5�   +   �� 5�   *   $	��0,2q�6A   $
��Auto��6N   $��Center=�6\   5�   '   5�   #   .��5�      �� 5�      � 5�      $* Panel��6   $	��0,2q�6.   + 5�      �� 5�   "   $
��Auto �63   �� 5�   "   $��* �63   �� 5�   "   $
��Auto �63   .+�5�      �� $, LineLeftButton��6+   $��0��6C   $��30��6S   $ 0Q�6^   $y�	Collapsed=�6j   8�� $��M 8 0 L 8 32 L 0 16 Z��5�   '   #��Z- 5�   '   $. Press=�5�   '   ��5�   '   �� $% scrollviewer��5�   '   �� 5�      $, LineRightButton��6+   $��2��6D   $��30��6T   $ 0Q�6_   $y�	Collapsed=�6k   8�� $��M 0 0 L 8 16 L 0 32 Z��5�   '   #��Z/ 5�   '   $. Press=�5�   '   ��5�   '   �� $% scrollviewer��5�   '   5�      5�       5�      ]� 5�      0 5�      �� 5�   "   1 �@J�IsMouseOver2 . 6C   �� 5�   "   $3 scrollviewer��6]   -1 �@��%ComputedHorizontalScrollBarVisibility$2 Visible=�6w   /�5�      �� 5�   "   $ LineLeftButton��6)    � y�$ Visible=�6[   �� 5�   "   $ LineRightButton��6)    � y�$ Visible=�6\   4 5�      �� 5�   "   .��5�   &   �� .��5�   *   W� $ LineLeftButton��6:   $ Opacity�5�   >   $	5 0.8X�6b   $6 0:0:0.25D�6k   W� 5�   *   $ LineRightButton��6:   $ Opacity�5�   >   $	5 0.8X�6b   $6 0:0:0.25D�6k   5�   '   5�   #   7 5�      �� 5�   "   .��5�   &   �� .��5�   *   W� $ LineLeftButton��6:   $ Opacity�5�   >   $5 0X�6b   $6 0:0:0.25D�6i   W� 5�   *   $ LineRightButton��6:   $ Opacity�5�   >   $5 0X�6b   $6 0:0:0.25D�6i   5�   '   5�   #   5�      5�      5�      �� 5�   
    � �� 5�      �� 5�      .R�5�      $� $8 
Horizontal=�6-   5�      5�      5�      �� 5�      " ��6    5�   
   ���� 5�      OnMouseEnter1 .��5�      U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�60    6�   Z� .\�5�      �� $ 0��6+   $ 1Q�67   �� 5�      $ 0:0:0.2��6+   $
 1.05Q�6=   5�      U� 5�      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�60    6�   Z� .\�5�      �� $ 0��6+   $ 1Q�67   �� 5�      $ 0:0:0.2��6+   $
 1.05Q�6=   5      5     �� 5     Storyboard1 .��5     U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�60    6�   Z� .\�5     �� $ 0��6+   $
 1.05Q�67   �� 5     $ 0:0:0.2��6+   $ 1Q�6=   5     U� 5     $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�60    6�   Z� .\�5     �� $ 0��6+   $
 1.05Q�67   �� 5	     $ 0:0:0.2��6+   $ 1Q�6=   5
     5     5      5  
   :� 5     $ Mouse.MouseLeave��6   .[�5     �� $! Storyboard1_BeginStoryboard��6"   8��  6G   5     :� 5     $ Mouse.MouseEnter��6   .[�5     �� $# OnMouseEnter1_BeginStoryboard��6"   8�� 6I   5     .�5  
   ��  �@J�SnapsToDevicePixels . 60   �� 5  
    �@�OverridesDefaultStyle . 62   �� 5  
    � �� 5     �� 5     " ��6"   .R�5     �� $��Border��6   $ 2q�6,    . ._�5     �� 5     5     5     �� 5   
    �@J�RenderTransformOrigin$ 0.5,0.5&�62   �� 5!  
    � z� 5"     V� 5#     .~�5$     �� �� 5%     �� 5&     T� 5'     5(     5*     5+     5,     