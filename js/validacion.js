window.onload = function(){
    document.getElementById('DNI_parti').addEventListener("focusout", validarDniBueno);
    document.getElementById('fecha_nacimiento').addEventListener("focusout", categoria);
    document.getElementById('DNI_parti').addEventListener("focusout", validarDNI);
    
}

function validacionForm() {
        // variables 
        var email=document.getElementById('email_parti').value;
        var nombre=document.getElementById('nom_parti').value;
        var dni=document.getElementById('DNI_parti').value;
        var apellido=document.getElementById('apellido_parti').value;
        var apellido2=document.getElementById('apellido2_parti').value;
        var fecha=document.getElementById('fecha_nacimiento').value;
    if (email == '' && nombre == '' && dni == '' && apellido == '' && apellido2 == '' && fecha == '') {
        // si la contraseña y el correo estan vacios mostrar los dos campos en rojo y un mensaje en rojo
        document.getElementById("message").innerHTML = 'Inténtelo de nuevo.';
        document.getElementById("nom_parti").style.borderColor = "red";
        document.getElementById("email_parti").style.borderColor = "red";
        document.getElementById("DNI_parti").style.borderColor = "red";
        document.getElementById("apellido_parti").style.borderColor = "red";
        document.getElementById("apellido2_parti").style.borderColor = "red";
        document.getElementById("fecha_nacimiento").style.borderColor = "red";
    } else if (dni == '') {
        // si la password esta vacio mostrar el campo en rojo y un mensaje en rojo
        document.getElementById("message").innerHTML = 'Te has dejado el DNI vacio.';
        document.getElementById("nom_parti").style.borderColor = "white";
        document.getElementById("email_parti").style.borderColor = "white";
        document.getElementById("DNI_parti").style.borderColor = "red";
        document.getElementById("apellido_parti").style.borderColor = "white";
        document.getElementById("apellido2_parti").style.borderColor = "white";
        document.getElementById("fecha_nacimiento").style.borderColor = "white";
    }else if (nombre == '') {
        // si la password esta vacio mostrar el campo en rojo y un mensaje en rojo
        document.getElementById("message").innerHTML = 'Te has dejado el nombre vacio.';
        document.getElementById("nom_parti").style.borderColor = "red";
        document.getElementById("email_parti").style.borderColor = "white";
        document.getElementById("DNI_parti").style.borderColor = "white";
        document.getElementById("apellido_parti").style.borderColor = "white";
        document.getElementById("apellido2_parti").style.borderColor = "white";
        document.getElementById("fecha_nacimiento").style.borderColor = "white";
    } else if (apellido == '') {
        // si la password esta vacio mostrar el campo en rojo y un mensaje en rojo
        document.getElementById("message").innerHTML = 'Te has dejado el apellido sin rellenar.';
        document.getElementById("nom_parti").style.borderColor = "white";
        document.getElementById("email_parti").style.borderColor = "white";
        document.getElementById("DNI_parti").style.borderColor = "white";
        document.getElementById("apellido_parti").style.borderColor = "red";
        document.getElementById("apellido2_parti").style.borderColor = "white";
        document.getElementById("fecha_nacimiento").style.borderColor = "white";
    }else if (apellido2 == '') {
        // si la password esta vacio mostrar el campo en rojo y un mensaje en rojo
        document.getElementById("message").innerHTML = 'Te has dejado el apellido sin rellenar.';
        document.getElementById("nom_parti").style.borderColor = "white";
        document.getElementById("email_parti").style.borderColor = "white";
        document.getElementById("DNI_parti").style.borderColor = "white";
        document.getElementById("apellido_parti").style.borderColor = "white";
        document.getElementById("apellido2_parti").style.borderColor = "red";
        document.getElementById("fecha_nacimiento").style.borderColor = "white";
    }
    else if (email == '' ) {
        // si el correo esta vacio mostrar el campo en rojo y un mensaje en rojo
        document.getElementById("message").innerHTML = 'Te has dejado el email vacio.';
        document.getElementById("email_parti").style.borderColor = "red";
        document.getElementById("nom_parti").style.borderColor = "white";
        document.getElementById("DNI_parti").style.borderColor = "white";
        document.getElementById("apellido_parti").style.borderColor = "white";
        document.getElementById("apellido2_parti").style.borderColor = "white";
        document.getElementById("fecha_nacimiento").style.borderColor = "white";
    } else if (fecha == '') {
        // si la password esta vacio mostrar el campo en rojo y un mensaje en rojo
        document.getElementById("message").innerHTML = 'Te has dejado la contraseña vacia.';
        document.getElementById("nom_parti").style.borderColor = "white";
        document.getElementById("email_parti").style.borderColor = "white";
        document.getElementById("DNI_parti").style.borderColor = "white";
        document.getElementById("apellido_parti").style.borderColor = "white";
        document.getElementById("apellido2_parti").style.borderColor = "white";
        document.getElementById("fecha_nacimiento").style.borderColor = "red";
    } else{
        return true;
    }

    
    document.getElementById("message").style= "background-color: #FFB0AE; border-radius: 5px; padding: 13px; width:53%;";
    return false;
}

