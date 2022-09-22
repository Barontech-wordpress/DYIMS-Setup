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
</style>
<div class="page-header-area">
    <div class="container">
        <div class="page-header-content">
            <h2 class="title"><span class="inner"><?php echo $this->lang->line('contact_us'); ?></span></h2>
            <!-- <ul class="links">
                <li><a href="<?php echo site_url(); ?>"><?php echo $this->lang->line('home'); ?></a></li>
                <li><a href="javascript:void(0);"><?php echo $this->lang->line('contact_us'); ?></a></li>
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

<div class="page-contact-info-area_">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-12">
                <?php $this->load->view('layout/message'); ?> 
            </div>
        </div>
    </div>
</div>

<div class="page-contact-info-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-12">
                <div class="contact-form">
                    <form action="<?php echo site_url('contact'); ?>" method="post" id="contact_us" name="contact_us" >
                        <div class="row">
                           <div class="col-12">
                                <div class="" style="border:0px;margin: 10px 0px;" >
                                        <h3 class="heading"><?php echo $this->lang->line('contact_form_top_text'); ?></h3>
                                        <p class="paragraph"><?php echo $this->lang->line('contact_form_top_para'); ?></p>
                                   
                                </div>
                            </div>
                            <div class="col-lg-4 col-sm-6 col-12">
                                    <label for="name">First Name <span style="color: red"> * </span></label> 
                                    <div class="form-box"> 
                                        <input type="text" name="name" id="name" required="required">
                                    </div>
                            </div>
                            <div class="col-lg-4 col-sm-6 col-12">
                                <label for="email">Email Address <span style="color: red"> * </span></label> 
                                <div class="form-box">
                                    <!-- <div class="icon-box">
                                        <span class="icon"><i class="fas fa-envelope"></i></span>
                                    </div> -->
                                    <input type="email" name="email" id="email" required="required" >
                                </div>
                            </div>
                            <div class="col-lg-4 col-sm-6 col-12">
                                 <label for="phone">Phone <span style="color: red"> * </span></label> 
                                <div class="form-box">
                                    <!-- <div class="icon-box">
                                        <span class="icon"><i class="fas fa-phone-volume"></i></span>
                                    </div> -->
                                    <input  type="text" name="phone" id="phone">
                                </div>
                            </div>
                            <!-- <div class="col-lg-6 col-sm-6 col-12">
                                <div class="form-box">
                                    <div class="icon-box">
                                        <span class="icon"><i class="far fa-file-alt"></i></span>
                                    </div>
                                    <input type="text" name="subject" id="subject"  placeholder="<?php echo $this->lang->line('subject'); ?>">
                                </div>
                            </div> -->

                            <div class="col-12">
                                <div class="" style="border:0px; margin: 10px 0px;" >
                                        <h3 class="heading"><?php echo $this->lang->line('contact_form_help'); ?></h3>
                                        <p class="paragraph"><?php echo $this->lang->line('contact_form_help_text'); ?></p>
                                </div>
                            </div>
                            <div class="col-12">
                                <label for="message">Comments / Questions <span style="color: red"> * </span></label> 
                                <div class="form-box">
                                    <!-- <div class="icon-box">
                                        <span class="icon"><i class="fas fa-pencil-alt"></i></span>
                                    </div> -->
                                    <textarea name="message" id="message" required="required" ></textarea>
                                </div>
                            </div>
                            <div class="col-12">
                                <!-- <div class="form-box submit text-right"> -->
                                <div class="form-box submit">
                                    <input type="submit" name="submit" id="submit" value="<?php echo $this->lang->line('submit'); ?>">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<div style="padding: 20px 15px 20px;">
<div class="container">
        <div class="row">
        <p style="color:#2e9cc1;font-size:22px;text-align:center;">We are available on service to provide information related to the allied health programs, Nursing Programs, Paramedical Diplomas admission criteria, and fee structure. We are here to answer your queries. <br>Feel free to contact us at:</p>
        </div>
    </div>
