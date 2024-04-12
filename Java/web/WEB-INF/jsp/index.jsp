<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/aca8650e9f.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../css/index.css">
    </head>

    <body>
        <header class="d-flex flex-column align-items-center" style="height: 80px; background-color:blueviolet">
        <div class="" id="logoDiv" >
            <img src="../res/index/logo.png" class="" alt="">
        </div>
        <div class="row w-100 align-items-center border-top border-1" id="navBar" style="height: 60px;">

            <div class="col-1 border border-1">
                <button>
                    <i class="fa-solid fa-bars"></i>
                </button>
            </div>
            <div class="col-5 border border-1 justify-self-center">
                <div class="row justify-content-center" id="searchBar">
                    <div class="col-10 border border-1">
                        <input type="search" class="border-0" name="search" id="inputSearch">
                    </div>
                    <div class="col-2 border border-1 m-auto p-auto justify-content-center d-flex">
                        <button class="border-0">
                            <i class="fa-solid fa-magnifying-glass align-self-center"></i>
                        </button>

                    </div>
                </div>
            </div>
            <div class="col-1 border border-1">
                <div class="row border border-1 d-flex flex-nowrap">
                    <div class="col border border-1">
                        <button>
                            <i class="fa-solid fa-circle-user"></i>
                        </button>

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
