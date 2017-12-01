<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Nganhdaotao extends CI_Controller {

	public function __construct() {
		parent::__construct();
		//Load Dependencies
		$this->load->model('Nganhdaotao_model');

	}
	public function index() {

		$this->output->enable_profiler(TRUE);
		$this->load->library('Paginator');
		$key = $this->input->get('key');
		$totalItems = $this->Nganhdaotao_model->countall($key);
		$itemsPerPage = 5;
		$currentPage = $this->input->get('page') == NULL ? 1 : $this->input->get('page');
		$urlPattern = base_url('Nganhdaotao?page=(:num)');
		$offset = ($currentPage - 1) * 5;
		$nganhdaotaos = $this->Nganhdaotao_model->getall($key, 5, $offset);

		$paginator = new Paginator($totalItems, $itemsPerPage, $currentPage, $urlPattern);
		$data = [
			'content' => 'nganhdaotao/index',
			'contentdata' => [
				'nganhdaotaos' => $nganhdaotaos,
				'paginator' => $paginator,
			],

		];

		$this->load->view('master', $data);

	}
	public function chuongtrinhdaotao($id) {
		$this->load->model('Nganhdaotao_model');
		$nganhdaotao = $this->Nganhdaotao_model->get($id);
		$data = [
			'content' => 'nganhdaotao/chuongtrinhdaotao',
			'contentdata' => [],
		];
		$this->load->view('master', $data, FALSE);
	}
	public function saveCTDT() {
		var_dump($this->input->post('ctdt'));
		$this->load->model('Chuongtrinhdt_model');
		$this->Chuongtrinhdt_model->deleteCTDT($this->input->post('dtid'));
		for ($i = 1; $i <= 10; $i++) {
			$q = "hocki" . $i;
			if (isset($this->input->post('ctdt')[$q])) {
				foreach ($this->input->post('ctdt')[$q] as $key => $value) {
					$this->Chuongtrinhdt_model->insert([
						'position' => $key,
						'ma_mon' => $value['id'],
						'ma_nganh' => $this->input->post('dtid'),
						'hoc_ky' => $i,
					]);
				}
			}

		}

	}
	public function apihocki() {
		$id = $this->input->get('id');
		$this->load->model('Nganhdaotao_model');
		$this->load->model('Chuongtrinhdt_model');
		$nganh = $this->Nganhdaotao_model->get($id);
		$ctdt = $this->Chuongtrinhdt_model->get_all([
			[
				'table' => 'monhoc',
				'on' => 'monhoc.id=ctdao_tao.ma_mon',
			],
		], 'monhoc.id as id,monhoc.ma_mon as ma_mon,ten_mon,so_tin_chi,so_tiet_ly_thuyet,so_tiet_thuc_hanh,ma_hoc_phan_tien_quyet,de_cuong,hoc_ky', ['ma_nganh' => $id], '', '', '', ['position', 'ASC']);
		$hocky = [];
		for ($i = 1; $i <= 10; $i++) {
			$tem = [];
			foreach ($ctdt as $ct) {
				if ($ct->hoc_ky == $i) {
					$tem[] = $ct;
				}
			}
			$hocky['hocki' . $i] = $tem;
		}
		$hocky['so_hoc_ky'] = $nganh->so_hoc_ky == 9 ? [1, 2, 3, 4, 5, 6, 7, 8, 9] : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
		echo json_encode($hocky);
	}
	public function apihocky() {
		$id = $this->input->get('id');
		$this->load->model('Nganhdaotao_model');
		$this->load->model('Chuongtrinhdt_model');
		$nganh = $this->Nganhdaotao_model->get($id);
		$ctdt = $this->Chuongtrinhdt_model->get_all([
			[
				'table' => 'monhoc',
				'on' => 'monhoc.id=ctdao_tao.ma_mon',
			],
		], 'monhoc.id as id,monhoc.ma_mon as ma_mon,ten_mon,so_tin_chi,so_tiet_ly_thuyet,so_tiet_thuc_hanh,ma_hoc_phan_tien_quyet,de_cuong,hoc_ky', ['ma_nganh' => $id], '', '', '', ['position', 'ASC']);
		$hocky = [];
		for ($i = 1; $i <= 10; $i++) {
			$tem = [];
			foreach ($ctdt as $ct) {
				if ($ct->hoc_ky == $i) {
					$tem[] = $ct;
				}
			}
			$hocky['hocki' . $i] = $tem;
		}
		$hocky['so_hoc_ky'] = $nganh->so_hoc_ky == 9 ? [1, 2, 3, 4, 5, 6, 7, 8, 9] : [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
		echo json_encode($hocky);
	}
	public function add() {
		$this->form_validation->set_rules('ma_nganh', 'Mã ngành', 'trim|required', ['required' => "%s Day la truong bat buoc"]);
		$this->form_validation->set_rules('ten_nganh', 'Tên ngành', 'trim|required', ['required' => "%s Day la truong bat buoc"]);
		if ($this->form_validation->run()) {
			$this->Nganhdaotao_model->insert([
				'ten_nganh' => $this->input->post('ten_nganh'),
				'ma_nganh' => $this->input->post('ma_nganh'),
				'stt' => $this->input->post('stt'),
			]);
		}
		$data = [
			'content' => 'nganhdaotao/add',
			'contentdata' => [
			],
		];
		$this->load->view('master', $data);
	}

	public function update($id = NULL) {

		$this->form_validation->set_rules('ma_nganh', 'Mã ngành', 'trim|required', ['required' => "%s Day la truong bat buoc"]);
		$this->form_validation->set_rules('ten_nganh', 'Tên ngành', 'trim|required', ['required' => "%s Day la truong bat buoc"]);

		if ($this->form_validation->run()) {
			$this->Nganhdaotao_model->update([
				'ten_nganh' => $this->input->post('ten_nganh'),
				'ma_nganh' => $this->input->post('ma_nganh'),
				'stt' => $this->input->post('stt'),
			], $id);
		}

		$nganhdaotao = $this->Nganhdaotao_model->get($id);
		$data = [
			'content' => 'nganhdaotao/edit',
			'contentdata' => [
				'nganhdaotao' => $nganhdaotao,
			],
		];

		$this->load->view('master', $data);
	}

	//Delete one item
	public function delete() {
		$this->Nganhdaotao_model->delete($this->input->post('id'));
	}

}

/* End of file Nganhdaotao.php */
/* Location: ./application/controllers/Nganhdaotao.php */