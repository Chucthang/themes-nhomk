<?php get_header();

        
?>
<div class="wrap_single">
        <div class="container">
               <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
                        <?php get_template_part('content', get_post_format()); ?>
                        <div class="cmt-fb"> 
                        <div id="fb-root"></div>
                                <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v4.0"></script>
                                <div class="fb-comments" data-href="https://www.facebook.com/HayGhe.vnn/" data-width="" data-numposts="8"></div>
                         </div>               
                <?php endwhile; ?>

                <?php else : ?>
                        <?php get_template_part('content', 'none'); ?>
                <?php endif; ?>

        </div>
 
      
</div>
<?php get_footer(); ?>
