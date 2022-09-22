<div class="page-header-area no-print">
    <div class="container">
        <div class="page-header-content">
            <h2 class="title"><span class="inner"><?php echo $this->lang->line('admission_form'); ?></span></h2>
            <!--<ul class="links">-->
            <!--    <li><a href="<?php echo site_url(); ?>"><?php echo $this->lang->line('home'); ?></a></li>-->
            <!--    <li><a href="javascript:void(0);"><?php echo $this->lang->line('admission_form'); ?></a></li>-->
            <!--</ul>-->
            <h2 class="title-2">
                <?php if(isset($this->setting->school_name)){ ?>
                <?php echo $this->setting->school_name; ?>
                <?php }else{ ?>
                        <?php echo SMS; ?>
                <?php } ?>
            </h2>
        </div>
    </div>
</div>

<style>
.btn-info {
    background-color: #239cc1;
    border: none;
    border-bottom: 4px solid #173162;
    padding: 10px 13px;
    font-size: 15px;
    font-weight: 600;
    color: white!important;
}
.btn-info:hover {
    color: #fff !important;
    background-color: #239cc1;
    border-color: #239cc1;
}
.admission-form-title {
    color: #173162!important ;
    margin-bottom: 5px;
    margin-top: 10px;
    background-color: #e4e4e4;
    padding-left: 10px;
  }
  
    .admission-address {
        text-align: center;
        margin-left: 90px;
    }
    @media only screen and (max-width: 480px){
        .admission-address {
            text-align: center;
            margin-left: 0px;
        }
    }
</style>

