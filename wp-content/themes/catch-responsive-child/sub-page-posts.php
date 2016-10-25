 
	<article id="Artigo_Post_Nossas_Historias">
    
		<?php // Display blog posts on any page @ http://m0n.co/l
		
			$temp=$wp_query;
			$wp_query=null;
			$wp_query=new WP_Query();
			$wp_query->query('showposts=5' . '&paged='.$paged);
			//enquanto tiver posts 
			while ($wp_query->have_posts()): $wp_query->the_post();
			
		?>
			<h2><a id="titulo_Post" href="<?php the_permalink(); ?>" title="Leia Mais"><?php the_title();?></a></h2>
            
			<!--info do post --------------------------------------->
			<div id="infos_do_post">
            
				<!-- data de publicação -->
                <span class="screen-reader-text">Publicado em: </span> 
                <a class="info_do_post" rel="bookmark" href=<?php the_permalink() ?>> 
                <time class="entry-date published"> 
                	<i class="fa fa-calendar" aria-hidden="true"></i> <?php the_date() ?> </time>
                 </a>
                 
				<!--autor-->
                <a id="Autor_do_post" class="info_do_post" href=<?php the_permalink() ?>>
                	 <i class="fa fa-user" aria-hidden="true"></i> <?php the_author() ?> 
                </a>
                
				<!--link para comentários-->
                <span class="comments-link"> <a class="info_do_post" href=<?php the_permalink() . "#respond" ?>> <i class="fa fa-comment" aria-hidden="true"></i> Deixe um Comentário!</a> </span> </div>
                
			<!-- fim info do post --------------------------------------->
            
			<div id="post_nossas_historias">
            
				<!--imagem do post --------------------------------------->
				<div id="imagem_do_post">
					<?php the_post_thumbnail('thumbnail') ?>
				</div>
				<!-- o post --------------------------------------->
				<div id="Conteudo_Post">
					<?php
					 	the_excerpt();
					?>
				</div>
			</div>
			<?php 
				endwhile;
			?>
				<?php if ($paged > 1) {
		?>
					<nav id="nav-posts">
						<div class="prev">
							<?php next_posts_link('&laquo; Previous Posts');
		?>
						</div>
						<div class="next">
							<?php previous_posts_link('Newer Posts &raquo;');
		?>
						</div>
					</nav>
					<?php
	}
	
	else {
		?>
						<nav id="nav-posts">
							<div class="prev">
								<?php next_posts_link('&laquo; Previous Posts');
		?>
							</div>
						</nav>
						<?php
	}
	
	?>
							<?php wp_reset_postdata();
	?>
	</article>