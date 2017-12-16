<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Menu extends CDIO_Controller {
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Menu_model');
		$this->load->model('Domain_model');
	}

	public function index()
	{

 		$menu=$this->Menu_model->get_all('','',array(),'','',['position','ASC']);
		$data=[
			'content'=>'menu/index',
			'contentdata'=>[
				'menu'=>$menu,
				'nhoms'=>$this->Domain_model->get_all('','',[
					'name'=>'nhom'
				]),
			],

		];
		$this->load->view('master', $data);
	}
	public function addItem()
	{
		$this->Menu_model->insert([
			'type'=>1,
			'title'=>$this->input->post('title'),
			'link'=>$this->input->post('link'),
			'parent_id'=>$this->input->post('parent_id'),
			'position'=>$this->input->post('position'),
		]);
		redirect(base_url('Menu'),'refresh');
	}
	public function addItemNhom()
	{
		$this->Menu_model->insert([
			'type'=>2,
			'title'=>$this->input->post('title'),
			'link'=>$this->input->post('link'),
			'parent_id'=>$this->input->post('parent_id'),
			'position'=>$this->input->post('position'),
		]);
		redirect(base_url('Menu'),'refresh');
	}
	public function addItemPost()
	{
		$this->Menu_model->insert([
			'type'=>3,
			'title'=>$this->input->post('title'),
			'link'=>$this->input->post('link'),
			'parent_id'=>$this->input->post('parent_id'),
			'position'=>$this->input->post('position'),
		]);
		redirect(base_url('Menu'),'refresh');
	}
	public function deleteMenuElement()
	{
		if ($this->input->server('REQUEST_METHOD')=="POST") {
			$id=$this->input->post('id');
			$this->Menu_model->delete($id);
		}
	}
}

/* End of file Menu.php 
/* Location: ./application/controllers/Menu.php */