function switchForms(valor) {
    switch (valor) {
        case 1:
            $('#addProduto').removeClass('d-none').addClass('d-flex');
            $('#addCategoria').removeClass('d-flex').addClass('d-none');
            $('#verEstoque').removeClass('d-flex').addClass('d-none');
            break;
        case 2:
            $('#addCategoria').removeClass('d-none').addClass('d-flex');
            $('#addProduto').removeClass('d-flex').addClass('d-none');
            $('#verEstoque').removeClass('d-flex').addClass('d-none');
            break;
        case 3:
            $('#verEstoque').removeClass('d-none').addClass('d-flex');
            $('#addProduto').removeClass('d-flex').addClass('d-none');
            $('#addCategoria').removeClass('d-flex').addClass('d-none');
    }
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