<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Logs extends CI_Controller {


	public function index()
	{
		if ($this->session->userdata('login')) {
			$data['logs']  = $this->Log->get_ok();
			$this->load->view('logs/index', $data);
		} else {
			header("Location:" . base_url());
		}
	}

	public function inactivos()
	{
		if ($this->session->userdata('login')) {
			$data['logs']  = $this->Log->get_fail();
			$this->load->view('logs/index', $data);
		} else {
			header("Location:" . base_url());
		}
	}


	public function agregar()
	{
		if ($this->session->userdata('login')) {

			if ($_POST) {
				$log = $this->input->post();
				$this->Log->add($log);
				header("Location:" . base_url(). "logs");
			} else {
				#Vista
				$this->load->helper('form');
				$this->load->view('logs/agregar');
			}

		} else {
			header("Location:" . base_url());
		}		
		
	}

	public function editar()
	{
		if ($this->session->userdata('login')) {

			if ($_POST) {
				$log = $this->input->post();
				$log['ID']=  $this->uri->segment(3);
				$this->Log->update($log);
				header("Location:" . base_url(). "logs");
			} else {
				#Vista
				$id = $this->uri->segment(3);
				$data['log'] = $this->Log->get_log($id);
				$this->load->helper('form');
				$this->load->view('logs/editar', $data);

			}
		} else {
			header("Location:" . base_url());
		}		
		
	}

	public function eliminar()
	{
		if ($this->session->userdata('login')) {
			$id = $this->uri->segment(3);

			if ($id!='') {
				$this->Log->delete($id);
				header("Location:" . base_url(). "logs");

			} else {
				header("Location:" . base_url());
			}
		} else {
			header("Location:" . base_url());
		}		
		
	}

	public function ver()
	{
		if ($this->session->userdata('login')) {

			#Vista
			$id             = $this->uri->segment(3);
			$data['log'] = $this->Log->get_log($id);
			$this->load->helper('form');
			$this->load->view('logs/ver', $data);


		} else {
			header("Location:" . base_url());
		}		
		
	}

}



