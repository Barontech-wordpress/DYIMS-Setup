<!-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grooming</title>
</head> -->
    
<style>

html,body {
    margin:0;
    padding:0;
    overflow-x:hidden;
}

h1 {
    font-size: 36px;
    line-height: 40px;
    letter-spacing: 0;
    margin-bottom: 0px;
    margin-left: 15px;
    margin-top: 15px;
}
.page-header-area {
    /* background-image: url('./assets/images/news.png'); */
    margin-top: 150px;
    height: 610px;
}

  img {
    max-width: 100%;
    height: auto;
    vertical-align: middle;
    display: inline-block;
  }
  
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
    margin-bottom: 20px;
}
  .grid-wrapper .wide {
    grid-column: span 2;
      grid-row: span 2;
  
  }
  .grid-wrapper .tall {
    grid-row: span 2;
  }
   .heading15 {
    font-size: 20px !important;
    font-weight: 200 !important;
    padding: 18px 18px !important;
    color: #292929;
    line-height: 30px;
}
  @media only screen and (max-width: 600px) {
    .grid-wrapper .tall {
    grid-row: span 1;
}
    .heading15 {
    font-size: 16px !important;
    font-weight: 200 !important;
    padding: 15px 15px !important;
    color: #292929;
    line-height: 22px;
}
.page-header-area {
    height: 695px;
}  
}
  </style>
  <body>
    
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

<section>
  <div class="container">
    <div class="row">
<h1>Grooming</h1>
<h2 class="heading15">DYIMS believes in producing students whole are the complete package who have adroit, well-dressed, well- behaved, and confident to pitch themselves in the field. Teachers will indulge students where the students can groom themselves. Seminars, debates, and other learning activities will be conducted to assist students in their grooming.</h2>
    </div>

    <div class="grid-wrapper">
          <div class="tall">
              <img src="./assets/images/news.png" />
          </div>
          <div class="wide">
              <img src="./assets/images/news.png" />
          </div>
          <div class="tall">
              <img src="./assets/images/news.png"/>
          </div>
      </div>

  </div>
</section>
  
     
      
     
  <!-- </body>
</html> -->