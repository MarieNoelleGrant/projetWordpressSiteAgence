<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', '');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', '');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', '');

/** Adresse de l’hébergement MySQL. */
define('DB_HOST', 'localhost');

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8mb4');

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'DT+|N`I<.2gn~Q2`[p*uw>rxZq*%/yun <5p0llAt2LV1-j5HC2{]8@Eec*]QQ<^');
define('SECURE_AUTH_KEY',  'z8O)9*+E3C:]xq^SA-BxO70>$9)1krC_UA|CPiT`9cYz2c;0,P`_>-xDfN.91g!d');
define('LOGGED_IN_KEY',    'E$.Lv7hQo/Ms GSNo283V[NF&)LPto:diSdKWZS1z.eF5$l#*ul&Cv)U)o/2hPLY');
define('NONCE_KEY',        '4C*[~|EUIWD.aHY_5X8VB2eq/.uZbt,1CC+i(eVK lJse8!hi;Bxu`B>uH:Hd{H2');
define('AUTH_SALT',        ';Nt,d[^rTq;)_UHZp,MV}w2!Y6~~&7cm@D:>TRk@yo.IuZ8&pD`vvPJzIuF@}O1}');
define('SECURE_AUTH_SALT', 'v*sby}f4AUoVY`H<ENVt#u9_[>2.N2k2#4,O:[ Wt;XHB_utR5R^sX{>xfd2kK`8');
define('LOGGED_IN_SALT',   '^QgT(iHF+Z?*{G]t^;_Fj,!Q]n@r;4kxF-`,wOY!3:BG#&U;|qjqFrG#t<WY?<5$');
define('NONCE_SALT',       'JB49fx1Mn,T6+tq7dDXGJm9uyYje-5alI8 -htHDz:T.;=2e^n!0eF*_5+WZ%H6/');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix  = '';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* C’est tout, ne touchez pas à ce qui suit ! */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');

/** Pour éviter demande infos FTP à chaque installation de plug-in ou theme/mise à jour */
define('FS_METHOD', 'direct');
