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
		//$this->output->enable_profiler(TRUE);

 		$menu=$this->Menu_model->get_all('','',[],'','','',['position','ASC']);
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
	public function updateMenuElement()
	{
		$data=[
	      'title'=>$this->input->post('title'),
	      'link'=>$this->input->post('link'),
	      'parent_id'=>$this->input->post('parent_id'),
	    ];
	    $id=$this->input->post('id');
	    $this->Menu_model->update($data,$id);
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
	public function savePosition()
	{
		$this->output->enable_profiler(TRUE);
		  function output($menu,$parent=0,$menumodel,$pos=0)
		    {
		        
		      foreach ($menu as $handle)
		      {
		          $pos++;
		        if(isset($handle['children']))
		        {

		          $data = ['parent_id' =>$parent ,'position'=>$pos];

		          $menumodel->update($data,$handle['id']);

		          output($handle['children'],$handle['id'],$menumodel,$pos); 
		        }
		        else if(isset($handle['id']))
		        {

		          $data = ['parent_id' =>$parent,'position'=>$pos];

		            $menumodel->update($data,$handle['id']);

		        }
		      }

		    }

		    output($this->input->post('data'),0,$this->Menu_model);
	}
}

/* End of file Menu.php 
/* Location: ./application/controllers/Menu.php */