</div>
<div class="page-contact-info-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-12">
                <div class="pcia-info">
                    <!-- <div class="title-wrapper">
                        <h2 class="title">
                            <img src="<?php echo IMG_URL; ?>front/icon/heading-<?php echo $theme->slug; ?>.png" alt="">
                           <?php echo $this->lang->line('contact-us-cover'); ?> 
                        </h2>
                    </div> -->
                    <div class="row" style="place-content: center;">
                        <?php if(isset($this->setting->phone) && !empty($this->setting->phone)){ ?>
                            <div class="col-lg-4 col-sm-6 col-12" style="margin-top: 22px;">
                                <div class="pcia-info-box">
                                    <div class="icon">
                                        <span class="box"><i class="fas fa-phone-volume"></i></span>
                                    </div>
                                    <h3 class="title">
                                        <?php echo $this->lang->line('contact-call-us'); ?>
                                    </h3>
                                    <!-- <p class="text"><?php echo $this->lang->line('phone'); ?>: <?php echo $this->setting->phone; ?></p> -->
                                    <p class="text"><?php echo $this->setting->phone; ?></p>
                                </div>
                            </div>
                        <?php } ?>
                        
                        <!-- <?php if(isset($this->setting->school_fax) && !empty($this->setting->school_fax)){ ?>
                            <div class="col-lg-6 col-sm-6 col-12">
                                <div class="pcia-info-box">
                                    <div class="icon">
                                        <span class="box"><i class="fas fa-fax"></i></span>
                                    </div>
                                    <p class="text"><?php echo $this->lang->line('school_fax'); ?>: <?php echo $this->setting->school_fax; ?></p>
                                </div>
                            </div>
                        <?php } ?> -->
                        
                        <?php if(isset($this->setting->email) && !empty($this->setting->email)){ ?>
                            <div class="col-lg-4 col-sm-6 col-12" style="margin-top: 22px;">
                                <div class="pcia-info-box">
                                    <div class="icon">
                                        <span class="box"><i class="fas fa-envelope"></i></span>
                                        </div>
                                    <h3 class="title">
                                        <?php echo $this->lang->line('contact-write-us'); ?>
                                    </h3>
                                    <!-- <p class="text"><?php echo $this->lang->line('email'); ?>: <?php echo $this->setting->email; ?></p> -->
                                    <p class="text"><?php echo $this->setting->email; ?></p>
                                </div>
                            </div>
                        <?php } ?>
                        
                        <?php if(isset($this->setting->address) && !empty($this->setting->address)){ ?>
                            <div class="col-lg-4 col-sm-6 col-12" style="margin-top: 22px;">
                                <div class="pcia-info-box">
                                    <div class="icon">
                                        <span class="box"><i class="fas fa-map-marker-alt"></i></span>
                                        </div>
                                    <h3 class="title">
                                        <?php echo $this->lang->line('contact-campus-us'); ?>
                                    </h3>
                                    <!-- <p class="text"><?php echo $this->lang->line('address'); ?>: <?php echo $this->setting->address; ?></p> -->
                                    <p class="text"><?php echo $this->setting->address; ?></p>
                                </div>
                            </div>
                        <?php } ?>
                            <div class="col-lg-4 col-sm-6 col-12" style="margin-top: 22px;">
                                <div class="pcia-info-box">
                                    <div class="icon">
                                        <span class="box"><i class="fas fa-comment"></i></span>
                                        </div>
                                    <h3 class="title">
                                        <?php echo $this->lang->line('whatsapp-text'); ?>
                                    </h3>
                                    <br>
                                    <a class="text" style="padding: 12px 0px;" href="<?php echo $this->lang->line('whatsapp-number'); ?>"><?php echo $this->lang->line('whatsapp-number'); ?></a></p>
                                    <!-- <p class="text"><?php echo $this->setting->address; ?></p> -->
                                </div>
                            </div>

                            <div class="col-lg-4 col-sm-6 col-12" style="margin-top: 22px;">
                                <div class="pcia-info-box">
                                    <div class="icon">
                                        <span class="box"><i class="fas fa-thumbtack"></i></span>
                                        </div>
                                    <h3 class="title">
                                        <?php echo $this->lang->line('website-link'); ?>
                                    </h3>
                                    <a class="text"style="padding: 12px 0px;" href="<?php echo $this->lang->line('website-link-1'); ?>"><?php echo $this->lang->line('website-link-1'); ?></a>
                                    <!-- <p class="text"><?php echo $this->setting->address; ?></p> -->
                                </div>
                            </div>

                    </div>
                </div>
            </div>
                   </div>
    </div>
</div>

