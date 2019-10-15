<?php
    $url_host = $_SERVER['HTTP_HOST'];


    $pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');

    $pattern_uri = '/' . $pattern_document_root . '(.*)$/';

    preg_match_all($pattern_uri, __DIR__, $matches);

    $url_path = $url_host . $matches[1][0];
?>
<div class="type-1">
    <div class="container"> 
        <div class="row">
            <div class="swiper-container">
                <div class="swiper-wrapper">                                                            
                    <div class="swiper-slide">
                        <img src="images/1.jpg" title="Shoes 2013 Collection" alt="slider image"/>
                        <div class="flex-caption">
                            <a class="slide-button" href="#">Pick your shoes</a>
                            <h2 class="home-slide-title"><b>Shoes 2013 Collection</b></h2> 
                            <p class="slider-caption1">New arrivals are here. Browse our shoe collection and start this year in style.</p>           
                        </div>                      
                    </div>
                    <div class="swiper-slide">
                        <img src="images/2.jpg" title="The New Ipad" alt="slider image"/>
                        <div class="flex-caption">
                            <a class="slide-button" href="#">See Details</a>
                            <h2 class="home-slide-title"><b>The New iPad</b></h2> 
                            <p class="slider-caption">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.</p>           
                        </div>                      
                    </div>
                    <div class="swiper-slide">
                        <img src="images/3.jpg" title="Handbag" alt="slider image"/>                       
                    </div>
                    <div class="swiper-slide">
                        <img src="images/4.jpg" title="Browse Shoes" alt="slider image"/>
                        <div class="flex-caption">
                            <a class="slide-button" href="#">Browse Shoes</a>
                            <h2 class="home-slide-title"><b>Browse Shoes</b></h2> 
                            <p class="slider-caption">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.</p>           
                        </div>                      
                    </div>
                </div>   
                 <div class="swiper-button-next" style="position: absolute;"></div>
                <div class="swiper-button-prev" style="position: absolute;"></div>   
            </div>
           
        </div>
        
    </div> 
</div>  
                            
                     
