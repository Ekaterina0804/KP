   M S B A M L   `   `   `  ���� R  NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   BorderMenuStyle  �� 
TargetType �� Property �� Value �� EndPoint �� 
StartPoint � Color � Offset  ListBoxItemStyle �� RelativeSource �� AncestorType	 �� 
TargetType'   !System.Windows.VisualStateManager
    VisualStateGroups%  System.Windows.VisualStateGroup   Transitions%  System.Windows.VisualTransition   GeneratedDuration   States   System.Windows.VisualState   
Storyboard �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value8  2System.Windows.Media.Animation.EasingColorKeyFrame �� KeyTime �� Value ��Name �� Padding J� SnapsToDevicePixels �� CornerRadius J� RenderTransformOrigin F�Name �� Stretch J� Opacity �� RadiusX �� RadiusY �� Triggers  P� Property! P� Value" �� Value# �� Binding$ �� Mode% �� 
TargetName  ButtonFocusVisual& �� StrokeDashArray  ButtonNormalBackground  ButtonNormalBorder' �� Color  ButtonMenuStyle  ScrollViewerControlTemplate( �Name) � ColumnDefinitions* � RowDefinitions+ ��Name, ��Name- �� CanContentScroll. �� CanHorizontallyScroll/ �� CanVerticallyScroll0 ��Name4  .System.Windows.Automation.AutomationProperties1   AutomationId2 � Cursor3 �� ScrollableHeight4 � Maximum5 � Minimum*6 �� #ComputedVerticalScrollBarVisibility7 �� ViewportHeight8 �� ViewportSize9 � Value: �� Mode; �� ScrollableWidth< �� Orientation,= �� %ComputedHorizontalScrollBarVisibility> �� ViewportWidth  VerticalScrollBarBackground  ScrollBarDisabledBackground 	 ScrollBarButton 
 VerticalScrollBarPageButton  ScrollBarThumb ! HorizontalScrollBarBackground ! HorizontalScrollBarPageButton? �� LineUpCommand@ J� IsMouseOverA ]�NameB ]� DecreaseRepeatButtonC �� PageUpCommandD ]� IncreaseRepeatButtonE �� PageDownCommandF ]� ThumbG �� LineDownCommandH �� TriggersI �� LineLeftCommandJ �� PageLeftCommandK �� PageRightCommandL �� LineRightCommand  
ListBorder  ButtonMenuListBox�� F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      :x,http://schemas.microsoft.com/winfx/2006/xaml      8d2http://schemas.microsoft.com/expression/blend/2008  Bmc;http://schemas.openxmlformats.org/markup-compatibility/2006  %�  &	        &	 �     &	 �    &	 >    &	 �    &	 �    7  7  7  &	 3
    &	 �    &	 F    &		 Y    &	
 x    &	 '    &	     &	 �    '�� K    7  7 	 7 
 7 
 7  7 	 7  7  7 	 7  7  7  7 	 7  &	 �    &	     7  �� "  ��.���  � �� �� $ 0.5,1&�$ 0.5,0&�.��� $ #DCE7FA��$ 0Q�� $ 	#FF1C7CB1��$ 1Q���  �@��CornerRadius$ 10���� "  ��.���  � ��
 ���� ��  � �� �� *HorizontalContentAlignment+ �� " ����  � �� �� *VerticalContentAlignment+ �� " ����  � ��$ 2,0,0,0q���  � �� �� "	 ��.R�� $��3q�
   CommonStates��   $ 0:0:0.2D�.   
Normal��  	MouseOver��. �� .��U� $ (UIElement.Opacity)�$
 path��.\�  $ 0��$ 1Q��� $2 ,(Border.BorderBrush).(SolidColorBrush.Color)�$ Bd��.g�  $ 0��$ 	#FF818080��U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�$ Bd��.\�  $ 0��$
 1.02Q�U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�$ Bd��.\�  $ 0��$
 1.02Q�  Disabled��  SelectionStates��.   
Unselected��  Selected��  SelectedUnfocused��.+��� $ Bd��$��2q�# z�� . $��0q�$ 8�����	#FFB1B1B1$ 0.5,0.5&�z�V� .~��� �� �� T� ���� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFE9E9E9��$ 0Q�� $ 	#FFC8C8C8��$ 1Q�._��� #��z��# z #��z��F� $
 path��[����W�Q�V@ � �@]� ��a �W�Q�V@@]� �W�Q�V@��� ��R�!#@u^�P(@�W�Q�V@��3 	
���   �$��Right=�$
 Fill=�$��6��$��9��$��0,0,10,0q�$ 0Q���Z� �� $ 8��$ 8����Z� ���� $ 	0.974,0.5&�$ 	0.026,0.5&�.��� $ 	#33000000��$ 0Q�� $ 	#33000000��$ 1Q�� $ 	#00000000��$ 0.523Q� P�   � {�! .  . ��� # � �� � ���� $" LeafNode��# �� *Tag+ �� " ��$$ FindAncestor=�.a��� $
% path�� � y�$ 	Collapsed=��� .���  � �� �� .R��� $��2q� . #��� ��$��1��$	& 1 2R��� $	 0,1&�$	 0,0&�.��� $ #F3F3F3��$ 0Q�� $ #EBEBEB��$	 0.5Q�� $ #DDDDDD��$	 0.5Q�� $ #CDCDCD��$ 1Q��� $' 	#FF707070���� "  ��.���  �@�FocusVisualStyle8   ��  � ��8  ��  � ��8  ��  � ��$ 1q���  � ��# � ����  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � �� �� "	 ��.R��� $ 	0,0,10,10��$��3,0,3,3q�
����������� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FF0B2C62��$ 0Q�� $ 	#FF061F49��$ 1Q�._��� #��z��$��3q�#��z��$ 5��
�������
�������$��1q�._��� ��. # z $
��10,5q� P�   �@J�IsKeyboardFocused! . P�   �@d�	IsChecked$
! trueY�P�   � {�! .  . ���  � �� �#ADADAD�� "	 ��.R�� $
( Grid��#��z��) �� $��* ��� $
��Auto �* �� $��* ��� $
��Auto �.+��� $+ Corner��$��1��#��� ��$��1���� $!, PART_ScrollContentPresenter��#- z��. .  / .  #��z��#��z��$��0��#��z��$��0���� $0 PART_VerticalScrollBar��$1 VerticalScrollBar��$2 Arrow��$��1��#4 z3 $5 0Q�$��0��#y�z6 #8 z7 9 �� *VerticalOffset+$: OneWay=� �� *TemplatedParent+��Z� �� $0 PART_HorizontalScrollBar��$1 HorizontalScrollBar��$2 Arrow��$��0��#4 z; $5 0Q�$< 
Horizontal=�$��1��#y�z= #8 z> 9 �� *HorizontalOffset+$: OneWay=� �� *TemplatedParent+�� $	 1,0&�$	 0,0&�.��� $ #E1E1E1��$ 0Q�� $ #EDEDED��$
 0.20Q�� $ #EDEDED��$
 0.80Q�� $ #E3E3E3��$ 1Q��� $' #F4F4F4���� "  ��.���  �@�OverridesDefaultStyle . ��  � |� .  ��  � �� .  ��  � �� �� "	 ��.R��� ._�A� 
�������$��10��$��10��$��Center=�$��Center=����� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFB6B6B6��$ 0Q�� $ 	#FF666666��$ 1Q��� "  ��.���  �@�OverridesDefaultStyle . ��  � ��
 ���� ��  � |� .  ��  � �� .  ��  � �� �� "	 ��.R��� #��z��#��z��#��z���� "  n�.���  �@�OverridesDefaultStyle . ��  � �� .  ��  � �� �� "	 n�.R��� $ 6��$��2q�
����������� $ 0.5,1&�$ 0.5,0&�.��� $ 	#93919191��$ 0Q�� $ 	#93DEDEDE��$ 1Q��� $	 0,1&�$	 0,0&�.��� $ #E1E1E1��$ 0Q�� $ #EDEDED��$
 0.20Q�� $ #EDEDED��$
 0.80Q�� $ #E3E3E3��$ 1Q��� "  ��.���  �@�OverridesDefaultStyle . ��  � ��
 ���� ��  � |� .  ��  � �� .  ��  � �� �� "	 ��.R��� #��z��#��z��#��z���� "  ��.���  � ��8   ��  �@��IsPressAndHoldEnabled .  ��  �@��IsFlicksEnabled .  ��  � ��# � ����  � ��# � r���  � ��# � r���  � �� �� "	 ��.R�� $( Bg�� . * �� #��� q��� $��0.00001* ��� #��� q�.+��� #��Z? #{�z@ 8�� ]� $A 
PART_Track����. #{�z@ $��1��B �� #��ZC 8�� D �� #��ZE 8�� F n� 8�� �� #��ZG #{�z@ $��2��8��  P�   � {�! .  . ��� $% Bg��8   � ��H P�   �@��Orientation$! 
Horizontal=�. ���  � ��$
 Auto����  � ��$ 0����  � ��# � ����  � ��# � ����  � ��8  ��  � �� �� "	 ��.R�� $( Bg��#��z�� . ) �� #��� ���� $��0.00001* ��� #��� ��.+��� #��ZI #{�z@ 8�� ]� $A 
PART_Track��$��1��#{�z@ B �� #��ZJ 8��	 D �� #��ZK 8��
 F n� 8�� �� $��2��#��ZL #{�z@ 8��  P�   � {�! .  . ��� $% Bg��8   � ���� $' #828790���� "  ��.���  � ��# � ����  � ��8   ��  � ��$ 1q���  � ��# � ����  � ��$
 Auto=���  � ��$
 Auto=���  � �� . ��  �@��PanningMode$
 Both=���  �@��IsFlicksEnabled .  ��  � ��$ Center=���  � �� �� "	 ��.R��� $ Bd��#��z��#��z��#��z��$ 1q� . ._��� |�.  #��z��#���  $	��216��.���� # z  P�   � {�! .  . ��� $% Bd��# � �� � ��P�   �@��
IsGrouping! . . ���  � �� .  