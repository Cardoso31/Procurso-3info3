<?php
include 'header.php';

if(isset($_GET['acao'])){
	if(!empty($_GET['acao'])){

		switch ($_GET['acao']) {
			case 'login':
								
?>

<?php			
echo 'oi';
				break;
			
		case 'signin':
?>


<?php
echo 'tchau';
				break;
		}

	}
}