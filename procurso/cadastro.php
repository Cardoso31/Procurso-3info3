<?php
include 'cabecalho.php';
?>

      <div class="coluna_cad_dir"></div>
      <div class="barra_sup_login"></div>
      <div class=" coluna_cad">
      <div class="coluna_cad2">

      <form method="post" action='controler.php?acao=cadastrar' class="ui form">
  <h3 class="ui dividing header">Cadastrar novo Usuário </h3>
  <div class="field  ">
    <label>Nome</label>
    <div class="two fields">
      <div class="field">
        <input type="text" name="nome" placeholder="Primeiro Nome">
      </div>
      <div class="field">
        <input type="text" name="sobrenome" placeholder="Sobrenome">
      </div>
    </div>
  </div>
  <h4 class="ui header">Email</h4>
  <div class="field">
<?php
if(isset($_GET['u'])){
  echo'<p class="incorreto">Email ja cadastrado</p>';
  }
?>
        <div class="field">
          <div class="ui input">
            <input type="text" name="email" placeholder="Seu Email">
          </div>
        </div>
  </div>
  <div class="two fields">
  </div>

  <h4 class="ui header">Data de Nascimento</h4>
 <input type="date" name="data_nasc">

   <h4 class="ui header">Imagem de Perfil</h4>
        <div class="field">
          <div class="ui input">
            <input type="file" name="image" placeholder="Inserir Imagem">
          </div>
        </div>

   <h4 class="ui header">Sua senha</h4>
  <div class="field">
      <div class="ui input">
        <input type="password" name="password" placeholder="Senha">
    </div>
  </div>


  
  <input class="ui button" type="submit" name="">
</form>
</div>
</div>
