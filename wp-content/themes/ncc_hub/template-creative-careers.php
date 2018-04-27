<?php /* Template Name: Creative Careers - Vacancies Template */ ?>

<?php get_header(); 

if (has_post_thumbnail( $post->ID ) ){
    $image = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'single-post-thumbnail' )[0]; 
} else {
    $image = get_template_directory_uri().'/img/background.jpg';
}

?>


<?php while ( have_posts() ) : the_post(); ?>

	<div class="banner-image" style="background: url('<?php echo $image; ?>'); background-size: cover; background-position: center;">

		<div class="banner-overlay">
		
		<div class="banner-inner">

			<h1><strong><?php echo get_the_title(); ?></strong></h1>

		</div>

		</div>

	</div>


	<div class="inner-wrapper">
		
		<div class="inner-main">
			

			
		<div class="vacancies-box vacancies-box-mobile">

			<div class="vacancies-top">
				
				<h2><strong>Vacancies</strong></h2>

				<div class="filter-button">Filters <div class="icon-chevron-down"></div></div>


			</div>

			<div class="filters-wrap">
				


				<?php 

	function post_type_tags( $post_type = '' ) {
    global $wpdb;

    if ( empty( $post_type ) ) {
        $post_type = get_post_type();
    }

    return $wpdb->get_results( $wpdb->prepare( "
        SELECT COUNT( DISTINCT tr.object_id ) 
            AS count, tt.taxonomy, tt.description, tt.term_taxonomy_id, t.name, t.slug, t.term_id 
        FROM {$wpdb->posts} p 
        INNER JOIN {$wpdb->term_relationships} tr 
            ON p.ID=tr.object_id 
        INNER JOIN {$wpdb->term_taxonomy} tt 
            ON tt.term_taxonomy_id=tr.term_taxonomy_id 
        INNER JOIN {$wpdb->terms} t 
            ON t.term_id=tt.term_taxonomy_id 
        WHERE p.post_type=%s 
            AND tt.taxonomy='post_tag' 
        GROUP BY tt.term_taxonomy_id 
        ORDER BY count DESC
    ", $post_type ) );
}


$vacancy_tags = post_type_tags( 'vacancies');

foreach( $vacancy_tags as $tag ) {
    echo '<div class="filter ' . esc_html( $tag->slug ) . '-trigger">' . esc_html( $tag->name ) . '</div>';


    echo '

    <script>



    jQuery(".' . esc_html( $tag->slug ) . '-trigger").click(function(){
        jQuery(".vacancies:not(.' . esc_html( $tag->slug ) . ')").hide();
        jQuery(".vacancies.' . esc_html( $tag->slug ) . '").show();
        jQuery("body.vacancies").show();
        jQuery(".filter").removeClass("filter-active");
        jQuery(this).addClass("filter-active");
        

    });


    </script>


    ';





}


?>




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


						<a href="<?php the_field('external_link'); ?>"><div class="vacancies <?php 

							$post_tags = get_the_tags();
						 
						if ( $post_tags ) {
						    foreach( $post_tags as $tag ) {
						    echo $tag->slug . ' '; 
						    }
						}

						?> "> <h5><strong><?php the_field('job_title'); ?></strong> - 

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

		<div class="inner-sidebar">
			
			<div class="category-list">

				<div class="header-bar"><h3>In This Section</h3></div>

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


<?php endwhile; // end of the loop. ?>



<?php get_footer(); ?>
