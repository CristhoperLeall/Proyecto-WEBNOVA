const contenedorTarjetas = document.getElementById("productos-container")

/** Crea las tarjetas de productos teniendo en cuenta la lista en Componentes.js */
function crearTarjetasProductos(productos){
  productos.forEach(producto => {
    const nuevoComponente = document.createElement("div");
    nuevoComponente.classList = "tarjeta-producto"
    nuevoComponente.innerHTML = `
    <img src="./img/${producto.id}.png" alt="">
    <h3>${producto.nombre}</h3>
    <p class="precio">${producto.precio}</p>
    <button>Agregar al carrito</button>`
    contenedorTarjetas.appendChild(nuevoComponente);
    nuevoComponente.getElementsByTagName("button")[0].addEventListener("click",() => agregarAlCarrito(producto))
  });
}
crearTarjetasProductos(componente);