document.addEventListener("DOMContentLoaded", function() {
const contenedorTarjetas = document.getElementById("productos-container");
const cantidadElement = document.getElementById("cantidad");
const precioElement = document.getElementById("precio");
const carritoVacioElement = document.getElementById("carrito-vacio");
const totalesElement = document.getElementById("totales");
const reiniciarCarritoElement = document.getElementById("reiniciar");

  function crearTarjetasProductos() {
    contenedorTarjetas.innerHTML = "";
    const productos = JSON.parse(localStorage.getItem("componente"));
    console.log(productos)
    if (productos && productos.length > 0) {
      productos.forEach(producto => {
        if (!producto.id || !producto.nombre || !producto.precio) {
          console.error("Producto inválido:", producto);
          return;
        }
        const nuevoComponente = document.createElement("div");
        nuevoComponente.classList.add("tarjeta-producto");
        nuevoComponente.innerHTML = `
          <img src="./img/${producto.id}.png">
          <h3>${producto.nombre}</h3>
          <p class="precio">${producto.precio}</p>
          <div>
            <button class="restar">-</button>
            <span class="cantidad">${producto.cantidad}</span>
            <button class="agregar">+</button>
          </div>`;
        contenedorTarjetas.appendChild(nuevoComponente);
        const agregarBtn = nuevoComponente.querySelector(".agregar");
        const restarBtn = nuevoComponente.querySelector(".restar");
        const cantidadSpan = nuevoComponente.querySelector(".cantidad");

        agregarBtn.addEventListener("click", () => {
          agregarAlCarrito(producto);
          cantidadSpan.innerText = parseInt(cantidadSpan.innerText) + 1;
          actualizarTotales();
        });

        restarBtn.addEventListener("click", () => {
          restarAlCarrito(producto);
          cantidadSpan.innerText = parseInt(cantidadSpan.innerText) - 1;
          crearTarjetasProductos();
          actualizarTotales()
        });
      });
    }
  }

  crearTarjetasProductos();
  actualizarTotales()

function actualizarTotales(){
  const productos = JSON.parse(localStorage.getItem("componente"));
  let cantidad = 0;
  let precio = 0;
  if(productos && productos.length>0){
    productos.forEach(producto =>{
      cantidad += producto.cantidad;
      precio += producto.precio * producto.cantidad;
    })
    cantidadElement.innerText = cantidad;
    precioElement.innerText = precio;
  }
  revisarMensajeVacio();
}

function revisarMensajeVacio(){
  const productos = JSON.parse(localStorage.getItem("componente"));
  console.log(productos, productos == true)
  carritoVacioElement.classList.toggle("escondido",productos && productos.length>0);
  totalesElement.classList.toggle("escondido",!(productos && productos.length>0));
}

revisarMensajeVacio();

reiniciarCarritoElement.addEventListener("click",reiniciarCarrito);
function reiniciarCarrito(){
  localStorage.removeItem("componente");
  actualizarTotales();
  crearTarjetasProductos();
}

});

