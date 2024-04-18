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
                <div class="row w-100 align-items-center justify-content-between py-1" id="navBar" style="height: 40px">                    
                    <div class="col-1 m-0 p-0 h-100 d-flex justify-content-center">
                        <div class="bg-light rounded-pill w-50 d-flex justify-content-center">
                          <button class="border-0 bg-transparent">
                            <i class="fa-solid fa-bars"></i>
                        </button>  
                        </div>
                        
                    </div>
                    <div class="col-8 border-0 rounded-pill bg-light justify-self-center h-100">
                        <div class="row justify-content-center h-100" id="searchBar">
                            <div class="col-10">
                                <input type="search" class="border-0 w-100 h-100" style="outline: none;" name="search"
                                    id="inputSearch">
                            </div>
                            <div class="col-2  m-0 p-auto justify-content-center d-flex">
                                <button class="border-0 w-100 bg-transparent">
                                    <i class="fa-solid fa-magnifying-glass align-self-center"></i>
                                </button>

                            </div>
                        </div>
                    </div>
                    <div class="col-1 border border-1 me-4 h-100">
                        <div class="row border border-1 d-flex flex-nowrap justify-content-between">
                            <div class="col border border-1">
                                <a href="./login">
                                    <i class="fa-solid fa-circle-user"></i>
                                </a>

                            </div>
                            <div class="col border border-1">
                                <button>
                                    <i class="fa-solid fa-shopping-cart"></i>
                                </button>

                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <main>
                <h1>Lista de produtos</h1>
                <c:forEach items="${produtos}" var="produto">
                    <div id="${produto.idProduto}">
                        <p>${produto.nome}</p>
                        <p>${produto.categoria}</p>
                        <p>${produto.valor} - ${produto.desconto}</p>
                        <p>${produto.valorFinal}</p>


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