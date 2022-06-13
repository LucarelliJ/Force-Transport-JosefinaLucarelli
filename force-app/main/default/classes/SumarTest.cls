@isTest
public  class SumarTest {
    
    @TestSetup
    static void makeData(){
    
    List<Suma__c> lista = new List<Suma__c>();
    
     for (integer i = 0; i < 200; i++) {
         lista.add(new Suma__c(valor1__c =i, valor2__c=1+i));
         
     }
     System.debug(lista);
     Database.insert(lista);
     
    }

    static testMethod void  hacersumaOK(){
      List<Suma__c> listasumar = Database.query('select valor1__c, valor2__c from Suma__c');
      Sumar.getInstance(listasumar).getSuma();

    }
}
