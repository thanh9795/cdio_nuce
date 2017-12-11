<?php 
/**
* 
*/
class User extends CI_Controller
{
	
	public function index()
	{
		/*Begin Gửi FORM*/
		$this->load->model('User_Model');

		if ($this->input->server('REQUEST_METHOD')=="POST") {
			$this->load->library('form_validation');

			$this->form_validation->set_rules('username', 'Username', 'required|min_length[4]|callback_username_check',array(
				'required'=>"Username không được để trống",
				'min_length'=>"Username bắt buộc phải trên 4 ký tự"
			));
			$this->form_validation->set_rules('password', 'Password', 'required',
				array('required' => 'Mật khẩu là trường bắt buộc')
				);
			$this->form_validation->set_rules('hoten', 'Họ tên', 'required',array(
				'required'=>"Họ tên là trường bắt buộc"
			));
			$this->form_validation->set_rules('id_nhom', 'Nhóm người dùng', 'required',array(
				'required'=>'Bạn phải chọn nhóm người dùng'
			));

			if ($this->form_validation->run() == FALSE)
			{
				//$this->load->view('myform');
			}
			else
			{
				$data=$this->input->post();
				$data['password']=md5(SALT.$data['password']);
				if ($this->User_Model->add($data)) {
					$this->session->set_flashdata('code','success');
					$this->session->set_flashdata('message','Thêm mới người dùng thành công');
				}else{
					$this->session->set_flashdata('code','error');
					$this->session->set_flashdata('message','Có lỗi xảy ra trong quá trình thêm tài khoản vào CSDL');
				}
			}
		}


		/*End Gửi form*/

		$this->load->model('Nhom_model');
		$nhom=$this->Nhom_model->all();

		$offset=$this->uri->segment(3);
		$users=$this->User_Model->all(20,$offset);


		$url=base_url("user/index");
		$total=$this->User_Model->count_total();
		$config['base_url'] = $url;
		$config['total_rows'] = $total;
		$config['per_page'] = 20;
		$config['uri_segment'] = 3;
		$config['num_links'] = 5;

		$config['full_tag_open'] = '<ul class="pagination">';
		$config['full_tag_close'] = '</ul>';
		$config['first_link'] = 'Trang đầu';
		$config['first_tag_open'] = '<li>';
		$config['first_tag_close'] = '</li>';
		$config['last_link'] = 'Trang cuối';
		$config['num_tag_open'] = '<li>';
		$config['num_tag_close'] = '</li>';
		$config['last_tag_open'] = '<li>';
		$config['last_tag_close'] = '</li>';
		$config['next_link'] = 'Trang sau';
		$config['next_tag_open'] = '<li>';
		$config['next_tag_close'] = '</li>';
		$config['prev_link'] = 'Trang trước';
		$config['prev_tag_open'] = '<li>';
		$config['prev_tag_close'] = '</li>';
		$config['cur_tag_open'] = '<li class="active"><a href="#">';
		$config['cur_tag_close'] = '</a></li>';



		$this->pagination->initialize($config);
		//echo $this->truong->count_total(0,"");
		$phantrang=$this->pagination->create_links();

		$data['content']="user/index";
		$data['contentdata']=array(
			'nhoms'=>$nhom,
			'users'=>$users,
			'phantrang'=>$phantrang
			);
		$this->load->view('master', $data);
	}

	public function changepass()
	{
		if ($this->session->userdata('id')==NULL) {
			redirect(base_url('page/login'));
		}
		if ($this->input->server('REQUEST_METHOD')=="POST") {
			$this->form_validation->set_rules('oldpass', 'Mật khẩu cũ', 'required|callback_password_check');
			$this->form_validation->set_rules('new', 'Mật khẩu mới', 'required');
			$this->form_validation->set_rules('new2', 'Nhập lại mật khẩu', 'required|matches[new]',array(
				'required'=>"Nhập lại mật khẩu là bắt buộc",
				'matches'=>"Mật khẩu mới không trùng khớp",
			));
			if ($this->form_validation->run() == FALSE) {
				$this->session->set_flashdata('code', 'error');
				$this->session->set_flashdata('message', validation_errors());
				redirect(base_url('user/changepass'));
			} else {
				$this->load->model('User_Model');
				$this->User_Model->update($this->session->userdata('id'),array(
					'password'=>md5(SALT.$this->input->post('new'))
				));
				$this->session->set_flashdata('code', 'success');
				$this->session->set_flashdata('message','Thay đổi mật khẩu thành công');
				redirect(base_url('user/changepass'));
			}
		}
		$id=$this->session->flashdata('id');
		$data['content']="user/changepass";
		$data['contentdata']=array();
		$this->load->view('master', $data);
	}

