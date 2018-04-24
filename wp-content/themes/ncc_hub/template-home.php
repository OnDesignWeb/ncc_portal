<?php /* Template Name: Home Template */ ?>

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

			<h1><?php echo get_the_title(); ?></h1><br>

			<p>

				<?php if ( have_posts() ) : while ( have_posts() ) : the_post();
		
						the_content();

					endwhile; else: endif; ?></p>

		</div>

		</div>

	</div>

	<div class="scroll-boxes">

		<!-- DESKTOP EVENTS BOX -->


		<div class="events-box events-box-home hide-sm">

			<div class="events-top">
				
				<h2>Upcoming <strong>Events</strong></h2>

				<a href="<?php echo get_site_url(); ?>/whats-happening/"><div class="arrow-box">
					
					<div class="icon-right-arrow"></div>

				</div></a>

			</div>

			<div class="events-scroller">


				<?php 

				// get posts
				$posts = get_posts(array(
					'post_type'			=> 'events',
					'posts_per_page'	=> -1,
					'meta_key'			=> 'event_date',
					'orderby'			=> 'meta_value',
					'order'				=> 'ASC'
				));

				if( $posts ): ?>
					
						
					<?php foreach( $posts as $post ): 
						
						setup_postdata( $post )
						
						?>
				

						<a href="<?php the_field('event_external_link'); ?>"><div class="event">
							
							<h5><strong><?php the_field('event_date'); ?> - <?php the_field('event_time'); ?></strong> - <?php the_field('event_name'); ?></h5>

							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vel erat 
							eget dolor sodales volutpat. Nulla facilisi. Nulla ut egestas ipsum.</p>

							<div class="horizontal-break"></div>


							<?php if( get_field('event_external_link') ): ?>

							<div class="inner-arrow-box">
							
								<div class="icon-right-arrow"></div>

							</div>

							<?php endif; ?>

						</div></a>

					
					<?php endforeach; ?>	
					
				<?php wp_reset_postdata(); ?>

				<?php endif; ?>


				<div class="events-end">That is all our events!</div>

			</div>


		</div>

		<!-- DESKTOP VACANCIES BOX -->



		<div class="vacancies-box vacancies-box-home hide-sm">

			<div class="vacancies-top">
				
				<h2>Featured <strong>Vacancies</strong></h2>

				<a href="<?php echo get_site_url(); ?>/creative-careers/vacancies/"><div class="arrow-box">
					
					<div class="icon-right-arrow"></div>

				</div></a>

			</div>

			<div class="vacancies-scroller">


				<?php 

				// get posts
				$posts = get_posts(array(
					'post_type'			=> 'vacancies',
					'posts_per_page'	=> -1,
					'meta_key'			=> 'job_title',
					'orderby'			=> 'meta_value',
					'order'				=> 'ASC'
				));

				if( $posts ): ?>
					
						
					<?php foreach( $posts as $post ): 
						
						setup_postdata( $post )
						
						?>

						<?php if ( get_field('featured') == true ) { ?>


						<a href="<?php the_field('external_link'); ?>"><div class="vacancies">
							
							<h5><strong><?php the_field('job_title'); ?></strong> - 


								<?php 

								$posts = get_field('employer');

								if( $posts ): ?>
								
									<?php foreach( $posts as $p ): ?>
									    <?php echo get_the_title( $p->ID ); ?>
									<?php endforeach; ?>
								
								<?php endif; ?>


							</h5>

							<p><?php the_field('job_description'); ?></p>

							<div class="horizontal-break"></div>

							<?php if( get_field('external_link') ): ?>

							<div class="inner-arrow-box">
							
								<div class="icon-right-arrow"></div>

							</div>

							<?php endif; ?>

						</div></a>

						<?php } ?>

					
					<?php endforeach; ?>	
					
				<?php wp_reset_postdata(); ?>

				<?php endif; ?>





				<div class="vacancies-end">That is all our vacancies!</div>

			</div>


		</div>


		<!-- MOBILE EVENTS BOX -->

		
		<div class="events-box events-box-mobile hide-lg">

			<div class="events-top">
				
				<h2>Upcoming <strong>Events</strong></h2>

				<a href="<?php echo get_site_url(); ?>/whats-happening/"><div class="arrow-box">
					
					<div class="icon-right-arrow"></div>

				</div></a>

			</div>

						<div class="events-scroller">


				<?php 

				// get posts
				$posts = get_posts(array(
					'post_type'			=> 'events',
					'posts_per_page'	=> 2,
					'meta_key'			=> 'event_date',
					'orderby'			=> 'meta_value',
					'order'				=> 'ASC'
				));

				if( $posts ): ?>
					
						
					<?php foreach( $posts as $post ): 
						
						setup_postdata( $post )
						
						?>
				

						<a href="<?php the_field('event_external_link'); ?>"><div class="event">
							
							<h5><strong><?php the_field('event_date'); ?> - <?php the_field('event_time'); ?></strong> - <?php the_field('event_name'); ?></h5>

							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vel erat 
							eget dolor sodales volutpat. Nulla facilisi. Nulla ut egestas ipsum.</p>

							<div class="horizontal-break"></div>


							<?php if( get_field('event_external_link') ): ?>

							<div class="inner-arrow-box">
							
								<div class="icon-right-arrow"></div>

							</div>

							<?php endif; ?>

						</div></a>

					
					<?php endforeach; ?>	
					
				<?php wp_reset_postdata(); ?>

				<?php endif; ?>



			</div>


		</div>





		<!-- MOBILE VACANCIES BOX -->



		<div class="vacancies-box vacancies-box-mobile hide-lg">

			<div class="vacancies-top">
				
				<h2>Featured <strong>Vacancies</strong></h2>

				<a href="<?php echo get_site_url(); ?>/creative-careers/vacancies/"><div class="arrow-box">
					
					<div class="icon-right-arrow"></div>

				</div></a>

			</div>

			<div class="vacancies-scroller">


				<?php 

				// get posts
				$posts = get_posts(array(
					'post_type'			=> 'vacancies',
					'posts_per_page'	=> -1,
					'meta_key'			=> 'job_title',
					'orderby'			=> 'meta_value',
					'order'				=> 'ASC'
				));

				if( $posts ): ?>
					
						
					<?php foreach( $posts as $post ): 
						
						setup_postdata( $post )
						
						?>

						<?php if ( get_field('featured') == true ) { ?>


						<a href="<?php the_field('external_link'); ?>"><div class="vacancies">
							
							<h5><strong><?php the_field('job_title'); ?></strong> - 

								<?php 

								$posts = get_field('employer');

								if( $posts ): ?>
								
									<?php foreach( $posts as $p ): ?>
									    <?php echo get_the_title( $p->ID ); ?>
									<?php endforeach; ?>
								
								<?php endif; ?>


							</h5>

							<p><?php the_field('job_description'); ?></p>

							<div class="horizontal-break"></div>

							<?php if( get_field('external_link') ): ?>

							<div class="inner-arrow-box">
							
								<div class="icon-right-arrow"></div>

							</div>

							<?php endif; ?>

						</div></a>

						<?php } ?>

					
					<?php endforeach; ?>	
					
				<?php wp_reset_postdata(); ?>

				<?php endif; ?>



			</div>



		</div>



	</div>

	<script>
    (function($){
        jQuery(window).on("load",function(){
            jQuery(".events-scroller").mCustomScrollbar();
             jQuery(".vacancies-scroller").mCustomScrollbar();

        });
    })(jQuery);
	</script>

	<div class="clear"></div>


	<div class="quick-links">
		
		<a href="<?php echo get_site_url(); ?>/creative-industries/industries-info-page/"><div class="quick-link-box first" style="background: url('<?php echo get_template_directory_uri(); ?>/img/industries.jpg'); background-size: 110% auto; background-position: center;">
			
			<div class="quick-link-overlay">

				<div class="quick-link-inner">
					
					<h3>Creative Industries</h3>

					<p>Are you looking for a creative job or placement?
					Take a look at our directory of creative companies
					and thier vacancies.</p>

				</div>

			</div>

		</div></a>



		<a href="<?php echo get_site_url(); ?>/creative-educators/info-page-1/"><div class="quick-link-box" style="background: url('<?php echo get_template_directory_uri(); ?>/img/educators.jpg'); background-size: 110% auto; background-position: center;">
			
			<div class="quick-link-overlay">

				<div class="quick-link-inner">
					
					<h3>Creative Educators</h3>

					<p>Do you teach a creative subject? We have 
					a selection of information and resources that 
					may be useful. </p>

				</div>

			</div>

		</div></a>



		<a href="<?php echo get_site_url(); ?>/creative-talent/"><div class="quick-link-box last" style="background: url('<?php echo get_template_directory_uri(); ?>/img/talent.jpg'); background-size: 110% auto; background-position: center;">
			
			<div class="quick-link-overlay">

				<div class="quick-link-inner">
					
					<h3>Creative Talent</h3>

					<p>Are you looking to employ creative talent. View
					our student portfolios here.</p>

				</div>

			</div>

		</div></a>

		<div class="clear"></div>

	</div>




<?php get_footer(); ?>
