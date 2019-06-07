<?php 
//include 'conection.php';


class Usuario{
	private $id_usuario;
	public $nome;
	public $sobrenome;
	public $email;
	public $nome_cidade;
	public $senha;
	public $tipo_usuario;
	public $ftperfil;


	public function __construct($pao){
		$this->nome_cidade= $pao;
	}

	public function login(){
		echo 'oi';
	}

}


