<?php /* Template Name: What's Happening Template */ ?>

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
				
				<h2>Upcoming <strong>Events</strong></h2>

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


$vacancy_tags = post_type_tags( 'events');

foreach( $vacancy_tags as $tag ) {
    echo '<div class="filter ' . esc_html( $tag->slug ) . '-trigger">' . esc_html( $tag->name ) . '</div>';


    echo '

    <script>



    jQuery(".' . esc_html( $tag->slug ) . '-trigger").click(function(){
        jQuery(".event:not(.' . esc_html( $tag->slug ) . ')").hide();
        jQuery(".event.' . esc_html( $tag->slug ) . '").show();
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
				

						<a href="<?php the_field('event_external_link'); ?>"><div class="event <?php 

							$post_tags = get_the_tags();
						 
						if ( $post_tags ) {
						    foreach( $post_tags as $tag ) {
						    echo $tag->slug . ' '; 
						    }
						}

						?>">
							
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


		</div>

		<div class="inner-sidebar">
		

		









				<?php 
   // the query
   $the_query = new WP_Query( array(
     'category_name' => 'past-events',
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
					
					<a href="<? the_permalink()?>"><h4><strong>Past Event</strong> - <?php the_title(); ?></h4></a>

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
