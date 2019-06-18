<?php 
include 'cabecalho.php';
?>
      <div class="coluna_login_dir"></div>
      <div class="barra_sup_login"></div>
      <div class="coluna_login">
      

        <div class=" middle aligned center aligned grid barra_cima_login">
           <div class="column">
              <h2 class="ui teal image header">
               <!-- <img src="assets/images/logo.png" class="image"> -->
                 <div class="content">
                 Logue em sua conta 
                  </div>
         </h2>
       <form method="post" action='controler.php?acao=logar'  class="ui large form">

      <div class="ui stacked segment ">
        <?php
  if(isset($_GET['s'])){
    echo'<a class="incorreto"> Login ou Senha incorreto(s)</a>';
  }

?>
        
        <div class="field">
          <div class="ui left icon input">
            <i class="user icon"></i>
            <input type="text" name="email" placeholder="Email ">
          </div>
        </div>
          <div class="field">
          <div class="ui left icon input">
            <i class="lock icon"></i>
            <input type="password" name="password" placeholder="Senha">


          </div>
        </div>
        <input type="submit" name="" class="ui fluid large teal submit button yellow" value='Login' >
      
      </div>
      </div>

           <!-- <div class="ui error message"></div> -->

    </form>

    <div class="ui message">
      É novo aqui? <a href="cadastro.php">Crie sua conta</a>
    </div>
  </div>

  </div>
</div>


</head>
</body>

 <?php include 'rodape.php'?>

</html>