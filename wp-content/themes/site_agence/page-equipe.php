<!-- Appel à l'entête de page -->
<?php get_header();
/* Template name: Équipe */
?>


<!-- MAIN -->
<main id="main" class="equipe">

    <div class="conteneur">
        <?php $page=get_post();
        ?>

        <!-- Titre de la page -->
        <div class="deco__titreH1 deco__titreH1--fonce">
            <h1 class="deco__titreH1_titre--fonce">Notre <span class="deco__titreH1_titre--accentMagenta"><?= $post->post_title;?></span></h1>
        </div>

        <!-- Ancres -->
        <div class="ancres__conteneur">
            <?php // Boucle pour aller chercher informations tous administrateurs
            $noms_utilisateurs = "";
            $testUserPlus1 = "";
            for($intCpt=1;$intCpt<=4;$intCpt++) {
                $prenom = get_user_meta($intCpt,'first_name', true);
                $nom = get_user_meta($intCpt,'last_name', true);?>

                <div class="ancres__items">
                    <p class="ancres__items--texte"><a href="#<?php echo $prenom;?>"> <?php echo $prenom." ".$nom;?></a></p>
                    <span class="ancres__items--borderBottom"></span>
                </div>
            <?php }?>
        </div>

        <!-- Image d'entête -->
        <div class="equipe__intro">
            <picture>
                <?php $srcimagebefore = wp_get_attachment_image_src(514,"full") ;?>
                <img src="<?php echo $srcimagebefore[0];?>">
            </picture>

            <div class="equipe__rectangleRose deco__boiteNeon-magenta deco__boiteNeon">
                <div class="equipe__rectangleRose--texte"><?= $post->post_content; ?></div> <!-- Contenu de la page, soit, dans ce cas, le texte et l'image -->
            </div>
        </div>

        <?php
        $posts = get_posts(array(
            'posts_per_page' => -1,
            'post_type' => 'equipe',
            'post_status' => 'publish',
            'orderby' => 'the_title',
            'order' => 'ASC',
        ));?> <!-- Va chercher les infos de la page -->

        <div class="equipe__membres">
                <?php
                if($posts):
                    $intCpt = 1;?>
                    <?php foreach($posts as $post):
                    $prenom = get_user_meta($intCpt,'first_name', true);
                    $arrayInfoImage = get_field('photoMembre');?>
                        <div class="equipe__membres--individuel">
                            <div class="equipe__membres--image">
                                <img src="<?= substr_replace($arrayInfoImage['url'], '-600x451', '-4', '0'); ?>" alt="<?= $arrayInfoImage['alt'];?>">
                            </div>
                            <div class="equipe__membres--infos deco__boiteTexteBlanche">
                                <div class="deco__boiteTexteBlanche_espaceTxt">
                                    <a id="<?php echo $prenom;?>"><h2 class="h2"><?= $post->post_title;?></h2> </a><!-- Nom de la personne -->
                                    <h3 class="h3"><?= get_field("posteMembre"); ?></h3> <!-- poste de la personne -->
                                    <p ><a href="<?php echo $post->guid;?>"><span class="lien__fonce_neon--magenta">En savoir plus</span></a></p> <!-- Lien vers la page de la personne -->
                                </div>
                                <div class="deco__angle--turquoise"></div>
                            </div>
                        </div>
                        <?= $post->post_excerpt;
                            $intCpt = $intCpt +1;
                        ?>
                    <?php endforeach; ?>
                <?php endif; ?>
        </div>
    </div>
</main>




<!-- FOOTER -->
<?php get_footer(); ?>