using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using WcfHost.Domain;
using WcfHost.Domain.Entities;

namespace WcfHost
{
    public class Service : IService
    {
        #region Get List

        // Получение списка состояний
        public IList<Condition> GetConditions()
        {
            using (DataContext cntx = new DataContext())
                return cntx.Conditions.ToList();
        }

        // Получение списка состояний-кредит
        public IList<ConditionCredit> GetConditionCredits()
        {
            using (DataContext cntx = new DataContext())
                return cntx.ConditionCredits.Include(x=>x.CreditObj).Include(x=>x.ConditionObj).ToList();
        }

        // Получение списка состояний-кредит по IdCredit
        public IList<ConditionCredit> GetConditionCreditsByIdCredits(int idCredit)
        {
            using (DataContext cntx = new DataContext())
                return cntx.ConditionCredits.Where(x=>x.IdCredit == idCredit).Include(x => x.CreditObj).Include(x => x.ConditionObj).ToList();
        }

        // Получение списка выплат
        public IList<Payment> GetPayments()
        {
            using (DataContext cntx = new DataContext())
                return cntx.Payments.Include(x => x.CreditObj).ToList();
        }

        // Получение списка выплат
        public IList<Payment> GetPaymentsByIdCredit(int idCredit)
        {
            using (DataContext cntx = new DataContext())
                return cntx.Payments.Where(x=>x.IdCredit == idCredit).Include(x => x.CreditObj).ToList();
        }

        // Получение списка кредитов
        public IList<Credit> GetCredits()
        {
            using (DataContext cntx = new DataContext())
                return cntx.Credits.Include(x => x.UserObj).ToList();
        }

        // Получение списка кредитов пользователя
        public IList<Credit> GetCreditsByIdUser(int idUser)
        {
            using (DataContext cntx = new DataContext())
                return cntx.Credits.Where(x=>x.IdUser == idUser).Include(x => x.UserObj).ToList();
        }

        // Получение кредита по Id
        public Credit FirstCredit(int id)
        {
            using (DataContext cntx = new DataContext())
                return cntx.Credits.ToList().First(x => x.Id == id);
        }

        // Получение списка пользователей
        public IList<User> GetUsers()
        {
            using (DataContext cntx = new DataContext())
                return cntx.Users.Include(x => x.GroupCreditWorthinessObj).ToList();
        }

        // Получение пользователя по Id
        public User FirstUser(int id)
        {
            using (DataContext cntx = new DataContext())
                return cntx.Users.Include(x => x.GroupCreditWorthinessObj).ToList().First(x => x.Id == id);
        }

        // Получение списка параметров групп
        public IList<GroupCharacter> GetGroupCharacters()
        {
            using (DataContext cntx = new DataContext())
                return cntx.GroupCharacters.Include(x => x.GroupCreditWorthinessObj).ToList();
        }

        // Получение списка групп
        public IList<GroupCreditWorthiness> GetGroupCreditWorthinesss()
        {
            using (DataContext cntx = new DataContext())
                return cntx.GroupCreditWorthinesss.ToList();
        }

        // Получение группы по Id
        public GroupCreditWorthiness FirstGroupCreditWorthiness(int id)
        {
            using (DataContext cntx = new DataContext())
                return cntx.GroupCreditWorthinesss.ToList().First(x => x.Id == id);
        }

        // Получение группы по названию
        public GroupCreditWorthiness FirstGroupCreditWorthinessByName(string name)
        {
            using (DataContext cntx = new DataContext())
                return cntx.GroupCreditWorthinesss.ToList().First(x => x.Name == name.Trim());
        }

        #endregion

        #region Algorirm

