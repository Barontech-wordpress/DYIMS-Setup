<!-- <div class="apply-area no-print">
    <div class="container">
        <div class="apply-box">
            <div class="row">
                <div class="col-md-7 col-12">
                    <div class="content">
                        <h2 class="title"><?php echo $this->lang->line('apply_now_for_your_kid'); ?></h2>
                    </div>
                </div>
                <div class="col-md-5 col-12">
                    <div class="apply">
                        <a href="<?php echo site_url('admission-online'); ?>">
                            <span class="icon">
                                <i class="fa fa-location-arrow"></i>
                            </span>
                                <?php echo $this->lang->line('apply_now'); ?>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> -->
<style>
    .footer-widget .social li a {
     border: none; 
     font-size: 17px;
     margin-left:6px;
    }
    

.footer-widget .title {
    font-size: 20px;
    font-weight: 500;
    /*border-bottom: none;*/
}
</style>
<footer class="no-print">
<div class="container">
        <div class="apply-box">
            <div class="row justify-content-center">           
                <div class="col-lg-3 col-md-6 col-12">
                      <div class="footer-logo ">
                            <!-- <?php if(isset($this->setting->front_logo) && !empty($this->setting->front_logo)){ ?>                            
                                <img src="<?php echo UPLOAD_PATH; ?>/logo/<?php echo $this->setting->front_logo; ?>" alt=""  />
                            <?php }elseif(isset($this->setting->logo) && !empty($this->setting->logo)){ ?>
                                <img src="<?php echo UPLOAD_PATH; ?>/logo/<?php echo $this->setting->logo; ?>" alt=""  />
                            <?php }else{ ?>
                                 <img src="<?php echo IMG_URL; ?>default-front-logo.png" alt=""  />
                            <?php } ?> -->
                            <img src="<?php echo site_url('assets/images/white-logo.png'); ?>" alt=""  />
                        </div>
                    <div class="footer-widget">
                    <ul class="social">
                    <?php if(isset($this->setting->facebook_url) && !empty($this->setting->facebook_url)){ ?>
                                <li><a href="<?php echo $this->setting->facebook_url; ?>" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                            <?php } ?> 
                            <?php if(isset($this->setting->twitter_url)  && !empty($this->setting->twitter_url)){ ?>
                                <li><a href="<?php echo $this->setting->twitter_url; ?>" target="_blank"><i class="fab fa-twitter"></i></a></li>
                            <?php } ?>                             
                            <?php if(isset($this->setting->linkedin_url)  && !empty($this->setting->linkedin_url)){ ?>
                                <li><a href="<?php echo $this->setting->linkedin_url; ?>" target="_blank"><i class="fab fa-linkedin-in"></i></a></li>
                            <?php } ?>                             
                            <?php if(isset($this->setting->google_plus_url)  && !empty($this->setting->google_plus_url)){ ?>
                                <li><a href="<?php echo $this->setting->google_plus_url; ?>" target="_blank"><i class="fab fa-google-plus-g"></i></a></li>
                            <?php } ?>                              
                            <?php if(isset($this->setting->youtube_url)  && !empty($this->setting->youtube_url)){ ?>
                                <li><a href="<?php echo $this->setting->youtube_url; ?>" target="_blank"><i class="fab fa-telegram-plane"></i></a></li>
                            <?php } ?> 
                            <?php if(isset($this->setting->instagram_url)  && !empty($this->setting->instagram_url)){ ?>
                                <li><a href="<?php echo $this->setting->instagram_url; ?>" target="_blank"><i class="fab fa-instagram"></i></a></li>
                            <?php } ?>                                                           
                      <!--<?php if(isset($this->setting->youtube_url)  && !empty($this->setting->youtube_url)){ ?>
                                <li><a href="<?php echo $this->setting->youtube_url; ?>" target="_blank"><i class="fab fa-youtube"></i></a></li>
                            <?php } ?>                                                     
                             <?php if(isset($this->setting->pinterest_url)  && !empty($this->setting->pinterest_url)){ ?>
                                <li><a href="<?php echo $this->setting->pinterest_url; ?>" target="_blank"><i class="fab fa-pinterest-p"></i></a></li>
                            <?php } ?>                             -->
                        </ul>
                    </div>
                </div>
           </div>
     </div>
