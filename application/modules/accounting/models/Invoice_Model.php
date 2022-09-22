<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Invoice_Model extends MY_Model {

    function __construct() {
        parent::__construct();
    }

    public function get_fee_type() {

        $sql = "SELECT IH.*
                FROM income_heads AS IH
                WHERE (IH.head_type = 'fee' OR IH.head_type = 'hostel'  OR IH.head_type = 'transport' )";

        return $this->db->query($sql)->result();
    }

    public function get_hostel_fee($student_id) {

        $this->db->select('R.cost');
        $this->db->from('students AS S');
        $this->db->join('hostel_members AS HM', 'HM.user_id = S.user_id', 'left');
        $this->db->join('rooms AS R', 'R.id = HM.room_id', 'left');
        $this->db->where('S.id', $student_id);
        $this->db->where('S.is_hostel_member', 1);
        return $this->db->get()->row();
    }

    public function get_transport_fee($student_id) {

        $this->db->select('RS.stop_fare');
        $this->db->from('students AS S');
        $this->db->join('transport_members AS TM', 'TM.user_id = S.user_id', 'left');
        $this->db->join('route_stops AS RS', 'RS.id = TM.route_stop_id', 'left');
        $this->db->where('S.id', $student_id);
        $this->db->where('S.is_transport_member', 1);
        return $this->db->get()->row();
    }

    public function get_student_discount($student_id) {

        $this->db->select('D.*');
        $this->db->from('students AS S');
        $this->db->join('discounts AS D', 'D.id = S.discount_id', 'left');
        $this->db->where('S.id', $student_id);
        return $this->db->get()->row();
    }

    public function get_invoice_list($due = null) {

        $this->db->select('I.*, S.name AS user_name, AY.session_year, C.name AS class_name');
        $this->db->from('invoices AS I');
        $this->db->join('classes AS C', 'C.id = I.class_id', 'left');
        $this->db->join('students AS S', 'S.id = I.user_id', 'left');
        $this->db->join('academic_years AS AY', 'AY.id = I.academic_year_id', 'left');

        $this->db->where('I.invoice_type !=', 'income');
        if ($due) {
            $this->db->where('I.paid_status !=', 'paid');
        }

        if ($this->session->userdata('role_id') == STUDENT) {
            $this->db->where('I.user_id', $this->session->userdata('profile_id'));
        }
        //$this->db->where('I.academic_year_id', $this->academic_year_id);       
        $this->db->order_by('I.id', 'DESC');
        return $this->db->get()->result();
    }

    public function get_single_invoice($id) {

        $this->db->select('I.*, I.discount AS inv_discount, I.id AS inv_id , S.name AS user_name, S.phone, AY.session_year, C.name AS class_name');
        $this->db->from('invoices AS I');
        $this->db->join('classes AS C', 'C.id = I.class_id', 'left');
        $this->db->join('students AS S', 'S.id = I.user_id', 'left');
        $this->db->join('academic_years AS AY', 'AY.id = I.academic_year_id', 'left');
        $this->db->where('I.id', $id);

        return $this->db->get()->row();
    }

    public function get_invoice_item($invoice_id, $invoice_type = null) {
        
        if($invoice_type == 'sale'){
            $this->db->select('IS.*, IH.title, C.name AS category, P.name as product');
            $this->db->from('item_sales AS IS');        
            $this->db->join('income_heads AS IH', 'IH.id = IS.income_head_id', 'left');
            $this->db->join('item_categories AS C', 'C.id = IS.category_id', 'left');
            $this->db->join('item_products AS P', 'P.id = IS.product_id', 'left');
            $this->db->where('IS.invoice_id', $invoice_id);
        }else{
            $this->db->select('ID.*, IH.title');
            $this->db->from('invoice_detail AS ID');
            $this->db->join('income_heads AS IH', 'IH.id = ID.income_head_id', 'left');
            $this->db->where('ID.invoice_id', $invoice_id);
        }
        
        return $this->db->get()->result();
    }

    public function get_student_list($academic_year_id, $class_id, $user_id = null, $status_type = null) {

        $this->db->select('E.roll_no,  S.id, S.user_id, S.name, S.is_hostel_member, S.is_transport_member');
        $this->db->from('enrollments AS E');
        $this->db->join('students AS S', 'S.id = E.student_id', 'left');
        $this->db->where('E.academic_year_id', $academic_year_id);
        $this->db->where('E.class_id', $class_id);

        if ($status_type) {
            $this->db->where('S.status_type', $status_type);
        }
        if ($user_id > 0) {
            $this->db->where('E.student_id', $user_id);
        }

        return $this->db->get()->result();
    }

    public function get_student_hostel_cost($user_id) {
        $this->db->select('R.cost');
        $this->db->from('hostel_members AS HM');
        $this->db->join('rooms AS R', 'R.id = HM.room_id', 'left');
        $this->db->where('HM.user_id', $user_id);
        return $this->db->get()->row();
    }

    public function get_student_transport_fare($user_id) {

        $this->db->select('R.fare');
        $this->db->from('transport_members AS TM');
        $this->db->join('routes AS R', 'R.id = TM.route_id', 'left');
        $this->db->where('TM.user_id', $user_id);
        return $this->db->get()->row();
    }

    public function get_invoice_by_type($class_id, $month) {

        $this->db->select('I.*, I.discount AS inv_discount, I.id AS inv_id , S.name AS student_name, S.present_address, S.phone, AY.session_year, C.name AS class_name');
        $this->db->from('invoices AS I');
        $this->db->join('classes AS C', 'C.id = I.class_id', 'left');
        $this->db->join('students AS S', 'S.id = I.user_id', 'left');
        $this->db->join('academic_years AS AY', 'AY.id = I.academic_year_id', 'left');

        $this->db->where('I.invoice_type !=', 'income');
        $this->db->where('I.paid_status !=', 'paid');


        if ($this->session->userdata('role_id') == STUDENT) {
            $this->db->where('I.user_id', $this->session->userdata('profile_id'));
        }

        if ($class_id) {
            $this->db->where('I.class_id', $class_id);
        }
        $this->db->where('I.month', $month);

        $this->db->order_by('I.id', 'DESC');

        return $this->db->get()->result();
    }

}