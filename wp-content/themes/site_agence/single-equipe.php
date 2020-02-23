<!-- Appel à l'entête de page -->
<?php get_header();?>

<main class="membreEquipe">
    <?php the_post();
    $arrayInfoImage = get_field('photoMembre');?>

    <article class="membreEquipe__infos conteneur">
        <!-- Retour -->
        <div class="membreEquipe__boutonRetour boutonRetour">
            <a href="<?php echo get_permalink(79)?>">
                    <?php $srcimagebefore = wp_get_attachment_image_src(521,"full") ;?>
                    <img class="boutonRetour__fleche" src="<?php echo $srcimagebefore[0];?>"><span class="boutonRetour__texte"> Retour à la page  <?php echo get_the_title(79)?></span></a>
        </div>

        <!-- Titre de la page -->
        <div class="deco__titreH1 deco__titreH1--fonce">
            <h1 class="deco__titreH1_titre--fonce">Notre <span class="deco__titreH1_titre--accentMagenta">équipe</span></h1>
        </div>

        <h1 class="h1"><a href="<?php echo $post->guid;?>"> <?= $post->post_title;?></a></h1>
        <h2 class="h2"><?= get_field("posteMembre"); ?></h2>

        <div class="membreEquipe__blocInfos">
            <div class="membreEquipe__direction deco__boiteNeon-magenta deco__boiteNeon tableOnly"></div>

            <picture class="membreEquipe__image">
                <source="<?= substr_replace($arrayInfoImage['url'], '-600x451', '-4', '0'); ?>' media="(max-width: 600px)">
                <img src="<?= $arrayInfoImage['url']; ?>" alt="<?= $arrayInfoImage['alt']; ?>">
            </picture>
            <div class="membreEquipe__blocText">


                <div class="membreEquipe__blocText deco__boiteTexteBlanche">
                    <div class="membreEquipe_blocText deco__boiteTexteBlanche_espaceTxt">
                        <p><?= $post->post_content; ?></p>
                        <?= $post->post_excerpt; ?>
                    </div>
                    <div class="membreEquipe_blocText deco__angle--turquoise"></div>
                </div>
            </div>
        </div>

        <!-- Navigation -->
        <div class="pageSeule_nav">
            <?php $prev = get_previous_post();?>
            <div class="pageSeule_nav_before">
                <?php if($prev != null){ ?>
                    <a class="icone" href="<?= $prev->guid ?>">
                        <?php $srcimagebefore = wp_get_attachment_image_src(521,"full") ;?>

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
                        <?php $srcimagenext = wp_get_attachment_image_src(521,"full") ;?>
                        <div class="pageSeule_nav_sousConteneur">
                            <p class="pageSeule_nav_titre"><?= $next->post_title?></p>
                        </div>
                        <img class="pageSeule_nav_fleche pageEquipe" src="<?php echo $srcimagenext[0];?>" alt="flèche du lien vers le service suivant">

                    </a>
                <?php }?>
            </div>
        </div>
    </article>
</main>

<!-- Appel au pied de page -->
<?php get_footer(); ?>

