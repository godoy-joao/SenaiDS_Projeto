<%-- Document : catalogo Created on : 15/04/2024, 17:08:08 Author : Joao G --%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@page contentType="text/html" pageEncoding="UTF-8" %>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Catalogo</title>
            </head>

            <body>
                <h1>Catalogo de produtos</h1>
                <c:forEach items="${produtos}" var="produto">
                    <div id="${produto.idProduto}">
                        <p>${produto.nome}</p>
                        <p>${produto.categoria}</p>
                        <p>${produto.valor} - ${produto.desconto}</p>
                        <p>${produto.valorFinal}</p>


                    </div>
                </c:forEach>
            </body>

            </html>