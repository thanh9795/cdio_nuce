<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Vanban_dinhkem_model extends CDIO_Model {

	protected $table_name = 'vanban_dinhkem';
	protected $primary_key = 'id';
	public function __construct() {
		parent::__construct();

	}
	public function deleteByIdVanBan($id_vanban)
	{
		$this->db->where('id_vanban', $id_vanban);
		$this->db->delete($this->table_name);
	}

}
