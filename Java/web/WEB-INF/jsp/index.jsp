<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Home</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
                crossorigin="anonymous">
            <script src="https://kit.fontawesome.com/aca8650e9f.js" crossorigin="anonymous"></script>
            <link rel="stylesheet" href="./css/index.css">
        </head>

        <body>
            <header class="d-flex flex-column align-items-center border-bottom border-1">
                <div class="" id="logoDiv" style="width: 10vw;">
                    <img src="./res/logo.png" class="mw-100" alt="">
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
                                <input type="search" class="border-0 w-100 h-100 bg-transparent" style="outline: none;"
                                    name="search" id="inputSearch">
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
            <main class="px-5 mt-3">
                <c:forEach items="${categorias}" var="categoria">
                    <h2>${categoria.nome}</h2>
                    <div id="carouselExample" class="carousel slide">
                        <div class="carousel-inner row">
                            <c:forEach items="${produtos}" var="produto" end="12">
                                <div class="card col-3 m-auto" style="width: 20vw;">
                                    <div class="card-body">
                                        <h5 class="card-title mt-0">
                                            <p class="m-0" style="font-size: 0.6rem; color:grey;">${produto.valor}</p>
                                            ${produto.valorFinal}
                                        </h5>
                                        <p class="card-text">${produto.nome}</p>
                                        <a href="./produto/${produto.idProduto}" class="btn btn-primary">Comprar</a>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        <button class="carousel-control-prev bg-dark" type="button" data-bs-target="#carouselExample"
                            style="width: 10%;" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next bg-dark" data-bs-theme="dark" type="button"
                            data-bs-target="#carouselExample" style="width: 10%;" data-bs-slide="next">
                            <span class="carousel-control-next-icon " data-bs-theme="dark" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </c:forEach>
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