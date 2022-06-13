public with sharing class vehiculoDisponible {


    private List<Opportunity> listaO;
    private Integer fechaRetiroMaria;
    private Integer fechaDevolucionMaria;

    public vehiculoDisponible() {

    }


    public void verificacionVehiculo(Opportunity o){

        listaO = [SELECT Id, Name, StageName, Fecha_de_Retiro__c, Fecha_de_Devolucion__c, VEHICULO_ForceTransport__r.Id, VEHICULO_ForceTransport__r.Name FROM Opportunity];

        for(Opportunity op: listaO){

            if ((o.Fecha_de_Retiro__c <= op.Fecha_de_Retiro__c && o.Fecha_de_Retiro__c <= op.Fecha_de_Devolucion__c) || 
            (o.Fecha_de_Retiro__c >= op.Fecha_de_Retiro__c && o.Fecha_de_Retiro__c <= op.Fecha_de_Devolucion__c)) {

                addError('ERROR');
                
            }

        }

    }
}