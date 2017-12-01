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
            if ($this->session->userdata('id')!=NULL) {
            	
	            $email=$this->User_Model->getemail($this->session->userdata('id'));
	            if ($email->email!=NULL) {
	            	$array = array(
	            		'not_have_email' => false
	            	);
	            	
	            	$this->session->set_userdata( $array );
	            }else{
	            	$array = array(
	            		'not_have_email' => true
	            	);
	            	
	            	$this->session->set_userdata( $array );
	            }
            }

            $this->load->model('phanquyen');
			$parent=$this->phanquyen->getrole($this->session->userdata('id_nhom'));  
			if ($this->uri->segment(2)==NULL) {
				$url=$this->uri->segment(1);
			}else{
				$url= $this->uri->segment(1)."/".$this->uri->segment(2);
			}
			$urllist=array();
			foreach ($parent as $u) {
				$accept=explode("|", $u->accept_url);
				if (count($accept)==1) {
					$urllist[]=$u->accept_url;
				}else{
					foreach ($accept as $ac) {
						$urllist[]=$ac;
					}
				}
			}
			$whitelist=array(
				'',
				'page/permission',
				'accesstoken/login_token',
				'page/login',
				'page/logout',
				'page/login_submit',
				'user/changepass',
				'user/profile',
				'user/uploadavatar',
				'user/update_profile',
			);
			if ($this->phanquyen->checkrole($this->session->userdata('id_nhom'),27)!=NULL) {
				$this->session->set_userdata('tokenpermis', true);
			}else{
				$this->session->set_userdata('tokenpermis', false);
			}
			if (!in_array($url, $urllist)&&!in_array($url, $whitelist)) {
				redirect(base_url('page/permission'));
			}


       }
    }
 ?>