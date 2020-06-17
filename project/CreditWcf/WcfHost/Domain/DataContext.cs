
using System.Data.Entity;
using WcfHost.Domain.Entities;
using WcfHost.Domain.Mapping;

namespace WcfHost.Domain
{
    public class DataContext : DbContext
    {
        public DataContext()
            : base("DataContext")
        {
            Configuration.AutoDetectChangesEnabled = true;
            Configuration.LazyLoadingEnabled = true;
            Configuration.ProxyCreationEnabled = true;
            Configuration.ValidateOnSaveEnabled = true;

            //Database.SetInitializer<DataContext>(new DataContextDbInitializer());    
        }

        protected override void Dispose(bool disposing)
        {
            Configuration.LazyLoadingEnabled = false;
            base.Dispose(disposing);
        }

        public DbSet<Condition> Conditions { get; set; } // Таблица состояний кредита
        public DbSet<ConditionCredit> ConditionCredits { get; set; } // таблица состояние-кредит
        public DbSet<Credit> Credits { get; set; } // таблица кредитов
        public DbSet<GroupCharacter> GroupCharacters { get; set; } // таблица параметров групп платежеспособности
        public DbSet<GroupCreditWorthiness> GroupCreditWorthinesss { get; set; } // таблица групп платежесп-ти
        public DbSet<Payment> Payments { get; set; } // таблица выплат
        public DbSet<User> Users { get; set; } // таблица пользователей

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Configurations.Add(new ConditionMap());
            modelBuilder.Configurations.Add(new ConditionCreditMap());
            modelBuilder.Configurations.Add(new CreditMap());
            modelBuilder.Configurations.Add(new GroupCharacterMap());
            modelBuilder.Configurations.Add(new GroupCreditWorthinessMap());
            modelBuilder.Configurations.Add(new PaymentMap());
            modelBuilder.Configurations.Add(new UserMap());
        }

    }
}
