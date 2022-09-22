<style>
    .head-title, .head-title small {
    color: #173162;
     }
     .head-title i.fa {
    color: #173162;
     }
     .quick-link a {
    color: #173162;
    }
    .table-bordered>thead>tr>th {
    background-color: #173162 !important;
}
    .x_content table th{
        color: #fff;
        background-color:#173162;
    }
    .form-horizontal .form-group {
    color: white;
    }
</style>
<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h3 class="head-title"><i class="fa fa-check-square-o"></i><small> <?php echo $this->lang->line('teacher_attendance'); ?></small></h3>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>                    
                </ul>
                <div class="clearfix"></div>
            </div>

           <div class="x_content quick-link">
                <?php $this->load->view('quick-link'); ?>              
            </div>
            
            <div class="x_content" style=" padding: 10px 23px;
                background-color: #173162;
                border-radius: 23px;"> 
                <?php echo form_open_multipart(site_url('attendance/teacher/index'), array('name' => 'teacher', 'id' => 'teacher', 'class' => 'form-horizontal form-label-left'), ''); ?>
                <div class="row"> 
                    <div class="col-md-3 col-sm-3 col-xs-12 col-sm-offset-4">
                        <div class="item form-group">  
                            <div><?php echo $this->lang->line('date'); ?> <span class="required">*</span></div>
                            <input  class="form-control col-md-7 col-xs-12"  name="date"  id="date" value="<?php if(isset($date)){ echo $date;} ?>" placeholder="<?php echo $this->lang->line('date'); ?>" required="required" type="text" autocomplete="off">
                            <div class="help-block"><?php echo form_error('date'); ?></div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <div class="form-group"><br/>
                            <button id="send" type="submit" class="btn btn-success"><?php echo $this->lang->line('find'); ?></button>
                        </div>
                    </div>
                </div>
                <?php echo form_close(); ?>
            </div>

           <?php  if (isset($teachers) && !empty($teachers)) { ?> 
            <div class="x_content">             
                <div class="row">
                    <div class="col-sm-4  col-sm-offset-4 layout-box">
                        <p>
                            <h4><?php echo $this->lang->line('teacher_attendance'); ?></h4>
                            <?php echo $this->lang->line('day'); ?> : <?php echo date('l', strtotime($date)); ?><br/>
                            <?php echo $this->lang->line('date'); ?> : <?php echo date($this->gsms_setting->sms_date_format, strtotime($date)); ?>
                        <div class="row">
                            <?php if(isset($at_teacher_image)){
                                $at_image=$at_teacher_image->photo;
                            }else{
                                $at_image='noImage.jpg';
                            }?>
                            <?php echo form_open_multipart(site_url('attendance/employee/picUpload'), array('name' => 'imageUpload', 'id' => 'imageUpload', 'class' => 'form-horizontal form-label-left'), ''); ?>
                            <label for="favicon_icon"><?php echo $this->lang->line(''); ?> <span style="font-size:14px;"> Attendance Image</span></label>
                            <a href="<?php echo base_url('assets/uploads/attendence/'.$at_image); ?>" download>
                                <img id="blah" src="<?php echo base_url('assets/uploads/attendence/'.$at_image); ?>" alt="Attendance" width="104" height="110">
                            </a>
                            <input type="hidden" name="att_date" value="<?php echo $date; ?>">
                            <div class="btn btn-default btn-file"><i class="fa fa-paperclip"></i> <?php echo $this->lang->line('upload'); ?>
                                <input  class="form-control col-md-7 col-xs-12"  name="userfile" id="att_id"  type="file" onchange="readURL(this);" accept=".png, .jpg, .jpeg" />
                            </div>
                            <button type="submit" class="btn btn-success">Add</button>
                            <?php echo form_close(); ?>
                        </div>

                        </p>
                    </div>
                </div>            
            </div>
           <?php } ?>
            
            <div class="x_content" style="margin-top: 23px;">
                <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th><?php echo $this->lang->line('sl_no'); ?></th>
                            <th><?php echo $this->lang->line('photo'); ?></th>
                            <th><?php echo $this->lang->line('name'); ?></th>
                            <th><?php echo $this->lang->line('title'); ?></th>
                            <th><?php echo $this->lang->line('phone'); ?></th>
                            <th><?php echo $this->lang->line('email'); ?></th>
                            <th><input type="checkbox" value="P" name="present" id="fn_present" class="fn_all_attendnce"/> <?php echo $this->lang->line('present_all'); ?></th>                                            
                            <th><input type="checkbox" value="L" name="late" id="fn_late"  class="fn_all_attendnce"/> <?php echo $this->lang->line('late_all'); ?></th>                                            
                            <th><input type="checkbox" value="A" name="absent" id="fn_absent"  class="fn_all_attendnce"/> <?php echo $this->lang->line('absent_all'); ?></th>                                            
                        </tr>
                    </thead>
                    <tbody id="fn_attendance">   
                        <?php
                        $count = 1;
                        if (isset($teachers) && !empty($teachers)) {
                            ?>
                            <?php foreach ($teachers as $obj) { ?>
                            <?php  $attendance = get_teacher_attendance($obj->id, $academic_year_id, $year, $month, $day ); ?>
                                <tr>
                                    <td><?php echo $count++;  ?></td>
                                    <td>
                                        <?php if ($obj->photo != '') { ?>
                                            <img src="<?php echo UPLOAD_PATH; ?>/teacher-photo/<?php echo $obj->photo; ?>" alt="" width="60" /> 
                                        <?php } else { ?>
                                            <img src="<?php echo IMG_URL; ?>/default-user.png" alt="" width="60" /> 
                                        <?php } ?>
                                    </td>  
                                    <td><?php echo ucfirst($obj->name); ?></td>
                                    <td><?php echo $obj->title; ?></td>
                                    <td><?php echo $obj->phone; ?></td>
                                    <td><?php echo $obj->email; ?></td>
                                    <td><input type="radio" value="P" itemid="<?php echo $obj->id; ?>" name="teacher_<?php echo $obj->id; ?>" class="present fn_single_attendnce" <?php if($attendance == 'P'){ echo 'checked="checked"'; } ?> /></td>
                                    <td><input type="radio" value="L" itemid="<?php echo $obj->id; ?>"  name="teacher_<?php echo $obj->id; ?>" class="late fn_single_attendnce" <?php if($attendance == 'L'){ echo 'checked="checked"'; } ?>/></td>
                                    <td><input type="radio" value="A" itemid="<?php echo $obj->id; ?>" name="teacher_<?php echo $obj->id; ?>" class="absent fn_single_attendnce" <?php if($attendance == 'A'){ echo 'checked="checked"'; } ?>/></td>
                                </tr>
                            <?php } ?>
                        <?php }else{ ?>
                                <tr>
                                    <td colspan="9" align="center"><?php echo $this->lang->line('no_data_found'); ?></td>
                                </tr>
                        <?php } ?>
                    </tbody>
                </table>
            </div> 
            
        </div>
    </div>
