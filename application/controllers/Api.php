<?php if (!defined('BASEPATH')) {
	exit('No direct script access allowed');
}

class Api extends CI_Controller {

	public function __construct() {
		parent::__construct();
	}
	public function slug_nganh()
	{
		$this->load->helper('slug');
		$this->load->model('Nganhdaotao_model');
		$nganhs=$this->Nganhdaotao_model->get_all();
		foreach ($nganhs as $nganh) {
			$this->Nganhdaotao_model->update(['slug'=>to_slug($nganh->ten_nganh).'-'.$nganh->id],$nganh->id);
		}
	}
	public function index() {

	}
	public function gioithieu() {
		echo json_encode([
			'gioithieu' => "",
		]);
	}
	public function qd_chuandaura() {
		echo json_encode([
			'qd' => "",
		]);
	}
	public function qd_ctdt() {
		echo json_encode([
			'qdctdt' => "",
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
	public function getdetailtintuc($id) {
		$this->load->model('Tintuc_model');
		$tintucitem = $this->Tintuc_model->get($id);
		echo json_encode($tintucitem);
	}
	public function chuandauracacnganh() {
		$this->load->model('Nganhdaotao_model');
		$chuandaura = $this->Nganhdaotao_model->get_all();
		echo json_encode($chuandaura);
	}

}

/* End of file Api.php */
/* Location: ./application/controllers/Api.php */