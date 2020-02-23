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

?>