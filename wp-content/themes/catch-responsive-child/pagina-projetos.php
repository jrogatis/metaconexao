<article id="Artigo_Post_Nossas_Historias">

			<?php // Display blog posts on any page @ http://m0n.co/l
			//tem que buscar todos posts que são post_type page da category product
			
    $temp = $wp_query; $wp_query= null;
	
	$args = array(
	    'post_type' => 'pageex',
		'meta_query' => array( array(
          	'key' => 'category',
          	'value' => 'product',
			)
        )			
	);
	
    $wp_query = new WP_Query($args); 
	
    while ($wp_query->have_posts()) : $wp_query->the_post(); ?>

	

				<h2><a id= "titulo_Projeto" href="<?php the_permalink(); ?>" title="Read more"><?php the_title(); ?></a></h2>

				<div class="Conteudo_Pagina_Projetos">
					<?php the_content(); ?>
				</div>
            
            
	<?php endwhile; ?>

					

	<?php wp_reset_postdata(); ?>

</article>