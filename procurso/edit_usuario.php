<?php
include 'cabecalho.php';
//print_r($_SESSION['logado']);
?>

      <div class="coluna_cad_dir"></div>
      <div class="barra_sup_login"></div>
      <div class="coluna_cad">
      <div class="coluna_cad2">

      <form method="post" action='controler.php?acao=editar' class="ui form">
      <input type="hidden" name="id_usuario" value="<?php echo $_SESSION['logado']['id_usuario']; ?>">
  <h3 class="ui dividing header">Edite suas Informações</h3>
  <div class="field">
    <label>Nome</label>
    <div class="two fields">
      <div class="field">
        <input type="text" name="nome" value="<?php echo $_SESSION['logado']['nome']; ?>">
      </div>
      <div class="field">
        <input type="text" name="sobrenome" value="<?php echo $_SESSION['logado']['sobrenome']; ?>">
      </div>
    </div>
  </div>

  <h4 class="ui dividing header">Email</h4>
  <div class="field">
        <div class="field">
          <div class="ui input">
            <input type="text" name="email" value="<?php echo $_SESSION['logado']['email']; ?>">
          </div>
        </div>
  </div>
  <div class="two fields">
  </div>
  <h4 class="ui dividing header">Data de Nascimento</h4>
  
      <input type="date" name="data_nasc">

   <h4 class="ui dividing header">Imagem de Perfil</h4>
        <div class="field">
          <div class="ui input">
            <input type="file" src="" name="image" value="Inserir Imagem">
          </div>
        </div>

   <h4 class="ui dividing header">Sua senha</h4>
  <div class="field">
      <div class="ui input">
        <input type="text" name="password" value="<?php echo $_SESSION['logado']['senha']; ?>">
    </div>
  </div>

  <input type="submit" class="ui button" value="Salvar">
</form>
</div>
</div>
