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
            padding: 50px 35px 55px 36px !important;
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
        #accordation-section {
            margin: 85% auto !important;
        }
    }
    .page-header-area {
    background-image: url('./assets/images/personal/IMG-20211229-WA0039-1.jpg');
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
#accordation-section{
    margin: 20% 5%;
}
</style>

<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-6">
                <div class="chairmain-msg-head">
                    <h1 class="chairman-title"><?php echo $this->lang->line('collaboration_page_heading'); ?></h1>
                    <p class="chairman-title-text"><?php echo $this->lang->line('collaboration_page_text'); ?></p>
                </div>
            </div>
            <div class="col-sm-12 col-lg-6"></div>
        </div>
    </div>
</section>



<style>
    #accordation-section .accordion {
        /* background-color: #f1f1f1; */
        background-color: white !important;
        /* border: 1px solid #e1e1cb; */
        border: white !important;
    }
    #accordation-section .accordion-button {
    font-size: 22px !important;
    font-weight: 600 !important;
    color: #0a2052 !important;
    padding: 2rem 1.25rem !important;
    }
    #accordation-section .accordion-button:hover {
        color: #239cc1 !important;
    }
    #accordation-section .accordion-button:not(.collapsed) {
    /* background-color: #e7f1ff; */
    background-color: white !important;
    }
    #accordation-section .accordion-collapse .card-body p{
        font-size: 18px !important;
    }
    #accordation-section .accordion-collapse .card-body a{
        font-size: 18px !important;
    }
    .accordion-button::after {
        width: 3.25rem !important;
        height: 2.25rem!important;
        background-size: 2rem!important;
    }
    .accordion-button:not(.collapsed)::after {
    background-image: url(data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 16 16' fill='%230c63e4'%3e%3cpath fill-rule='evenodd' d='M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z'/%3e%3c/svg%3e);
    transform: rotate(-180deg);
    }
    .accordion-button::after {
    flex-shrink: 0;
    /* width: 1.25rem;
    height: 1.25rem; */
    /* background-size: 1.25rem; */
    margin-left: auto;
    content: "";
    background-image: url(data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 16 16' fill='%23212529'%3e%3cpath fill-rule='evenodd' d='M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z'/%3e%3c/svg%3e);
    }

    /* @media screen and (max-width:1024px){
        #accordation-section .m-4 {
            margin: 5.5rem !important;
        }
    } */
</style>

<section id="accordation-section">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

<div class="m-4">
    <div class="accordion" id="myAccordion">
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingOne">
                <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collapseOne">What Govt. Said Mitha Teaching Hospital, Lahore</button>									
            </h2>
            <div id="collapseOne" class="accordion-collapse collapse">
                <div class="card-body">
                    <img src="<?php echo site_url('/assets/images/personal/274622_45538106-300x238.png');?>" style="max-width: 166px;">
                    <p>HTML stands for HyperText Markup Language. HTML is the standard markup language for describing the structure of web pages. <a href="https" target="_blank">Learn more.</a></p>
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingTwo">
                <button type="button" class="accordion-button" data-bs-toggle="collapse" data-bs-target="#collapseTwo">Govt. Said Mitha Teaching Hospital, Lahore</button>
            </h2>
            <div id="collapseTwo" class="accordion-collapse collapse show">
                <div class="card-body">
                    <img src="<?php echo site_url('/assets/images/personal/274622_45538106-300x238.png');?>" style="max-width: 166px;">
                    <p>Bootstrap is a sleek, intuitive, and powerful front-end framework for faster and easier web development. It is a collection of CSS and HTML conventions. <a href="https" target="_blank">Learn more.</a></p>
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingThree">
                <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collapseThree">Govt. Said Mitha Teaching Hospital, Lahore</button>                     
            </h2>
            <div id="collapseThree" class="accordion-collapse collapse">
                <div class="card-body">
                    <img src="<?php echo site_url('/assets/images/personal/274622_45538106-300x238.png');?>" style="max-width: 166px;">
                    <p>CSS stands for Cascading Style Sheet. CSS allows you to specify various style properties for a given HTML element such as colors, backgrounds, fonts etc. <a href="https" target="_blank">Learn more.</a></p>
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingThree">
                <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collapseThree">Govt. Said Mitha Teaching Hospital, Lahore</button>                     
            </h2>
            <div id="collapseThree" class="accordion-collapse collapse">
                <div class="card-body">
                    <img src="<?php echo site_url('/assets/images/personal/274622_45538106-300x238.png');?>" style="max-width: 166px;">
                    <p>CSS stands for Cascading Style Sheet. CSS allows you to specify various style properties for a given HTML element such as colors, backgrounds, fonts etc. <a href="https://www" target="_blank">Learn more.</a></p>
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingThree">
                <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collapseThree">Govt. Said Mitha Teaching Hospital, Lahore</button>                     
            </h2>
            <div id="collapseThree" class="accordion-collapse collapse">
                <div class="card-body">
                    <img src="<?php echo site_url('/assets/images/personal/274622_45538106-300x238.png');?>" style="max-width: 166px;">
                    <p>CSS stands for Cascading Style Sheet. CSS allows you to specify various style properties for a given HTML element such as colors, backgrounds, fonts etc. <a href="https" target="_blank">Learn more.</a></p>
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingThree">
                <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collapseThree">Govt. Said Mitha Teaching Hospital, Lahore</button>                     
            </h2>
            <div id="collapseThree" class="accordion-collapse collapse">
                <div class="card-body">
                    <img src="<?php echo site_url('/assets/images/personal/274622_45538106-300x238.png');?>" style="max-width: 166px;">
                    <p>CSS stands for Cascading Style Sheet. CSS allows you to specify various style properties for a given HTML element such as colors, backgrounds, fonts etc. <a href="https://www" target="_blank">Learn more.</a></p>
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingThree">
                <button type="button" class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collapseThree">Govt. Said Mitha Teaching Hospital, Lahore</button>                     
            </h2>
            <div id="collapseThree" class="accordion-collapse collapse">
                <div class="card-body">
                    <img src="<?php echo site_url('/assets/images/personal/274622_45538106-300x238.png');?>" style="max-width: 166px;">
                    <p>CSS stands for Cascading Style Sheet. CSS allows you to specify various style properties for a given HTML element such as colors, backgrounds, fonts etc. <a href="https://www" target="_blank">Learn more.</a></p>
                </div>
            </div>
        </div>
    </div>
</div>                           

</section>