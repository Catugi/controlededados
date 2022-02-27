<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <title>Entrar no sistema</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="statics/css/index.css">

</head>

<body>

    <div class="container col-s-10 col-xs-10">

        <div class="container_3 col-xl-6 col-m-6 col-s-10 col-xs-10">
            <form method="post" class="from" id="from" action="controller/validar.php">
                <div class="card">
                    <div class="card-top">
                        <h1>Entrar</h1>
                    </div>
                    <div class="card-grup marge">
                        <input type="text" id="usuario" name="usuario" placeholder="Nome de Usuário ou Email" required>
                    </div>

                    <div class="card-grup">
                        <input type="password" id="senha" name="senha" placeholder="Senha" required>
                    </div>
                    <div class="card-grup bnt">
                        <button type="submit " class="bnt" id="botao" onclick="login()">Entrar</button>
                    </div>

                </div>
            </form>
        </div>
    </div>

</body>

</html>