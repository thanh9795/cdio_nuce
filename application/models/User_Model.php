<?php 
/**
* 
*/
class User_Model extends CI_Model
{
	private $_table="nguoidung";
	private $_table2="nhomnguoidung";
	public function add($data){
		return $this->db->insert($this->_table, $data);
	}
	public function get($id)
	{
		$this->db->select("*,{$this->_table}.id as uid");
		$this->db->where("{$this->_table}.id", $id);
		$this->db->join($this->_table2, "{$this->_table}.id_nhom = {$this->_table2}.id");
        $q = $this->db->get($this->_table);
        return $q->row();
	}
	public function getemail($id)
	{
		 return $this->db->get_where($this->_table, array('id' => $id))->row();
	}
	public function getUserbyName($name)
	{
		$this->db->select("*,{$this->_table}.id as uid");
		$this->db->where('username', $name);
		$this->db->join($this->_table2, "{$this->_table}.id_nhom = {$this->_table2}.id");
        $q = $this->db->get($this->_table);
        return $q->row();
	}
	public function isUser($username)
	{
		$this->db->where('username', $username);
        $q = $this->db->get($this->_table);
        return $q->num_rows();
	}
	public function email_exist($email)
	{
		$this->db->where('email', $email);
        $q = $this->db->get($this->_table);
        return $q->num_rows()>0;
	}
	public function login($username,$password)
	{
		$this->db->where('username', $username);
		$this->db->where('password', $password);
        $q = $this->db->get($this->_table);
        return $q->num_rows();
	}
	public function all($limit,$offset)
	{
		$this->db->select('*,nguoidung.id as userid');
		$this->db->from($this->_table);
		$this->db->join($this->_table2, "{$this->_table}.id_nhom = {$this->_table2}.id");
		$this->db->order_by('userid','desc');
		$this->db->limit($limit,$offset);
		$query = $this->db->get(); 
		return $query->result(); 
	}
	public function tatca()
	{
		$this->db->select('*,nguoidung.id as userid');
		$this->db->from($this->_table);
		$this->db->join($this->_table2, "{$this->_table}.id_nhom = {$this->_table2}.id");
		$this->db->order_by('tennhom','desc');
		$query = $this->db->get(); 
		return $query->result(); 
	}
	public function getListuser($list)
	{
		$this->db->select('username,hoten');
		$this->db->from($this->_table);
		$this->db->where_in('id', $list);
		$query = $this->db->get(); 
		return $query->result(); 
	}
	public function count_total()
	{
		$this->db->from($this->_table);
		return $this->db->count_all_results();
	}
	public function update($id,$data)
	{
		$this->db->where('id', $id);
		return $this->db->update($this->_table, $data);
	}
	public function delete($id)
	{
		$this->db->where('id', $id);
		return $this->db->delete($this->_table);
	}
}
?>