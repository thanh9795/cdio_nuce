<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tintuc_dinhkem extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		//Load Dependencies
		$this->load->model('Tintuc_dinhkem_model');

	}

	// List all your items
	public function index( $id )
	{
		if ($id!=NULL) {
			$data=$this->Tintuc_dinhkem_model->get_all('','id,type,link,date_created',['id_tintuc'=>$id]);
			foreach ($data as $key => $value) {
				$data[$key]->date_created=date("d/m/Y H:i",strtotime($value->date_created));
				$data[$key]->type2=$data[$key]->type==1?"Đường dẫn":"Tệp đính kèm";
			}
			echo json_encode($data);	
		}
	}

	// Add a new item
	public function add()
	{
		if ($this->input->server('REQUEST_METHOD')=="POST") {
			$type=$this->input->post('type');
			if ($type==1) {
				if ($this->input->post('link')!=NULL) {
					$this->Tintuc_dinhkem_model->insert(['type'=>$type,'link'=>$this->input->post('link'),'id_tintuc'=>$this->input->post('id_tintuc')]);
					echo json_encode(['code'=>'success','message'=>"Thêm mới đính kèm thành công"]);
				}else{
					echo json_encode(['code'=>'error','message'=>"Đường dẫn không được để trống"]);
				}
			}else{
				$config['upload_path']          = './assets/tintuc';
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
					$path="assets/tintuc/".$this->upload->data()['file_name'];
					$this->Tintuc_dinhkem_model->insert(['type'=>$type,'link'=>$path,'id_tintuc'=>$this->input->post('id_tintuc')]);
					echo json_encode(['code'=>'success','message'=>"Thêm mới đính kèm thành công"]);
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
			$this->Tintuc_dinhkem_model->delete($id);
		}
	}
	
}

/* End of file Decuong.php */
/* Location: ./application/controllers/Decuong.php */
