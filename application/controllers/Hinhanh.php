<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Hinhanh extends CDIO_Controller {

	public function __construct() {
		parent::__construct();
		//Load Dependencies
		$this->load->model('Hinhanh_model');

	}

	public function index() {
		$data = [
			'content' => 'hinhanh/index',
			'contentdata' => [

			],

		];
		$this->load->view('master', $data);
	}
	function apiHinhanh()
	{
		$hinhanh=$this->Hinhanh_model->get_all('','',[],'','','',['position','ASC']);
		echo json_encode($hinhanh);
	}
	function save()
	{
		if ($this->input->server('REQUEST_METHOD')=="POST") {
			$type=$this->input->post('type');

			if ($type==1) {
				if ($this->input->post('link')!=NULL) {
					$this->Hinhanh_model->insert(['type'=>$type,'link'=>$this->input->post('link'),'mota'=>$this->input->post('mota'),'linkto'=>$this->input->post('linkto')]);
					echo json_encode(['code'=>'success','message'=>"Thêm mới hình ảnh thành công"]);
				}else{
					echo json_encode(['code'=>'error','message'=>"Đường dẫn không được để trống"]);
				}
			}else{
				$config['upload_path']          = './assets/images';
				$config['allowed_types']        = "jpg|png|gif|jpeg";
				$config['max_size']             = 20000;

				$this->load->library('upload', $config);

				if ( ! $this->upload->do_upload('fileattach'))
				{
					echo json_encode(['code'=>'error','message'=>strip_tags($this->upload->display_errors())]);
				}
				else
				{
					$data = array('upload_data' => $this->upload->data());
					$path="assets/images/".$this->upload->data()['file_name'];
					$this->Hinhanh_model->insert(['type'=>$type,'link'=>$path,'mota'=>$this->input->post('mota'),'linkto'=>$this->input->post('linkto')]);
					echo json_encode(['code'=>'success','message'=>"Thêm mới hình ảnh thành công"]);
				}
			}
		}
	}
	function checklink()
	{
		$link=$this->input->get('link');
		if (@getimagesize($link)) {
		echo  json_encode(['img'=>true]);
		} else {
		echo  json_encode(['img'=>false]);

		}
	}
	function luusapxep()
	{
		//var_dump($this->input->post('hinhanh'));
		$hinhanh=$this->input->post('hinhanh');
		foreach ($hinhanh as $key=> $ha) {
			$this->Hinhanh_model->update(['position'=>$key],$ha['id']);
		}
	}
	function delete()
	{
		$id=$this->input->post('id');
		$this->Hinhanh_model->delete($id);
	}
	function update($id)
	{
		if ($this->input->server('REQUEST_METHOD')=="POST"&&$id!=NULL) {
			$type=$this->input->post('type');

			if ($type==1) {
				if ($this->input->post('link')!=NULL) {
					$this->Hinhanh_model->update(['type'=>$type,'link'=>$this->input->post('link'),'mota'=>$this->input->post('mota'),'linkto'=>$this->input->post('linkto')],$id);
					echo json_encode(['code'=>'success','message'=>"Thêm mới hình ảnh thành công"]);
				}else{
					echo json_encode(['code'=>'error','message'=>"Đường dẫn không được để trống"]);
				}
			}else{
				$config['upload_path']          = './assets/images';
				$config['allowed_types']        = "jpg|png|gif|jpeg";
				$config['max_size']             = 20000;

				$this->load->library('upload', $config);

				if ( ! $this->upload->do_upload('fileattach'))
				{
					echo json_encode(['code'=>'error','message'=>strip_tags($this->upload->display_errors())]);
				}
				else
				{
					$data = array('upload_data' => $this->upload->data());
					$path="assets/images/".$this->upload->data()['file_name'];
					$this->Hinhanh_model->update(['type'=>$type,'link'=>$path,'mota'=>$this->input->post('mota'),'linkto'=>$this->input->post('linkto')],$id);
					echo json_encode(['code'=>'success','message'=>"Thêm mới hình ảnh thành công"]);
				}
			}
		}
	}

}

/* End of file Hinhanh.php */
/* Location: ./application/controllers/Hinhanh.php */