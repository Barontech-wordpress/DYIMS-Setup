<style>
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
@media only screen and (min-width: 600px) {
.slider {
  position: relative;
  margin: 2%;
    }
.slide {
  position: absolute;
  top: 100px;
  left: 0;
  width: 700px;
  height: 540px;
}
.slide img {
  width: 100%;
  height: 100%;
}.row {
  display: flex;
}
.pagaG{
    margin:2% !important;
}
.column {
  flex: 50%;
}
.Rightcol{
    margin-left: 48%;
    margin-right: 25px;
}
.maps{
    margin-left: 100px;
    width: 450px;
    height: 275px;
    margin-bottom:5% !important;
}
 
.heading{
    padding-top: 9%;
  margin: 5% 0%;
  font-size: 35px;
  font-weight: 400;
}}

html,body {
    margin:0;
    padding:0;
    overflow-x:hidden;
}
@media only screen and (max-width: 600px) {
  .slider {
  position: relative;
  margin: 0;
  padding: 0;
}
.slide {
  position: absolute;
  width: 450px;
  height: 450px;
  margin: 20% 5% 5% 7%;
  list-style-type: none;

}
.slide img {
  width: 85%;
  height: 85%;
}
.row {
  display: flex;
}
.pagaG{
    margin:5% !important;
}
.column {
  flex: 50%;
}
.Rightcol{
  margin-top: 118%;
  margin-left: 8%;
    }
.maps{
    margin-left: 10px;
    width: 300px;
    height: 250px;
    margin-bottom:5% !important;
}
 .heading{
  margin: 5% 0%;
  font-size: 28px;
  font-weight: 400;
}
}
p{
    font-size:17px;
    color: black;
}
</style>



<div class="page-header-area">
    <div class="container">
        <div class="page-header-content">
            
        </div>
    </div>
</div>

<section id="section-blue-box">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-6">
                <div class="chairmain-msg-head">
                <h1 class="heading-title" style="color:white;">Sports Ground</h1>
                    <!-- <p class="heading-title-text"><?php echo $this->lang->line('transport_facility_text'); ?></p> -->
                </div>
            </div>
            <div class="col-sm-12 col-lg-6"></div>
        </div>
    </div>
</section>
<!---------------------------------------------------------------------------------------------------------------------------------------------------->
<section>
       <div class="row">
            <div class="column">
              <ul class="slider">
                 <li class="slide"><img src="./assets/images/personal/20190712_135216-poy33qh1tdawrpfx351cnjwvmucgemihfeyzf32c2y.jpg" alt="Slide 1" /></li>
                 <li class="slide"><img src="./assets/images/personal/cafetaria.jpg" alt="Slide 2" /></li>
                 <li class="slide"><img src="./assets/images/personal/dna.jpg" alt="Slide 3" /></li>
                 <li class="slide"><img src="./assets/images/personal/istockphoto-641778916-612x612.jpg" alt="Slide 4" /></li>
                 <li class="slide"><img src="./assets/images/personal/dna.jpg.jpg" alt="Slide 5" /></li>
              </ul>
            </div>
     

          <div class="column Rightcol" style="padding: 43px;">
            <h4 class="heading" >Sports Ground of DYIMS</h4>
            <p class="paraG">Here at DYIMS, a commodious and lush green sports ground is available for the students. This ground is specially built while considering the impact of nature and fresh air on the human mind. Students need a place where they can enliven themselves and freshen their minds.</p>
            <p class="paraG">The physical health of students is crucial for determining their academic performance. For this purpose, students will be encouraged to partake in sports activities like cricket, badminton, football, etc. Matches will be conducted to instill sportsmanship and teamwork traits in the students.</p><br>
            <iframe class="maps" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3420.844631363117!2d70.98893975067372!3d30.974817680885472!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3925a7306be11a05%3A0x54d2d168cf4b8cb!2sDYIMS%20-%20DR%20YAHYA%20INSTITUTE%20OF%20MEDICAL%20SCIENCES!5e0!3m2!1sen!2s!4v1662979243823!5m2!1sen!2s" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
          </div>

        </div>
</section>

<script>
    $(function() {
  $('.slide:gt(0)').hide();
  setInterval(function() {
    $('.slide:first').fadeOut('slow').next().fadeIn('slow').end().appendTo('.slider');
  }, 2500)
});
</script>