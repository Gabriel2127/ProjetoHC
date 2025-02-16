<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>boanoite</title>
</head>
<body>
<?php

$conexao = mysqli_connect('localhost','root','','formeg');
$nome = $_POST['nome'];
$email= $_POST['email'];
$senha= $_POST['senha'];
$data_nasc= $_POST['data_nasc'];
$tel= $_POST['tel'];
$altura= $_POST['altura'];
$peso= $_POST['peso'];

$sql = "INSERT INTO usuarios(nome,email,senha,data_nasc,tel,altura,peso)values('$nome','$email','$senha','$data_nasc','$tel','$altura','$peso')";

$retorno = mysqli_query($conexao,$sql);


?>
</body>
</html>