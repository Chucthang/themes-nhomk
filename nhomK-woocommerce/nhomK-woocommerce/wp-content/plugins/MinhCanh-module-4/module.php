<?php
/*
Plugin Name: Modue
Description: Module 4 ,5 .
Author: CanhMinh
Version: 1.0
Author URI: http://google.com
*/
/*
 * Khởi tạo widget item
 */
/*
 * Khởi tạo widget item
 */
/*----------------------------------------START FOOTER -------------------------*/
/**Thiết lập hàm hiển thị footer

**/

function minhcanhbon_widgets_init() {

  register_sidebar(
    array(
      'name'          => __( 'Minh Cảnh - Module 4 ', 'K-TEAM' ),
      'id'            => 'minhcanh-4',
      'description'   => __( 'Minh Canh 4 Module.', 'K-TEAM' ),
      'before_widget' => '<footer id="%1$s" class="widget %2$s">',
      'after_widget'  => '</footer>',
      'before_title'  => '<h2 class="widget-title">',
      'after_title'   => '</h2>',
    )
  );
}
add_action( 'widgets_init', 'minhcanhbon_widgets_init' );


function module4_widget()
{
  register_widget('module4_widget');
}
class module4_widget extends WP_Widget
{
    /*
     * Thiết lập widget: đặt tên, base ID
     */

    public function __construct()
    {
      parent::__construct(
            'module4', // id của widget
            'Information', // tên của widget

            array(
                'description' => 'Information' // mô tả
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
        'content' => 'Information'
      );

        //Gộp các giá trị trong mảng $default vào biến $instance để nó trở thành các giá trị mặc định
      $instance = wp_parse_args($instance, $default);
        // echo "<pre>";
        // var_dump($instance);
        //Tạo biến riêng cho giá trị mặc định trong mảng $default
        // esc_attr : loại bỏ các ký tự đặc biệt khi nhập vào




      $header1 = esc_attr($instance['header1']);
      $caption1 = esc_attr($instance['caption']);

      $header2 = esc_attr($instance['header2']);
      $caption2 = esc_attr($instance['caption2']);

      $header3 = esc_attr($instance['header3']);
      $caption3 = esc_attr($instance['caption3']);
      echo ('<h2>Information widget</h2>');
      echo ('<p>This widget has 3 blocks, each block will have different information, please fill in information</p>');
      echo('<h3>Block 1</h3>');
      echo('Header:<textarea class="widefat heigtfat" name="'.$this->get_field_name('header1').'">'.$header1.'</textarea>');
      echo('Caption:<textarea class="widefat heigtfat" name="'.$this->get_field_name('caption1').'">'.$caption1.'</textarea>');
      echo('<h3>Block 2</h3>');
      echo('Header:<textarea class="widefat heigtfat" name="'.$this->get_field_name('header2').'">'.$header2.'</textarea>');
      echo('Caption:<textarea class="widefat heigtfat" name="'.$this->get_field_name('caption2').'">'.$caption2.'</textarea>');

      echo('<h3>Block 3</h3>');
      echo('Header:<textarea class="widefat heigtfat" name="'.$this->get_field_name('header3').'">'.$header3.'</textarea>');
      echo('Caption:<textarea class="widefat heigtfat" name="'.$this->get_field_name('caption3').'">'.$caption3.'</textarea>');
    }

    /**
     * save widget form
     */

    public function update($new_instance, $old_instance)
    {
      $instance = $old_instance;
      $instance['header1'] = $new_instance['header1'];
      $instance['caption1'] = $new_instance['caption1'];
      $instance['header2'] = $new_instance['header2'];
      $instance['caption2'] = $new_instance['caption2'];
      $instance['header3'] = $new_instance['header3'];
      $instance['caption3'] = $new_instance['caption3'];
      return $instance;
    }

    /**
     * Show widget
     */

    public function widget($args, $instance)
    {
        // extract : tách key của mảng thành biến riêng
      extract($args);
      ?>

      <!-- newsletter-content - start -->
      
      <section id="home-widgets" class="type-4">
        <div class="container padding-4">
          <div class="row">

            <div class="col-md-4">
              <div class="home-widget widget_text">
                <div class="widget-content">
                  <h2 class="widgettitle"><?php echo($instance['header1']) ?></h2>
                  <div class="textwidget"><?php echo($instance['caption1']) ?></div>
                </div>
              </div>
            </div>

            <div class="col-md-4">
                <div class="home-widget widget_text">
                            <div class="widget-content">
                                      <h2 class="widgettitle"><?php echo($instance['header2']) ?></h2>
                                      <div class="textwidget">
                                      </h2>
                              <div class="textwidget"><?php echo($instance['caption2']) ?></div>
                          </div>
                </div>
          </div> 
        
        </div>
        <div class="col-md-4">
                <div class="home-widget widget_text">
                            <div class="widget-content">
                                      <h2 class="widgettitle"><?php echo($instance['header3']) ?></h2>
                                      <div class="textwidget">
                                      </h2>
                              <div class="textwidget"><?php echo($instance['caption3']) ?></div>
                          </div>
                </div>
          </div> 

      </div> 
    
      <div class="clear"></div>  
    </div>
  </div>
</section>

<?php
}
}
add_action('widgets_init', 'module4_widget');


function module5_widget()
{
  register_widget('module5_widget');
}
class module5_widget extends WP_Widget
{
    /*
     * Thiết lập widget: đặt tên, base ID
     */

