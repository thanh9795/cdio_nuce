<?php 
/**
* 
*/
class Nhom extends CDIO_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Nhom_model');
	}
	public function index()
	{
		$this->load->model('nhom_model');
		$this->load->model('chucnang');
		$nhom=$this->nhom_model->get_all();
		$chucnang=$this->chucnang->all();
		$data['content']="user/nhom";
		$data['contentdata']=array(
				'nhoms'=>$nhom,
				'chucnangs'=>$chucnang
			);
		$this->load->view('master', $data);
	}
	public function addnhom()
	{

		$tennhom=$this->input->post('tennhom');
		$chucnang=$this->input->post('cn');

		if ($chucnang==null) {
			$this->session->set_flashdata('code', 'error');
			$this->session->set_flashdata('message', 'Bạn không thể tạo nhóm người dùng mà không có quyền nào cả');
			redirect(base_url('nhom'),'refresh');
			return;
		}
		if ($tennhom=="") {
			$this->session->set_flashdata('code', 'error');
			$this->session->set_flashdata('message', 'Bạn không thể để trống trường tên');
			redirect(base_url('nhom'),'refresh');
			return;
		}
		$this->load->model('nhom_model');
		$this->load->model('phanquyen');
		$id=$this->nhom_model->add(array(
			'tennhom'=>$tennhom
		));
		
		foreach ($chucnang as $cn) {
			$this->phanquyen->add(array(
				'id_nhom'=>$id,
				'id_chucnang'=>$cn
			));
		}
		$this->session->set_flashdata('code', 'success');
		$this->session->set_flashdata('message', 'Thêm mới nhóm người dùng thành công');
		redirect(base_url('nhom'),'refresh');
		return;
	}
	public function edit_submit()
	{
		$this->output->enable_profiler(TRUE);
		$tennhom=$this->input->post('tennhom');
		$chucnang=$this->input->post('cn');
		$id_phongban=$this->input->post('id_phongban');
		$id=$this->input->post('id');

		if ($chucnang==null) {
			$this->session->set_flashdata('code', 'error');
			$this->session->set_flashdata('message', 'Bạn không thể sửa nhóm người dùng mà không có quyền nào cả');
			redirect(base_url('nhom/detail/'.$id),'refresh');
			return;
		}
		if ($tennhom==null) {
			$this->session->set_flashdata('code', 'error');
			$this->session->set_flashdata('message', 'Bạn không thể để trống trường tên');
			redirect(base_url('nhom/detail/'.$id),'refresh');
			return;
		}
		/*if ($id_phongban==null) {
			$this->session->set_flashdata('code', 'error');
			$this->session->set_flashdata('message', 'Bạn không thể để trống trường Phòng ban');
			redirect(base_url('nhom/detail/'.$id),'refresh');
			return;
		}*/
		$this->load->model('phanquyen');
		$this->Nhom_model->update2(array(
			'tennhom'=>$tennhom,
			'id_phongban'=>$id_phongban,
		),$id);
		$this->phanquyen->removerole($id);
		$parent=array();
		foreach ($chucnang as $cn) {
			$this->phanquyen->add(array(
				'id_nhom'=>$id,
				'id_chucnang'=>$cn
			));
		}
		$this->session->set_flashdata('code', 'success');
		$this->session->set_flashdata('message', 'Cập nhật nhóm người dùng thành công');
		redirect(base_url('nhom/detail/'.$id),'refresh');
	}
	public function detail()
	{
		$id=$this->uri->segment(3);
		$roles=array();
		$this->load->model('nhom_model');
		$this->load->model('chucnang');
		$this->load->model('phanquyen');
		$nhom=$this->nhom_model->get($id);
		if ($nhom==null) {
			redirect(base_url('My404'));
			return;
		}

		$chucnang=$this->chucnang->all();
		$role=$this->phanquyen->getrole($id);
		foreach ($role as $r) {
			$roles[]=$r->id_chucnang;
		}
		$data['content']="user/nhomdetail";
		$data['contentdata']=array(
			'nhom'=>$nhom,
			'roles'=>$roles,
			'chucnangs'=>$chucnang,
		);
		$this->load->view('master', $data);
	}
}
?>