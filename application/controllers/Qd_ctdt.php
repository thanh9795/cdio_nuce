<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Qd_ctdt extends CI_Controller {

	public function __construct() {
		parent::__construct();
		//Load Dependencies
		$this->load->model('Qd_ctdt_model');

	}
	public function index() {

		$this->form_validation->set_rules('noidung', 'Nội dung', 'trim|required', ['required' => "%s Day la truong bat buoc"]);

		if ($this->form_validation->run()) {
			$this->Qd_ctdt_model->update([
				'noidung' => $this->input->post('noidung'),
			], 1);
		}

		$qdctdt = $this->Qd_ctdt_model->get(1);
		/*var_dump($qdctdt);*/
		$data = [
			'content' => 'quyetdinh_ctdt',
			'contentdata' => [
				'qdctdt' => $qdctdt,
			],
		];

		$this->load->view('master', $data);
	}

}

/* End of file Qd_ctdt.php */
/* Location: ./application/controllers/Qd_ctdt.php */