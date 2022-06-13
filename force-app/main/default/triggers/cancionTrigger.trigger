trigger cancionTrigger on Cancion__c (after insert,after update) {

    Cancion__c c = trigger.new[0];
    if (c.Letra__c == null) {
        Letras.getLetra(c.Artista__c , c.Cancion__c, c.Id);

    }
    
}