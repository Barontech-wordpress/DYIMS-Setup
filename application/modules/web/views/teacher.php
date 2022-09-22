<div class="page-header-area">
    <div class="container">
        <div class="page-header-content">
            <h2 class="title"><span class="inner"><?php echo $this->lang->line('our_faculty'); ?></span></h2>
            <!-- <ul class="links">
                <li><a href="<?php echo site_url(); ?>"><?php echo $this->lang->line('home'); ?></a></li>
                <li><a href="javascript:void(0);"><?php echo $this->lang->line('teacher'); ?></a></li>
            </ul> -->
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
.page-header-area {
  margin-top: 150px;
  padding: 150px 0 140px;
  background-image: url(./../../../assets/images/dyi.jpg);
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
    @media only screen and (max-width: 480px)
    {
        .title-heading {
            font-weight: 800 !important;
            font-size: 29px !important;
            color: black;
            margin: 10px 0px;
            line-height: 46px;
            text-align:center;
        }
        .single-teacher .social li {
            margin-right: 3px;
        }
        .single-teacher .top {
            text-align: center;
            padding: 38px 10px 26px !important;
        }
        .single-teacher .title {
            font-weight: 700 !important;
            color: #173162;
            margin-top: 8px;}
        .single-teacher .category .inner {
                font-size: 13px;
                font-weight: 550;
                color: #173162;
            }

    }
    .title-heading{
        font-weight:800;
        font-size: 44px;
        color: black;
        margin: 10px 0px;
    }
    
    .para-text{
        color: #1e264c ;
        margin: 10px 0px 30px 10px;
        font-size:16px;
        font-weight:500;
    }
    .single-teacher .top {
        text-align: center;
        padding: 38px 30px 26px;
    }
    .single-teacher .meta{
        background-color: white;
        color: #173162;
        margin-left: -20px;
    }
    .single-teacher .category .inner {
        border-bottom: 0px;
        padding: 0px 0px 2px 0px;
        text-transform: inherit;
        color: #173162;
    }
    .single-teacher{
        display: flex;
        border-bottom: 5px solid #2B86B5;
        padding: 10px 0px;
    }
    .single-teacher .title {
    font-weight: 800;
    color: #173162;
    margin-top: 8px;
    }
    .single-teacher .category .inner {
    font-size: 14px;
    }
    .single-teacher .social li a, .gallery-menu .button {
     border: 0px solid #007bff;
    }
    .single-teacher .img img {
    height: 110px;
    width: 110px;
    object-fit: cover;
    border-radius: 10%;
    }
    .single-teacher::before {
    /*content: "";*/
    content: none;
    background-repeat: no-repeat;
    background-size: 100%;
    background-position: top;
    position: absolute;
    z-index: -1;
    top: 0;
    left: 0;
    height: 55px;
    width: 100%;
    transition: 0.3s;
    }
    .single-teacher::after {
    /*content: "";*/
    content: none;
    background-repeat: no-repeat;
    background-size: 100%;
    background-position: bottom;
    position: absolute;
    z-index: -1;
    bottom: -1px;
    left: 0;
    height: 53px;
    width: 100%;
    transition: 0.3s;
    }
    .social li img{
        max-width: 36px;
    }
    .single-teacher .social {
    margin-top: 5px;}
</style>

<div class="page-notice-area" style="background-color: white;">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-12">
                <h2 class="title-heading">
                    <?php echo $this->lang->line('teacher-heading'); ?>
                </h2>
            </div>
            <p class="para-text">
                <?php echo $this->lang->line('teacher-heading_text'); ?>
            </p>
        </div>    
    </div>
    <div class="container">
        <div class="row justify-content-center">
            <?php if(isset($teachers) && !empty($teachers)){ ?>
                <?php foreach($teachers as $obj){ ?>   
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single-teacher">
                            <div class="top">
                                <div class="img">
                                    <?php if(isset($obj->photo) && !empty($obj->photo)){ ?>
                                        <img src="<?php echo UPLOAD_PATH; ?>teacher-photo/<?php echo $obj->photo; ?>" alt="">
                                    <?php }else{ ?>
                                        <img src="<?php echo IMG_URL; ?>default-user.png" alt="">
                                    <?php } ?>
                                </div>
                               
                                <ul class="social">
                                    <?php if($obj->instagram_url){ ?>    
                                        <!--<li><a target="_blank" href="<?php echo $obj->instagram_url; ?>"><i class="fab fa-instagram"></i></a></li>-->
                                        <li><a target="_blank" href="<?php echo $obj->instagram_url; ?>"><img src="<?php echo site_url('/assets/images/insta-icon.png');?>" style="max-width:32px!important;"></a></li>
                                     <?php } ?>
                                    <!--<?php if($obj->linkedin_url){ ?>    -->
                                    <!--    <li><a target="_blank" href="<?php echo $obj->linkedin_url; ?>"><i class="fab fa-linkedin-in"></i></a></li>-->
                                    <!-- <?php } ?>-->
                                    <?php if($obj->twitter_url){ ?>
                                        <!--<li><a target="_blank" href="<?php echo $obj->twitter_url; ?>"><i class="fab fa-twitter"></i></a></li>-->
                                         <li><a target="_blank" href="<?php echo $obj->twitter_url; ?>"><img src="<?php echo site_url('/assets/images/Twitter-icon.png');?>" style="max-width:38px!important;"></a></li>
                                     <?php } ?>                                    
                                    <?php if($obj->facebook_url){ ?>
                                        <!--<li><a target="_blank" href="<?php echo $obj->facebook_url; ?>"><i class="fab fa-facebook-f"></i></a></li>-->
                                         <li><a target="_blank" href="<?php echo $obj->facebook_url; ?>"><img src="<?php echo site_url('/assets/images/fb-icon.png');?>" width= "43px"></a></li>
                                    <?php } ?>
                                    <!--<?php if($obj->pinterest_url){ ?>-->
                                    <!--    <li><a target="_blank" href="<?php echo $obj->pinterest_url; ?>"><i class="fab fa-pinterest"></i></a></li>-->
                                    <!--<?php } ?>-->
                                    <!--<?php if($obj->youtube_url){ ?>-->
                                    <!--    <li><a target="_blank" href="<?php echo $obj->youtube_url; ?>"><i class="fab fa-youtube"></i></a></li>-->
                                    <!--<?php } ?>  -->
                                </ul>
                            </div>
                            
                            <div class="bottom">
                                <h4 class="title"><?php echo $obj->name; ?></h4>
                                <p class="category"><span class="inner"><?php echo $obj->department; ?></span></p>
                                <ul class="meta">
                                    <li> <?php echo $obj->phone ? $obj->phone : '&nbsp;'; ?></li>
                                    <li style="word-break: break-all;"><?php echo $obj->email ? $obj->email : '&nbsp;'; ?></li>
                                    <!--<li><?php echo $obj->present_address ? $obj->present_address : '&nbsp;'; ?></li>-->
                                    <!--<li><span class="icon"><i class="fas fa-tint"></i></span> B+</li>-->
                                </ul>
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
</div>