<?php /* Template Name: Creative Talent Template */ ?>

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
				
				<h2>Student <strong>Talent</strong></h2>

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


$vacancy_tags = post_type_tags( 'creatives');

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
					'post_type'			=> 'creatives',
					'posts_per_page'	=> -1,
					'meta_key'			=> 'creative_name',
					'orderby'			=> 'meta_value',
					'order'				=> 'ASC'
				));

				if( $posts ): ?>
					
						
					<?php foreach( $posts as $post ): 
						
						setup_postdata( $post )
						
						?>

						


						<a href="<?php the_field('creative_profile_link'); ?>" target="_new"><div class="vacancies <?php 

							$post_tags = get_the_tags();
						 
						if ( $post_tags ) {
						    foreach( $post_tags as $tag ) {
						    echo $tag->slug . ' '; 
						    }
						}

						?> "> 


						<div class="creative-image">
							
							<img src="<?php the_field('creative_profile_image'); ?>">

						</div>

						<div class="creative-description">

						<h5><strong><?php the_field('creative_name'); ?></strong></h5>

							<p><?php the_field('creative_description'); ?></p>

							<p class="study"><strong>Study Areas:</strong></p> <p class="trim"><?php 

							$post_tags = get_the_tags();
						 
						if ( $post_tags ) {
						    foreach( $post_tags as $tag ) {

						    echo $tag->name . ', '; 

						    }


						}

						?></p>

							

							<?php if( get_field('creative_profile_link') ): ?>

							<div class="inner-arrow-box">
							
								<div class="icon-right-arrow"></div>

							</div>

							<?php endif; ?>

						</div>



						<div class="clear"></div>

						<div class="horizontal-break"></div>

						</div></a>

						

					
					<?php endforeach; ?>	
					
				<?php wp_reset_postdata(); ?>

				<?php endif; ?>




				

			</div>


		</div>


		</div>

		<div class="inner-sidebar">
		

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






				<?php 
   // the query
   $the_query = new WP_Query( array(
     'category_name' => 'learner-experiences',
      'posts_per_page' => 1,
   )); 
?>

<?php if ( $the_query->have_posts() ) : ?>
  <?php while ( $the_query->have_posts() ) : $the_query->the_post(); ?>

   

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
					
					<a href="<? the_permalink()?>"><h4><strong>Learner Experience</strong> - <?php the_title(); ?></h4></a>

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






  <?php endwhile; ?>
  <?php wp_reset_postdata(); ?>

<?php else : ?>
  <p><?php __('No News'); ?></p>
<?php endif; ?>





					




		</div>

		<div class="clear"></div>

	</div>


<?php endwhile; // end of the loop. ?>



<?php get_footer(); ?>
