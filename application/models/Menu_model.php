<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Menu_model extends CDIO_Model {

	public $table_name='menu';
	public $primary_key = 'id';
	

	public function __construct()
	{
		parent::__construct();
		
	}

}

/* End of file  */
/* Location: ./application/models/ */