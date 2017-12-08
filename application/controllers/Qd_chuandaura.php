<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Qd_chuandaura extends CI_Controller {

	public function __construct() {
		parent::__construct();
		//Load Dependencies
		$this->load->model('Quyetdinh_chuandaura_model');

	}
	public function index() {

		$this->form_validation->set_rules('noidung', 'Nội dung', 'trim|required', ['required' => "%s Day la truong bat buoc"]);

		if ($this->form_validation->run()) {
			$this->Quyetdinh_chuandaura_model->update([
				'noidung' => $this->input->post('noidung'),
			], 1);
		}

		$qd = $this->Quyetdinh_chuandaura_model->get(1);
		/*var_dump($qd);*/
		$data = [
			'content' => 'quyetdinh_chuandaura',
			'contentdata' => [
				'qd' => $qd,
			],
		];

		$this->load->view('master', $data);
	}

}

/* End of file Qd_chuandaura.php */
/* Location: ./application/controllers/Qd_chuandaura.php */