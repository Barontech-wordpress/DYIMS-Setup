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
    max-width: 95%;
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
    grid-gap: 5px;
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
  .heading1233{
  font-size: 30px !important;
  font-weight: 200 !important;
  padding: 30px 20px !important;
  color: #292929;
  line-height: 40px;
  margin: 30px;
  }
  img {
    max-width: 95%;
    height: auto;
    vertical-align: middle;
    display: inline-block;
  }
}
  
  @media only screen and (max-width: 600px) {
  .heading1233{
  font-size: 30px !important;
  font-weight: 200 !important;
  padding: 35px 20px !important;
  color: #292929;
  line-height: 40px;
  margin: 15px;
  }
  .grid-wrapper .wide {
    grid-column: span 1;
      grid-row: span 2;
      margin:10px 0px;
  
  }
  .grid-wrapper .tall {
    grid-row: span 2;
    margin:10px 0px;
    
  }
  .grid-wrapper {
    display: grid;
    grid-gap: 1px;
    grid-template-columns: repeat(auto-fit, minmax(70px, 1fr));
    grid-auto-rows: 100px;
    grid-auto-flow: dense;
}}
  

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
                <h1 class="heading-title" style="color: white">Car Parking</h1>
                    <!-- <p class="heading-title-text"><?php echo $this->lang->line('transport_facility_text'); ?></p> -->
                </div>
            </div>
            <div class="col-sm-12 col-lg-6"></div>
        </div>
    </div>
</sectio:n>
<!---------------------------------------------------------------------------------------------------------------------------------------------------->

<!-- 
<i class="fa-duotone fa-bus"></i> -->
 
      <div class="heading1233" style="margin-bottom: 40px; display:flex;">
          <span> <img src="./assets/images/personal/parking-sign.png" alt="map-icon" style="max-width:60px;"></span><h2 class="heading"> Car parking is also available for students and faculty members who can leave their vehicles without worrying. Guards and CCTV are allocated to the car parking arena for the strict supervision of the vehicles. </h2>
         </div>
       <div class="grid-wrapper">
          <div class="tall">
              <img src="./assets/images/personal/parking1.jpg" />
          </div>
          <div class="wide">
              <img src="./assets/images/personal/parking2.jpg" />
          </div>
          <div class="tall">
              <img src="./assets/images/personal/parking3.jpg" />
          </div>
      </div>