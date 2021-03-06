<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Nganhdaotao extends CDIO_Controller {

	public function __construct() {
		parent::__construct();
		//Load Dependencies
		$this->load->model('Nganhdaotao_model');

	}
	public function index() {

		//$this->output->enable_profiler(TRUE);
		$this->load->library('Paginator');
		$key = $this->input->get('key');
		$totalItems = $this->Nganhdaotao_model->countall($key);
		$itemsPerPage = 10;
		$currentPage = $this->input->get('page') == NULL ? 1 : $this->input->get('page');
		$urlPattern = base_url('Nganhdaotao?page=(:num)');
		$offset = ($currentPage - 1) * 10;
		$nganhdaotaos = $this->Nganhdaotao_model->getall($key, 10, $offset);

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
		if ($id==NULL) {
			redirect(base_url('Nganhdaotao'),'refresh');
			
		}
		$nganhdaotao = $this->Nganhdaotao_model->get_ctdt($id);
		if ($nganhdaotao==NULL) {
			redirect(base_url('Nganhdaotao'),'refresh');
		}

		$data = [
			'content' => 'nganhdaotao/chuongtrinhdaotao',
			'contentdata' => [
				'nganhdaotao' => $nganhdaotao,
			],
		];
		$this->load->view('master', $data, FALSE);
	}
	public function saveCTDT() {
		$this->load->helper('Mydate');
		$this->load->model('Chuongtrinhdt_model');
		$this->load->model('Nganhdaotao_model');
		$this->Nganhdaotao_model->update(['last_id' => $this->session->userdata('id'), 'last_update' => currentdate()], $this->input->post('dtid'));
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
		for ($i = 1; $i <= $nganh->so_hoc_ky; $i++) {
			$tem = [];
			foreach ($ctdt as $ct) {
				if ($ct->hoc_ky == $i) {
					$tem[] = $ct;
				}
			}
			$hocky['hocki' . $i] = $tem;
		}

		$hocky['so_hoc_ky'] = range(1, $nganh->so_hoc_ky);
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
			[
				'table' => 'decuong',
				'on' => 'decuong.id_monhoc=monhoc.id',
			],
		], 'monhoc.id as id,monhoc.ma_mon as ma_mon,ten_mon,so_tin_chi,so_tiet_ly_thuyet,so_tiet_thuc_hanh,ma_hoc_phan_tien_quyet,hoc_ky,link,type', ['ma_nganh' => $id], '', '', '', ['position', 'ASC']);
		$hocky = [];
		for ($i = 1; $i <= $nganh->so_hoc_ky; $i++) {
			$tem = [];
			foreach ($ctdt as $ct) {
				if ($ct->hoc_ky == $i) {
					$tem[] = $ct;
				}
			}
			$hocky['hocki' . $i] = $tem;
		}
		$hocky['so_hoc_ky'] = range(1, $nganh->so_hoc_ky);
		echo json_encode($hocky);
	}
	public function add() {
		$this->load->helper('Mydate');
		//$this->output->enable_profiler(TRUE);
		$this->load->helper('Slug');
		//$this->output->enable_profiler(TRUE);
		$this->form_validation->set_rules('ma_nganh', 'Mã ngành', 'trim|required', ['required' => "%s Đây là trường bắt buộc"]);
		$this->form_validation->set_rules('ten_nganh', 'Tên ngành', 'trim|required', ['required' => "%s Đây là trường bắt buộc"]);
	/*	if ($this->form_validation->run()) {
			if (!empty($_FILES['chuandaura']['name'])) {
				$path = 'public/chuandaura/';
				$conf['upload_path'] = $path;
				$conf['allowed_types'] = 'pdf';
				//$conf['file_name']     = '';
				$conf['overwrite'] = FALSE;
				$conf['max_size'] = 20000;
				$this->load->library('upload', $conf);
				if (!$this->upload->do_upload('chuandaura')) {
					$this->session->set_flashdata('code', 'error');
					$this->session->set_flashdata('message', $this->upload->display_errors());
				} else {
					$data = array('upload_data' => $this->upload->data());
					$insert_id = $this->Nganhdaotao_model->insert([
						'ten_nganh' => $this->input->post('ten_nganh'),
						'ma_nganh' => $this->input->post('ma_nganh'),
						'stt' => $this->input->post('stt'),
						'so_hoc_ky' => $this->input->post('so_hoc_ky'),
						'chuandaura' => $path . $this->upload->data()['file_name'],
					]);
					$slug = to_slug($this->input->post('ten_nganh')) . "-" . $insert_id;
					$this->Nganhdaotao_model->update(['slug' => $slug], $insert_id);
					$this->session->set_flashdata('code', 'success');
					$this->session->set_flashdata('message', 'Thêm mới thành công');
					redirect(base_url('nganhdaotao'), 'refresh');
				}
			} else {
				$insert_id = $this->Nganhdaotao_model->insert([
					'ten_nganh' => $this->input->post('ten_nganh'),
					'ma_nganh' => $this->input->post('ma_nganh'),
					'stt' => $this->input->post('stt'),
					'so_hoc_ky' => $this->input->post('so_hoc_ky'),
				]);
				$slug = to_slug($this->input->post('ten_nganh')) . "-" . $insert_id;
				$this->Nganhdaotao_model->update(['slug' => $slug], $insert_id);
				$this->session->set_flashdata('code', 'success');
				$this->session->set_flashdata('message', 'Thêm mới thành công');
				redirect(base_url('nganhdaotao'), 'refresh');
			}

		}*/
		if ($this->form_validation->run()) {
		
				$insert_id = $this->Nganhdaotao_model->insert([
					'ten_nganh' => $this->input->post('ten_nganh'),
					'ma_nganh' => $this->input->post('ma_nganh'),
					'stt' => $this->input->post('stt'),
					'so_hoc_ky' => $this->input->post('so_hoc_ky'),
					'chuandaura' => $this->input->post('chuandaura'),
					'last_update' => currentdate(),
				]);
				$slug = to_slug($this->input->post('ten_nganh')) . "-" . $insert_id;
				$this->Nganhdaotao_model->update(['slug' => $slug], $insert_id);
				$this->session->set_flashdata('code', 'success');
				$this->session->set_flashdata('message', 'Thêm mới thành công');
				redirect(base_url('nganhdaotao'), 'refresh');

		}

		$data = [
			'content' => 'nganhdaotao/add',
			'contentdata' => [
			],
		];
		$this->load->view('master', $data);
	}

	public function update($id = NULL) {
		$this->load->helper('Slug');
		//	$this->output->enable_profiler(TRUE);
		$this->form_validation->set_rules('ma_nganh', 'Mã ngành', 'trim|required', ['required' => "%s Đây là trường bắt buộc"]);
		$this->form_validation->set_rules('ten_nganh', 'Tên ngành', 'trim|required', ['required' => "%s Đây là trường bắt buộc"]);
		/*if ($this->form_validation->run()) {
			if ($this->input->post('upload') == 1) {
				$path = 'public/chuandaura/';
				$conf['upload_path'] = $path;
				$conf['allowed_types'] = 'pdf';
				//$conf['file_name']     = '';
				$conf['overwrite'] = FALSE;
				$conf['max_size'] = 20000;
				$this->load->library('upload', $conf);
				if (!$this->upload->do_upload('chuandaura')) {
					$this->session->set_flashdata('code', 'error');
					$this->session->set_flashdata('message', $this->upload->display_errors());
				} else {
					$data = array('upload_data' => $this->upload->data());
					$this->Nganhdaotao_model->update([
						'ten_nganh' => $this->input->post('ten_nganh'),
						'ma_nganh' => $this->input->post('ma_nganh'),
						'stt' => $this->input->post('stt'),
						'so_hoc_ky' => $this->input->post('so_hoc_ky'),
						'chuandaura' => $path . $this->upload->data()['file_name'],
					], $id);
					$this->session->set_flashdata('code', 'success');
					$this->session->set_flashdata('message', 'Cập nhật thành công');
					redirect(base_url('nganhdaotao'), 'refresh');
				}
			} else {
				$this->Nganhdaotao_model->update([
					'ten_nganh' => $this->input->post('ten_nganh'),
					'ma_nganh' => $this->input->post('ma_nganh'),
					'stt' => $this->input->post('stt'),
					'so_hoc_ky' => $this->input->post('so_hoc_ky'),
				], $id);
				$this->session->set_flashdata('code', 'success');
				$this->session->set_flashdata('message', 'Cập nhật thành công');
				redirect(base_url('nganhdaotao'), 'refresh');
			}

		}*/
		if ($this->form_validation->run()) {
			$insert_id = $this->Nganhdaotao_model->update([
					'ten_nganh' => $this->input->post('ten_nganh'),
					'ma_nganh' => $this->input->post('ma_nganh'),
					'stt' => $this->input->post('stt'),
					'so_hoc_ky' => $this->input->post('so_hoc_ky'),
					'chuandaura' => $this->input->post('chuandaura'),
				],$id);
				$slug = to_slug($this->input->post('ten_nganh')) . "-" . $insert_id;
				$this->Nganhdaotao_model->update(['slug' => $slug], $insert_id);
				$this->session->set_flashdata('code', 'success');
				$this->session->set_flashdata('message', 'Cập nhật thành công');
				redirect(base_url('nganhdaotao'), 'refresh');


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
		$this->session->set_flashdata('code', 'success');
		$this->session->set_flashdata('message', 'Đã xóa');
	}

}

/* End of file Nganhdaotao.php */
/* Location: ./application/controllers/Nganhdaotao.php */