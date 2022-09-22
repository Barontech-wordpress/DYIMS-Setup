<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/* * *****************Employee.php**********************************
 * @product name    : Global School Management System Pro
 * @type            : Class
 * @class name      : Employee
 * @description     : Manage employee daily attendance.  
 * @author          : Codetroopers Team 	
 * @url             : https://themeforest.net/user/codetroopers      
 * @support         : yousuf361@gmail.com	
 * @copyright       : Codetroopers Team	 	
 * ********************************************************** */

class Employee extends MY_Controller {

    public $data = array();    
    
    function __construct() {
        parent::__construct();
         $this->load->model('Employee_Model', 'employee', true);
         $this->load->model('Attendance_Photos_Model', 'attendance_photos', true);
    }

    
    
    /*****************Function index**********************************
    * @type            : Function
    * @function name   : index
    * @description     : Load "Employee Attendance" user interface                 
    *                    and Process to manage daily Employee attendance    
    * @param           : null
    * @return          : null 
    * ********************************************************** */    
    public function index() { 
          check_permission(VIEW);
          /*echo '<pre>';
          print_r($_FILES);
          exit;*/
        
        if($_POST){ 
            $date       = $this->input->post('date');
            $month      = date('m', strtotime($this->input->post('date')));
            $year       = date('Y', strtotime($this->input->post('date')));            
            
            $this->data['employees'] = $this->employee->get_employee_list();
            $this->data['at_employees_image']=$this->attendance_photos->get_image_employee_attandance($date,'employee');
            $condition = array(              
                'month'=>$month,
                'year'=>$year,
                'academic_year_id'=>$this->academic_year_id
            );
            $data = $condition;
            if(!empty($this->data['employees'])){
                
                foreach($this->data['employees'] as $obj){
                    
                    $condition['employee_id'] = $obj->id;                   
                                       
                    $attendance = $this->employee->get_single('employee_attendances', $condition);
                  
                    if(empty($attendance)){
                       $data['academic_year_id'] = $this->academic_year_id; 
                       $data['employee_id'] = $obj->id; 
                       $data['status'] = 1;
                       $data['created_at'] = date('Y-m-d H:i:s');
                       $data['created_by'] = logged_in_user_id();
                       $data['modified_at'] = date('Y-m-d H:i:s');
                       $data['modified_by'] = logged_in_user_id();
                       $this->employee->insert('employee_attendances', $data);
                    }                    
                }
            }
            
            $this->data['academic_year_id'] = $this->academic_year_id;
            $this->data['day'] = date('d', strtotime($this->input->post('date')));
            $this->data['month'] = date('m', strtotime($this->input->post('date')));
            $this->data['year'] = date('Y', strtotime($this->input->post('date')));

            $this->data['date'] = $date;
           
            create_log('Has been process employee attendance');   
        }
        
        $this->layout->title($this->lang->line('employee_attendance'). ' | ' . SMS);
        $this->layout->view('employee/index', $this->data);  
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
                        $data['type'] = 'employee';
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
    * @description     : Process to update single employee attendance status               
    *                        
    * @param           : null
    * @return          : null 
    * ********************************************************** */  
    public function update_single_attendance(){        
        
        $status     = $this->input->post('status');
        $condition['employee_id'] = $this->input->post('employee_id');;        
        $condition['month']      = date('m', strtotime($this->input->post('date')));
        $condition['year']       = date('Y', strtotime($this->input->post('date')));
        $condition['academic_year_id'] = $this->academic_year_id;
        
        $field = 'day_'.abs(date('d', strtotime($this->input->post('date'))));
        if($this->employee->update('employee_attendances', array($field=>$status), $condition)){
            echo TRUE;
        }else{
            echo FALSE;
        }  
    }
    
    
    /*****************Function update_all_attendance**********************************
    * @type            : Function
    * @function name   : update_all_attendance
    * @description     : Process to update all employee attendance status                 
    *                        
    * @param           : null
    * @return          : null 
    * ********************************************************** */ 
     public function update_all_attendance(){        
        
        $status     = $this->input->post('status');        
        $condition['month']      = date('m', strtotime($this->input->post('date')));
        $condition['year']       = date('Y', strtotime($this->input->post('date')));
        $condition['academic_year_id'] = $this->academic_year_id;
        
        $field = 'day_'.abs(date('d', strtotime($this->input->post('date'))));
        if($this->employee->update('employee_attendances', array($field=>$status), $condition)){
            echo TRUE;
        }else{
            echo FALSE;
        }       
    }
    
}
