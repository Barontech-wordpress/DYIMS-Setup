<style>
.welcome-content .text {
    font-size: 15px;
    line-height: 22px !important;
    color: #454545;
    margin: 10 10 20px;
    font-weight: 400 !important;
}
.accordion {
    background-color: #173162;
    color: #fff;
}
.active, .accordion:hover {
    background-color: #239cc1;
    color: white;
}
</style>
<div class="page-header-area">
    <div class="container">
        <div class="page-header-content">
            <h2 class="title"><span class="inner"><?php echo $this->lang->line('faq'); ?></span></h2>
            <!-- <ul class="links">
                <li><a href="<?php echo site_url(); ?>"><?php echo $this->lang->line('home'); ?></a></li>
                <li><a href="javascript:void(0);"><?php echo $this->lang->line('faq'); ?></a></li>
            </ul> -->
            <h2 class="title-2">
                <?php if(isset($this->setting->school_name)){ ?>
                <?php echo $this->setting->school_name; ?>
                <?php }else{ ?>
                        <?php echo SMS; ?>
                <?php } ?>
            </h2>
        </div>
    </div>
</div>

<div class="welcome-area">
     <div class="container">
          <div class="row justify-content-center">                
                 <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                     <p class="text-center"><strong><?php echo $this->lang->line('faqs'); ?></strong></p>
                 </div>
         </div>
         <div class="row justify-content-center">                
         <?php if(isset($faqs) && !empty($faqs)){ ?>
             <div class="col-lg-12 col-md-12 col-12">
                 <div class="welcome-content">                        
                      <?php foreach($faqs AS $obj){ ?>
                       <button class="accordion"><?php echo $obj->title; ?></button>
                         <div class="panel">
                           <p class="text"><?php echo $obj->description; ?></p>
                         </div>

                 <?php } ?>                      
                 </div>                   
             </div>
         <?php }else{ ?>
             <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                 <p class="text-center"><strong><?php echo $this->lang->line('no_data_found'); ?></strong></p>
             </div>
         <?php } ?>
         </div>
     </div>
 </div>

<script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.maxHeight) {
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    } 
  });
}
</script>
