   M S B A M L   `   `   `  ����E  APracticeKB, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:PracticeKB.PagesPracticeKB.Pages  5          PracticeKB.Pages.GlavPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:PracticeKB.Pages     5      -   5          N� Title$  GlavPage��5
      .��5      �  � RowDefinitions 5   
   �� 5      $��60 �6   �� 5      �� 5      $��60 �6   .+�5   
   �� -   5         ��Name$
 Back��5      $��20��5      $��10q�5      $
��Left=�5      $��
Назад��5      $	��100��5      ���#6BA368
�������5      �� 5   
   -   5         ��Name$ FilterComboBox��5      $	��300��5      $��30��5      $��Right=�5      $��0 0 10 0q�5       .@�5!      �� $��Все��6   �� 5"      $	��911��6   �� 5#      $	��921��6   �� 5$      $	��931��6   �� 5%      $	��941��6   �� 5&      $	��311��6   �� 5'      $	��321��6   �� 5(      $	��331��6   �� 5)      $	��341��6   �� 5*      $	��211��6   �� 5+      $	��221��6   �� 5,      $	��231��6   �� 5-      $	��241��6   �� 5.      $	��811��6   �� 5/      $	��821��6   �� 50      $	��831��6   �� 51      $	��841��6   52      �� 53   
   $-��'Фильтрация по группе:��6   $��15(�54      $��Italic$�55      $��Medium"�56      $��Center=�57      $��
-20 20 0 0q�58      ���#515B3A59      &   System.Windows.Controls.DataGrid  5:   
   -   5          Name$ StudentGrid��5<      $��1��5:         AutoGenerateColumns .  $��0,0,0,10q�5>         Columns 5?      0  *System.Windows.Controls.DataGridTextColumn  5@      ,  &System.Windows.Controls.DataGridColumn   Header$ ФИО��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 62   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 6<   �� *FIO+  5A      $  Специальность��6%   $ * 6<   	 6F   �� *Specialization.Title+  5B      $ Группа��6%   $ * 65   	 6?   �� *Groups+4  .System.Windows.Controls.DataGridTemplateColumn  5C      $
 auto 6)   
   CellTemplate
 5D      �� 5E      .R�5F      �� $
 Edit��5I   %   -   5        $��24��5F   %   $��Изменить��5G   %   $	��150��5H   %   $��5q�5K   %   ���#6BA368
�������5M   %   5N      5P      5R      �� 5S   
   $��2��6   $��Center=�5T       �� Orientation$ 
Horizontal=�5U      $��Center=�5V      .+�5W      �� -   5        $	 Add��5Z      $��24��5W      $��Добавить��5X      $	��150��5Y      $��5q�5\      ���#6BA368
�������5^      �� 5_      -   5        $ Remove��5b      $��24��5_      $��Удалить��5`      $	��150��5a      $��5q�5d      ���#6BA368
�������5f      5g      5h      5i      