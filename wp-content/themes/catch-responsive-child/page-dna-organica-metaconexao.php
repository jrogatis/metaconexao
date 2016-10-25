<?php get_header();?>
    <div id="pag_dna">
        <div id="Wrap_Cabeçario">
                
            <!-- Pega o texto da página -->
            <?php $page=get_page_by_title( 'DNA - Organica Metaconexão');
            
                  $content=apply_filters('the_content', $page->post_content);
            ?>
       			
                <div id="texto-DNA"> <?php echo $content ?> </div>
          </div>  
        
            <!--carrega o blog -->
     <h2 id="Sub_Titulo_DNA">Nossas Histórias</h2>       
    <?php echo get_template_part('sub-page-posts');?>
</div>


<?php get_footer();?>