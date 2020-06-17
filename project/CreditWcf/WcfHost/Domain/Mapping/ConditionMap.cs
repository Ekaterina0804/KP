using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WcfHost.Domain.Entities;

namespace WcfHost.Domain.Mapping
{
    internal class ConditionMap : EntityTypeConfiguration<Condition>
    {
        public ConditionMap()
        {
            // Primary Key
            HasKey(t => t.Id);

            // Properties
            Property(t => t.Name).HasMaxLength(64);

            // Table & Column Mappings
            ToTable("Condition");
            Property(t => t.Id).HasColumnName("Id").IsRequired();
            Property(t => t.Name).HasColumnName("Name").IsRequired();
        }

    }
}
