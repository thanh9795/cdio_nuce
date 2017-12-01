<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Gioithieu extends CI_Controller {

		public function __construct()
	{
		parent::__construct();
		//Load Dependencies
		$this->load->model('Gioithieu_model');

	}
	
/*	public function index()
	{
		$data=[
			'content'=>'article-template',
			'contentdata'=>[
				
			],

		];
		$this->load->view('master', $data);
	}
*/
	public function index()
	{
	
		$this->form_validation->set_rules('txt_content', 'Nội dung', 'trim|required',['required'=>"%s Day la truong bat buoc"]);

		if ($this->form_validation->run()) {
			$this->Gioithieu_model->update([
				'txt_content'=>$this->input->post('txt_content')
			],1);	
		}

		$gioithieu=$this->Gioithieu_model->get(1);
		/*var_dump($gioithieu);*/
		$data=[
			'content'=>'article-template',
			'contentdata'=>[
				'gioithieu'=>$gioithieu
			]
		];

		$this->load->view('master', $data);
	}
}

/* End of file gioithieu.php */
/* Location: ./application/controllers/gioithieu.php */