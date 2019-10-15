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
 

                        <div class="category_product">
                                        <div class="head_kteam">
                                            <h3 class="title_head"><a href="<?php echo get_term_link(26); ?>"><?php echo get_cat_name(26); ?></a></h3>
                                        </div>
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
                        'posts_per_page'=> $instance['content'],
                        'paged' => 1,
                    ));

       ?>
                        <div class="row produc_ajax">
                            <?php while ($getproduct->have_posts()) : $getproduct->the_post(); ?>
                        <div class="col-md-3 product_cate">
                                    <div class="im_product">
                                        <a class="image_sp"  href="<?php the_permalink() ; ?>"><?php the_post_thumbnail("medium", array( "title" => get_the_title(),"alt" => get_the_title() )); ?></a>
                                    </div>
                        
                        
                            <h4 class="title_sp "><a href="<?php the_permalink() ; ?>"><?php the_title() ; ?></a></h4>
                            <span class="price"><span class="amount">Giá: <?php echo get_post_meta(get_the_ID(), '_regular_price', true); ?></span></span>
                        </div>
                        <?php endwhile ;
        wp_reset_query() ; 
        // wp_reset_postdata();
        ?>
                        </div>
                    

                    </div>

     <?php   echo $after_widget;
        echo '<li class="li_load_onee"> <div class=" text-center"><span class="load_onee" > Load More</span> </div></li>';
        echo '</ul>';
        echo $instance['category'];


        // function getinstance($test_variable)
        // {
        //     echo $test_variable;
        // }

        

    
    }
}

// $obj =  new Product_Widget();






// add_action('wp_ajax_load_posts_one', 'load_posts_one');
// add_action('wp_ajax_nopriv_load_posts_one', 'load_posts_one');
