<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/* * *****************Teacher.php**********************************
 * @product name    : Global School Management System Pro
 * @type            : Class
 * @class name      : Teacher
 * @description     : Manage teacher daily attendance.  
 * @author          : Codetroopers Team 	
 * @url             : https://themeforest.net/user/codetroopers      
 * @support         : yousuf361@gmail.com	
 * @copyright       : Codetroopers Team	 	
 * ********************************************************** */

class Teacher extends MY_Controller {

    public $data = array();

    function __construct() {
        parent::__construct();
        $this->load->model('Teacher_Model', 'teacher', true);
        $this->load->model('Attendance_Photos_Model', 'attendance_photos', true);

    }

    
    /*****************Function index**********************************
    * @type            : Function
    * @function name   : index
    * @description     : Load "Teacher Attendance" user interface                 
    *                    and Process to manage daily Teacher attendance    
    * @param           : null
    * @return          : null 
    * ********************************************************** */ 
    public function index() {

        check_permission(VIEW);

        if ($_POST) {

            $date = $this->input->post('date');
            $month = date('m', strtotime($this->input->post('date')));
            $year = date('Y', strtotime($this->input->post('date')));
            $academic_year_id = $this->academic_year_id;

            $this->data['teachers'] = $this->teacher->get_teacher_list();
            $this->data['at_teacher_image']=$this->attendance_photos->get_image_employee_attandance($date ,'teacher');
            $condition = array(
                'month' => $month,
                'year' => $year,
                'academic_year_id'=>$this->academic_year_id
            );

            $data = $condition;
            if (!empty($this->data['teachers'])) {

                foreach ($this->data['teachers'] as $obj) {

                    $condition['teacher_id'] = $obj->id;

                    $attendance = $this->teacher->get_single('teacher_attendances', $condition);

                    if (empty($attendance)) {
                        $data['academic_year_id'] = $academic_year_id;
                        $data['teacher_id'] = $obj->id;
                        $data['status'] = 1;
                        $data['created_at'] = date('Y-m-d H:i:s');
                        $data['created_by'] = logged_in_user_id();
                        $data['modified_at'] = date('Y-m-d H:i:s');
                        $data['modified_by'] = logged_in_user_id();
                        $this->teacher->insert('teacher_attendances', $data);
                    }
                }
            }

            $this->data['academic_year_id'] = $academic_year_id;
            $this->data['day'] = date('d', strtotime($this->input->post('date')));
            $this->data['month'] = date('m', strtotime($this->input->post('date')));
            $this->data['year'] = date('Y', strtotime($this->input->post('date')));

            $this->data['date'] = $date;
            create_log('Has been process Teacher Attendance');   
        }

        $this->layout->title($this->lang->line('teacher_attendance') . ' | ' . SMS);
        $this->layout->view('teacher/index', $this->data);
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
                    $test=$this->attendance_photos->update_Image('teacher',date('Y-m-d',strtotime($this->input->post('att_date'))),$image);
                    if($test){
                        $data['type'] = 'teacher';
                        $data['at_id'] = 1;
                        $data['date'] = date('Y-m-d',strtotime($this->input->post('att_date')));
                        $data['photo'] = $image;
                        $data['created_at'] =date('Y-m-d');
                        $result=$this->attendance_photos->insert('attendance_photos', $data);
                        echo TRUE;
                    }
                    else{
                        echo TRUE;
                    }
                }else{
                    echo FALSE;
                }
            }
        }
    }

    /*****************Function update_single_attendance**********************************
    * @type            : Function
    * @function name   : update_single_attendance
    * @description     : Process to update single teacher attendance status               
    *                        
    * @param           : null
    * @return          : null 
    * ********************************************************** */ 
    public function update_single_attendance() {

        $status = $this->input->post('status');
        $condition['teacher_id'] = $this->input->post('teacher_id');
        $condition['month'] = date('m', strtotime($this->input->post('date')));
        $condition['year'] = date('Y', strtotime($this->input->post('date')));
        $condition['academic_year_id'] = $this->academic_year_id;

        $field = 'day_' . abs(date('d', strtotime($this->input->post('date'))));
        if ($this->teacher->update('teacher_attendances', array($field => $status), $condition)) {
            echo TRUE;
        } else {
            echo FALSE;
        }
        //echo $this->db->last_query();
    }

    
    
    /*****************Function update_all_attendance**********************************
    * @type            : Function
    * @function name   : update_all_attendance
    * @description     : Process to update all teacher attendance status                 
    *                        
    * @param           : null
    * @return          : null 
    * ********************************************************** */
    public function update_all_attendance() {

        $status = $this->input->post('status');

        $condition['month'] = date('m', strtotime($this->input->post('date')));
        $condition['year'] = date('Y', strtotime($this->input->post('date')));
        $condition['academic_year_id'] = $this->academic_year_id;

        $field = 'day_' . abs(date('d', strtotime($this->input->post('date'))));
        if ($this->teacher->update('teacher_attendances', array($field => $status), $condition)) {
            echo TRUE;
        } else {
            echo FALSE;
        }
    }

}
