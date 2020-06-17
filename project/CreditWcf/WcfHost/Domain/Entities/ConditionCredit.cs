using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace WcfHost.Domain.Entities
{
    [DataContract(IsReference = true)]
    public class ConditionCredit
    {
        [DataMember]
        public int Id { get; set; }

        [DataMember]
        public DateTime Data { get; set; }

        [DataMember]
        public int IdCondition { get; set; }

        // Состояние
        [DataMember]
        public virtual Condition ConditionObj { get; set; }

        [DataMember]
        public int IdCredit { get; set; }

        // Состояние
        [DataMember]
        public virtual Credit CreditObj { get; set; }
    }
}
