public with sharing class accountHelper {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountList(string idObject) {
         list <Account> cuentas = new list<Account>();
         for (Account cuenta : [SELECT Id, Name, Type, Rating,
         Phone, Website, AnnualRevenue
            FROM Account where Id = :idObject]) {
            cuentas.add(cuenta);

         }       

        return cuentas;

    }
 
}
