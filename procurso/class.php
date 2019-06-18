<?php 
session_start();
//include 'conection.php';

class Conection{
	private $conn;
	public $dados;

	public function __construct(){
		 try {
		$this->conn= new PDO('mysql:host=localhost;dbname=procurso', 'root', '');
	}catch(PDOException $e) {
      echo 'ERROR: ' . $e->getMessage();
  }
	}

	/*public function select($query){

		 try {
		$this->conn= new PDO('mysql:host=localhost;dbname=procurso', 'root', '');
	
    $stm=prepare($query);
     print_r($stm);


    while($conteudo =$stmt->fetch(PDO::FETCH_ASSOC)){
    	$this->dados[]=$conteudo;
    }
    }
  }*/
}

class Query{

  	public $dados;
  	//public $query

   public function select($query){
  try {

    $conn = new PDO('mysql:host=localhost;dbname=procurso', 'root', '');
    $stmt = $conn->prepare($query);
     $stmt->execute();


    while($conteudo =$stmt->fetch(PDO::FETCH_ASSOC)){
    	$this->dados[]=$conteudo;
    	//print_r($this->dados);
    }
  }catch(PDOException $e) {
      echo 'ERROR: ' . $e->getMessage();
  }
  }

  public function input($query){
  	try {
    $conn = new PDO('mysql:host=localhost;dbname=procurso', 'root', '');
     $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $stmt = $conn->prepare($query);
     echo $stmt->rowCount();
     $stmt->execute();
  }catch(PDOException $e) {
      echo 'ERROR: ' . $e->getMessage();
  }
  }
  }

/*$con=new Query;
$con->select('select * from cidade');
print_r($con);*/


class Usuario{
	private $id_usuario;
	public $nome;
	public $sobrenome;
	public $email;
	public $senha;
	public $tipo_usuario;
	//public $ftperfil;


	public function logar($email,$senha){
		$query=new Query();
		$query->select('select * from usuario where email_usuario = "'.$email.'"');
		$ab=$query->dados[0]['senha'];
		echo'<pre>';
		//print_r($query->dados);
		if ($ab==$senha) {
			
			$_SESSION['logado']=array('id_usuario' => $query->dados[0]['id_usuario'],
						  				'nome' => $query->dados[0]['nome_usuario'],
						  				'sobrenome' => $query->dados[0]['sobrenome'],
						  			'email' => $query->dados[0]['email_usuario'],
						  			'data_nasc' => $query->dados[0]['data_nascimento'],
						  			'senha' => $query->dados[0]['senha']
						  			);




			header("Refresh: 0; url = index.php");
		}else{
			header("Refresh: 0; url = login.php?s=i");
		}


		/*$this->nome=$nome;
		$this->sobrenome=$sobrenome;
		$this->email=$email;
		$this->senha=$senha;
		$this->tipo_usuario=$tipo_usuario;*/
	}

	public function editar($nome,$sobrenome,$email,$senha,$data_nasc,$id){
		$insert='update usuario set nome_usuario = "'.$nome.'",sobrenome ="'.$sobrenome.'",email_usuario ="'.$email.'",senha ="'.$senha.'",data_nascimento="'.$data_nasc.'" where id_usuario = '.$id.'';
		//print_r($insert);
		$query=new Query();
		$query->input($insert);
		unset($query);
		header("Refresh: 0; url = controler.php?acao=logout");

	}

	public function cadastrar($nome,$sobrenome,$email,$senha,$tipo_usuario,$data_nasc){
		
		$insert='insert into usuario(nome_usuario,sobrenome,email_usuario,senha,data_nascimento,tipo_usuario,data_nascimento) values("'.$nome.'","'.$sobrenome.'","'.$email.'","'.$senha.'",'.$data_nasc.','.$tipo_usuario.','.$data_nasc.')';
	
		$query=new Query();
		$query->input($insert);
		unset($query);

		//print_r($insert);
	}
	public function excluir($id){
		$delete='delete from usuario where id_usuario ='.$id.'';
		$query=new Query;
		$query->input($delete);
		unset($query);
		header("Refresh: 0; url = controler.php?acao=logout");
	}

}



