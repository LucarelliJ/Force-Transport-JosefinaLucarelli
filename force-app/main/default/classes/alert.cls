public with sharing class alert {
<<<<<<< HEAD
    @AuraEnabled(cacheable=true)
    public static List<FACTURA_ForceTransport__c> getFactura(string idObject) {    
    list <FACTURA_ForceTransport__c> factura = new list<FACTURA_ForceTransport__c>();
    
    for (FACTURA_ForceTransport__c fc :[SELECT Factura__c FROM FACTURA_ForceTransport__c WHERE Account__c =:idObject]) {
    factura.add(fc);
    }
    system.debug(factura);

    return factura;
    }
    } 
=======

    @AuraEnabled(cacheable=true)

    public static List<Factura__c> getFactura(string idObject) {    

    list <Factura__c> factura = new list<Factura__c>();

    for (Factura__c fc :[SELECT Factura_Pagada__c FROM Factura__c WHERE Account__c =:idObject]) {

    factura.add(fc);

    }

    system.debug(factura);

   

    return factura;

    }

    }
>>>>>>> 6b7be628d003424131a6921636ac5e1fb7348b75
