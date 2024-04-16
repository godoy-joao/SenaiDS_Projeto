function switchForms() {
    if ($('#containerLogin').hasClass('d-flex')) {
        document.title = "Cadastro"
        $("#containerLogin").removeClass('d-flex').addClass('d-none');
        $("#containerCadastro").removeClass('d-none').addClass('d-flex');
    } else {
        document.title = "Login"
        $("#containerCadastro").removeClass('d-flex').addClass('d-none');
        $("#containerLogin").removeClass('d-none').addClass('d-flex');
    }
    var item = document.getElementById('inputNome');
    console.log(item.value);
}
$("#inputTelefone").mask("(00) 00000-0000");
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

