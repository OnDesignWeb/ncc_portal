<?php get_header(); 

if (has_post_thumbnail( $post->ID ) ){
    $image = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'single-post-thumbnail' )[0]; 
} else {
    $image = get_template_directory_uri().'/img/background.jpg';
}

?>

	<div class="banner-image" style="background: url('<?php echo $image; ?>'); background-size: cover; background-position: center;">

		<div class="banner-overlay">
		
		<div class="banner-inner">

			<h1><strong><?php echo get_the_title(); ?></strong></h1><br>

			<p><span class="date">Published <?php the_time('D F j, Y'); ?></span>

				</p>

		</div>

		</div>

	</div>


	<div class="inner-wrapper">
		
		<div class="inner-main">
			

			<?php if (have_posts()): while (have_posts()) : the_post(); ?>

		<!-- article -->
		<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>


			<?php the_content(); // Dynamic Content ?>


			<?php edit_post_link(); // Always handy to have Edit Post Links available ?>


		</article>
		<!-- /article -->

	<?php endwhile; ?>

	<?php endif; ?>



		</div>

		<div class="inner-sidebar">
			
			<div class="category-list">

				<div class="header-bar"><h3>Categories</h3></div>

				<ul>
				    <?php wp_list_categories( array(
				        'orderby'    => 'name',
				        'show_count' => false,
				        'exclude'    => array( 1 ),
				        'title_li' => '',
				    ) ); ?> 
				</ul>

			</div>


			<?php $orig_post = $post;
			global $post;
			$categories = get_the_category($post->ID);
			if ($categories) {
			$category_ids = array();
			foreach($categories as $individual_category) $category_ids[] = $individual_category->term_id;

			$args=array(
			'category__in' => $category_ids,
			'post__not_in' => array($post->ID),
			'posts_per_page'=> 1,
			'caller_get_posts'=>1
			);

			$my_query = new wp_query( $args );
			if( $my_query->have_posts() ) {

			while( $my_query->have_posts() ) {
			$my_query->the_post();?>


			<div class="related-blog">
				

				<div class="top-image" style="background: url('<?php 


if (has_post_thumbnail( $post->ID ) ){
    $image = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'single-post-thumbnail' )[0]; 
} else {
    $image = get_template_directory_uri().'/img/background.jpg';
}


echo $image;


				 ?>'); background-size: cover; background-position: center;"></div>

				<div class="bottom-text">
					
					<a href="<? the_permalink()?>"><h4><strong>Related</strong> - <?php the_title(); ?></h4></a>

					<p><?php 

					$content = get_the_content();
					echo substr($content, 0, 200);

					 ?>...</p>

					<center>
						
						<?php
						$get_cat        = get_the_category();
						$first_cat      = $get_cat[0];
						$category_name  = $first_cat->cat_name;
						$category_link  = get_category_link( $first_cat->cat_ID ); ?>
						<a class="button" href="<?php echo esc_url( $category_link ); ?>" title="<?php echo esc_attr( $category_name ); ?>">View all <?php echo esc_html( $category_name ); ?></a>


					</center>

				</div>


			</div>

			<?
			}
			}
			}
			$post = $orig_post;
			wp_reset_query(); ?>


		</div>

		<div class="clear"></div>

	</div>



<?php get_footer(); ?>
