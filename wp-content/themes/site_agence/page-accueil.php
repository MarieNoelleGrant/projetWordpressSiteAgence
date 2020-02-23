<!-- Appel à l'entête de page -->
<?php /*Template name: Accueil*/
    get_header();
    //echo "page-accueil.php";
?>

<!-- Corps de la page -->
<main id="main" class="accueil">
    <?php the_post(); ?>
    <div class="en-tete-page conteneur ancres__conteneur accueil__ancres_conteneur tableOnly">
        <?php // @todo Ajouter les ancres vers sections de la page ici!! ?>
        <div class="ancres__items accueil__ancres">
            <a href="#realisations">
                <p class="ancres__items--texte accueil__ancres_item">#Ce qu'on a fait</p>
                <span class="ancres__items--borderBottom"></span>
            </a>
        </div>
        <div class="ancres__items accueil__ancres">
            <a href="#nouvelles">
                <p class="ancres__items--texte accueil__ancres_item">#Ce qui se passe</p>
                <span class="ancres__items--borderBottom"></span>
            </a>
        </div>
        <div class="ancres__items accueil__ancres">
            <a href="#services">
                <p class="ancres__items--texte accueil__ancres_item">#Ce qu'on peut faire</p>
                <span class="ancres__items--borderBottom"></span>
            </a>
        </div>
    </div>

    <section class="accueil__realisations" id="realisations">
        <div class="conteneur conteneur__relatif">
            <header class="accueil__realisations_entete">
                <div class="deco__titreH1Accueil deco__titreH1Accueil--pale">
                    <h2 class="h1 deco__titreH1Accueil_titre">Ce qu'on a <span class="deco__titreH1Accueil_titre--accentTurquoise">fait</span></h2>
                    <div class="bouton__pale bouton__pale_fond tableOnly"><a href="<?= get_permalink(53); ?>"><span class="bouton__pale_neon">Voir toutes nos réalisations</span></a></div>
                </div>
            </header>

            <?php // @todo Ajouter visionneuse pour différentes réalisations!! ?>
            <?php echo do_shortcode('[metaslider id="481"]'); ?>
            <?php echo do_shortcode('[metaslider id="487"]'); ?>
            <div class="deco__boiteTexteBlanche accueil__realisations_boiteTexteBlanche">
                <div class="accueil__realisations_visionneuseTexte">
                    <div class="deco__boiteTexteBlanche_espaceTxt accueil__realisations_espaceTxt">
                    <?php
                        $query_services_accueil = new WP_Query('page_id=53');
                        $posts = get_posts(array(
                            'posts_per_page' => -1,
                            'post_type' => 'realisations',
                            'post_status' => 'publish',
                            'orderby' => 'id',
                            'order' => 'ASC',
                        ));
                    if($posts): ?>
                        <?php $intCpt=1;
                        foreach($posts as $post){?>
                        <div class="accueil__realisations_espaceTxt_conteneur <?= 'page_'.$intCpt?>">
                            <h3 class="deco__boiteTexteBlanche_txt accueil__realisations_titre"><?= $post->post_title;?></h3>
                            <p class="deco__boiteTexteBlanche_txt accueil__realisations_client"><?= get_field("nom_du_client");?></p>
                            <p class="deco__boiteTexteBlanche_txt accueil__realisations_description"><?= get_field("mini_description");?></p>
                            <p class="deco__boiteTexteBlanche_txt accueil__realisations_lien"><a href="<?= $post->guid; ?>"><span class="lien__fonce_neon--turquoise">En savoir plus</span></a></p>
                        </div>
                        <?php $intCpt = $intCpt + 1;
                        }?>
                    <?php endif; ?>
                    </div>
                </div>
                <div class="deco__angle--turquoise accueil__realisations_angle--turquoise"></div>
            </div>
            <div class="bouton__pale bouton__pale_fond bouton__accueil mobileOnly"><a href="<?= get_permalink(53); ?>"><span class="bouton__pale_neon">Voir toutes nos réalisations</span></a></div>
        </div>
    </section>


    <section class="accueil__nouvelles derniers-articles nouvelles" id="nouvelles">
        <div class="conteneur">
            <div class="deco__boiteNeon deco__boiteNeon-magenta nouvelles__boiteNeon"></div>
            <header class="nouvelles__entete">
                <div class="deco__titreH1Accueil deco__titreH1Accueil--fonce">
                    <h2 class="h1 deco__titreH1Accueil_titre">Ce qui se <span class="deco__titreH1Accueil_titre--accentMagenta">passe</span></h2>
                    <div class="bouton__fonce bouton__fonce_fond tableOnly"><a href="<?= get_permalink(237); ?>"><span class="bouton__fonce_neon">Voir toutes nos nouvelles</span></a></div>
                </div>
            </header>
            <div class="nouvelles__groupe">
                <?php wp_reset_postdata();
                query_posts("posts_per_page=3");

                // si la page reçoit des articles
                if(have_posts()) {
                    //tant qu'il y a des articles à afficher
                    while(have_posts()) {
                        //passer à l'article suivant
                        the_post(); ?>
                        <article class="nouvelle">
                            <?php get_template_part('content', get_post_format()); ?>
                        </article>
                    <?php } ?>
                <?php } ?>
            </div>
            <div class="bouton__fonce bouton__fonce_fond bouton__accueil mobileOnly"><a href="<?= get_permalink(237); ?>"><span class="bouton__fonce_neon">Voir toutes nos nouvelles</span></a></div>
        </div>
    </section>


    <section class="accueil__services" id="services">
        <div class="conteneur">
            <header class="acceuil__services_entete">
                <div class="deco__titreH1Accueil deco__titreH1Accueil--pale">
                    <h2 class="h1 deco__titreH1Accueil_titre">Ce qu'on <span class="deco__titreH1Accueil_titre--accentTurquoise">peut faire</span></h2>
                    <div class="bouton__pale bouton__pale_fond tableOnly"><a href="<?= get_permalink(77); ?>"><span class="bouton__pale_neon">Voir tous nos services</span></a></div>
                </div>
            </header>
            <div class="conteneur__flex">
                <div class="accueil__services_visuel">
                    <?php
                    $query_services_accueil = new WP_Query('page_id=77');
                    $posts = get_posts(array(
                        'posts_per_page' => 3,
                        'post_type' => 'services',
                        'post_status' => 'publish',
                        'orderby' => 'rand',
                        'order' => 'ASC',
                    ));
                    foreach($posts as $post):?>
                        <div class="accueil__services_item">
                            <a class="accueil__services_lien" href="<?= $post->guid?>">
                                <img class="accueil__services_icone" alt="icone <?= $post->post_title;?>" src="<?= substr_replace(get_field('icone_du_service'), '-300x300', '-4', '0'); ?>"/>
                                <p class="accueil__services_nom deco__nomService"><?= $post->post_title;?></p>
                            </a>
                        </div>
                    <?php endforeach;
                    wp_reset_postdata();
                    ?>
                </div>

                <div class="accueil__services_accroche">
                    <p class="">On fait tout ça pour vous.</p>
                    <a href="<?= get_permalink(77); ?>"><p class="lien__pale_neon--magenta accueil__services_accroche--lien">Et même plus.</p></a>
                </div>
                <div class="bouton__pale bouton__pale_fond bouton__accueil mobileOnly"><a href="<?= get_permalink(77); ?>"><span class="bouton__pale_neon">Voir tous nos services</span></a></div>
            </div>

        </div>
    </section>
</main>

<!-- Appel au pied de page -->
<?php get_footer(); ?>