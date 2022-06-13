import { LightningElement, track, api } from 'lwc';
import fetchDataHelper from './fetchDataHelper';
import getSongSync from '@salesforce/apex/songs.getSongSync';


export default class BuscarCancion extends LightningElement {
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
<<<<<<< HEAD
        debugger;
=======
        await setSongSync({ autor: this.artista, cancion: this.cancion, letra: this.letra });
        alert('Funciono!!!!!!!!');
>>>>>>> c5a9618a9c9f7e1f538d1014d5e3e489d4e2118b
    }

    LlamarApex() {
        getSongSync({ autor: this.artista, cancion: this.cancion , IdCancion: 'null', act: 'false' })
            .then(result => {
                this.letra = result;
            })
            .catch(error => {
                this.error = error;
            });
    }

}