        // Алгоритм определения группы платежёспособности
        public IList<GroupCharacter> AlgorirmForGroup(int revenueYear, string sex, int age, int children, string married)
        {
            IList<GroupCharacter> listGroupAll = GetGroupCharacters();

            // поиск по годовому доходу
            var list1 = listGroupAll.Where(x => x.RevenueYearMin <= revenueYear);
            if (list1.Count() <= 1) return list1.ToList();

            // поиск по полу
            var list2 = list1.Where(x => x.Sex == sex || string.IsNullOrEmpty(x.Sex));
            if (list2.Count() <= 1) return list2.ToList();

            // поиск по возрвсту
            var list3 = list2.Where(x => x.AgeMin <= age && x.AgeMax > age);
            if (list3.Count() <= 1) return list3.ToList();

            // поиск по количеству детей
            var list4 = list3.Where(x => x.CountChildrenMin <= children);
            if (list4.Count() <= 1) return list4.ToList();

            // поиск по семейному положению
            var list5 = list4.Where(x => x.Married == married || string.IsNullOrEmpty(x.Married));
            return list5.ToList();
        }

        // Алгоритм определения экономических показателей (платёжеспособность и макс. сумма кредита)
        public int[] AlgoritmEconomicValue(int revenueMonth, int month, int stavka)
        {
            // Коэффициент зависящий от среднемемячного дохода
            double koef = 0.5;
            if (revenueMonth <= 500) koef = 0.3;
            else if (revenueMonth > 500 && revenueMonth <= 2000) koef = 0.4;

            // Платёжеспособность 
            int p = Convert.ToInt32(revenueMonth*koef*month);

            // Максимальная сумма кредита
            int summa = Convert.ToInt32((p*2*12*100)/(2*12*100 + stavka*(month + 1)));

            return new[] {p, summa};
        }

        // Алгоритм расчёта ежемесячного платежа
        public int AlgoritmMonthPay(int summa, int stavka, int month)
        {
            var pay =
                Convert.ToInt32(summa*((stavka/1200.0) + (stavka/1200.0)/(Math.Pow((1 + (stavka/1200.0)), month) - 1)));
            return pay;
        }

        // Алгоритм расчёта графика платежей
        public List<Payment> CalculationPayment(int summaFull, int summaMonth, int stavka, int month, DateTime data)
        {
            List<Payment> list = new List<Payment>();
            int numberMonth = 1;
            int lostSumma = summaFull;
            int mainPay = 0;

            while (numberMonth <= month)
            {
                Payment record = new Payment();
                record.NumberMonth = numberMonth;
                record.Data = data.AddMonths(numberMonth).ToShortDateString();
                record.LostSumma = lostSumma - mainPay;
                record.Percent = record.LostSumma * stavka / 100 / 12;
                record.MainPay = summaMonth - record.Percent;
                record.SummaMonth = summaMonth;
                record.Repay = false;

                lostSumma = record.LostSumma;
                mainPay = record.MainPay;
                numberMonth++;

                list.Add(record);
            }
            return list;
        }

        // Алгоритм поиска платежа
        public Payment SearchPayment(int idCredit)
        {
            Payment payment = new Payment();
            List<Payment> list = new List<Payment>();
            using (DataContext cntx = new DataContext())
            {
                list =
                    cntx.Payments.Where(x => x.IdCredit == idCredit && x.Repay == false)
                        .OrderBy(x => x.NumberMonth)
                        .ToList();
                if (list.Any())
                {
                    var min = list.Min(x => x.NumberMonth);
                    payment = list.First(x => x.NumberMonth == min);
                }
            }
            return payment;
        }

        // Кол-во кредитов пользователя
        public int GetCountCredit(int idUser)
        {
            using (DataContext cntx = new DataContext())
            {
                return cntx.Credits.Count(x => x.IdUser == idUser);
            }                
        }

        // Сумма кредитов пользователя
        public int GetFullSummaCredits(int idUser)
        {
            using (DataContext cntx = new DataContext())
            {
                var list = cntx.Credits.Where(x => x.IdUser == idUser);
                if(list.Any())
                    return list.Sum(x => x.SummaFull);
            }
            return 0;
        }

