<?php /* Template Name: Creative Educators Inner Template */ ?>

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

						<div class="category-list">

				<div class="header-bar"><h3>Resources</h3></div>

				<?php 

				$rows = get_field('resource');
				if($rows)
				{
					echo '<ul>';

					foreach($rows as $row)
					{
						echo '<li><a href="'. $row['resource_download'] .'" target="_new">'. $row['resource_name'] .'</a></li>';


						 
					}

					echo '</ul>';
				}

				?>


			</div>


			<?php 
   // the query
   $the_query = new WP_Query( array(
     'category_name' => 'case-studies',
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
					
					<a href="<? the_permalink()?>"><h4><strong>Case Study</strong> - <?php the_title(); ?></h4></a>

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



<?php get_footer(); ?>
