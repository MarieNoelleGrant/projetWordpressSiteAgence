<!doctype html>
<html <?php language_attributes(); ?>
<head>
    <title>
        <?php bloginfo('name'); ?>
        <?php if (is_home() || is_front_page()) : ?>
            | <?php bloginfo('description'); ?>
        <?php else : ?>
            | <?php wp_title("",true); ?>
        <?php endif; ?>
    </title>
    <meta charset="<?php bloginfo('charset'); ?>"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>"/>
    <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
<header id="en-tete" class="image">
    <?php // Fonction qui retourne true or false si la barre de navigation est utilisée ou non ?>
    <?php if (has_nav_menu('principal')) : ?>
        <nav id="principal">
            <?php wp_nav_menu( array('theme_location'=>'principal')); ?>
        </nav>
    <?php endif; ?>
    <h1 class="inline">
        <a href="<?php bloginfo('url'); ?>" title="<?php bloginfo('name'); ?>">
            <?php bloginfo('name'); ?>
        </a>
    </h1>
    <h2 class="inline"><?php bloginfo('description'); ?></h2>
</header>

<!-- Menu "secondaire" actif -->
<?php if (has_nav_menu('secondaire')) : ?>
    <nav id="secondaire">
        <?php wp_nav_menu (array('theme_location'=>'secondaire')); ?>
    </nav>
<?php endif; ?>
<div id="contenu">