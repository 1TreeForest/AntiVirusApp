   M S B A M L   `   `   `  ����G  CAntiVirusApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:AntiVirusAppAntiVirusApp  5   	   5clr-namespace:AntiVirusApp.DataAntiVirusApp.Data  5   	   !    AntiVirusApp.FolderSelector   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:AntiVirusApp     5   	   6
local_dataclr-namespace:AntiVirusApp.Data     5   	     � WindowStartupLocation$  CenterScreen=�5   /    � Title$ Folder Selector��5   	   $	��400��6!   $	��300��6.    � AllowsTransparency .  � WindowStyle$
 None=�6T    � 	Resources 5
       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $ StylesDictionary.xaml?�6%   %    5      ��5      �� 5   
    �� ImageSource$B </AntiVirusApp;component/Resources/Images/Background/back.jpg��6   .��5      �  � ColumnDefinitions 5   
   �� 5      $
��203* �6   �� 5      $	��43* �6   	 � RowDefinitions	 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5"   
   �� $��3q�6   $��2��6   $��16(�63    请选择您要扫描的文件6M   R� 5$   
   -   5        
 R�Name$
 	tvFolders��5$   .   $��1��6   $
��3, 0q�6    $��Stretch=�6l   
�������$��2��5%   Q   ��5$   A   �� *Items+ �� Mode$ OneWay=���5&      �� 5'       �� 
TargetType" Q�6   .�5(      ��  �� Property �@Q�
IsExpanded �� Value 63   �� *
IsExpanded+$ TwoWay=��� 5)       �@Q�
IsSelected 63   �� *
IsSelected+$ TwoWay=�5*      ��5,      �� 5-       �� DataType    AntiVirusApp.Data.BaseItem"  6+    �� ItemsSource 6S   �� *Items+$ OneWay=�.R�5.      ��  �� Orientation$ 
Horizontal=�6!   $��Stretch=�6:   .+�5/      �� $
��None=�6<   $
��0, 1q�6K   $��Center=�6Y   ��6    �� *
ItemIcon+6Y   �� 50      $��Center=�6:   $
��3, 0q�6U   ��6$   �� *Name+6U   51      52      54      � 56   
   $��2��6   $��3q�6   $��2��6'    57      �� 58      $
��Auto �6#   �� 59      $��* �6#   .+�5<      �� $��Center=�6   $��16(�63   文件路径6G   �� 5=      -   5         ��Name$ tbSelectedFolder��5=      $��1��60   $��
3, 0, 0, 0q�6@    �� 
IsReadOnly . ��6T   ��  �� ElementName$ 	tvFolders�� �� Path$ SelectedItem.Path�$ OneWay=�6�   5>      � 5@   
   $��3��6   $��
3, 0, 3, 3q�6   $��2��60    5A      �� 5B      $��13.997 �6#   �� 5C      $��96.003 �6#   �� 5D      $��* �6#   �� 5E      $
��Auto �6#   �� 5F      $
��Auto �6#   .+�5I      �� -   5         ��Name$ btnNewFolder��5I      $	��110��6,   $��25��68   $y�Hidden=�6D   $��2��6X   .��6l   新建文件夹6s   �� 5J      -   5        $ btnOK��5J         	NaviStyle#���   6$   $��3��6H   $��75��6X   $��25��6c   $
��3, 0q�6o   .��6�   确定6�   �� 5K      -   5        $ btnClose��5K      #���   6'   $��4��6K   $��75��6[   $��25��6f   .��6�   取消6�   5L      5M      5N      