<head>
<?php
/**
 * Template Name: Pagina para Pessoas
 * @package Catch Themes
 * @subpackage Catch Responsive
 * @since Catch Responsive 1.0
 * Template: catch-responsive-child
 */
 
 /*aqui que pego o header da pagina*/
 get_header();
?>
</head>
<body>
<!--aqui que coloca o post quando e post unico como este -->

<main id="main" class="site-main" role="main">

		<?php while ( have_posts() ) : the_post(); ?>
				
			<?php get_template_part( 'content', 'page' ); ?>

			<?php 
				/** 
				 * catchresponsive_comment_section hook
				 *
				 * @hooked catchresponsive_get_comment_section - 10
				 */
				do_action( 'catchresponsive_comment_section' ); 
			?>

		<?php endwhile; // end of the loop. ?>

	</main><!-- #main -->

<?php echo get_template_part('tab-pessoas');?>


<!--Aqui pede o sidebar e o footer da pagina!-->
<?php //get_sidebar(); ?>
<?php get_footer(); ?>

</body>

