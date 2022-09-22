<?php

defined('BASEPATH') OR exit('No direct script access allowed');

/* * *****************Web.php**********************************
 * @product name    : Global School Management System Pro
 * @type            : Class
 * @class name      : Web
 * @description     : Manage frontend website.  
 * @author          : Codetroopers Team 	
 * @url             : https://themeforest.net/user/codetroopers      
 * @support         : yousuf361@gmail.com	
 * @copyright       : Codetroopers Team	 	
 * ********************************************************** */

class Web extends CI_Controller {

    public $data = array();
    public $setting = array();
    public $academic_year_id = '';
            
    function __construct() {
        parent::__construct();
        
        $this->load->model('Web_Model', 'web', true);        
        $this->data['settings'] = $this->web->get_single('settings', array('status' => 1));
        $this->data['theme'] = $this->web->get_single('themes', array('is_active' => 1));
        $this->data['opening_hour'] = $this->web->get_single('opening_hours', array('status' => 1));
         $this->data['programs'] = $this->web->get_total_programs();
         
        if($this->data['settings']){
            $this->setting = $this->data['settings'];
            $this->academic_year_id = $this->setting->academic_year_id;
            date_default_timezone_set($this->setting->default_time_zone);
            $this->lang->load($this->setting->language);
        }
        
       
        
        
        if(isset($this->setting->enable_frontend) && empty($this->setting->enable_frontend)){
            redirect('login');
        }
        
        $this->data['footer_pages'] = $this->web->get_list('pages', array('status' => 1, 'page_location'=>'footer'));
        $this->data['header_pages'] = $this->web->get_list('pages', array('status' => 1, 'page_location'=>'header'));
    }

    
    
