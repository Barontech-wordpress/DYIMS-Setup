<div class="page-header-area">
    <div class="container">
        <div class="page-header-content">
            <!-- <h2 class="title"><span class="inner"><?php echo $this->lang->line('affiliations_page_heading'); ?></span></h2>
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
            width: 340px !important;
            padding: 40px 32px 43px 32px !important;
        }
        .chairman-title{
            font-size: 33px !important;
        }
        .affiliation-heading-middle {
            font-size: 41px !important;
        }
        .chairman-title-text{
            font-size: 18px !important;
         }
         #chairman-info {
            margin: 74% auto !important;
        }
        .chairman-name {
            font-size: 30px !important;
        }
    }
.page-header-area {
    background-image: url('./assets/images/personal/IMG_9203-scaled.jpg');
    margin-top: 150px;
    height: 461px;
}    
.chairmain-msg-head{
    position: absolute;
    margin-top: -19%;
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

.chairman-title-text{
    font-size: 20px;
    color: white;
    margin: 29px 0px;
}
#chairman-info{
    padding: 0px 30px;
    margin: 20% auto;
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
    text-align: left;
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
.qec-ani:hover{
    --scale: 1.03682;
    transform: scale(var(--scale));
    transition: background .3s,border .3s,border-radius .3s,box-shadow .3s,-webkit-border-radius .3s,-webkit-box-shadow .3s;
}

</style>

<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-6">
                <div class="chairmain-msg-head">
                    <h1 class="chairman-title"><?php echo $this->lang->line('qec_page_heading'); ?></h1>
                    <p class="chairman-title-text"><?php echo $this->lang->line('qec_page_text'); ?></p>
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
                <h3 class="chairman-name">Major Khawaja Abrar Ahmed (R)</h3>
                <p class="chairman-designation">Chairman, Afro-Asian Institute</p>

                <p class="chairmain-text-message">Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio earum velit ducimus voluptatum incidunt sapiente doloribus accusantium vero, eius nam aut dolores facere blanditiis perferendis accusamus sint, praesentium officia aliquid quo architecto praesentium officia aliquid quo architecto praesentium officia aliquid quo architecto!</p>

                <p class="chairmain-text-message">Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio earum velit ducimus voluptatum incidunt sapiente doloribus accusantium vero, eius nam aut dolores facere blanditiis perferendis accusamus sint, praesentium officia aliquid quo architecto praesentium officia aliquid quo architecto praesentium officia aliquid quo architecto!</p>

                <p class="chairmain-text-message">Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio earum velit ducimus voluptatum incidunt sapiente doloribus accusantium vero, eius nam aut dolores facere blanditiis perferendis accusamus sint, praesentium officia aliquid quo architecto praesentium officia aliquid quo architecto architecto praesentium officia aliquid quo architecto architecto praesentium officia aliquid quo architecto architecto praesentium officia aliquid quo architecto</p>

                <!-- <p class="chairmain-text-message">Lorem ipsum dolor sit amet consectetur adipisicing elit. Optio earum velit ducimus voluptatum incidunt sapiente doloribus accusantium vero, eius nam aut dolores facere blanditiis perferendis .</p>

                <p class="chairmain-text-message">I look forward to welcoming you here.</p> -->
            </div>
            <div class="col-sm-12 col-lg-5">
            <img class="qec-ani" src="<?php echo site_url('/assets/images/personal/3H3A4692-Slider-scaled-1-1-removebg-preview.png')?>">
            </div>
        </div>
    </div>
</section>