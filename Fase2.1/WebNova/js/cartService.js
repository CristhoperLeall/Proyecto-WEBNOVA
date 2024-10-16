const cuentaCarritoElement = document.getElementById("cuentaCarrito");

function agregarAlCarrito(producto){
    const memoria = JSON.parse(localStorage.getItem("componente"));
    console.log(memoria);
    let cuenta = 0;
    if(!memoria){
        const nProducto = getNuevoProductoParaMemoria(producto);
        localStorage.setItem("componente",JSON.stringify([nProducto]));
        cuenta = 1;
    } else{
        const indiceProducto = memoria.findIndex(componente => componente.id === producto.id);
        console.log(indiceProducto);
        const nuevaMemoria = memoria;
        if(indiceProducto === -1){
            nuevaMemoria.push(getNuevoProductoParaMemoria(producto));
            cuenta = 1;
        } else{
            nuevaMemoria[indiceProducto].cantidad ++;
            cuenta = nuevaMemoria[indiceProducto].cantidad;
        }
        localStorage.setItem("componente",JSON.stringify(nuevaMemoria));
    }
    actualizarNumCarrito();
    return cuenta;
}

function restarAlCarrito(producto){
    const memoria = JSON.parse(localStorage.getItem("componente"));
    const indiceProducto = memoria.findIndex(componente => componente.id === producto.id);
    if(memoria[indiceProducto].cantidad == 1){
        memoria.splice(indiceProducto, 1)
    } else {
        memoria[indiceProducto].cantidad --;
    }
    localStorage.setItem("componente",JSON.stringify(memoria));
    actualizarNumCarrito();

}

function getNuevoProductoParaMemoria(producto){
    const nProducto = producto;
    nProducto.cantidad = 1;
    return nProducto;
}

document.addEventListener("DOMContentLoaded", function() {
    actualizarNumCarrito();
  });

function actualizarNumCarrito(){
    const cuentaCarritoElement = document.getElementById("cuentaCarrito");
    const memoria = JSON.parse(localStorage.getItem("componente"))
    if (memoria !== null) {
        const cuenta = memoria.reduce((acum, current) => acum+current.cantidad, 0);
        cuentaCarritoElement.innerText = cuenta;
    }  
}


