using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
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
    /// Result.xaml 的交互逻辑
    /// </summary>
    public partial class Result : Page
    {
        CancellationTokenSource cts = new CancellationTokenSource();
        public Result()
        {
            InitializeComponent();

            for(int i = 0; i < 100; i++) //这是插入数据的方法示例
            {
                resBox.Items.Insert(0, i);
            }
                
        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e) //用户确认删除风险文件的操作
        {

        }

        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            Home p = new Home();
            this.NavigationService.Navigate(p, DateTime.Now);
        }

        private void ListBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
