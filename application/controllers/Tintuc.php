<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tintuc extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		//Load Dependencies
		$this->load->model('Tintuc_model');

	}

	// List all your items
	public function index()
	{
		$this->output->enable_profiler(TRUE);
		$this->load->library('Paginator');
		$key=$this->input->get('key');
		$totalItems = $this->Tintuc_model->countall($key);
		$itemsPerPage = 5;
		$currentPage = $this->input->get('page')==NULL?1:$this->input->get('page');
		$urlPattern = base_url('Tintuc?page=(:num)');
		$offset=($currentPage-1)*5;
		$tintucs=$this->Tintuc_model->getall($key,5,$offset);

		$paginator = new Paginator($totalItems, $itemsPerPage, $currentPage, $urlPattern);
		$data=[
			'content'=>'tin_tuc/index',
			'contentdata'=>[
				'tintucs'=>$tintucs,
				'paginator'=>$paginator
			],

		];

		
		$this->load->view('master', $data);
	}
		public function detail($id)
		{
			$tin=$this->Tintuc_model->get($id);
			
			$data=[
				'content'=>'tin_tuc/detail',
				'contentdata'=>[
					'tin'=>$tin
				],

			];
			$this->load->view('master', $data);
		}

	public function add()
	{
		$this->form_validation->set_rules('tieude', 'Tiêu đề', 'trim|required',['required'=>"%s Day la truong bat buoc"]);
		$this->form_validation->set_rules('mota', 'Mô tả ', 'trim|required',['required'=>"%s Day la truong bat buoc"]);
		if ($this->form_validation->run()) {
			$this->Tintuc_model->insert([
				'tieude'=>$this->input->post('tieude'),
				'mota'=>$this->input->post('mota'),
				'chi_tiet'=>$this->input->post('chi_tiet'),
				'stt'=>$this->input->post('stt'),
				'date_created'=>$this->input->post('date_created'),
				'date_updated'=>$this->input->post('date_updated'),
				'file1'=>$this->input->post('file1'),
				'file2'=>$this->input->post('file2'),
				'file3'=>$this->input->post('file3'),
			]);	
		}
		$data=[
			'content'=>'tin_tuc/add',
			'contentdata'=>[
			]
		];
		$this->load->view('master', $data);
	}

	public function update( $id = NULL)
	{
		$this->form_validation->set_rules('tieude', 'Tiêu đề', 'trim|required',['required'=>"%s Day la truong bat buoc"]);
		$this->form_validation->set_rules('mota', 'Mô tả ', 'trim|required',['required'=>"%s Day la truong bat buoc"]);
		if ($this->form_validation->run()) {
			$this->Tintuc_model->update([
				'tieude'=>$this->input->post('tieude'),
				'mota'=>$this->input->post('mota'),
				'chi_tiet'=>$this->input->post('chi_tiet'),
				'stt'=>$this->input->post('stt'),
				'date_created'=>$this->input->post('date_created'),
				'date_updated'=>$this->input->post('date_updated'),
				'file1'=>$this->input->post('file1'),
				'file2'=>$this->input->post('file2'),
				'file3'=>$this->input->post('file3')
			],$id);	
		}

		$tintuc=$this->Tintuc_model->get($id);
		$data=[
			'content'=>'tin_tuc/edit',
			'contentdata'=>[
				'tintuc'=>$tintuc
			]
		];

		$this->load->view('master', $data);
	}

	//Delete one item
	public function delete()
	{
		$this->Tintuc_model->delete($this->input->post('id'));
	}
	

}

/* End of file Tintuc.php */
/* Location: ./application/controllers/Tintuc.php */