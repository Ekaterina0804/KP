   M S B A M L   `   `   `  ����\  XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35`Dclr-namespace:System.Windows.Controls;assembly=PresentationFrameworkSystem.Windows.Controls  5      U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35qGclr-namespace:Microsoft.Windows.Controls.Primitives;assembly=WPFToolkit%Microsoft.Windows.Controls.Primitives 5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089 "  Brush_DataGridHeaderBackground  �� 
StartPoint �� EndPoint � Color � Offset + 'Brush_DataGridHeaderMouseOverBackground  Brush_DataGridHeaderBorder $  Brush_DataGridHeaderSortedBorder ( $Brush_DataGridHeaderSortedBackground  Brush_DataGridSelected $  Brush_DataGridSelectedForeground �� Color " Brush_DataGridAltRowBackground  Style_HeaderGripper �� 
TargetType �� Property �� Value �� 
TargetType	 �� Padding=    7System.Windows.Controls.Primitives.DataGridColumnHeader
 � ColumnDefinitions ��Name F�Name �� Stretch J� RenderTransformOrigin n�Name �� Triggers P� Value P� Property �� 
TargetName �� Angle*   $System.Windows.Controls.DataGridCell �Name ��Name J� Opacity J� IsHitTestVisible � Cursor)   #System.Windows.Controls.DataGridRow J� SnapsToDevicePixels?   9System.Windows.Controls.Primitives.SelectiveScrollingGrid  Name � RowDefinitions?   9System.Windows.Controls.Primitives.DataGridCellsPresenter  Name   
ItemsPanel:   4System.Windows.Controls.Primitives.DataGridRowHeader  Name$    SelectiveScrollingOrientation! �� RelativeSource" �� AncestorType&    System.Windows.Controls.DataGrid# �� Path!$   HeadersVisibilityConverter% �� 	Converter7   1System.Windows.Controls.DataGridHeadersVisibility
&   Row' �� ConverterParameterA   ;System.Windows.Controls.Primitives.DataGridDetailsPresenter(  Name 	 
BlueWindow)   SelectAllCommand* � OverridesDefaultStyleG	   ASystem.Windows.Controls.Primitives.DataGridColumnHeadersPresenter+   Column, �� CanContentScroll- �� Orientation. �� ScrollableHeight/ � Maximum0 �� ViewportHeight1 �� ViewportSize*2 �� #ComputedVerticalScrollBarVisibility3 � Value4 �� Mode5 �� ScrollableWidth6 �� ViewportWidth,7 �� %ComputedHorizontalScrollBarVisibility8 �� Triggers 
 DefaultControlBorderBrush ! DefaultControlBackgroundBrush ! DefaultControlForegroundBrush  GridLineColorBrush  AlternateRowBackgroundBrush  HeaderBorderBrush  HeaderInnerBorderBrush  HeaderBackgroundBrush # HeaderHighlightedBackgoundBrush   HeaderPressedBackgroundBrush  GroubHeaderBackgroundBrush  bool2VisibilityConverter ! ColumnHeaderRightGripperStyle   ColumnHeaderLeftGripperStyle9 �� BasedOn: �� EdgeMode	; �� X1	< �� X2	= �� Y2	> �� Y1? �� ElementName  ColumnHeaderStyle@
  :Microsoft.Windows.Controls.Primitives.DataGridColumnHeader5  /Microsoft.Windows.Controls.DataGridHeaderBorder@  NameA 
  SortDirectionB   SortDirectionC J� IsMouseOverD   	IsHoveredE   	IsPressedF 
  CanUserSortG   IsClickableH 
  SeparatorVisibilityI   SeparatorVisibilityJ 
  SeparatorBrushK   SeparatorBrush  RowHeaderGripperStyle=  7Microsoft.Windows.Controls.Primitives.DataGridRowHeaderL   IsRowSelectedM   
