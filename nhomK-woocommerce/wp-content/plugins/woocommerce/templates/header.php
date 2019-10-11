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
     
      
<div class="wrap_header">

                <div class="search_logo_cart">
                <div class="box_form">
                    
                            <input type="text" placeholder="Search.." name="search">
                        
                </div>
                <div class="logo_header">
                    <div class="box_sizelogo">
                        <img src="<?php bloginfo('template_directory'); ?> /logo/lazada.png" alt="">
                    </div>
                    
                </div>
                <div class="icon_cart">
                    <i class="fas fa-shopping-cart iconcart"></i>
                </div>

                </div>
                <div class="main_menu">
                <nav class="navbar navbar-expand-sm navbar-light bg-bm">
                    
                    <div class="collapse navbar-collapse nav-one" id="collapsibleNavId">
                    
                        <?php
                                            wp_nav_menu(array(
                                                'theme_location'  => 'primary-menu', // Gọi menu đã đăng ký trong function
                                                'depth'           => 3,     // Cấu hình dropdown 2 cấp
                                                'container'       => false, // Thẻ div bọc menu
                                                'menu_class'      => 'navbar-nav mx-auto', // Class của nav bootstrap
                                                'fallback_cb'     => 'WP_Bootstrap_Navwalker::fallback',
                                                'walker'          => new WP_Bootstrap_Navwalker()
                                            ));
                                        ?>
                        
                    </div>
                </nav>


                </div>

</div>
