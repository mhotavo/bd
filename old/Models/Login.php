<?php  
require_once "Conexion.php";


class Login {

	private $user;
	private $pass;
	private $db;

	public function __construct(){
		$this->db = new Conexion();
		$this->user= (!empty($_POST['user'])) ? $_POST['user']: null;
		$this->pass= (!empty($_POST['pass'])) ? $_POST['pass']: null;
	}

	public function __set($var, $valor) {  
		if (property_exists(__CLASS__, $var)) {  
			$this->$var = $valor;  
		} else {  
			echo "No existe el atributo $var.";  
		}  
	}  
	public function __get($var) {  
		if (property_exists(__CLASS__, $var)) {  
			return $this->$var;  
		}  
		return NULL;  
	}  

	protected function encrypt ($string){
		$long = strlen($string);
		$str = '';
		for($x = 0; $x < $long; $x++) {
			$str .= ($x % 2) != 0 ? md5($string[$x]) : $x;
		}
		return md5($str);
	}

	public function validate(){
			#$pass = Encrypt($_POST['pass']);
		if ( !empty($this->user) and !empty( $this->pass)) {
			$sql="SELECT * FROM usuarios WHERE USER='{$this->user}' AND PASS='{$this->encrypt($this->pass)}' LIMIT 1;";
			$datos=  $this->db->consultaRetorno($sql);
			$row =   $this->db->row($datos);
			$total = $this->db->total_rows($datos);
			if ($total==1) {
				return $row['ID'];
			} else {
				return 0;
			}
		} else {
			return 0;
		}

	}



}
?>