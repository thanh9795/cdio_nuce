<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Vanban extends CDIO_Controller {

	public function __construct() {
		parent::__construct();
		//Load Dependencies
		$this->load->model('Vanban_model');

	}

	// List all your items
	public function index() {
		$this->output->enable_profiler(TRUE);
		$this->load->library('Paginator');
		$key = $this->input->get('key');
		$totalItems = $this->Vanban_model->countall($key);
		$itemsPerPage = 10;
		$currentPage = $this->input->get('page') == NULL ? 1 : $this->input->get('page');
		$urlPattern = base_url('Vanban?page=(:num)');
		$offset = ($currentPage - 1) * 10;
		$vanbans = $this->Vanban_model->getall($key, 10, $offset);

		$paginator = new Paginator($totalItems, $itemsPerPage, $currentPage, $urlPattern);
		$data = [
			'content' => 'vanban/index',
			'contentdata' => [
				'vanbans' => $vanbans,
				'paginator' => $paginator,
			],

		];

		$this->load->view('master', $data);

	}

	public function add() {

		$this->load->helper('Slug');
		$this->form_validation->set_rules('so_ky_hieu_vb', 'Số ký hiệu VB', 'trim|required', ['required' => "%s Đây là trường bắt buộn"]);
		if ($this->form_validation->run()) {
			$insert_id = $this->Vanban_model->insert([
				'so_ky_hieu_vb' => $this->input->post('so_ky_hieu_vb'),
				'noi_dung' => $this->input->post('noi_dung'),
				'trich_yeu' => $this->input->post('trich_yeu'),
				'stt' => $this->input->post('stt'),
			]);
			$this->session->set_flashdata('code', 'success');
			$this->session->set_flashdata('message', 'Thêm mới thành công');
			redirect(base_url('vanban'), 'refresh');
			$slug = to_slug($this->input->post('trich_yeu')) . "-" . $insert_id;
			$this->Vanban_model->update(['slug' => $slug], $insert_id);
		}
		$data = [
			'content' => 'vanban/add',
			'contentdata' => [
			],
		];
		$this->load->view('master', $data);
	}

	public function update($id = NULL) {
		$this->form_validation->set_rules('so_ky_hieu_vb', 'Số ký hiệu VB', 'trim|required', ['required' => "%s Đây là trường bắt buộn"]);
		if ($this->form_validation->run()) {
			$this->Vanban_model->update([
				'so_ky_hieu_vb' => $this->input->post('so_ky_hieu_vb'),
				'noi_dung' => $this->input->post('noi_dung'),
				'trich_yeu' => $this->input->post('trich_yeu'),
				'stt' => $this->input->post('stt'),
			], $id);
			$this->session->set_flashdata('code', 'success');
			$this->session->set_flashdata('message', 'Cập nhật thành công');
			redirect(base_url('vanban'), 'refresh');
		}

		$vanban = $this->Vanban_model->get($id);
		$data = [
			'content' => 'vanban/edit',
			'contentdata' => [
				'vanban' => $vanban,
			],
		];

		$this->load->view('master', $data);
	}

	//Delete one item
	public function delete() {
		$this->Vanban_model->delete($this->input->post('id'));
	}

}

/* End of file Vanban.php */
/* Location: ./application/controllers/Vanban.php */