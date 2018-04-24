<?php /* Template Name: Creative Industries Inner Template */ ?>

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

				<div class="header-bar"><h3>Also in this section</h3></div>

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

						
			<div class="enlist">
				
				<h4>Are you a creative business?</h4>
				<p>Sign up to have your vacancies listed in our directory by clicking the link below.</p>
				<a class="button enlist-button" href="#">Enlist your business now!</a>

			</div>
						


		</div>

		<div class="clear"></div>

	</div>



<?php get_footer(); ?>