        // Остаток выплат по кредитам кредитов пользователя
        public int GetLostSummaCredits(int idUser)
        {
            using (DataContext cntx = new DataContext())
            {
                List<Payment> list = (from all in cntx.Payments
                                      where all.CreditObj.IdUser == idUser && all.Repay == false
                                      group all by all.IdCredit
                                          into grp
                                          select grp.OrderBy(x => x.NumberMonth).FirstOrDefault()).ToList();
                
                if (list.Any())
                    return list.Sum(x => x.LostSumma);
            }
            return 0;
        }

        #endregion

        #region Contorl Action

        // Проверка, есть ли группа в БД
        public bool IsHasGroupByGroupName(string name)
        {
            using (DataContext cntx = new DataContext())
                return cntx.GroupCreditWorthinesss.Count(x => x.Name == name) > 0;
        }

        #endregion

        #region Add Record

        // Добавление сотрудника
        public int AddUser(User model)
        {
            using (DataContext cntx = new DataContext())
            {
                try
                {
                    cntx.Entry(model).State = EntityState.Added;
                    cntx.SaveChanges(); // сохранение добавления
                }
                catch (Exception) { return 0; }
            }
            return model.Id;
        }

        // Добавление группы
        public int AddGroupCreditWorthiness(GroupCreditWorthiness model)
        {
            using (DataContext cntx = new DataContext())
            {
                try
                {
                    cntx.Entry(model).State = EntityState.Added;
                    cntx.SaveChanges(); // сохранение добавления
                }
                catch (Exception) { return 0; }
            }
            return model.Id;
        }

        // Добавление параметров группы
        public int AddGroupCharacter(GroupCharacter model)
        {
            using (DataContext cntx = new DataContext())
            {
                try
                {
                    model.GroupCreditWorthinessObj =
                        cntx.GroupCreditWorthinesss.FirstOrDefault(x => x.Id == model.IdGroupCreditWorthiness);
                    cntx.Entry(model).State = EntityState.Added;
                    cntx.SaveChanges(); // сохранение добавления
                }
                catch (Exception) { return 0; }
            }
            return model.Id;
        }

        // Добавление кредита
        public int AddCredit(Credit model)
        {
            using (DataContext cntx = new DataContext())
            {
                try
                {
                    model.UserObj =
                        cntx.Users.FirstOrDefault(x => x.Id == model.IdUser);
                    cntx.Entry(model).State = EntityState.Added;
                    cntx.SaveChanges(); // сохранение добавления
                }
                catch (Exception) { return 0; }
            }
            return model.Id;
        }

        // Добавление платежа
        public int AddPayment(Payment model)
        {
            using (DataContext cntx = new DataContext())
            {
                try
                {
                    model.CreditObj =
                        cntx.Credits.FirstOrDefault(x => x.Id == model.IdCredit);
                    cntx.Entry(model).State = EntityState.Added;
                    cntx.SaveChanges(); // сохранение добавления
                }
                catch (Exception) { return 0; }
            }
            return model.Id;
        }

        // Добавление состояния-кредит
        public int AddConditionCredit(ConditionCredit model)
        {
            using (DataContext cntx = new DataContext())
            {
                try
                {
                    model.CreditObj =
                        cntx.Credits.FirstOrDefault(x => x.Id == model.IdCredit);
                    model.ConditionObj =
                        cntx.Conditions.FirstOrDefault(x => x.Id == model.IdCondition);
                    cntx.Entry(model).State = EntityState.Added;
                    cntx.SaveChanges(); // сохранение добавления
                }
                catch (Exception) { return 0; }
            }
            return model.Id;
        }

        #endregion

        #region Delete Record

        // удаление сотрудника
        public bool DeleteUser(User model)
        {
            using (DataContext cntx = new DataContext())
            {
                try
                {
                    User modelDel = cntx.Users.FirstOrDefault(x => x.Id == model.Id);
                    cntx.Entry(modelDel).State = EntityState.Deleted;
                    cntx.SaveChanges(); // сохранение удаления
                }
                catch (Exception) { return false; }
            }
            return true;
        }

