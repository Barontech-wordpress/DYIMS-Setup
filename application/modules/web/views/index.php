<div class="hero-area">
    <div class="hero-carousel owl-carousel">
        <?php if(isset($sliders) && !empty($sliders)){ ?>    
            <?php foreach($sliders AS $obj ){ ?>
                <div class="single-hero-carousel">
                    <div class="img">
                        <img src="<?php echo UPLOAD_PATH; ?>slider/<?php echo $obj->image; ?>" alt="">
                    </div>
                    <div class="box">
                        <h2 class="title-1"><?php echo $this->lang->line('welcome_to'); ?></h2>
                        <h2 class="title-2">
                            <?php if($obj->title != '')
                            { ?>
                            <?php echo $obj->title; ?>
                            <?php 
                            }
                            elseif(isset($this->setting)){ ?>
                                <?php echo $this->setting->school_name; ?>
                            <?php }else{ ?>
                                <?php echo SMS; ?>
                            <?php } ?>
                        </h2>
                        <h4>
                            <?php echo $this->lang->line('banner_text'); ?> 
                        </h4>
                        <br>
                        <a href="<?php echo site_url('admission-online'); ?>" class="button btn-hvr"><?php echo $this->lang->line('admission'); ?></a>
                    </div>
                </div>
            <?php } ?>
        <?php }else{ ?>
                <div class="single-hero-carousel">
                    <div class="img">
                        <img src="<?php echo IMG_URL; ?>default-slider.jpg" alt="">
                    </div>
                    <div class="box">
                        <h2 class="title-1"><?php echo $this->lang->line('welcome_to'); ?></h2>
                        <!-- <h2 class="title-2">                            
                           <?php echo SMS; ?>                           
                        </h2> -->
                        <a href="<?php echo site_url('admission-online'); ?>" class="button btn-hvr"><?php echo $this->lang->line('admission'); ?></a>
                    </div>
                </div>
        <?php } ?>
    </div>
</div>

<!-- About and Chairman message  -->
<?php if(isset($this->setting->about_text) && !empty($this->setting->about_text)){ ?>
   <div class="welcome-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="welcome-content">
                        <h2 class="chairman-message"><?php echo $this->lang->line('chairman_message'); ?></h2>
                        <h2 class="title-2">
                            <?php if(isset($this->setting->school_name)){ ?>
                            <?php echo $this->setting->school_name; ?>
                            <?php }else{ ?>
                                  <?php echo SMS; ?>
                            <?php } ?>
                        </h2>
                        <p class="text">
                            <?php echo strip_tags(substr($this->setting->about_text, 0, 550)); ?>...  
                        </p>
                        <div class="button-wrapper">
                            <div class="row">
                                <div class="col-lg-5 col-md-6 col-12">
                                   <img src="<?php echo site_url('/assets/images/chairman.png') ?>" style="width:245px;">
                                </div>
                                <div class="col-lg-7 col-md-6 col-12">
                                    <p  style="text-align:left;font-size:16px;">
                                       <?php echo "Dr Yahya Medical Institude is a Private Sector health sciences university. Today, I am elated to proclaim that we have successfully transformed our vision into reality.<br>My love for my land has inspired me to lay the foundation of this DYIMS"; ?>
                                     </p>
                                   <a href="<?php echo site_url('about'); ?>" class="button btn-hvr" ><?php echo $this->lang->line('read_more'); ?></a>
                               </div>
                            </div>    
                        </div>
                        
                    </div>
                    
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                <div class="welcome-banner">
                        <?php if(isset($this->setting->about_image) && !empty($this->setting->about_image)){ ?>
                        <img class="wb-banner" src="<?php echo UPLOAD_PATH; ?>about/<?php echo $this->setting->about_image; ?>" alt="hello">
                        <?php }else{ ?>
                            <img class="wb-banner" src="<?php echo IMG_URL; ?>about-image.jpg" alt="hell">
                        <?php } ?>  
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php } ?>

