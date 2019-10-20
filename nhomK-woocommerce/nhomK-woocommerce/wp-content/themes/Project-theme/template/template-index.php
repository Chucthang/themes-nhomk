
<?php
/*
 Template Name: Trang Chủ
 */

 get_header(); // Header?>


 <div class="box_ajax"> 
<?php 
     get_template_part('module/1', 'slidebanner');  ?>


<?php          
 if (is_active_sidebar('minhcanh-4')) {   // Module 4 ( Widget )
     dynamic_sidebar('minhcanh-4');
 }  

 ?>

 <?php 
  wrap_above(); // container ..v.v..
       get_template_part('Callwidget/number', 'collection');

 wrap_below();  // container ..v.v..
 ?>


</div>
<?php 
 get_footer();  // Footer