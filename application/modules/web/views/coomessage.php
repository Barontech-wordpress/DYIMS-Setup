<div class="page-header-area">
    <div class="container">
        <div class="page-header-content">
            <!-- <h2 class="title"><span class="inner"><?php echo $this->lang->line('coo_message'); ?></span></h2>
            <h2 class="title-2">
                <?php if(isset($this->setting->school_name)){ ?>
                <?php echo $this->setting->school_name; ?>
                <?php }else{ ?> <?php echo SMS; ?> <?php } ?>
            </h2> -->
        </div>
    </div>
</div>

<style>
    @media screen and (max-width:600px){
        .chairmain-msg-head{
            width: 365px !important;
        }
        .chairman-title{
            font-size: 33px !important;
        }
        .chairman-name {
            font-size: 30px !important;
        }
        .chairmain-text-message{
            font-size: 19px !important;
        }
        #chairman-info {
            margin: 52% auto !important;
        }
    }
.page-header-area {
    margin-top: 150px;
    height: 461px;
}    
.chairmain-msg-head{
    position: absolute;
    margin-top: -11%;
    width:750px;
    background-color: #0a2052;
    z-index: 1;
    /* margin: -100px 0 0 0; */
    padding: 65px 40px 70px 40px; 
}
.chairman-title{
    font-size: 39px;
    color: white !important;
}
#chairman-info{
    padding: 0px 30px;
    margin: 14% auto;
}
.chairman-name{
    font-size: 40px;
    font-weight: 700;
    line-height: 44px;
}
.chairman-designation{
    color: #747474;
    margin:20px auto;
}
.chairmain-text-message{
    font-size: 20px;
    color: #292929;
    margin: 0 0 18px;
    text-align: justify;
}
.strong-text{
    font-size: 20px;
    color: black;
    font-weight: 700;
}
@media only screen and (min-width: 1200px)
{
    .container {
    max-width: 1300px;
        }
}
.right-space{
    padding-right: 3%;
}
</style>
<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-6">
                <div class="chairmain-msg-head">
                    <h1 class="chairman-title"><?php echo $this->lang->line('coo_message'); ?></h1>
                </div>
            </div>
            <div class="col-sm-12 col-lg-6"></div>
        </div>
    </div>
</section>
<section id="chairman-info">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-7 right-space">
                <h3 class="chairman-name">Dr. Ali Yahya</h3>
                <p class="chairman-designation">COO, DYIMS Institute</p>

                <p class="chairmain-text-message">At DYIMS, we are dedicated to inculcating critical thinking and creativity in our students by providing them with knowledge, skills, and, values. Our purpose is to render our part in nurturing young minds and steer them to the right path. Considering the increased demand for skilled medical professionals and technicians in our community and across the world, we are striving to create the best opportunities for students.</p>

                <p class="chairmain-text-message">I aspire to make students acquainted with the fact there is a digital disruption in the world. I want my students to be technology geeks while being medico. I want them to unravel their inner entrepreneurs and exhibit their skills in telemedicine and other new domains. I am so hopeful that students will take an interest in entrepreneurship and research.</p>

                <p class="chairmain-text-message">At present times, students can earn dollars by stepping into the digital world. So we will be polishing all their skills so that they can excel in the virtual medium too. I also ensure that quality learning and a secured future are destined for students joining us at DYIMS.</p>

            </div>
            <div class="col-sm-12 col-lg-5">
            <img src="<?php echo site_url('/assets/images/personal/coo.jpeg')?>">
            </div>
        </div>
    </div>
</section>
