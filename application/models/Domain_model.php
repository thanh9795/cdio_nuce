<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Domain_model extends CDIO_Model {

	protected $table_name = 'domain';
	protected $primary_key = 'id';
	public function __construct() {
		parent::__construct();
	}

}

/* End of file Nganhdaotao_model.php */
/* Location: ./application/models/Nganhdaotao_model.php */