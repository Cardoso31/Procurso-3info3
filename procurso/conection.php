<?php
include 'class.php';

try {
  $conn = new PDO('mysql:host=localhost;dbname=procurso', 'aluno', 'aluno');
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);



	$stmt = $conn->prepare('SELECT * FROM :tabela');
	$aux1='cidade';
	$stmt->bindValue(':tabela',$aux1);
      //  echo "<pre>";
    $cidades=$stmt->fetch(PDO::FETCH_CLASS,'Pao');
    while($cidades)

   //$conn->prepare('SELECT * FROM cidade')->execute();
  // $print_r($data);

} catch(PDOException $e) {
    echo 'ERROR: ' . $e->getMessage();

}

