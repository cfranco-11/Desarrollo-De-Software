/* Try catch */

/* console.log(3);

try {
    imprimir()
} catch (error) {
    
}

console.log(5); */

/* const url = 'https://www.themealdb.com/api/json/v1/1/categories.php';

document.addEventListener('DOMContentLoaded', getData()) */

/* 
function getData(){
    fetch(url)
    .then(result => result.json ())
    .then(datos => console.log(datos))
} */

/* Fetch con async await*/

/* async function getData() {
    try {
        const response = await fetch(url);
        const datos = await response.json();
        console.log(datos.categories);
    } catch (error) {
        
    }
} */
const url = 'https://api.spacexdata.com/v3/launches'

document.addEventListener('DOMContentLoaded', getData())

async function getData(){
    try {
        const recurso = await fetch(url); //Conexión al recurso
        const datos = await recurso.json(); //Consumo del recurso
        console.log(datos);
        hacerCards(datos);
    } catch (error) {
        
    }
}

function hacerCards(datos){
    
    const contenedor = document.querySelector('#container');

    datos.forEach(e => {
        const {mission_name, launch_year} = e
        const {mission_patch} = e.links
        
        const contenedorDivs = document.createElement('div');
        
        contenedorDivs.innerHTML= `
        <div class="card" style="width: 18rem;">
        <img src="${mission_patch}" class="card-img-top" alt="...">
        <div class="card-body">
        <h5 class="card-title">${mission_name}</h5>
        <p class="card-text">${launch_year}</p>
        <button type="button" class="btn btn-primary btn1" data-bs-toggle="modal" data-bs-target="#exampleModal">
        Ver Info-Mision
        </button>
        </div>
        </div>
        `
        contenedor.appendChild(contenedorDivs)
    });
}

const flight_number = e

