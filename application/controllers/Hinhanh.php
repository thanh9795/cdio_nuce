<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Hinhanh extends CI_Controller {

	public function __construct() {
		parent::__construct();
		//Load Dependencies
		$this->load->model('Hinhanh_model');

	}

	public function index() {
		$data = [
			'content' => 'hinhanh/index',
			'contentdata' => [

			],

		];
		$this->load->view('master', $data);
	}

}

/* End of file Hinhanh.php */
/* Location: ./application/controllers/Hinhanh.php */