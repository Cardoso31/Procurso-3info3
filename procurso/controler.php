<?php



if(isset($_GET['acao'])){

	if(!empty($_GET['acao'])){
		if($_GET['acao']!='ecluir'){
			include 'cabecalho.php';
		}else{

		include 'class.php';
}
		switch ($_GET['acao']) {
			case 'logar':

	
//print_r($_POST);
	//$user->new 
	$usuario=new Usuario();
	$usuario->logar($_POST['email'],$_POST['password']);
	unset($usuario);
				break;
			
		case 'cadastrar':

	$query=new Query();
	$query->select('select * from usuario where email_usuario ="'.$_POST['email'].'"');
	if (!empty($query->dados)) {
	header("Refresh: 1; url = cadastro.php?u=e");

	}
	//print_r($query);
	exit();
	$usuario=new Usuario();
		//print_r($usuario);
	$usuario->cadastrar($_POST['nome'],$_POST['sobrenome'],$_POST['email'],$_POST['password'],0,$_POST['data_nasc']);
	header("Refresh: 0; url = index.php");			
	unset($usuario);
	unset($query);

				break;

			
		case 'editar':

		//print_r($_POST);
		$usuario=new Usuario;
		$usuario->editar($_POST['nome'],$_POST['sobrenome'],$_POST['email'],$_POST['password'],$_POST['data_nasc'],$_POST['id_usuario']);
		//header("Refresh: 0; url = usuario.php");
				break;

		case 'logout':

		session_destroy();
		header("Refresh: 1; url = index.php");
				break;
				case 'excluir':
?>
	<div class="pusher">
<div class="ui inverted vertical masthead center aligned segment cor1" href="img\fundo.jpeg">
    <div class="ui text container">
      <h1 class="ui inverted header">
        <?php echo $_SESSION['logado']['nome']; ?>
      </h1>
      <h3>Seu usuário sera excluido e voçê será redirecionado a página principal</h3>
      <h2>Deseja continuar?</h2>
      
    

		<a href="controler.php?acao=delete0"><button class="ui button red">
 	 Excluir
	</button></a>
	<a href="usuario.php"><button class="ui button blue">
 	 Cancelar
	</button></a>
  </div>
</div>
</div>
<?php
		
				break;
				case 'delete0':
				session_destroy();
				$usuario=new Usuario;
				$usuario->excluir($_SESSION['logado']['id_usuario']);
				//print_r($_SESSION);
				break;
		}

	}
}