<div class="page-contact-info-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="admission-form">
                    <div class="row"> 
                        <div class="col-md-10 col-sm-10 col-xs-12 ">
                            <div class="admission-address">
                                <div><h3><?php echo isset($this->setting->school_name) && !empty($this->setting->school_name) ? $this->setting->school_name : ''; ?></h3></div>                                
                                <div><?php echo isset($this->setting->address) && !empty($this->setting->address) ? $this->setting->address : ''; ?></div>
                                <div><?php echo isset($this->setting->phone) && !empty($this->setting->phone) ? $this->setting->phone : ''; ?></div>
                                <div><?php echo isset($this->setting->email) && !empty($this->setting->email) ? $this->setting->email : ''; ?></div>
                                <div><h4><?php echo $this->lang->line('admission_form'); ?></h4></div>
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-2 col-xs-12">
                            <span class="student-picture"><?php echo $this->lang->line('photo'); ?></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12"><hr></div>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-12 col-sm-12"><p class="admission-form-title"><strong><?php echo $this->lang->line('basic_information'); ?>:</strong></p> </div>
                    </div>  
                    
                    <div class="row">
                        <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title"><?php echo $this->lang->line('student_name'); ?>:</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div> 
                      <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title"><?php echo $this->lang->line('birth_date'); ?>:</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>                                      
                    </div>
                    <div class="row">                                           
                        <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title"><?php echo $this->lang->line('religion'); ?>:</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                          <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title"><?php echo $this->lang->line('blood_group'); ?>:</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div> 
                    </div>
                    <div class="row">                                           
                       <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title"><?php echo $this->lang->line('gender'); ?>:</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                         <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title">Application Date: </div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-12 col-sm-12"><p class="admission-form-title"><strong><?php echo $this->lang->line('contact_information'); ?>:</strong></p> </div>
                    </div>  
                    <div class="row">
                        <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title"><?php echo $this->lang->line('phone'); ?>:</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>                    
                        <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title"><?php echo $this->lang->line('national_id'); ?>:</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="form-field">
                                <div class="field-title"><?php echo $this->lang->line('present_address'); ?>:</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="form-field">
                                <div class="field-title"><?php echo $this->lang->line('permanent_address'); ?>:</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                    </div>
                    
                    
                    <div class="row">
                        <div class="col-md-12 col-sm-12"><p class="admission-form-title"><strong><?php echo $this->lang->line('academic_information'); ?>:</strong></p> </div>
                    </div>                     
                    <div class="row">
                        <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title"><?php echo $this->lang->line('class'); ?>:</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                       <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title"><?php echo $this->lang->line('student_type'); ?>:(Annual,Semester)</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div> 
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title"><?php echo $this->lang->line('group'); ?>:</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
            
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12"><p class="admission-form-title"><strong>Previous Education: </strong></p> </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title">Matric School Name</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title">Matric Obtained Marks</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                         <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title">Matric Total Marks</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                          <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title">Matric Total %</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                    </div>
                   <div class="row">
                        <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title">Previous College Name</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title">Inter Obtained Marks</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                         <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title">Inter Total Marks</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                          <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title">Inter Total %</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-12 col-sm-12"><p class="admission-form-title"><strong><?php echo $this->lang->line('father_information'); ?>:</strong></p> </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title"><?php echo $this->lang->line('father_name'); ?>:</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title"><?php echo $this->lang->line('father_phone'); ?>:</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title"><?php echo $this->lang->line('father_education'); ?>:</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title"><?php echo $this->lang->line('father_profession'); ?>:</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                    </div>
                    
                        
                    <!--<div class="row">-->
                    <!--    <div class="col-md-12 col-sm-12"><p class="admission-form-title"><strong><?php echo $this->lang->line('mother_information'); ?>:</strong></p> </div>-->
                    <!--</div>-->
                    <!--<div class="row">-->
                    <!--    <div class="col-md-6 col-sm-6">-->
                    <!--        <div class="form-field">-->
                    <!--            <div class="field-title"><?php echo $this->lang->line('mother_name'); ?>:</div> -->
                    <!--            <div class="field-value"></div> -->
                    <!--        </div>-->
                    <!--    </div>-->
                    <!--    <div class="col-md-6 col-sm-6">-->
                    <!--        <div class="form-field">-->
                    <!--            <div class="field-title"><?php echo $this->lang->line('mother_phone'); ?>:</div> -->
                    <!--            <div class="field-value"></div> -->
                    <!--        </div>-->
                    <!--    </div>-->
                    <!--</div>-->
                    <!--<div class="row">-->
                    <!--    <div class="col-md-6 col-sm-6">-->
                    <!--        <div class="form-field">-->
                    <!--            <div class="field-title"><?php echo $this->lang->line('mother_education'); ?>:</div> -->
                    <!--            <div class="field-value"></div> -->
                    <!--        </div>-->
                    <!--    </div>-->
                    <!--    <div class="col-md-6 col-sm-6">-->
                    <!--        <div class="form-field">-->
                    <!--            <div class="field-title"><?php echo $this->lang->line('mother_profession'); ?>:</div> -->
                    <!--            <div class="field-value"></div> -->
                    <!--        </div>-->
                    <!--    </div>-->
                    <!--</div>-->
                    <!--<div class="row">-->
                    <!--    <div class="col-md-6 col-sm-6">-->
                    <!--        <div class="form-field">-->
                    <!--            <div class="field-title"><?php echo $this->lang->line('mother_designation'); ?>:</div> -->
                    <!--            <div class="field-value"></div> -->
                    <!--        </div>-->
                    <!--    </div>                        -->
                    <!--</div>-->
                    
                    <div class="row">
                        <div class="col-md-12 col-sm-12"><p class="admission-form-title"><strong><?php echo $this->lang->line('other_information'); ?>:</strong></p> </div>
                    </div> 
                    <div class="row">
                        <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title"><?php echo $this->lang->line('email'); ?>:</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title"><?php echo $this->lang->line('health_condition'); ?> :</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="form-field">
                                <div class="field-title"><?php echo $this->lang->line('other_info'); ?>:</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                    </div>
                                     
                    <div class="row">
                        <div class="col-md-12 col-sm-12"><p class="admission-form-title"><strong><?php echo $this->lang->line('guardian_information'); ?>:</strong></p> </div>
                    </div> 
                    <div class="row">
                        <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title"><?php echo $this->lang->line('guardian_name'); ?>:</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title">Relation with :</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title"><?php echo $this->lang->line('phone'); ?>:</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title"><?php echo $this->lang->line('email'); ?> :</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title"><?php echo $this->lang->line('religion'); ?>:</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title"><?php echo $this->lang->line('profession'); ?> :</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-sm-6">
                            <div class="form-field">
                                <div class="field-title"><?php echo $this->lang->line('national_id'); ?>:</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>                        
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="form-field">
                                <div class="field-title"><?php echo $this->lang->line('present_address'); ?>:</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="form-field">
                                <div class="field-title"><?php echo $this->lang->line('permanent_address'); ?>:</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="form-field">
                                <div class="field-title"><?php echo $this->lang->line('other_info'); ?>:</div> 
                                <div class="field-value"></div> 
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>         
        </div>
        <div class="row">
                        <div class="col-md-12 col-sm-12"><p class="admission-form-title"><strong>NOTE: (Attach the following Copies)</strong><br>
                        ✔ Attache the copy of the Domicile<br>
                        ✔ Attach the copy of the CNIC<br>
                        ✔ Attach the copy of the Father CNIC<br>
                        ✔ Attach the copy of the Matric Result Card<br>
                        ✔ Attach the copy of the Inter Result Card<br>
                        </p>
                        </div>
                    </div>
        <div class="row no-print">
            <div class="col-md-12 col-sm-12 text-center margin-top no-print">
                <button class="btn btn-info glbscl-link-btn hvr-bs" onclick="window.print();"><i class="fa fa-print"></i> <?php echo $this->lang->line('print'); ?> / <?php echo $this->lang->line('admission_form'); ?></button>
                <a  class="btn btn-info glbscl-link-btn hvr-bs"  href="<?php echo site_url('admission-online'); ?>"><?php echo $this->lang->line('online_admission'); ?></a>
            </div>
        </div>
    </div>
</div>
