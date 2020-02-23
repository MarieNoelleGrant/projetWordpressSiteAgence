<!-- Appel à l'entête de page -->
<?php /*Template name: Accueil*/
    get_header();
    echo "page-accueil.php";
?>

<?php
// Gestion des largeur des sidbar et du contenu
switch(true) {
    case is_active_sidebar('gauche') && is_active_sidebar('droite') :
        // si les deux sidebars sont utilisées
        $arrWidths=["25","50","25"];
        break;
    case is_active_sidebar('gauche') && is_active_sidebar('droite')==false :
        // si la sidebar de gauche = oui, droite = non
        $arrWidths=["25","75","0"];
        break;
    case is_active_sidebar('gauche')==false && is_active_sidebar('droite') :
        // si les deux sidebars sont utilisées
        $arrWidths=["0","75","25"];
        break;
    default :
        // aucune sidebar
        $arrWidths=["0","100","0"];
}

// Ajoute la sidebar gauche si besoin
if (is_active_sidebar('gauche')) {?>
    <aside id="gauche" style="width: <?php echo $arrWidths[0]; ?>%">
        <?php get_sidebar('gauche'); ?>
    </aside> <?php
}
?>


<!-- Corps de la page -->
<main id="main" style="width: <?php echo $arrWidths[1]; ?>%">
    <?php the_post(); ?>
    <div class="en-tete-page">
        <h1><?php the_title(); ?></h1>
    </div>

    <?php if (has_post_thumbnail()){?>
        <div class="image-une">
            <?php //affiche contenu de la page
            the_post_thumbnail("medium");?>
        </div>
    <?php
    } ?>

    <?php the_content(); ?>
</main>

<?php
//Ajout de la barre latérale droite au besoin
if (is_active_sidebar('droite')) { ?>
    <aside id="droite" style="width: <?php echo $arrWidths[2]; ?>%">
        <?php get_sidebar('droite'); ?>
    </aside> <?php
}
?>



<!-- Appel au pied de page -->
<?php get_footer(); ?>