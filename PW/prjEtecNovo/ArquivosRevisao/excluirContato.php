<?php


    $x=$_GET['id'];

    include("conexao.php");

    echo $x." Deletado";

    $stmt = $pdo->prepare("delete from tbContato where idContato='$x'");	
    $stmt ->execute();


        
  ?>