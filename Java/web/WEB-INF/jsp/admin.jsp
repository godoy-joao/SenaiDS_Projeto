<%-- Document : admin Created on : 22/04/2024, 14:34:12 Author : Senai --%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@page contentType="text/html" pageEncoding="UTF-8" %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Admin</title>
                <script src="https://code.jquery.com/jquery-3.7.1.min.js"
                integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
                    crossorigin="anonymous">
                <script src="https://kit.fontawesome.com/aca8650e9f.js" crossorigin="anonymous"></script>
                <link rel="stylesheet" href="./css/admin.css">
            </head>

            <body>
                <header class="mw-100 d-flex align-items-center justify-content-center" style="height: 50px;">
                    <div class="row justify-content-evenly w-100">
                        <div class="col-2 h-75">
                            <button class="btn" id="toggleAddProduto" onclick="switchForms(1)">Cadastrar produtos</button>
                        </div>
                        <div class="col-2 h-75">
                            <button class="btn" id="toggleAddCategoria" onclick="switchForms(2)">Cadastrar categorias</button>
                        </div>
                        <div class="col-2 h-75">
                            <button class="btn" id="toggleVerEstoque" onclick="switchForms(3)">Ver estoques</button>
                        </div>
                    </div>
                </header>
                <main>
                    <div id="addProduto" class="d-flex justify-content-center">
                        <div class="p-4 bg-form mt-5">
                            <h1>Cadastrar produto</h1>

                            <form action="adicionar_produto" method="post" class="mt-3">
                                <label for="inputImagem">Selecione a imagem:</label>
                                <input type="file" name="imagem" id="inputImagem" accept="image/*" required>
                                <label for="inputNome">Nome:</label>
                                <input type="text" name="nome" id="inputNome" placeholder="Nome do produto" required>
                                <label for="inputValor">Valor:</label>
                                <input type="number" name="valor" id="inputValor" placeholder="Preço" required>
                                <label for="inputDesconto">Valor do desconto:</label>
                                <input type="number" name="desconto" id="inputDesconto"
                                    placeholder="Desconto (se aplicável)">
                                <label for="categoria">Selecione a categoria:</label>
                                <select class="ms-1 mt-1" name="categoria" id="categoria">
                                    <c:forEach items="${categorias}" var="categoria">
                                        <option value="${categoria.idCategoria}">${categoria.nome}</option>
                                    </c:forEach>
                                </select>
                                <button class="btn mt-4" id="btnSubmit" type="submit">Cadastrar</button>
                            </form>
                        </div>
                    </div>
                    <div id="addCategoria" class="d-none justify-content-center">
                        <div class="p-4 bg-form mt-5">
                            <h1>Cadastrar categoria</h1>
                            <form action="adicionar_categoria" method="post" class="mt-3">
                                <label for="nomeCategoria">Nome da categoria:</label>
                                <input type="text" name="nomeCategoria" id="nomeCategoria" placeholder="Nome">
                                <button class="btn mt-4" id="btnSubmit" type="submit">Cadastrar</button>
                            </form>
                        </div>
                    </div>
                    <div id="verEstoque" class="d-none">
                        <form action="ver_estoque" method="get"></form>
                    </div>
                </main>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
                    crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
                    integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
                    crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
                    integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
                    crossorigin="anonymous"></script>
                    <script src="./js/admin.js"></script>
            </body>

            </html>