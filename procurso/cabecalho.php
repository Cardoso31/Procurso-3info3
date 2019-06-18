<?php
include 'class.php';
?>
<!DOCTYPE html>
<html>
<head>
  <title></title>
  <script type="text/javascript" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.js"></script>
  <link rel="stylesheet" type="text/css" href="semantic/semantic.min.css">
  <link rel="stylesheet" type="text/css" href="css/estilo.css">
  <link rel="stylesheet" type="text/css" href="../dist/components/message.css">
  <script src="assets/library/jquery.min.js"></script>
  <script src="../dist/components/form.js"></script>
  <script src="../dist/components/transition.js"></script>
  
  
<nav>
<!-- Page Contents -->
<div class="pusher cor2">

    <div class="ui container ">
      <div class="ui large secondary pointing menu ">
        <a class="toc item">
          <i class="sidebar icon"></i>
        </a>
        <a  href="index.php" class="active item black">Home</a>
        <a  href="#" class="item">Cursos</a>
        <a href="#" class="item inverted">Faculdades</a>
        
<div class="right item">

 <?php
  if(isset($_SESSION['logado'])){
    echo "<a href='usuario'><button class='ui button yellow'>".$_SESSION['logado']['nome']."</button></a>";
   ?> 
  <a href="controler.php?acao=logout" class="ui inverted button">Log out</a>
  <?php
  }else{
    ?>

    <a href="login.php" class="ui button yellow">Log in</a>
    <a href="cadastro.php" class="ui inverted button">Sign Up</a>
        <?php
  }
  ?>
      </div>
    </div>
</nav>