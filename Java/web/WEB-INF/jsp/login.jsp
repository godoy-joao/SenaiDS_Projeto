<%-- Document : login Created on : 06/04/2024, 16:48:55 Author : Joao G --%>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Login</title>
            <script src="https://code.jquery.com/jquery-3.7.1.min.js"
                integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
                crossorigin="anonymous">
            <script src="https://kit.fontawesome.com/aca8650e9f.js" crossorigin="anonymous"></script>
            <link rel="stylesheet" href="./css/login.css">
        </head>

        <body class="d-flex align-items-center vh-100 justify-content-center">
            <a href="./home">
                <i class="fa-solid fa-arrow-left rounded-circle" id="backToIndex"></i>
            </a>
            <main>
                <div id="containerLogin"
                    class="d-flex flex-column align-items-center justify-content-center h-100 formContainer">
                    <div class="formWrapper d-flex flex-column px-4 py-3 m-0">
                        <div id="login-top" class="d-flex flex-row justify-content-between w-100">
                            <h1 class="font-weight-bold">Login</h1>
                            <button onclick="switchForms()" class="btnSwitch border-0">Cadastre-se</button>
                        </div>
                        <form id="formLogin" class="d-flex flex-column" action="" method="get" style="width: 30rem;">


                            <p class="mb-3">Preencha os campos para realizar login.</p>
                            <label for="">E-mail</label>
                            <input type="email" name="email" id="loginEmail" placeholder="seuemail@example.com">
                            <label for="">Senha</label>
                            <input type="password" id="loginSenha" placeholder="Digite sua senha">
                            <button id="btnLogin" class="rounded-1 mt-3 btnSubmit">Acessar</button>
                        </form>
                    </div>
                </div>
                <div class="d-none flex-column justify-content-center align-items-center h-100 formContainer"
                    id="containerCadastro">
                    <div class="formWrapper d-flex flex-column px-4 py-3 m-0">
                        <div id="cadastro-top" class="d-flex flex-row justify-content-between w-100">
                            <h1 class="m-0">Cadastro</h1>
                            <button onclick="switchForms()" class="btnSwitch border-0">Login</button>
                        </div>
                        <form id="formCadastro" action="" method="post" class="d-flex flex-column">
                            <p>Insira as informações para realizar o cadastro.</p>
                            <label for="#inputNome">Nome</label>
                            <input type="text" id="inputNome" placeholder="Digite seu nome." required>
                            <label for="inputEmail">E-mail</label>
                            <input type="email" id="signupEmail" placeholder="email@example.com" required>
                            <label for="inputSenha">Senha</label>
                            <input type="password" id="signupSenha" placeholder="Digite sua senha." required>
                            <label for="inputConfirmaSenha">Confirme a senha</label>
                            <input type="password" id="signupConfirmaSenha" placeholder="Confirme sua senha." required>
                            <label for="inputCPF">CPF</label>
                            <input type="text" id="inputCPF" placeholder="123.456.789-01" required>
                            <label for="inputTelefone">Telefone</label>
                            <input type="tel" id="inputTelefone" class="input mb-3" name="Telefone"
                                placeholder="(00) 90000-0000" required>
                            <button id="btnCadastro" class="rounded-1 btnSubmit">Cadastrar</button>
                        </form>
                    </div>
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
            <script src="./js/login.js"></script>
        </body>

        </html>