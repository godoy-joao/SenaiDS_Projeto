$("#inputTelefone").mask("(00) 90000-0000");
$("#inputCPF").mask("000.000.000-00");

let senha = document.getElementById('inputSenha');
let senhaC = document.getElementById('inputConfirmaSenha');

function validarSenha() {
  if (senha.value != senhaC.value) {
    senhaC.setCustomValidity("Senhas diferentes!");
    senhaC.reportValidity();
    return false;
  } else {
    senhaC.setCustomValidity("");
    return true;
  }
}
senhaC.addEventListener('input', validarSenha);

