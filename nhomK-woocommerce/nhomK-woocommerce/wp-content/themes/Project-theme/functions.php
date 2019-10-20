<?php
 /*
  @ Thiết lập các hằng dữ liệu quan trọng
  @ THEME_URL = get_stylesheet_directory() - đường dẫn tới thư mục theme
  @ CORE = thư mục /core của theme, chứa các file nguồn quan trọng.
  */


  require_once get_template_directory() . '/class-wp-bootstrap-navwalker.php';
  define('THEME_URL', get_stylesheet_directory());
  // define('CORE', THEME_URL . '/core');
  
 




        /*
  @ Load file /core/init.php
  @ Đây là file cấu hình ban đầu của theme mà sẽ không nên được thay đổi sau này.
  */
 
  // require_once(CORE . '/init.php');
    
    
    /*
 @ Thiết lập $content_width để khai báo kích thước chiều rộng của nội dung
    */
 if (! isset($content_width)) {
     /*
      * Nếu biến $content_width chưa có dữ liệu thì gán giá trị cho nó
      */
     $content_width = 620;
 }


        /*@ Thiết lập các chức năng sẽ được theme hỗ trợ  */
  if (!function_exists('hayghe_theme_setup')) {
      /*   Nếu chưa có hàm hayghe_theme_setup() thì sẽ tạo mới hàm đó*/
      function hayghe_theme_setup()
      {

        /* Thiết lập theme có thể dịch được */
          $language_folder = THEME_URL . '/languages';
          load_theme_textdomain('hayghe', $language_folder);

          /*
               * Tự chèn RSS Feed links trong <head>
               */
          add_theme_support('automatic-feed-links');


          /*
* Thêm chức năng post thumbnail
*/
          add_theme_support('post-thumbnails');
          //   add_image_size('small-thumbnail');
          add_image_size('content-thumbnail');
          //   add_image_size('featuress-image');
          //   add_image_size('featuress-pocter');
          //   add_image_size('twoctent-post');
          //   add_image_size('slitwo-post');
          //   add_image_size('slfball-post');
          //   add_image_size('content-inpost');
        
          /*
* Thêm chức năng title-tag để tự thêm <title>
*/
          add_theme_support('title-tag');

          /*
          * Thêm chức năng post format
          */
          add_theme_support(
              'post-formats',
              array(
                    'image',
                    'video',
                    'gallery',
                    'quote',
                    'link'
                  )
          );
       
          /*
* Thêm chức năng custom background
*/
          $default_background = array(
    'default-color' => '#e8e8e8',
 );
          add_theme_support('custom-background', $default_background);

          /*
* Tạo menu cho theme
*/
          register_nav_menu('primary-menu', __('Primary Menu', 'hayghe'));
          register_nav_menu('header-contact', __('Contact header', 'hayghe'));
     
          /*
          * Tạo sidebar cho theme
          */
          $sidebar = array(
    'name' => __('Main Sidebar', 'hayghe'),
    'id' => 'main-sidebar',
    'description' => 'Main sidebar K-TEAM',
    'class' => 'main-sidebar',
    'before_title' => '<div class="widgettitle">',
            
    'after_title' => '</div>'
 );
          $logo_ads_search = array(
                'name' => __('Logo Ads Search', 'hayghe'),
                'id' => 'las-sidebar',
                'description' => 'Logo Ads Search for hayghe theme',
                'class' => 'las-sidebarr',
                'before_title' => '<h3 class="logotitle">',
                'after_title' => '</h3>'
            );

          $collection = array(
                'name' => __('Minh Tien P-O-C', 'hayghe'),
                'id' => 'collection-content',
                'description' => 'K-TEAM ',
                'class' => 'collection-content',
                'before_title' => '<div class="widget_collectionn">',
                        
                'after_title' => '</div>'
             );

             
      
          /*----TẠO WIDGET HEADER----------*/

          register_sidebar($sidebar);
          register_sidebar($logo_ads_search);
          register_sidebar($collection);
      }
      add_action('after_setup_theme', 'hayghe_theme_setup');
  }
  function mytheme_add_woocommerce_support()
  {
      add_theme_support('woocommerce');
  }
  add_action('after_setup_theme', 'mytheme_add_woocommerce_support');

  
