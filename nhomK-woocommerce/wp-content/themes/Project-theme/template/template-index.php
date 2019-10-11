
<?php
/*
 Template Name: Trang Chủ
 */
 ?>
<?php get_header();?>

            <?php  get_template_part('module/1', 'slidebanner'); ?>
<div class="wrap_content">
    <div class="container">
          <div class="box_ajax">
                <?php  get_template_part('Callwidget/number', 'collection'); ?>



          </div>

    </div>
</div>
<?php get_footer(); ?>