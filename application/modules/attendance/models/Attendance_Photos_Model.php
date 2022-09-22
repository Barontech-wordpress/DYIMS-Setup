<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Attendance_Photos_Model extends MY_Model
{
    protected $table = 'attendance_photos';
    function __construct() {
        parent::__construct();
    }
    protected $primaryKey = 'id';

    protected $allowedFields = ['type', 'date' ,'at_id','photo'];



    public function get_image_employee_attandance($startDate ,$type){
        $this->db->select('*');
        $this->db->from('attendance_photos');
        $this->db->where('type',$type);
        $this->db->where('DATE(date)',date('Y-m-d',strtotime($startDate)));
        return $this->db->get()->row();
    }
    public function update_Image($type,$date,$image) {
        $data = [
            'photo' => $image,
        ]   ;
        $this->db->where('type', $type);
        $this->db->where('date', $date);
        $this->db->update('attendance_photos',$data);
        if($this->db->affected_rows() >0){
            return FALSE;
        }else{
            return TRUE;
        }
    }
}