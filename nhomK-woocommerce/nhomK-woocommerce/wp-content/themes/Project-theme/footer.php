

<footer >
    <div class="wrap_footer">
    <div class="type-7">
        <div class="row">
            <div id="footer" class="primary-color"> 
                <div id="footer-inside" class="container">
                    <div id="footer-widgets">
                        <div id="text-6" class="footer-widget widget_text column-5">
                            <h4 class="widget-title">Our Offers</h4>
                            <div class="widget-content">            
                                <div class="textwidget">
                                    <ul>
                                        <li><a href="#">New products</a></li>
                                        <li><a href="#">Top sellers</a></li>
                                        <li><a href="#">Specials</a></li>
                                        <li><a href="#">Specials</a></li>
                                        <li><a href="#">Customer Service</a></li>
                                    </ul>
                                </div>
                            </div> 
                        </div> 
                    <!-- end .footer-widget -->
                        <div id="text-7" class="footer-widget widget_text column-5">
                            <h4 class="widget-title">Shipping info</h4>
                            <div class="widget-content">            
                                <div class="textwidget">
                                    <ul>
                                        <li><a href="#">New products</a></li>
                                        <li><a href="#">Manufacturers</a></li>
                                        <li><a href="#">Suppliers</a></li>
                                        <li><a href="#">Specials</a></li>
                                        <li><a href="#">International</a></li>
                                    </ul>
                                </div>
                                <!-- end .widget-content -->
                            </div> 
                        </div> 
                        <!-- end .footer-widget -->
                        <div id="text-8" class="footer-widget widget_text column-5">
                            <h4 class="widget-title">Useful Links</h4>
                            <div class="widget-content">            
                                <div class="textwidget">
                                    <ul>
                                        <li><a href="#">New products</a></li>
                                        <li><a href="#">Top sellers</a></li>
                                        <li><a href="#">Suppliers</a></li>
                                        <li><a href="#">Specials</a></li>
                                        <li><a href="#">Customer Service</a></li>
                                    </ul>
                                </div>
                                <!-- end .widget-content -->
                            </div>
                        </div> 
                        <!-- end .footer-widget -->
                        <div id="text-9" class="footer-widget widget_text column-5">
                            <h4 class="widget-title">Contacts</h4>
                            <div class="widget-content">            
                                <div class="textwidget">
                                    <ul>
                                        <li><a href="#">New products</a></li>
                                        <li><a href="#">Top sellers</a></li>
                                        <li><a href="#">Suppliers</a></li>
                                        <li><a href="#">Specials</a></li>
                                        <li><a href="#">Contact us</a></li>
                                    </ul>
                                </div>
                                <!-- end .widget-content -->
                            </div> 
                        </div> 
                        <!-- end .footer-widget -->
                        <div id="text-10" class="footer-widget widget_text column-5">
                            <h4 class="widget-title">About this site</h4>
                            <div class="widget-content">            
                                <div class="textwidget">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat.</div>
                            </div>
                         <!-- end .widget-content -->
                        </div>
                     <!-- end .footer-widget -->          
                    </div> 
                    <!--  end #footer-widgets  -->
                </div> 
                <!--  end #footer-inside  -->
                <div class="clear"></div>           
                <span class="bottom-border"></span>     
            </div> 
            <!-- end #footer  -->
            <div id="bottom-info" class="container">
                <div id="copyright">
                    <a href="">Premium Wordpress Themes by NANGPHAM</a>
                     
                </div>
                <div id="credit-card">
                    <div id="accepted">
                        <div class="visa"></div>
                        <div class="mastercard"></div>
                        <div class="amex"></div>
                        <div class="paypal"></div>
                    </div>
                </div>
            </div>
    </div>
</div>
    </div>
</footer>

 <?php wp_footer(); ?>
 
</body> <!--end body-->
<script type="text/javascript">
var ajaxurl = "<?php echo admin_url('admin-ajax.php'); ?>";

var currentPath = window.location.pathname; //Lay duong dan cua trang hien tai
var currentTitle = document.title; //Lay title hien tai
var currentPage = 1;
    
        var page = 2;
jQuery(function($) {                                           // LoadMore widget product of category
    $('body').on('click', '.load_onee', function() {
        var pageone = $(this).data("perpage");
        // debugger;

        var data = {
            'action': 'load_posts_one',
            'page': page,
            'perpage' : pageone,
            'security': '<?php echo wp_create_nonce("load_more_posts"); ?>'
        };
        // debugger;
        $.post(ajaxurl, data, function(response) {
            if(response != '') {
            //  debugger;
                $('.products').append(response);
                page++;
                // debugger;
            } else {
                $('.load_onee').hide();
            }
        });
    });
});



/*-------------------------------------- Phân trang archive --------------------------*/
var page_archive = '';
jQuery(function($) {
    $('body').on('click', '.a-pt', function() {
       
        var pageid = $(this).data("pagi");
       var cateid = $(this).data("cateid");
            
                // debugger;
                if(pageid == 1)
                {
                        page_archive = 1;
                }
                else
                {
                        page_archive  =  pageid;          
                }
        var testdata = {
            'action': 'pagination_archive',
            'category' : cateid,
            'page': page_archive,
            'security': '<?php echo wp_create_nonce("load_more_posts"); ?>'
        };
 

        $.ajax({
                    type: 'POST',
                    async: true,
                    url: ajaxurl,
                    data: testdata,
                 
                   
                    success: function (response) {
                     
                        if(response != '') {
                        $('.products').html(response);
                        
                                       }

                                
                        
                         }
                }); 

    });
});




/*------------------------------------------------------- LẤY ID CHO ARCHIVE.PHP chuyển trang---------------------------*/



$(document).ready(function(){
    
    $(document).on('click',".get-category ",function ()
    {       
            var hrefid = $(this).data("url");
            var datacate = $(this).data("id");
            // alert(datacate);
            var replaceurl = $(this).data("replace");  
    
        //     debugger;
        currentPage = 1;
            var getId = {
                 'action': 'menu_ajax',
                'category': datacate,
                'security': '<?php echo wp_create_nonce("load_more_posts"); ?>'
                       } 
                //        debugger;

            $.ajax({
                    type: 'POST',
                    async: true,
                    url: ajaxurl,
                    data: getId,
                    cache: true,
                   
                    success: function (response) {
                        // history.pushState(null, null, `viewproduct.php?id=${hrefid}`);
                        history.replaceState(null, '', replaceurl);
    
                        if(response != '') {
                        $('.box_ajax').html(response);  
                        // debugger;
                                       }

                         }
                });  

     });

});

/*----------------------------- CLICK PAGE ---------------------------*/

$(document).ready(function(){
    
    $(document).on('click',".li-ajax-page ",function ()
    {       
            var cateId_page = $(this).data("id");
        //     alert(cateId);
           
     });

});



</script>
</html> <!--end html -->