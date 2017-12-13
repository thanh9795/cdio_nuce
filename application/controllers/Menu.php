<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Menu extends CDIO_Controller {
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Menu_model');
	}

	public function index()
	{

 		$menu=$this->Menu_model->get_all('','',array(),'','',['position','ASC']);
		$data=[
			'content'=>'menu/index',
			'contentdata'=>[
				'menu'=>$menu
			],

		];
		$this->load->view('master', $data);
	}
}

/* End of file Menu.php 
/* Location: ./application/controllers/Menu.php */