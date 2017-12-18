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
	public function add()
	{
		if ($this->input->server('REQUEST_METHOD')=="POST") {
				$config['upload_path']          = './assets/pdf';
				$config['allowed_types']        = "pdf";
				$config['max_size']             = 20000;

				$this->load->library('upload', $config);

				if ( ! $this->upload->do_upload('fileattach'))
				{
					echo json_encode(['code'=>'error','message'=>strip_tags($this->upload->display_errors())]);
				}
				else
				{
					$data = array('upload_data' => $this->upload->data());
					$path="assets/pdf/".$this->upload->data()['file_name'];
					$this->Qd_ctdt_model->update(['noidung'=>$path],1);
					echo json_encode(['code'=>'success','message'=>"Cập nhật thành công thành công"]);
				}
		}
	}
	public function api()
	{
		$qd = $this->Qd_ctdt_model->get(1);
		echo json_encode(['file'=>$qd->noidung]);
	}

}

/* End of file Qd_ctdt.php */
/* Location: ./application/controllers/Qd_ctdt.php */