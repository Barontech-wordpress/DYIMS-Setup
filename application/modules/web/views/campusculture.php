<div class="page-header-area">
    <div class="container">
        <div class="page-header-content">
            <h2 class="title"><span class="inner"><?php echo $this->lang->line('campus_title'); ?></span></h2>
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
                    <div class="culture-banner">
                      <img src="<?php echo site_url('/assets/images/campus-life-1.jpg');?>" alt="tab image" >  
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 col-12">
                    <div class="welcome-content campus">
                        <h2 class="campus-title">
                        <?php echo $this->lang->line('campus_title'); ?>
                        </h2>
                        <div class="campus-description">
                        <p >
                        <?php echo $this->lang->line('campus_culture_description'); ?>
                        </p> 
                       </div>
                </div>
      
            </div>  
            <div class="row">
                <div class="campus-description campus-bottom">
                <p>
                  <?php echo $this->lang->line ('campus_culture_description_main');?>
                </p>
                </div>
            </div> 
        </div>
    </div>

