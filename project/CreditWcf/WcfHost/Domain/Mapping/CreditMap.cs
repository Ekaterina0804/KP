
using System.Data.Entity.ModelConfiguration;
using WcfHost.Domain.Entities;

namespace WcfHost.Domain.Mapping
{
    public class CreditMap : EntityTypeConfiguration<Credit>
    {
        public CreditMap()
        {
            // Primary Key
            HasKey(t => t.Id);

            // Properties
            Property(t => t.TermMonth);
            Property(t => t.SummaFull);
            Property(t => t.SummaMonth);
            Property(t => t.DataStart);


            // Table & Column Mappings
            ToTable("Credit");
            Property(t => t.Id).HasColumnName("Id").IsRequired();
            Property(t => t.TermMonth).HasColumnName("TermMonth").IsRequired();
            Property(t => t.SummaFull).HasColumnName("SummaFull").IsRequired();
            Property(t => t.SummaMonth).HasColumnName("SummaMonth").IsRequired();
            Property(t => t.Stavka).HasColumnName("Stavka").IsRequired();
            Property(t => t.DataStart).HasColumnName("DataStart").IsRequired();
            Property(t => t.IdUser).HasColumnName("IdUser").IsRequired();

            // Relationships     
            HasRequired(t => t.UserObj).WithMany(t => t.Credits).HasForeignKey(d => d.IdUser).WillCascadeOnDelete(true);
        }

    }
}
