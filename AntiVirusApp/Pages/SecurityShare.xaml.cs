using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace AntiVirusApp.Pages
{
    /// <summary>
    /// SecurityShare.xaml 的交互逻辑
    /// </summary>
    public partial class SecurityShare : Page
    {
        private Dictionary<string, Uri> views = new Dictionary<string, Uri>(); //包含Depretion页面
        public SecurityShare()
        {
            InitializeComponent();
            views.Add("Depretion", new Uri("pages/Depretion.xaml", UriKind.Relative));
            views.Add("Knowledge_WhatS", new Uri("pages/Knowledge_WhatS.xaml", UriKind.Relative));
            views.Add("Protectmethods", new Uri("pages/Protectmethods.xaml", UriKind.Relative));
        }

        private void Frame_Navigated(object sender, NavigationEventArgs e)
        {

        }
        private void NaviButton_Depretion_Click(object sender, RoutedEventArgs e) //重构1：利用Tag属性整合了所有导航页
        {
            Depretion p = new Depretion();
            this.NavigationService.Navigate(p, DateTime.Now);
        }
        private void NaviButton_Know_Click(object sender, RoutedEventArgs e) //重构1：利用Tag属性整合了所有导航页
        {
            Knowledge_WhatS p = new Knowledge_WhatS();
            this.NavigationService.Navigate(p, DateTime.Now);
        }
        private void NaviButton_Pro_Click(object sender, RoutedEventArgs e) //重构1：利用Tag属性整合了所有导航页
        {
            Protectmethods p = new Protectmethods();
            this.NavigationService.Navigate(p, DateTime.Now);
        }
    }
}