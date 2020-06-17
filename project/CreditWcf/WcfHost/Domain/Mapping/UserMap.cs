using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WcfHost.Domain.Entities
{
    public class UserMap : EntityTypeConfiguration<User>
    {
        public UserMap()
        {
            // Primary Key
            HasKey(t => t.Id);

            // Properties
            Property(t => t.Fio).HasMaxLength(64);
            Property(t => t.Sex).HasMaxLength(1);
            Property(t => t.Age);
            Property(t => t.CountChildren);
            Property(t => t.Married).HasMaxLength(1);
            Property(t => t.RevenueMonth);

            // Table & Column Mappings
            ToTable("User");
            Property(t => t.Id).HasColumnName("Id").IsRequired();
            Property(t => t.Fio).HasColumnName("Fio").IsRequired();
            Property(t => t.Sex).HasColumnName("Sex");
            Property(t => t.Age).HasColumnName("Age");
            Property(t => t.CountChildren).HasColumnName("CountChildren");
            Property(t => t.Married).HasColumnName("Married");
            Property(t => t.RevenueMonth).HasColumnName("RevenueMonth").IsRequired();
            Property(t => t.IdGroupCreditWorthiness).HasColumnName("IdGroupCreditWorthiness");

            // Relationships     
            HasRequired(t => t.GroupCreditWorthinessObj).WithMany(t => t.Users).HasForeignKey(d => d.IdGroupCreditWorthiness).WillCascadeOnDelete(false);

        }

    }
}
