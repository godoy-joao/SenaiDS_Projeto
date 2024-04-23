<%-- Document : produto Created on : 15/04/2024, 17:13:42 Author : Senai --%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@page contentType="text/html" pageEncoding="UTF-8" %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Nome do produto</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
                    crossorigin="anonymous">
                <script src="https://kit.fontawesome.com/aca8650e9f.js" crossorigin="anonymous"></script>
                <link rel="stylesheet" href="./css/commonheader.css">
                <link rel="stylesheet" href="./css/produto.css">
            </head>

            <body class="vw-100 vh-100">
                <header class="d-flex flex-column align-items-center" style="max-height: 15vh;">
                    <div class="" id="logoDiv" style="width: 10vw;">
                        <a href="./home"><img src="./res/logo.png" class="mw-100" alt=""></a>
                    </div>
                    <div class="row w-100 align-items-center justify-content-between py-1 mt-3" id="navBar"
                        style="height: 40px">
                        <div class="col-1 m-0 p-0 h-100 d-flex justify-content-center">
                            <div class="bg-light rounded-pill addShadow w-50 d-flex justify-content-center">
                                <button class="border-0 bg-transparent w-100" style="height: 20px;">
                                    <i class="fa-solid fa-bars"></i>
                                </button>
                            </div>
                        </div>
                        <div class="col-8 border-0 rounded-pill addShadow bg-light justify-self-center h-100">
                            <div class="row justify-content-center h-100" id="searchBar">
                                <div class="col-10">
                                    <input type="search" class="border-0 w-100 h-100 bg-transparent"
                                        style="outline: none;" name="search" id="inputSearch">
                                </div>
                                <div class="col-2  m-0 p-auto justify-content-center d-flex">
                                    <button class="border-0 w-100 bg-transparent">
                                        <i class="fa-solid fa-magnifying-glass align-self-center"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="col-1 me-4 h-100">
                            <div
                                class="row d-flex flex-nowrap addShadow bg-light rounded-pill justify-content-between h-100">
                                <div class="col border-end border-1 border-light-subtle d-flex h-100 w-50">
                                    <a href="#" style="font-size: 20px;"
                                        class="w-100 d-flex justify-content-center align-items-center">
                                        <i class="fa-solid fa-shopping-cart"></i>
                                    </a>
                                </div>
                                <div class="col border-start border-1 border-light-subtle d-flex h-100 w-50">
                                    <a href="./login" style="font-size: 20px;"
                                        class="w-100 d-flex justify-content-center align-items-center">
                                        <i class="fa-solid fa-circle-user"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </header>
                <main class="bg-dark h-100" style="max-height: 85vh;">
                    <div class="d-flex w-100 h-100 justify-content-center align-items-center">
                        <div class="container h-75" id="container_produto">
                            <div class="h-100 row p-4 bg-light" id="container_interno">
                                <div id="img" class="col-8 h-75">
                                    <img src="./res/logo.png" class="mw-100" alt="">
                                </div>
                                <div id="descricao" class="col-4 h-75">
                                    <c:if test="${produto.desconto > 0}">
                                    ${produto.desconto + 4}
                                    </c:if>
                                    <p>Descrição provisória só pra encher linguiça e ocupar espaço do texto pra eu ver
                                        se
                                        isso daqui tá funcionando certo do jeito que eu preciso e eu não sei se já foi
                                        texto
                                        suficiente pra cobrir toda a parte que eu preciso portanto vou escrever até meus
                                        dedos sangrarem, mentira to cansando e acho que já foi o suficiente e tá
                                        horroroso
                                        escrever nesse tecladoa qui que o tanto que eu já tive que corrigir texto não é
                                        brincadeira não hein cê tá maluco
                                    </p>
                                </div>
                                <div id="nome" class="col-8 h-25">
                                    <h3>Nome do produto super foda</h3>
                                    ${produto.nome}
                                </div>
                                <div id="compra" class="col-4 h-25">
                                    <button
                                        class="bg-primary border-0 rounded rounded-2 w-100 justify-content-center align-items-center d-flex h-100">
                                        <p class="mb-0">Adicionar ao carrinho</p>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
                    crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
                    integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
                    crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
                    integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
                    crossorigin="anonymous"></script>
            </body>

            </html>