        // удаление группы
        public bool DeleteGroupCreditWorthiness(GroupCreditWorthiness model)
        {
            using (DataContext cntx = new DataContext())
            {
                try
                {
                    GroupCreditWorthiness modelDel = cntx.GroupCreditWorthinesss.FirstOrDefault(x => x.Id == model.Id);
                    cntx.Entry(modelDel).State = EntityState.Deleted;
                    cntx.SaveChanges(); // сохранение удаления
                }
                catch (Exception) { return false; }
            }
            return true;
        }

        // удаление параметров группы
        public bool DeleteGroupCharacter(GroupCharacter model)
        {
            using (DataContext cntx = new DataContext())
            {
                try
                {
                    GroupCharacter modelDel = cntx.GroupCharacters.FirstOrDefault(x => x.Id == model.Id);
                    cntx.Entry(modelDel).State = EntityState.Deleted;
                    cntx.SaveChanges(); // сохранение удаления
                }
                catch (Exception) { return false; }
            }
            return true;
        }

        // удаление кредита
        public bool DeleteCredit(Credit model)
        {
            using (DataContext cntx = new DataContext())
            {
                try
                {
                    Credit modelDel = cntx.Credits.FirstOrDefault(x => x.Id == model.Id);
                    cntx.Entry(modelDel).State = EntityState.Deleted;
                    cntx.SaveChanges(); // сохранение удаления
                }
                catch (Exception) { return false; }
            }
            return true;
        }

        #endregion

        #region Update Record

        // Редактирование сотрудника
        public bool UpdateUser(User model)
        {
            using (DataContext cntx = new DataContext())
            {
                try
                {
                    User oldModel = cntx.Users.FirstOrDefault(x => x.Id == model.Id);
                    cntx.Entry(oldModel).CurrentValues.SetValues(model); // копируем изменения из model в oldModel
                    cntx.SaveChanges();
                }
                catch (Exception) { return false; }
            }
            return true;
        }

        // Редактирование группы
        public bool UpdateGroupCreditWorthiness(GroupCreditWorthiness model)
        {
            using (DataContext cntx = new DataContext())
            {
                try
                {
                    GroupCreditWorthiness oldModel = cntx.GroupCreditWorthinesss.FirstOrDefault(x => x.Id == model.Id);
                    cntx.Entry(oldModel).CurrentValues.SetValues(model); // копируем изменения из model в oldModel
                    cntx.SaveChanges();
                }
                catch (Exception) { return false; }
            }
            return true;
        }

        // Редактирование параметров группы
        public bool UpdateGroupCharacter(GroupCharacter model)
        {
            using (DataContext cntx = new DataContext())
            {
                try
                {
                    GroupCharacter oldModel = cntx.GroupCharacters.FirstOrDefault(x => x.Id == model.Id);
                    cntx.Entry(oldModel).CurrentValues.SetValues(model); // копируем изменения из model в oldModel
                    cntx.SaveChanges();
                }
                catch (Exception) { return false; }
            }
            return true;
        }

        // Редактирование кредита
        public bool UpdateCredit(Credit model)
        {
            using (DataContext cntx = new DataContext())
            {
                try
                {
                    Credit oldModel = cntx.Credits.FirstOrDefault(x => x.Id == model.Id);
                    cntx.Entry(oldModel).CurrentValues.SetValues(model); // копируем изменения из model в oldModel
                    cntx.SaveChanges();
                }
                catch (Exception) { return false; }
            }
            return true;
        }

        // Редактирование платежа
        public bool UpdatePayment(Payment model)
        {
            using (DataContext cntx = new DataContext())
            {
                try
                {
                    Payment oldModel = cntx.Payments.FirstOrDefault(x => x.Id == model.Id);
                    cntx.Entry(oldModel).CurrentValues.SetValues(model); // копируем изменения из model в oldModel
                    cntx.SaveChanges();
                }
                catch (Exception) { return false; }
            }
            return true;
        }

        #endregion
    }
}
