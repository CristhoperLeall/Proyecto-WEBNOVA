const contenedorTarjetas = document.getElementById("productos-section");

function crearTarjetasProductos(productos) {
    productos.forEach(producto => {
        const nuevoComponente = document.createElement("div");
        nuevoComponente.classList = "tarjeta-producto";
        nuevoComponente.innerHTML = `
            <img src='/static/img/${producto.id}.png' alt="">
            <h3>${producto.nombre}</h3>
            <p class="precio">${producto.precio}</p>
            <button class="button-p">Agregar al carrito</button>`;
        contenedorTarjetas.appendChild(nuevoComponente);

        nuevoComponente.getElementsByTagName("button")[0].addEventListener("click", () => agregarAlCarrito(producto));
    });
}

crearTarjetasProductos(productos);


const fotonButton = document.querySelector('.foton');
const filtrosContainer = document.querySelector('.filtro-section');

// Verificamos que el fotonButton y filtrosContainer existan
if (fotonButton && filtrosContainer) {
    // Añadimos un evento de clic al foton
    fotonButton.addEventListener('click', () => {
        // Alternamos la visibilidad de los filtros
        if (filtrosContainer.style.display === 'none') {
            filtrosContainer.style.display = 'flex';  // Muestra los filtros
        } else {
            filtrosContainer.style.display = 'none';  // Oculta los filtros
        }

        // Alternamos la clase 'active' para cambiar el estilo del botón
        fotonButton.classList.toggle('active');
    });
}

