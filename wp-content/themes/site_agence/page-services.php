<!-- Appel à l'entête de page -->
<?php get_header();
/* Template name: Services */
//      echo "page-services.php";
?>


<!-- Corps de la page -->
<main id="main" class="service">
    <?php $page=get_post(); ?>
<!--    <div class="deco__titreH1 deco__titreH1--pale deco__titreH1--paleServices">-->
<!--        <h1 class="deco__titreH1_titre">Nos <span class="deco__titreH1_titre--accentTurquoise">services</span></h1>-->
<!--    </div>-->

    <section class="service__presentation">
        <div class="conteneur">
            <div class="deco__titreH1 deco__titreH1--pale deco__titreH1--paleServices service__presentation_titre">
                <h1 class="deco__titreH1_titre">Nos <span class="deco__titreH1_titre--accentTurquoise">services</span></h1>
            </div>
            <!-- **partie à changer pour les images** -->
            <div class="service__presentation_conteneurPosition">
                <picture class="service__presentation_conteneurPosition_image">
                    <source media="(min-width:601px)" srcset="
                    <?php echo get_field("image_service_table") ?>">
                    <source media="(max-width:600px)" srcset="
                    <?php echo get_field("image_service_mobile") ?>">
                    <img src="<?php echo get_field("image_service_mobile") ?>" alt="">
                </picture>

                <div class="deco__boiteTexteBlanche service__presentation_conteneurPosition_boiteTexte">
                    <div class="deco__boiteTexteBlanche_espaceTxt service__presentation_conteneurPosition_boiteTexte_interne">
                        <?= $page->post_content?>
                    </div>
                    <div class="deco__angle--turquoise service__presentation_conteneurPosition_boiteTexte_deco"></div>
                </div>
            </div>

            <!--************************************* -->
        </div>
    </section>

    <section class="service__contenu">
        <div class="conteneur service__contenu_conteneurPosition">
            <!-- class a changer pour le carre magenta-->
            <div class="service__contenu_backgroundDeco deco__boiteNeon deco__boiteNeon-magenta">
            </div>
            <div class="service__contenu_groupement">
                <?php
                $posts = get_posts(array(
                    'posts_per_page' => -1,
                    'post_type' => 'services',
                    'post_status' => 'publish',
                    'orderby' => 'the_title',
                    'order' => 'ASC',
                ));

                if($posts): ?>
                    <?php foreach($posts as $post):?>
                        <div class="service__contenu_element">
                            <img class="service__contenu_element_icon" src="<?= get_field("icone_du_service"); ?>" width="100" alt="">

                            <h2 class="service__contenu_element_titre deco__nomService"><?= $post->post_title;?></h2>

                            <p class="service__contenu_element_texte"><?= get_field("texte_raccourcie"); ?></p>

                            <p class="service__contenu_element_link"><a href="<?php echo $post->guid;?>">
                                    <span class="lien__pale_neon--magenta">En lire plus</span>
                                </a></p>
                        </div>
                    <?php endforeach; ?>
                <?php endif; ?>
            </div>
        </div>
    </section>
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