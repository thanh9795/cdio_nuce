<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Nhomtailieu_model extends Cdio_Model {

	protected $table_name = 'nhom_tai_lieu';
	protected $primary_key = 'id';
	public function __construct()
	{
		parent::__construct();
		
	}

	function countall($key)
	{
		if ($key!=NULL) {
			$this->db->like('ten_nhom', $key);
		}
		return $this->db->count_all_results($this->table_name); 
	}

	function getall($key,$limit,$offset)
	{
		if ($key!=NULL) {
			$this->db->like('ten_nhom', $key);
		}
		$this->db->limit($limit,$offset);
		return $this->db->get($this->table_name)->result();
	}

}

/* End of file Nhomtailieu_model.php */
/* Location: ./application/models/Nhomtailieu_model.php */