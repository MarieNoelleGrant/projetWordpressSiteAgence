<?php

/* Ajout de deux sidebars personalisés */
if (function_exists('register_sidebar')) {
    register_sidebar(
        array(
            'name'          =>  'Emplacement gauche',
            'id'            =>  'gauche',
            'description'   =>  '',
            'class'         =>  '',
            'before_widget' =>  '<li>',
            'after_widget'  =>  '</li>',
            'before_title'  =>  '<h3>',
            'after_title'   =>  '</h3>'
        )
    );
    register_sidebar(
        array(
            'name'          =>  'Emplacement droite',
            'id'            =>  'droite',
            'description'   =>  '',
            'class'         =>  '',
            'before_widget' =>  '<li>',
            'after_widget'  =>  '</li>',
            'before_title'  =>  '<h3>',
            'after_title'   =>  '</h3>'
        )
    );

}

/* Ajout d'un emplacement de menu */
if (function_exists('register_nav_menus')) {
    register_nav_menus(
        array(
            'principal'  =>  'Menu principal',
            'secondaire'  =>  'Menu secondaire'
        )
    );
}

/* Création du réglage Image à la une */
if (function_exists('add_theme_support')) {
    add_theme_support('post-thumbnails');
}

/* Ajouter options personnalisation thème */
function enregistrer_personnalisation_theme($wp_customize){
    $wp_customize->add_section('ma_section',
        array(
            'title'=>'Option du thème Mon Agence',
            'description'=>'Personnalisation du thème Mon Agence',
            'priority'=>1)
    );
    $wp_customize->add_setting('charge_image');
    $wp_customize->add_control(new WP_Customize_Image_Control ($wp_customize, 'charge_image',
        array(
            'label'=>'Image d\'arrière plan : 1140x250px',
            'section'=>'ma_section',
            'setting'=>'charge_image')
    ));
}

add_action('customize_register', 'enregistrer_personnalisation_theme');

function personnalisation_css_theme() {?>
    <style type="text/css">
        header.image{
            background-image:url(<?php echo get_theme_mod('charge_image', 'none');?>);
            height:<?php
                    if(get_theme_mod('charge_image')!='') {
                        echo '250px';
                    }
                    else {
                        echo 'auto';
                    }?>
        }
    </style>
    <?php
    }

add_action('wp_head', 'personnalisation_css_theme');


/* Ajout des besoins pour la page réalisations */

function agence_realisations_custom_post() {
    $labels = array(
            'name' => _x('Réalisations de l\'agence', 'Post Type General Name'),
        'singular_name' => _x('Réalisations', 'Post Type Singular Name'),
        'menu_name' => __('Réalisations'),
        'all_items' => __('Toutes nos réalisations'),
        'view_item' => __('Voir nos réalisations'),
        'add_new_item' => __('Ajouter une réalisation'),
        'add_new' => __('Ajouter'),
        'edit_item' => __('Éditer une réalisation'),
        'update_item' => __('Modifier une réalisation'),
        'search_item' => __('Rechercher une réalisation'),
        'not_found' => __('Non trouvé'),
        'not_found_in_trash' => __('Non trouvé dans la corbeille')
    );
    $args = array(
            'label' => __('Nos réalisations'),
        'description' => __('Tous sur nos réalisations'),
        'labels' => $labels,
        'supports' => array('title', 'editor', 'excerpt', 'author', 'thumbnail',
            'comments', 'revisions', 'custom-fields'),
        'hierarchical' => false,
        'public' => true,
        'has_archive' => true,
        'rewrite' => array('slug', 'realisations')
    );
    register_post_type('realisations', $args);
}
add_action('init', 'agence_realisations_custom_post', 0);


/* Ajout des besoins pour la page services */

function agence_services_custom_post() {
    $labels = array(
        'name' => _x('Services de l\'agence', 'Post Type General Name'),
        'singular_name' => _x('Services', 'Post Type Singular Name'),
        'menu_name' => __('Services'),
        'all_items' => __('Toutes nos services'),
        'view_item' => __('Voir nos services'),
        'add_new_item' => __('Ajouter un service'),
        'add_new' => __('Ajouter'),
        'edit_item' => __('Editer un service'),
        'update_item' => __('Modifier un service'),
        'search_item' => __('Rechercher un service'),
        'not_found' => __('Non trouvé'),
        'not_found_in_trash' => __('Non trouvé dans la corbeille')
    );
    $args = array(
        'label' => __('Nos services'),
        'description' => __('Tous sur nos services'),
        'labels' => $labels,
        'supports' => array('title', 'editor', 'excerpt', 'author', 'thumbnail',
            'comments', 'revisions', 'custom-fields'),
        'hierarchical' => false,
        'public' => true,
        'has_archive' => true,
        'rewrite' => array('slug', 'services')
    );
    register_post_type('services', $args);
}
add_action('init', 'agence_services_custom_post', 0);



/* Ajout des besoins pour la page équipe */

function agence_equipe_custom_post() {
    $labels = array(
        'name' => _x('Équipe de l\'agence', 'Post Type General Name'),
        'singular_name' => _x('Équipe', 'Post Type Singular Name'),
        'menu_name' => __('Équipe'),
        'all_items' => __('Toute l\'équipe'),
        'view_item' => __('Voir notre équipe'),
        'add_new_item' => __('Ajouter un membre de l\'équipe'),
        'add_new' => __('Ajouter'),
        'edit_item' => __('Éditer un membre de l\'équipe'),
        'update_item' => __('Modifier un membre de l\'équipe'),
        'search_item' => __('Rechercher un membre de l\'équipe'),
        'not_found' => __('Non trouvé'),
        'not_found_in_trash' => __('Non trouvé dans la corbeille')
    );
    $args = array(
        'label' => __('Notre équipe'),
        'description' => __('Tous sur notre équipe'),
        'labels' => $labels,
        'supports' => array('title', 'editor', 'excerpt', 'author', 'thumbnail',
            'comments', 'revisions', 'custom-fields'),
        'hierarchical' => false,
        'public' => true,
        'has_archive' => true,
        'rewrite' => array('slug', 'équipe')
    );
    register_post_type('equipe', $args);
}
add_action('init', 'agence_equipe_custom_post', 0);


/* Ajout des tailles pour les images */
// @todo J'ai seulement mis une taille pour les images format 16:9 en mobile qui sont bleed!! (+ un format qui équivault à span(6 of 12)
// @todo Ajoutez les tailles 'sur mesure' qu'il manque pour vos pages! :)
if (function_exists('add_image_size')) {
    add_image_size('mobile_bleed', 600, 9999, false);
    add_image_size('col6de12', 490, 275, true);
}

?>


