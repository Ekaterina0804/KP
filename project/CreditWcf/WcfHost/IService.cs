using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using WcfHost.Attributes;
using WcfHost.Domain.Entities;

namespace WcfHost
{
    [ServiceContract(
    Name = "Service",
    Namespace = "http://WcfHost/Service/")]
    [ServiceKnownType(typeof(Condition))]
    [ServiceKnownType(typeof(ConditionCredit))]
    [ServiceKnownType(typeof(Credit))]
    [ServiceKnownType(typeof(GroupCharacter))]
    [ServiceKnownType(typeof(GroupCreditWorthiness))]
    [ServiceKnownType(typeof(Payment))]
    [ServiceKnownType(typeof(User))]

    public interface IService
    {
        // Получение списка состояний
        [OperationContract]
        [ApplyDataContractResolver]
        IList<Condition> GetConditions();

        // Получение списка состояний-кредит
        [OperationContract]
        [ApplyDataContractResolver]
        IList<ConditionCredit> GetConditionCredits();

        // Получение списка состояний-кредит по IdCredit
        [OperationContract]
        [ApplyDataContractResolver]
        IList<ConditionCredit> GetConditionCreditsByIdCredits(int idCredit);

        // Получение списка выплат
        [OperationContract]
        [ApplyDataContractResolver]
        IList<Payment> GetPayments();

        // Получение списка выплат по IdCredit
        [OperationContract]
        [ApplyDataContractResolver]
        IList<Payment> GetPaymentsByIdCredit(int idCredit);

        // Получение списка кредитов
        [OperationContract]
        [ApplyDataContractResolver]
        IList<Credit> GetCredits();

         // Получение списка кредитов пользователя
        [OperationContract]
        [ApplyDataContractResolver]
        IList<Credit> GetCreditsByIdUser(int idUser);

        // Получение кредита по Id
        [OperationContract]
        [ApplyDataContractResolver]
        Credit FirstCredit(int id);

        // Получение списка пользователей
        [OperationContract]
        [ApplyDataContractResolver]
        IList<User> GetUsers();


        // Получение пользователя по Id
        [OperationContract]
        [ApplyDataContractResolver]
        User FirstUser(int id);

        // Получение списка параметров групп
        [OperationContract]
        [ApplyDataContractResolver]
        IList<GroupCharacter> GetGroupCharacters();

        // Получение списка групп
        [OperationContract]
        [ApplyDataContractResolver]
        IList<GroupCreditWorthiness> GetGroupCreditWorthinesss();

        // Получение группы по Id
        [OperationContract]
        [ApplyDataContractResolver]
        GroupCreditWorthiness FirstGroupCreditWorthiness(int id);

        // Получение группы по Name
        [OperationContract]
        [ApplyDataContractResolver]
        GroupCreditWorthiness FirstGroupCreditWorthinessByName(string name);


        // Добавление сотрудника
        [OperationContract]
        [ApplyDataContractResolver]
        int AddUser(User model);

        // Добавление группы
        [OperationContract]
        [ApplyDataContractResolver]
        int AddGroupCreditWorthiness(GroupCreditWorthiness model);

        // Добавление параметров группы
        [OperationContract]
        [ApplyDataContractResolver]
        int AddGroupCharacter(GroupCharacter model);

        // Добавление кредита
        [OperationContract]
        [ApplyDataContractResolver]
        int AddCredit(Credit model);

        // Добавление платежа
        [OperationContract]
        [ApplyDataContractResolver]
        int AddPayment(Payment model);


         // Добавление состояния-кредит
        [OperationContract]
        [ApplyDataContractResolver]
        int AddConditionCredit(ConditionCredit model);


        // удаление сотрудника
        [OperationContract]
        [ApplyDataContractResolver]
        bool DeleteUser(User model);

        // удаление группы
        [OperationContract]
        [ApplyDataContractResolver]
        bool DeleteGroupCreditWorthiness(GroupCreditWorthiness model);

         // удаление параметров группы
        [OperationContract]
        [ApplyDataContractResolver]
        bool DeleteGroupCharacter(GroupCharacter model);

        // удаление кредита
        [OperationContract]
        [ApplyDataContractResolver]
        bool DeleteCredit(Credit model);


        // Редактирование сотрудника
        [OperationContract]
        [ApplyDataContractResolver]
        bool UpdateUser(User model);

        // Редактирование группы
        [OperationContract]
        [ApplyDataContractResolver]
        bool UpdateGroupCreditWorthiness(GroupCreditWorthiness model);

        // Редактирование параметров группы
        [OperationContract]
        [ApplyDataContractResolver]
        bool UpdateGroupCharacter(GroupCharacter model);

        // Редактирование кредита
        [OperationContract]
        [ApplyDataContractResolver]
        bool UpdateCredit(Credit model);

         // Редактирование платежа
        [OperationContract]
        [ApplyDataContractResolver]
        bool UpdatePayment(Payment model);


        // Проверка, есть ли группа в БД
        [OperationContract]
        [ApplyDataContractResolver]
        bool IsHasGroupByGroupName(string name);

        // Алгоритм определения группы платежёспособности
        [OperationContract]
        [ApplyDataContractResolver]
        IList<GroupCharacter> AlgorirmForGroup(int revenueYear, string sex, int age, int children, string married);

        // Алгоритм определения экономических показателей (платёжеспособность и макс. сумма кредита)
        [OperationContract]
        [ApplyDataContractResolver]
        int[] AlgoritmEconomicValue(int revenueMonth, int month, int stavka);

        // Алгоритм расчёта ежемесячного платежа
        [OperationContract]
        [ApplyDataContractResolver]
        int AlgoritmMonthPay(int summa, int stavka, int month);

        // Алгоритм расчёта графика платежей
        [OperationContract]
        [ApplyDataContractResolver]
        List<Payment> CalculationPayment(int summaFull, int summaMonth, int stavka, int month, DateTime data);

        // Алгоритм поиска платежа
        [OperationContract]
        [ApplyDataContractResolver]
        Payment SearchPayment(int idCredit);

        // Кол-во кредитов пользователя
        [OperationContract]
        [ApplyDataContractResolver]
        int GetCountCredit(int idUser);

        // Общая сумма кредитов пользователя
        [OperationContract]
        [ApplyDataContractResolver]
        int GetFullSummaCredits(int idUser);

        // Остаток выплат по кредитам пользователя
        [OperationContract]
        [ApplyDataContractResolver]
        int GetLostSummaCredits(int idUser);
    }
}
