trigger CUENTAlEAD on Account(before insert) {

    List<Account> listaA = trigger.new;

    for (Account a: listaA) {

        a.a.LeadS__r.tipo_de_servicio__c 
        
    }



}