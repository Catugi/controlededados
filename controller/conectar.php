<?php
    mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
    $conexao = new mysqli('localhost', 'root', 'Fer123Nando+-*', 'controledados');

    // Checar a conecção
    if ($conexao->connect_error) {
        die("Conecção falhou: " . $conexao->connect_error);
    }
?> 