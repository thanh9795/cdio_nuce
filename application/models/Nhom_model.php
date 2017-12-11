<?php 
/**
* 
*/
class Nhom_model extends CI_Model
{
	private $_table="nhomnguoidung";
	private $_table2="nguoidung";
	public function add($data)
	{
		$this->db->insert($this->_table, $data);
		$insert_id = $this->db->insert_id();

		return  $insert_id;
	}
	public function all()
	{
		$this->db->select('nhomnguoidung.id,tennhom,COUNT(*) as total');
		$this->db->group_by('nhomnguoidung.id'); 
		$this->db->join($this->_table2, 'nguoidung.id_nhom = nhomnguoidung.id','left');
		$query = $this->db->get($this->_table);
		return $query->result();
	}
	public function get_all()
	{
		$this->db->select('nhomnguoidung.id,tennhom,COUNT(*) as total');
		$this->db->group_by('nhomnguoidung.id');
		$this->db->where('type', 0); 
		$this->db->join($this->_table2, 'nguoidung.id_nhom = nhomnguoidung.id','left');
		$query = $this->db->get($this->_table);
		return $query->result();
	}
	public function update($data)
	{
		$this->db->set('tennhom',$data['tennhom']);
		$this->db->where('id',$data['id']);
		return $this->db->update($this->_table);
	}
	public function update2($data, $id) {
        $this->db->where('id', $id);
        return $this->db->update($this->_table, $data);
    }
	public  function get($id)
	{       
		$this->db->where('id', $id);
		$q = $this->db->get($this->_table);
		return $q->result()[0];
	}
	public function deletelist($array)
	{
		$this->db->where($array);
		$this->db->delete($this->_table);

	}
	
}

?>