<div class="page-header-area">
    <div class="container">
        <div class="page-header-content">
            <!-- <h2 class="title"><span class="inner"><?php echo $this->lang->line('chairman_message'); ?></span></h2>
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
    width:700px;
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
    margin:10px auto;
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
                    <h1 class="chairman-title"><?php echo $this->lang->line('chairman_message'); ?></h1>
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
                <h3 class="chairman-name">Dr. Muhammad Yahya</h3>
                <p class="chairman-designation">Chairman, DYIMS Institute</p>

                <p class="chairmain-text-message">
                Being the 1st surgeon of Layyah I felt that I must go above and beyond the call of duty to render my services to people. Years back, I envisioned empowering the students of Layyah. I perceived that there was a dire need for healthcare technologists, Nurses, and Paramedics so from there ideology of DYIMS arose. 
Today, I am elated to proclaim that we have successfully transformed our vision into reality. I was headstrong and determined to enlighten the students about the significance of Allied health professions, Nursing & Paramedics. My goal was to open new horizons in professional fields for the student of South Punjab and nearby vicinities. My love for my land has inspired me to lay the foundation of this DYIMS. I have made certain that all the facilities, faculty members, and infrastructure of the institute be level pegging to the National and International levels. I am confident that students graduating from our institute will be respected in their province, in Pakistan, and the world. I am eager to see the students of Layyah growing and prospering in the medical field. Extending my best wishes to all the enrolling students.
                </p>

                <p class="strong-text"><strong>I Look forward to welcome you at DYIMS Institute.</strong></p>
            </div>
            <div class="col-sm-12 col-lg-5">
            <img src="<?php echo site_url('/assets/images/personal/chairman.jpeg')?>">
            </div>
        </div>
    </div>
</section>
