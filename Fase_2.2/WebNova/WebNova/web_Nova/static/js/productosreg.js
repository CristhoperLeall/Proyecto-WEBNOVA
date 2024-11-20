function mostrarFormulario() {
    // Oculta todos los formularios
    document.querySelectorAll('.componente-form').forEach(form => {
        form.style.display = 'none';
    });

    // Muestra el formulario según el tipo de componente seleccionado
    const tipoComponente = document.getElementById('tipoComponente').value;
    if (tipoComponente === 'procesador') {
        document.getElementById('formProcesador').style.display = 'flex'
    } else if (tipoComponente === 'tarjeta_grafica') {
        document.getElementById('formTarjetaGrafica').style.display = 'flex';
    } else if (tipoComponente === 'memoria_ram') {
        document.getElementById('formMemoriaRAM').style.display = 'flex';
    } else if (tipoComponente === 'almacenamiento') {
        document.getElementById('formAlmacenamiento').style.display = 'flex';
    } else if (tipoComponente === 'placamadre') {
        document.getElementById('formPlacamadre').style.display = 'flex';
    } else if (tipoComponente === 'fuentepoder') {
        document.getElementById('formFuentepoder').style.display = 'flex';
    } else if (tipoComponente === 'pantalla') {
        document.getElementById('formPantalla').style.display = 'flex';
    }
}


function registrarComponente() {
    // Obtén el tipo de componente seleccionado
    const tipoComponente = document.getElementById('tipoComponente').value;
    let datos = { tipo: tipoComponente };

    // Captura los datos del formulario correspondiente
    if (tipoComponente === 'procesador') {
        datos.marca = document.getElementById('marcaProcesador').value;
        datos.modelo = document.getElementById('modeloProcesador').value;
        datos.nucleos = document.getElementById('nucleos').value;
        datos.velocidad = document.getElementById('velocidad').value;
        datos.descripcion = document.getElementById('descripcion').value;
        datos.img = document.getElementById('img').value;
    } else if (tipoComponente === 'tarjeta_grafica') {
        datos.marca = document.getElementById('marcaTarjeta').value;
        datos.modelo = document.getElementById('modeloTarjeta').value;
        datos.memoria = document.getElementById('memoriaGrafica').value;
        datos.descripcion = document.getElementById('descripcion').value;
        datos.img = document.getElementById('img').value;
    } else if (tipoComponente === 'memoria_ram') {
        datos.marca = document.getElementById('marcaRAM').value;
        datos.capacidad = document.getElementById('capacidadRAM').value;
        datos.tipo = document.getElementById('tipoRAM').value;
        datos.velocidad = document.getElementById('velocidadRAM').value;
        datos.descripcion = document.getElementById('descripcion').value;
        datos.img = document.getElementById('img').value;
    } else if (tipoComponente === 'almacenamiento') {
        datos.marca = document.getElementById('marcaAlmacenamiento').value;
        datos.capacidad = document.getElementById('capacidadAlmacenamiento').value;
        datos.tipo = document.getElementById('tipoAlmacenamiento').value;
        datos.descripcion = document.getElementById('descripcion').value;
        datos.img = document.getElementById('img').value;
    } else if (tipoComponente === 'placamadre') {
        datos.marca = document.getElementById('marcaPlacaMadre').value;
        datos.modelo = document.getElementById('modeloPlacaMadre').value;
        datos.socket = document.getElementById('socketPlacaMadre').value;
        datos.chipset = document.getElementById('chipsetPlacaMadre').value;
        datos.tipo = document.getElementById('tipoMemoria').value;
        datos.exp = document.getElementById('puertosExp').value;
        
        datos.descripcion = document.getElementById('descripcion').value;
        datos.img = document.getElementById('img').value;
    } else if (tipoComponente === 'fuentepoder') {
        datos.marca = document.getElementById('marcaFuente').value;
        datos.modelo = document.getElementById('modeloFuente').value;
        datos.potencia = document.getElementById('potenciaFuente').value;
        datos.certificacion = document.getElementById('certificacionFuente').value;
        datos.modular = document.getElementById('modularFuente').value;
        datos.descripcion = document.getElementById('descripcion').value;
        datos.img = document.getElementById('img').value;
    } else if (tipoComponente === 'pantalla') {

        datos.descripcion = document.getElementById('descripcion').value;
        datos.img = document.getElementById('img').value;
    }


    // Agrega más else if para otros formularios

    // Muestra los datos en la consola (puedes reemplazar esto con otra acción)
    console.log("Datos del componente registrado:", datos);
}