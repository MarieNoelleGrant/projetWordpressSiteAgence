<!-- Appel à l'entête de page -->
<?php get_header();
//  echo "single-services.php";
?>

<!-- Corps de la page -->
<main class="templateServicesRealisations serviceElement">

    <section class="serviceElement__contenu">

        <div class="conteneur">
            <div class="serviceElement__boutonRetour boutonRetour">
                <a href="<?php echo get_permalink(77)?>">
                    <?php $srcimagebefore = wp_get_attachment_image_src(508,"full") ;?>
                    <img  class="boutonRetour__fleche" src="<?php echo $srcimagebefore[0];?>" alt="flèche pour le retour">
                    <span class="boutonRetour__texte">Retour aux <?php echo get_the_title(77)?></span>
                </a>
            </div>
            <div class="deco__titreH1 deco__titreH1--pale deco__titreH1--paleServices service__presentation_titre">
                <h1 class="deco__titreH1_titre">Nos <span class="deco__titreH1_titre--accentTurquoise">services</span></h1>
            </div>
            <div class="serviceElement__contenu_conteneurPosition">


                <?php the_post(); ?>
                <div class="serviceElement__contenu_conteneurPosition_illustration">
                    <div class="serviceElement__contenu_conteneurPosition_illustration_image" style="background-image: url(<?=  get_field("image_decoration"); ?>)"></div>
                    <div class="deco__angle--turquoise serviceElement__contenu_conteneurPosition_illustration_deco"></div>
                </div>

                <article class="serviceElement__contenu_conteneurPosition_information">

                    <div class="serviceElement__contenu_conteneurPosition_information_conteneurPosition">
                        <div class="serviceElement__contenu_conteneurPosition_information_icon">
                            <img src="<?= get_field("icone_du_service"); ?>" width="100" alt="">
                        </div>

                        <h2 class="serviceElement__contenu_conteneurPosition_information_titre deco__nomService"><?= $post->post_title?></h2>
                    </div>

                    <p class="serviceElement__contenu_conteneurPosition_information_texte"><?php echo  $post->post_content; ?></p>

                    <!-- problem de redirection -->
                    <div class="serviceElement__contenu_conteneurPosition_information_responsable">
                        <div class="bouton__pale bouton__pale_fond">
                            <a href="<?= get_field("responsable"); ?>">
                                <span class="bouton__pale_neon">Voir le responsable du service</span>
                            </a>
                        </div>
                    </div>

                    <?php //get_template_part( 'content, get_post_format ()); ?>

                </article>

            </div>

            <!-- nav à refaire -->
            <div class="serviceElement__contenu_nav">
                <?php $prev = get_previous_post();?>
                <div class="serviceElement__contenu_nav_before">
                    <?php if($prev != null){ ?>
                    <a class="icone" href="<?= $prev->guid ?>">
                        <?php $srcimagebefore = wp_get_attachment_image_src(508,"full") ;?>

                        <img class="serviceElement__contenu_nav_fleche" src="<?php echo $srcimagebefore[0];?>" alt="flèche du lien vers le service précédent">
                        <div class="serviceElement__contenu_nav_sousConteneur">
                            <img class="serviceElement__contenu_nav_icon icone__hover" src="<?= substr_replace(get_field('icone_du_service', $prev->ID), 'petit_inactive-150x150', -8, 4); ?>" alt="icone du lien vers le service précédent">
                            <p class="serviceElement__contenu_nav_titre"><?= $prev->post_title?></p>
                        </div>

                    </a>
                    <?php }?>
                </div>

                <div class="serviceElement__contenu_nav_next">
                    <?php $next = get_next_post();?>
                    <?php if($next != null){ ?>
                    <a class="icone" href="<?= $next->guid ?>">
                        <?php $srcimagenext = wp_get_attachment_image_src(509,"full") ;?>
                        <div class="serviceElement__contenu_nav_sousConteneur">
                            <p class="serviceElement__contenu_nav_titre"><?= $next->post_title?></p>
                            <img class="serviceElement__contenu_nav_icon icone__hover" src="<?= substr_replace(get_field('icone_du_service', $next->ID), 'petit_inactive-150x150', -8, 4); ?>" alt="icone du lien vers le service suivant">
                        </div>
                        <img class="serviceElement__contenu_nav_fleche" src="<?php echo $srcimagenext[0];?>" alt="flèche du lien vers le service suivant">

                    </a>
                    <?php }?>
                </div>
            </div>
        </div>
    </section>
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

