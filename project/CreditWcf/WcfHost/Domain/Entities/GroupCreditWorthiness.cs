
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;

namespace WcfHost.Domain.Entities
{
   [DataContract(IsReference = true)]

    public class GroupCreditWorthiness
    {
       public GroupCreditWorthiness()
       {
           GroupCharacters = new Collection<GroupCharacter>();
           Users = new Collection<User>();
       }

        [DataMember]
        public int Id { get; set; }

        [DataMember]
        public string Name { get; set; }

        [DataMember]
        public int MaxSumma { get; set; }

        // Список параметров
        public virtual ICollection<GroupCharacter> GroupCharacters { get; set; }

        // Список пользователей
        public virtual ICollection<User> Users { get; set; }
    }
}
