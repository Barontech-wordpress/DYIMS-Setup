<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Program extends MY_Controller {

    public $data = array();

    function __construct() {
        parent::__construct();
        $this->load->model('Program_Model', 'programs', true);
    }

        
    /*****************Function index**********************************
    * @type            : Function
    * @function name   : index
    * @description     : Load "Hostel List" user interface                 
    *                    
    * @param           : null
    * @return          : null 
    * ********************************************************** */
    public function index() {
        check_permission(VIEW);
        $this->data['hostels'] = $this->programs->get_hostel_list();
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('manage_hostel') . ' | ' . SMS);
        $this->layout->view('program/index', $this->data);
    }

    
    /*****************Function add**********************************
    * @type            : Function
    * @function name   : add
    * @description     : Load "Add new Hostel" user interface                 
    *                    and process to store "Hostel" into database 
    * @param           : null
    * @return          : null 
    * ********************************************************** */
    public function add() {

        check_permission(ADD);

        if ($_POST) {
            $this->_prepare_hostel_validation();
            if(isset($_FILES['proImage'])){
                $config = array(
                    'upload_path' => "./assets/uploads/program/",
                    'allowed_types' => "jpg|png|jpeg",
                    'overwrite' => TRUE,
                    'file_name' => 'att_'.rand(1,1000)."_".date('Y-m-d')
                );
               $this->load->library('upload', $config);
                if(!$this->upload->do_upload('proImage')){
                    $data['error']=$this->upload->display_errors();
                    $image=null;
                }
                else {
                    $imagearray = array('upload_data' => $this->upload->data());
                    $image = $imagearray['upload_data']['file_name'];

                }}
            if ($this->form_validation->run() === TRUE) {
                $data = $this->_get_posted_hostel_data();
                $data['photo'] = $image;
                $insert_id = $this->programs->insert('programs', $data);
                if ($insert_id) {
                    
                    create_log('Has been added a program : '.$data['title']);
                    
                    success($this->lang->line('insert_success'));
                    redirect('program/index');
                } else {
                    error($this->lang->line('insert_failed'));
                    redirect('program/add');
                }
            } else {
                $this->data['post'] = $_POST;
            }
        }

        $this->data['hostels'] = $this->programs->get_hostel_list();
        $this->data['add'] = TRUE;
        $this->layout->title($this->lang->line('add') . ' | ' . SMS);
        $this->layout->view('program/index', $this->data);
    }

        
    /*****************Function edit**********************************
    * @type            : Function
    * @function name   : edit
    * @description     : Load Update "Hostel" user interface                 
    *                    with populate "Hostel" value 
    *                    and process to update "Hostel" into database    
    * @param           : $id integer value
    * @return          : null 
    * ********************************************************** */
    public function edit($id = null) {

        check_permission(EDIT);

        if(!is_numeric($id)){
          error($this->lang->line('unexpected_error'));
          redirect('program/index');
        }
        
        if ($_POST) {
            $this->_prepare_hostel_validation();
            if ($this->form_validation->run() === TRUE) {
                $data = $this->_get_posted_hostel_data();
                if(isset($_FILES['proImage'])){
                    $config = array(
                        'upload_path' => "./assets/uploads/program/",
                        'allowed_types' => "jpg|png|jpeg|PNG",
                        'overwrite' => TRUE,
                        'file_name' => 'att_'.rand(1,1000)."_".date('Y-m-d')
                    );
                    $this->load->library('upload', $config);
                    if(!$this->upload->do_upload('proImage')){
                         $imageError=$this->upload->display_errors();
                         error($imageError);
                        redirect('program/edit/' . $this->input->post('id'));
                        $image=null;
                    }
                    else {
                        $imagearray = array('upload_data' => $this->upload->data());
                        $image = $imagearray['upload_data']['file_name'];
                        $data['photo'] = $image;

                    }}
                $updated = $this->programs->update('programs', $data, array('id' => $this->input->post('id')));
                if ($updated) {
                    
                    create_log('Has been updated a Hostel : '.$data['title']);
                    
                    success($this->lang->line('update_success'));
                    redirect('program/index');
                } else {
                    error($this->lang->line('update_failed'));
                    redirect('program/edit/' . $this->input->post('id'));
                }
            } else {
                $this->data['hostel'] = $this->programs->get_single('programs', array('id' => $this->input->post('id')));
            }
        }

        if ($id) {
            $this->data['hostel'] = $this->programs->get_single('programs', array('id' => $id));

            if (!$this->data['hostel']) {
                redirect('program/index');
            }
        }

        $this->data['hostels'] = $this->programs->get_hostel_list();
        
        $this->data['edit'] = TRUE;
        $this->layout->title($this->lang->line('edit') . ' | ' . SMS);
        $this->layout->view('program/index', $this->data);
    }

    
        
    /*****************Function view**********************************
    * @type            : Function
    * @function name   : view
    * @description     : Load user interface with specific Hostel data                 
    *                       
    * @param           : $id integer value
    * @return          : null 
    * ********************************************************** */
    public function view($id = null) {

        check_permission(VIEW);
        
        if(!is_numeric($id)){
         error($this->lang->line('unexpected_error'));
          redirect('program/index');
        }
        
        $this->data['hostels'] = $this->programs->get_hostel_list();
        $this->data['hostel'] = $this->programs->get_single('programs', array('id' => $id));
        $this->data['detail'] = TRUE;
        $this->layout->title($this->lang->line('view') . ' | ' . SMS);
        $this->layout->view('program/index', $this->data);
    }

    
        
    /*****************Function _prepare_hostel_validation**********************************
    * @type            : Function
    * @function name   : _prepare_hostel_validation
    * @description     : Process "Hostel" user input data validation                 
    *                       
    * @param           : null
    * @return          : null 
    * ********************************************************** */
    private function _prepare_hostel_validation() {
        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<div class="error-message" style="color: red;">', '</div>');
        $this->form_validation->set_rules('title', 'title', 'trim|required');
        $this->form_validation->set_rules('introduction', 'introduction', 'required');
        $this->form_validation->set_rules('health_sector', 'health_sector', 'required');
        $this->form_validation->set_rules('choose', 'choose', 'required');
        $this->form_validation->set_rules('specialization', 'specialization', 'required');
        $this->form_validation->set_rules('courses', 'courses', 'required');
        $this->form_validation->set_rules('faculty', 'faculty', 'required');
        $this->form_validation->set_rules('fee', 'fee', 'required');
        $this->form_validation->set_rules('criteria', 'criteria', 'required');
        $this->form_validation->set_rules('schedule', 'schedule', 'required');
        $this->form_validation->set_rules('scholarships', 'scholarships', 'required');
    }

    
        
    /*****************Function name**********************************
    * @type            : Function
    * @function name   : name
    * @description     : Unique check for "hostel name" data/value                  
    *                       
    * @param           : null
    * @return          : boolean true/false 
    * ********************************************************** */ 
    public function name() {
        if ($this->input->post('id') == '') {
            $hostel = $this->programs->duplicate_check($this->input->post('title'));
            if ($hostel) {
                $this->form_validation->set_message('title', $this->lang->line('already_exist'));
                return FALSE;
            } else {
                return TRUE;
            }
        } else if ($this->input->post('id') != '') {
            $hostel = $this->hostel->duplicate_check($this->input->post('title'), $this->input->post('id'));
            if ($hostel) {
                $this->form_validation->set_message('title', $this->lang->line('already_exist'));
                return FALSE;
            } else {
                return TRUE;
            }
        } else {
            return TRUE;
        }
    }

    
       
   
    /*****************Function _get_posted_hostel_data**********************************
    * @type            : Function
    * @function name   : _get_posted_hostel_data
    * @description     : Prepare "Hostel" user input data to save into database                  
    *                       
    * @param           : null
    * @return          : $data array(); value 
    * ********************************************************** */
    private function _get_posted_hostel_data() {

        $items = array();
        $items[] = 'title';
        $items[] = 'introduction';
        $items[] = 'health_sector';
        $items[] = 'choose';
        $items[] = 'specialization';
        $items[] = 'courses';
        $items[] = 'faculty';
        $items[] = 'fee';
        $items[] = 'criteria';
        $items[] = 'schedule';
        $items[] = 'scholarships';
        $data = elements($items, $_POST);

//        if ($this->input->post('id')) {
//            $data['status'] = $this->input->post('status');
//            $data['modified_at'] = date('Y-m-d H:i:s');
//            $data['modified_by'] = logged_in_user_id();
//        } else {
//            $data['status'] = 1;
            $data['created_at'] = date('Y-m-d H:i:s');
//            $data['created_by'] = logged_in_user_id();
//            $data['modified_at'] = date('Y-m-d H:i:s');
//            $data['modified_by'] = logged_in_user_id();
//        }

        return $data;
    }

    
    
    /*****************Function delete**********************************
    * @type            : Function
    * @function name   : delete
    * @description     : delete "Hostel" data from database                  
    *                       
    * @param           : $id integer value
    * @return          : null 
    * ********************************************************** */
    public function delete($id = null) {

//        check_permission(DELETE);

        if(!is_numeric($id)){
          error($this->lang->line('unexpected_error'));
          redirect('programs/index');
        }
        
        $hostel = $this->programs->get_single('programs', array('id' => $id));
        
        if ($this->programs->delete('programs', array('id' => $id))) {
            
            create_log('Has been deleted a Hostel : '.$hostel->name);            
            success($this->lang->line('delete_success'));
            
        } else {
            error($this->lang->line('delete_failed'));
        }
        redirect('program/index');
    }

}
