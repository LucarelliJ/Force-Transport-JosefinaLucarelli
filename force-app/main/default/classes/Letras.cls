public  class Letras {
  
   @future(callout=true);
   public static void getSongAsinc(String nombre, String artista, id Idcancion){
      getLetra(nombre, artista, Idcancion);

   }
  public static lyricss getLetra(String nombre, String artista, id Idcancion){
    Http http = new http();
    HttpRequest Request = new HttpRequest();

    lyricss su = new  lyricss();    

    Request.setEndpoint('https://api.lyrics.ovh/v1/'+nombre+'/'+artista);

    Request.setMethod('GET');

    HttpResponse Responde = http.send(request);
   
  
    String respuesta = Responde.getBody();
  

    su = (lyricss) JSON.deserializeStrict(respuesta, lyricss.class);

    Cancion__c cancion = new Cancion__c(Id = IdCancion , Letra__c = su.lyrics);
    if () {
      update cancion;
    }
 
    return su;
   
    

 }

 public class lyricss{
   
    public String lyrics{get;set;}
 }
}
