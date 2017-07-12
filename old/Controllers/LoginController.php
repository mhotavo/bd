<?php  
require_once "../Models/Login.php";


class LoginController {
	private $Login;

	public function __construct(){
		$this->Login = new Login();
	}


	public function validate(){
		if ($_POST) {
			$this->Login->__set("user", "admix");
			$this->Login->__set("pass", $_POST['password']);
			$total=$this->Login->validate(); 

			if ($total!=0) {
				session_start();
				echo $_SESSION['app_id'] = $total;
				header("Location: ../admix/listar.php");
			} else {
				#header("Location: https://google.com/");
			}


			
		} else{
			header("Location: ../index.php");
		}
	}

}

$Login= new LoginController();
$Login->validate();

?>