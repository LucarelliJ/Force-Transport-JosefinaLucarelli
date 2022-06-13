@Istest
public  class accountShedulerClassTest {

    public static String CRON_EXP = '0 0 0 13 5 ? 2022';
    static testMethod void testRunsScheduled() {
    
       
        Contact acc = new Contact(Email = 'email@powersolution.com');
        insert acc;
        
        Test.startTest();
        String jobId = System.schedule('email@powersolution.com', CRON_EXP, new accountShedulerClass());
        System.debug(jobId);
        Contact contacto = [SELECT Id, Email from Contact WHERE Id =: jobId];

        System.assertEquals(0,contacto , 'Contacto exist before job has run');
      
        Test.stopTest();



    }
   
}
