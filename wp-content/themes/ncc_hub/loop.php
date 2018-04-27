<?php if (have_posts()): while (have_posts()) : the_post(); ?>

<a href="<?php the_permalink(); ?>"><div class="news-item related-blog">
	
	<div class="top-image" style="background: url('<?php 


if (has_post_thumbnail( $post->ID ) ){
    $image = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'single-post-thumbnail' )[0]; 
} else {
    $image = get_template_directory_uri().'/img/background.jpg';
}


echo $image;



				 ?>'); background-size: cover; background-position: center;"></div>

	<div class="news-item-text">
		
		<h3><?php the_title(); ?></h3>

		<p class="date"><?php the_date(); ?></p>

		<p><?php 

					$content = get_the_content();
					echo substr($content, 0, 200);

					 ?>...</p>

		<span style="text-align: center;"><div class="button">Read More</div></span>

	</div>

</div></a>

<?php endwhile; ?>





<?php endif; ?>

<div class="clear">
