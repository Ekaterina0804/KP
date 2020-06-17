
using System.Data.Entity.ModelConfiguration;

using WcfHost.Domain.Entities;

namespace WcfHost.Domain.Mapping
{
    internal class PaymentMap : EntityTypeConfiguration<Payment>
    {
        public PaymentMap()
        {
            // Primary Key
            HasKey(t => t.Id);

            // Properties
            Property(t => t.NumberMonth);
            Property(t => t.Data);
            Property(t => t.LostSumma);
            Property(t => t.MainPay);
            Property(t => t.Percent);
            Property(t => t.SummaMonth);
            Property(t => t.Repay);

            // Table & Column Mappings
            ToTable("Payment");
            Property(t => t.Id).HasColumnName("Id").IsRequired();
            Property(t => t.NumberMonth).HasColumnName("NumberMonth").IsRequired();
            Property(t => t.Data).HasColumnName("Data").IsRequired();
            Property(t => t.LostSumma).HasColumnName("LostSumma").IsRequired();
            Property(t => t.MainPay).HasColumnName("MainPay").IsRequired();
            Property(t => t.Percent).HasColumnName("Percent").IsRequired();
            Property(t => t.SummaMonth).HasColumnName("SummaMonth").IsRequired();
            Property(t => t.Repay).HasColumnName("Repay");
            Property(t => t.IdCredit).HasColumnName("IdCredit").IsRequired();

            // Relationships     
            HasRequired(t => t.CreditObj).WithMany(t => t.Payments).HasForeignKey(d => d.IdCredit).WillCascadeOnDelete(true);
        }


    }
}
