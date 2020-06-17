using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity;
using System.Drawing;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WcfHost.Domain;

namespace WcfHost
{
    public partial class ServiceHostForm : Form
    {
        private ServiceHost host;
        public ServiceHostForm()
        {
            InitializeComponent();
        }

        // Старт сервиса
        private void btnStart_Click(object sender, EventArgs e)
        {
            try
            {
                // Инициализируем БД и не дожидаемся ее первого вызова
                // false - значит, что повторно DataContextDbInitializer вызываться не будет
                Database.SetInitializer<DataContext>(new DataContextDbInitializer());
                using (var context = new DataContext())
                    context.Database.Initialize(false);

                StartOrStopService(true);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }

        // Остановка сервиса
        private void btnStop_Click(object sender, EventArgs e)
        {
            StartOrStopService(false);
        }

        // Запуск/Остановка АвтоХостинга
        private void StartOrStopService(bool start)
        {
            if (start)
            {
                host = new ServiceHost(typeof(Service));
                host.Open();
                btnStop.Enabled = true;
                btnStart.Enabled = false;
            }
            else
            {
                host.Close();
                host = null;
                btnStop.Enabled = false;
                btnStart.Enabled = true;
            }
        }

        // Отрабатывает при закрытии формы
        private void ServiceHostFormClosed(object sender, FormClosedEventArgs e)
        {
            if (host == null) return;
            if (host.State != CommunicationState.Opened) return;

            host.Close();
            host = null;
        }
    }
}
