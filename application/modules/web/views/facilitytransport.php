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
            padding: 33px 30px 37px 30px !important;
            margin-top: -30% !important;
        }
        .heading-title{
            font-size: 33px !important;
        }
        .heading-title-text{
            font-size: 18px !important;
         }
         #heading-section-1 {
                margin: 26% auto 3% !important;
            }


    }
.page-header-area {
    background-image: url('./assets/images/personal/transport/16722831_1250630768363572_8597306274937805772_o-1024x682-1.jpg');
    margin-top: 150px;
    height: 461px;
}  

.section-blue-box{

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
.heading-title{
    font-size: 39px;
    color: white !important;
    font-family: inherit;
    font-weight: 700;
}

.heading-title-text{
    font-size: 20px;
    color: white;
    margin: 29px 0px;
}

#heading-section-1{
margin: 15% auto 3%;
}

</style>

<section id="section-blue-box">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-6">
                <div class="chairmain-msg-head">
                <h1 class="heading-title"><?php echo $this->lang->line('transport_facility_heading'); ?></h1>
                    <p class="heading-title-text"><?php echo $this->lang->line('transport_facility_text'); ?></p>
                </div>
            </div>
            <div class="col-sm-12 col-lg-6"></div>
        </div>
    </div>
</section>


<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
<style>
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
}
.grid-wrapper .wide {
	grid-column: span 2;
    grid-row: span 2;

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
font-size: 18px;
font-weight: 100;
font-family: sans-serif;
max-width: 1200px;
padding: 50px 180px !important;
color: #292929;
line-height: 30px;
}
}

.inside-text-message {
    font-size: 20px;
    color: #292929;
    margin: 0 0 38px;
    text-align: left;
}
</style>


<section id="heading-section-1">
    <div class="container">
        <!-- <i class="fa-duotone fa-bus"></i> -->
        <div class="row" style="margin: 12px auto;">
            <div class="col-lg-1 col-sm-12">
               <!-- <img src="https://img.icons8.com/ios/100/000000/goal.png"/> -->
               <i class="fas fa-bus-alt" style="font-size: 70px;color: #2e9cc1;"></i>
            </div>
            <div class="col-lg-11 col-sm-12">
                <p class="inside-text-message">DYIMS is also offering transport services. The college will provide buses that are comfortable and safe for traveling. Trained drivers are punctual so the students can time travel to the campus and back to their homes without any hassle. The travel fair of the transport services is kept affordable for the convenience of the students.</p>
            </div>
        </div>
        <div class="grid-wrapper">
            <div class="tall">
                <img src="./assets/images/personal/transport/DSC00316-scaled.jpg" />
            </div>
            <div class="wide">
                <img src="./assets/images/personal/transport/Transport-1024x767-1.jpg" />
            </div>
            <div class="tall">
                <img src="./assets/images/personal/transport/DSC00317-scaled.jpg" />
            </div>
        </div>

    </div>
</section>