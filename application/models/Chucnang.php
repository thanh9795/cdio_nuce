<?php 
/**
* 
*/
class Chucnang extends CI_Model
{
	private $_table="chucnang";
	private $_table2="truong";
	public function add($data)
	{
		return $this->db->insert($this->_table, $data);
	}
	public  function get($id)
	{       
		$this->db->where('id', $id);
		$q = $this->db->get($this->_table);
		return $q->result()[0];
	}
	public function all()
	{
		$this->db->where('trangthai',1);
		$query = $this->db->get($this->_table);
		return $query->result();
	}
	
}

?>