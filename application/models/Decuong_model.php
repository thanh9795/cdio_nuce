<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Decuong_model extends Cdio_Model {

	protected $table_name = 'decuong';
	protected $primary_key = 'id';
	public function __construct() {
		parent::__construct();

	}
	public function deleteByIdMonHoc($id)
	{
		$this->db->delete($this->table_name, [
			'id_monhoc'=>$id
		]);
	}
	public function getByIdMonhoc($id)
	{
		$this->db->where('id_monhoc', $id);
		return $this->db->get($this->table_name)->row();
	}
}

/* End of file Nganhdaotao_model.php */
/* Location: ./application/models/Nganhdaotao_model.php */