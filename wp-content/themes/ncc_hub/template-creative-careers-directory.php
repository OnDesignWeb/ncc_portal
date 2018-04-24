<?php /* Template Name: Creative Careers - Directory Template */ ?>

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


$vacancy_tags = post_type_tags( 'employers');

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
					'post_type'			=> 'employers',
					'posts_per_page'	=> -1,
					'order'				=> 'ASC'
				));

				if( $posts ): ?>
					
						
					<?php foreach( $posts as $post ): 
						
						setup_postdata( $post )
						
						?>





						<div class="vacancies <?php 

							$post_tags = get_the_tags();
						 
						if ( $post_tags ) {
						    foreach( $post_tags as $tag ) {
						    echo $tag->slug . ' '; 
						    }
						}

						?> 

						"> <h5><strong><?php the_field('employer_name'); ?></strong> - 2 Vacancies</h5>

							<p><?php the_field('employer_description'); ?></p>

							<div class="inner-arrow-box exp-trigger">
							
								<div class="icon-plus"></div>

							</div>


							<div class="exp-panel">



								


								
								<a href="#"><div class="exp-job">

									<div class="exp-job-text">
										<h3>Vacancy Name</h3>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vel erat eget dolor sodales volutpat. Nulla facilisi. Nulla ut egestas ipsum.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vel erat eget dolor sodales volutpat. </p>
									</div>
									<div class="exp-job-arrow">
										<div class="icon-right-arrow"></div>
									</div>

									<div class="horizontal-break"></div>

								</div></a>






							</div>

							<div class="horizontal-break"></div>

					

							


						</div>


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



	<div class="enlist">
				
				<h4>Are you a creative business?</h4>
				<p>Sign up to have your vacancies listed in our directory by clicking the link below.</p>
				<a class="button enlist-button" href="#">Enlist your business now!</a>

			</div>

					




		</div>

		<div class="clear"></div>

	</div>


<?php endwhile; // end of the loop. ?>



<?php get_footer(); ?>
