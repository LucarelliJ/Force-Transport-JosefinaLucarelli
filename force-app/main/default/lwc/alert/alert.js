import { LightningElement ,api,wire,track} from 'lwc';
<<<<<<< HEAD
import getFactura from '@salesforce/apex/alert.getFactura';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class Contability extends LightningElement { 
    @track datita 
    @track Error  
    @api recordId;  
 //toast
 showWarningToast() {
    const evt = new ShowToastEvent({    
        title:'¡Factura Impaga!', 
        variant: 'error',
        mode: 'dismissable' //Permanece visible hasta que presione el botón de cerrar 
    });
    this.dispatchEvent(evt);
}
=======

import getFactura from '@salesforce/apex/alert.getFactura';

import { ShowToastEvent } from 'lightning/platformShowToastEvent';



export default class Contability extends LightningElement {

    @track datita

    @track Error  

    @api recordId;  

 //toast

 showWarningToast() {

    const evt = new ShowToastEvent({    

        title:'¡LA FACTURA NO SE ENCUENTRA PAGADA!',

        variant: 'error',

        mode: 'dismissable' //Permanece visible hasta que presione el botón de cerrar

    });

    this.dispatchEvent(evt);

}

>>>>>>> 6b7be628d003424131a6921636ac5e1fb7348b75
//fin





<<<<<<< HEAD
    @wire(getFactura, {idObject: '$recordId'})    
    wiredAccounts({error,data}){
        if (data) {
            console.log(data)
        this.datita = data         
        data.forEach(dato => { 
            if (dato.Factura__c == false) {
               console.log('asd')
              this.showWarningToast()
            } else { console.log ('ojo')}
        })        
    }
        else {
       
        this.Error = error
    }


}
}
 
=======


    @wire(getFactura, {idObject: '$recordId'})    

    wiredAccounts({error,data}){

        if (data) {

            console.log(data)

        this.datita = data        

        data.forEach(dato => {

            if (dato.Factura_Pagada__c == false) {

               console.log('asd')

              this.showWarningToast()

            } else { console.log ('ojo')}

        })        

    }

        else {

       

        this.Error = error

    }




}

}
>>>>>>> 6b7be628d003424131a6921636ac5e1fb7348b75
