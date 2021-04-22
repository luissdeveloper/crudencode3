<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Universidad_model extends CI_Model {

    var $table = 'tbl_universidad';

    function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

    public function get_rows()
    {
        $this->db->from($this->table);
        $this->db->order_by('univ_nombre', 'ASC');
        $query = $this->db->get();

        return $query->result();
    }

}
