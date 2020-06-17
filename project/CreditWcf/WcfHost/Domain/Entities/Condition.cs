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
    public class Condition
    {
        public Condition()
        {
            ConditionCredits = new Collection<ConditionCredit>();
        }

        [DataMember]
        public int Id { get; set; }

        [DataMember]
        public string Name { get; set; }

        // Список состояний-кредит
        public virtual ICollection<ConditionCredit> ConditionCredits { get; set; }
    }
}
