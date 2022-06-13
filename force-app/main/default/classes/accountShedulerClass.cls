global class accountShedulerClass implements Schedulable
{
    global void execute(SchedulableContext SC)
    {
            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
<<<<<<< HEAD
            String[] toAddresses = new String[] {'pflores@powersolution.com.ar'}; 
            String[] ccAddresses = new String[] {'pflores@powersolution.com.ar'};
            
            mail.setToAddresses(toAddresses);
            mail.setCcAddresses(ccAddresses);
            mail.setReplyTo('pflores@powersolution.com.ar');
=======
            String[] toAddresses = new String[] {'sergio.baca@me.com'}; 
            String[] ccAddresses = new String[] {'sergi65@gmail.com'};
            
            mail.setToAddresses(toAddresses);
            mail.setCcAddresses(ccAddresses);
            mail.setReplyTo('sergio.baca@me.com');
>>>>>>> d07efdc745928a15a64ea49993545fb6161aefb7
            mail.setSenderDisplayName('Curso Power Solutions');
            mail.setSubject('Hola Clase programable');
            mail.setBccSender(false);
            mail.setUseSignature(false);
            mail.setPlainTextBody('Curso Power Solutions');

            mail.setHtmlBody('Your case:<b> </b>has been created.<p>'+
                'To view your case <a href=https://MyDomainName.my.salesforce.com/>click here.</a>');

            // Send the email you have created.
            Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
    }
<<<<<<< HEAD
}
=======
}
>>>>>>> d07efdc745928a15a64ea49993545fb6161aefb7
