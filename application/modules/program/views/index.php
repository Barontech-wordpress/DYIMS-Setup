<style>
    .dt-buttons{
        display: none;
    }
</style>
<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h3 class="head-title"><i class="fa fa-graduation-cap"></i><small> <?php echo $this->lang->line('program'); ?></small></h3>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                </ul>
                <div class="clearfix"></div>
            </div>
            
            <div class="x_content quick-link">
<!--               --><?php //$this->load->view('quick-link'); ?><!-- -->
            </div>
            
            <div class="x_content">
                <div class="" data-example-id="togglable-tabs">
                    
                    <ul  class="nav nav-tabs bordered">
                        <li class="<?php if(isset($list)){ echo 'active'; }?>"><a href="#tab_hostel_list"   role="tab" data-toggle="tab" aria-expanded="true"><i class="fa fa-list-ol"></i> <?php echo $this->lang->line('list'); ?></a> </li>
                        <?php if(has_permission(ADD, 'hostel', 'hostel')){ ?>
                            <li  class="<?php if(isset($add)){ echo 'active'; }?>"><a href="#tab_add_hostel"  role="tab"  data-toggle="tab" aria-expanded="false"><i class="fa fa-plus-square-o"></i> <?php echo $this->lang->line('add'); ?></a> </li>                          
                        <?php } ?> 
                        <?php if(isset($edit)){ ?>
                            <li  class="active"><a href="#tab_edit_hostel"  role="tab"  data-toggle="tab" aria-expanded="false"><i class="fa fa-pencil-square-o"></i> <?php echo $this->lang->line('edit'); ?></a> </li>                          
                        <?php } ?>                
                        <?php if(isset($detail)){ ?>
                            <li  class="active"><a href="#tab_view_hostel"  role="tab"  data-toggle="tab" aria-expanded="false"><i class="fa fa-eye"></i> <?php echo $this->lang->line('view'); ?></a> </li>                          
                        <?php } ?>                
                    </ul>
                    <br/>
                    
                    <div class="tab-content">
                        <div  class="tab-pane fade in <?php if(isset($list)){ echo 'active'; }?>" id="tab_hostel_list" >
                            <div class="x_content">
                            <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                                <thead>
                                    <tr>
                                        <th><?php echo $this->lang->line('sl_no'); ?></th>
                                        <th> <?php echo $this->lang->line('title'); ?></th>
                                        <th  width="20%"><?php echo $this->lang->line('image'); ?></th>
                                        <th><?php echo $this->lang->line('action'); ?></th>
                                    </tr>
                                </thead>
                                <tbody>   
                                    <?php $count = 1; if(isset($hostels) && !empty($hostels)){ ?>
                                        <?php foreach($hostels as $obj){ ?>
                                        <tr>
                                            <td><?php echo $count++; ?></td>
                                            <td><?php echo $obj->title; ?></td>
                                            <td>
                                                <?php  if($obj->photo != ''){ ?>
                                                    <img src="<?php echo UPLOAD_PATH; ?>/program/<?php echo $obj->photo; ?>" alt="" width="150" />
                                                <?php } ?>
                                             </td>
                                            <td>
                                                <?php if(has_permission(EDIT, 'hostel', 'hostel')){ ?>
                                                    <a href="<?php echo site_url('program/edit/'.$obj->id); ?>" class="btn btn-info btn-xs"><i class="fa fa-pencil-square-o"></i> <?php echo $this->lang->line('edit'); ?> </a>
                                                <?php } ?>                                                
                                                <?php if(has_permission(DELETE, 'hostel', 'hostel')){ ?>
                                                    <a href="<?php echo site_url('program/delete/'.$obj->id); ?>" onclick="javascript: return confirm('<?php echo $this->lang->line('confirm_alert'); ?>');" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> <?php echo $this->lang->line('delete'); ?> </a>
                                                <?php } ?>
                                            </td>
                                        </tr>
                                        <?php } ?>
                                    <?php } ?>
                                </tbody>
                            </table>
                            </div>
                        </div>

                        <div  class="tab-pane fade in <?php if(isset($add)){ echo 'active'; }?>" id="tab_add_hostel">
                            <div class="x_content"> 
                               <?php echo form_open_multipart(site_url('program/add'), array('name' => 'add', 'id' => 'add', 'class'=>'form-horizontal form-label-left'), ''); ?>
                                
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="title"><?php echo $this->lang->line('title'); ?> <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="title"  id="title" value="<?php echo isset($post['title']) ?  $post['title'] : ''; ?>" placeholder="<?php echo $this->lang->line('title'); ?>" required="required" type="text">
                                        <div class="help-block"><?php echo form_error('title'); ?></div>
                                    </div>
                                </div>
                                
                                                                
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="type">Image <span class="required">*</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input type="file" name="proImage" id ="proImage" style="font-size: 12px;opacity: 1">
                                        <div class="help-block"><?php echo form_error('proImage'); ?></div>
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="introduction"><?php echo $this->lang->line('introduction'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control col-md-7 col-xs-12"  name="introduction"  id="add_introduction" placeholder=" <?php echo $this->lang->line('introduction'); ?>"><?php echo isset($post['introduction']) ?  $post['introduction'] : ''; ?></textarea>
                                        <div class="help-block"><?php echo form_error('introduction'); ?></div>
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="health_sector"><?php echo $this->lang->line('health_sector') ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control col-md-7 col-xs-12"  name="health_sector"  id="add_health_sector" placeholder=" <?php echo $this->lang->line('health_sector'); ?>"><?php echo isset($post['health_sector']) ?  $post['health_sector'] : ''; ?></textarea>
                                        <div class="help-block"><?php echo form_error('health_sector'); ?></div>
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="choose"><?php echo $this->lang->line('choose'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control col-md-7 col-xs-12"  name="choose"  id="add_choose" placeholder=" <?php echo $this->lang->line('choose'); ?>"><?php echo isset($post['choose']) ?  $post['choose'] : ''; ?></textarea>
                                        <div class="help-block"><?php echo form_error('choose'); ?></div>
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="specialization"><?php echo $this->lang->line('specialization') ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control col-md-7 col-xs-12"  name="specialization"  id="add_specialization" placeholder=" <?php echo $this->lang->line('specialization'); ?>"><?php echo isset($post['specialization']) ?  $post['specialization'] : ''; ?></textarea>
                                        <div class="help-block"><?php echo form_error('specialization'); ?></div>
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="courses"><?php echo $this->lang->line('courses') ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control col-md-7 col-xs-12"  name="courses"  id="add_courses" placeholder=" <?php echo $this->lang->line('courses'); ?>"><?php echo isset($post['courses']) ?  $post['courses'] : ''; ?></textarea>
                                        <div class="help-block"><?php echo form_error('courses'); ?></div>
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="faculty"><?php echo $this->lang->line('faculty'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control col-md-7 col-xs-12"  name="faculty"  id="add_faculty" placeholder=" <?php echo $this->lang->line('faculty'); ?>"><?php echo isset($post['faculty']) ?  $post['faculty'] : ''; ?></textarea>
                                        <div class="help-block"><?php echo form_error('faculty'); ?></div>
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="fee"><?php echo $this->lang->line('fee'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control col-md-7 col-xs-12"  name="fee"  id="add_fee" placeholder=" <?php echo $this->lang->line('fee'); ?>"><?php echo isset($post['fee']) ?  $post['fee'] : ''; ?></textarea>
                                        <div class="help-block"><?php echo form_error('fee'); ?></div>
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="criteria"><?php echo $this->lang->line('criteria'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control col-md-7 col-xs-12"  name="criteria"  id="add_criteria" placeholder=" <?php echo $this->lang->line('criteria'); ?>"><?php echo isset($post['criteria']) ?  $post['criteria'] : ''; ?></textarea>
                                        <div class="help-block"><?php echo form_error('criteria'); ?></div>
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="schedule"><?php echo $this->lang->line('schedule'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control col-md-7 col-xs-12"  name="schedule"  id="add_schedule" placeholder=" <?php echo $this->lang->line('schedule'); ?>"><?php echo isset($post['schedule']) ?  $post['schedule'] : ''; ?></textarea>
                                        <div class="help-block"><?php echo form_error('schedule'); ?></div>
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="scholarships"><?php echo $this->lang->line('scholarships'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control col-md-7 col-xs-12"  name="scholarships"  id="add_scholarships" placeholder=" <?php echo $this->lang->line('scholarships'); ?>"><?php echo isset($post['scholarships']) ?  $post['scholarships'] : ''; ?></textarea>
                                        <div class="help-block"><?php echo form_error('scholarships'); ?></div>
                                    </div>
                                </div>
                                <div class="ln_solid"></div>
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-3">
                                        <a href="<?php echo site_url('program/index'); ?>" class="btn btn-primary"><?php echo $this->lang->line('cancel'); ?></a>
                                        <button id="send" type="submit" class="btn btn-success">Save</button>
                                    </div>
                                </div>
                                <?php echo form_close(); ?>
                            </div>
                        </div>  

                        <?php if(isset($edit)){ ?>
                        <div class="tab-pane fade in active" id="tab_edit_hostel">
                            <div class="x_content"> 
                               <?php echo form_open_multipart(site_url('program/edit/'.$hostel->id), array('name' => 'edit', 'id' => 'edit', 'class'=>'form-horizontal form-label-left'), ''); ?>
                                
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name"> <?php echo $this->lang->line('title'); ?> <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input  class="form-control col-md-7 col-xs-12"  name="title"  id="title" value="<?php echo isset($hostel->title) ?  $hostel->title : ''; ?>" placeholder="<?php echo $this->lang->line('title'); ?>" required="required" type="text">
                                        <div class="help-block"><?php echo form_error('title'); ?></div>
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="type"><?php echo $this->lang->line('image'); ?> <span class="required">*</span></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="btn btn-default btn-file">
                                            <i class="fa fa-paperclip"></i> Upload
                                            <input class="form-control col-md-7 col-xs-12" name="proImage" id="proImage" type="file" onchange="readURL(this);">
                                        </div>
<!--                                        <input type="file" name="proImage" id ="proImage" style="font-size: 12px;opacity: 1">-->
                                        <img id="blah" src="<?php echo base_url('assets/uploads/program/'.$hostel->photo); ?>" alt="program" width="104" height="110">
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="introduction"><?php echo $this->lang->line('introduction'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control col-md-7 col-xs-12"  name="introduction"  id="edit_introduction" placeholder=" <?php echo $this->lang->line('introduction'); ?>"><?php echo isset($hostel->introduction) ?  $hostel->introduction : ''; ?></textarea>
                                        <div class="help-block"><?php echo form_error('introduction'); ?></div>
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="health_sector"><?php echo $this->lang->line('health_sector') ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control col-md-7 col-xs-12"  name="health_sector"  id="edit_health_sector" placeholder=" <?php echo $this->lang->line('health_sector'); ?>"><?php echo isset($hostel->health_sector) ?  $hostel->health_sector : ''; ?></textarea>
                                        <div class="help-block"><?php echo form_error('health_sector'); ?></div>
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="choose"><?php echo $this->lang->line('choose'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control col-md-7 col-xs-12"  name="choose"  id="edit_choose" placeholder=" <?php echo $this->lang->line('choose'); ?>"><?php echo isset($hostel->choose) ?  $hostel->choose : ''; ?></textarea>
                                        <div class="help-block"><?php echo form_error('choose'); ?></div>
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="specialization"><?php echo $this->lang->line('specialization') ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control col-md-7 col-xs-12"  name="specialization"  id="edit_specialization" placeholder=" <?php echo $this->lang->line('specialization'); ?>"><?php echo isset($hostel->specialization) ?  $hostel->specialization : ''; ?></textarea>
                                        <div class="help-block"><?php echo form_error('specialization'); ?></div>
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="courses"><?php echo $this->lang->line('courses') ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control col-md-7 col-xs-12"  name="courses"  id="edit_courses" placeholder=" <?php echo $this->lang->line('courses'); ?>"><?php echo isset($hostel->courses) ?  $hostel->courses: ''; ?></textarea>
                                        <div class="help-block"><?php echo form_error('courses'); ?></div>
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="faculty"><?php echo $this->lang->line('faculty'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control col-md-7 col-xs-12"  name="faculty"  id="edit_faculty" placeholder=" <?php echo $this->lang->line('faculty'); ?>"><?php echo isset($hostel->faculty) ?  $hostel->faculty : ''; ?></textarea>
                                        <div class="help-block"><?php echo form_error('faculty'); ?></div>
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="fee"><?php echo $this->lang->line('fee'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control col-md-7 col-xs-12"  name="fee"  id="edit_fee" placeholder=" <?php echo $this->lang->line('fee'); ?>"><?php echo isset($hostel->fee) ? $hostel->fee : ''; ?></textarea>
                                        <div class="help-block"><?php echo form_error('fee'); ?></div>
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="criteria"><?php echo $this->lang->line('criteria'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control col-md-7 col-xs-12"  name="criteria"  id="edit_criteria" placeholder=" <?php echo $this->lang->line('criteria'); ?>"><?php echo isset($hostel->criteria) ? $hostel->criteria : ''; ?></textarea>
                                        <div class="help-block"><?php echo form_error('criteria'); ?></div>
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="schedule"><?php echo $this->lang->line('schedule'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control col-md-7 col-xs-12"  name="schedule"  id="edit_schedule" placeholder=" <?php echo $this->lang->line('schedule'); ?>"><?php echo isset($hostel->schedule) ?  $hostel->schedule : ''; ?></textarea>
                                        <div class="help-block"><?php echo form_error('schedule'); ?></div>
                                    </div>
                                </div>
                                <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="scholarships"><?php echo $this->lang->line('scholarships'); ?></label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <textarea  class="form-control col-md-7 col-xs-12"  name="scholarships"  id="edit_scholarships" placeholder=" <?php echo $this->lang->line('scholarships'); ?>"><?php echo isset($hostel->scholarships) ? $hostel->scholarships : ''; ?></textarea>
                                        <div class="help-block"><?php echo form_error('scholarships'); ?></div>
                                    </div>
                                </div>
                                <div class="ln_solid"></div>
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-3">
                                        <input type="hidden" value="<?php echo isset($hostel) ? $hostel->id : ''; ?>" name="id" />
                                        <a href="<?php echo site_url('program/index'); ?>" class="btn btn-primary"><?php echo $this->lang->line('cancel'); ?></a>
                                        <button id="send" type="submit" class="btn btn-success"><?php echo $this->lang->line('update'); ?></button>
                                    </div>
                                </div>
                                <?php echo form_close(); ?>
                            </div>
                        </div>  
                        <?php } ?>                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<link href="<?php echo VENDOR_URL; ?>editor/jquery-te-1.4.0.css" rel="stylesheet">
<script type="text/javascript" src="<?php echo VENDOR_URL; ?>editor/jquery-te-1.4.0.min.js"></script>
 <script type="text/javascript">
     $('#add_introduction').jqte();
     $('#add_health_sector').jqte();
     $('#add_choose').jqte();
     $('#add_specialization').jqte();
     $('#add_faculty').jqte();
     $('#add_fee').jqte();
     $('#add_courses').jqte();
     $('#add_criteria').jqte();
     $('#add_schedule').jqte();
     $('#add_scholarships').jqte();

     $('#edit_introduction').jqte();
     $('#edit_health_sector').jqte();
     $('#edit_choose').jqte();
     $('#edit_specialization').jqte();
     $('#edit_faculty').jqte();
     $('#edit_fee').jqte();
     $('#edit_courses').jqte();
     $('#edit_criteria').jqte();
     $('#edit_schedule').jqte();
     $('#edit_scholarships').jqte();
        $(document).ready(function() {
          $('#datatable-responsive').DataTable( {
              dom: 'Bfrtip',
              iDisplayLength: 15,
              buttons: [
                  'copyHtml5',
                  'excelHtml5',
                  'csvHtml5',
                  'pdfHtml5',
                  'pageLength'
              ],
              search: true
          });
        });
    $("#add").validate();     
    $("#edit").validate();
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
</script>