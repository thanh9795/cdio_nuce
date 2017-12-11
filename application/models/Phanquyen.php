<?php 
/**
* 
*/
class Phanquyen extends CI_Model
{
	private $_table="phanquyen";
	private $_table2="chucnang";
	public function add($data)
	{
		$this->db->insert($this->_table, $data);
		$insert_id = $this->db->insert_id();

  		return  $insert_id;
	}
	public function getrole($groupid)
	{

		$this->db->where('id_nhom',$groupid);
		$this->db->join($this->_table2,"{$this->_table}.id_chucnang={$this->_table2}.id");
		$query = $this->db->get($this->_table);
		return $query->result();
	}
	public function getchild($id_par)
	{
		$this->db->where('id_parent',$id_par);
		$query = $this->db->get($this->_table2);
		return $query->result();
	}
	public function checkrole($groupid,$idfunc)
	{
		$this->db->where('id_nhom',$groupid);
		$this->db->where('id_chucnang',$idfunc);
		$query = $this->db->get($this->_table);
		return $query->result();
	}
	public function removerole($groupid)
	{
		$this->db->where('id_nhom', $groupid);
		$this->db->delete($this->_table);
	}
}

?>