   M S B A M L   `   `   `  ����G  CAntiVirusApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:AntiVirusAppAntiVirusApp  5   	       AntiVirusApp.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:AntiVirusApp     5   	     � 
ResizeMode$  CanMinimize=�5   	    � WindowStartupLocation$ CenterScreen=�6"    � Title$ 杀软名称��5   	   $	��550��6   $	��900��6#    � Icon$- 'Resources/Images/UIs/medicine-chest.png��6/    � AllowsTransparency .  � WindowStyle$
 None=�6x   ��5
      �� 5   
    �� ImageSource$B </AntiVirusApp;component/Resources/Images/Background/back.jpg��6   .��5      ]� $
��auto��6   $
��auto��6   .+�5   
   �� .��5      � 
������ $	��148��6,   .+�5      �� -   5        $
��btn1��5   )   
 � Tag$ 	QuickScan��6      	NaviStyle#���   65   $��10,106,10,377q�6Y   $��60��6p   .��6�   快速扫描6�   �� 5      -   5        $
��btn2��5   (   $ FullScan��6   #���   64   $��10,184,10,299q�6X   $��60��6o   .��6�   全盘扫描6�   �� 5      -   5        $
��btn3��5   *   $ 
CustomScan��6   #���   66   $��10,260,10,223q�6Z   $��60��6q   .��6�   自定义扫描6�   �� 5      -   5        $
��btn4��5   '   $ USBScan��6   #���   63   $��10,340,10,143q�6W   $��60��6n   .��6�   
U盘扫描6�   �� 5      -   5        $
��btn5��5   -   $ SecurityShare��6   #���   69   $��10,420,10,63q�6]   $��60��6s   .��6�   安全知识普及6�   5      5      � 5   
   
������ .+�5      �� -   5        $��30��5      $��30��6!   
������ $��0q�6E   $��702,6,4,514q�6Y    �� IsCancel . .��5      �� 	 �� Orientation$	 Vertical=�6   .+�5      �� $
��Fill=�6   $$��/Resources/Images/UIs/quit.png��6+   $��30��6S   $��30��6^   
 � Cursor$

 Hand��6j   �� 5       $��Center=�6    5!      5"       � 5$      -   5        $��	mainFrame��5$        � NavigationUIVisibility$ Hidden=�6%   6g   �� 5&      -   5        $��30��5&      $��30��6!   
������ $��0q�6E   $��658,6,48,514q�6Y    .  J� RenderTransformOrigin$ -0.17,0.457&�6�   .��5(      �� $	 Vertical=�6   .+�5*      �� $
��Fill=�6   $#��/Resources/Images/UIs/min.png��6+   $��30��6R   $��30��6]   $

 Hand��6i   �� 5,      $��Center=�6    5-      5.      5/      50      51      