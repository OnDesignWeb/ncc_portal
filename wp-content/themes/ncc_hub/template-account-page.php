<?php /* Template Name: Account Page Template */ ?>

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

				<?php if ( is_user_logged_in() ) { ?>
				    
				    <h1><strong><?php echo get_the_title(); ?></strong></h1>

				<?php } else { ?>

				    <h1><strong>Login / Register</strong></h1>

				<?php } ?>

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

				<div class="header-bar"><h3>Your Account</h3></div>

				<?php if ( is_user_logged_in() ) { ?>
				    
				    <ul>
				   		<li><a href="<?php echo get_site_url(); ?>/membership-login/membership-profile/?a=edit">Edit your information</a></li>
				   		<li><a href="<?php echo get_site_url(); ?>/membership-login/membership-profile/?a=pwdchange">Change your password</a></li>
				   		<li><a href="<?php echo wp_logout_url( home_url() ); ?>">Logout</a></li>
					</ul>

				<?php } else { ?>

				    <ul>
				   		<li><a href="<?php echo get_site_url(); ?>/membership-login/membership-profile/?a=edit">Login / Register</a></li>
				   		<li><a href="<?php echo get_site_url(); ?>/membership-login/membership-profile/?a=pwdreset">Reset your password</a></li>
					</ul>

				<?php } ?>

				

			</div>

		</div>
		

		<div class="clear"></div>

	</div>



<?php get_footer(); ?>
