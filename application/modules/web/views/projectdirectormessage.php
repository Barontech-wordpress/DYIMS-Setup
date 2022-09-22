<div class="page-header-area">
    <div class="container">
        <div class="page-header-content">
            <!-- <h2 class="title"><span class="inner"><?php echo $this->lang->line('project_director_message'); ?></span></h2>
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
                    <h1 class="chairman-title"><?php echo $this->lang->line('project_director_message'); ?></h1>
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
                <p class="chairman-designation">Project Director, DYIMS Institute</p>

                <p class="chairmain-text-message">I am delighted to welcome you to Dr Yahya Institute Of Medical Sciences (DYIMS).</p>

                <p class="chairmain-text-message">I have attained eminence in the healthcare field as a medical educationist. While at DYIMS, My top priority was to harvest my vehemence in modifying conventional ideas for edifying students. </p>

                <p class="chairmain-text-message">I am pleased to see DYIMS becoming functional. During the establishment of the institute, I ensured that everything was perfectly designed. I have pulled all the weight to turn the vision of Dr. Yahya into a beautiful reality. His exceptional aspirations for structuring an outstanding institute needed the incorporation of newly fangled technology and scientific equipment.</p>

                <p class="chairmain-text-message">I have personally checked the execution of his plans. Being optimistic, I am anticipating the superlative outcomes of our efforts. Students will surely receive contemporary facilities and education here as we have created the best learning environment for them. </p>

            </div>
            <div class="col-sm-12 col-lg-5">
            <img src="<?php echo site_url('/assets/images/personal/linkedin-sales-navigator-pAtA8xe_iVM-unsplash-1.webp')?>">
            </div>
        </div>
    </div>
</section>
