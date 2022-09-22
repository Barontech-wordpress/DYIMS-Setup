<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Student_Model extends MY_Model {
    
    function __construct() {
        parent::__construct();
    }
    
    public function get_student_list($class_id = null, $section_id = null, $academic_year_id = null){
        
        $this->db->select('S.*, E.roll_no, E.section_id, U.email, U.role_id,  C.name AS class_name, SE.name AS section');
        $this->db->from('enrollments AS E');
        $this->db->join('students AS S', 'S.id = E.student_id', 'left');
        $this->db->join('users AS U', 'U.id = S.user_id', 'left');
        $this->db->join('classes AS C', 'C.id = E.class_id', 'left');
        $this->db->join('sections AS SE', 'SE.id = E.section_id', 'left');
        $this->db->where('E.academic_year_id', $academic_year_id);       
        $this->db->where('E.class_id', $class_id);
       if($section_id){
            $this->db->where('E.section_id', $section_id);
        }
        
        $this->db->order_by('E.student_id', 'DESC');  
       
        return $this->db->get()->result();
        
    }
    //UPLOAD PROFILE IMAGE
    public function picUpload(){
        $data=array();
        if(isset($_FILES['userfile'])){
            $config = array(
                'upload_path' => "./assets/uploads/attendence/",
                'allowed_types' => "jpg|png|jpeg",
                'overwrite' => FALSE,
                'file_name' => 'att_'.rand(1,1000)."_".date('Y-m-d')
            );
            $this->load->library('upload', $config);
            if(!$this->upload->do_upload()){
                $data['error']=$this->upload->display_errors();
            }
            else{
                $imagearray = array('upload_data' => $this->upload->data());
                $image = $imagearray['upload_data']['file_name'];
                if(!empty($image)){
                    $test=$this->attendance_photos->update_Image('employee',date('Y-m-d',strtotime($this->input->post('att_date'))),$image);
                    if($test){
                        echo 'chall jaaa';
                        $data['type'] = 'employee';
                        $data['at_id'] = 1;
                        $data['date'] = date('Y-m-d',strtotime($this->input->post('att_date')));
                        $data['photo'] = $image;
                        $data['created_at'] =date('Y-m-d');
                        $result=$this->attendance_photos->insert('attendance_photos', $data);
                        echo TRUE;
                    }
                    else{
                        echo 'update hoo gyaaa';
                        echo TRUE;
                    }
                }else{
                    echo FALSE;
                }
            }
        }
    }
   
    public function get_student_attendance_list($academic_year_id, $class_id, $section_id){
         
        $this->db->select('E.roll_no,  S.id, S.name');
        $this->db->from('enrollments AS E');        
        $this->db->join('students AS S', 'S.id = E.student_id', 'left');
        $this->db->where('E.academic_year_id', $academic_year_id);       
        $this->db->where('E.class_id', $class_id);       
        if($section_id){
            $this->db->where('E.section_id', $section_id);
        }
        if($this->session->userdata('role_id') == GUARDIAN){
            $this->db->where('S.guardian_id', $this->session->userdata('profile_id'));
        }
        return $this->db->get()->result();    
    } 

}