function validarDNI() {
    var letras = ['T', 'R', 'W', 'A', 'G', 'M', 'Y', 'F', 'P', 'D', 'X', 'B', 'N', 'J', 'Z', 'S', 'Q', 'V', 'H', 'L', 'C', 'K', 'E', 'T'];
    var iden = document.getElementById("DNI_parti").value;
    var error = document.getElementById("errores");
    var semaforoNIE=false;
    var soloNum="";
    if (iden.length==9) {
        
    //pregunto si el primer caracter es una letra
    if((isNaN(parseInt(iden.substr(0,1))))) {
        if ("XYZ".indexOf(iden.substr(0,1))!=-1) {
            // tengo un nie con inicio válido.
            var soloNum = "XYZ".indexOf(iden.substr(0,1))+iden.substr(1,7);
            semaforoNIE=true;
        } else {
            error.innerHTML = "El NIE no es válido , la primera letra ha de ser X,Y o Z";
        }
    } else {
        semaforoNIE=true;
        soloNum=iden.substr(0,8);
    }
    
    if (semaforoNIE) {
        if((isNaN(parseInt(iden.substr(-1,1))))) {
            if (letras[soloNum%23]===iden.substr(-1,1)) {  
                error.innerHTML = "NIF/NIE correcto"; 
            } else {
                error.innerHTML = "La letra final del NIF esta mal";
            }
        } else {
            error.innerHTML = "error debe acabar con letra";
            }   
        }
    } else {
        error.innerHTML = "Debe tener como maximo 8 caracteres";
        }
}

function validarFor(){
    var inputs=document.getElementsByTagName("input");
    for (let i = 0; i < inputs.length; i++) {
        if(inputs[i].type=="text" && inputs[i].value == ''){
            inputs[i].style.borderColor='red';
        }else if (inputs[i].type=="text" && inputs[i].value !== ''){
            inputs[i].style.borderColor='white';
        }
        //console.log(inputs[i].type);
    }
    
    return false;
}

function validarFor2(){
    var inputs=document.getElementsByClassName('validar');
    for (let i = 0; i < inputs.length; i++) {
        /*if(inputs[i].type=="text" && inputs[i].value == ''){
            inputs[i].style.borderColor='red';
        }else if (inputs[i].type=="text" && inputs[i].value !== ''){
            inputs[i].style.borderColor='white';
        }*/
        console.log(inputs[i].type);
    }
    
    return false;
}



function validarDniBueno() {
    var dni = document.getElementById('DNI_parti');
    if (dni.value.length == 9) {
        dni.style.border = "solid green 5px";
        return true;
    } else {
        dni.style.border = "solid red 5px";
        return false;
    }
}

function validarFormu() {
    var inputs = document.getElementsByClassName('validar');
    var vali = true;
    for (let i = 0; i < inputs.length; i++) {
        if ((inputs[i].type == 'text' || inputs[i].type == 'date' || inputs[i].type == 'email') && inputs[i].value == '') {
            inputs[i].style.borderColor='red';
            vali = false;
        } else if ((inputs[i].type == 'text' || inputs[i].type == 'date' || inputs[i].type == 'email') && inputs[i].value !== '') {
            inputs[i].style.borderColor='white';
        }
    }
        if (validarDniBueno() && vali) {
            return true;
        } else {
            return false;
        }
}

/* Mostrar categoría a partir de la fecha de nacimiento */

function categoria() {
    var nacimiento = document.getElementById('fecha_nacimiento').value;
    var naci = new Date(nacimiento);
    var msg = document.getElementById('message');
    var eda = document.getElementById('edad');
    var fecha = new Date();
    var categoria = fecha.getFullYear() - naci.getFullYear();
    // si la fecha de nacimiento es inferior a 30 de nov. 2020 va a indicarnos que somos viejos
    if (categoria > 0 && categoria <= 6) {
        msg.innerHTML = 'Va a inscribirse a la categoria 0-6 años';
        eda.value = '0-6';
    } else if (categoria >= 7 && categoria <= 18) {
        msg.innerHTML = 'Va a inscribirse a la categoria 7-18 años';
        eda.value = '7-18';
    } else if (categoria >= 19 && categoria <= 30) {
        msg.innerHTML = 'Va a inscribirse a la categoria 19-30 años';
        eda.value = '19-30';
    } else if (categoria >= 31 && categoria <= 60) {
        msg.innerHTML = 'Va a inscribirse a la categoria 31-60 años';
        eda.value = '31-60';
    } else if (categoria >= 61) {
        msg.innerHTML = 'Va a inscribirse a la categoria 61 o mas años';
        eda.value = '61 o mas';
    } else {
        msg.innerHTML = 'Fechas no es la adecuada, vuelva a introducir la fecha de nacimiento correcta';
    }
}