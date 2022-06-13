trigger stockVehiculo on Opportunity (after insert) {

    List<Opportunity> listaNueva = trigger.new;
    Map<Id, Opportunity> listaVieja = trigger.oldMap;

    For (Opportunity c : listaNueva){

        if (listaVieja.get(c.Id)){
            break;

            } 

        VEHICULO_ForceTransport__c auto = [SELECT id, name, stock FROM VEHICULO_ForceTransport__c WHERE name == c.VEHICULO_ForceTransport__c.name];
             
        auto.stock -1;

        }

    update auto;    


}