	public function edit_submit()
	{
		if ($this->input->server('REQUEST_METHOD')=="POST") {
			$this->form_validation->set_rules('username', 'Username', 'required|min_length[4]|max_length[20]');
			$this->form_validation->set_rules('hoten', 'Họ tên', 'required');
			$data=$this->input->post();
			if ($this->input->post('changepass')=="on") {
				$data['password']=md5(SALT.$data['newpass']);
				$this->form_validation->set_rules('newpass', 'Mật khẩu mới là bắt buộc', 'required');
				unset($data['changepass']);
			}
			if ($this->form_validation->run() == FALSE) {
				$this->session->set_flashdata('code', 'error');
				$this->session->set_flashdata('message', validation_errors());
				redirect(base_url('user/detail/'.$this->input->post('id')));
			} else {
				unset($data['newpass']);
				$this->load->model('User_Model');
				$this->User_Model->update($this->input->post('id'),$data);
				$this->session->set_flashdata('code', 'success');
				$this->session->set_flashdata('message', 'Cập nhật thành công');
				redirect(base_url('user/detail/'.$this->input->post('id')));
			}
		}
	}
	public function username_check($str)
	{
		$this->load->model('User_Model');
		if ($this->User_Model->isUser($str)>0)
		{
			$this->form_validation->set_message('username_check', "Người dùng {$str} đã có trên hệ thống");
			return FALSE;
		}
		else
		{
			return TRUE;
		}
	}
	public function email_check($str)
	{
		$this->load->model('User_Model');
		if ($this->User_Model->email_exist($str))
		{
			$this->form_validation->set_message('email_check', "Email {$str} đã có trên hệ thống");
			return FALSE;
		}
		else
		{
			return TRUE;
		}
	}
	public function password_check($str)
	{
		$this->load->model('User_Model');
		$str=md5(SALT.$str);
		$user=$this->User_Model->get($this->session->userdata('id'));
		if ($user->password!=$str)
		{
			$this->form_validation->set_message('password_check', "Mật khẩu cũ không chính xác");
			return FALSE;
		}
		else
		{
			return TRUE;
		}
	}
	public function uploadavatar()
	{
		 	$config['upload_path']          = './public/uploads/';
		    $config['allowed_types']        = 'gif|jpg|png';
		    $config['max_size']             = 1000;
		    $config['max_width']            = 500;
		    $config['max_height']           = 500;
			$this->load->library('upload', $config);
            if ( ! $this->upload->do_upload('avatar'))
            {
               /* $error = array('error' => $this->upload->display_errors());
                $this->load->view('upload_form', $error);*/
                //var_dump($this->upload->display_errors());
                echo json_encode([
                	'code'=>'error',
                	'message'=>strip_tags($this->upload->display_errors())
                ]);
            }
            else
            {
                /*$data = array('upload_data' => $this->upload->data());
                $this->load->view('upload_success', $data);*/
                //var_dump($this->upload->data());
                $this->load->model('User_Model');
                $this->User_Model->update($this->session->userdata('id'),['avatar'=>'public/uploads/'.$this->upload->data()['file_name']]);
                $array = array(
                	'avatar' => 'public/uploads/'.$this->upload->data()['file_name']
                );
                
                $this->session->set_userdata( $array );
                echo json_encode(['code'=>'success','message'=>'Cập nhật ảnh đại diện thành công','img'=>'public/uploads/'.$this->upload->data()['file_name']]);
            }
	}
	public function profile()
	{
		$this->load->model('User_Model');
		$user=$this->User_Model->get($this->session->userdata('id'));
		$data=[
			'content'=>"user/profile",
			'contentdata'=>[
				'user'=>$user
			]
		];
		$this->load->view('master', $data, FALSE);
	}
	public function update_profile()
	{
		$this->load->model('User_Model');
		$this->form_validation->set_rules('hoten', 'Họ tên', 'trim|required|min_length[5]|max_length[90]');
		$this->form_validation->set_rules('email', 'Họ tên', 'trim|required|valid_email');
		if ($this->form_validation->run()) {
			$this->User_Model->update($this->session->userdata('id'),['hoten'=>$this->input->post('hoten'),'email'=>$this->input->post('email')]);
			echo json_encode(['code'=>'success','message'=>'Cập nhật thành công']);
		} else {
			$this->User_Model->update($this->session->userdata('id'),['hoten'=>$this->input->post('hoten'),'email'=>$this->input->post('email')]);
			echo json_encode(['code'=>'error','message'=>validation_errors()]);
		}
	}
	public function detail()
	{
		$id=$this->uri->segment(3);
		$roles=array();
		$this->load->model('nhom_model');
		$this->load->model('User_Model');
		$user=$this->User_Model->get($id);
		if ($user==null) {
			redirect(base_url('My404'));
			return;
		}


		$nhom=$this->nhom_model->all();
	
		$data['content']="user/userdetail";
		$data['contentdata']=array(
			'nhoms'=>$nhom,
			'user'=>$user
		);
		$this->load->view('master', $data);
	}
	public function delete()
	{
		$id=$this->uri->segment(3);
		$this->load->model('User_Model');
		if ($this->User_Model->delete($id)) {
			$this->session->set_flashdata('code', 'success');
			$this->session->set_flashdata('message', 'Xóa người dùng thành công');
			redirect(base_url('user'));
		}
	}
	
}
?>