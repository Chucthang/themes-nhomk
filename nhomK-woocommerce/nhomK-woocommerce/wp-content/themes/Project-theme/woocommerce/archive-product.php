<?php
/**
 * The Template for displaying product archives, including the main shop page which is a post type archive
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/archive-product.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce/Templates
 * @version 3.4.0
 */

defined( 'ABSPATH' ) || exit;

global $total;

$category_id = $_POST['category'];
$my_wp_query = new WP_Query();   // lấy tổng sản phẩm 1 category
$total = $my_wp_query->query(array(
    'post_type' => 'product',
    'tax_query' => array(
        array(
        'taxonomy' => 'product_cat',
        'field' => 'id',
        'terms' => 	$category_id
        )
        ),
    'posts_per_page' => -1,
    
    ));
// var_dump($total);


?>
<div class="container">
<div class="woocommerce">
    <ul class="products">
	
		<?php  
// do_action( 'woocommerce_before_main_content' );



global $paged;




            $category_id = $_POST['category'];
      
        $args = array(
            'post_type'=>'product',
            'post_status'=>'publish',
            'tax_query' => array(
            array(
                'taxonomy' => 'product_cat',
                'field' => 'id',
                'terms' => $category_id
            )
            ),
            'orderby' => 'ID',
            'order' => 'DESC',
            'posts_per_page'=> 4,
            'paged' => 1,
            );



                                 

    $loop = new WP_Query( $args );

   

    if ( $loop->have_posts() ) {
     
        while ( $loop->have_posts() ) : $loop->the_post();

            woocommerce_get_template_part( 'content', 'product' );
           
        endwhile;
      
       
    } else {
        echo __( 'No products found' );
    }


?>





<?php
	
// do_action( 'woocommerce_after_main_content' );
		?>

    </ul>
</div>



<div class="phantrang">
    <?php  echo  $dem; ?>
				<?php $n = ceil(count($total)/4) ?>
	        	<ul class="ul-pt"> 
		            <?php for ($i = 1; $i <= $n; $i++): ?>
                    
                            <li class="li-pt">
			                <a class="a-pt" href="javascript:void(0)" style="margin: 14px" data-pagi="<?php echo $i ?>"  data-cateid="<?php echo $category_id;  ?> ">
			                	<?php echo $i ?>
                            </a>
</li>
		            <?php endfor; ?>
	       		 </ul>
</div>
</div>
<?php  exit(); ?>


		
