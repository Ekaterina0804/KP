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
    public class User
    {
        public User()
        {
            Credits = new Collection<Credit>();
        }

        [DataMember]
        public int Id { get; set; }

        [DataMember]
        public string Fio { get; set; }

        [DataMember]
        public string Sex { get; set; }

        [DataMember]
        public int Age { get; set; }

        [DataMember]
        public int CountChildren { get; set; }

        [DataMember]
        public string Married { get; set; }

        [DataMember]
        public int RevenueMonth { get; set; }

        [DataMember]
        public int IdGroupCreditWorthiness { get; set; }

        // Группа платёжеспособности
        [DataMember]
        public virtual GroupCreditWorthiness GroupCreditWorthinessObj { get; set; }


        // Список кредитов
        public virtual ICollection<Credit> Credits { get; set; }

    }
}
