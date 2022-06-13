@IsTest
public class CumpleShudulerClassTest {

     @TestSetup
     static void makeData(){
         
        List<Contact> contatc = new List<Contact>();
        for (Integer i = 0; i < 10; i++) {
            contatc.add(new Contact(Salutation = 'Mr', FirstName = 'Pablo', LastName='Flores', Email = 'mego@gmail.com', Birthdate= date.today()));
        }
          Database.insert(contatc);

        
         

     }
     
     static testmethod void sendEmailTest(){
        
        List<Contact> listcont = Database.query('SELECT Id , Mes__c, Dia__c FROM Contact');
        CumpleShudulerClass cumple = new CumpleShudulerClass();
        cumple.execute(SC);
     }
     
    
}