<!-- our facilities -->
<div class="facilities-area">
    <div class="container">
        <div class="section-title white">
            <h2 class="title">
                <?php echo $this->lang->line('our_achievements'); ?>
            </h2>
            <p style="color:white;padding-top:12px;font-size:20px;">
                <?php echo $this->lang->line('our_achievements_text'); ?>
            </p>
        </div>
        <div class="row justify-content-center">
            <div class="col-lg-3 col-md-6 col-12">
                <div class="facilty-box">
                    <div class="content">
                       <h1> 100<span style="font-weight:700; color: white;">+</span></h1>
                    </div>
                    <div class="content">
                       <p>Faculty</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-12">
                <div class="facilty-box">
                    <div class="content">
                       <h1> 500<span style="font-weight:700; color: white;">+</span></h1>
                    </div>
                    <div class="content">
                       <p>Medical Students</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-12">
               <div class="facilty-box">
                    <div class="content">
                       <h1> 60<span style="font-weight:700; color: white;">+</span></h1>
                    </div>
                    <div class="content">
                       <p>Dentistry Students</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-12">
                <div class="facilty-box">
                    <div class="content">
                       <h1> 200<span style="font-weight:700; color: white;">+</span></h1>
                    </div>
                    <div class="content">
                       <p>DPT Students</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
   
