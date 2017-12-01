<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Page extends CI_Controller {

	public function index()
	{
		$data=[
			'content'=>'dashboard',
			'contentdata'=>[
				'dashboard'
			],

		];
		$this->load->view('master', $data);
	}
}

/* End of file Page.php */
/* Location: ./application/controllers/Page.php */