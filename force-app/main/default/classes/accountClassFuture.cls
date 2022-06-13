<<<<<<< HEAD
global class accountClassFuture {
    @future
    public static void myFuture(Id IdCliente){
        
        list<Messaging.SingleEmailMessage> mess = new List<Messaging.SingleEmailMessage>();
        String[] toAddresses = new String[] {'sergio.baca@me.com'}; 
        
        for(Account Acclist : (List<Account>) JSON.deserialize(IdCliente, List<Account>.class)) //volverlo tipo objeto 
=======
global class accountClassFuture 
{
    @future
    public static void myFuture(String IdCliente)
    {
        list<Messaging.SingleEmailMessage> mess = new List<Messaging.SingleEmailMessage>();
<<<<<<< HEAD
        String[] toAddresses = new String[] {'sergio.baca@me.com'}; 
        
        for(Account Acclist : (List<Account>) JSON.deserialize(IdCliente, List<Account>.class))
        {
=======
        String[] toAddresses = new String[] {'jpostigo@powersolution.com.ar'}; 

        
        for(Account Acclist : (List<Account>) JSON.deserialize(IdCliente, List<Account>.class))
>>>>>>> d07efdc745928a15a64ea49993545fb6161aefb7
        {

           if (Acclist.Id != null)  {

>>>>>>> 843ce3728f867780442ccbfb660f3a078525584e
            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            mail.setToAddresses(toAddresses);
            mail.setSubject('Hola Sergio, se creo el cliente '+Acclist.name);
            mail.setPlainTextBody('Me gusta apex por facil');
            mess.add(mail);
        }
<<<<<<< HEAD
        Messaging.sendEmail( mess);
=======

        }

        Messaging.sendEmail(mess);
>>>>>>> 843ce3728f867780442ccbfb660f3a078525584e
    }
<<<<<<< HEAD
    
=======
>>>>>>> d07efdc745928a15a64ea49993545fb6161aefb7
}
