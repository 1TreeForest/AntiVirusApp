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
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Threading;

namespace AntiVirusApp.Pages
{
    /// <summary>
    /// Progressing.xaml 的交互逻辑
    /// </summary>
    public partial class Progressing : Page
    {
        Progress<int> progress;
        CancellationTokenSource cts = null;
        public Progressing()
        {
            InitializeComponent();
            progress = new Progress<int>();
            progress.ProgressChanged += Progress_ProgressChanged;
            Start();

        }
        //进度变化触发事件
        private void Progress_ProgressChanged(object sender, int e)
        {
            progressBar1.Value = e;
        }
        //采用async异步操作, UI不会出现卡顿
        public async void Start(/*参数预留*/) //点击按钮后自动进行扫描，等待后续增加参数完善此函数
        {
            if (cts == null)
                progressBar1.Value = await DoWork((cts = new CancellationTokenSource()).Token, progress);//传入取消标记以及进度
        }
        //async 异步操作
        private async Task<int> DoWork(CancellationToken token, IProgress<int> progress = null)
        {
            int result = 0;
            for (int i = 0; i <= 100; i++) //在实际应用中修改为逻辑函数而不是简易循环
            {
                result = i;
                await Task.Delay(TimeSpan.FromSeconds(0.2));
                if (progress != null)
                {
                    progress.Report(i); //触发进度更变事件-->Progress_ProgressChanged
                }
                if (token.IsCancellationRequested)
                { //如果取消操作
                    progress.Report(0); //清零
                    return 0; //返回零
                }
            }
            return result;
        }

        //query用户是否确定停止****************************待完善，如果确定，下方添加if语句

        private void Stop_Scan_Click(object sender, EventArgs e)
        {
            cts.Cancel(); //取消操作
            progressBar1.Value = 0;
            Home p = new Home();
            this.NavigationService.Navigate(p, DateTime.Now);
        }

        private void Pause_Scan_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}