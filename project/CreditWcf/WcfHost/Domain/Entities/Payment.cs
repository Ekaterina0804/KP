using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace WcfHost.Domain.Entities
{
    [DataContract(IsReference = true)]
    public class Payment
    {
        [DataMember]
        public int Id { get; set; }

        [DataMember]
        public int NumberMonth { get; set; }

        [DataMember]
        public string Data { get; set; }

        [DataMember]
        public int LostSumma { get; set; }

        [DataMember]
        public int MainPay { get; set; }

        [DataMember]
        public int Percent { get; set; }

        [DataMember]
        public int SummaMonth { get; set; }

        [DataMember]
        public bool Repay { get; set; }

        [DataMember]
        public int IdCredit { get; set; }

        // Пользователь
        [DataMember]
        public virtual Credit CreditObj { get; set; }
    }
}
