<style>
    html,body {
    margin:0;
    padding:0;
    overflow-x:hidden;
}
.page-header-area {
    /* background-image: url('./assets/images/news.png'); */
    margin-top: 150px;
    height: 610px;
}  
.chairmain-msg-head{
    position: absolute;
    margin-top: -19%;
    width: 750px;
    background-color: #0a2052;
    z-index: 1;
    /* margin: -100px 0 0 0; */
    padding: 65px 40px 70px 40px; 
}
@media only screen and (max-width: 600px) {
    .chairmain-msg-head {
    width: 345px !important;
    padding: 33px 30px 37px 30px !important;
    margin-top: -15% !important;
}}
/*-------------------------------------------------------------------------------------------------*/


img {
	max-width: 100%;
	height: auto;
	vertical-align: middle;
	display: inline-block;
}

/* Main CSS */
.grid-wrapper > div {
	display: flex;
	justify-content: center;
	align-items: center;
}
.grid-wrapper > div > img {
	width: 100%;
	height: 100%;
	object-fit: cover;
	border-radius: 5px;
    
}

.grid-wrapper {
	display: grid;
	grid-gap: 10px;
	grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
	grid-auto-rows: 200px;
	grid-auto-flow: dense;
    margin: 20px;
}
.grid-wrapper .wide {
	grid-column: span 2;
}
.grid-wrapper .tall {
	grid-row: span 2;
}
.grid-wrapper .big {
	grid-column: span 2;
	grid-row: span 2;
}
@media only screen and (min-width: 600px) {
.heading{
    font-size: 24px;
    font-weight: 300;
    padding: 100px 50px 30px 50px!important;
    color: #292929;
    line-height: 30px;
}}

@media only screen and (max-width: 600px) {
  .heading{
    padding: 65px 10px !important;
    margin:  10px !important;
    max-width: 100%;
  }
  img {
    
	max-width: 90%;
    max-height:    90%;
	height: auto;
	vertical-align: middle;
	display: inline-block;
}
.grid-wrapper {
	display: grid;
	grid-gap: 5px;
	grid-template-columns: repeat(auto-fit, minmax( 150px, 1fr));
	grid-auto-rows: 150px;
	grid-auto-flow: dense;
    margin: 5px;
}
.grid-wrapper .wide {
	grid-column: span 1;
}
.grid-wrapper .tall {
	grid-row: span 1;
}
.grid-wrapper .big {
	grid-column: span 1;
	grid-row: span 1;
}
}

</style>



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

<section id="section-blue-box">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-6">
                <div class="chairmain-msg-head">
                <h1 class="heading-title" style="color: white;">Study Tour</h1>
                    <!-- <p class="heading-title-text"><?php echo $this->lang->line('transport_facility_text'); ?></p> -->
                </div>
            </div>
            <div class="col-sm-12 col-lg-6"></div>
        </div>
    </div>
</section>
<!---------------------------------------------------------------------------------------------------------------------------------------------------->

<body><i class="fa-duotone fa-book-open-cover"></i> 

    <div class="heading">Study tours are designed to amalgamate education with entertainment. Students are hit by a wave of excitement when they are asked to learn the things out of their campus. They usually in a need of change and love to be explored in a new environment where they can interact with scholarly and inspirational people.</h2>
       </div>
     <div class="grid-wrapper">
        <div>
           
            <img src="/images/1.jpg" />
        </div>
        <div>
            <img src="/images/2.jpg" />
        </div>
        <div class="tall">
            <img src="/images/3.jpg" />
        </div>
        <div class="wide">
            <img src="/images/4.jpg" />
        </div>
        <div>
            <img src="/images/5.jpg" />
        </div>
        <div class="tall">
            <img src="/images/6.jpg" />
        </div>
        <div class="big">
            <img src="/images/7.jpg" />
        </div>
        <div>
            <img src="/images/8.jpg" />
        </div>
        <div class="wide">
            <img src="/images/9.jpg" />
        </div>
        <div class="big">
            <img src="/images/10.jpg" />
        </div>
        <div class="tall">
            <img src="/images//2.jpg" />
        </div>
        <div>
            <img src="/images/8.jpg" />
        </div>
        <div>
            <img src="/images/5.jpg" />
        </div>
        <div>
            <img src="/images/1.jpg" />
        </div> 
    </div>
   