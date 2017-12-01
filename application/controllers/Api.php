<?php if (!defined('BASEPATH')) {
	exit('No direct script access allowed');
}

class Api extends CI_Controller {

	public function __construct() {
		parent::__construct();
	}

	public function index() {

	}
	public function gioithieu() {
		echo json_encode([
			'gioithieu' => "",
		]);
	}
	public function getalltintuc() {
		$this->load->model('Tintuc_model');
		$tintuc = $this->Tintuc_model->get_all();
		echo json_encode($tintuc);
	}
	public function getallvanban() {
		$this->load->model('Vanban_model');
		$vb = $this->Vanban_model->get_all();
		echo json_encode($vb);
	}
	public function getalltailieu() {
		$this->load->model('Tailieu_model');
		$tailieu = $this->Tailieu_model->get_all();
		echo json_encode($tailieu);
	}
	public function getallctdaotao() {
		$this->load->model('Nganhdaotao_model');
		$nganhdaotao = $this->Nganhdaotao_model->get_all();
		echo json_encode($nganhdaotao);
	}
	public function getgioithieu() {
		$this->load->model('Gioithieu_model');
		$gt = $this->Gioithieu_model->get_all();
		echo json_encode($gt);
	}

}

/* End of file Api.php */
/* Location: ./application/controllers/Api.php */