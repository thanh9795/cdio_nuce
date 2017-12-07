<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function tintuc() {
		$this->load->model('Tintuc_model');
		$this->load->library('Paginator');
		$key = $this->input->get('key');
		$totalItems = $this->Tintuc_model->countall($key);
		$itemsPerPage = 2;
		$currentPage = $this->input->get('page') == NULL ? 1 : $this->input->get('page');
		$urlPattern = base_url('home/tintuc?key=' . $key . '&page=(:num)');
		$offset = ($currentPage - 1) * 2;
		$tintuc = $this->Tintuc_model->getall($key, 2, $offset);

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

	public function detailTintuc($id) {

		$this->load->model('Tintuc_model');
		$tintucitem = $this->Tintuc_model->get($id);
		$all = $this->Tintuc_model->get_all();
		$data = [
			'subview' => "tintuc_detail",
			'subdata' => [
				'tintucitems' => $tintucitem,
				'all' => $all,
			],
		];

		//var_dump($tintucitem);
		$this->load->view('master_home', $data);

	}
	public function detailVanban($id) {

		$this->load->model('Vanban_model');
		$vanban = $this->Vanban_model->get($id);
		$all = $this->Vanban_model->get_all();
		$data = [
			'subview' => "vanban_detail",
			'subdata' => [
				'vanbans' => $vanban,
				'all' => $all,
			],
		];

		//var_dump($tintucitem);
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
		$itemsPerPage = 2;
		$currentPage = $this->input->get('page') == NULL ? 1 : $this->input->get('page');
		$urlPattern = base_url('home/vanban?key=' . $key . '&page=(:num)');
		$offset = ($currentPage - 1) * 2;
		$vanban = $this->Vanban_model->getall($key, 2, $offset);

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
		/*	echo "<pre>";
			print_r ($vanban);
		*/
		$data = [
			'subview' => "gioithieu",
			'subdata' => [
				'gts' => $gt,
			],
		];
		$this->load->view('master_home', $data);
	}
	public function decuonghocphan() {
		$this->load->model('Monhoc_model');
		$this->load->library('Paginator');
		$key = $this->input->get('key');
		$totalItems = $this->Monhoc_model->countall($key);
		$itemsPerPage = 20;
		$currentPage = $this->input->get('page') == NULL ? 1 : $this->input->get('page');
		$urlPattern = base_url('home/decuonghocphan?key=' . $this->input->get('key') . '&page=(:num)');
		$offset = ($currentPage - 1) * 20;
		$monhocs = $this->Monhoc_model->getall($key, 20, $offset);

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
		$itemsPerPage = 2;
		$currentPage = $this->input->get('page') == NULL ? 1 : $this->input->get('page');
		$urlPattern = base_url('home/tailieu?key=' . $key . '&page=(:num)');
		$offset = ($currentPage - 1) * 2;
		$tailieu = $this->Tailieu_model->getall($key, 2, $offset);

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
		$itemsPerPage = 2;
		$currentPage = $this->input->get('page') == NULL ? 1 : $this->input->get('page');
		$urlPattern = base_url('home/ctdaotao?key=' . $key . '&page=(:num)');
		$offset = ($currentPage - 1) * 2;
		$nganhdaotao = $this->Nganhdaotao_model->getall($key, 2, $offset);

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

}

/* End of file Home.php */
/* Location: ./application/controllers/Home.php */