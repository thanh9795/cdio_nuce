<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Qd_chuandaura extends CI_Controller {

	public function __construct() {
		parent::__construct();
		//Load Dependencies
		$this->load->model('Quyetdinh_chuandaura_model');

	}
	public function index() {

		$this->form_validation->set_rules('noidung', 'Nội dung', 'trim|required', ['required' => "%s Đây là trường bắt buộc"]);

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
	public function add() {
		if ($this->input->server('REQUEST_METHOD') == "POST") {
			$config['upload_path'] = './assets/pdf';
			$config['allowed_types'] = "pdf";
			$config['max_size'] = 20000;

			$this->load->library('upload', $config);

			if (!$this->upload->do_upload('fileattach')) {
				echo json_encode(['code' => 'error', 'message' => strip_tags($this->upload->display_errors())]);
			} else {
				$data = array('upload_data' => $this->upload->data());
				$path = "assets/pdf/" . $this->upload->data()['file_name'];
				$this->Quyetdinh_chuandaura_model->update(['noidung' => $path], 1);
				echo json_encode(['code' => 'success', 'message' => "Cập nhật thành công thành công"]);
			}
		}
	}
	public function api() {
		$qd = $this->Quyetdinh_chuandaura_model->get(1);
		echo json_encode(['file' => $qd->noidung]);
	}

}

/* End of file Qd_chuandaura.php */
/* Location: ./application/controllers/Qd_chuandaura.php */