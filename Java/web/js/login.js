function toggleLogin() {
    let element = document.getElementById('containerLogin');
    element.classList.remove('d-none');
    element.classList.add('d-flex');
}
function toggleCadastro() {
    let element = document.getElementById('containerCadastro');
    element.classList.toggle('d-none');
    element.classList.toggle('d-flex');
}

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

}
$("#inputTelefone").mask("(00) 90000-0000");
$("#inputCPF").mask("000.000.000-00");
document.addEventListener("DOMContentLoaded", function () {

});