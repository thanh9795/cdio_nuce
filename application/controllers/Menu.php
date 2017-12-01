<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Menu extends CI_Controller {

	public function index()
	{
		$menus=$this->Menu_model->get_all();
	
		$data=[
			'content'=>'master_home',
			'contentdata'=>[
				'menus'=>$menus
			],

		];
		$this->load->view('master', $data);

}

/* End of file Menu.php 
/* Location: ./application/controllers/Menu.php */