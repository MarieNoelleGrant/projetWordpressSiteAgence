<!-- Appel à l'entête de page -->
<?php get_header(); ?>


<main class="realisationElement">
    <section class="realisationElement_contenu">
        <div class="conteneur">
            <div class="realisationElement__boutonRetour boutonRetour">
                <a href="<?php echo get_permalink(53)?>">
                    <?php $srcimagebefore = wp_get_attachment_image_src(508,"full") ;?>
                    <img  class="boutonRetour__fleche" src="<?php echo $srcimagebefore[0];?>" alt="flèche pour le retour">
                    <span class="boutonRetour__texte">Retour aux <?php echo get_the_title(53)?></span>
                </a>
            </div>
            <div class="deco__titreH1 deco__titreH1--pale deco__titreH1--paleRealisations realisation-seul">
                <h1 class="deco__titreH1_titre">Nos <span class="deco__titreH1_titre--accentTurquoise">réalisations</span></h1>
            </div>

            <div class="realisationElement__contenu_conteneurPosition">
                <div class="realisationElement__contenu_conteneurPosition_illustration">
                    <?php $tImage = get_field("photo_1")?>
                    <div class="realisationElement__contenu_conteneurPosition_illustration_image" style="background-image: url('<?php echo $tImage["url"] ?>')"></div>
                    <div class="deco__angle--turquoise realisationElement__contenu_conteneurPosition_illustration_deco"></div>
                </div>
                <?php the_post();?>
                    <article class="realisationElement__contenu_conteneurPosition_information">
                        <div class="serviceElement__contenu_conteneurPosition_information_conteneurPosition">
                            <h2 class="realisationElement__contenu_conteneurPosition_information_titre deco__nomService"><?php echo  $post->post_title; ?></h2>
                            <h3 class="realisationElement__nomClient"><?=  get_field("nom_du_client"); ?></h3>
                        </div>
                        <p class="realisationElement__contenu_conteneurPosition_information_texte"><?php echo  $post->post_content; ?></p>
                    </article>
            </div>
            <div class="pageSeule_nav">
            <?php $prev = get_previous_post();?>
            <div class="pageSeule_nav_before">
                <?php if($prev != null){ ?>
                    <a class="icone" href="<?= $prev->guid ?>">
                        <?php $srcimagebefore = wp_get_attachment_image_src(508,"full") ;?>

                        <img class="pageSeule_nav_fleche" src="<?php echo $srcimagebefore[0];?>" alt="flèche du lien vers le service précédent">
                        <div class="pageSeule_nav_sousConteneur">
                            <p class="pageSeule_nav_titre"><?= $prev->post_title?></p>
                        </div>

                    </a>
                <?php }?>
            </div>

            <div class="pageSeule_nav_next">
                <?php $next = get_next_post();?>
                <?php if($next != null){ ?>
                    <a class="icone" href="<?= $next->guid ?>">
                        <?php $srcimagenext = wp_get_attachment_image_src(509,"full") ;?>
                        <div class="pageSeule_nav_sousConteneur">
                            <p class="pageSeule_nav_titre"><?= $next->post_title?></p>
                        </div>
                        <img class="pageSeule_nav_fleche" src="<?php echo $srcimagenext[0];?>" alt="flèche du lien vers le service suivant">

                    </a>
                <?php }?>
            </div>
        </div>
        </div>
    </section>
</main>

<!-- Appel au pied de page -->
<?php get_footer(); ?>

