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
    /// Depretion.xaml 的交互逻辑
    /// </summary>
    public partial class Depretion : Page
    {
        private Dictionary<string, Uri> views = new Dictionary<string, Uri>(); //包含Progressing页面
        public Depretion()
        {
            InitializeComponent();
            views.Add("electric", new Uri("pages/electric.xaml", UriKind.Relative));
            views.Add("picture", new Uri("pages/picture.xaml", UriKind.Relative));
            views.Add("fakewifi", new Uri("pages/fakewifi.xaml", UriKind.Relative));
            views.Add("fish", new Uri("pages/fish.xaml", UriKind.Relative));
        }

        private void Frame_Navigated(object sender, NavigationEventArgs e)
        {

        }
        private void NaviButton_el_Click(object sender, RoutedEventArgs e) //重构1：利用Tag属性整合了所有导航页
        {
            electric p = new electric();
            this.NavigationService.Navigate(p, DateTime.Now);
        }
        private void NaviButton_pi_Click(object sender, RoutedEventArgs e) //重构1：利用Tag属性整合了所有导航页
        {
            picture p = new picture();
            this.NavigationService.Navigate(p, DateTime.Now);
        }
        private void NaviButton_fa_Click(object sender, RoutedEventArgs e) //重构1：利用Tag属性整合了所有导航页
        {
            fakewifi p = new fakewifi();
            this.NavigationService.Navigate(p, DateTime.Now);
        }
        private void NaviButton_fi_Click(object sender, RoutedEventArgs e) //重构1：利用Tag属性整合了所有导航页
        {
            fish p = new fish();
            this.NavigationService.Navigate(p, DateTime.Now);
        }
    }
}
