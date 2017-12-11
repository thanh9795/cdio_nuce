<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Page extends CI_Controller {

	public function index()
	{
		$data=[
			'content'=>'dashboard',
			'contentdata'=>[
				'dashboard'
			],

		];
		$this->load->view('master', $data);
	}
	function login()
	{
		if ($this->session->userdata('id')) {
			redirect(base_url());
		}
		$this->load->view('login');
	}
	function logout()
	{
		session_start();
		session_destroy();
		/*$array_items = array('username', 'id','hoten','id_nhom','tennhom','token');
		$this->session->unset_userdata($array_items);
		$this->session->set_flashdata('logout', 'true');*/
		redirect(base_url('page/login'));
	}
	public function login_submit()
	{
		$username=$this->input->post('username');
		$password=md5(SALT.$this->input->post('password'));
		$this->load->model('User_Model');
		if ($this->User_Model->login($username,$password)>0) {
			$_SESSION['islog']=1;
			$user=$this->User_Model->getUserbyName($username);
			$session=array(
				'id'=>$user->uid,
				'username'=>$user->username,
				'hoten'=>$user->hoten,
				'id_nhom'=>$user->id_nhom,
				'tennhom'=>$user->tennhom,
				'avatar'=>$user->avatar,
			);
			$this->session->set_userdata($session);
			echo json_encode(array(
				'code'=>"success",
				'message'=>"Hi! ".$username
			));
		}else{
			echo json_encode(array(
				'code'=>"error",
				'message'=>"Tài khoản hoặc mật khẩu không chính xác"
			));
		}
	}
}

/* End of file Page.php */
/* Location: ./application/controllers/Page.php */