    public function __construct()
    {
      parent::__construct(
            'module5', // id của widget
            'Information 1', // tên của widget

            array(
                'description' => 'Information' // mô tả
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
        'content' => 'Information'
      );

        //Gộp các giá trị trong mảng $default vào biến $instance để nó trở thành các giá trị mặc định
      $instance = wp_parse_args($instance, $default);
        // echo "<pre>";
        // var_dump($instance);
        //Tạo biến riêng cho giá trị mặc định trong mảng $default
        // esc_attr : loại bỏ các ký tự đặc biệt khi nhập vào




      $header1 = esc_attr($instance['header1']);
      $caption1 = esc_attr($instance['caption']);

      $header2 = esc_attr($instance['header2']);
      $caption2 = esc_attr($instance['caption2']);

      $header3 = esc_attr($instance['header3']);
      $caption3 = esc_attr($instance['caption3']);
      echo ('<h2>Information widget</h2>');
      echo ('<p>This widget has 3 blocks, each block will have different information, please fill in information</p>');
      echo('<h3>Block 1</h3>');
      echo('Header:<textarea class="widefat heigtfat" name="'.$this->get_field_name('header1').'">'.$header1.'</textarea>');
      echo('Caption:<textarea class="widefat heigtfat" name="'.$this->get_field_name('caption1').'">'.$caption1.'</textarea>');
    }

    /**
     * save widget form
     */

    public function update($new_instance, $old_instance)
    {
      $instance = $old_instance;
      $instance['header1'] = $new_instance['header1'];
      $instance['caption1'] = $new_instance['caption1'];

      return $instance;
    }

    /**
     * Show widget
     */

    public function widget($args, $instance)
    {
        // extract : tách key của mảng thành biến riêng
      extract($args);
      ?>
      <section class="type-5 ">
        <span class="top-border"></span>
        <div class="container">
          <div class="bg-module-5">
            <p class="quote"><?php echo($instance['header1'])?></p>
            <p class="quote-second"><?php echo($instance['caption1'])?></p>
          </div>
        </div>
        <span class="bottom-border"></span>
      </section>



      <?php
    }
  }
  add_action('widgets_init', 'module5_widget');


//   function Minhcanh_4_styles()
// {
   


//     wp_register_style('module4-style', get_template_directory_uri() . '/module.css', 'all');
//     wp_enqueue_style('module4-style');


  
// }
// add_action('wp_enqueue_scripts', 'Minhcanh_4_styles');