<!-- Our Programs -->
<div class="our_programs">
    <div class="container">
        <div class="section-title white">
            <h3 class="title">
                <?php echo $this->lang->line('our_programs'); ?>
            </h3>
            <h2 class="title-2">
                <?php if(isset($this->setting->school_name)){ ?>
                <?php echo $this->setting->school_name; ?>
                <?php }else{ ?>
                        <?php echo SMS; ?>
                <?php } ?>
            </h2>
            <p style="color:#494949;padding-top:12px;font-size:18px;font-weight:550">
                <?php echo $this->lang->line('our_programs_text'); ?>
            </p>
        </div>
        <div class="row justify-content-center">
           <?php foreach($programs as $obj){ ?>
                <?php if(isset($obj->photo)){
                    $at_image=$obj->photo;
                }else{
                    $at_image='noImage.jpg';
                }?>
            <div class="col-lg-3 col-md-6 col-12">
                <div class="card" style="padding:5px;width:270px; height: 290px;">
                    <img class="card-img-top" src="<?php echo site_url('./assets/uploads/program/'.$at_image);?>" alt="Card image cap" style="height:170px;width:260px">
                    <div class="card-body">
                        <h5 class="card-title"><?php echo $obj->title ?> </h5>
                         <a href="<?php echo site_url('programs/?id='.$obj->id); ?>" class="btn btn-primary">Read More</a>
                    </div>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>
</div>

   
<!-- news and events -->
<?php if(isset($news) && !empty($news)){ ?>
<div class="news-area">
    <div class="container">
        <div class="section-title">
            <h4 class="title">
                <!-- <img src="<?php echo IMG_URL; ?>front/icon/heading-<?php echo $theme->slug; ?>.png" alt="">  -->
                <?php echo $this->lang->line('our_news_events'); ?>
            </h4>
            <!-- <h4 class="title">
                <?php echo $this->lang->line('our_news_events'); ?>
            </h4> -->
            <h2 class="title-2">
                <?php if(isset($this->setting->school_name)){ ?>
                <?php echo $this->setting->school_name; ?>
                <?php }else{ ?>
                        <?php echo SMS; ?>
                <?php } ?>
            </h2>
            <p style="color:#494949;padding-top:12px;font-size:18px;font-weight:550">
                <?php echo $this->lang->line('our_news_events_text'); ?>
            </p>
        </div>
        <div class="row justify-content-center">
               <div class="col-lg-6 col-md-6 col-12">
                    <?php $count=0; ?>
                    <?php foreach($events AS $obj){
                    if($count < 1 ){
                    ?>   
                        <div class="single-event">
                            <div class="img">
                                <?php if(isset($obj->image) && !empty($obj->image)){ ?>
                                    <img src="<?php echo UPLOAD_PATH; ?>event/<?php echo $obj->image; ?>" alt="">
                                <?php }else{ ?>
                                    <img src="<?php echo IMG_URL; ?>news-image.jpg" alt="">
                                <?php } ?>
                            </div>
                            
                            <div class="content">
                                <a href="<?php echo site_url('event-detail/'.$obj->id); ?>">
                                    <h2 class="title"><?php echo strip_tags(substr($obj->title, 0, 25)); ?>...</h2>
                                </a>
                                <ul class="meta">
                                    <!-- <li><span class="icon"><i class="fas fa-user-circle"></i></span> <?php echo $obj->event_for ? $obj->event_for : $this->lang->line('all'); ?> (<?php echo $this->lang->line('event_for'); ?>)</li> -->
                                    <li><?php echo date($this->setting->sms_date_format, strtotime($obj->event_from)); ?></li>
                                    <!-- <li><span class="icon"><i class="fas fa-map-marker-alt"></i></span> <?php echo $obj->event_place; ?></li> -->
                               </ul>
                                <p class="text">
                                    <?php echo strip_tags(substr($obj->note, 0, 160)); ?>...  
                                </p>
                                <!-- <div class="more-wrapper">
                                    <a href="<?php echo site_url('event-detail/'.$obj->id); ?>" class="more"><?php echo $this->lang->line('read_more'); ?></a>
                                </div> -->
                            </div>
                        </div>
                    <?php $count++;
                    } } ?>
                </div> 
                <div class="col-lg-6 col-md-6 col-12">
                    <?php $count=0; ?>
                    <?php foreach($news AS $obj){
                    if($count < 3 ){
                    ?>   
                    <div class="single-news">
                        <div class="card-hor">
                            <div class="card-horizontal">
                                <div class="img-square-wrapper">
                                    <div class="img">
                                        <?php if(isset($obj->image) && !empty($obj->image)){ ?>
                                            <img src="<?php echo UPLOAD_PATH; ?>news/<?php echo $obj->image; ?>" alt="">
                                        <?php }else{ ?>
                                            <img src="<?php echo IMG_URL; ?>news-image.jpg" alt="">
                                        <?php } ?>  
                                    </div>
                                </div>
                                
                                <div class="card-body">
                                    <a href="<?php echo site_url('news-detail/'.$obj->id); ?>">
                                        <h2 class="title"><?php echo strip_tags(substr($obj->title, 0, 25)); ?> ...</h2>
                                    </a>
                                    
                                    <ul class="meta">    
                                        <li><?php echo date($this->setting->sms_date_format, strtotime($obj->date)); ?></li>
                                    </ul>
                                    <p class="text">
                                    <?php echo strip_tags(substr($obj->news, 0, 160)); ?> ...
                                    </p>
                                </div>
                            </div>               
                        </div>
                    </div>
                    <?php } } ?>
                </div> 
            
        </div>
    </div>
</div>
<?php } ?>


<!-- our gallery -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.11.1/baguetteBox.min.css">

<div class="our_gallery">
    <div class="container">
        <div class="section-title white">
            <h3 class="title">
                <?php echo $this->lang->line('our_gallery'); ?>
            </h3>
            <h2 class="title-2">
                <?php if(isset($this->setting->school_name)){ ?>
                <?php echo $this->setting->school_name; ?>
                <?php }else{ ?>
                        <?php echo SMS; ?>
                <?php } ?>
            </h2>
            <p style="color:#494949;padding-top:12px;font-size:18px;font-weight:550">
                <?php echo $this->lang->line('our_gallery_text'); ?>
            </p>
        </div>
        <div class="row justify-content-center">
            <!-- gallery start -->
<div class="container-fluid">    
    <div class="row gallery">
      <div class="col-sm-6 col-md-4 col-lg-3">
        <a href="http://localhost/DYIMS/assets/images/dyims1.jpg">
          <img class="img-fluid"src="<?php echo site_url('/assets/images/dyims1.jpg');?>">
        </a>
      </div>
      <div class="col-sm-6 col-md-4 col-lg-3">
        <a href="http://localhost/DYIMS/assets/images/dyims2.jpg">
          <img class="img-fluid"src="<?php echo site_url('/assets/images/dyims2.jpg');?>">
        </a>
      </div>
     
      <div class="col-sm-6 col-md-4 col-lg-3">
        <a href="http://localhost/DYIMS/assets/images/dyi.jpg">
          <img class="img-fluid"src="<?php echo site_url('/assets/images/dyims1.jpg');?>">
        </a>
      </div>
       <div class="col-sm-6 col-md-4 col-lg-3">
        <a href="http://localhost/DYIMS/assets/images/2_11zon.jpg">
          <img class="img-fluid"src="<?php echo site_url('/assets/images/dyims2.jpg');?>">
        </a>
      </div>
      
       <div class="col-sm-6 col-md-4 col-lg-3">
        <a href="http://localhost/DYIMS/assets/images/card2.png">
          <img class="img-fluid"src="<?php echo site_url('/assets/images/card2.png');?>" style="margin-top: 12px">
        </a>
      </div>

      <!--<div class="col-sm-6 col-md-4 col-lg-3">-->
      <!--  <a href="http://localhost/DYIMS/assets/images/new3.png">-->
      <!--    <img class="img-fluid"src="<?php echo site_url('/assets/images/news3.png');?>" style="margin-top: 12px">-->
      <!--  </a>-->
      <!--</div>-->
      <div class="col-sm-6 col-md-4 col-lg-3">
        <a href="http://localhost/DYIMS/assets/images/student.png">
          <img class="img-fluid"src="<?php echo site_url('/assets/images/student.png');?>" style="margin-top: 12px;">
        </a>
      </div>
     
      <!--<div class="col-sm-6 col-md-4 col-lg-3">-->
      <!--  <a href="http://localhost/DYIMS/assets/images/news1.png">-->
      <!--    <img class="img-fluid"src="<?php echo site_url('/assets/images/news1.png');?>"style="margin-top: 12px">-->
      <!--  </a>-->
      <!--</div>-->
      <div class="col-sm-6 col-md-4 col-lg-3">
        <a href="http://localhost/DYIMS/assets/images/dyims2.jpg">
          <img class="img-fluid"src="<?php echo site_url('/assets/images/card2.png');?>" style="margin-top: 12px">
        </a>
      </div>
      
       <div class="col-sm-6 col-md-4 col-lg-3">
        <a href="http://localhost/DYIMS/assets/images/building-day.png">
          <img class="img-fluid"src="<?php echo site_url('/assets/images/student.png');?>" style="margin-top: 12px;">
        </a>
      </div>
     
    </div>
  </div>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.11.1/baguetteBox.min.js"></script>
  <script>
    baguetteBox.run(".gallery", {
      animation: "slideIn"
    });
  </script>
            <!-- galleryagain ends -->
        </div>
    </div>
</div>


<!-- Students testimonials -->
<div class="students_testimonials">
    <div class="container">
        <div class="section-title white">
            <h4 class="title">
                <?php echo $this->lang->line('our_students_say'); ?>
            </h4>
            <h2 class="title-2">
                <?php if(isset($this->setting->school_name)){ ?>
                <?php echo $this->setting->school_name; ?>
                <?php }else{ ?>
                        <?php echo SMS; ?>
                <?php } ?>
            </h2>
           
        </div>
                    <!-- start of carousal -->
                    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                            <!-- <img class="d-block w-100" src="..." alt="First slide"> -->
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <div style="display:flex;">
                                            <!-- <span><img src="<?php echo site_url('/assets/images/student_la.png');?>" class="center"></span>&nbsp;&nbsp;&nbsp;&nbsp;
                                            <span><img src="<?php echo site_url('/assets/images/student.png');?>" ><span> -->
                                            <img src="<?php echo site_url('/assets/images/student.png');?>" >
                                        </div>    
                                            
                                    </div>
                            
                                    <div class="col-lg-6 col-md-6 col-12" style="padding: 50px 50px;">
                                        <img src="<?php echo site_url('/assets/images/students_stars.png');?>">

                                        <p style="color:#494949;padding-top:12px;font-size:18px;font-weight:550">
                                            <?php echo $this->lang->line('our_testimonial_text'); ?>
                                        </p> 
                                        <p class="student_name">
                                            <?php echo "Jamila Rizwan"; ?>
                                        </p> 
                                        <p class="student_department">
                                            <?php echo "Final Year Student"; ?>
                                        </p> 
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                            <!-- <img class="d-block w-100" src="..." alt="Second slide"> -->
                                    <div class="row">
                                            <div class="col-lg-6 col-md-6 col-12">
                                                <div style="display:flex;">
                                                     <!-- <span><img src="<?php echo site_url('/assets/images/student_la.png');?>" class="center"></span>&nbsp;&nbsp;&nbsp;&nbsp;
                                            <span><img src="<?php echo site_url('/assets/images/student.png');?>" ><span> -->
                                            <img src="<?php echo site_url('/assets/images/student.png');?>" >
                                                </div>    
                                                    
                                            </div>
                                    
                                            <div class="col-lg-6 col-md-6 col-12" style="padding: 50px 50px;">
                                                <img src="<?php echo site_url('/assets/images/students_stars.png');?>">

                                                <p style="color:#494949;padding-top:12px;font-size:18px;font-weight:550">
                                                    <?php echo $this->lang->line('our_testimonial_text'); ?>
                                                </p> 
                                                <p class="student_name">
                                                    <?php echo "Jamila Rizwan"; ?>
                                                </p> 
                                                <p class="student_department">
                                                    <?php echo "Final Year Student"; ?>
                                                </p> 
                                            </div>
                                        </div>
                            </div>
                            <div class="carousel-item">
                            <!-- <img class="d-block w-100" src="..." alt="Third slide"> -->
                                <div class="row">
                                        <div class="col-lg-6 col-md-6 col-12">
                                            <div style="display:flex;">
                                                <!-- <span><img src="<?php echo site_url('/assets/images/student_la.png');?>" class="center"></span>&nbsp;&nbsp;&nbsp;&nbsp; -->
                                                <img src="<?php echo site_url('/assets/images/student.png');?>" >
                                            </div>    
                                                
                                        </div>
                                
                                        <div class="col-lg-6 col-md-6 col-12" style="padding: 50px 50px;">
                                            <img src="<?php echo site_url('/assets/images/students_stars.png');?>">

                                            <p style="color:#494949;padding-top:12px;font-size:18px;font-weight:550">
                                                <?php echo $this->lang->line('our_testimonial_text'); ?>
                                            </p> 
                                            <p class="student_name">
                                                <?php echo "Jamila Rizwan"; ?>
                                            </p> 
                                            <p class="student_department">
                                                <?php echo "Final Year Student"; ?>
                                            </p> 
                                        </div>
                                    </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>

                    <!-- start of carousal -->
    </div>
</div>

<!-- gallery copied -->
<!-- <div class="page-gallery-area" style="padding-bottom: 60px;">    
    <div class="container">
        
    <?php if(isset($galleries) && !empty($galleries)){ ?>
        
        <div class="gallery-menu">
            <button class="button checked" data-filter="*">All</button>
            <?php foreach($galleries AS $obj){ ?>
                <button class="button" data-filter=".<?php echo $obj->id; ?>Gallery"><?php echo $obj->title; ?></button>                
            <?php } ?>
        </div>
        
        <div class="row no-gutters justify-content-center grid_container" id="container">
             <?php foreach($galleries AS $obj){ ?>
                <?php $images = get_gallery_images($obj->id); ?> 
                <?php foreach($images as $img){ ?>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-12 gallery-box grid <?php echo $obj->id; ?>Gallery" data-category="post-transition">
                        <div class="single-gallery">
                            <a href="#" class="link" target="_blank"><i class="fas fa-link"></i></a>
                            <a href="<?php echo UPLOAD_PATH; ?>gallery/<?php echo $img->image; ?>" class="fancy" data-fancybox="images">
                                <i class="fas fa-expand-arrows-alt"></i>
                                <img src="<?php echo UPLOAD_PATH; ?>gallery/<?php echo $img->image; ?>" alt="">
                            </a>
                        </div>
                    </div>           
                <?php } ?>
            <?php } ?>
        </div>
        
         <?php }else{ ?>
            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                <p class="text-center"><strong><?php echo $this->lang->line('no_data_found'); ?></strong></p>
            </div>
        <?php } ?>
        
    </div>
</div> -->

<!-- 
<div class="page-gallery-area">    
    <div class="container">
        
    <?php if(isset($galleries) && !empty($galleries)){ ?>
        
        <div class="gallery-menu">
            <button class="button checked" data-filter="*">All</button>
            <?php foreach($galleries AS $obj){ ?>
                <button class="button" data-filter=".<?php echo $obj->id; ?>Gallery"><?php echo $obj->title; ?></button>                
            <?php } ?>
        </div>
        
        <div class="row no-gutters justify-content-center grid_container" id="container">
             <?php foreach($galleries AS $obj){ ?>
                <?php $images = get_gallery_images($obj->id); ?> 
                <?php foreach($images as $img){ ?>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-12 gallery-box grid <?php echo $obj->id; ?>Gallery" data-category="post-transition">
                        <div class="single-gallery">
                            <a href="#" class="link" target="_blank"><i class="fas fa-link"></i></a>
                            <a href="<?php echo UPLOAD_PATH; ?>gallery/<?php echo $img->image; ?>" class="fancy" data-fancybox="images">
                                <i class="fas fa-expand-arrows-alt"></i>
                                <img src="<?php echo UPLOAD_PATH; ?>gallery/<?php echo $img->image; ?>" alt="">
                            </a>
                        </div>
                    </div>           
                <?php } ?>
            <?php } ?>
        </div>
        
         <?php }else{ ?>
            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                <p class="text-center"><strong><?php echo $this->lang->line('no_data_found'); ?></strong></p>
            </div>
        <?php } ?>
        
    </div>
</div> -->



<?php if(isset($feedbacks) && !empty($feedbacks)){ ?>
<div class="testimonial-area">
    <div class="container">
        <div class="section-title white">
            <h2 class="title">
                <img src="<?php echo IMG_URL; ?>front/icon/heading-<?php echo $theme->slug; ?>.png" alt="">
                <?php echo $this->lang->line('what_guardian_say'); ?>
            </h2>
        </div>
        <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="testimonial-carousel owl-carousel">
                    <?php foreach($feedbacks AS $obj){ ?> 
                        <div class="single-testimonial">
                            <div class="author-thumb">
                                <?php if(isset($obj->photo) && !empty($obj->photo)){ ?>
                                    <img src="<?php echo UPLOAD_PATH; ?>guardian-photo/<?php echo $obj->photo; ?>" alt="">
                                <?php }else{ ?>
                                    <img src="<?php echo IMG_URL; ?>default-user.png" alt="">
                                <?php } ?>
                            </div>
                            <h4 class="author-name"><span class="inner"><?php echo $obj->name; ?></span></h4>
                            <p class="text">
                                <?php echo $obj->feedback; ?>
                            </p>
                        </div>  
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
</div>
<?php } ?>

<div>
    
</div>