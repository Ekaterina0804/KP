
using System.Runtime.Serialization;


namespace WcfHost.Domain.Entities
{
    [DataContract(IsReference = true)]
    public class GroupCharacter
    {
        [DataMember]
        public int Id { get; set; }

        [DataMember]
        public int RevenueYearMin { get; set; }

        [DataMember]
        public int RevenueYearMax { get; set; }

        [DataMember]
        public string Sex { get; set; }

        [DataMember]
        public int AgeMin { get; set; }

        [DataMember]
        public int AgeMax { get; set; }

        [DataMember]
        public int CountChildrenMin { get; set; }

        [DataMember]
        public int CountChildrenMax { get; set; }

        [DataMember]
        public string Married { get; set; }

        [DataMember]
        public int IdGroupCreditWorthiness { get; set; }

        // Группа платёжеспособности
        [DataMember]
        public virtual GroupCreditWorthiness GroupCreditWorthinessObj { get; set; }

    }
}
