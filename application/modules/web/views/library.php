<div class="page-header-area">
    <div class="container">
        <div class="page-header-content">
            <h2 class="title"><span class="inner"><?php echo $this->lang->line('library_page_title');?></span></h2>
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
<div class="page-contact-info-area_">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-12">
                <?php $this->load->view('layout/message'); ?> 
            </div>
        </div>
    </div>
</div>

<style>
@media only screen and (max-width:480px){
    .carousel-nav-icon{
    /*width:12px!important;*/
    display: none;
        
    }
    .container .box-top{
        height: 500px!important;
    }
}
.page-header-area {
  margin-top: 150px;
  padding: 150px 0 140px;
  background-image: url(./../../../assets/images/front/library.jpg) !important;
  background-repeat: no-repeat;
  /* background-size: contain; */
  background-size: cover;
  /* background-position: center bottom */
  background-position: 100% auto;
  background-attachment: fixed;
  color: #ffffff;
  position: relative;
  z-index: 1;
}
.carousel-nav-icon {
   height: 48px;
   width: 48px;
}
 .active{
       background-color: white!important;
   }
   .active, .accordion:hover {
    background-color: white!important;
        }
.carousel-item {
   .col, .col-sm, .col-md {
      margin: 8px;
      height: 300px;
      background-size: cover;
      background-position: center center;
   }
   
   
}
.box-top{
    box-shadow: 0px 0px 5px;
    padding:5px 5px;
    border-bottom: 4px solid #239cc1;
     margin-bottom: 23px;
     height: 300px;
}
.box-top .text-p1 {
    color: black;
    font-size: 17px;
    text-align: justify;
    padding: 2px 5px;
}
.box{
    box-shadow: 0px 0px 5px;
    padding:15px 10px;
    border-bottom: 4px solid #239cc1;
     margin-bottom: 23px;
}
.box1{
    box-shadow: 0px 0px 5px;
    padding:10px 10px;
    border-right: 4px solid #239cc1;
    
}
.page-button{
    background-color: #239cc1;
    color: white;
    font-size: 17px;
    font-weight: 600;
    border-bottom: 4px solid #173162;
    padding: 3px 12px;
    margin: 0px 0px;
    display: inline-block;
}
.page-button:hover{
    color: white;
}
.box .title{
    color: #239cc1;
    
}
.box1 h3{
    color: #239cc1;
    font-size:16px;
}
.box1 p{
    color: black;
    font-size: 17px;
    padding: 2px 0px;
}
.container .text-p{
    color: black;
    font-size: 17px;
    padding: 10px 0px;
}
.my-5 {
    margin-top: 0rem!important;
}
</style>

