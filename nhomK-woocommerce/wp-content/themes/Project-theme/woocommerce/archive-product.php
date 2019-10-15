
	<div class="woocommerce">
	<ul class="products">
        <?php
        global $paged;

		
$category_id = $_POST['category'];

	
			
		      $paged = ( get_query_var('page') ) ? get_query_var('page') : 1;
				$args = array(
					'post_type' => 'product',
					'tax_query' => array(
						array(
						'taxonomy' => 'product_cat',
						'field' => 'id',
						'terms' => 	$category_id
						)
						),
					'posts_per_page' => 8,
					'paged' => $paged
					);
				
	
	
		//  wp_send_json($args);
      
            $loop = new WP_Query( $args );
            if ( $loop->have_posts() ) {
                while ( $loop->have_posts() ) : $loop->the_post();
                    woocommerce_get_template_part( 'content', 'product' );
                endwhile;
            } else {
                echo __( 'No products found' );
            }
        ?>

<?php  wp_die(); ?>
    <nav>
        <ul>
            <li><?php previous_posts_link( '&laquo; PREV', $loop->max_num_pages) ?></li> 
            <li><?php next_posts_link( 'NEXT &raquo;', $loop->max_num_pages) ?></li>
        </ul>
    </nav>


    </ul><!--/.products-->
	</div>
<?php
		

do_action( 'woocommerce_sidebar' );

// get_footer();
