global class   CumpleShudulerClass implements Schedulable {
global void execute(SchedulableContext SC){


    Date tday = System.today();
    Integer day = tday.day();
    Integer month = tday.month();
     
  
    list<Messaging.SingleEmailMessage> mess = new List<Messaging.SingleEmailMessage>();
  

    List<Contact> listContacts = [SELECT id, name,birthdate, Dia__c, Mes__c FROM contact];
    
    for (Contact c : listContacts) {
        if (c.Dia__c==day && c.Mes__c==month){
           
            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            String[] toAddresses = new String[] {c.email}; 
            mail.setToAddresses(toAddresses);
            mail.setSubject('Feliz Cumple!!!!!! Que cumplas para atras');
            mail.setPlainTextBody('Me gusta apex, no es tan facil');
            mess.add(mail);
        }
    }
    Messaging.sendEmail( mess);

    

    
   


 }
}
