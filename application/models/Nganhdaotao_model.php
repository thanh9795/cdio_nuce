<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Nganhdaotao_model extends Cdio_Model {

	protected $table_name = 'nganh_dao_tao';
	private $_table2 = "monhoc";
	protected $primary_key = 'nganh_dao_tao.id';
	public function __construct() {
		parent::__construct();

	}
	function getbySlug($slug) {
		return $this->db->get_where($this->table_name, array('slug' => $slug))->row();
	}
	public function get_ctdt($id) {

		$this->db->join('nguoidung', 'nguoidung.id=nganh_dao_tao.last_id', 'left');
		return $this->db->get_where($this->table_name, array($this->primary_key => $id))->row();
	}
	function countall($key) {
		if ($key != NULL) {
			$this->db->like('ten_nganh', $key);
			$this->db->or_like('ma_nganh', $key);
		}
		return $this->db->count_all_results($this->table_name);
	}

	function getall($key, $limit, $offset) {
		if ($key != NULL) {
			$this->db->like('ten_nganh', $key);
			$this->db->or_like('ma_nganh', $key);
		}
		$this->db->order_by('stt', 'asc');
		$this->db->limit($limit, $offset);
		return $this->db->get($this->table_name)->result();
	}

	public function all($id) {
		$this->db->select("*,{$this->table_name}");
		$this->db->where('id_hocvien', $hocvienid);
		$this->db->join($this->_table2, "{$this->table_name}.id_tuvan={$this->_table2}.id", 'left');
		$this->db->order_by('ngayhen', 'DESC');
		$query = $this->db->get($this->table_name);
		return $query->result();
	}

}

/* End of file Nganhdaotao_model.php */
/* Location: ./application/models/Nganhdaotao_model.php */