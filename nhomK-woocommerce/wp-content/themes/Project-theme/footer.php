

<footer >
    <div class="wrap_footer">
            <div class="test_footer text-center">
                        @K-TEAM | 2019 
            </div>
    </div>
</footer>

 <?php wp_footer(); ?>
 
</body> <!--end body-->
<script type="text/javascript">
var ajaxurl = "<?php echo admin_url('admin-ajax.php'); ?>";



    
        var page = 2;
jQuery(function($) {
    $('body').on('click', '.load_onee', function() {
        // var test = 'load_posts_by_ajax';
        var data = {
            'action': 'load_posts_one',
            'page': page,
            'security': '<?php echo wp_create_nonce("load_more_posts"); ?>'
        };
     
        $.post(ajaxurl, data, function(response) {
            if(response != '') {
           
                $('.produc_ajax').append(response);
                page++;
             
            } else {
                $('.load_onee').hide();
            }
        });
    });
});





$(document).ready(function(){
    
            $(document).on('click',".sub-menu-a ",function ()
            {       
                    var cateId = $(this).data("id");
                    // alert(cateId);
                    // debugger;
                    var getId = {
                         'action': 'menu_ajax',
                        'category': cateId,
                        'security': '<?php echo wp_create_nonce("load_more_posts"); ?>'
                               } 
                            //    debugger;
                    $.ajax({
                            type: 'POST',
                            async: true,
                            url: ajaxurl,
                            data: getId,
                            cache: false,
                           
                            success: function (response) {
                               
                                if(response != '') {
                                $('.box_ajax').html(response);  
                                // debugger;
                                               }

                                 }
                        });  
        
             });
    
});




</script>
</html> <!--end html -->