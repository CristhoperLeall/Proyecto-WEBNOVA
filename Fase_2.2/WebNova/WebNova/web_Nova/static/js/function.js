


function validarFecha(){
    var fechaForm = document.getElementById("birthdate").value;
    var fechaSistema = new Date();

    if(fechaMia.length == 0) {
        alert("fecha de nacimiento Error")
        return false
    }

    var mes = fechaForm.slice(0, 4);   
    var ano = fechaForm.slice(5, 7);
    var dia = fechaForm.slice(8, 10);

    var fechaMia = new Date(ano, (mes - 1), dia);

    if(fechaMia > fechaSistema){
        alert("Fecha no Compatible");
        return false;
    }

    var unDia = 24 * 60 * 60 * 1000;
    var diferencia = Math.abs((fechaSistema.getTime() - fechaMia.getTime())/ unDia);
    var anos = Math.round(diferencia / 365);
    alert("Años:" + anos);

    return true;
}

function validarTodo(){
    var resp;
    resp = validarRut();
    if (resp == false){
        return false;
    }
    resp = validarFecha();
    if (resp == false){
        return false;
    }
    return true;
}


/** Registro de usuario */




const firstName = document.getElementById("#first-name");    
const secondName = document.getElementById("#second-name");    
const rut = document.getElementById("#rut");
const email = document.getElementById("#email");
const birthdate = document.getElementById("#birtdate");
const password = document.getElementById("#password");
const confirmPassword = document.getElementById("#confirm-password");