IsSelectedN   OrientationO   SeparatorVisibilityP   SeparatorBrushQ �� Orientation,  &Microsoft.Windows.Controls.DataGridRow  LeftAlignedCellStyle-  'Microsoft.Windows.Controls.DataGridCell  RightAlignedCellStyle  CenterAlignedCellStyle  SelectAllButtonTemplateR �NameS � Points)  #Microsoft.Windows.Controls.DataGridT   SelectAllCommand!U   HeadersVisibilityConverter:  4Microsoft.Windows.Controls.DataGridHeadersVisibility
V   AllJ  DMicrosoft.Windows.Controls.Primitives.DataGridColumnHeadersPresenterW   ColumnX ��Name�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      :x,http://schemas.microsoft.com/winfx/2006/xaml      5      QcontrolsDclr-namespace:System.Windows.Controls;assembly=PresentationFramework  5      >
WpfToolkit-http://schemas.microsoft.com/wpf/2008/toolkit  5      V
PrimitivesGclr-namespace:Microsoft.Windows.Controls.Primitives;assembly=WPFToolkit  5      %�>  &	        &	 �     &	 0    &	 �    &	 \    &	 �    &	 {    &	 �    &	 <    '   N    7  7  7  7  7  7  '      '  �    7  '  )    7  7   7  7   7  &	
 7    &	 Z    &	 }    &	 �    &	 �    &	 c    &	 �    &	 �    &	 E     &	 �     &	 u!    &	 �!    &	 �!    &	 �"    7  &	 �$    7  7  7  7  7  7  7  &	 1)    '  G*    7  7  7  7  7  7  7  7  &	 �.    &	 �/    &	 T0    &	 $1    7  7  7  7  '  �3    7  7  7 
 7  7  7  7  7  �� 5      $	  0,0&�6A   $	 0,1&�6R   .��5   
   � $ 	#FF1C7CB1��6   $ 0Q�6)   � 5   
   $ 	#FF1C7CB1��6   $ 1Q�6)   5      �� 5      $	  0,0&�6J   $	 0,1&�6[   .��5   
   � $ 	#FF1C7CAF��6   $ 0Q�6)   � 5   
   $ 	#FF042A68��6   $ 1Q�6)   5      �� 5      $	  0,0&�6=   $	 0,1&�6N   .��5   
   � $ 	#FF1B577E��6   $ 0Q�6)   � 5   
   $ 	#FF083258��6   $ 1Q�6)   5      �� 5      $	  0,0&�6C   $	 0,1&�6T   .��5   
   � $ #014AE8��6   $ 0Q�6'   � 5   
   $ #2C65E1��6   $ 1Q�6'   5      �� 5      $	  0,0&�6G   $	 0,1&�6X   .��5    
   � $ #0883C5��6   $ 0Q�6'   � 5!   
   $ #3484AF��6   $ 1Q�6'   5"      �� 5$      $ 0.5,1&�69   $  0.5,0&�6J   .��5%   
   � $ #ABD0E8��6   $ 1Q�6'   � 5&   
   $ #719FBD��6   5'      �� 5)      $ #FFFFFF��6?   �� 5+      $ 0.5,1&�6A   $  0.5,0&�6R   .��5,   
   � $ 	#FFE1FFEE��6   $ 0Q�6)   � 5-   
   $ 	#FFC3F9DA��6   $ 0.992Q�6)   5.      �� 50      " n�6(   .�51   
   ��  � ��$ 8��6"   �� 52   
    � ��
 ���� 6'   �� 53   
    �@�Cursor$ SizeWE��6#   �� 54   
    � �� 55      �� 56      " n�6"   .R�57      �� #	 z��6   #��z��6A   58      5:      5;      �� 5=      "   6   .�5>   
   ��  �@J�SnapsToDevicePixels . 60   �� 5?   
    � ��$ 0��6%   �� 5@   
    � ��$ 28��6&   �� 5A   
    � ��
 �����6'   �� 5B   
    � ��$
 Bold"�6'   �� 5C   
    � ��$ 12(�6%   �� 5D   
    �@�Cursor$
 Hand��6#   �� 5E   
    � ��$ -2 0 2 0q�6#   �� 5F   
    � �� 5G      �� 5H      "   6"   .R�5I      � 
 5J      �� 5K      $��* �6/   �� 5L      $
��Auto �6/   .+�5N      �� $ BackgroundBorder��6!   $��0,1,0,1q�6;   8��  8�� $��2��6�   �� 5O      $��6,3,6,3q�6+   $��Center=�6<   $��Center=�6W   F� 5P      $ 	SortArrow��6   $y�	Collapsed=�62   "����        �@B     � � @B 	$
 Fill=�6b   $��1��6q   $��8��6�   $��6��6�   
�������$��0,0,8,0q�6�   $��Center=�6�   $ 0.5,0.4&�6�   �� 5Q      $��1��6$   
���   �$��Right=�6;   $��2��6W   n� 5R      $ PART_LeftHeaderGripper��6    $
��Left=�6@   8�� 6[   n� 5S      $ PART_RightHeaderGripper��6    $��Right=�6A   8�� 6]   5T       5U      P� 5V       6;   Z�  �@  SortDirection. �5W      �� $ BackgroundBorder��6%    � ��
 ���� 6Y   �� 5X      $ BackgroundBorder��6%    � ��
 ���� 6[   5Y      P� 5Z       �@J�IsMouseOver . . �5[      �� $ BackgroundBorder��6%   8   � ��6Y   �� 5\      $ BackgroundBorder��6%   8   � ��6Z   5]      P� 5^       �@  SortDirection$ 	AscendingX�6;   . �5_      �� $ 	SortArrow��6%    � y�$ Visible=�6R   �� 5`      $ 	SortArrow��6%    � z� 5a   "   �� 5b   &   $	 180Q�66   5d      5e      P� 5f       �@  SortDirection$ 
DescendingX�6;   . �5g      �� $ 	SortArrow��6%    � y�$ Visible=�6R   5h      P� 5i       �@  DisplayIndex$ 0��6:   . �5j      �� $ PART_LeftHeaderGripper��6M    � y�$ 	Collapsed=�6;   6s   5k      5m      5o      5p      �� 5s      "  6   .�5t   
   ��  � ��$
 Auto��6#   �� 5u   
    � ��$ Stretch=�67   �� 5v   
    � ��$ Stretch=�65   �� 5w   
    � ��$ 2 4 2 4q�6$   �� 5x   
    � �� 5y      �� 5z      "  6"   .R�5{      � $
 Root��6   
������ 
 5|      �� 5}      $��* �6/   �� 5~      $
��Auto �6/   .+�5�      �� $ FocusVisual��6$   $��0,-2,0,0q�69   ���	#FF000000���	#FFFFFFFF$ 0Q�5�   $    .  60   �� 5�      #��z��6+   #��z��6N   #��z��6�   #��z��6�   #��z��6�   # z 6(  �� 5�      $ RightGridLine��6$   $��Stretch=�6;   $��1��6W   $��1��6a   5�      5�      5�      5�      �� 5�      "  6)   .�5�   
   ��  � ��# � ��6'   �� 5�   
    �@J�SnapsToDevicePixels . 60   �� 5�   
    � �� 5�      �� 5�      "  6"   .R�5�      �� $ 
DGR_Border��6   #��z��5�      #��z��5�      #��z��5�       . ._�5�        $ selectiveScrollingGrid��61   
 5�      �� 5�   "   $
��Auto �63   �� 5�   "   $��* �63    5�      �� 5�   "   $
��Auto �60   �� 5�   "   $
��Auto �60   .+�5�        $ dataGridCellsPresenter��65   $��1��5�   5   #��z 5�   5   # z 5�   5     5�      $ dataGridRowHeader��60   $  Vertical=�5�   0   $��2��5�   0   y�5�   0   �� ! �� ""  $# HeadersVisibility�#% Z$ #' Z& � 5�      $��Details��6@   $��1��6#   $��1��63   $y�	Collapsed=�6O   
�������.+�5�   "     $( dataGridDetailsPresenter��6;   5�      5�      5�       5�      P� 5�       �@J�IsMouseOver . . �5�      �� $ 
DGR_Border��6;   # � 	 6S    � ���� 5�      $ dataGridCellsPresenter��6;    � �� �	#FF1044846_   �� 5�      $ dataGridRowHeader��6;    � ��
 �   �6Z   �� 5�      $ dataGridRowHeader��69    � ��$ 11(�6X   5�      P� 5�       �@ 
IsSelected . . �5�      �� $ 
DGR_Border��6%   8    � ��6_   �� 5�      $ dataGridDetailsPresenter��6;    � y�$ Hidden=�6a   �� 5�      $ dataGridCellsPresenter��69    � ��$ 11(�6]   �� 5�      $ dataGridCellsPresenter��6;    � ��$
 Bold"�6_   �� 5�      $ 
DGR_Border��6;   # �  6S    � ��5�      5�      5�      5�      �� 5�      "  6&   .�5�   
   ��  � �� . 6:   �� 5�   
    �@J�SnapsToDevicePixels . 60   �� 5�   
     �@ AlternatingRowBackground8   65   �� 5�   
    � �� 5�      �� 5�      "  6"   .R�5�      �� #��z��6   ._�5�      �� $��DG_ScrollViewer��69   |�.  ��5�      �� 5�   "   " ��62   .R�5�   &   �  5�   *   �� 5�   .   $
��Auto �6<   �� 5�   .   $��* �6<   �� 5�   .   $
��Auto �6<   
 5�   *   �� 5�   .   $
��Auto �6?   �� 5�   .   $��* �6?   �� 5�   .   $
��Auto �6?   .+�5�   *   �� $��3��61   8�� 8�� $	��0,1q�6�   �� 5�   *   #��Z) 61   |�.  * . ��5�   1   �� ! �� ""  $# RowHeaderActualWidth���5�   .   �� 5�   2   " ��6B   .R�5�   6   � .+�5�   :   �� 8�� 8�� $	��0,1q�6�   ._�5�   >   F� $ Arrow��6C   $��Bottom=�6R   $��4q�6m   ���#3000$��11��6�   $��11��6�   $
 Fill=�6�   "����@B     �@B @B �    @B 	6�   5�   ;   �� 5�   :   $��1��6D   
���   �$��Right=�6[   5�   7   5�   3   5�   +   	  5�   *   $��1��6I   y�5�   I   �� ! �� ""  $# HeadersVisibility�#% Z$ #' Z+ �� 5�   *   $��1��6A   $��2��6N   #, z��6b   �� 5�   *   $��PART_VerticalScrollBar��64   $��1��5�   4   $��2��6A   $- Vertical=�5�   4   #/ z. 5�   4   #1 z0 5�   4   #y�z2 5�   4   3 5�   4   �� $# VerticalOffset�! �� *TemplatedParent+$4 OneWay=�5�   4   � 5�   *   $��2��6/   $��1��6<   
 5�   .   �� 5�   2   ��6C   �� ! �� ""  $.# (NonFrozenColumnsViewportHorizontalOffset��� 5�   2   $��* �6C   .+�5�   .   �� $��PART_HorizontalScrollBar��68   $��1��5�   8   $- 
Horizontal=�5�   8   #/ z5 5�   8   #1 z6 5�   8   #y�z7 5�   8   3 5�   8   �� $# HorizontalOffset�! �� *TemplatedParent+$4 OneWay=�5�   8   5�   +   5   '   5  #   .��5     �� # z 6-   5     5     5     5     8 5	  
   P� 5
      �@��
IsGrouping . . �5     ��  � �� .  6B   5     5     �� 5     $ 	#FF688CAF��68   �� 5     $ 	#FFE3F1FE��6<   �� 5     $ 	#FF10257F��6<   �� 5     $ 	#FFCEDFF6��61   �� 5     $  0.5,0.0&�6>   $ 0.5,1.0&�6S   .��5  
   � $ 	#FFFEFEFF��6   $ 0Q�6)   � 5  
   $ 	#FFE4F0FC��6   $ 1Q�6)   5     �� 5"     $ #88B0E4��60   �� 5#     $ #FFFFFF��65   �� 5$     $  0.5,0.0&�68   $ 0.5,1.0&�6M   .��5%  
   � $ 	#FF98BFEB��6   $ 0Q�6)   � 5&  
   $ 	#FFB8D4F2��6   $ 1Q�6)   5'     �� 5(     $	  0,0&�6B   $	 0,1&�6S   .��5)  
   � $ 	#FFA3CBF7��6   $ 0Q�6)   � 5*  
   $ 	#FFD9E6F9��6   $ 1Q�6)   5+     �� 5,     $	  0,0&�6?   $	 0,1&�6P   .��5-  
   � $ 	#FFA3CBF7��6   $ 1Q�6)   � 5.  
   $ 	#FFD9E6F9��6   $ 0Q�6)   5/     �� 52     $ 	#FFB9D1EA��69   �� 56     6#   �� 59     " n�62   .�5:  
   ��  � ��$ 8��6"   �� 5;  
    � ��
 ���� 6'   �� 5<  
    �@�Cursor$ SizeWE��6#   �� 5=  
    � �� 5>     �� 5?     " n�6"   .R�5@     �� #	 z��6   #��z��5A     5B     5C     5E     5F     �� 5H     89   " n�5J     .�5K  
   ��  � ��$ 8��6"   �� 5L  
    � ��
 ���� 6'   �� 5M  
    �@�Cursor$ SizeWE��6#   �� 5N  
    � �� 5O     �� 5P     " n�6"   .R�5Q     �� $��Border��6   #	 z��5R     #��z��5S     ._�5T     �� .+�5U     �� $: Aliased=�6#   ���#88B0E4$; 7��5V     $< 7��5W     $= 0��6   > 5V     �� $? Border��$# ActualHeight�5W     5X     5Y     5Z     5\     5]     �� 5_     " 
 6&   .�5`  
   ��  � ��$ Center=�65   �� 5a  
    � ��$ Center=�67   �� 5b  
    � ��$
 Bold"�6'   �� 5c  
    � ��8   6'   �� 5d  
    � ��8  6(   �� 5e  
    � ��$ 0,1,0,1q�6,   �� 5f  
    � �� 5g     �� 5h     " 
 6"   .R�5i     � .+�5j       $@ headerBorder��5k     #B zA 5l     #D zC 5m     #E z��5n     #G zF 5o     #��z��5p     #��z��5q     #��z��5r     #	 z��5s     #I zH 5t     #K zJ 5u     ._�5v     �� 8�� $��0,1,0,0q�5w  
   ._�5x  "   �� $��4,0,4,0q�5y     # z 5z  
   #��z��5{  
   #��z��5|  
   ��5y  
   �� 5|  
   5}     5~     n� 5�     $ PART_LeftHeaderGripper��6    $
��Left=�5�     8�� 5�     n� 5�     $ PART_RightHeaderGripper��6    $��Right=�5�     8�� 5�     5�      5�     P� 5�      �@J�IsMouseOver . . �5�     �� $ headerBorder��6%   8   � ��5�  
   5�     P� 5�      � �� . . �5�     �� $ headerBorder��6%   8   � ��5�  
   5�     5�     5�     5�     �� 5�     " n�6*   .�5�  
   ��  � ��$ 8��6#   �� 5�  
    � ��
 ���� 6'   �� 5�  
    �@�Cursor$ SizeNS��6#   �� 5�  
    � �� 5�     �� 5�     " n�6"   .R�5�     �� #	 z��6   #��z��5�     5�     5�     5�     �� 5�     "  5�     .�5�  
   ��  � ��8   6'   �� 5�  
    � ��8  6(   �� 5�  
    � �� 5�     �� 5�     "  6"   .R�5�     � .+�5�       $@ headerBorder��5�     #M zL 5�     #D zC 5�     #E z��5�     #��z��5�     #��z��5�     $��1,0,1,1q�5�     #	 z��5�     $N 
Horizontal=�5�     #I zO 5�     #K zP 5�     ._�5�     �� 8�� $��0,1,0,0q�5�  
   ._�5�  "   �� $Q 
Horizontal=�6-   .+�5�  &   �� # z 5�     $��Center=�5�     �� 5�  &    .  y�5�     �� ! �� ""  $# (Validation.HasError)�8%  ��5�     �� ! �� ""  $# ValidationErrorTemplate�5�  #   5�     5�     n� 5�     $ PART_TopHeaderGripper��6    $	��Top=�5�     8�� 5�     n� 5�     $ PART_BottomHeaderGripper��6    $��Bottom=�5�     8�� 5�     5�      5�     P� 5�      �@J�IsMouseOver . . �5�     �� $ headerBorder��6%   8   � ��5�  
   5�     P� 5�      � �� . . �5�     �� $ headerBorder��6%   8   � ��5�  
   5�     5�     5�     5�     �� 5�     "  6)   .�5�  
   ��  � �� 5�     �� 5�     "  6"   .R�5�     � #��z��6   .+�5�     �� $
��Left=�6+   $��Center=�5�  +   5�     5�     5�     5�     �� 5�     "  6*   .�5�  
   ��  � �� 5�     �� 5�     "  6"   .R�5�     � #��z��6   .+�5�     �� $��Right=�6+   $��Center=�5�  +   5�     5�     5�     5�     �� 5�     "  6+   .�5�  
   ��  � �� 5�     �� 5�     "  6"   .R�5�     � #��z��6   .+�5�     �� $��Center=�6+   $��Center=�5�  +   5�     5      5     5     �� 5     " ��66   .R�5  
   � .+�5     �� $ Border��6    . 8��  8�� 5
  	   �� 5      . $��1,1,1,0q�60   
�������$��0,1,0,0q�5     � 5     $R Arrow��6   $��Right=�5     $��Bottom=�5     $��8,8,3,3q�5     $
 0.15Q�5     
���   �$ Uniform=�5     S �   ��� ��� ��� ��� 5     5      5  
   P� 5      �@J�IsMouseOver . . �5     �� $ Border��6   8   � ��5     5     P� 5      � �� . . �5     �� $ Border��6   8   � ��5     5     P� 5      � {� .  . �5      �� $ Arrow��6    � y�$ 	Collapsed=�6B   5!     5#     �� 5%     "  61   .�5&  
   ��  � ��8   6'   �� 5'  
    � ��8  6'   �� 5(  
    � ��8  6(   �� 5)  
     �@ HorizontalGridLinesBrush8  65   �� 5*  
    �@ VerticalGridLinesBrush8  63   �� 5+  
     �@ AlternatingRowBackground8  65   �� 5,  
    �@ ColumnHeaderStyle8  6.   �� 5-  
    � ��$ 1q�6,   �� 5/  
     �@ RowDetailsVisibilityMode$ VisibleWhenSelected=�65   �� 50  
    � �� . 6:   �� 51  
    � �� 52     �� 53     "  6"   .R�54     �� #��z��55     #��z��56     #��z��57      . #	 z��59     ._�5:     �� $��DG_ScrollViewer��69   |�.  ��5;     �� 5<  "   " ��62   .R�5=  &   �  5>  *   �� 5?  .   $
��Auto �6<   �� 5@  .   $��* �6<   �� 5A  .   $
��Auto �6<   
 5D  *   �� 5E  .   $
��Auto �6?   �� 5F  .   $��* �6?   �� 5G  .   $
��Auto �6?   .+�5K  *   �� $��0,0,0,0q�61   #��ZT 5L     |�.  8�� ��5M     �� ! �� ""  $ # CellsPanelHorizontalOffset�y�5O     �� ! �� ""  $# HeadersVisibility�#% ZU #' ZV 5P       5R  *   $!��PART_ColumnHeadersPresenter��5T     $��1��5S     y�5U     �� ! �� ""  $# HeadersVisibility�#% ZU #' ZW �� 5X  *   $!X PART_ScrollContentPresenter��6A   $��1��6f   $��2��6s   #, z��6�   �� 5Z  *   $��PART_VerticalScrollBar��5[  :   $��0��6   $��2��6   $��2��6*   $- Vertical=�5\     #/ z. 5]     #1 z0 5^     #y�z2 5`     3 5_     �� $# VerticalOffset�! �� *TemplatedParent+$4 OneWay=�5`     � 5b  *   $��2��6/   $��1��6<   
 5c  .   �� 5d  2   ��6C   �� ! �� ""  $.# (NonFrozenColumnsViewportHorizontalOffset��� 5e  2   $��* �6C   .+�5g  .   �� $��PART_HorizontalScrollBar��5i     $��1��5h     $- 
Horizontal=�5j     #/ z5 5k     #1 z6 5l     #y�z7 5n     3 5m     �� $# HorizontalOffset�! �� *TemplatedParent+$4 OneWay=�5n     5o  +   5p  '   5q  #   .��5s     �� # z 6-   5t     5u     5v     5x     8 5y  
   P� 5z      �@��
IsGrouping . . �5{     ��  � �� .  6B   5|     5~     5�     