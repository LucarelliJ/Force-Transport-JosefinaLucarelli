public with sharing class Sumar {
<<<<<<< HEAD

  private List<Suma__c> lista = new List<Suma__c>();
  private static  Sumar instance  = null;  
 
  private Sumar(List<Suma__c>lista) {
      this.lista = lista;

  }
  

  public static Sumar getInstance(List<Suma__c>lista){
    if(instance  == null){
      instance = new Sumar(lista); 
    }
    return instance;
  }

  private  void sumarTrigg(){

    for (Suma__c sum : this.lista) {
 
      sum.Resultado__c = sum.valor1__c + sum.valor2__c;
      
  }
    //for (Integer i = 0; i < this.lista.size(); i++) {
        //this.lista[i].Resultado__c =  this.lista[i].valor1__c +  this.lista[i].valor2__c;
       
      }
 

public void getSuma(){
     sumarTrigg();
  }
}
=======
    private  List<Suma__c> lista = new List<Suma__c>();
  
    private static  Sumar instance  = null;    
    private Sumar(List<Suma__c>lista) {
        this.lista = lista;  
    }  
    public static Sumar getInstance(List<Suma__c>lista){
  
      if(instance  == null){
        instance = new Sumar(lista);
      }
      return instance;
    }
  
    private  void sumarTrigg(){  
      for (Integer i = 0; i < this.lista.size(); i++) { 
          this.lista[i].Resultado__c =  this.lista[i].n1__c +  this.lista[i].n2__c;
        }
   }
  
  public void getSuma(){
       sumarTrigg();
    }  
  }
>>>>>>> 6b7be628d003424131a6921636ac5e1fb7348b75
