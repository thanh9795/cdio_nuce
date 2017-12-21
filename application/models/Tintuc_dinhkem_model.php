<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tintuc_dinhkem_model extends CDIO_Model {

	protected $table_name = 'tintuc_dinhkem';
	protected $primary_key = 'id';
	public function __construct() {
		parent::__construct();

	}
	public function deleteByIdTintuc($tintuc)
	{
		$this->db->where('id_tintuc', $tintuc);
		$this->db->delete($this->table_name);
	}

}

/* End of file Tintuc_dinhkem_model.php */
/* Location: ./application/models/Tintuc_dinhkem_model.php */