    /*****************Function index**********************************
    * @type            : Function
    * @function name   : index
    * @description     : Load "Frontend home page" user interface                 
    *                    
    * @param           : null
    * @return          : null 
    * ********************************************************** */
    public function index() {

        $this->data['sliders'] = $this->web->get_list('sliders', array('status' => 1), '', '', '', 'id', 'ASC');
        
        $this->data['notices'] = $this->web->get_notice_list(3);
        $this->data['events'] = $this->web->get_event_list(3);
        $this->data['news'] = $this->web->get_news_list(3);
        $this->data['feedbacks'] = $this->web->get_feedback_list(10);
        
        $this->data['teacher'] = $this->web->get_total_teacher();
        $this->data['student'] = $this->web->get_total_student();
        $this->data['staff'] = $this->web->get_total_staff();
        $this->data['user'] = $this->web->get_total_user();
        $this->data['programs'] = $this->web->get_total_programs();

        
        $this->data['is_home'] = TRUE;
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('home') . ' | ' . SMS);
        $this->layout->view('index', $this->data);
    }
    
    
    /*****************Function news**********************************
    * @type            : Function
    * @function name   : news
    * @description     : Load "news listing" user interface                 
    *                    
    * @param           : null
    * @return          : null 
    * ********************************************************** */
    public function news() {

        $this->data['news'] = $this->web->get_news_list(100);
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('news') . ' | ' . SMS);
        $this->layout->view('news', $this->data);
    }
    
    
    /*****************Function news**********************************
    * @type            : Function
    * @function name   : news
    * @description     : Load "news detail" user interface                 
    *                    
    * @param           : null
    * @return          : null 
    * ********************************************************** */
    public function news_detail($id) {

        $this->data['news'] = $this->web->get_single_news($id); 
        $this->data['latest_news'] = $this->web->get_news_list(6);
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('news') . ' | ' . SMS);
        $this->layout->view('news_detail', $this->data);
    }
    
    
    
    /*****************Function notice**********************************
    * @type            : Function
    * @function name   : notice
    * @description     : Load "notice listing" user interface                 
    *                    
    * @param           : null
    * @return          : null 
    * ********************************************************** */
    public function notice() {

        $this->data['notices'] = $this->web->get_notice_list(50);
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('notice') . ' | ' . SMS);
        $this->layout->view('notice', $this->data);
    }
    
    /*****************Function notice_detail**********************************
    * @type            : Function
    * @function name   : notice_detail
    * @description     : Load "notice_detail" user interface                 
    *                    
    * @param           : null
    * @return          : null 
    * ********************************************************** */
    public function notice_detail($id) {

        $this->data['notice'] = $this->web->get_single_notice($id);
        $this->data['notices'] = $this->web->get_notice_list(6);
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('notice') . ' | ' . SMS);
        $this->layout->view('notice_detail', $this->data);
    }
    
    
    /*****************Function holiday**********************************
    * @type            : Function
    * @function name   : holiday
    * @description     : Load "holiday listing" user interface                 
    *                    
    * @param           : null
    * @return          : null 
    * ********************************************************** */
    public function holiday() {

        $this->data['holidays'] = $this->web->get_holiday_list(50);
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('holiday') . ' | ' . SMS);
        $this->layout->view('holiday', $this->data);
    }
    
    /***************** Function holiday_detail **********************************
    * @type            : Function
    * @function name   : holiday_detail
    * @description     : Load "holiday_detail" user interface                 
    *                    
    * @param           : null
    * @return          : null 
    * ********************************************************** */
    public function holiday_detail($id) {

        $this->data['holiday']  = $this->web->get_single_holiday($id);
        $this->data['holidays'] = $this->web->get_holiday_list(15);
        $this->data['list']     = TRUE;
        $this->layout->title($this->lang->line('holiday') . ' | ' . SMS);
        $this->layout->view('holiday_detail', $this->data);
    }
    
    /*****************Function event**********************************
    * @type            : Function
    * @function name   : event
    * @description     : Load "event listing" user interface                 
    *                    
    * @param           : null
    * @return          : null 
    * ********************************************************** */
    public function events() {

        $this->data['events'] = $this->web->get_event_list(6);
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('event') . ' | ' . SMS);
        $this->layout->view('event', $this->data);
    }
    
    /*****************Function event_detail**********************************
    * @type            : Function
    * @function name   : event_detail
    * @description     : Load "event_detail" user interface                 
    *                    
    * @param           : null
    * @return          : null 
    * ********************************************************** */
    public function event_detail($id){

        $this->data['event'] = $this->web->get_single_event($id);
        $this->data['events'] = $this->web->get_event_list(10);
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('event') . ' | ' . SMS);
        $this->layout->view('event_detail', $this->data);
    }
    
    
    
    /*****************Function gallery**********************************
    * @type            : Function
    * @function name   : gallery
    * @description     : Load "gallery listing" user interface                 
    *                    
    * @param           : null
    * @return          : null 
    * ********************************************************** */
    public function galleries() {

        $this->data['galleries'] = $this->web->get_list('galleries', array('status'=>1, 'is_view_on_web'=>1), '', '', '', 'id', 'DESC');
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('media_gallery') . ' | ' . SMS);
        $this->layout->view('gallery', $this->data);
    }

    
    /*****************Function teacher**********************************
    * @type            : Function
    * @function name   : teacher
    * @description     : Load "teacher listing" user interface                 
    *                    
    * @param           : null
    * @return          : null 
    * ********************************************************** */
    public function teachers() {

        $this->data['teachers'] = $this->web->get_teacher_list();
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('teacher') . ' | ' . SMS);
        $this->layout->view('teacher', $this->data);
    }
    
    
    /*****************Function staff**********************************
    * @type            : Function
    * @function name   : staff
    * @description     : Load "staff listing" user interface                 
    *                    
    * @param           : null
    * @return          : null 
    * ********************************************************** */
    public function staff() {

        $this->data['employees'] = $this->web->get_employee_list();
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('staff') . ' | ' . SMS);
        $this->layout->view('staff', $this->data);
    }
    
    
    
    /*****************Function faq**********************************
    * @type            : Function
    * @function name   : faq
    * @description     : Load "faq listing" user interface                 
    *                    
    * @param           : null
    * @return          : null 
    * ********************************************************** */
    public function faq() {

        $this->data['faqs'] = $this->web->get_faq_list();
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('faq') . ' | ' . SMS);
        $this->layout->view('faq', $this->data);
    }

    
    /*****************Function Page**********************************
    * @type            : Function
    * @function name   : Page
    * @description     : Load "Dynamic Pages" user interface                 
    * @param           : null
    * @return          : null 
    * ********************************************************** */
    public function page($slug = null) { 
        
     
        $this->data['page'] = $this->web->get_single('pages', array('status' => 1, 'page_slug'=>$slug));

        if(empty($this->data['page'])){
            redirect('/', 'refresh');
        }

        $this->layout->title($this->lang->line('page') . ' | ' . SMS);
        $this->layout->view('page', $this->data);            
         
    }
    
    
    /*****************Function About**********************************
    * @type            : Function
    * @function name   : About
    * @description     : Load "About Us" user interface                 
    *                    
    * @param           : null
    * @return          : null 
    * ********************************************************** */
    public function about() {
        
        $this->data['list'] = TRUE;
        $this->data['programs'] = $this->web->get_total_programs();
        $this->layout->title($this->lang->line('about') . ' ' . $this->lang->line('school'). ' | ' . SMS);
        $this->layout->view('about', $this->data);
    }
     /*****************Function Camuslife**********************************
    * @type            : Function
    * @function name   : Campuslife
    * @description     : Load "Campus Life" user interface                 
    *                    
    * @param           : null
    * @return          : null 
    * ********************************************************** */
      public function campuslife() {
        
        $this->data['list'] = TRUE;
        $this->layout->view('campuslife', $this->data);
    }
    
    

   public function programs() {
        $id=$this->input->get('id');
        $this->data['list'] = TRUE;
        $this->data['programs'] = $this->web->get_total_programs();
        $this->layout->title($this->lang->line('programs') . ' ' . $this->lang->line('school'). ' | ' . SMS);
        $this->data['program'] = $this->web->get_program_by_id($id);
        $this->layout->view('programs', $this->data);
    }
    
    public function library_page(){
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('library') . ' ' . $this->lang->line('school'). ' | ' . SMS);
        $this->layout->view('library', $this->data);
    }
    public function hnd(){
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('hnd') . ' ' . $this->lang->line('school'). ' | ' . SMS);
        $this->layout->view('hnd', $this->data);
    }
    public function mlt(){
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('mlt') . ' ' . $this->lang->line('school'). ' | ' . SMS);
        $this->layout->view('mlt', $this->data);
    }
    public function rit(){
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('rit') . ' ' . $this->lang->line('school'). ' | ' . SMS);
        $this->layout->view('rit', $this->data);
    }
    public function dpt(){
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('dpt') . ' ' . $this->lang->line('school'). ' | ' . SMS);
        $this->layout->view('dpt', $this->data);
    }
     public function ott(){
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('ott') . ' ' . $this->lang->line('school'). ' | ' . SMS);
        $this->layout->view('ott', $this->data);
    }
    public function chairmanmessagepage(){
        $this->data['list'] = TRUE;
        $this->layout->view('chairmanmessagepage', $this->data);
    }
    public function projectdirectormessage(){
        $this->data['list'] = TRUE;
        $this->layout->view('projectdirectormessage', $this->data);
    }
    public function coomessage(){
        $this->data['list'] = TRUE;
        $this->layout->view('coomessage', $this->data);
    }
    public function principalmessage(){
        $this->data['list'] = TRUE;
        $this->layout->view('principalmessage', $this->data);
    }
    public function affiliations(){
        $this->data['list'] = TRUE;
        $this->layout->view('affiliations', $this->data);
    }
    public function collaborations(){
        $this->data['list'] = TRUE;
        $this->layout->view('collaborations', $this->data);
    }
    public function qec(){
        $this->data['list'] = TRUE;
        $this->layout->view('qec', $this->data);
    }
    public function qecmission(){
        $this->data['list'] = TRUE;
        $this->layout->view('qecmission', $this->data);
    }
    public function qecform(){
        $this->data['list'] = TRUE;
        $this->layout->view('qecform', $this->data);
    }
    public function coordinators(){
        $this->data['list'] = TRUE;
        $this->layout->view('coordinators', $this->data);
    }
    public function missionvision(){
        $this->data['list'] = TRUE;
        $this->layout->view('missionvision', $this->data);
    }
    public function schoolofnursing(){
        $this->data['list'] = TRUE;
        $this->layout->view('schoolofnursing', $this->data);
    }
    public function facilitylibrary(){
        $this->data['list'] = TRUE;
        $this->layout->view('facilitylibrary', $this->data);
    }
    public function facilitytransport(){
        $this->data['list'] = TRUE;
        $this->layout->view('facilitytransport', $this->data);
    }
    public function facilitytuckshop(){
        $this->data['list'] = TRUE;
        $this->layout->view('facilitytuckshop', $this->data);
    }
    public function howtoapply(){
        $this->data['list'] = TRUE;
        $this->layout->view('howtoapply', $this->data);
    }
    public function dateanddeadline(){
        $this->data['list'] = TRUE;
        $this->layout->view('dateanddeadline', $this->data);
    }
    
    public function laboratory(){
        $this->data['list'] = TRUE;
        $this->layout->view('facilitylaboratory', $this->data);
    }
    public function auditorium(){
        $this->data['list'] = TRUE;
        $this->layout->view('facilityauditorium', $this->data);
    }
    public function computerlab(){
        $this->data['list'] = TRUE;
        $this->layout->view('computerlab', $this->data);
    }
    public function dispenser(){
        $this->data['list'] = TRUE;
        $this->layout->view('dispenser', $this->data);
    }
    public function campuslocation(){
        $this->data['list'] = TRUE;
        $this->layout->view('campuslocation', $this->data);
    }
    public function qadiralihospital(){
        $this->data['list'] = TRUE;
        $this->layout->view('qadiralihospital', $this->data);
    }
    public function socialwelfare(){
        $this->data['list'] = TRUE;
        $this->layout->view('socialwelfare', $this->data);
    }
    public function sportsground(){
        $this->data['list'] = TRUE;
        $this->layout->view('sportsground', $this->data);
    }
    public function studentadvisory(){
        $this->data['list'] = TRUE;
        $this->layout->view('studentAdvisoary', $this->data);
    }
    public function studytour(){
        $this->data['list'] = TRUE;
        $this->layout->view('studyTour', $this->data);
    }
    public function carparking(){
        $this->data['list'] = TRUE;
        $this->layout->view('carParking', $this->data);
    }
    public function communicationskills(){
        $this->data['list'] = TRUE;
        $this->layout->view('CommunicationSkills', $this->data);
    }
    public function grooming(){
        $this->data['list'] = TRUE;
        $this->layout->view('Grooming', $this->data);
    }
    public function professionaldevlopment(){
        $this->data['list'] = TRUE;
        $this->layout->view('professionaldevlopment', $this->data);
    }
    public function dyimshistory(){
        $this->data['list'] = TRUE;
        $this->layout->view('history', $this->data);
    }

    /*****************Function admission**********************************
    * @type            : Function
    * @function name   : admission
    * @description     : Load "admission" user interface                 
    *                    
    * @param           : null
    * @return          : null 
    * ********************************************************** */
    public function admission_form() {
    
        if(isset($this->setting->enable_online_admission) && !empty($this->setting->enable_online_admission)){               

            $this->data['list'] = TRUE;
            $this->layout->title($this->lang->line('admission_form') . ' | ' . SMS);
            $this->layout->view('admission-form', $this->data);

        }else{               
           redirect('/');
       }
            
      
    }
    
    /*****************Function admission**********************************
    * @type            : Function
    * @function name   : admission
    * @description     : Load "online admission" user interface                 
    *                    
    * @param           : null
    * @return          : null 
    * ********************************************************** */
    public function admission_online() {    
           
           if(isset($this->setting->enable_online_admission) && !empty($this->setting->enable_online_admission)){
              
            if($_POST){

                $this->_prepare_admission_validation();
                if ($this->form_validation->run() === TRUE) {
                    $data = $this->_get_posted_admission_data();

                    $insert_id = $this->web->insert('admissions', $data);
                    if ($insert_id) {
                        $this->session->set_userdata('success', $this->lang->line('apply_successful'));                        
                    } else {
                        $this->session->set_userdata('error', $this->lang->line('apply_failed'));
                    }

                    redirect('web/admission_online');
                } else {
                    $this->data['post'] = $_POST;
                }                
            } 

            $this->data['classes'] = $this->web->get_list('classes', array('status'=>1), '', '', '', 'id', 'ASC');
            $this->data['types'] = $this->web->get_list('student_types', array('status'=>1), '', '', '', 'id', 'ASC');
            $this->data['groups'] = $this->web->get_list('student_groups', array('status'=>1), '', '', '', 'id', 'ASC');

            $this->data['list'] = TRUE;
            $this->layout->title($this->lang->line('online'). ' ' .$this->lang->line('admission') . ' | ' . SMS);
            $this->layout->view('admission-online', $this->data);
            
           }else{               
               redirect('/');
           }
    }
    
    
    /*****************Function get_guardian_info**********************************
     * @type            : Function
     * @function name   : get_guardian_info
     * @description     : Get guardian information                 
     *                       
     * @param           : null
     * @return          : null 
     * ********************************************************** */
    public function get_guardian_info(){
                      

        header('Content-Type: application/json');
        $phone = $this->input->post('phone');        
        $guardian = $this->web->get_single('guardians', array('phone' => $phone));
        echo json_encode($guardian);
        die();
        
    }

        
    /*****************Function _prepare_admission_validation**********************************
     * @type            : Function
     * @function name   : _prepare_admission_validation
     * @description     : Process "admission" user input data validation                 
     *                       
     * @param           : null
     * @return          : null 
     * ********************************************************** */
    private function _prepare_admission_validation() {
        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<div class="error-message" style="color: red;">', '</div>');
        
        $this->form_validation->set_rules('name', $this->lang->line('name'), 'trim|required');   
        $this->form_validation->set_rules('dob', $this->lang->line('date_of_birth'), 'trim|required');   
        $this->form_validation->set_rules('gender', $this->lang->line('gender'), 'trim|required'); 
        $this->form_validation->set_rules('email', $this->lang->line('email'), 'trim|required|valid_email'); 
        $this->form_validation->set_rules('phone', $this->lang->line('phone'), 'trim'); 
        $this->form_validation->set_rules('class_id', $this->lang->line('class'), 'trim|required');   
        $this->form_validation->set_rules('type_id', $this->lang->line('student').' '.$this->lang->line('type'), 'trim');   
        
        $this->form_validation->set_rules('gud_phone', $this->lang->line('guardian') .' '. $this->lang->line('guardian'), 'trim|required'); 
        $this->form_validation->set_rules('gud_name', $this->lang->line('guardian') .' '. $this->lang->line('name'), 'trim|required'); 
        // $this->form_validation->set_rules('gud_email', $this->lang->line('guardian') .' '. $this->lang->line('email'), 'trim|required|valid_email'); 
        
    }
    

        /*****************Function _get_posted_admission_data**********************************
     * @type            : Function
     * @function name   : _get_posted_admission_data
     * @description     : Prepare "admission" user input data to save into database                  
     *                       
     * @param           : null
     * @return          : $data array(); value 
     * ********************************************************** */
    private function _get_posted_admission_data() {

        $items = array();
        $items[] = 'name';
        $items[] = 'gender';
        $items[] = 'class_id';
        $items[] = 'type_id';
        $items[] = 'group_id';
        $items[] = 'second_language';
        $items[] = 'blood_group';
        $items[] = 'phone';
        $items[] = 'email';
        $items[] = 'religion';
        $items[] = 'caste';
        $items[] = 'health_condition';
        $items[] = 'national_id';
        $items[] = 'present_address';
        $items[] = 'permanent_address';
        
        $items[] = 'is_guardian';
        $items[] = 'guardian_id';
        $items[] = 'gud_relation';
        $items[] = 'gud_name';
        $items[] = 'gud_phone';
        //$items[] = 'gud_email';
        $items[] = 'gud_national_id';
        $items[] = 'father_present_address';
        $items[] = 'father_permanent_address';
        $items[] = 'gud_profession';
        $items[] = 'gud_religion';
        $items[] = 'gud_other_info';
        
        $items[] = 'father_name';
        $items[] = 'father_phone';
        $items[] = 'father_education';
        $items[] = 'father_profession';
        $items[] = 'father_designation';
        $items[] = 'mother_name';
        $items[] = 'mother_phone';
        $items[] = 'mother_education';
        $items[] = 'mother_profession';
        $items[] = 'mother_designation';
        $items[] = 'matric_school_name'; 
        $items[] = 'matric_total_marks';
        $items[] = 'matric_obtain_marks'; 
        $items[] = 'percentage_matric'; 
        $items[] = 'matric_board_name'; 
        $items[] = 'previous_college_name'; 
        $items[] = 'inter_total_marks';
        $items[] = 'inter_obtain_marks'; 
        $items[] = 'percentage_inter'; 
        $items[] = 'inter_board_name';
        $items[] = 'matric_result_photo';
        $items[] = 'inter_result_photo';
        $items[] = 'previous_school';
        $items[] = 'previous_class';
        
        $data = elements($items, $_POST);        
        
        $data['dob'] = date('Y-m-d', strtotime($this->input->post('dob')));  
        
        if ($this->input->post('id')) {
            $data['modified_at'] = date('Y-m-d H:i:s');
            $data['modified_by'] = logged_in_user_id();
        } else {
            $data['status'] = 0;
            $data['created_at'] = date('Y-m-d H:i:s');
            $data['created_by'] = logged_in_user_id(); 
            $data['modified_at'] = date('Y-m-d H:i:s');
            $data['modified_by'] = logged_in_user_id();
        }
            
        if ($_FILES['photo']['name']) {
            $data['photo'] = $this->_upload_photo();
        }
        if ($_FILES['domicile_photo']['name']) {
            $data['domicile_photo'] = $this->_upload_domicile_photo();
        }
         if ($_FILES['matric_result_photo']['name']) {
            $data['matric_result_photo'] = $this->_upload_matric_result_photo();
        }
         if ($_FILES['matric_result_photo']['name']) {
            $data['matric_result_photo'] = $this->_upload_inter_result_photo();
        }
        return $data;
    }

    

               
    /*****************Function _upload_photo**********************************
    * @type            : Function
    * @function name   : _upload_photo
    * @description     : process to upload student profile photo in the server                  
    *                     and return photo file name  
    * @param           : null
    * @return          : $return_photo string value 
    * ********************************************************** */
    private function _upload_photo() {

        $photo = $_FILES['photo']['name'];
        $photo_type = $_FILES['photo']['type'];
        $return_photo = '';
        if ($photo != "") {
            if ($photo_type == 'image/jpeg' || $photo_type == 'image/pjpeg' ||
                    $photo_type == 'image/jpg' || $photo_type == 'image/png' ||
                    $photo_type == 'image/x-png' || $photo_type == 'image/gif') {

                $destination = 'assets/uploads/admission-photo/';

                $file_type = explode(".", $photo);
                $extension = strtolower($file_type[count($file_type) - 1]);
                $photo_path = 'photo-' . time() . '-sms.' . $extension;

                move_uploaded_file($_FILES['photo']['tmp_name'], $destination . $photo_path);

                $return_photo = $photo_path;
            }
        } 

        return $return_photo;
    }

    private function _upload_domicile_photo() {

        $photo = $_FILES['domicile_photo']['name'];
        $photo_type = $_FILES['domicile_photo']['type'];
        $return_photo = '';
        if ($photo != "") {
            if ($photo_type == 'image/jpeg' || $photo_type == 'image/pjpeg' ||
                    $photo_type == 'image/jpg' || $photo_type == 'image/png' ||
                    $photo_type == 'image/x-png' || $photo_type == 'image/gif') {

                $destination = 'assets/uploads/domicile-photo/';

                $file_type = explode(".", $photo);
                $extension = strtolower($file_type[count($file_type) - 1]);
                $photo_path = 'photo-' . time() . '-sms.' . $extension;

                move_uploaded_file($_FILES['domicile_photo']['tmp_name'], $destination . $photo_path);

                $return_photo = $photo_path;
            }
        } 

        return $return_photo;
    }
    
      private function _upload_matric_result_photo() {

        $photo = $_FILES['matric_result_photo']['name'];
        $photo_type = $_FILES['matric_result_photo']['type'];
        $return_photo = '';
        if ($photo != "") {
            if ($photo_type == 'image/jpeg' || $photo_type == 'image/pjpeg' ||
                    $photo_type == 'image/jpg' || $photo_type == 'image/png' ||
                    $photo_type == 'image/x-png' || $photo_type == 'image/gif') {

                $destination = 'assets/uploads/domicile-photo/';

                $file_type = explode(".", $photo);
                $extension = strtolower($file_type[count($file_type) - 1]);
                $photo_path = 'photo-' . time() . '-sms.' . $extension;

                move_uploaded_file($_FILES['matric_result_photo']['tmp_name'], $destination . $photo_path);

                $return_photo = $photo_path;
            }
        } 

        return $return_photo;
    }
    
       private function _upload_inter_result_photo() {

        $photo = $_FILES['inter_result_photo']['name'];
        $photo_type = $_FILES['inter_result_photo']['type'];
        $return_photo = '';
        if ($photo != "") {
            if ($photo_type == 'image/jpeg' || $photo_type == 'image/pjpeg' ||
                    $photo_type == 'image/jpg' || $photo_type == 'image/png' ||
                    $photo_type == 'image/x-png' || $photo_type == 'image/gif') {

                $destination = 'assets/uploads/domicile-photo/';

                $file_type = explode(".", $photo);
                $extension = strtolower($file_type[count($file_type) - 1]);
                $photo_path = 'photo-' . time() . '-sms.' . $extension;

                move_uploaded_file($_FILES['inter_result_photo']['tmp_name'], $destination . $photo_path);

                $return_photo = $photo_path;
            }
        } 

        return $return_photo;
    }
    
    
    /*****************Function contact**********************************
    * @type            : Function
    * @function name   : contact
    * @description     : Load "contact" user interface                 
    *                    
    * @param           : null
    * @return          : null 
    * ********************************************************** */
    public function contact() {

        if($_POST){
            if($this->_send_email()){
                $this->session->set_flashdata('success', $this->lang->line('email_send_success'));
            }else{
                 $this->session->set_flashdata('error', $this->lang->line('email_send_failed'));
            }
            
            redirect(site_url('contact'));
        }
        
        $this->data['list'] = TRUE;
        $this->layout->title($this->lang->line('contact_us') . ' | ' . SMS);
        $this->layout->view('contact', $this->data);
    }


    
    
        /*     * ***************Function _send_email**********************************
     * @type            : Function
     * @function name   : _send_email
     * @description     : this function used to send recover forgot password email 
     * @param           : $data array(); 
     * @return          : null 
     * ********************************************************** */

    private function _send_email() {

        $from_email = FROM_EMAIL;
        $from_name  = FROM_NAME;  

        $email_setting = $this->web->get_single('email_settings', array('status' => 1));
        $setting = $this->web->get_single('settings', array('status' => 1));

        if(!empty($email_setting)){
            $from_email = $email_setting->from_address;
            $from_name  = $email_setting->from_name;  
        }elseif(!empty($setting)){
            $from_email = $setting->email;
            $from_name  = $setting->school_name;  
        }

        if(!empty($email_setting) && $email_setting->mail_protocol == 'smtp'){

            $config['protocol']     = 'smtp';
            $config['smtp_host']    = $email_setting->smtp_host;
            $config['smtp_port']    = $email_setting->smtp_port;
            $config['smtp_timeout'] = $email_setting->smtp_timeout ? $email_setting->smtp_timeout  : 5;
            $config['smtp_user']    = $email_setting->smtp_user;
            $config['smtp_pass']    = $email_setting->smtp_pass;
            $config['smtp_crypto']  = $email_setting->smtp_crypto ? $email_setting->smtp_crypto  : 'tls';
            $config['mailtype'] = isset($email_setting) && $email_setting->mail_type ? $email_setting->mail_type  : 'html';
            $config['charset']  = isset($email_setting) && $email_setting->char_set ? $email_setting->char_set  : 'iso-8859-1';
            $config['priority']  = isset($email_setting) && $email_setting->priority ? $email_setting->priority  : '3';

        }elseif(!empty($email_setting) && $email_setting->mail_protocol != 'smtp'){

            $config['protocol'] = $email_setting->mail_protocol;
            $config['mailpath'] = '/usr/sbin/'.$email_setting->mail_protocol; 
            $config['mailtype'] = isset($email_setting) && $email_setting->mail_type ? $email_setting->mail_type  : 'html';
            $config['charset']  = isset($email_setting) && $email_setting->char_set ? $email_setting->char_set  : 'iso-8859-1';
            $config['priority']  = isset($email_setting) && $email_setting->priority ? $email_setting->priority  : '3';

        }else{ // default    
            $config['protocol'] = 'sendmail';
            $config['mailpath'] = '/usr/sbin/sendmail'; 
        }   

        $config['wordwrap'] = TRUE;            
        $config['newline']  = "\r\n"; 

        $this->load->library('email');
        $this->email->initialize($config);

        

        $this->email->from($this->input->post('email'), $this->input->post('first_name'));
        $this->email->to($setting->email);
        //$this->email->to('yousuf361@gmail.com')
        $subject = 'Contact email from visitor of '. $setting->school_name;
        $this->email->subject($subject);       

        $message = 'Contact mail from ' . $setting->school_name . ' website.<br/>';          
        $message .= '<br/><br/>';
         $message .= '<br/><br/>';
        $message .= 'Name: ' . $this->input->post('name');
        $message .= '<br/><br/>';      
        $message .= 'Email: ' . $this->input->post('email');
        $message .= '<br/><br/>';
        $message .= 'Phone: ' . $this->input->post('phone');
        $message .= '<br/><br/>';
        $message .= 'Subject: ' . $this->input->post('subject');
        $message .= '<br/><br/>';
        $message .= 'Message: ' . $this->input->post('message');
        $message .= '<br/><br/>';
        $message .= 'Thank you<br/>';

        $this->email->message($message);
        if(!empty($email_setting) && $email_setting->mail_protocol == 'smtp'){
            $this->email->send();
            return TRUE;
        }else{
            $headers = "MIME-Version: 1.0\r\n";
            $headers .= "Content-type: text/html; charset=iso-8859-1\r\n";
            $headers .= "From:  ".$this->input->post('name')." < ".$this->input->post('email')." >\r\n";
            $headers .= "Reply-To:  ".$this->input->post('name')." < ".$this->input->post('email')." >\r\n"; 
            mail($setting->email, $subject, $message, $headers);
            return TRUE;
        }
        
        return FALSE;
    }

}
