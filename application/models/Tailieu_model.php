<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tailieu_model extends Cdio_Model {

	protected $table_name = 'tai_lieu';
	protected $primary_key = 'id';
	public function __construct() {
		parent::__construct();

	}

	function countall($key) {
		if ($key != NULL) {
			$this->db->like('ten_tai_lieu', $key);
		}
		return $this->db->count_all_results($this->table_name);
	}

	function getall($key, $limit, $offset) {
		if ($key != NULL) {
			$this->db->like('ten_tai_lieu', $key);
		}
		$this->db->limit($limit, $offset);
		$this->db->order_by('stt', 'asc');
		return $this->db->get($this->table_name)->result();
	}
	function incDown($id) {
		$this->db->set('luot_tai', 'luot_tai+1', FALSE);
		$this->db->where('id', $id, FALSE);
		$this->db->update($this->table_name);
	}
	function incView($id) {
		$this->db->set('luot_xem', 'luot_xem+1', FALSE);
		$this->db->where('id', $id, FALSE);
		$this->db->update($this->table_name);
	}
}

/* End of file Tailieu_model.php */
/* Location: ./application/models/Tailieu_model.php */