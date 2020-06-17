using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WcfHost.Domain.Entities;

namespace WcfHost.Domain.Mapping
{
    public class ConditionCreditMap : EntityTypeConfiguration<ConditionCredit>
    {
        public ConditionCreditMap()
        {
            // Primary Key
            HasKey(t => t.Id);

            // Properties
            Property(t => t.Data);

            // Table & Column Mappings
            ToTable("ConditionCredit");
            Property(t => t.Id).HasColumnName("Id").IsRequired();
            Property(t => t.Data).HasColumnName("Data").IsRequired();
            Property(t => t.IdCondition).HasColumnName("IdCondition").IsRequired();
            Property(t => t.IdCredit).HasColumnName("IdCredit").IsRequired();

            // Relationships     
            HasRequired(t => t.ConditionObj).WithMany(t => t.ConditionCredits).HasForeignKey(d => d.IdCondition).WillCascadeOnDelete(true);
            HasRequired(t => t.CreditObj).WithMany(t => t.ConditionCredits).HasForeignKey(d => d.IdCredit).WillCascadeOnDelete(true);
        }

    }
}
