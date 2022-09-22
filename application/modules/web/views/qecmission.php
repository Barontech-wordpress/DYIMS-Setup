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
        .heading-title{
            font-size: 33px !important;
        }
        .heading-title-text{
            font-size: 18px !important;
         }
         .affiliation-heading-middle {
            font-size: 41px !important;
        }
         #mission-info {
            margin: 84% auto 20% auto !important;
        }
        .chairman-name {
            font-size: 30px !important;
        }
    }
.page-header-area {
    background-image: url('./assets/images/personal/AdobeStock_143303680-scaled-1.jpeg');
    margin-top: 150px;
    height: 461px;
}    
.chairmain-msg-head{
    position: absolute;
    margin-top: -30%;
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
#mission-info{
    padding: 0px 30px;
    margin: 15% auto 3% auto;
}
.chairman-name{
    font-size: 40px;
    font-weight: 700;
    line-height: 44px;
    font-family: inherit;
}
.chairman-designation{
    color: #747474;
    margin:20px auto;
}
.inside-text-message{
    font-size: 20px;
    color: #292929;
    margin: 0 0 18px;
    text-align: left;
}
h1,h2,h4, h3{
    font-family: 'rubik' !important;
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
#carasoul-section{
    margin: 3% auto 10% auto;
}
.item{
    background-color: #fff;
    border: 1px solid #e1e8ed;
    border-radius: 5px;
}
.item .testimonail-header{
    padding:5px 15px 6px 15px;
    border-bottom: 1px solid #e1e8ed;
}
.item .testimonail-header h4{
    font-weight: 700;
    font-size: 21px;
    color:#1c2022;
}
.item .testimonail-header p{
    font-size: 14px;
    color: #697882;
    font-weight: 400;
}
.carousel-control.left, .carousel-control.right  {
    width: 0%;
    color: grey;
}
.carousel-control .glyphicon-chevron-left{
    margin-left: -34px !important;
}
.carousel-control .glyphicon-chevron-right{
    margin-right: -34px !important;
}
.carousel-indicators .active {
    background-color: #000 !important;
    
}
.carousel-indicators li {
    border: 1px solid #000 !important;
}
@media screen and (min-width: 768px){
.carousel-indicators {
    bottom: -40px !important;}
}
</style>

<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-6">
                <div class="chairmain-msg-head">
                    <h1 class="heading-title"><?php echo $this->lang->line('qec_mission_heading'); ?></h1>
                    <p class="heading-title-text"><?php echo $this->lang->line('qec_mission_text'); ?></p>
                </div>
            </div>
            <div class="col-sm-12 col-lg-6"></div>
        </div>
    </div>
</section>

<section id="mission-info">
    <div class="container">
        <div class="row" >
            <div class="col-lg-1 col-sm-12" style="place-self: center;">
               <img src="https://img.icons8.com/ios/100/000000/goal.png"/>
            </div>
            <div class="col-lg-11 col-sm-12">
                <h1 class="chairman-name">Vision & Mission</h1>
                <p class="inside-text-message">DYIMS Institute ensures continuous quality improvement by adhering to world-class quality standards.</p>
            </div>
        </div>
    </div>
</section>

<section id="carasoul-section">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
        <div class="item active">      
            <div class="testimonail-header">
                <h4>Vision</h4>
                <p >QEC</p>
            </div>
            <div class="testimonial-content" style="padding: 6px 15px 15px 15px;">
                <p style="font-size: 18px; line-height:30px;">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil commodi sit quidem, nobis at debitis soluta deleniti asperiores est placeat voluptas atque quisquam, voluptate quae iste reiciendis esse, officia perspiciatis omnis dolorem aliquam. Dolorum, repellat!</p>  
            </div>
        </div>

        <div class="item " >      
            <div class="testimonail-header" >
                <h4>Mission</h4>
                <p>QEC</p>
            </div>
            <div class="testimonial-content" style="padding: 6px 15px 15px 15px;">
                <p style="font-size: 18px; line-height:30px;">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil commodi sit quidem, nobis at debitis soluta deleniti asperiores est placeat voluptas atque quisquam, voluptate quae iste reiciendis esse, officia perspiciatis omnis dolorem aliquam. Dolorum, repellat!</p>  
            </div>
        </div>
    
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>



</section>    
