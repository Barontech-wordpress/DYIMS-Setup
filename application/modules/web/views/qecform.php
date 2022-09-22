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
            padding: 40px 35px 45px 36px !important;
        }
        .chairman-title{
            font-size: 33px !important;
        }
        .chairman-title-text{
            font-size: 18px !important;
         }
         #form-section {
            padding: 3px 13px !important;
            margin: 94% auto 20% auto !important;
        }
    }
.page-header-area {
    background-image: url('./assets/images/personal/AdobeStock_143303680-scaled-1.jpeg');
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
#form-section{
    padding: 0px 30px;
    margin: 17% auto 10% auto;
}

.book {
  display: flex;
}
#cover {
  width: 350px;
  height: 400px;
}
.flip-book {
  width: 350px;
  height: 400px;
  position: relative;
  perspective: 1500px;
}
.flip {
  width: 100%;
  height: 100%;
  position: absolute;
  top: 0;
  left: 0;
  transform-origin: left;
  transform-style: preserve-3d;
  transform: rotateY(0deg);
  transition: .5s;
  color: #000;
}
.front {
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  background-color: #fff;
  box-sizing: border-box;
  padding: 0 13px;
}
.back {
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  z-index: 99;
  transform: rotateY(180deg);
  backface-visibility: hidden;
  background-color: #000;
}
.next-btn {
  position: absolute;
  bottom: 13px;
  right: 13px;
  cursor: pointer;
  color: #000;
  border: 1px solid lightslategrey;
    padding: 7px 26px;
    border-radius: 12px;
}
.back-btn {
  position: absolute;
  bottom: 13px;
  right: 13px;
  cursor: pointer;
  color: #fff;
  padding: 7px 26px;
  border-radius: 12px;
  background-color: lightslategrey;
}
#p1 {
  z-index: 3;
}
#p2 {
  z-index: 2;
}
#p3 {
  z-index: 1;
}
#c1:checked ~ .flip-book #p1 {
  transform: rotateY(-180deg);
  z-index: 1;
}
#c2:checked ~ .flip-book #p2 {
  transform: rotateY(-180deg);
  z-index: 2;
}
#c3:checked ~ .flip-book #p3 {
  transform: rotateY(-180deg);
  z-index: 3;
}
</style>

<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-6">
                <div class="chairmain-msg-head">
                <h1 class="heading-title"><?php echo $this->lang->line('qec_form_heading'); ?></h1>
                    <p class="heading-title-text"><?php echo $this->lang->line('qec_form_text'); ?></p>
                </div>
            </div>
            <div class="col-sm-12 col-lg-6"></div>
        </div>
    </div>
</section>

<section id="form-section">
    <div style="text-align-last: center;padding-bottom:4rem;">
        <p class="chairman-title-text">Form</p>
        <h1 class="chairman-title">Teacher Evaluation</h1>
    </div>
<div class="book">
  <!-- For Next/Prev Controls -->
  <input type="checkbox" id="c1">
  <input type="checkbox" id="c2">
  <input type="checkbox" id="c3">
  <!-- Book Cover -->
  <div id="cover">
    <img src="<?php echo site_url('/assets/images/personal/3H3A4692-Slider-scaled-1-1.png');?>" alt="Cover">
  </div>
  <!-- Pages -->
  <div class="flip-book">
    <!-- Page 1 -->
    <div class="flip" id="p1">
      <div class="back">
        <img src="<?php echo site_url('/assets/images/personal/AdobeStock_143303680-scaled-1.jpeg');?>" alt="myimage1">
        <label for="c1" class="back-btn">Before</label>
      </div>
      <div class="front">
        <h2>Form Page 1</h2>
        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Possimus sunt consectetur iusto sint architecto beatae fuga, quasi,!</p>
        <label for="c1" class="next-btn">NEXT</label>
      </div>
    </div>
    <!-- Page 2 -->
    <div class="flip" id="p2">
      <div class="back">
        <img src="<?php echo site_url('/assets/images/personal/AdobeStock_143303680-scaled-1.jpeg');?>" alt="">
        <label for="c2" class="back-btn">Before</label>
      </div>
      <div class="front">
        <h2>Form Page 2</h2>
        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Possimus sunt consectetur iusto sint architecto beatae</p>
        <label for="c2" class="next-btn">NEXT</label>
      </div>
    </div>
    <!-- Page 3 -->
    <div class="flip" id="p3">
      <div class="back">
         <img src="<?php echo site_url('/assets/images/personal/AdobeStock_143303680-scaled-1.jpeg');?>" alt="">
        <label for="c3" class="back-btn">Before</label>
      </div>
      <div class="front">
        <h2>Page 3</h2>
        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Possimus sunt consectetur iusto sint architecto beatae fuga,</p>
        <label for="c3" class="next-btn">NEXT</label>
      </div>
    </div>
  </div>
</div>

</section>