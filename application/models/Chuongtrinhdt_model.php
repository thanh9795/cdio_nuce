<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Chuongtrinhdt_model extends Cdio_Model {

	protected $table_name = 'ctdao_tao';
	protected $primary_key = 'id';
	public function __construct() {
		parent::__construct();

	}
	public function deleteCTDT($id) {
		$this->db->where('ma_nganh', $id);
		$this->db->delete($this->table_name);
	}
}

/* End of file Nganhdaotao_model.php */
/* Location: ./application/models/Nganhdaotao_model.php */