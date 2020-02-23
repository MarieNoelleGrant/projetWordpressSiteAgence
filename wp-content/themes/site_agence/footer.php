<footer id="pied-de-page" class="footer" role="contentinfo">
    <div class="footer__arrierePlan">
        <div class="conteneur contact" id="contact">
            <div class="footer__logoIcones">
                <a href="<?php bloginfo('url'); ?>" class="footer__logo">
                    <img alt="<?php bloginfo('name'); ?>" src="<?php bloginfo("url");?>/wp-content/uploads/2019/03/logo_simple.png"/>
                </a>
                <div class="footer__sociaux">
                    <a href="facebook.com/magentababies" class="icone footer__sociaux_fb">
                        <img src="<?php echo bloginfo('url');?>/wp-content/uploads/2019/03/icone_facebook-inactive-150x150.png" alt="Page facebook des Magenta Babies"/>
                    </a>
                    <a href="twitter.com/magentababies" class="icone footer__sociaux_tw">
                        <img src="<?php echo bloginfo('url');?>/wp-content/uploads/2019/03/icone_twitter-inactive-150x150.png" alt="Page twitter des Magenta Babies"/>
                    </a>
                    <a href="linkedin.com/magentababies" class="icone footer__sociaux_in">
                        <img src="<?php echo bloginfo('url');?>/wp-content/uploads/2019/03/icone_linkedin-inactive-150x150.png" alt="Page linkedin des Magenta Babies"/>
                    </a>
                </div>
            </div>
            <div class="footer__adresse">
                <p class="h4">Nous trouver</p>
                <p>997, 3e avenue<br/>
                    Québec (Québec)<br/>
                    G1L 2X2</p>
            </div>
            <div class="footer__contact">
                <p class="h4">Nous joindre</p>
                <p>418 622-6129</p>
                <p>quebec@magentababies.ca</p>
            </div>
            <?php // Boucle pour aller chercher informations tous administrateurs
            $noms_utilisateurs = "";
            $testUserPlus1 = "";
            for($intCpt=1;$intCpt<=4;$intCpt++) {
                $prenom = get_user_meta($intCpt,'first_name', true);
                $nom = get_user_meta($intCpt,'last_name', true);
                if ($noms_utilisateurs!="") {
                    $noms_utilisateurs = $noms_utilisateurs.", ".$prenom." ".$nom;
                }
                else {
                    $noms_utilisateurs = $prenom." ".$nom;
                }
            }?>
            <small class="footer__credits">&copy; <?php bloginfo('name'); ?> - <?php echo($noms_utilisateurs); ?> | Tous droits réservés</small>
        </div>
    </div>
</footer>

<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>

<script>window.jQuery || document.write('<script src="node_modules/jquery/dist/jquery.min.js">\x3C/script>')</script>

<!-- *** POUR MENU MOBILE *** -->
<script src="<?php echo get_template_directory_uri()?>/js/menuMobile.min.js"></script>
<script src="<?php echo get_template_directory_uri()?>/js/icone.min.js"></script>
<script src="<?php echo get_template_directory_uri()?>/js/texteVisionneuseAccueil.min.js"></script>
<script>
    $('body').addClass('js');
    $(document).ready(function(){
        menuMobile.initialiser();
        controlleurIcone.initialiser();
        texteVisionneuseAccueil.initialiser();
    });
</script>

<?php wp_footer(); ?>

</body>
</html>