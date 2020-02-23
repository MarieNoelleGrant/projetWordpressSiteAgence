<!-- Appel à l'entête de page -->
<?php get_header();
echo "home.php";
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
    <?php
    // si la page reçoit des articles
    if(have_posts()) {
        // tant qu'il y a des articles à afficher
        while(have_posts()) {
            // passe à l'article suivant -- equivalent du fetch de pdo
            the_post();?>
            <article>
                <header class="titre-article">
                    <h2>
                        <?php // affiche le lieu et le titre de l'article ?>
                        <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
                    </h2>
                </header>

                <?php // affiche le thumbnail/image
                if(has_post_thumbnail()){?>
                    <div class="image-une">
                        <?php //affiche le contenu de l'article
                        the_post_thumbnail("thumbnail");?>
                    </div>

                <?php
                } ?>


                <?php // affiche le contenu de l'article
                the_content();
                ?>
            </article>
        <?php
        }
    }
    ?>
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
