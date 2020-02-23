<?php get_header();
echo "404.php";?><!-- Appel de l'entête de page -->

<?php //ajout sidebars si nécessaire ?>

<!-- corps de la page -->
<main>
    <h2>Oups ! La page demandée n'existe pas!</h2>
    <img src="<?php bloginfo('url');?>/wp-content/uploads/2019/02/point_exclamation.png" alt="Erreur 404" />
</main>

<!-- Appel du pied de page -->
<?php get_footer(); ?>
