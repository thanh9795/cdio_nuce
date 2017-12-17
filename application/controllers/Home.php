<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function tintuc() {
		$this->load->model('Tintuc_model');
		$this->load->library('Paginator');
		$key = $this->input->get('key');
		$totalItems = $this->Tintuc_model->countall($key);
		$itemsPerPage = 10;
		$currentPage = $this->input->get('page') == NULL ? 1 : $this->input->get('page');
		$urlPattern = base_url('home/tintuc?key=' . $key . '&page=(:num)');
		$offset = ($currentPage - 1) * 10;
		$tintuc = $this->Tintuc_model->getall($key, 10, $offset);

		$paginator = new Paginator($totalItems, $itemsPerPage, $currentPage, $urlPattern);
		$data = [
			'subview' => 'tintuc',
			'subdata' => [
				'tintucs' => $tintuc,
				'paginator' => $paginator,
			],

		];
		$this->load->view('master_home', $data);
	}
	public function incDownload() {
		$this->load->model('Tailieu_model');
		$this->Tailieu_model->incDown($this->input->post('docId'));
	}
	public function incView() {
		var_dump($this->input->post());
		$this->load->model('Tailieu_model');
		$this->Tailieu_model->incView($this->input->post('docId'));
	}
	public function detailTintuc($url) {
		$this->load->helper('Attach');
		$this->load->model('Tintuc_model');
		$this->load->model('Tintuc_dinhkem_model');
		$url = substr($url, 0, -5);
		$tintucitem = $this->Tintuc_model->getbySlug($url);
		$all = $this->Tintuc_model->get_all('', '', ['id!=' => $tintucitem->id]);
		$data = [
			'subview' => "tintuc_detail",
			'subdata' => [
				'tintucitems' => $tintucitem,
				'dinhkems' => $this->Tintuc_dinhkem_model->get_all('', '', ['id_tintuc' => $tintucitem->id]),
				'all' => $all,
			],
		];

		//var_dump($tintucitem);
		$this->load->view('master_home', $data);

	}
	public function detailVanban($url) {
		$this->load->helper('Attach');
		$this->load->model('Vanban_model');
		$this->load->model('Vanban_dinhkem_model');
		$url = substr($url, 0, -5);
		$vanbanitem = $this->Vanban_model->getbySlug($url);
		//var_dump($vanbanitem);
		$all = $this->Vanban_model->get_all('', '', ['id!=' => $vanbanitem->id]);

		$data = [
			'subview' => "vanban_detail",
			'subdata' => [
				'vanbanitems' => $vanbanitem,
				'dinhkems' => $this->Vanban_dinhkem_model->get_all('', '', ['id_vanban' => $vanbanitem->id]),
				'all' => $all,
			],
		];

		//var_dump($vanbanitem);
		$this->load->view('master_home', $data);

	}

	public function vanban() {
		/*$this->load->model('Vanban_model');
			$vanban = $this->Vanban_model->get_all();
			$data = [
				'subview' => "vanban",
				'subdata' => [
					'vanbans' => $vanban,
				],
			];
		*/

		$this->load->model('Vanban_model');
		$this->load->library('Paginator');
		$key = $this->input->get('key');
		$totalItems = $this->Vanban_model->countall($key);
		$itemsPerPage = 10;
		$currentPage = $this->input->get('page') == NULL ? 1 : $this->input->get('page');
		$urlPattern = base_url('home/vanban?key=' . $key . '&page=(:num)');
		$offset = ($currentPage - 1) * 10;
		$vanban = $this->Vanban_model->getall($key, 10, $offset);

		$paginator = new Paginator($totalItems, $itemsPerPage, $currentPage, $urlPattern);
		$data = [
			'subview' => 'vanban',
			'subdata' => [
				'vanbans' => $vanban,
				'paginator' => $paginator,
			],

		];
		$this->load->view('master_home', $data);
	}
	public function index() {
		$this->load->model('Gioithieu_model');
		$gt = $this->Gioithieu_model->get_all();
		$this->load->model('Hinhanh_model');
		$hinhanhs = $this->Hinhanh_model->get_all('', '', [], '', '', '', ['position', 'ASC']);
		$gt = array_shift($gt);
		/*	echo "<pre>";
			print_r ($vanban);
		*/
		$data = [
			'subview' => "gioithieu",
			'subdata' => [
				'gts' => $gt,
				'hinhanhs' => $hinhanhs,
			],
		];
		$this->load->view('master_home', $data);
	}
	public function qd_chuandaura() {
		$this->load->model('Quyetdinh_chuandaura_model');
		$qd = $this->Quyetdinh_chuandaura_model->get_all();
		$qd = array_shift($qd);
		/*	echo "<pre>";
			print_r ($vanban);
		*/
		$data = [
			'subview' => "qd_chuandaura_view",
			'subdata' => [
				'qds' => $qd,
			],
		];
		$this->load->view('master_home', $data);
	}
	public function qd_ctdt() {
		$this->load->model('Qd_ctdt_model');
		$qdctdt = $this->Qd_ctdt_model->get_all();
		$qdctdt = array_shift($qdctdt);
		/*	echo "<pre>";
			print_r ($vanban);
		*/
		$data = [
			'subview' => "qd_ctdt_view",
			'subdata' => [
				'qdctdts' => $qdctdt,
			],
		];
		$this->load->view('master_home', $data);
	}
	public function decuonghocphan() {
		$this->load->model('Monhoc_model');
		$this->load->library('Paginator');
		$key = $this->input->get('key');
		$totalItems = $this->Monhoc_model->countall($key);
		$itemsPerPage = 15;
		$currentPage = $this->input->get('page') == NULL ? 1 : $this->input->get('page');
		$urlPattern = base_url('home/decuonghocphan?key=' . $this->input->get('key') . '&page=(:num)');
		$offset = ($currentPage - 1) * 15;
		$monhocs = $this->Monhoc_model->getall($key, 15, $offset);

		$paginator = new Paginator($totalItems, $itemsPerPage, $currentPage, $urlPattern);
		$data = [
			'subview' => 'decuong/index',
			'subdata' => [
				'monhocs' => $monhocs,
				'paginator' => $paginator,
			],

		];

		$this->load->view('master_home', $data);
	}
	public function tailieu() {
		$this->load->helper('Icon');
		$this->load->model('Tailieu_model');
		$this->load->library('Paginator');
		$key = $this->input->get('key');
		$totalItems = $this->Tailieu_model->countall($key);
		$itemsPerPage = 10;
		$currentPage = $this->input->get('page') == NULL ? 1 : $this->input->get('page');
		$urlPattern = base_url('home/tailieu?key=' . $key . '&page=(:num)');
		$offset = ($currentPage - 1) * 10;
		$tailieu = $this->Tailieu_model->getall($key, 10, $offset);

		$paginator = new Paginator($totalItems, $itemsPerPage, $currentPage, $urlPattern);
		$data = [
			'subview' => 'tailieu',
			'subdata' => [
				'tailieus' => $tailieu,
				'paginator' => $paginator,
			],

		];

		$this->load->view('master_home', $data);

	}
	public function ctdaotao() {
		/*$this->load->model('Nganhdaotao_model');
			$nganhdaotao = $this->Nganhdaotao_model->get_all();
			$data = [
				'subview' => "ctdaotao",
				'subdata' => [
					'nganhdaotaos' => $nganhdaotao,
				],
			];

		*/

		$this->load->model('Nganhdaotao_model');
		$this->load->library('Paginator');
		$key = $this->input->get('key');
		$totalItems = $this->Nganhdaotao_model->countall($key);
		$itemsPerPage = 10;
		$currentPage = $this->input->get('page') == NULL ? 1 : $this->input->get('page');
		$urlPattern = base_url('home/ctdaotao?key=' . $key . '&page=(:num)');
		$offset = ($currentPage - 1) * 10;
		$nganhdaotao = $this->Nganhdaotao_model->getall($key, 10, $offset);

		$paginator = new Paginator($totalItems, $itemsPerPage, $currentPage, $urlPattern);
		$data = [
			'subview' => 'ctdaotao',
			'subdata' => [
				'nganhdaotaos' => $nganhdaotao,
				'paginator' => $paginator,
			],

		];
		$this->load->view('master_home', $data);

	}
	public function chitietCtDaotao($id) {
		$data = [
			'subview' => "chitietnganhdt",
			'subdata' => [
			],
		];
		$this->load->view('master_home', $data);
	}
	public function chitietCtDaotao2($id) {
		$data = [
			'subview' => "chitietNganhdaotao2",
			'subdata' => [
			],
		];
		$this->load->view('master_home', $data);
	}

	public function chuandaura_view() {

		$this->load->model('Nganhdaotao_model');
		$this->load->library('Paginator');
		$key = $this->input->get('key');
		$totalItems = $this->Nganhdaotao_model->countall($key);
		$itemsPerPage = 15;
		$currentPage = $this->input->get('page') == NULL ? 1 : $this->input->get('page');
		$urlPattern = base_url('home/chuandaura_view?key=' . $key . '&page=(:num)');
		$offset = ($currentPage - 1) * 15;
		$chuandaura = $this->Nganhdaotao_model->getall($key, 15, $offset);

		$paginator = new Paginator($totalItems, $itemsPerPage, $currentPage, $urlPattern);
		$data = [
			'subview' => 'chuandaura_view',
			'subdata' => [
				'chuandauras' => $chuandaura,
				'paginator' => $paginator,
			],

		];
		$this->load->view('master_home', $data);
	}

	public function chitietchuandaura($slug) {
		$this->load->model('Nganhdaotao_model');
		$slug=substr($slug, 0,-5);
		$chuandaura = $this->Nganhdaotao_model->getBySlug($slug);
		if ($chuandaura==NULL) {
			redirect(base_url('chuan-dau-ra-nganh.html'),'refresh');
		}
		$data = [
			'subview' => "chitietchuandaura",
			'subdata' => [
				'chuandauras' => $chuandaura,
			],
		];

		//var_dump($tintucitem);
		$this->load->view('master_home', $data);
	}

}

/* End of file Home.php */
/* Location: ./application/controllers/Home.php */