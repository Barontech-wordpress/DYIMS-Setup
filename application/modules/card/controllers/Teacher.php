<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/* * *****************Teacher.php**********************************
 * @product name    : Global Multi School Management System Express
 * @type            : Class
 * @class name      : Generate
 * @description     : Manage all type of system teacher listing.  
 * @author          : Codetroopers Team 	
 * @url             : https://themeforest.net/user/codetroopers      
 * @support         : yousuf361@gmail.com	
 * @copyright       : Codetroopers Team	 	
 * ********************************************************** */

class Teacher extends MY_Controller {

    public $data = array();
      
   public function __construct() {
        parent::__construct();
                
        $this->load->model('Teacher_Model', 'teacher', true);                
    }

  

   

    /*****************Function index**********************************
     * @type            : Function
     * @function name   : index
     * @description     : Load user filtering interface                 
     *                      
     * @param           : null
     * @return          : null 
     * ********************************************************** */
    public function index(){
        
        
        check_permission(VIEW);
        
        $this->data['teachers'] = '';
        
        if ($_POST) {
             
            $teacher_id = $this->input->post('teacher_id');
            $this->data['cards'] = $this->teacher->get_teacher_list($teacher_id);            
            $this->data['setting'] = $this->teacher->get_single('id_card_settings', array('status'=>1));
            $this->data['teacher_id'] = $teacher_id;
        }
                   
        $this->data['teachers'] = $this->teacher->get_list('teachers', array('status'=>1), '','', '', 'id', 'ASC');        
        
        $this->layout->title($this->lang->line('generate_teacher_id_card') .' | ' . SMS);
        $this->layout->view('teacher/index', $this->data);         
    }   

}