</div>


 <!-- bootstrap-datetimepicker -->
<link href="<?php echo VENDOR_URL; ?>datepicker/datepicker.css" rel="stylesheet">
 <script src="<?php echo VENDOR_URL; ?>datepicker/datepicker.js"></script>
 <script type="text/javascript">
     
  $('#date').datepicker();

  $(document).ready(function(){
  
       $('#fn_present').click(function(){
           
           if($(this).prop('checked')) {   
               $('input:checkbox').removeAttr('checked');
               $(this).prop('checked', true);
               $('.present').prop('checked', true);
           }else{
               $('.present').prop('checked', false);
           }           
       });
       
       
       $('#fn_late').click(function(){
           
           if($(this).prop('checked')) {   
               $('input:checkbox').removeAttr('checked');
               $(this).prop('checked', true);
               $('.late').prop('checked', true);
           }else{
              $('.late').prop('checked', false); 
           }           
       });
       
       $('#fn_absent').click(function(){
           
           if($(this).prop('checked')) {   
               $('input:checkbox').removeAttr('checked');
               $(this).prop('checked', true);
               $('.absent').prop('checked', true);
           }else{
               $('.absent').prop('checked', false);
           }           
       });
       
       
       $('.fn_single_attendnce').click(function(){
           
          var status     = $(this).prop('checked') ? $(this).val() : '';
          var teacher_id = $(this).prop('checked') ? $(this).attr('itemid') : '';
          var class_id   = $('#class_id').val();
          var section_id = $('#section_id').val();
          var date       = $('#date').val();
          
          $.ajax({       
            type   : "POST",
            url    : "<?php echo site_url('attendance/teacher/update_single_attendance'); ?>",
            data   : { status : status , teacher_id: teacher_id, class_id:class_id, section_id:section_id, date:date},               
            async  : false,
           success: function(response){ 
               if(response){
                     toastr.success('<?php echo $this->lang->line('update_success'); ?>');  
                }else{
                     toastr.error('<?php echo $this->lang->line('update_failed'); ?>');  
                }                
            }
        }); 
                      
       });
       
         $('.fn_all_attendnce').click(function(){
           
          var status     = $(this).prop('checked') ? $(this).val() : '';         
          var class_id   = $('#class_id').val();
          var section_id = $('#section_id').val();
          var date       = $('#date').val();
          
          $.ajax({       
            type   : "POST",
            url    : "<?php echo site_url('attendance/teacher/update_all_attendance'); ?>",
            data   : { status : status , class_id:class_id, section_id:section_id, date:date},               
            async  : false,
            success: function(response){ 
                if(response){
                     toastr.success('<?php echo $this->lang->line('update_success'); ?>');  
                }else{
                     toastr.error('<?php echo $this->lang->line('update_failed'); ?>');  
                }                
            }
        }); 
                      
       });
  });
   $("#teacher").validate();
  function readURL(input, id) {
      id = id || '#blah';
      if (input.files && input.files[0]) {
          var reader = new FileReader();

          reader.onload = function (e) {
              $(id)
                  .attr('src', e.target.result)
                  .width(100)
                  .height(104);
          };

          reader.readAsDataURL(input.files[0]);
      }
  }
  $('#imageUpload').on('submit',function(e){
      e.preventDefault();
      // var inputFile=$('#att_id');
      // var fileToUpload=inputFile[0].files[0];
      // var other_data = $('#imageUpload').serializeArray();
      // var formdata=new FormData();
      // formdata.append(fileToUpload);
      // formdata.append(other_data);
      var formdata=new FormData(this)

      $.ajax({
          type   : "POST",
          url    : "<?php echo site_url('attendance/teacher/picUpload'); ?>",
          data   : formdata,
          async  : false,
          processData: false,
          contentType: false,
          success: function(response){
              if(response){
                  toastr.success('<?php echo $this->lang->line('update_success'); ?>');
              }else{
                  toastr.error('<?php echo $this->lang->line('update_failed'); ?>');
              }
              toastr.options = {
                  "closeButton": true,
                  "newestOnTop": false,
                  "progressBar": true,
                  "positionClass": "toast-top-right",
                  "showDuration": "400",
                  "hideDuration": "400",
                  "timeOut": "5000",
                  "showEasing": "swing",
                  "hideEasing": "linear",
                  "showMethod": "fadeIn",
                  "hideMethod": "fadeOut"
              }
          }
      });

  });
</script>


