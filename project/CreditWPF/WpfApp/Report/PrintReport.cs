using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfApp.ServiceWcfHost;
using WpfApp.ViewModel;

namespace WpfApp.Report
{
    static public class PrintReport
    {
        public static void PrintCredit(CreditViewModel model, ServiceClient repository)
        {
            ReportDataSet dsRep = new ReportDataSet();

            ReportDataSet.CreditDTRow dsCreditDtRowRow = dsRep.CreditDT.NewCreditDTRow();
            dsCreditDtRowRow.Fio = model.UserName;
            dsCreditDtRowRow.Data = model.DataStart;
            dsCreditDtRowRow.SummaFull = model.SummaFull.ToString();
            dsCreditDtRowRow.Stavka = model.Stavka.ToString();
            dsCreditDtRowRow.TermMonth = model.TermMonth.ToString();
            dsCreditDtRowRow.IdCredit = model.Id.ToString();

            dsRep.CreditDT.Rows.Add(dsCreditDtRowRow);

            List<Payment> payments = repository.GetPaymentsByIdCredit(model.Id).ToList();

            foreach (var item in payments)
            {
                ReportDataSet.PaymentDTRow dsPaymentDtRow = dsRep.PaymentDT.NewPaymentDTRow();
                dsPaymentDtRow.IdCredit = model.Id.ToString();
                dsPaymentDtRow.NumberMonth = item.NumberMonth.ToString();
                dsPaymentDtRow.Data = item.Data;
                dsPaymentDtRow.LostSumma = item.LostSumma.ToString();
                dsPaymentDtRow.MainPay = item.MainPay.ToString();
                dsPaymentDtRow.Percent = item.Percent.ToString();
                dsPaymentDtRow.SummaMonth = item.SummaMonth.ToString();
                dsRep.PaymentDT.Rows.Add(dsPaymentDtRow);
            }

            using (FastReport.Report report = new FastReport.Report())
            {
                report.StoreInResources = true;
                report.Load("Report\\CreditReport.frx");

                report.RegisterData((DataTable)dsRep.CreditDT, "CreditInfoList");
                report.GetDataSource("CreditInfoList").Enabled = true;
                report.RegisterData((DataTable)dsRep.PaymentDT, "PaymentList");
                report.GetDataSource("PaymentList").Enabled = true;
                //report.Design();
                report.Show();
            }
        }
    }
}
