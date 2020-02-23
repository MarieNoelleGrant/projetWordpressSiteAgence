<!-- Appel à l'entête de page -->
<?php get_header();
/* Template name: Réalisations */
//      echo "page.php";
?>


<!-- Corps de la page -->
<main id="main" class="realisations">
    <div class="conteneur">
    <?php $page=get_post(); ?>
    <div class="deco__titreH1 deco__titreH1--pale deco__titreH1--paleRealisations ">
        <h1 class="deco__titreH1_titre">Nos <span class="deco__titreH1_titre--accentTurquoise">réalisations</span></h1>
    </div>
        <div class="conteneur__flex">
            <?php
                $posts = get_posts(array(
                    'posts_per_page' => -1,
                    'post_type' => 'realisations',
                    'post_status' => 'publish',
                    'orderby' => 'the_title',
                    'order' => 'ASC',
                ));

                if($posts): ?>
                    <?php foreach($posts as $post):?>
                    <?php $tImage = get_field("photo_1")?>
                        <div class="realisations--section">
                            <div class="realisations--section__cadreImg">
                                <div class="realisations--section__image" style="background-image: url('<?= $tImage["url"]?>')"></div>
                            </div>
                            <div class="realisations--boiteTexteBlanche">
                                <div class="realisations--boiteTexteBlanche_espaceTxt">
                                    <h2 class="realisations--section__titre"><?= $post->post_title;?></h2>
                                    <p class="realisations--section__texte"><?= get_field("nom_du_client"); ?></p>
                                    <p><?= get_field("extrait") ?></p>
                                        <?php $lien = get_field("lien");
                                        $lien_url = $lien["url"];
                                        $lien_titre = $lien["title"];
                                        ?>
                                    <a href="<?php echo $lien_url;?>"><span class="lien__fonce_neon--magenta"><?php echo $lien_titre;?></span></a>
                                </div>
                                <div class="realisations__angle--turquoise mobileOnly"></div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                <?php endif; ?>
            <div class="realisations--section">
                <p class="realisation--proposer_texte h3">Vous avez un projet à nous proposer ?</p>
                <p class="realisation--proposer_texte h3">Nos réalisations vous inspirent?</p>
                <div class="bouton__pale bouton__pale_fond h3">
                    <a href="">
                        <span class="bouton__pale_neon">Contactez nous!</span>
                    </a>
                </div>
                <img src="https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/wp-content/uploads/2019/03/fleche_realisation.jpg" alt="" class="realisations--proposer_img">
                <div class="realisations--section__cadreImg">
                    <div class="realisations--section__image" style="background-color: #0E1633"></div>
                </div>
            </div>
        </div>
    </div>
</main>

<!-- Appel au pied de page -->
<?php get_footer(); ?>