<div class="page-notice-area" style="background-color:white">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-5">
                    <div class="my-5 text-center container">
                       <div class="row d-flex align-items-center">
                          <div class="col-1 d-flex align-items-center justify-content-center">
                             <a href="#carouselExampleIndicators" role="button" data-slide="prev">
                                <div class="carousel-nav-icon">
                                   <!--<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 129 129" xmlns:xlink="http://www.w3.org/1999/xlink">-->
                                   <!--   <path d="m88.6,121.3c0.8,0.8 1.8,1.2 2.9,1.2s2.1-0.4 2.9-1.2c1.6-1.6 1.6-4.2 0-5.8l-51-51 51-51c1.6-1.6 1.6-4.2 0-5.8s-4.2-1.6-5.8,0l-54,53.9c-1.6,1.6-1.6,4.2 0,5.8l54,53.9z"/>-->
                                   <!--</svg>-->
                                    <img src="<?php echo site_url('assets/images/student-left.png');?>">
                                </div>
                             </a>
                          </div>
                          <div class="col-10">
                              <!--Start carousel-->
                              <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    
                                <div class="carousel-inner">
                                   <div class="carousel-item active">
                                      <div class="row">
                                         <div  class="col-12 col-md d-flex align-items-center justify-content-center">
                                            <img src="<?php echo site_url('assets/images/library.PNG');?>">
                                         </div>
                                        
                                      </div>
                                   </div>
                                   <div class="carousel-item">
                                      <div class="row">
                                         <div class="col-12 col-md d-flex align-items-center justify-content-center">
                                               <img src="<?php echo site_url('assets/images/library.PNG');?>">
                                         </div>
                                        
                                      </div>
                                   </div>
                                </div>
                              </div>
                              <!--End carousel-->
                           </div>
                          <div class="col-1 d-flex align-items-center justify-content-center">
                              <a  href="#carouselExampleIndicators" data-slide="next">
                             <div class="carousel-nav-icon">
                                <!--<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 129 129" xmlns:xlink="http://www.w3.org/1999/xlink">-->
                                <!--   <path d="m40.4,121.3c-0.8,0.8-1.8,1.2-2.9,1.2s-2.1-0.4-2.9-1.2c-1.6-1.6-1.6-4.2 0-5.8l51-51-51-51c-1.6-1.6-1.6-4.2 0-5.8 1.6-1.6 4.2-1.6 5.8,0l53.9,53.9c1.6,1.6 1.6,4.2 0,5.8l-53.9,53.9z"/>-->
                                <!--</svg>-->
                                <img src="<?php echo site_url('assets/images/student-right.png');?>">
                             </div>
                             </a>
                          </div>
                    </div>
                </div>
            </div> 
            <!--carousel ends here-->
             <div class="col-lg-7">
                 <div class="container box-top">
                     <p class="text-p1">
                         Students at <strong>DYIMS</strong> are welcomed and encouraged to expose themselves to a world of knowledge. As a state of the art and purpose library is awaiting for all the curious minds, avid readers, and book lovers. The library has a great multitude in terms of subjects, domains, and genre because it features multi-disciplinary books for everyone. All the books are chosen diligently that can pave a smooth way for the students, teachers, and researchers to reach evidence-based knowledge. The collection of books belongs to renowned and eminent writers and authors.
                     </p>
                     <a href="#" class="page-button" style="position: absolute; right: 30px;">Read More</a>
                 </div>
             </div>
             <!--col-2 top ends here-->
             <div class=" col-lg-12" style="margin: 30px 0px;"></div>
            <div class="col-lg-8">
                <div class="container">
                    <a href="#" class="page-button" style="padding: 10px 43px 10px 10px;font-size: 23px;"> New Arrivals</a>
                    
                    <div class="container box" style="margin-top: 23px;">
                         <h2 class="title">New Arrival:</h2>
                         
                         
                         <!--news page section-->
                         <div class="row justify-content-center">
                            <?php if(isset($books) && !empty($books)){ ?>
                            <?php foreach($books AS $obj){ ?> 
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="single-news">
                                        <ul class="meta">
                                            <li><?php echo $this->lang->line('by'); ?> / <?php echo $obj->name; ?></li>
                                            <li><?php echo date($this->setting->sms_date_format, strtotime($obj->date)); ?></li>
                                        </ul>
                                        <div class="content">
                                            <a href="<?php echo site_url('book-detail/'.$obj->id); ?>">
                                                <h2 class="title text-center">
                                                    <?php echo strip_tags(substr($obj->title, 0, 25)); ?> ...
                                                </h2>
                                            </a>
                                            <p class="text">
                                               <?php echo strip_tags(substr($obj->author, 0, 180)); ?> ...
                                            </p>
                                            <div class="more-wrapper">
                                                <a href="<?php echo site_url('book-detail/'.$obj->id); ?>" class="more"><?php echo $this->lang->line('read_more'); ?></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            
                            <?php } ?>
                            <?php }else{ ?>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                                <p class="text-center"><strong><?php echo $this->lang->line('no_data_found'); ?></strong></p>
                            </div>
                             <?php } ?>            
                          </div>
                    </div>
                    <div class="container box" style="margin-top: 23px;">
                         <h2 class="title">New Arrival:</h2>
                          <!--news page section-->
                                <div class="row justify-content-center">
                                    <?php if(isset($books) && !empty($books)){ ?>
                                    <?php foreach($books AS $obj){ ?> 
                                        <div class="col-lg-4 col-md-6 col-12">
                                            <div class="single-news">
                                                <ul class="meta">
                                                    <li><?php echo $this->lang->line('by'); ?> / <?php echo $obj->name; ?></li>
                                                    <li><?php echo date($this->setting->sms_date_format, strtotime($obj->date)); ?></li>
                                                </ul>
                                                <div class="content">
                                                    <a href="<?php echo site_url('book-detail/'.$obj->id); ?>">
                                                        <h2 class="title text-center">
                                                            <?php echo strip_tags(substr($obj->title, 0, 25)); ?> ...
                                                        </h2>
                                                    </a>
                                                    <p class="text">
                                                       <?php echo strip_tags(substr($obj->author, 0, 180)); ?> ...
                                                    </p>
                                                    <div class="more-wrapper">
                                                        <a href="<?php echo site_url('book-detail/'.$obj->id); ?>" class="more"><?php echo $this->lang->line('read_more'); ?></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    
                                    <?php } ?>
                                    <?php }else{ ?>
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                                            <p class="text-center"><strong><?php echo $this->lang->line('no_data_found'); ?></strong></p>
                                        </div>
                                    <?php } ?>            
                                </div>
                            <!--books shown-->
                    </div>
                </div>
                <div class="container" style="margin-top: 23px;">
                    <a href="#" class="page-button" style="padding: 7px 123px 7px 10px;font-size: 23px;"> News</a>
                    
                    <div class="container box" style="margin-top: 23px;">
                        <h2 class="title">Library Will Remain Close.</h2>
                         <p class="text-p">Feburary 01, 2022.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="container" style="margin-bottom: 12px">
                    <a href="#" class="page-button" style="padding: 7px 43px 7px 10px;font-size: 23px;"> Library Timings</a>
                    
                    <div class="container box1" style="margin-top: 23px;">
                        <h3>Monday-Thursday</h3>
                        <p >8:00 a.m to 12:20 Midnight</p>
                        <h3>Friday</h3>
                        <p>8:00 a.m to 12:20 Midnight</p>
                        <h3>Jummah Prayer Break</h3>
                        <p>1:00 to 3:00 p.m</p>
                        <h3>Saturday</h3>
                        <p>10:00 a.m to 12:20 Midnight</p>
                        <h3>Library Closed</h3>
                        <p>Sunday/Public Holidays</p>
                    </div>
                   
                </div>
                <div class="container" style="margin-bottom: 12px;margin-top: 23px;">
                    <a href="#" class="page-button" style="padding: 7px 43px 7px 10px;font-size: 23px;">Events</a>
                    
                    <div class="container box1" style="margin-top: 23px;">
                        <h3>Monday-Thursday</h3>
                        <p>8:00 a.m to 12:20 Midnight</p>
                        <h3>Friday</h3>
                        <p>8:00 a.m to 12:20 Midnight</p>
                         <!--news page section-->
                        <div class="row justify-content-center">
                            <?php if(isset($books) && !empty($books)){ ?>
                            <?php foreach($books AS $obj){ ?> 
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="single-news">
                                        <ul class="meta">
                                            <li><?php echo $this->lang->line('by'); ?> / <?php echo $obj->name; ?></li>
                                            <li><?php echo date($this->setting->sms_date_format, strtotime($obj->date)); ?></li>
                                        </ul>
                                        <div class="content">
                                            <a href="<?php echo site_url('book-detail/'.$obj->id); ?>">
                                                <h2 class="title text-center">
                                                    <?php echo strip_tags(substr($obj->title, 0, 25)); ?> ...
                                                </h2>
                                            </a>
                                            <p class="text">
                                               <?php echo strip_tags(substr($obj->author, 0, 180)); ?> ...
                                            </p>
                                            <div class="more-wrapper">
                                                <a href="<?php echo site_url('book-detail/'.$obj->id); ?>" class="more"><?php echo $this->lang->line('read_more'); ?></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            
                            <?php } ?>
                            <?php }else{ ?>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                                 <p class="text-center"><strong><?php echo $this->lang->line('no_data_found'); ?></strong></p>
                            </div>
                        <?php } ?>            
                     </div>
                        <!--books shown     -->
                    
                    </div>
                </div>
            </div> 
        </div>
        
        <div class="row justify-content-center" style="margin: 40px 0px;">
            
        </div>    
    </div>
</div>