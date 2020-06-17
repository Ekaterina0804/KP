
using System.Data.Entity.ModelConfiguration;

using WcfHost.Domain.Entities;

namespace WcfHost.Domain.Mapping
{
    class GroupCreditWorthinessMap : EntityTypeConfiguration<GroupCreditWorthiness>
    {
        public GroupCreditWorthinessMap()
        {
            // Primary Key
            HasKey(t => t.Id);

            // Properties
            Property(t => t.Name).HasMaxLength(64);
            Property(t => t.MaxSumma);

            // Table & Column Mappings
            ToTable("GroupCreditWorthiness");
            Property(t => t.Id).HasColumnName("Id").IsRequired();
            Property(t => t.Name).HasColumnName("Name").IsRequired();
            Property(t => t.MaxSumma).HasColumnName("MaxSumma").IsRequired();
        }

    }
}