<div class="page-contact-info-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-12">
               <!--    
               <div class="container">
                        <ul class="nav nav-pills nav-stacked col-md-2">
                        <li class="active"><a href="#tab_a" data-toggle="pill">Pill A</a></li>
                        <li><a href="#tab_b" data-toggle="pill">Pill B</a></li>
                        <li><a href="#tab_c" data-toggle="pill">Pill C</a></li>
                        <li><a href="#tab_d" data-toggle="pill">Pill D</a></li>
                        </ul>
                        <div class="tab-content col-md-10">
                                <div class="tab-pane active" id="tab_a">
                                    <h4>Pane A</h4>
                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.</p>
                                </div>
                                <div class="tab-pane" id="tab_b">
                                    <h4>Pane B</h4>
                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.</p>
                                </div>
                                <div class="tab-pane" id="tab_c">
                                    <h4>Pane C</h4>
                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.</p>
                                </div>
                                <div class="tab-pane" id="tab_d">
                                    <h4>Pane D</h4>
                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.</p>
                                </div>
                        </div>
                        // tab content 
                    </div> // end of container
                    -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- <?php if(isset($this->setting->google_map) && !empty($this->setting->google_map)){ ?>
<div class="map-area">
    <?php echo $this->setting->google_map; ?>    
</div>
<?php }?> -->

<style>

    /*Pen code from this point on*/
.btn {
  clear:both;
  white-space:nowrap;
  font-size:.8em;
  display:inline-block;
  border-radius:5px;
  box-shadow: 0 1px 5px 0 rgba(0, 0, 0, 0.35);
  margin:2px;
  -webkit-transition:all .5s;
  -moz-transition:all .5s;
  transition:all .5s;
  overflow:hidden
}

.btn:hover {
  box-shadow: 0 5px 15px 0 rgba(0, 0, 0, 0.45);
}

.btn:focus {
  box-shadow: 0 3px 10px 0 rgba(0, 0, 0, 0.4);
}

.btn > span,.btn-icon > i {
  float:left;
  padding:13px;
  -webkit-transition:all .5s;
  -moz-transition:all .5s;
  transition:all .5s;
  line-height:1em
}

.btn > span {
  padding:14px 18px 16px;
  white-space:nowrap;
  color:#FFF;
  background:#b8b8b8
}

.btn:focus > span {
  background:#9a9a9a
}

.btn-icon > i {
  border-radius:5px 0 0 5px;
  position:relative;
  width:13px;
  text-align:center;
  font-size:1.25em;
  color:#fff;
  background:#212121
}

.btn-icon > i:after {
  content:"";
  border:8px solid;
  border-color:transparent transparent transparent #222;
  position:absolute;
  top:13px;
  right:-15px
}

.btn-icon:hover > i,.btn-icon:focus > i {
  color:#FFF
}

.btn-icon > span {
  border-radius:0 5px 5px 0
}

/*Facebook*/
.btn-facebook:hover > i,.btn-facebook:focus > i {
  color:#3b5998
}

.btn-facebook > span {
  background:#3b5998
}

/*Twitter*/
.btn-twitter:hover > i,.btn-twitter:focus > i {
  color:#55acee
}

.btn-twitter > span {
  background:#55acee
}

/*Google*/
.btn-googleplus:hover > i,.btn-googleplus:focus > i {
  color:#dd4b39
}

.btn-googleplus > span {
  background:#dd4b39
}

/*Pinterest*/
.btn-pinterest:hover > i,.btn-pinterest:focus > i {
  color:#cb2028
}

.btn-pinterest > span {
  background:#cb2028
}

/*LinkedIn*/
.btn-linkedin:hover > i,.btn-linkedin:focus > i {
  color:#007bb6
}

.btn-linkedin > span {
  background:#007bb6
}
</style>
<section>
    <div class="container">
        <div id="social-platforms" style="text-align: center;padding-bottom: 35px">
            <h1>Stay updated with us:</h1>
            
            <a class="btn btn-icon btn-facebook" href="#"><i class="fa fa-facebook"></i><span>Facebook</span></a>
            <a class="btn btn-icon btn-twitter" href="#"><i class="fa fa-twitter"></i><span>Twitter</span></a>
            <a class="btn btn-icon btn-googleplus" href="#"><i class="fa fa-google-plus"></i><span>Google+</span></a>
            <a class="btn btn-icon btn-pinterest" href="#"><i class="fa fa-pinterest"></i><span>Pinterest</span></a>
            <a class="btn btn-icon btn-linkedin" href="#"><i class="fa fa-linkedin"></i><span>LinkedIn</span></a>
        </div>
    </div>
</section>


<script type="text/javascript">
     $('#contact_us').validate();
</script>