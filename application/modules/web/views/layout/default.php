<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta charset="ISO-8859-15">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- Mobile Specific Meta  -->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

        <!--<title><?php echo $title_for_layout; ?></title>-->
        <title><?php echo $this->setting->school_name; ?></title>
        
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="keywords" content="">
        <!--<link rel="icon" href="<?php echo IMG_URL; ?>front/favicon.ico" type="image/x-icon" />-->
        <link rel="icon" href="<?php echo IMG_URL; ?>front/favicon.png" type="image/x-icon" />
        
        <style>
            
            .fixed {
    position: fixed;
    top:0; left:0;
    width: 100%;

    }
    header{
            transition:0.5s linear all;
        
    }
        </style>
        <!-- CSS -->
        <link rel="stylesheet" href="<?php echo CSS_URL; ?>front/bootstrap.min.css">
        <link rel="stylesheet" href="<?php echo CSS_URL; ?>front/jquery-ui.css">
        <link rel="stylesheet" href="<?php echo CSS_URL; ?>front/fontawesome-all.min.css">
        <link rel="stylesheet" href="<?php echo CSS_URL; ?>front/owl.carousel.min.css">
        <link rel="stylesheet" href="<?php echo CSS_URL; ?>front/animate.css">
        <link rel="stylesheet" href="<?php echo CSS_URL; ?>front/jquery.fancybox.min.css">
        <link rel="stylesheet" href="<?php echo CSS_URL; ?>front/stellarnav.min.css">
        <link rel="stylesheet" href="<?php echo CSS_URL; ?>front/style.css">
        
        <?php if(isset($theme) && !empty($theme)){ ?>
            <?php $this->load->view('layout/theme/'. $theme->slug); ?>
        <?php }else{ ?>
            <?php $this->load->view('layout/theme/dodger-blue'); ?>
        <?php } ?>      
        
        <?php if(isset($this->setting->enable_rtl) && !empty($this->setting->enable_rtl)){ ?>
            <link rel="stylesheet" href="<?php echo CSS_URL; ?>front/rtl.css">
        <?php } ?>
            
        <link rel="stylesheet" href="<?php echo CSS_URL; ?>front/responsive.css">
        
        
        <script src="<?php echo JS_URL; ?>front/jquery-3.3.1.min.js"></script>
        <script src="<?php echo JS_URL; ?>front/jquery-ui.js"></script>
        <script src="<?php echo JS_URL; ?>jquery.validate.js"></script>
        
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->     
        
        <?php if(isset($this->setting->google_analytics) && !empty($this->setting->google_analytics)){ ?>         
            <!-- Global site tag (gtag.js) - Google Analytics -->
            <script async src="https://www.googletagmanager.com/gtag/js?id=<?php echo $this->setting->google_analytics; ?>"></script>
            <script>
              window.dataLayer = window.dataLayer || [];
              function gtag(){dataLayer.push(arguments);}
              gtag('js', new Date());
              gtag('config', '<?php echo $this->setting->google_analytics; ?>');
            </script>
        <?php } ?>
            
    </head>

    <body>
          <div class="loader">
	<div class="d-table">
		<div class="d-table-cell">
			<div class="spinner">
				<div class="bounce1"></div>
				<div class="bounce2"></div>
				<div class="bounce3"></div>
			</div>
		</div>
	</div>
</div>
        
        <?php $this->load->view('layout/header'); ?>  
        
        <!-- page content -->        
        <?php echo $content_for_layout; ?>
        <!-- /page content -->
        
        <!-- footer content -->
        <?php $this->load->view('layout/footer'); ?>   
        <!-- /footer content -->


        <!-- Scripts --> 
        
        <!-- Scripts -->        
        <script src="<?php echo JS_URL; ?>front/owl.carousel.min.js"></script>
        <script src="<?php echo JS_URL; ?>front/jquery.counterup.min.js"></script>
        <script src="<?php echo JS_URL; ?>front/countdown.js"></script>
        <script src="<?php echo JS_URL; ?>front/stellarnav.min.js"></script>
        <script src="<?php echo JS_URL; ?>front/jquery.scrollUp.js"></script>
        <script src="<?php echo JS_URL; ?>front/jquery.waypoints.min.js"></script>
        <script src="<?php echo JS_URL; ?>front/imagesloaded.pkgd.min.js"></script>
        <script src="<?php echo JS_URL; ?>front/isotope.pkgd.min.js"></script>
        <script src="<?php echo JS_URL; ?>front/jquery.fancybox.min.js"></script>
        <script src="<?php echo JS_URL; ?>front/popper.min.js"></script>
        <script src="<?php echo JS_URL; ?>front/bootstrap.min.js"></script>
        <script src="<?php echo JS_URL; ?>front/theme-front.js"></script>

        <script type="text/javascript">
            jQuery.extend(jQuery.validator.messages, {
                required: "<?php echo $this->lang->line('required_field'); ?>",
                email: "<?php echo $this->lang->line('enter_valid_email'); ?>",
                url: "<?php echo $this->lang->line('enter_valid_url'); ?>",
                date: "<?php echo $this->lang->line('enter_valid_date'); ?>",
                number: "<?php echo $this->lang->line('enter_valid_number'); ?>",
                digits: "<?php echo $this->lang->line('enter_only_digit'); ?>",
                equalTo: "<?php echo $this->lang->line('enter_same_value_again'); ?>",
                remote: "<?php echo $this->lang->line('pls_fix_this'); ?>",
                dateISO: "Please enter a valid date (ISO).",
                maxlength: jQuery.validator.format("Please enter no more than {0} characters."),
                minlength: jQuery.validator.format("Please enter at least {0} characters."),
                rangelength: jQuery.validator.format("Please enter a value between {0} and {1} characters long."),
                range: jQuery.validator.format("Please enter a value between {0} and {1}."),
                max: jQuery.validator.format("Please enter a value less than or equal to {0}."),
                min: jQuery.validator.format("Please enter a value greater than or equal to {0}.")
            });
            
        </script>
        <script>
            $(document).ready(function(){

              $(".menu-toggle").not(':first').remove()
              $(".call-btn-mobile").not(':first').css('display','none');
              $(".close-menu").not(':first').css('display','none');
              $(".location-btn-mobile").not(':first').css('display','none');
            });
            
//             $(window).scroll(function(){
//      var sticky = $('header'),
//       scroll = $(window).scrollTop();

//   if (scroll >= 100) sticky.addClass('fixed');
//   else sticky.removeClass('fixed');
// });
         </script>
                 <script type="text/javascript">
jQuery(window).on('load',function(){
     jQuery('.loader').fadeOut(500);
});
</script>
    </body>
</html>