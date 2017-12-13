<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tintuc_model extends Cdio_Model {
	protected $table_name = 'news';
	protected $primary_key = 'id';
	public function __construct() {
		parent::__construct();

	}
	function getbySlug($slug)
	{
        return $this->db->get_where($this->table_name, array('slug' => $slug))->row();
	}
	function countall($key) {
		if ($key != NULL) {
			$this->db->like('tieude', $key);
		}
		return $this->db->count_all_results($this->table_name);
	}

	function getall($key, $limit, $offset) {
		if ($key != NULL) {
			$this->db->like('tieude', $key);
		}
		$this->db->order_by('date_created', 'desc');
		$this->db->limit($limit, $offset);
		return $this->db->get($this->table_name)->result();
	}

}

/* End of file Tintuc_model.php */
/* Location: ./application/models/Tintuc_model.php */