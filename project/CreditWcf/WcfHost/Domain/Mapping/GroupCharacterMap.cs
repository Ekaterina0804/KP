
using System.Data.Entity.ModelConfiguration;
using WcfHost.Domain.Entities;

namespace WcfHost.Domain.Mapping
{
    internal class GroupCharacterMap : EntityTypeConfiguration<GroupCharacter>
    {
        public GroupCharacterMap()
        {
            // Primary Key
            HasKey(t => t.Id);

            // Properties
            Property(t => t.RevenueYearMin);
            Property(t => t.RevenueYearMax);
            Property(t => t.Sex).HasMaxLength(1);
            Property(t => t.AgeMin);
            Property(t => t.AgeMax);
            Property(t => t.CountChildrenMin);
            Property(t => t.CountChildrenMax);
            Property(t => t.Married);

            // Table & Column Mappings
            ToTable("GroupCharacter");
            Property(t => t.Id).HasColumnName("Id").IsRequired();
            Property(t => t.RevenueYearMin).HasColumnName("RevenueYearMin").IsRequired();
            Property(t => t.RevenueYearMax).HasColumnName("RevenueYearMax").IsRequired();
            Property(t => t.Sex).HasColumnName("Sex").IsRequired();
            Property(t => t.AgeMin).HasColumnName("AgeMin").IsRequired();
            Property(t => t.AgeMax).HasColumnName("AgeMax").IsRequired();
            Property(t => t.CountChildrenMin).HasColumnName("CountChildrenMin").IsRequired();
            Property(t => t.CountChildrenMax).HasColumnName("CountChildrenMax").IsRequired();
            Property(t => t.Married).HasColumnName("Married").IsRequired();
            Property(t => t.IdGroupCreditWorthiness).HasColumnName("IdGroupCreditWorthiness").IsRequired();

            // Relationships     
            HasRequired(t => t.GroupCreditWorthinessObj).WithMany(t => t.GroupCharacters).HasForeignKey(d => d.IdGroupCreditWorthiness).WillCascadeOnDelete(true);
        }

    }
}
