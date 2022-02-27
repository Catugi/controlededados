<?php
    require_once('conectar.php');
    header('Location: ../views/home.php');
    $usuario = $_POST["usuario"];
    $senha = $_POST["senha"];
    $query = "SELECT usuario, senha FROM usuario";
    $result = $conexao->query($query);

    if ($result->num_rows > 0) 
    {
        while($row = $result->fetch_assoc())
         {
         if(($row['usuario'] == $usuario) && ($row['senha']==$senha))
            {
                header('location: ../views/home.php');
                break;
            }
            header('location: ../index.php');
        }
    }
    else
    {
        header('location: ../index.php');    
    }
    $conexao->close();
?>