<?php
    require_once('../controller/conectar.php');
    $usuario = $_POST['usuario'];
    $senha1 = $_POST['senha1'];
    $senha2 = $_POST['senha2'];
    $location = "Location: usuarios.php";
    
    $query = "INSERT INTO usuario (usuario, senha) VALUES('$usuario', '$senha1')";
    if ($senha1 == $senha2) {
        $conexao->query($query);
         if(mysqli_affected_rows($conexao) > 0 )
         {
            header($location);
        }
        else{

    header($location);
    $conexao->close();
        }
    }else {

       echo '<script>alert("As senhas devem ser iguais ")</script>';
        header($location);
        $conexao->close();

    }
    
?>