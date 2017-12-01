<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Menu_model extends Cdio_Model {
	protected $table_name = 'menu';
	protected $primary_key = 'id';
	public function __construct()
	{
		parent::__construct();
		
	}
	
	

}

/* End of file Menu_model.php */
/* Location: ./application/models/Menu_model.php */