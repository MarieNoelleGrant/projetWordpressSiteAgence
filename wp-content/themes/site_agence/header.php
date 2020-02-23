<?php
    // Pour tous les liens vers librairies externes!!
    $cheminTheme = get_template_directory_uri();
?>

<!doctype html>
<html <?php language_attributes(); ?>>
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
    <link rel="stylesheet" href="<?php echo $cheminTheme?>/css/styles.min.css"/>
    <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
<header id="en-tete" class="image">
    <?php // Fonction qui retourne true or false si la barre de navigation est utilisée ou non ?>
    <?php if (has_nav_menu('principal')) : ?>
        <div class="barreNav conteneur">
            <a href="<?php bloginfo('url'); ?>" class="barreNav__logo">
                <picture class="">
                    <source media="(max-width: 600px)"
                            srcset="<?php bloginfo("url");?>/wp-content/uploads/2019/03/logo_initiales.png"/>
                    <source media="(min-width: 601px)"
                            srcset="<?php bloginfo("url");?>/wp-content/uploads/2019/03/logo_simple.png"/>
                    <img src="<?php bloginfo("url");?>/wp-content/uploads/2019/03/logo_simple.png" alt="Retour accueil Magenta Babies"/>
                </picture>
            </a>
            <nav id="principal" class="barreNav__menu">
                <?php wp_nav_menu( array('theme_location'=>'principal')); ?>
            </nav>
        </div>
        <div class="fond_header"></div>
        <div class="elementGraphique_header conteneur">
            <?php if (is_home() || is_front_page()) : ?>
                <div class="conteneur">
                    <h1 class="screen-reader-only"><?php bloginfo('name'); ?></h1>
                    <p class="screen-reader-only"><?php bloginfo('description'); ?></p>
                </div>
            <?php endif; ?>
        </div>
    <?php endif; ?>
</header>

<!-- Menu "secondaire" actif -->
<?php if (has_nav_menu('secondaire')) : ?>
    <nav id="secondaire">
        <?php wp_nav_menu (array('theme_location'=>'secondaire')); ?>
    </nav>
<?php endif; ?>