</div>      
 
        
    <div class="footer-top">
        <div class="container">
            <div class="row">
            <div class="col-lg-3 col-md-6 col-12">
                    <div class="footer-widget">
                        <h3 class="title" style="color: #0a2052;"><?php echo $this->lang->line('get_in_touch'); ?></h3>
                        <ul class="contact-info">                                            
                            <?php if(isset($this->setting->address) && !empty($this->setting->address)){ ?>                                
                             <li><span class="icon"><i class="fas fa-map-marker-alt" style="color:white"></i></span> <?php echo $this->setting->address; ?></li>
                            <?php } ?>                  
                            <?php if(isset($this->setting->phone) && !empty($this->setting->phone)){ ?>                                 
                             <li> <a href="tel:<?php echo $this->setting->phone; ?>"><span class="icon"><i class="fas fa-phone" style="color:white"></i></span> <?php echo $this->setting->phone; ?></a></li>
                            <?php } ?>
                             <?php if(isset($this->setting->email) && !empty($this->setting->email)){ ?>                                
                             <li><a href="mailto:<?php echo $this->setting->email; ?>"><span class="icon"><i class="fas fa-envelope" style="color:white"></i></span> <?php echo $this->setting->email; ?></a></li>
                            <?php } ?>
                                                    
                        </ul>
                        <!-- <ul class="social">
                            <?php if(isset($this->setting->facebook_url) && !empty($this->setting->facebook_url)){ ?>
                                <li><a href="<?php echo $this->setting->facebook_url; ?>" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                            <?php } ?> 
                            <?php if(isset($this->setting->twitter_url)  && !empty($this->setting->twitter_url)){ ?>
                                <li><a href="<?php echo $this->setting->twitter_url; ?>" target="_blank"><i class="fab fa-twitter"></i></a></li>
                            <?php } ?>                             
                            <?php if(isset($this->setting->linkedin_url)  && !empty($this->setting->linkedin_url)){ ?>
                                <li><a href="<?php echo $this->setting->linkedin_url; ?>" target="_blank"><i class="fab fa-linkedin-in"></i></a></li>
                            <?php } ?>                             
                            <?php if(isset($this->setting->google_plus_url)  && !empty($this->setting->google_plus_url)){ ?>
                                <li><a href="<?php echo $this->setting->google_plus_url; ?>" target="_blank"><i class="fab fa-google-plus-g"></i></a></li>
                            <?php } ?>                              
                            <?php if(isset($this->setting->youtube_url)  && !empty($this->setting->youtube_url)){ ?>
                                <li><a href="<?php echo $this->setting->youtube_url; ?>" target="_blank"><i class="fab fa-youtube"></i></a></li>
                            <?php } ?>                              
                            <?php if(isset($this->setting->instagram_url)  && !empty($this->setting->instagram_url)){ ?>
                                <li><a href="<?php echo $this->setting->instagram_url; ?>" target="_blank"><i class="fab fa-instagram"></i></a></li>
                            <?php } ?>                              
                            <?php if(isset($this->setting->pinterest_url)  && !empty($this->setting->pinterest_url)){ ?>
                                <li><a href="<?php echo $this->setting->pinterest_url; ?>" target="_blank"><i class="fab fa-pinterest-p"></i></a></li>
                            <?php } ?>                            
                        </ul> -->
                    </div>
                </div>
                <!-- <div class="col-lg-3 col-md-7 col-12">
                    <div class="footer-widget">
                        <div class="footer-logo">
                            <?php if(isset($this->setting->front_logo) && !empty($this->setting->front_logo)){ ?>                            
                                <img src="<?php echo UPLOAD_PATH; ?>/logo/<?php echo $this->setting->front_logo; ?>" alt=""  />
                            <?php }elseif(isset($this->setting->logo) && !empty($this->setting->logo)){ ?>
                                <img src="<?php echo UPLOAD_PATH; ?>/logo/<?php echo $this->setting->logo; ?>" alt=""  />
                            <?php }else{ ?>
                                 <img src="<?php echo IMG_URL; ?>default-front-logo.png" alt=""  />
                            <?php } ?>
                        </div>
                        <p class="text">
                            <?php if(isset($this->setting->about_text) && !empty($this->setting->about_text)){ ?>
                                <?php echo strip_tags(substr($this->setting->about_text, 0, 350)); ?>
                            <?php } ?> 
                        </p>
                    </div>
                </div> -->
                
                <div class="col-lg-3 col-md-5 col-12">
                    <div class="footer-widget">
                        <h3 class="title" style="color: #0a2052;"><?php echo $this->lang->line('quick_link'); ?></h3>
                        <ul class="links">
                        <li><a href="<?php echo site_url('#'); ?>"><?php echo "- &nbsp;"?><?php echo $this->lang->line('student_affairs'); ?></a></li>
                            <li><a href="<?php echo site_url('#'); ?>"><?php echo "- &nbsp;"?><?php echo $this->lang->line('academic_calender'); ?></a></li>
                            <li><a href="<?php echo site_url('library'); ?>"><?php echo "- &nbsp;"?><?php echo $this->lang->line('library'); ?></a></li>
                            <!-- <li><a href="<?php echo site_url('admission'); ?>"><?php echo "- &nbsp;"?><?php echo $this->lang->line('admission'); ?></a></li>
                            <li><a href="<?php echo site_url('news'); ?>"><?php echo "- &nbsp;"?><?php echo $this->lang->line('news'); ?></a></li>
                            <li><a href="<?php echo site_url('notice'); ?>"><?php echo "- &nbsp;"?><?php echo $this->lang->line('notice'); ?></a></li>
                            <li><a href="<?php echo site_url('holiday'); ?>"><?php echo "- &nbsp;"?><?php echo $this->lang->line('holiday'); ?></a></li> -->
                            <!-- <li><a href="<?php echo site_url('events'); ?>"><?php echo $this->lang->line('event'); ?></a></li>
                            <li><a href="<?php echo site_url('galleries'); ?>"><?php echo $this->lang->line('gallery'); ?></a></li>
                            <li><a href="<?php echo site_url('teachers'); ?>"><?php echo $this->lang->line('teacher'); ?></a></li>
                            <li><a href="<?php echo site_url('staff'); ?>"><?php echo $this->lang->line('staff'); ?></a></li>
                            <li><a href="<?php echo site_url('contact'); ?>"><?php echo $this->lang->line('contact_us'); ?></a></li> -->
                            <?php if(isset($footer_pages) && !empty($footer_pages)){ ?>
                               <?php foreach($footer_pages AS $obj ){ ?>
                                    <li><a href="<?php echo site_url('page/'.$obj->page_slug); ?>"><?php echo $obj->page_title; ?></a></li>
                                <?php } ?> 
                            <?php } ?>                             
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-5 col-12">
                    <div class="footer-widget ">
                        <!-- <h3 class="title" style="color: #0a2052;">
                             <?php echo $this->lang->line('quick_link'); ?>
                        </h3> -->
                        <ul class="links" style="margin-top: 63px;">
                        <li><a href="<?php echo site_url('#'); ?>"><?php echo "- &nbsp;"?><?php echo $this->lang->line('financial_statments'); ?></a></li>
                            <li><a href="<?php echo site_url('contact'); ?>"><?php echo "- &nbsp;"?><?php echo $this->lang->line('campus_mail'); ?></a></li>
                            <li><a href="<?php echo site_url('contact'); ?>"><?php echo "- &nbsp;"?><?php echo $this->lang->line('contact_us'); ?></a></li>
                            <!-- <li><a href="<?php echo site_url('admission'); ?>"><?php echo "- &nbsp;"?><?php echo $this->lang->line('admission'); ?></a></li>
                            <li><a href="<?php echo site_url('news'); ?>"><?php echo "- &nbsp;"?><?php echo $this->lang->line('news'); ?></a></li>
                            <li><a href="<?php echo site_url('notice'); ?>"><?php echo "- &nbsp;"?><?php echo $this->lang->line('notice'); ?></a></li>
                            <li><a href="<?php echo site_url('holiday'); ?>"><?php echo "- &nbsp;"?><?php echo $this->lang->line('holiday'); ?></a></li> -->
                            <!-- <li><a href="<?php echo site_url('events'); ?>"><?php echo $this->lang->line('event'); ?></a></li>
                            <li><a href="<?php echo site_url('galleries'); ?>"><?php echo $this->lang->line('gallery'); ?></a></li>
                            <li><a href="<?php echo site_url('teachers'); ?>"><?php echo $this->lang->line('teacher'); ?></a></li>
                            <li><a href="<?php echo site_url('staff'); ?>"><?php echo $this->lang->line('staff'); ?></a></li>
                            <li><a href="<?php echo site_url('contact'); ?>"><?php echo $this->lang->line('contact_us'); ?></a></li> -->
                            <?php if(isset($footer_pages) && !empty($footer_pages)){ ?>
                               <?php foreach($footer_pages AS $obj ){ ?>
                                    <li><a href="<?php echo site_url('page/'.$obj->page_slug); ?>"><?php echo $obj->page_title; ?></a></li>
                                <?php } ?> 
                            <?php } ?>                             
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-12">
                    <div class="footer-widget">
                        <h3 class="title" style="color: #0a2052;"><?php echo $this->lang->line('newsletter_subscription'); ?></h3>

                        <p class="" style="color: white; font-size: 18px;"><?php echo $this->lang->line('newsletter_subscription_text'); ?></p>
                      
                    <form action="#" id="subscribeForm" method="post" style="margin-top:12px;">							
						<span style="display:flex;"><input type="email" class="form-control" id="email" placeholder="Email Address" required="" style="border-radius:23px 0px 0px 23px; width:150px">
						<span class="text-danger hidden" id="emailError"></span>
						<input type="button" id="subscribe" value="Subscribe"  style="border-radius:0px 23px 23px 0px;background-color: #0a2052; color: white;"></span>
					</form>
                        <!-- <h3 class="title" style="color: #0a2052;"><?php echo $this->lang->line('opening_hour'); ?></h3> -->
                        <!-- <ul class="hours">
                            
                            <?php if(isset($opening_hour) && !empty($opening_hour->monday)){ ?>
                                <li><?php echo $this->lang->line('monday'); ?> <span class="what-time"><?php echo $opening_hour->monday; ?></span></li>
                            <?php }else{ ?> 
                                <li><?php echo $this->lang->line('monday'); ?> <span class="what-time"><?php echo $this->lang->line('close'); ?></span></li>
                            <?php } ?>
                                
                            <?php if(isset($opening_hour) && !empty($opening_hour->tuesday)){ ?>
                                <li><?php echo $this->lang->line('tuesday'); ?> <span class="what-time"><?php echo $opening_hour->tuesday; ?></span></li>
                             <?php }else{ ?> 
                                <li><?php echo $this->lang->line('tuesday'); ?> <span class="what-time"><?php echo $this->lang->line('close'); ?></span></li>
                            <?php } ?> 
                                
                            <?php if(isset($opening_hour) && !empty($opening_hour->wednesday)){ ?>
                                <li><?php echo $this->lang->line('wednesday'); ?>  <span class="what-time"><?php echo $opening_hour->wednesday; ?></span></li>
                             <?php }else{ ?> 
                                <li><?php echo $this->lang->line('wednesday'); ?> <span class="what-time"><?php echo $this->lang->line('close'); ?></span></li>
                            <?php } ?>  
                                
                            <?php if(isset($opening_hour) && !empty($opening_hour->thursday)){ ?>
                                <li><?php echo $this->lang->line('thursday'); ?> <span class="what-time"><?php echo $opening_hour->wednesday; ?></span></li>
                             <?php }else{ ?> 
                                <li><?php echo $this->lang->line('thursday'); ?> <span class="what-time"><?php echo $this->lang->line('close'); ?></span></li>
                            <?php } ?>
                                
                            <?php if(isset($opening_hour) && !empty($opening_hour->friday)){ ?>
                                <li><?php echo $this->lang->line('friday'); ?> <span class="what-time"><?php echo $opening_hour->friday; ?></span></li>
                             <?php }else{ ?> 
                                <li><?php echo $this->lang->line('friday'); ?> <span class="what-time"><?php echo $this->lang->line('close'); ?></span></li>
                            <?php } ?>  
                                
                            <?php if(isset($opening_hour) && !empty($opening_hour->saturday)){ ?>
                                <li><?php echo $this->lang->line('saturday'); ?> <span class="what-time"><?php echo $opening_hour->saturday; ?></span></li>
                             <?php }else{ ?> 
                                <li><?php echo $this->lang->line('saturday'); ?> <span class="what-time"><?php echo $this->lang->line('close'); ?></span></li>
                            <?php } ?>  
                                
                            <?php if(isset($opening_hour) && !empty($opening_hour->sunday)){ ?>
                                <li><?php echo $this->lang->line('sunday'); ?> <span class="what-time"><?php echo $opening_hour->sunday; ?></span></li>
                             <?php }else{ ?> 
                                <li><?php echo $this->lang->line('sunday'); ?> <span class="what-time"><?php echo $this->lang->line('close'); ?></span></li>
                            <?php } ?>  
                        </ul>                       -->
                    </div>
                </div>
                
            </div>
        </div>
    </div>
    <div class="footer-bottom" style="background: #0a2052;">
        <div class="container">
            <div class="copyright">
                <p class="text">
                    <!--<?php if(isset($this->setting->footer) && !empty($this->setting->footer)){ ?>                            -->
                    <!--    <?php echo $this->setting->footer; ?>                -->
                    <!--<?php } ?>-->
                     Copyright © DYIMS 2022. All rights reserved | Developed By <a style="font-size:16px; color:#239cc1;" target="blank" href="http://barontech.co/">BARON TECH (PVT) LIMITED</a>

                </p>
            </div>
        </div>
    </div>
</footer>