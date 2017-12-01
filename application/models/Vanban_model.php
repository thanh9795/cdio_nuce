<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Vanban_model extends Cdio_Model {
	protected $table_name = 'van_ban_dieu_hanh';
	protected $primary_key = 'id';
	public function __construct()
	{
		parent::__construct();
		
	}
	
		function countall($key)
	{
		if ($key!=NULL) {
			$this->db->like('so_ky_hieu_vb', $key);
		}
		return $this->db->count_all_results($this->table_name); 
	}

	function getall($key,$limit,$offset)
	{
		if ($key!=NULL) {
			$this->db->like('so_ky_hieu_vb', $key);
		}
		$this->db->limit($limit,$offset);
		return $this->db->get($this->table_name)->result();
	}

}

/* End of file Vanban_model.php */
/* Location: ./application/models/Vanban_model.php */