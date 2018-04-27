<?php /* Template Name: Creative Careers Inner Template */ ?>

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

				<div class="header-bar"><h3>Information</h3></div>

				<?php
					if ( $post->post_parent ) {
					    $children = wp_list_pages( array(
					        'title_li' => '',
					        'child_of' => $post->post_parent,
					        'echo'     => 0
					    ) );
					} else {
					    $children = wp_list_pages( array(
					        'title_li' => '',
					        'child_of' => $post->ID,
					        'echo'     => 0
					    ) );
					}
					 
					if ( $children ) : ?>
					    <ul>
					        <?php echo $children; ?>
					    </ul>
					<?php endif; ?>


			</div>

						

						<div class="related-blog video-box">
				

				<a href="<?php the_field('video_link'); ?>" target="_new"><div class="top-image" style="background: url('<?php the_field('poster_image'); ?>'); background-size: cover; background-position: center;">
					
					<div class="video-overlay">
						
						<img src="<?php echo get_template_directory_uri(); ?>/img/play-button.png">

					</div>

				</div>

				<div class="bottom-text">

					
					
					<h4><?php the_field('video_name'); ?></h4></a>

					<p><?php echo get_field('video_description'); ?></p>

					<center>
						

						<a class="button" href="https://www.youtube.com/user/NelsonColneCollege/">View our YouTube Channel</a>


					</center>




				</div>


			</div>


		</div>

		<div class="clear"></div>

	</div>



<?php get_footer(); ?>
