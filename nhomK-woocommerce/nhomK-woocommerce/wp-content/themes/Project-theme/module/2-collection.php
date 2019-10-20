<?php 
include_once './wp-content/plugins/collection.php';
// require_once get_template_directory() . 'wp-content/plugins/collection.php';

// $numcollect = new Collection_Widget();
// $numcollect ->widget($args = array(), $instance);

// var_dump($numcollect);


// var_dump(the_widget( 'Collection_Widget', $instance, $args )); 

?>

<div class="category_product">
                    <div class="head_vnkings">
                        <h3 class="title_head"><a href="<?php echo get_term_link(26); ?>"><?php echo get_cat_name(26);?></a></h3>
                    </div>
                    <?php
    $vnkings = new WP_Query(array(
    'post_type'=>'product',
    'post_status'=>'publish',
    'tax_query' => array(
      array(
          'taxonomy' => 'product_cat',
          'field' => 'id',
          'terms' => '26'
      )
    ),
    'orderby' => 'ID',
    'order' => 'DESC',
    'posts_per_page'=> '6'));
    ?>
    <div class="row">
         <?php while ($vnkings->have_posts()) : $vnkings->the_post(); ?>
    <div class="col-md-3">
                <div class="im_product">
                      <a class="image_sp" href="<?php the_permalink() ;?>"><?php the_post_thumbnail("medium",array( "title" => get_the_title(),"alt" => get_the_title() ));?></a>
                </div>
      
       
        <h4 class="title_sp "><a href="<?php the_permalink() ;?>"><?php the_title() ;?></a></h4>
        <span class="price"><span class="amount">Giá: <?php echo get_post_meta( get_the_ID(), '_regular_price', true ); ?></span></span>
    </div>
    <?php endwhile ; wp_reset_query() ;?>
    </div>
   

</div>