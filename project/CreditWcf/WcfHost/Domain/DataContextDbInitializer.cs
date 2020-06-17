using System;
using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.Linq;
using WcfHost.Domain.Entities;

namespace WcfHost.Domain
{
    //DropCreateDatabaseAlways<DataContext>
    //DropCreateDatabaseIfModelChanges<DataContext>
    //DropCreateDatabaseAlways<DataContext>
    public class DataContextDbInitializer : DropCreateDatabaseIfModelChanges<DataContext>
    {
        protected override void Seed(DataContext context)
        {
           context.GroupCreditWorthinesss.AddOrUpdate(t => t.Name,
                new GroupCreditWorthiness {Name = "A", MaxSumma = 100000, Id = 1},
                new GroupCreditWorthiness {Name = "B", MaxSumma = 50000, Id = 2},
                new GroupCreditWorthiness {Name = "C", MaxSumma = 30000, Id = 3});

           context.SaveChanges();

            context.Users.AddOrUpdate(t => t.Fio,
                new User { Fio = "Иванов И.А.", Sex = "м", Age = 30, Married = "х", CountChildren = 0, RevenueMonth = 1000, Id = 1, IdGroupCreditWorthiness = context.GroupCreditWorthinesss.First(x => x.Id == 2).Id },
                new User { Fio = "Петрова С.А.", Sex = "ж", Age = 32, Married = "ж", CountChildren = 1, RevenueMonth = 1250, Id = 2, IdGroupCreditWorthiness = context.GroupCreditWorthinesss.First(x => x.Id == 1).Id });
          

            context.Conditions.AddOrUpdate(t => t.Name,
                new Condition {Name = "оформлен", Id = 1},
                new Condition {Name = "выплачен", Id = 2});

            context.SaveChanges();

            context.GroupCharacters.AddOrUpdate(t => t.RevenueYearMin,
                new GroupCharacter
                {
                    RevenueYearMin = 15000, RevenueYearMax = 1000000, AgeMin = 0, AgeMax = 0, CountChildrenMin = 0, CountChildrenMax = 0, Sex = "", Married = "", Id = 1,
                    IdGroupCreditWorthiness = context.GroupCreditWorthinesss.First(x=>x.Id == 1).Id
                }, // A
                new GroupCharacter
                {
                    RevenueYearMin = 0, RevenueYearMax = 15000, AgeMin = 35, AgeMax = 100, CountChildrenMin = 0, CountChildrenMax = 0, Sex = "м", Married = "", Id = 2,
                    IdGroupCreditWorthiness = context.GroupCreditWorthinesss.First(x => x.Id == 1).Id
                }, // A
                new GroupCharacter
                {
                    RevenueYearMin = 0, RevenueYearMax = 15000, AgeMin = 25, AgeMax = 35, CountChildrenMin = 0, CountChildrenMax = 0, Sex = "м", Married = "ж", Id = 3,
                    IdGroupCreditWorthiness = context.GroupCreditWorthinesss.First(x => x.Id == 1).Id
                }, // A
                new GroupCharacter
                {
                    RevenueYearMin = 0, RevenueYearMax = 15000, AgeMin = 25, AgeMax = 35, CountChildrenMin = 0, CountChildrenMax = 3, Sex = "ж", Married = "", Id = 4,
                    IdGroupCreditWorthiness = context.GroupCreditWorthinesss.First(x => x.Id == 1).Id
                }, // A

                new GroupCharacter
                {
                    RevenueYearMin = 0, RevenueYearMax = 15000, AgeMin = 25, AgeMax = 35, CountChildrenMin = 0, CountChildrenMax = 0, Sex = "м", Married = "х", Id = 5,
                    IdGroupCreditWorthiness = context.GroupCreditWorthinesss.First(x => x.Id == 2).Id
                }, // B
                new GroupCharacter
                {
                    RevenueYearMin = 0, RevenueYearMax = 15000, AgeMin = 35, AgeMax = 100, CountChildrenMin = 0, CountChildrenMax = 0, Sex = "ж", Married = "", Id = 6,
                    IdGroupCreditWorthiness = context.GroupCreditWorthinesss.First(x => x.Id == 2).Id
                }, // B
                new GroupCharacter
                {
                    RevenueYearMin = 0, RevenueYearMax = 15000, AgeMin = 25, AgeMax = 35, CountChildrenMin = 3, CountChildrenMax = 30, Sex = "ж", Married = "", Id = 7,
                    IdGroupCreditWorthiness = context.GroupCreditWorthinesss.First(x => x.Id == 2).Id
                }, // B

                new GroupCharacter
                {
                    RevenueYearMin = 0, RevenueYearMax = 15000, AgeMin = 18, AgeMax = 25, CountChildrenMin = 0, CountChildrenMax = 0, Sex = "м", Married = "", Id = 8,
                    IdGroupCreditWorthiness = context.GroupCreditWorthinesss.First(x => x.Id == 3).Id
                }, // C
                new GroupCharacter
                {
                    RevenueYearMin = 0, RevenueYearMax = 15000, AgeMin = 18, AgeMax = 25, CountChildrenMin = 0, CountChildrenMax = 0, Sex = "ж", Married = "", Id = 9,
                    IdGroupCreditWorthiness = context.GroupCreditWorthinesss.First(x => x.Id == 3).Id
                }); // C

            context.Credits.AddOrUpdate(t => t.SummaFull,
                new Credit
                {
                    TermMonth = 3, SummaFull = 20000, SummaMonth = 6890, DataStart = new DateTime(2015,11,4), Stavka = 20, Id=1, IdUser = context.Users.First(x=>x.Id == 1).Id 
                },
                new Credit
                {
                    TermMonth = 3, SummaFull = 30000, SummaMonth = 10335, DataStart = new DateTime(2015,11,4), Stavka = 20, Id=2, IdUser = context.Users.First(x=>x.Id == 2).Id                    
                });
               
            context.SaveChanges();

            context.ConditionCredits.AddOrUpdate(t => t.Data,
                new ConditionCredit
                {
                    Data = new DateTime(2015,11,4),
                    IdCondition = context.Conditions.First(x => x.Id == 1).Id,
                    IdCredit = context.Credits.First(x => x.Id == 1).Id
                },
                new ConditionCredit
                {
                    Data = new DateTime(2015,11,4),
                    IdCondition = context.Conditions.First(x => x.Id == 1).Id,
                    IdCredit = context.Credits.First(x => x.Id == 2).Id
                });

            context.SaveChanges();

            context.Payments.AddOrUpdate(t=>t.NumberMonth, 
                new Payment{ NumberMonth = 1 , Data = "04.12.2015", LostSumma = 20000, MainPay = 6557, Percent = 333, SummaMonth = 6890, Repay = false, IdCredit = context.Credits.First(x => x.Id == 1).Id, Id = 1},
                new Payment{ NumberMonth = 2 , Data = "04.01.2016", LostSumma = 13443, MainPay = 6666, Percent = 224, SummaMonth = 6890, Repay = false, IdCredit = context.Credits.First(x => x.Id == 1).Id, Id = 2},
                new Payment{ NumberMonth = 3 , Data = "04.02.2016", LostSumma = 6777, MainPay = 6778, Percent = 112, SummaMonth = 6890, Repay = false, IdCredit = context.Credits.First(x => x.Id == 1).Id, Id = 3},
                new Payment{ NumberMonth = 1 , Data = "04.12.2015", LostSumma = 30000, MainPay = 9835, Percent = 500, SummaMonth = 10335, Repay = false, IdCredit = context.Credits.First(x => x.Id == 2).Id, Id = 4},
                new Payment{ NumberMonth = 2 , Data = "04.01.2016", LostSumma = 20165, MainPay = 9999, Percent = 336, SummaMonth = 10335, Repay = false, IdCredit = context.Credits.First(x => x.Id == 2).Id, Id = 5},
                new Payment{ NumberMonth = 3 , Data = "04.02.2016", LostSumma = 10166, MainPay = 10166, Percent = 169, SummaMonth = 10335, Repay = false, IdCredit = context.Credits.First(x => x.Id == 2).Id, Id = 6}
                );
        }

    }
}
