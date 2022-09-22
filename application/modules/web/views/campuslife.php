<div class="page-header-area">
    <div class="container">
        <div class="page-header-content">
            <h2 class="title"><span class="inner"><?php echo $this->lang->line('campus_life'); ?></span></h2>
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
<!-- Page Start -->
<!-- About and Chairman message  -->

   <div class="welcome-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="welcome-content campus">
                        <h2 class="chairman-message"><?php echo $this->lang->line('campus_life'); ?></h2>
                        <h2 class="campus-title">
                        <?php echo $this->lang->line('campus_title'); ?>
                        </h2>
                        <div class="campus-description">
                        <p >
                        <?php echo $this->lang->line('campus_description'); ?>
                        </p> 
                       </div>
                        <div class="button-wrapper ">       
                                   <a href="<?php echo site_url('about'); ?>" class="button campus-btn btn-hvr" ><?php echo $this->lang->line('read_more'); ?></a>
                            </div>    
                        </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="culture-banner">
                      <img src="<?php echo site_url('/assets/images/Campus-life-1.jpg');?>" alt="tab image" style="margin: 10px 0px;max-width: 500px;">  
                    </div>
                </div>
            </div>
            <hr class="seprator">
            <div class="row">
            <div class="col-lg-6 col-md-6 col-12">
                    <div class="culture-banner">
                        <img src="<?php echo site_url('/assets/images/Sports.png');?>" alt="tab image" style="margin: 10px 0px;max-width: 500px;">
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="welcome-content campus">
                        <h2 class="campus-title">
                        <?php echo $this->lang->line('sports_facility'); ?>
                        </h2>
                        <div class="campus-description">
                        <p >
                        <?php echo $this->lang->line('campus_description'); ?>
                        </p> 
                       </div>
                        <div class="button-wrapper campus-read">       
                                   <a href="<?php echo site_url('about'); ?>" class="button campus-btn btn-hvr" ><?php echo $this->lang->line('read_more'); ?></a>
                            </div>    
                        </div>
                </div>
               
            </div>
            <hr class="seprator">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="welcome-content campus">
                        <h2 class="campus-title">
                        <?php echo $this->lang->line('society'); ?>
                        </h2>
                        <div class="campus-description">
                        <p >
                        <?php echo $this->lang->line('campus_description'); ?>
                        </p> 
                       </div>
                        <div class="button-wrapper ">       
                                   <a href="<?php echo site_url('about'); ?>" class="button campus-btn btn-hvr" ><?php echo $this->lang->line('read_more'); ?></a>
                            </div>    
                        </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                <div class="culture-banner">
                <img src="<?php echo site_url('/assets/images/Socities.jpg');?>" alt="tab image" style="margin: 10px 0px;max-width: 500px;">

                    </div>
                </div>
            </div>
            <hr class="seprator">
            <div class="row">
            <div class="col-lg-6 col-md-6 col-12">
                <div class="culture-banner">
                   <img src="<?php echo site_url('/assets/images/about-layyah.jpg');?>" alt="tab image" style="margin: 10px 0px;max-width: 500px;">  
                </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="welcome-content campus">
                        <h2 class="campus-title">
                        <?php echo $this->lang->line('campus_information'); ?>
                        </h2>
                        <div class="campus-description">
                        <p >
                        <?php echo $this->lang->line('campus_description'); ?>
                        </p> 
                       </div>
                        <div class="button-wrapper campus-read ">       
                                   <a href="<?php echo site_url('about'); ?>" class="button campus-btn btn-hvr" ><?php echo $this->lang->line('read_more'); ?></a>
                            </div>    
                        </div>
                </div>
              
            </div>
            <hr class="seprator">
        </div>
    </div>

