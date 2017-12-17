<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Nhomtailieu extends CDIO_Controller {

	public function __construct() {
		parent::__construct();
		//Load Dependencies
		$this->load->model('Nhomtailieu_model');

	}

	public function index() {
		//$this->output->enable_profiler(TRUE);
		$this->load->library('Paginator');
		$key = $this->input->get('key');
		$totalItems = $this->Nhomtailieu_model->countall($key);
		$itemsPerPage = 10;
		$currentPage = $this->input->get('page') == NULL ? 1 : $this->input->get('page');
		$urlPattern = base_url('Nhomtailieu?page=(:num)');
		$offset = ($currentPage - 1) * 10;
		$nhomtailieus = $this->Nhomtailieu_model->getall($key, 10, $offset);

		$paginator = new Paginator($totalItems, $itemsPerPage, $currentPage, $urlPattern);
		$data = [
			'content' => 'nhomtailieu/index',
			'contentdata' => [
				'nhomtailieus' => $nhomtailieus,
				'paginator' => $paginator,
			],

		];

		$this->load->view('master', $data);
	}

	public function add() {
		$this->form_validation->set_rules('ten_nhom', 'Tên nhóm tài liệu', 'trim|required', ['required' => "%s Day la truong bat buoc"]);
		if ($this->form_validation->run()) {
			$this->Nhomtailieu_model->insert([
				'ten_nhom' => $this->input->post('ten_nhom'),
				'stt' => $this->input->post('stt'),
			]);
			$this->session->set_flashdata('code', 'success');
			$this->session->set_flashdata('message', 'Thêm mới thành công');
			redirect(base_url('nhomtailieu'), 'refresh');
		}
		$data = [
			'content' => 'nhomtailieu/add',
			'contentdata' => [
			],
		];
		$this->load->view('master', $data);
	}

	public function update($id = NULL) {

		$this->form_validation->set_rules('ten_nhom', 'Tên nhóm tài liệu', 'trim|required', ['required' => "%s Day la truong bat buoc"]);
		if ($this->form_validation->run()) {
			$this->Nhomtailieu_model->update([
				'ten_nhom' => $this->input->post('ten_nhom'),
				'stt' => $this->input->post('stt'),
			], $id);
			$this->session->set_flashdata('code', 'success');
			$this->session->set_flashdata('message', 'Cập nhật thành công');
			redirect(base_url('nhomtailieu'), 'refresh');
		}

		$nhomtailieu = $this->Nhomtailieu_model->get($id);
		$data = [
			'content' => 'nhomtailieu/edit',
			'contentdata' => [
				'nhomtailieu' => $nhomtailieu,
			],
		];

		$this->load->view('master', $data);
	}

	//Delete one item
	public function delete() {
		$this->Nhomtailieu_model->delete($this->input->post('id'));
	}

}

/* End of file Nhomtailieu.php */
/* Location: ./application/controllers/Nhomtailieu.php */