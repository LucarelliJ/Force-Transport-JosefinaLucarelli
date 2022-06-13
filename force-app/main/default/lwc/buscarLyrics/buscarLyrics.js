import { api, LightningElement, track } from 'lwc';
import fetchDataHelper from './fetchDataHelper';
//import getSongSync from '@salesforce/apex/songs.getSongSync';
import setSongSync from '@salesforce/apex/songs.setSongSync';

export default class BuscarLyrics extends LightningElement {
    @api artista;
    @api cancion;
    @track letra;   
    @track error;

    handleArtistaChange(event) {
        this.artista = event.target.value;
    }
    handleCancionChange(event) {
        this.cancion = event.target.value;
    }

    async handleClick(event) {
        const data = await fetchDataHelper(this.artista, this.cancion);
        this.letra = JSON.stringify(data.lyrics);
        await setSongSync({ autor: this.artista, cancion: this.cancion, letra: this.letra });
        alert('Funciono!!!!!!!!');
       
    }

    /* LlamadaApex(){
    getSongSync({ autor: this.artista, cancion: this.cancion, IdCancion: 'null', act: 'false' })
    .then(result => {
        this.letra = result;
    })
    .catch(error => {
        this.error = error;
    }); 
 
    } */

}