// ------------------------------------------ HEADER ----------------------------------- //
  /*
@ Thiết lập hàm hiển thị logo
@ hayghe_logo()
*/
if (! function_exists('hayghe_header')) {
    function hayghe_header() {?>
    
  
       
       <div class="col-md-3">
          <div class="box_logo">
              <img class="size_lgo" src="<?php bloginfo('template_directory'); ?> /logo/logo4.png" alt="">
          </div>
       </div>
       <div class="col-md-6">
            <div class="box_qc">
              
                    <nav class="navbar navbar-expand-sm navbar-light laf-bg">
                        
                        <div class="collapse navbar-collapse nav-two" id="collapsibleNavId">
                           
                            <?php
                                                wp_nav_menu(array(
                                                    'theme_location'  => 'header-contact',
                                                    'depth'           => 3,
                                                    'container'       => false,
                                                    'menu_class'      => 'navbar-nav mx-auto',
                                                    'fallback_cb'     => 'WP_Bootstrap_Navwalker::fallback',
                                                    'walker'          => new WP_Bootstrap_Navwalker()
                                                ));
                                            ?>
                            
                        </div>
                    </nav>

               
              
            </div>
       </div>
       <div class="col-md-3">
            <div class="box_search">
              
                      <form class="form-inline my-2 my-lg-0">
                        <input class="form-control mr-sm-2 search-ajax" type="text" placeholder="Nhập không dấu">
                      
                      </form>
                    
            </div>
       </div>
  
    
   <?php }
}



//------------------------------------- CONTENT -----------------------------------//
/*
@ Hàm hiển thị ảnh thumbnail của post.
@ Ảnh thumbnail sẽ không được hiển thị trong trang single
@ Nhưng sẽ hiển thị trong single nếu post đó có format là Image
*/
if (! function_exists('hayghe_thumbnail')) {
    function hayghe_thumbnail($size)
    {
 
    // Chỉ hiển thumbnail với post không có mật khẩu
        // if (is_single() &&  has_post_thumbnail()  && ! post_password_required() || has_post_format('image')) :?>
    <?php the_post_thumbnail($size); ?><?php
    // endif;
    }
}




/*
@ Hàm hiển thị tiêu đề của post trong .entry-header
@ Tiêu đề của post sẽ là nằm trong thẻ <h1> ở trang single
@ Còn ở trang chủ và trang lưu trữ, nó sẽ là thẻ <h2>
@ hayghe_entry_header()
*/
if (! function_exists('hayghe_entry_header')) {
    function hayghe_entry_header()
    {
        if (is_single()) : ?>
 
      <h1 class="boxtitle-head">
        <a href="#" class="titleheaderr"  rel="bookmark" title="<?php the_title_attribute(); ?>">
          <?php the_title(); ?>
        </a>
      </h1>
    <?php else : ?>
      <h2 class="posct-title">
        <a href="<?php the_permalink(); ?>" class="title-ctpos" rel="bookmark" title="<?php the_title_attribute(); ?>">
          <?php the_title(); ?>
        </a>
      </h2><?php
 
    endif;
    }
}

/*------------------------------- ENTRY HEADER BÀI VIẾT LIÊN QUAN ------------------------*/
if (! function_exists('title_bvlq')) {
    function title_bvlq()
    {
        if (is_single()) : ?>
 
      <h1 class="boxtitle-bvlq">
        <a href="<?php the_permalink(); ?>" class="title-bvlqq"  rel="bookmark" title="<?php the_title_attribute(); ?>">
          <?php the_title(); ?>
        </a>
      </h1>
   
      <?php
 
    endif;
    }
}


/*
@ Hàm hiển thị thông tin của post (Post Meta)
@ hayghe_entry_meta()
*/
if (! function_exists('hayghe_entry_meta')) {
    function hayghe_entry_meta()
    {
        if (! is_page()) :
      echo '<span class="entry-meta">';
 
     
 
        ;
        call_timepost();
        
        if (comments_open()) :
          echo ' <span class="meta-reply">';
        
        echo '</span>';
        endif;
        echo '</span>';
        endif;
    }
}

/*
 * Thêm chữ Read More vào excerpt
 */
function hayghe_readmore()
{
    return '...<a class="read-more" href="'. get_permalink(get_the_ID()) . '">' . __('Read More', 'hayghe') . '</a>';
}
add_filter('excerpt_more', 'hayghe_readmore');
 
/*
@ Hàm hiển thị nội dung của post type
@ Hàm này sẽ hiển thị đoạn rút gọn của post ngoài trang chủ (the_excerpt)
@ Nhưng nó sẽ hiển thị toàn bộ nội dung của post ở trang single (the_content)
@ hayghe_entry_content()
*/
if (! function_exists('hayghe_entry_content')) {
    function hayghe_entry_content()
    {
        if (is_single()) :
             
            the_content();
     
        endif;
    }
}

















/*------------------------------------------- GIỚI HẠN TIÊU ĐỀ ----------------------------*/
function limit_title()
{
    $demtitle = get_the_title();
    if (mb_strlen($demtitle) < 100) {
        echo $demtitle;
    } else {
        $out = mb_substr($demtitle, 0, 110, 'UTF-8');
        echo mb_strtoupper($out, 'UTF-8')."....";
    }
}













/**
 * Change number of products that are displayed per page (shop page)
 */
// add_filter( 'loop_shop_per_page', 'new_loop_shop_per_page');

// function new_loop_shop_per_page( $cols ) {
//   // $cols contains the current number of products per page based on the value stored on Options -> Reading
//   // Return the number of products you wanna show per page.
//   $cols = 8;
//   return $cols;
// }

