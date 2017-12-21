<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tintuc extends CDIO_Controller {

	public function __construct() {
		parent::__construct();
		//Load Dependencies
		$this->load->model('Tintuc_model');

	}

	// List all your items
	public function index() {
		$this->output->enable_profiler(TRUE);
		$this->load->library('Paginator');
		$key = $this->input->get('key');
		$totalItems = $this->Tintuc_model->countall($key);
		$itemsPerPage = 10;
		$currentPage = $this->input->get('page') == NULL ? 1 : $this->input->get('page');
		$urlPattern = base_url('Tintuc?page=(:num)');
		$offset = ($currentPage - 1) * 10;
		$tintucs = $this->Tintuc_model->getall($key, 10, $offset);

		$paginator = new Paginator($totalItems, $itemsPerPage, $currentPage, $urlPattern);
		$data = [
			'content' => 'tin_tuc/index',
			'contentdata' => [
				'tintucs' => $tintucs,
				'paginator' => $paginator,
			],

		];

		$this->load->view('master', $data);
	}
	public function detail($id) {
		$tin = $this->Tintuc_model->get($id);

		$data = [
			'content' => 'tin_tuc/detail',
			'contentdata' => [
				'tin' => $tin,
			],

		];
		$this->load->view('master', $data);
	}

	public function add() {
		$this->load->helper('Slug');
		$this->form_validation->set_rules('tieude', 'Tiêu đề', 'trim|required', ['required' => "%s Đây là trường bắt buộc"]);
		if ($this->form_validation->run()) {
			$insert_id = $this->Tintuc_model->insert([
				'tieude' => $this->input->post('tieude'),
				'mota' => $this->input->post('mota'),
				'chi_tiet' => $this->input->post('chi_tiet'),
				'stt' => $this->input->post('stt'),
			]);
			if (count($this->input->post('dinhkems'))>0) {
				$this->load->model('Tintuc_dinhkem_model');
				foreach ($this->input->post('dinhkems') as $key => $value) {
					if ($value!=NULL&$value!="") {
						$this->Tintuc_dinhkem_model->insert(
							['type'=>3,'link'=>$value,'id_tintuc'=>$insert_id]
						);
					}
				}
			}
			$this->session->set_flashdata('code', 'success');
			$this->session->set_flashdata('message', 'Thêm mới thành công');
			$slug = to_slug($this->input->post('tieude')) . "-" . $insert_id;
			$this->Tintuc_model->update(['slug' => $slug], $insert_id);
		}
		$data = [
			'content' => 'tin_tuc/add',
			'contentdata' => [
			],
		];
		$this->load->view('master', $data);
	}

	public function update($id = NULL) {
		$this->load->model('Tintuc_dinhkem_model');
		$this->form_validation->set_rules('tieude', 'Tiêu đề', 'trim|required', ['required' => "%s Đây là trường bắt buộc"]);
		if ($this->form_validation->run()) {
			$this->Tintuc_model->update([
				'tieude' => $this->input->post('tieude'),
				'mota' => $this->input->post('mota'),
				'chi_tiet' => $this->input->post('chi_tiet'),
				'stt' => $this->input->post('stt'),
				'date_created' => $this->input->post('date_created'),
				'date_updated' => $this->input->post('date_updated'),
			], $id);
			$this->Tintuc_dinhkem_model->deleteByIdTintuc($id);
			if (count($this->input->post('dinhkems'))>0) {
				foreach ($this->input->post('dinhkems') as $key => $value) {
					if ($value!=NULL&$value!="") {
						$this->Tintuc_dinhkem_model->insert(
							['type'=>3,'link'=>$value,'id_tintuc'=>$id]
						);
					}
				}
			}
			$this->session->set_flashdata('code', 'success');
			$this->session->set_flashdata('message', 'Cập nhật thành công');
		}

		$tintuc = $this->Tintuc_model->get($id);
		$data = [
			'content' => 'tin_tuc/edit',
			'contentdata' => [
				'tintuc' => $tintuc,
			],
		];

		$this->load->view('master', $data);
	}

	//Delete one item
	public function delete() {
		$this->Tintuc_model->delete($this->input->post('id'));
	}

}

/* End of file Tintuc.php */
/* Location: ./application/controllers/Tintuc.php */