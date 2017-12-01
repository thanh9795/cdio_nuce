<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Decuong extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		//Load Dependencies
		$this->load->model('Decuong_model');

	}

	// List all your items
	public function index( $id )
	{
		if ($id!=NULL) {
			echo json_encode($this->Decuong_model->get_all('','id,type,link,date_created',['id_monhoc'=>$id]));	
		}
	}

	// Add a new item
	public function add()
	{
		if ($this->input->server('REQUEST_METHOD')=="POST") {
			$type=$this->input->post('type');
			if ($type==1) {
				if ($this->input->post('link')!=NULL) {
					$this->Decuong_model->insert(['type'=>$type,'link'=>$this->input->post('link'),'id_monhoc'=>$this->input->post('id_monhoc')]);
					echo json_encode(['code'=>'success','message'=>"Thêm mới đề cương thành công"]);
				}else{
					echo json_encode(['code'=>'error','message'=>"Đường dẫn không được để trống"]);
				}
			}else{
				$config['upload_path']          = './assets/decuong';
				$config['allowed_types']        = TYPEALLOW;
				$config['max_size']             = 20000;

				$this->load->library('upload', $config);

				if ( ! $this->upload->do_upload('fileattach'))
				{
					echo json_encode(['code'=>'error','message'=>strip_tags($this->upload->display_errors())]);
				}
				else
				{
					$data = array('upload_data' => $this->upload->data());
					$path="assets/decuong/".$this->upload->data()['file_name'];
					$this->Decuong_model->insert(['type'=>$type,'link'=>$path,'id_monhoc'=>$this->input->post('id_monhoc')]);
					echo json_encode(['code'=>'success','message'=>"Thêm mới đề cương thành công"]);
				}
			}
		}
	}

	//Update one item
	public function update( $id = NULL )
	{

	}

	//Delete one item
	public function delete()
	{
		var_dump($this->input->post());
		$id=$this->input->post('id');
		if ($id!=NULL) {
			$this->Decuong_model->delete($id);
		}
	}
}

/* End of file Decuong.php */
/* Location: ./application/controllers/Decuong.php */
