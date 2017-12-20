<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Monhoc_model extends Cdio_Model {

	protected $table_name = 'monhoc';
	protected $primary_key = 'id';
	public function __construct() {
		parent::__construct();

	}

	function countall($key) {
		if ($key != NULL) {
			$this->db->like('ten_mon', $key);
			$this->db->or_like('ma_mon', $key);
		}
		return $this->db->count_all_results($this->table_name);
	}

	function getall($key, $limit, $offset) {
		$this->db->join('nguoidung', 'nguoidung.id=monhoc.last_id', 'left');
		$this->db->select('*,monhoc.id as mhid,(SELECT count(id) FROM decuong WHERE decuong.id_monhoc=monhoc.id) as attachnumber');
		if ($key != NULL) {
			$this->db->like('ten_mon', $key);
			$this->db->or_like('ma_mon', $key);
		}
		$this->db->order_by('monhoc.id', 'asc');
		$this->db->limit($limit, $offset);
		return $this->db->get($this->table_name)->result();
	}
	public function searchByKey($key, $array) {
		if (count($array)) {
			$this->db->where_not_in('id', $array);
		}
		$this->db->group_start();
		$this->db->like('ma_mon', $key);
		$this->db->or_like('ten_mon', $key);
		$this->db->or_like('ma_mon', $key);
		$this->db->group_end();

		return $this->db->get($this->table_name)->result();
	}

}

/* End of file Monhoc_model.php */
/* Location: ./application/models/Monhoc_model.php */