<!DOCTYPE html>
<html lang="en">
<head>
  
    <meta charset="<?php bloginfo('charset'); ?>" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="profile" href="http://gmgp.org/xfn/11" />
        <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />
        
        <?php wp_head(); ?>
    
</head>
<body <?php body_class(); ?> > <!--Thêm class tượng trưng cho mỗi trang lên <body> để tùy biến-->
     
<div class="type-1000">
        <div id="wrap_header" class="elem">
                <div class="container padding-header">
                    <div class="wrap_logo_text">
                        <h1 class="logo">Titnia </h1>
                        <h2  class="textt">Just another UFO themes demo site</h2>
                    </div>
                    <div class="wrap_text_search">
                       
                          <div id="searchbar">
                                           
                                    <form>
                                        <div>
                                            <input type="text" name="s"  class="sform" value="" x-webkit-speech="">
                                          
                                        </div>
                                    </form>
                           </div>
                         <ul id="myacc_cart_checkout">
                            <li><a href="#" >My account</a></li>
                            <li><a href="#" >Cart</a></li>
                            <li><a href="#" >Checkout</a></li>
                        </ul>

                    </div>
                                  <div class="social-icon">
                                            <span class="call"> Call us:</span>
                                            <span class="phone">1-800-234-4534</span>  
                                            <span class="follow">Follow:</span>	
                                          
                                         <a href="#" class="ic"><i class="fa fa-facebook hv"></i> </a>		
                                            <a href="#" class="ic"><i class="fa fa-twitter hv"></i></a>
                                            <a href="#" class="ic"><i class="fa fa-google-plus hv"></i></a>	
                                            <a href="#" class="ic"><i class="fa fa-pinterest hv"></i></a>	
                                       
					
                                
                                    </div>

                            <nav class="navbar navbar-expand-sm navbar-light bg-nav">
                                
                                        <a class="respon" href="#"><i class="fa fa-bars"></i> </a>
                                
                                    <?php
                                                        wp_nav_menu(array(
                                                            'theme_location'  => 'primary-menu', // Gọi menu đã đăng ký trong function
                                                            'depth'           => 3,     // Cấu hình dropdown 2 cấp
                                                            'container'       => false, // Thẻ div bọc menu
                                                            'menu_class'      => 'navbar-nav ', // Class của nav bootstrap
                                                            'fallback_cb'     => 'WP_Bootstrap_Navwalker::fallback',
                                                            'walker'          => new WP_Bootstrap_Navwalker()
                                                        ));
                                                    ?>
                                    
                                    <div class="price_menu">
                                    <span class="ch_color">CART : $772.00</span>
                                </div>
                            </nav>
              
        </div>
    </div>
 </div>


                            