<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Gioithieu_model extends Cdio_Model {

	protected $table_name = 'gioithieu';
	protected $primary_key = 'id';
	public function __construct()
	{
		parent::__construct();
		
	}

}

/* End of file Gioithieu_model.php */
/* Location: ./application/models/Gioithieu_model.php */