/*------------------------------------------ PRODUCT CATEGORY -------------------------------------*/




function menu_ajax()
{
    check_ajax_referer('load_more_posts', 'security');
    woocommerce_get_template_part('archive', 'product');
}


/*----------------------------------- WRAP ALL TEMPLATE --------------------------------*/

function wrap_above()
{?>

  <div class="wrap_content">
    <div class="container">
      

            <?php
}

function wrap_below()
{?>

     
    </div>
</div>
<?php
}


/*--------------------------------------- AJAX LOAD MORE POST -------------------------------------*/






/*---------------------------------------------- PHÂN TRANG ARCHIVE-PRODUCT.PHP -----------------------------*/
function pagination_archive()
{
    check_ajax_referer('load_more_posts', 'security');
    $paged = $_POST['page'];
    $catee = $_POST['category'];

    // ob_start();
    $loop = new WP_Query(array(
'post_type'=>'product',
'post_status'=>'publish',
'tax_query' => array(
            array(
            'taxonomy' => 'product_cat',
            'field' => 'id',
            'terms' => $catee
            )
        ),
        'orderby' => 'ID',
        'order' => 'DESC',
        'posts_per_page'=> 4,
        'paged' => $paged,
      ));

     
    while ($loop->have_posts()) : $loop->the_post();
     
    woocommerce_get_template_part('content', 'product');
           
    endwhile;
      
       
   

    // echo json_encode($loop); //Chuyen array -> json
   
            
    // $result = ob_get_clean(); //cho hết bộ nhớ đệm vào biến $result
       
    // wp_send_json_success($result); // trả về giá trị dạng json
           
    // die();//bắt buộc phải có khi kết thúc
         
        

    wp_die();
}



  /* --------------------------------------Bootstrap , CSS , OWL CAROUSEL , JQUERY ---------------------------------*/

function hayghe_styles()
{
    wp_register_style('bootsmin-style', get_template_directory_uri() . '/bootstrap-4.3.1-dist/css/bootstrap.min.css', 'all');
    wp_enqueue_style('bootsmin-style');
    // wp_register_style('owlcarousel-style', get_template_directory_uri() . '/OwlCarousel2-2.3.4/dist/assets/owl.carousel.min.css', 'all');
    // wp_enqueue_style('owlcarousel-style');
    // wp_register_style('owldefault-style', get_template_directory_uri() . '/OwlCarousel2-2.3.4/dist/assets/owl.theme.default.min.css', 'all');
    // wp_enqueue_style('owldefault-style');


    
    wp_register_script('jque-style', get_template_directory_uri() . '/js/jquery-2.1.4.min.js', 'all');
    wp_enqueue_script('jque-style');

    wp_register_style('swipercss-style', get_template_directory_uri() .'/swiper/swiper.min.css', 'all');
    wp_enqueue_style('swipercss-style');

    wp_register_script('swiperjs-style', get_template_directory_uri() .'/swiper/swiper.min.js', 'all');
    wp_enqueue_script('swiperjs-style');

    // wp_register_script('owljs-style', get_template_directory_uri() . '/OwlCarousel2-2.3.4/dist/owl.carousel.min.js', 'all');
    // wp_enqueue_script('owljs-style');

    wp_register_style('stylemain-style', get_template_directory_uri() . '/style.css', 'all');
    wp_enqueue_style('stylemain-style');

  
  
    wp_register_style('module4-style', get_template_directory_uri() . '/css/module4.css', 'all');
    wp_enqueue_style('module4-style');

    wp_register_style('reset-style', get_template_directory_uri() . '/css/reset.css', 'all');
    wp_enqueue_style('reset-style');
    wp_register_script('script-style', get_template_directory_uri() . '/sitescripts.js', 'all');
    wp_enqueue_script('script-style');
}
add_action('wp_enqueue_scripts', 'hayghe_styles');

/*-------------------------------------------------- DOACTION AJAX --------------------------*/
add_action('wp_ajax_menu_ajax', 'menu_ajax');      // chuyển trang
add_action('wp_ajax_nopriv_menu_ajax', 'menu_ajax');



// add_action('wp_ajax_load_posts_one', 'load_posts_one');  // loadmore index ( widget product of category)
// add_action('wp_ajax_nopriv_load_posts_one', 'load_posts_one');


add_action('wp_ajax_pagination_archive', 'pagination_archive'); // phân trang archive
add_action('wp_ajax_nopriv_pagination_archive', 'pagination_archive');


// add_action('wp_ajax_load_posts_by_ajax', 'load_posts_by_ajax_callback');
// add_action('wp_ajax_nopriv_load_posts_by_ajax', 'load_posts_by_ajax_callback');
/*-------------------------------------------------- DOACTION AJAX --------------------------*/
add_filter('show_admin_bar', '__return_false');
