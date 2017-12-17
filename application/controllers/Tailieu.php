<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tailieu extends CI_Controller {

	public function __construct() {
		parent::__construct();
		//Load Dependencies
		$this->load->model('Tailieu_model');

	}

	public function index() {
		$this->load->library('Paginator');
		$key = $this->input->get('key');
		$totalItems = $this->Tailieu_model->countall($key);
		$itemsPerPage = 10;
		$currentPage = $this->input->get('page') == NULL ? 1 : $this->input->get('page');
		$urlPattern = base_url('Tailieu?page=(:num)');
		$offset = ($currentPage - 1) * 10;
		$tailieus = $this->Tailieu_model->getall($key, 10, $offset, '', '', '', ['id', 'desc']);

		$paginator = new Paginator($totalItems, $itemsPerPage, $currentPage, $urlPattern);
		$data = [
			'content' => 'tailieu/index',
			'contentdata' => [
				'tailieus' => $tailieus,
				'paginator' => $paginator,
			],

		];
		$this->load->view('master', $data);
	}

	public function add() {
		$this->form_validation->set_rules('ten_tai_lieu', 'Tên tài liệu', 'trim|required', ['required' => "%s Day la truong bat buoc"]);
		$this->form_validation->set_rules('mota', 'Mô tả', 'trim|required', ['required' => "%s Day la truong bat buoc"]);
		if ($this->form_validation->run()) {
			if ($this->input->post('loai_link') == 2) {
				$filename = preg_replace('/[[:^print:]]/', '', $_FILES['file_tai_lieu']['name']);
				$this->load->library('upload');
				$config['upload_path'] = 'public/tailieu';
				$config['allowed_types'] = TYPEALLOW;
				$config['overwrite'] = FALSE;
				$config['file_name'] = $filename;
				$this->upload->initialize($config);

				if (!$this->upload->do_upload('file_tai_lieu')) {

				} else {
					$link_tai_lieu = 'public/tailieu/' . $this->upload->data()['file_name'];
					$this->Tailieu_model->insert([
						'ten_tai_lieu' => $this->input->post('ten_tai_lieu'),
						'mota' => $this->input->post('mota'),
						'loai_link' => $this->input->post('loai_link'),
						'link_tai_lieu' => $link_tai_lieu,
						'stt' => $this->input->post('stt'),
						'ma_nhom' => $this->input->post('ma_nhom'),
					]);
					$this->session->set_flashdata('code', 'success');
					$this->session->set_flashdata('message', 'Thêm mới thành công');
					redirect(base_url('tailieu'), 'refresh');
				}
			} else {
				$link_tai_lieu = $this->input->post('link_tai_lieu');
				$this->Tailieu_model->insert([
					'ten_tai_lieu' => $this->input->post('ten_tai_lieu'),
					'mota' => $this->input->post('mota'),
					'loai_link' => $this->input->post('loai_link'),
					'link_tai_lieu' => $link_tai_lieu,
					'stt' => $this->input->post('stt'),
					'ma_nhom' => $this->input->post('ma_nhom'),

				]);
				$this->session->set_flashdata('code', 'success');
				$this->session->set_flashdata('message', 'Thêm mới thành công');
				redirect(base_url('tailieu'), 'refresh');

			}

		}
		$this->load->model('Nhomtailieu_model');
		$nhoms = $this->Nhomtailieu_model->get_all();
		$data = [
			'content' => 'tailieu/add',
			'contentdata' => [
				'nhoms' => $nhoms,
			],
		];
		$this->load->view('master', $data);
	}

	public function update($id = NULL) {
		$this->form_validation->set_rules('ten_tai_lieu', 'Tên tài liệu', 'trim|required', ['required' => "%s Day la truong bat buoc"]);
		$this->form_validation->set_rules('mota', 'Mô tả', 'trim|required', ['required' => "%s Day la truong bat buoc"]);

		if ($this->form_validation->run()) {

			if ($this->input->post('loai_link') == 2) {
				$filename = preg_replace('/[[:^print:]]/', '', $_FILES['file_tai_lieu']['name']);
				$config['upload_path'] = 'public/tailieu';
				$config['allowed_types'] = TYPEALLOW;
				$config['file_name'] = $filename;
				$config['overwrite'] = FALSE;
				$this->load->library('upload', $config);
				if (!$this->upload->do_upload('file_tai_lieu')) {

				} else {
					$link_tai_lieu = ('public/tailieu/' . $this->upload->data()['file_name']);
					$this->Tailieu_model->update([
						'ten_tai_lieu' => $this->input->post('ten_tai_lieu'),
						'mota' => $this->input->post('mota'),
						'loai_link' => $this->input->post('loai_link'),
						'link_tai_lieu' => $link_tai_lieu,
						'ma_nhom' => $this->input->post('ma_nhom'),
						'stt' => $this->input->post('stt'),
						'ma_nhom' => $this->input->post('ma_nhom'),
					], $id);
					$this->session->set_flashdata('code', 'success');
					$this->session->set_flashdata('message', 'Cập nhật thành công');
					redirect(base_url('tailieu'), 'refresh');
				}
			} else {
				$link_tai_lieu = $this->input->post('link_tai_lieu');
				$this->Tailieu_model->update([
					'ten_tai_lieu' => $this->input->post('ten_tai_lieu'),
					'mota' => $this->input->post('mota'),
					'loai_link' => $this->input->post('loai_link'),
					'link_tai_lieu' => $link_tai_lieu,
					'ma_nhom' => $this->input->post('ma_nhom'),
					'stt' => $this->input->post('stt'),
					'ma_nhom' => $this->input->post('ma_nhom'),
				], $id);
				$this->session->set_flashdata('code', 'success');
				$this->session->set_flashdata('message', 'Cập nhật thành công');
				redirect(base_url('tailieu'), 'refresh');
			}

		}

		$tailieu = $this->Tailieu_model->get($id);
		/*$join = [
				[
					'table' => 'nhom_tai_lieu',
					'on' => 'nhom_tai_lieu.id=tai_lieu.ma_nhom',
				],
			];
			$tailieu = $this->Lichsuchamsoc_model->get_all($join, 'ngaygoi,noidung,content,lichsuchamsoc.id as idhis', ['id_hocvien' => $id, 'name' => 'chamsocdaihan'], '', '', '', ['lichsuchamsoc.id', 'desc'], '');
		*/
		$this->load->model('Nhomtailieu_model');
		$nhoms = $this->Nhomtailieu_model->get_all();
		$data = [
			'content' => 'tailieu/edit',
			'contentdata' => [
				'tailieu' => $tailieu,
				'nhoms' => $nhoms,
			],
		];

		$this->load->view('master', $data);
	}

	//Delete one item
	public function delete() {
		$this->Tailieu_model->delete($this->input->post('id'));
	}

}

/* End of file Tailieu.php */
/* Location: ./application/controllers/Tailieu.php */