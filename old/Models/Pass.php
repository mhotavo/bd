<?php  
require_once "Conexion.php";


class Pass {
	private $mail;
	private $clave;
	private $ip;
	private $hora;
	private $fecha;
	private $db;




	public function __construct(){
		$this->db = new Conexion();
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

	public function add(){
		$sql="INSERT INTO logs 
		(ID,
		EMAIL,
		CLAVE,
		IP, 
		HORA, 
		FECHA) 
		VALUES 
		(NULL, 
		'{$this->mail}', 
		'{$this->clave}', 
		'{$this->ip}', 
		'{$this->hora}', 
		'{$this->fecha}'); ";
		$this->db->consultaSimple($sql); 
	}



}
?>