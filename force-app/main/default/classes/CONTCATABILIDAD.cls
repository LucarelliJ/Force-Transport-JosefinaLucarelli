public with sharing class CONTCATABILIDAD {
    @AuraEnabled
    public static string methodName(){
        try {
            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    public CONTCATABILIDAD() {

    }
}
