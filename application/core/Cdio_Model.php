<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cdio_Model extends CI_Model {

      protected $table_name = '';
    protected $primary_key = 'id';

    public function __construct() {
        parent::__construct();

        $this->load->database();

        $this->load->helper('inflector');

        if (!$this->table_name) {
            $this->table_name = strtolower(plural(get_class($this)));
        }
    }

    public function get($id) {
        return $this->db->get_where($this->table_name, array($this->primary_key => $id))->row();
    }

    public function get_all($join='',$fields = '', $where = array(), $table = '', $limit = '',$offset='', $order_by = '', $group_by = '') {
        $data = array();

        //$this->db->join('nguoidung', "`sanpham`.`id_nguoidang=nguoidung`.`id`", 'left');
        //$this->db->join("tinh", 'tinh.matinh = truong.matinh', 'left');           
        
        if ($join != '') {
            foreach ($join as $j) {
                $this->db->join($j['table'], $j['on'], 'left');           
            }
        }
        
        if ($fields != '') {
            $this->db->select($fields);
        }

        if (count($where)) {
            $this->db->where($where);
        }

        if ($table != '') {
            $this->table_name = $table;
        }

        if ($limit != '') {
            $this->db->limit($limit,$offset);
        }
        

        if ($order_by != '') {
            $this->db->order_by($order_by[0],$order_by[1]);
        }

        if ($group_by != '') {
            $this->db->group_by($group_by);
        }


        $Q = $this->db->get($this->table_name);
        $rs=$Q->result();
        $Q->free_result();
        return $rs;

    }

    public function insert($data) {
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        $data['date_created'] = $data['date_updated'] = date('Y-m-d H:i:s');

        $success = $this->db->insert($this->table_name, $data);
        if ($success) {
            return $this->db->insert_id();
        } else {
            return FALSE;
        }
    }

    public function update($data, $id) {
        $data['date_updated'] = date('Y-m-d H:i:s');

        $this->db->where($this->primary_key, $id);
        return $this->db->update($this->table_name, $data);
    }

    public function delete($id) {
        $this->db->where($this->primary_key, $id);
        return $this->db->delete($this->table_name);
    }

}

/* End of file Cdio_Model.php */
/* Location: ./application/core/Cdio_Model.php */