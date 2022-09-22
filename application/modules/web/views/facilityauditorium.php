<div class="page-header-area">
    <div class="container">
        <div class="page-header-content">

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
        #section-blue-box{
          margin-bottom: 150px !important;
        }


    }
html, body{
  overflow-x: hidden;
}    
.page-header-area {
    background-image: url('./assets/images/personal/library/3H3A9789-scaled.jpg');
    margin-top: 150px;
    height: 461px;
}  

#section-blue-box .chairmain-msg-head{
    position: absolute;
    margin-top: -19%;
    width:750px;
    background-color: #0a2052;
    z-index: 1;
    /* margin: -100px 0 0 0; */
    padding: 65px 40px 70px 40px; 
}
#section-blue-box .heading-title{
    font-size: 39px;
    color: white !important;
    font-family: inherit;
    font-weight: 700;
}

#section-blue-box .heading-title-text{
    font-size: 20px;
    color: white;
    margin: 29px 0px;
}

#section-blue-box{
margin-bottom: 20%;
}

</style>

<section id="section-blue-box">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-6">
                <div class="chairmain-msg-head">
                <h1 class="heading-title">Auditorium</h1>
                    <p class="heading-title-text"><?php echo $this->lang->line('library_facility_text'); ?></p>
                </div>
            </div>
            <div class="col-sm-12 col-lg-6"></div>
        </div>
    </div>
</section>


<style>
.auditorium-slider .slider {
  position: relative;
  margin: 0;
  padding: 0;
}
.auditorium-slider .slide {
  position: absolute;
  top: 0;
  left: 0;
  width: 500px;
  height: 300px;
  margin-bottom: 2%;
}
.auditorium-slider .slide img {
  width: 100%;
  height: 100%;
}
.auditorium-slider .heading{
  font-size: 38px;
    font-weight: 600;
    line-height: 83px;
}
.auditorium-slider .paraG{
    font-size: 20px;
    font-weight: 300;
    color: black;
    text-align: justify;
}


@media only screen and (max-width: 600px) {
  .auditorium-slider .slider {
  position: relative;
  margin: 0;
  padding: 0;
}
.auditorium-slider .slide {
  position: absolute;
  top: 0;
  left: 0;
  width: 90%;
}
.auditorium-slider .slide img {
  width: 90%;
  height: 90%;
  margin: 30px;
}

.auditorium-slider .heading{
  margin: 52px 20px 10px 20px;
    font-size: 25px;
    font-weight: 400;
    line-height: 34px;
}
.auditorium-slider .paraG{
font-size: 15px;
font-weight: 200;
width: 90%;
}
.auditorium-slider .second-column{
      margin-top:350px
}
}


</style>
<section class="auditorium-slider" style="padding-bottom: 120px">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 col-sm-12"> 
              <ul class="slider">
                 <li class="slide"><img src="./assets/images/personal/20190712_135216-poy33qh1tdawrpfx351cnjwvmucgemihfeyzf32c2y.jpg" alt="Slide 1" /></li>
                 <li class="slide"><img src="./assets/images/personal/cafetaria.jpg" alt="Slide 2" /></li>
                 <li class="slide"><img src="./assets/images/personal/dna.jpg" alt="Slide 3" /></li>
                 <li class="slide"><img src="./assets/images/personal/istockphoto-641778916-612x612.jpg" alt="Slide 4" /></li>
                 <li class="slide"><img src="./assets/images/personal/Library-1.jpg" alt="Slide 5" /></li>
              </ul>
      </div>
      <br><br>
      <div class="col-lg-6 col-sm-12 second-column">
            <h4 class="heading">This is the Auditorium of DYIMS</h4>
            <p class="paraG">A spacious and attractive auditorium is designed for the students. Here they can relish the recreational activities like plays, event celebrations, etc. moreover, students will build an emotional attachment with this place because they will hear the important announcements of their academic life in this auditorium.</p>
      </div>
    </div>
  </div>
</section>
    <!-- <section>
        <div class="row">
            <div class="column">
              <ul class="slider">
                 <li class="slide"><img src="./assets/images/personal/20190712_135216-poy33qh1tdawrpfx351cnjwvmucgemihfeyzf32c2y.jpg" alt="Slide 1" /></li>
                 <li class="slide"><img src="./assets/images/personal/cafetaria.jpg" alt="Slide 2" /></li>
                 <li class="slide"><img src="./assets/images/personal/dna.jpg" alt="Slide 3" /></li>
                 <li class="slide"><img src="./assets/images/personal/istockphoto-641778916-612x612.jpg" alt="Slide 4" /></li>
                 <li class="slide"><img src="./assets/images/personal/Library-1.jpg" alt="Slide 5" /></li>
              </ul>
            </div>
        </div>

          <div class="column Rightcol">
            <h4 class="heading">This is the Auditorium of DYIMS</h4>
            <p class="paraG">A spacious and attractive auditorium is designed for the students. Here they can relish the recreational activities like plays, event celebrations, etc. moreover, students will build an emotional attachment with this place because they will hear the important announcements of their academic life in this auditorium.</p>
          </div>
    </section> -->



<script>
    $(function() {
  $('.slide:gt(0)').hide();
  setInterval(function() {
    $('.slide:first').fadeOut('slow').next().fadeIn('slow').end().appendTo('.slider');
  }, 2500)
});
</script>