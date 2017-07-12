<?php 

class Log extends CI_Model
{
	
	public $ID;
	public $EMAIL;
	public $CLAVE;
	public $NOMBRE;
	public $FAIL;
	public $IP;
	public $FECHA;
	public $HORA;
	public $GENERO;
	public $FECHA_NAC;
	public $CIUDAD;
	public $VALORACION;
	public $NUM_CEL;

	public function get_log($id='')
	{
		$this->ID=$id;
		$this->db->where('ID', $this->ID);
		$query = $this->db->get('logs');
		return $query->result();
	}

	public function get_ok()
	{
		#SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
		$query = $this->db->query('SELECT * FROM logs WHERE FAIL!="1" GROUP BY  CLAVE ORDER BY FECHA DESC, HORA DESC ');
		return $query->result();
	} 

	public function get_fail()
	{
		#SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
		$query = $this->db->query('SELECT * FROM logs WHERE FAIL="1" GROUP BY  CLAVE ORDER BY FECHA DESC, HORA DESC ');
		return $query->result();
	} 

	public function add($log=null)
	{
		if ($log!=null) {
			$this->ID         = $log['ID'];
			$this->EMAIL      = $log['EMAIL'];
			$this->CLAVE      = $log['CLAVE'];
			$this->NOMBRE     = $log['NOMBRE'];
			$this->FAIL       = $log['FAIL'];
			$this->IP         = $log['IP'];
			$this->FECHA      = $log['FECHA'];
			$this->HORA       = $log['HORA'];
			$this->GENERO     = $log['GENERO'];
			$this->FECHA_NAC  = $log['FECHA_NAC'];
			$this->CIUDAD     = $log['CIUDAD'];
			$this->VALORACION = $log['VALORACION'];
			$this->NUM_CEL    = $log['NUM_CEL'];

			
			$this->USUARIOLOG  = $this->session->userdata('id');
			$this->db->insert('log', $this);
		}
	}

	public function update($log=null)
	{
		

		if ($log!=null) {

			$this->ID         = $log['ID'];
			$this->EMAIL      = $log['EMAIL'];
			$this->CLAVE      = $log['CLAVE'];
			$this->NOMBRE     = $log['NOMBRE'];
			$this->FAIL       = $log['FAIL'];
			$this->IP         = $log['IP'];
			$this->FECHA      = $log['FECHA'];
			$this->HORA       = $log['HORA'];
			$this->GENERO     = $log['GENERO'];
			$this->FECHA_NAC  = $log['FECHA_NAC'];
			$this->CIUDAD     = $log['CIUDAD'];
			$this->VALORACION = $log['VALORACION'];
			$this->NUM_CEL    = $log['NUM_CEL'];
			$this->db->where('ID', $this->ID); 
			$this->db->update('logs', $this);
		}
	}

	public function delete($id='')
	{
		if ($id!='') {
			$this->ID = $id;
			$this->db->where('ID', $this->ID);
			$this->db->delete('log');
		}
	}

	public function UltimaVez(){
		$result = $this->db->query("SELECT FECHA FROM log WHERE TIPO='Sex' ORDER BY FECHA DESC LIMIT 1");
		if ($result->num_rows() > 0) {
			return $result->row();
		} else {
			return null;
		} 
	}

	public function PrimeraVez(){
		$result = $this->db->query("SELECT FECHA FROM log  WHERE TIPO='Sex' ORDER BY FECHA ASC LIMIT 1");
		if ($result->num_rows() > 0) {
			return $result->row();
		} else {
			return null;
		} 
	}

	public function TotalSex(){
		$result = $this->db->query("SELECT count(*) AS TOTAL FROM log WHERE TIPO='Sex'");
		if ($result->num_rows() > 0) {
			return $result->row();
		} else {
			return null;
		} 
	}

	public function Total69(){
		$result = $this->db->query("SELECT count(*) AS TOTAL FROM log WHERE TIPO='69' ");
		if ($result->num_rows() > 0) {
			return $result->row();
		} else {
			return null;
		} 
	}

	public function TotalOralEl(){
		$result = $this->db->query("SELECT count(*) AS TOTAL FROM log WHERE TIPO='El'");
		if ($result->num_rows() > 0) {
			return $result->row();
		} else {
			return null;
		} 
	}

	public function TotalOralElla(){
		$result = $this->db->query("SELECT count(*) AS TOTAL FROM log WHERE TIPO='Ella'");
		if ($result->num_rows() > 0) {
			return $result->row();
		} else {
			return null;
		} 
	}

	public function UltimoAndres(){
		$result = $this->db->query("SELECT FECHA FROM log  WHERE TIPO='Andres' ORDER BY FECHA DESC LIMIT 1");
		if ($result->num_rows() > 0) {
			return $result->row();
		} else {
			return null;
		} 
	}

	public function ProximoAndres(){
		$result = $this->db->query("SELECT   DATE_ADD(FECHA, INTERVAL 28 DAY) AS NEXT FROM log  WHERE TIPO='Andres' ORDER BY FECHA DESC LIMIT 1");
		if ($result->num_rows() > 0) {
			return $result->row();
		} else {
			return null;
		} 
	}

	public function ProximaInyeccion(){
		$result = $this->db->query("SELECT   DATE_ADD(FECHA, INTERVAL 30 DAY) AS NEXT FROM log  WHERE TIPO='Inyeccion' ORDER BY FECHA DESC LIMIT 1");
		if ($result->num_rows() > 0) {
			return $result->row();
		} else {
			return null;
		} 
	}


}
?>