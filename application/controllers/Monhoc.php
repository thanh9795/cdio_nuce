<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Monhoc extends CDIO_Controller {

	public function __construct() {
		parent::__construct();
		//Load Dependencies
		$this->load->model('Monhoc_model');

	}

	public function index() {

		$this->load->library('Paginator');
		$key = $this->input->get('key');
		$totalItems = $this->Monhoc_model->countall($key);
		$itemsPerPage = 20;
		$currentPage = $this->input->get('page') == NULL ? 1 : $this->input->get('page');
		$urlPattern = base_url('Monhoc?page=(:num)');
		$offset = ($currentPage - 1) * 20;
		$monhocs = $this->Monhoc_model->getall($key, 20, $offset);
		//var_dump($monhocs);
		$paginator = new Paginator($totalItems, $itemsPerPage, $currentPage, $urlPattern);
		$data = [
			'content' => 'monhoc/index',
			'contentdata' => [
				'monhocs' => $monhocs,
				'paginator' => $paginator,
			],

		];

		$this->load->view('master', $data);

	}

	public function add() {
		$this->form_validation->set_rules('ma_mon', 'Mã môn', 'trim|required', ['required' => "%s Đây là trường bắt buộc"]);
		$this->form_validation->set_rules('ten_mon', 'Tên môn', 'trim|required', ['required' => "%s Đây là trường bắt buộc"]);
		$this->form_validation->set_rules('so_tin_chi', 'Số tín chỉ', 'trim|required', ['required' => "%s Đây là trường bắt buộc"]);

		$monhocs = $this->Monhoc_model->get_all();

		if ($this->form_validation->run()) {
			$this->Monhoc_model->insert([
				'last_id' => $this->session->userdata('id'),
				'ma_mon' => $this->input->post('ma_mon'),
				'ten_mon' => $this->input->post('ten_mon'),
				'so_tin_chi' => $this->input->post('so_tin_chi'),
				'so_tiet_ly_thuyet' => $this->input->post('so_tiet_ly_thuyet'),
				'so_tiet_thuc_hanh' => $this->input->post('so_tiet_thuc_hanh'),
				'ma_hoc_phan_tien_quyet' => count($this->input->post('ma_hoc_phan_tien_quyet')) ? implode('|', $this->input->post('ma_hoc_phan_tien_quyet')) : "",

			]);
			$this->session->set_flashdata('code', 'success');
			$this->session->set_flashdata('message', 'Thêm mới thành công');
			redirect(base_url('monhoc'), 'refresh');
		}
		$data = [
			'content' => 'monhoc/add',
			'contentdata' => [
				'monhocs' => $monhocs,
			],
		];
		$this->load->view('master', $data);
	}

	public function update($id = NULL) {
		$this->form_validation->set_rules('ma_mon', 'Mã môn', 'trim|required', ['required' => "%s Đây là trường bắt buộc"]);
		$this->form_validation->set_rules('ten_mon', 'Tên môn', 'trim|required', ['required' => "%s Đây là trường bắt buộc"]);
		$this->form_validation->set_rules('so_tin_chi', 'Số tín chỉ', 'trim|required', ['required' => "%s Đây là trường bắt buộc"]);

		if ($this->form_validation->run()) {
			$this->Monhoc_model->update([
				'last_id' => $this->session->userdata('id'),
				'ma_mon' => $this->input->post('ma_mon'),
				'ten_mon' => $this->input->post('ten_mon'),
				'so_tin_chi' => $this->input->post('so_tin_chi'),
				'so_tiet_ly_thuyet' => $this->input->post('so_tiet_ly_thuyet'),
				'so_tiet_thuc_hanh' => $this->input->post('so_tiet_thuc_hanh'),
				'ma_hoc_phan_tien_quyet' => count($this->input->post('ma_hoc_phan_tien_quyet')) ? implode('|', $this->input->post('ma_hoc_phan_tien_quyet')) : "",
			], $id);
			$this->session->set_flashdata('code', 'success');
			$this->session->set_flashdata('message', 'Cập nhật thành công');
			redirect(base_url('monhoc'), 'refresh');
		}

		$monhoc = $this->Monhoc_model->get($id);
		$monhocs = $this->Monhoc_model->get_all();
		$data = [
			'content' => 'monhoc/edit',
			'contentdata' => [
				'monhoc' => $monhoc,
				'monhocs' => $monhocs,
			],
		];

		$this->load->view('master', $data);
	}

	//Delete one item
	public function delete() {
		$this->Monhoc_model->delete($this->input->post('id'));
	}
	public function api() {
		//$this->output->enable_profiler(TRUE);
		$key = $this->input->get('key');
		$this->load->model('Chuongtrinhdt_model');

		$id = $this->input->get('id');

		$ctdt = $this->Chuongtrinhdt_model->get_all([
			[
				'table' => 'monhoc',
				'on' => 'monhoc.id=ctdao_tao.ma_mon',
			],
		], 'monhoc.id as id', ['ma_nganh' => $id], '', '', '', ['position', 'ASC']);
		$mang = [];
		foreach ($ctdt as $value) {
			$mang[] = $value->id;
		}
		$monhocs = $this->Monhoc_model->searchByKey($key, $mang);
		echo json_encode($monhocs);
	}

}

/* End of file Monhoc.php */
/* Location: ./application/controllers/Monhoc.php */