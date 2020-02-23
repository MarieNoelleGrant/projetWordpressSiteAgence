<!-- Appel à l'entête de page -->
<?php get_header();
      echo "single-t.php";
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
    <aside id="gauche" style="max-width: <?php echo $arrWidths[0]; ?>%">
        <?php get_sidebar('gauche'); ?>
    </aside> <?php
}
?>

<!-- Corps de la page -->
<main id="articles" style="max-width: <?php echo $arrWidths[1]; ?>%">
    <h2>Section nouvelles</h2>
    <?php the_post(); ?>
        <article>
            <?php get_template_part('content', get_post_format()); ?>
        </article>

        <?php // Liens vers articles précédents et suivants!! ?>
        <div>
            <?php previous_post_link('&laquo; %link', '%title', false, '');?>
        </div>
        <div>
            <?php next_post_link(' %link &raquo;', '%title', false, '');?>
        </div>
</main>

<?php
//Ajout de la barre latérale droite au besoin
if (is_active_sidebar('droite')) { ?>
    <aside id="droite" style="max-width: <?php echo $arrWidths[2]; ?>%">
        <?php get_sidebar('droite'); ?>
    </aside> <?php
}
?>

<!-- Appel au pied de page -->
<?php get_footer(); ?>

