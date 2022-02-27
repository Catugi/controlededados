<?php
    require_once("../controller/conectar.php");
    $id = $_POST['idfunc'];
    $query = "DELETE FROM curso WHERE id_curso=$id";
    $result = $conexao->query($query);
    if(mysqli_affected_rows($conexao) > 0 )
    {
    ?>
    <script>alert("Dados apagados corectamente")</script>

    <?php
        header("Location: cursos.php");
    }
    else{
?>
    <script>alert("Dados não apagados corectamente")</script>
<?php
    header("Location: cursos.php");
    $conexao->close();
}
?>