<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

    class Cdio_Controller extends CI_Controller {
       function __construct()
       {

            parent::__construct();
            if ($this->session->userdata('token')) {
            	//echo $this->session->userdata('token');
            	$this->load->model('Accesstoken_model');
            	$user=$this->Accesstoken_model->gettoken($this->session->userdata('token'));
            	if ($user==NULL) {
            		$array_items = array('username', 'id','hoten','id_nhom','tennhom','token');
					$this->session->unset_userdata($array_items);
					$this->session->set_flashdata('tokenend', 'true');
					redirect(base_url('page/login'));
            	}else{
	            	date_default_timezone_set('asia/ho_chi_minh');
					$end_time = new DateTime($user->dateline);
					$now = new DateTime();
					if( $end_time<$now ){
					    $array_items = array('username', 'id','hoten','id_nhom','tennhom','token');
						$this->session->unset_userdata($array_items);
						$this->session->set_flashdata('tokenend', 'true');
						redirect(base_url('page/login'));
					}
            	}
            }
            $this->load->model('User_Model');

            $this->load->model('phanquyen');
			$parent=$this->phanquyen->getrole($this->session->userdata('id_nhom'));  
			if ($this->uri->segment(2)==NULL) {
				$url=strtolower($this->uri->segment(1));
			}else{
				$url= strtolower($this->uri->segment(1)."/".$this->uri->segment(2));
			}
			$urllist=array();
			foreach ($parent as $u) {
				$accept=explode("|", strtolower($u->accept_url));
				if (count($accept)==1) {
					$urllist[]=strtolower($u->accept_url);
				}else{
					foreach ($accept as $ac) {
						$urllist[]=$ac;
					}
				}
			}
			$whitelist=array(
				'',
				'page/permission',
				'nganhdaotao/apihocky',
				'highdecuong/index',
				'accesstoken/login_token',
				'page/login',
				'page/logout',
				'page/login_submit',
				'user/changepass',
				'user/uploadavatar',
				'user/update_profile',
			);
			if ($this->phanquyen->checkrole($this->session->userdata('id_nhom'),27)!=NULL) {
				$this->session->set_userdata('tokenpermis', true);
			}else{
				$this->session->set_userdata('tokenpermis', false);
			}
			if (!in_array($url, $urllist)&&!in_array($url, $whitelist)) {
				
				redirect(base_url('page/login?next='.(uri_string())));
			}


       }
    }
 ?>