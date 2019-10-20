<?php
/*
Plugin Name: Product Of Category
Description: K-team 2019
Author: Minh Tien
Version: 1.0
Author URI: http://google.com
*/

/* ----------------------------- Khởi tạo widget item---------------------------*/
add_action('widgets_init', 'create_productcategory_widget');
function create_productcategory_widget()
{
    register_widget('Product_Widget');
}

// function create_loadproduct_widget()
// {
//     register_widget('LoadProduct_Widget');
// }



    /*
    Tạo class Fanpge_Widget
    */
class Product_Widget extends WP_Widget
{
    public $instance;
    
    /*
     * Thiết lập widget: đặt tên, base ID
     */
                                        
    public function __construct()
    {
        parent::__construct(
            'product_widget', // id của widget
            'Product Widget', // tên của widget
       
            array(
                'description' => 'Product Product' // mô tả
            )
        );
        // add_action( 'wp_head', array( $this, 'cst_twitter_feed_ajaxurl' ) );
        // add_action( 'wp_ajax_load_posts_one', array( $this, 'load_posts_one' ) );
        add_action('wp_ajax_load_posts_one', 'load_posts_one');  // loadmore index ( widget product of category)
        add_action('wp_ajax_nopriv_load_posts_one', 'load_posts_one');
    }

    public function cst_twitter_feed_ajaxurl() {
        ?>
            <script type="text/javascript">
            var ajaxurl = '<?php echo admin_url('admin-ajax.php'); ?>';
            </script>
        <?php
        }

    /**
     * Tạo form option cho widget
     */
    public function form($instance)
    {
        //Biến tạo các giá trị mặc định trong form
        $default = array(
    'title' => 'Product Title',
    'content' => 'Product Content',
    'category' => 'Product Category'
            );

        //Gộp các giá trị trong mảng $default vào biến $instance để nó trở thành các giá trị mặc định
        $instance = wp_parse_args($instance, $default);
        // echo "<pre>";
        // var_dump($instance);
        //Tạo biến riêng cho giá trị mặc định trong mảng $default
        // esc_attr : loại bỏ các ký tự đặc biệt khi nhập vào
        $title = esc_attr($instance['title']);
        $content = esc_attr($instance['content']);
        $category = esc_attr($instance['category']);

        echo('Title:<input type="text" class="widefat" name="'.$this->get_field_name('title').'" value="'.$title.'"  />');
        echo('Number Product:<input type="text" class="widefat"  name="'.$this->get_field_name('content').'" value="'.$content.'"  />');
   

        $taxonomy     = 'product_cat';
        $orderby      = 'name';
        $show_count   = 0;      // 1 for yes, 0 for no
        $pad_counts   = 0;      // 1 for yes, 0 for no
        $hierarchical = 1;      // 1 for yes, 0 for no
        $title        = '';
        $empty        = 0;
      
        $argss = array(
               'taxonomy'     => $taxonomy,
               'orderby'      => $orderby,
               'show_count'   => $show_count,
               'pad_counts'   => $pad_counts,
               'hierarchical' => $hierarchical,
               'title_li'     => $title,
               'hide_empty'   => $empty
        );
        $categories = get_categories($argss);

        echo('Select Category:<select class="widefat">');
        echo('<option value="">Chọn category</option>');
        foreach ($categories as $categorie) {
            $category = $categorie->term_id;
            echo('<option value="'.  $category .'">"'.$categorie->name.'"</option>');
        }
        echo('</select>');
    }

    /**
     * save widget form
     */

    public function update($new_instance, $old_instance)
    {
        $instance = $old_instance;
        $instance['title'] = $new_instance['title'];
        $instance['content'] = $new_instance['content'];
        $instance['category'] = $new_instance['category'];

    
        return $instance;
        
      

       

    }


    


    /**
     * Show widget
     */

    public function widget($args, $instance)
    {
        // extract : tách key của mảng thành biến riêng
        extract($args);
        echo '<ul class="ul_product">';
        echo '<li class="title_product text-center"><h2 >'. $instance['title'].'</h2></li>' ;
        echo $before_widget; ?>
 

                <div class="woocommerce">
                    <ul class="products">
                                        <?php
                        $getproduct = new WP_Query(array(
                        'post_type'=>'product',
                        'post_status'=>'publish',
                        'tax_query' => array(
                        array(
                            'taxonomy' => 'product_cat',
                            'field' => 'id',
                            'terms' =>  '26'
                        )
                        ),
                        'orderby' => 'ID',
                        'order' => 'DESC',
                        'posts_per_page'=> $instance['content'],
                        'paged' => 1,
                    ));

       ?>
                        
                            <?php while ($getproduct->have_posts()) : $getproduct->the_post(); ?>
                                    <?php   woocommerce_get_template_part( 'content', 'product' );   ?>
                        <?php endwhile ;
        // wp_reset_query() ; 
        wp_reset_postdata();
        ?>
            
    </ul><!--/.products-->
	</div>          

     <?php   echo $after_widget;
        echo '<li class="li_load_onee"> <div class=" text-center"><span data-perpage="'.$instance['content'].'" class="load_onee" > Load More</span> </div></li>';
        echo '</ul>';
        echo $instance['category'];

    
    }



}



function load_posts_one()
{
    check_ajax_referer('load_more_posts', 'security');
    $paged = $_POST['page'];
    $perpage = $_POST['perpage'];
    ?>
   
    <?php
$getproduct = new WP_Query(array(
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
        'posts_per_page'=> $perpage,
        'paged' => $paged,
)); ?>

      <?php while ($getproduct->have_posts()) : $getproduct->the_post(); ?>
            <?php    woocommerce_get_template_part('content', 'product'); ?>
      
      <?php endwhile ; ?>

<?php

  wp_die();

}


add_action('wp_ajax_load_posts_one', 'load_posts_one');  // loadmore index ( widget product of category)
add_action('wp_ajax_nopriv_load_posts_one', 'load_posts_one');


