<header class="no-print">
    <div class="header-top">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 col-md-8 col-12">
                    <div class="ht-left">
                        <a href="#" class="link"><?php echo $this->lang->line('have_any_question'); ?></a>
                        <?php if(isset($this->setting->phone) && !empty($this->setting->phone)){ ?>
                            <a href="tel:<?php echo $this->setting->phone; ?>" class="link"><span class="icon"><i class="fas fa-phone-volume"></i></span> <?php echo $this->setting->phone; ?></a>
                        <?php } ?> 
                        <?php if(isset($this->setting->email) && !empty($this->setting->email)){ ?>    
                            <a href="mailto:<?php echo $this->setting->email; ?>" class="link"><span class="icon"><i class="fas fa-envelope"></i></span> <?php echo $this->setting->email; ?></a>
                        <?php } ?>
                    </div>
                </div>
                <div class="col-lg-5 col-md-4 col-12">
                    <div class="ht-right">
                        <?php if(isset($this->setting->enable_online_admission) && !empty($this->setting->enable_online_admission)){ ?>
                            <a href="<?php echo site_url('admission-online'); ?>" class="link"><?php echo $this->lang->line('admission'); ?> </a>
                        <?php } ?>
                        <?php if (logged_in_user_id()) { ?>  
                            
                            <a href="<?php echo site_url('dashboard'); ?>" class="link"><span class="icon"><i class="fas fa-dashcube"></i></span> <?php echo $this->lang->line('dashboard'); ?></a>
                            <a href="<?php echo site_url('logout'); ?>" class="link"><span class="icon"><i class="fas fa-unlock"></i></span> <?php echo $this->lang->line('logout'); ?></a>                            
                        <?php }else{ ?>  
                            <a href="<?php echo site_url('login'); ?>" class="link"><span class="icon"><i class="fas fa-lock"></i></span> <?php echo $this->lang->line('login'); ?></a>
                        <?php } ?>  
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-bottom <?php if(!isset($is_home)){ ?> header-bottom-inner<?php } ?>">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-6">
                    <div class="logo">
                        <a href="<?php echo site_url(); ?>">
                            <?php if(isset($this->setting->front_logo) && !empty($this->setting->front_logo)){ ?>                            
                                <img src="<?php echo UPLOAD_PATH; ?>/logo/<?php echo $this->setting->front_logo; ?>" alt=""  />
                            <?php }elseif(isset($this->setting->logo) && !empty($this->setting->logo)){ ?>
                                <img src="<?php echo UPLOAD_PATH; ?>/logo/<?php echo $this->setting->logo; ?>" alt=""  />
                            <?php }else{ ?>
                                <img src="<?php echo IMG_URL; ?>default-front-logo.png" alt=""  />
                            <?php } ?> 
                        </a>
                    </div>
                </div>
                <div class="col-lg-10 col-6">
                    <div class="stellarnav">
                        <ul>
                            <li><a href="<?php echo site_url(); ?>"><?php echo $this->lang->line('home'); ?></a></li>
                            <li><a href="<?php echo site_url('about'); ?>"><?php echo $this->lang->line('about'); ?></a></li>
                             <!--<li><a href="<?php echo site_url('programs'); ?>"><?php echo $this->lang->line('our_programs'); ?></a></li>-->
                            <li><a href="#"><?php echo $this->lang->line('our_programs'); ?></a>
                                <ul>
                                    <?php foreach ($programs as $pro) {?>
                                        <li ><a class="anchors" href="<?php echo site_url('programs/?id='.$pro->id); ?>"><?php echo $pro->title ?></a></li>
                                    <?php } ?>
                                </ul>                                
                            </li>
                           <li><a href="<?php echo site_url('news'); ?>"><?php echo $this->lang->line('news'); ?></a></li>
                            <li><a href="<?php echo site_url('galleries'); ?>"><?php echo $this->lang->line('gallery'); ?></a></li>
                             <li><a href="<?php echo site_url('staff'); ?>"><?php echo $this->lang->line('staff'); ?></a></li> 
                            <li><a href="<?php echo site_url('faq'); ?>"><?php echo $this->lang->line('faq'); ?></a></li>
                            <li><a href="<?php echo site_url('teachers'); ?>"><?php echo $this->lang->line('our_faculty'); ?></a></li>
                            <li><a href="<?php echo site_url('contact'); ?>"><?php echo $this->lang->line('contact'); ?></a></li>
                            <?php if(isset($header_pages) && !empty($header_pages)){ ?>
                                <li><a href="javascript:void(0)"><?php echo $this->lang->line('page'); ?></a>
                                    <ul>
                                    <?php foreach($header_pages AS $obj ){ ?>
                                         <li><a href="<?php echo site_url('page/'.$obj->page_slug); ?>"><?php echo $obj->page_title; ?></a></li>
                                     <?php } ?> 
                                    </ul>                                
                                </li>    
                            <?php } ?> 
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <style>
        .header-bottom-2  .stellarnav ul li {
            margin-left: 14px;
        }
        header .header-bottom-2 .stellarnav ul li a {
            font-size: 20px;
        }
    </style>
    <div class="header-bottom-2 <?php if(!isset($is_home)){ ?> header-bottom-inner<?php } ?>" style="height: 100px;">
        <div class="container-fluid">
            <div class="row" style="padding: 10px 0px 10px 0px;">
            <div class="col-lg-5 col-4">
                    <div class="stellarnav">
                        <ul >
                            <li><a href="<?php echo site_url(); ?>"><?php echo $this->lang->line('home'); ?></a></li>
                            <li><a href="<?php echo site_url('about'); ?>"><?php echo $this->lang->line('about'); ?></a>
                                <ul>
                                    <li ><a class="anchors" href="<?php echo site_url('history'); ?>">Our history</a></li>
                                    <li ><a class="anchors" href="<?php echo site_url('qadir-ali-hospital'); ?>">Qadir Ali Hospital</a></li>
                                    <li ><a class="anchors" href="<?php echo site_url('social-welfare'); ?>">Dr Yahya Professional Welfare Society</a></li>
                                    <li ><a class="anchors" href="<?php echo site_url('mission-vision'); ?>">Vision, Mission & Core Values</a></li>
                                    <li ><a class="anchors" href="<?php echo site_url('chairman-message-page'); ?>">Chairman Message</a></li>
                                    <li ><a class="anchors" href="<?php echo site_url('project-director-message'); ?>">Project Director Message</a></li>
                                    <li ><a class="anchors" href="<?php echo site_url('coomessage'); ?>">COO Message</a></li>
                                    <li ><a class="anchors" href="<?php echo site_url('principal-message'); ?>">Principal Message</a></li>
                                    <li ><a class="anchors" href="<?php echo site_url('affiliations'); ?>">Affiliations</a></li>
                                    <li ><a class="anchors" href="<?php echo site_url('collaborations'); ?>">Collaborations</a></li>
                                    <li><a class="anchors" href="<?php echo site_url('galleries'); ?>"><?php echo $this->lang->line('gallery'); ?></a></li>
                                    <li><a href="<?php echo site_url('faq'); ?>"><?php echo $this->lang->line('faq'); ?></a></li>
                                    <li><a href="<?php echo site_url('teachers'); ?>"><?php echo $this->lang->line('our_faculty'); ?></a></li>
                                </ul>
                            </li>

                            <!--<li><a href="<?php echo site_url('programs'); ?>"><?php echo $this->lang->line('our_programs'); ?></a></li>-->
                            <li><a href="#"><?php echo $this->lang->line('academic_menu'); ?></a>
                                     <ul>
                                        <?php foreach ($programs as $pro) {?>
                                        <li ><a class="anchors" href="<?php echo site_url('programs/?id='.$pro->id); ?>"><?php echo $pro->title ?></a></li>
                                        <?php } ?>

                                    </ul>     
                                
                            </li>
                            <li><a href="#"><?php echo $this->lang->line('admissions_menu'); ?></a>
                                <ul>
                                    <li ><a class="anchors" href="<?php echo site_url('how-to-apply'); ?>">How to apply</a></li>
                                    <li ><a class="anchors" href="<?php echo site_url('login'); ?>">Apply Now </a></li>
                                    <li ><a class="anchors" href="<?php echo site_url('date-and-deadline'); ?>">Dates and Deadlines </a></li>
                                </ul>
                            </li>
                            <li><a href="<?php echo site_url('news'); ?>"><?php echo $this->lang->line('news'); ?></a></li>
                           <!--<li><a href="#"><?php echo $this->lang->line('announcement'); ?></a>-->
                           <!--     <ul>-->
                           <!--         <li ><a class="anchors" href="<?php echo site_url('news'); ?>"><?php echo $this->lang->line('news'); ?></a></li>-->
                           <!--         <li><a class="anchors" href="<?php echo site_url('notice'); ?>"><?php echo $this->lang->line('notice'); ?></a></li>-->
                           <!--         <li><a class="anchors" href="<?php echo site_url('holiday'); ?>"><?php echo $this->lang->line('holiday'); ?></a></li>-->
                           <!--         <li><a class="anchors" href="<?php echo site_url('events'); ?>"><?php echo $this->lang->line('event'); ?></a></li>-->
                           <!--     </ul>                                -->
                           <!-- </li>-->
                            
                            <?php if(isset($header_pages) && !empty($header_pages)){ ?>
                                <li><a href="javascript:void(0)"><?php echo $this->lang->line('page'); ?></a>
                                    <ul>
                                    <?php foreach($header_pages AS $obj ){ ?>
                                         <li><a href="<?php echo site_url('page/'.$obj->page_slug); ?>"><?php echo $obj->page_title; ?></a></li>
                                     <?php } ?> 
                                    </ul>                                
                                </li>    
                            <?php } ?> 
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-4">
                    <div class="logo" style="z-index: 99; border: 2px solid white; background-color: white; border-radius:100%;">
                        <a href="<?php echo site_url(); ?>">
                            <?php if(isset($this->setting->front_logo) && !empty($this->setting->front_logo)){ ?>                            
                                <img src="<?php echo UPLOAD_PATH; ?>/logo/<?php echo $this->setting->front_logo; ?>" alt=""  />
                            <?php }elseif(isset($this->setting->logo) && !empty($this->setting->logo)){ ?>
                                <img src="<?php echo UPLOAD_PATH; ?>/logo/<?php echo $this->setting->logo; ?>" alt=""  />
                            <?php }else{ ?>
                                <img src="<?php echo IMG_URL; ?>default-front-logo.png" alt=""  />
                            <?php } ?> 
                        </a>
                    </div>
                </div>
                <div class="col-lg-5 col-4">
                    <div class="stellarnav" style="margin-left:4px;">
                        <ul style="text-align:left">
                            <li><a href="<?php echo site_url('qec'); ?>">QEC</a>
                                 <ul>
                                    <li ><a class="anchors" href="<?php echo site_url('qec'); ?>">Director’s Message</a></li>
                                    <li ><a class="anchors" href="<?php echo site_url('qec-mission'); ?>">Vision and Mission </a></li>
                                    <li ><a class="anchors" href="<?php echo site_url('qec-forms'); ?>">QEC Forms</a></li>
                                    <li ><a class="anchors" href="<?php echo site_url('qec-coordinators'); ?>">QEC Coordinators </a></li>
                                </ul>
                            </li>
                            <li><a href="#">Facilities</a>
                                 <ul>
                                 <li ><a class="anchors" href="<?php echo site_url('campus-location'); ?>">Campus Location </a></li>
                                    <li ><a class="anchors" href="<?php echo site_url('library-facility'); ?>"><?php echo $this->lang->line('library_facility_heading'); ?></a></li>
                                    <li ><a class="anchors" href="<?php echo site_url('laboratory-facility'); ?>">Laboratories </a></li>
                                    <li ><a class="anchors" href="<?php echo site_url('computer-lab'); ?>">Computer Lab </a></li>
                                    <li ><a class="anchors" href="<?php echo site_url('auditorium-facility'); ?>">Auditorium </a></li>
                                    <li ><a class="anchors" href="<?php echo site_url('tuckshop-facility'); ?>"><?php echo $this->lang->line('tuckshop_facility_heading'); ?></a></li>
                                    <li ><a class="anchors" href="<?php echo site_url('sports-ground'); ?>">Sports Ground </a></li>
                                    <li ><a class="anchors" href="<?php echo site_url('transport-facility'); ?>"><?php echo $this->lang->line('transport_facility_heading'); ?></a></li>
                                    <li ><a class="anchors" href="<?php echo site_url('car-parking'); ?>">Car Parking </a></li>
                                    <li ><a class="anchors" href="<?php echo site_url('study-tour'); ?>">Study Tours </a></li>
                                    <li ><a class="anchors" href="<?php echo site_url('student-advisory'); ?>">Students Advisory Center </a></li>
                                </ul>
                            </li>
                            
                            <!-- <li><a href="<?php echo site_url('staff'); ?>"><?php echo $this->lang->line('staff'); ?></a></li> -->
                             <li><a href="<?php echo site_url('#'); ?>">Capacity Building</a>
                                <ul>
                                        <li ><a class="anchors" href="<?php echo site_url('professional-development'); ?>">Professional Development </a></li>
                                        <li ><a class="anchors" href="<?php echo site_url('communication-skills'); ?>">Communication Skills</a></li>
                                        <li ><a class="anchors" href="<?php echo site_url('grooming'); ?>">Grooming</a></li>
                                </ul>      
                            </li>
                             
                            <li><a href="<?php echo site_url('contact'); ?>"><?php echo $this->lang->line('contact'); ?></a></li>
                            <?php if(isset($header_pages) && !empty($header_pages)){ ?>
                                <li><a href="javascript:void(0)"><?php echo $this->lang->line('page'); ?></a>
                                               <ul>
                                    <?php foreach($header_pages AS $obj ){ ?>
                                         <li><a href="<?php echo site_url('page/'.$obj->page_slug); ?>"><?php echo $obj->page_title; ?></a></li>
                                     <?php } ?> 
                                    </ul>                     
                                </li>    
                            <?php } ?> 
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </div>
    
</header>