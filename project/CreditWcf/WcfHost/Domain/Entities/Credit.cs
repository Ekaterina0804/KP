using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace WcfHost.Domain.Entities
{
    [DataContract(IsReference = true)]
    public class Credit
    {
        public Credit()
        {
            Payments = new Collection<Payment>();
            ConditionCredits = new Collection<ConditionCredit>();
        }

        [DataMember]
        public int Id { get; set; }

        [DataMember]
        public int TermMonth { get; set; }

        [DataMember]
        public int SummaFull { get; set; }

        [DataMember]
        public int SummaMonth { get; set; }

        [DataMember]
        public int Stavka { get; set; }

        [DataMember]
        public DateTime DataStart { get; set; }

        [DataMember]
        public int IdUser { get; set; }

        // Пользователь
        [DataMember]
        public virtual User UserObj { get; set; }

        // Список выплат
        public virtual ICollection<Payment> Payments { get; set; }

        // Список состояний
        public virtual ICollection<ConditionCredit> ConditionCredits { get; set; }

    }
}
