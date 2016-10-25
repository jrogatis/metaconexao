<?php
//update_option( 'siteurl', 'http://www.metaconexao.com.br' );
//update_option( 'home', 'http://www.metaconexao.com.br/metaconexao' );


function theme_enqueue_styles() {
    wp_enqueue_style( 'parent-style', get_template_directory_uri() . '/style.css' );

}

add_action( 'wp_enqueue_scripts', 'theme_enqueue_styles' );

function debug_to_console( $data ) {
    if ( is_array( $data ) )
        $output = "<script>console.log( 'Debug Objects: " . implode( ',', $data) . "' );</script>";
    else
        $output = "<script>console.log( 'Debug Objects: " . $data . "' );</script>";

    echo $output;
}


function additional_custom_styles() {

    /*Enqueue The Styles duvida se coloco o nome do tema ou do stylesheet*/
    wp_enqueue_style( 'jquery-ui', get_stylesheet_directory_uri() . '/js/jquery/jquery-ui.css' );
	wp_enqueue_style( 'jquery-ui.theme', get_stylesheet_directory_uri() . '/js/jquery/jquery-ui.theme.css' );
	wp_enqueue_style( 'jquery-ui.structure', get_stylesheet_directory_uri() . '/js/jquery/jquery-ui.structure.css' );

}


add_action( 'wp_enqueue_scripts', 'additional_custom_styles' );

function my_js_include_function() {
	
	
	wp_register_script( 'my_jquery-ui.js', get_stylesheet_directory_uri() . '/js/jquery/jquery-ui.js', array('jquery'));
	 wp_enqueue_script( 'my_jquery.js', get_stylesheet_directory_uri() . '/js/jquery/external/jquery/jquery.js', array('jquery'));
    wp_enqueue_script( 'my_jquery-ui.js');
	  wp_enqueue_script( 'my_jquery.js');
}

add_action( 'wp_enqueue_scripts', 'my_js_include_function' );


//func que tras a url de qq coisa pelo slug
function get_attachment_url_by_slug( $slug ) {
  $args = array(
    'post_type' => 'attachment',
    'name' => sanitize_title($slug),
    'posts_per_page' => 1,
    'post_status' => 'inherit',
  );
  $_header = get_posts( $args );
  $header = $_header ? array_pop($_header) : null;
  return $header ? wp_get_attachment_url($header->ID) : '';
}


?>
