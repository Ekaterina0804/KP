   M S B A M L   `   `   `  ���� \  XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35`Dclr-namespace:System.Windows.Controls;assembly=PresentationFrameworkSystem.Windows.Controls  U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35qGclr-namespace:Microsoft.Windows.Controls.Primitives;assembly=WPFToolkit%Microsoft.Windows.Controls.Primitives R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089 "  Brush_DataGridHeaderBackground  �� 
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
V   AllJ  DMicrosoft.Windows.Controls.Primitives.DataGridColumnHeadersPresenterW   ColumnX ��Name�� F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      :x,http://schemas.microsoft.com/winfx/2006/xaml      QcontrolsDclr-namespace:System.Windows.Controls;assembly=PresentationFramework  >
WpfToolkit-http://schemas.microsoft.com/wpf/2008/toolkit  V
PrimitivesGclr-namespace:Microsoft.Windows.Controls.Primitives;assembly=WPFToolkit  %s%  &	        &	 V     &	 �     &	     &	 T    &	 �    &	 �    &	     &	 e    '   �    7  7  7  7  7  7  '  �    '  �	    7  '  �    7  7   7  7   7  &	
 [    &	 p    &	 �    &	 �    &	 �    &	     &	      &	 3    &	 �    &	 �    &	 =    &	 R    &	 W    &	 �    7  &	 �    7  7  7  7  7  7  7  &	 H    '  �    7  7  7  7  7  7  7  7  &	 Q    &	 �    &	      &	 Y    7  7  7  7  '  �    7  7  7 
 7  7  7  7  7  �� $	  0,0&�$	 0,1&�.��� $ 	#FF1C7CB1��$ 0Q�� $ 	#FF1C7CB1��$ 1Q��� $	  0,0&�$	 0,1&�.��� $ 	#FF1C7CAF��$ 0Q�� $ 	#FF042A68��$ 1Q��� $	  0,0&�$	 0,1&�.��� $ 	#FF1B577E��$ 0Q�� $ 	#FF083258��$ 1Q��� $	  0,0&�$	 0,1&�.��� $ #014AE8��$ 0Q�� $ #2C65E1��$ 1Q��� $	  0,0&�$	 0,1&�.��� $ #0883C5��$ 0Q�� $ #3484AF��$ 1Q��� $ 0.5,1&�$  0.5,0&�.��� $ #ABD0E8��$ 1Q�� $ #719FBD���� $ #FFFFFF���� $ 0.5,1&�$  0.5,0&�.��� $ 	#FFE1FFEE��$ 0Q�� $ 	#FFC3F9DA��$ 0.992Q��� " n�.���  � ��$ 8����  � ��
 ���� ��  �@�Cursor$ SizeWE����  � �� �� " n�.R��� #	 z��#��z���� "   .���  �@J�SnapsToDevicePixels . ��  � ��$ 0����  � ��$ 28����  � ��
 �������  � ��$
 Bold"���  � ��$ 12(���  �@�Cursor$
 Hand����  � ��$ -2 0 2 0q���  � �� �� "   .R�� 
 �� $��* ��� $
��Auto �.+��� $ BackgroundBorder��$��0,1,0,1q�8��  8�� $��2���� $��6,3,6,3q�$��Center=�$��Center=�F� $ 	SortArrow��$y�	Collapsed=�"����        �@B     � � @B 	$
 Fill=�$��1��$��8��$��6��
�������$��0,0,8,0q�$��Center=�$ 0.5,0.4&��� $��1��
���   �$��Right=�$��2��n� $ PART_LeftHeaderGripper��$
��Left=�8�� n� $ PART_RightHeaderGripper��$��Right=�8��  P�  Z�  �@  SortDirection. ��� $ BackgroundBorder�� � ��
 ���� �� $ BackgroundBorder�� � ��
 ���� P�  �@J�IsMouseOver . . ��� $ BackgroundBorder��8   � ���� $ BackgroundBorder��8   � ��P�  �@  SortDirection$ 	AscendingX�. ��� $ 	SortArrow�� � y�$ Visible=��� $ 	SortArrow�� � z� �� $	 180Q�P�  �@  SortDirection$ 
DescendingX�. ��� $ 	SortArrow�� � y�$ Visible=�P�  �@  DisplayIndex$ 0��. ��� $ PART_LeftHeaderGripper�� � y�$ 	Collapsed=��� "  .���  � ��$
 Auto����  � ��$ Stretch=���  � ��$ Stretch=���  � ��$ 2 4 2 4q���  � �� �� "  .R�� $
 Root��
������ 
 �� $��* ��� $
��Auto �.+��� $ FocusVisual��$��0,-2,0,0q����	#FF000000���	#FFFFFFFF$ 0Q� .  �� #��z��#��z��#��z��#��z��#��z��# z �� $ RightGridLine��$��Stretch=�$��1��$��1���� "  .���  � ��# � ����  �@J�SnapsToDevicePixels . ��  � �� �� "  .R��� $ 
DGR_Border��#��z��#��z��#��z�� . ._�  $ selectiveScrollingGrid��
 �� $
��Auto ��� $��* � �� $
��Auto ��� $
��Auto �.+�  $ dataGridCellsPresenter��$��1��#��z # z   $ dataGridRowHeader��$  Vertical=�$��2��y��� ! �� ""  $# HeadersVisibility�#% Z$ #' Z& � $��Details��$��1��$��1��$y�	Collapsed=�
�������.+�  $( dataGridDetailsPresenter�� P�  �@J�IsMouseOver . . ��� $ 
DGR_Border��# � 	  � ���� $ dataGridCellsPresenter�� � �� �	#FF104484�� $ dataGridRowHeader�� � ��
 �   ��� $ dataGridRowHeader�� � ��$ 11(�P�  �@ 
IsSelected . . ��� $ 
DGR_Border��8    � ���� $ dataGridDetailsPresenter�� � y�$ Hidden=��� $ dataGridCellsPresenter�� � ��$ 11(��� $ dataGridCellsPresenter�� � ��$
 Bold"��� $ 
DGR_Border��# �   � ���� "  .���  � �� . ��  �@J�SnapsToDevicePixels . ��   �@ AlternatingRowBackground8   ��  � �� �� "  .R��� #��z��._��� $��DG_ScrollViewer��|�.  ���� " ��.R��  �� $
��Auto ��� $��* ��� $
��Auto �
 �� $
��Auto ��� $��* ��� $
��Auto �.+��� $��3��8�� 8�� $	��0,1q��� #��Z) |�.  * . ���� ! �� ""  $# RowHeaderActualWidth����� " ��.R�� .+��� 8�� 8�� $	��0,1q�._�F� $ Arrow��$��Bottom=�$��4q����#3000$��11��$��11��$
 Fill=�"����@B     �@B @B �    @B 	�� $��1��
���   �$��Right=�	  $��1��y��� ! �� ""  $# HeadersVisibility�#% Z$ #' Z+ �� $��1��$��2��#, z���� $��PART_VerticalScrollBar��$��1��$��2��$- Vertical=�#/ z. #1 z0 #y�z2 3 �� $# VerticalOffset�! �� *TemplatedParent+$4 OneWay=�� $��2��$��1��
 �� ���� ! �� ""  $.# (NonFrozenColumnsViewportHorizontalOffset��� $��* �.+��� $��PART_HorizontalScrollBar��$��1��$- 
Horizontal=�#/ z5 #1 z6 #y�z7 3 �� $# HorizontalOffset�! �� *TemplatedParent+$4 OneWay=�.���� # z 8 P�  �@��
IsGrouping . . ���  � �� .  �� $ 	#FF688CAF���� $ 	#FFE3F1FE���� $ 	#FF10257F���� $ 	#FFCEDFF6���� $  0.5,0.0&�$ 0.5,1.0&�.��� $ 	#FFFEFEFF��$ 0Q�� $ 	#FFE4F0FC��$ 1Q��� $ #88B0E4���� $ #FFFFFF���� $  0.5,0.0&�$ 0.5,1.0&�.��� $ 	#FF98BFEB��$ 0Q�� $ 	#FFB8D4F2��$ 1Q��� $	  0,0&�$	 0,1&�.��� $ 	#FFA3CBF7��$ 0Q�� $ 	#FFD9E6F9��$ 1Q��� $	  0,0&�$	 0,1&�.��� $ 	#FFA3CBF7��$ 1Q�� $ 	#FFD9E6F9��$ 0Q��� $ 	#FFB9D1EA���� �� " n�.���  � ��$ 8����  � ��
 ���� ��  �@�Cursor$ SizeWE����  � �� �� " n�.R��� #	 z��#��z���� 89   " n�.���  � ��$ 8����  � ��
 ���� ��  �@�Cursor$ SizeWE����  � �� �� " n�.R��� $��Border��#	 z��#��z��._��� .+��� $: Aliased=����#88B0E4$; 7��$< 7��$= 0��> �� $? Border��$# ActualHeight��� " 
 .���  � ��$ Center=���  � ��$ Center=���  � ��$
 Bold"���  � ��8   ��  � ��8  ��  � ��$ 0,1,0,1q���  � �� �� " 
 .R�� .+�  $@ headerBorder��#B zA #D zC #E z��#G zF #��z��#��z��#��z��#	 z��#I zH #K zJ ._��� 8�� $��0,1,0,0q�._��� $��4,0,4,0q�# z #��z��#��z������ n� $ PART_LeftHeaderGripper��$
��Left=�8�� n� $ PART_RightHeaderGripper��$��Right=�8��  P�  �@J�IsMouseOver . . ��� $ headerBorder��8   � ��P�  � �� . . ��� $ headerBorder��8   � ���� " n�.���  � ��$ 8����  � ��
 ���� ��  �@�Cursor$ SizeNS����  � �� �� " n�.R��� #	 z��#��z���� "  .���  � ��8   ��  � ��8  ��  � �� �� "  .R�� .+�  $@ headerBorder��#M zL #D zC #E z��#��z��#��z��$��1,0,1,1q�#	 z��$N 
Horizontal=�#I zO #K zP ._��� 8�� $��0,1,0,0q�._��� $Q 
Horizontal=�.+��� # z $��Center=���  .  y��� ! �� ""  $# (Validation.HasError)�8%  ���� ! �� ""  $# ValidationErrorTemplate�n� $ PART_TopHeaderGripper��$	��Top=�8�� n� $ PART_BottomHeaderGripper��$��Bottom=�8��  P�  �@J�IsMouseOver . . ��� $ headerBorder��8   � ��P�  � �� . . ��� $ headerBorder��8   � ���� "  .���  � �� �� "  .R�� #��z��.+��� $
��Left=�$��Center=��� "  .���  � �� �� "  .R�� #��z��.+��� $��Right=�$��Center=��� "  .���  � �� �� "  .R�� #��z��.+��� $��Center=�$��Center=��� " ��.R�� .+��� $ Border�� . 8��  8�� ��  . $��1,1,1,0q�
�������$��0,1,0,0q�� $R Arrow��$��Right=�$��Bottom=�$��8,8,3,3q�$
 0.15Q�
���   �$ Uniform=�S �   ��� ��� ��� ���  P�  �@J�IsMouseOver . . ��� $ Border��8   � ��P�  � �� . . ��� $ Border��8   � ��P�  � {� .  . ��� $ Arrow�� � y�$ 	Collapsed=��� "  .���  � ��8   ��  � ��8  ��  � ��8  ��   �@ HorizontalGridLinesBrush8  ��  �@ VerticalGridLinesBrush8  ��   �@ AlternatingRowBackground8  ��  �@ ColumnHeaderStyle8  ��  � ��$ 1q���   �@ RowDetailsVisibilityMode$ VisibleWhenSelected=���  � �� . ��  � �� �� "  .R��� #��z��#��z��#��z�� . #	 z��._��� $��DG_ScrollViewer��|�.  ���� " ��.R��  �� $
��Auto ��� $��* ��� $
��Auto �
 �� $
��Auto ��� $��* ��� $
��Auto �.+��� $��0,0,0,0q�#��ZT |�.  8�� ���� ! �� ""  $ # CellsPanelHorizontalOffset�y��� ! �� ""  $# HeadersVisibility�#% ZU #' ZV   $!��PART_ColumnHeadersPresenter��$��1��y��� ! �� ""  $# HeadersVisibility�#% ZU #' ZW �� $!X PART_ScrollContentPresenter��$��1��$��2��#, z���� $��PART_VerticalScrollBar��$��0��$��2��$��2��$- Vertical=�#/ z. #1 z0 #y�z2 3 �� $# VerticalOffset�! �� *TemplatedParent+$4 OneWay=�� $��2��$��1��
 �� ���� ! �� ""  $.# (NonFrozenColumnsViewportHorizontalOffset��� $��* �.+��� $��PART_HorizontalScrollBar��$��1��$- 
Horizontal=�#/ z5 #1 z6 #y�z7 3 �� $# HorizontalOffset�! �� *TemplatedParent+$4 OneWay=�.���� # z 8 P�  �@��
IsGrouping . . ���  � �� .  