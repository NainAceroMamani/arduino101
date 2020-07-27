const inputs = document.querySelectorAll('.form-control');

// Expresiones regulares
const regEx = {
	pass: /^.{4,12}$/,
	email: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/
}

//Para conocer si un campo es valido
const isValid = {
    email: false,
    pass: false
}

//Creacion del mensaje de error
const writeError = (obj, msj) => {
    let errElem = document.createElement('p');
    errElem.className = 'error-label';
    errElem.textContent = msj;
    obj.parentNode.parentNode.appendChild(errElem);
}

//Se añade un evento a cada campo para poder borrar el mensaje de error
inputs.forEach(input => {
    input.addEventListener('keyup', () => {
        input.classList.remove('invalid');
        let msg = input.parentNode.parentNode.querySelector('.error-label');
        msg && msg.remove(); //Si el mensaje de error existe, se elimina
        document.querySelector('form button').removeAttribute('disabled');
    });
})

//Validacion de un campo
const validateField = (exp, input, field, msg) => {
    if (exp.test(input.value)) {
        input.classList.remove('invalid');
        isValid[field] = true;
    }
    else {
        input.classList.add('invalid');
        isValid[field] = false;
        writeError(input, msg);
    }
}

//Validacion completa del formulario
const validateForm = () => {
    inputs.forEach (input => {
        switch (input.name) {
            case "username":
                validateField(regEx.email, input, 'email', 'Ingrese un correo valido');
            break;
            case "password":
                validateField(regEx.pass, input, 'pass', 'Ingrese su contraseña');
            break;
        }
    })
}

document.querySelector('.sign-in-inner').addEventListener('submit', e => {
    let thisForm = e.target;
    validateForm();

    //Validacion Login
    if (thisForm.classList.contains('login')){
        if (!(isValid.email && isValid.pass)) {
            e.preventDefault();
            document.querySelector('form button').setAttribute('disabled', true);
        }
    }

    //Validacion Restablecer contraseña
    if (thisForm.classList.contains('forgot-pw')){
        if (!isValid.email){
            e.preventDefault();
            document.querySelector('form button').setAttribute('disabled', true);
        }
    }
})