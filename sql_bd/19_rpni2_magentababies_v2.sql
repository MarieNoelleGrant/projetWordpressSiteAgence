-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 04, 2019 at 10:48 PM
-- Server version: 5.5.60-MariaDB
-- PHP Version: 7.1.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `19_rpni2_magentababies`
--

-- --------------------------------------------------------

--
-- Table structure for table `tim_commentmeta`
--

CREATE TABLE IF NOT EXISTS `tim_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tim_comments`
--

CREATE TABLE IF NOT EXISTS `tim_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tim_links`
--

CREATE TABLE IF NOT EXISTS `tim_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tim_options`
--

CREATE TABLE IF NOT EXISTS `tim_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tim_options`
--

INSERT INTO `tim_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies', 'yes'),
(2, 'home', 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies', 'yes'),
(3, 'blogname', 'Site Agence', 'yes'),
(4, 'blogdescription', 'Un site qui vous épatate.', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'm.noelle.grant@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:30:"advanced-custom-fields/acf.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'site_agence', 'yes'),
(41, 'stylesheet', 'site_agence', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:3:{i:1;a:0:{}i:2;a:8:{s:5:"title";s:0:"";s:3:"url";s:0:"";s:4:"link";s:0:"";s:5:"items";i:10;s:5:"error";s:50:"WP HTTP Error: L’URL fournie n’est pas valide.";s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '36', 'yes'),
(84, 'page_on_front', '30', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'tim_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'fr_FR', 'yes'),
(97, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:6:"number";i:5;s:9:"show_date";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:6:"gauche";a:1:{i:0;s:10:"calendar-2";}s:6:"droite";a:5:{i:0;s:12:"categories-2";i:1;s:14:"recent-posts-2";i:2;s:10:"calendar-3";i:3;s:5:"rss-2";i:4;s:15:"media_gallery-2";}s:13:"array_version";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:3:{i:2;a:1:{s:5:"title";s:0:"";}i:3;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:2:{i:2;a:5:{s:5:"title";s:0:"";s:7:"columns";i:3;s:4:"size";s:9:"thumbnail";s:9:"link_type";s:4:"post";s:14:"orderby_random";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'cron', 'a:4:{i:1551663713;a:4:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1551706939;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1551711053;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1549030563;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(140, 'can_compress_scripts', '1', 'no'),
(141, 'current_theme', 'Site Agence', 'yes'),
(142, 'theme_mods_site_agence', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:9:"principal";i:2;s:10:"secondaire";i:3;}s:18:"custom_css_post_id";i:-1;s:12:"charge_image";s:128:"https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/wp-content/uploads/2019/02/istockphoto-868068278-2048x2048.jpg";}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(155, 'recently_activated', 'a:0:{}', 'yes'),
(157, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:1:{i:0;i:2;}}', 'yes'),
(158, 'category_children', 'a:0:{}', 'yes'),
(238, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:63:"https://downloads.wordpress.org/release/fr_FR/wordpress-5.1.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/fr_FR/wordpress-5.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"5.1";s:7:"version";s:3:"5.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-5.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-5.1.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-5.1-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-5.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"5.1";s:7:"version";s:3:"5.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:63:"https://downloads.wordpress.org/release/fr_FR/wordpress-5.1.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/fr_FR/wordpress-5.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"5.1";s:7:"version";s:3:"5.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1551663318;s:15:"version_checked";s:5:"5.0.3";s:12:"translations";a:0:{}}', 'no'),
(256, '_site_transient_timeout_browser_fbeb9baafa9003855a9514d09d3385dc', '1552057418', 'no'),
(257, '_site_transient_browser_fbeb9baafa9003855a9514d09d3385dc', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"72.0.3626.119";s:8:"platform";s:9:"Macintosh";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(271, 'acf_version', '5.7.12', 'yes'),
(276, '_site_transient_timeout_theme_roots', '1551665119', 'no'),
(277, '_site_transient_theme_roots', 'a:4:{s:11:"site_agence";s:7:"/themes";s:14:"twentynineteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(278, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1551663319;s:7:"checked";a:4:{s:11:"site_agence";s:3:"0.1";s:14:"twentynineteen";s:3:"1.2";s:15:"twentyseventeen";s:3:"2.0";s:13:"twentysixteen";s:3:"1.8";}s:8:"response";a:3:{s:14:"twentynineteen";a:4:{s:5:"theme";s:14:"twentynineteen";s:11:"new_version";s:3:"1.3";s:3:"url";s:44:"https://wordpress.org/themes/twentynineteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentynineteen.1.3.zip";}s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"2.1";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.2.1.zip";}s:13:"twentysixteen";a:4:{s:5:"theme";s:13:"twentysixteen";s:11:"new_version";s:3:"1.9";s:3:"url";s:43:"https://wordpress.org/themes/twentysixteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentysixteen.1.9.zip";}}s:12:"translations";a:0:{}}', 'no'),
(279, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1551663319;s:7:"checked";a:3:{s:30:"advanced-custom-fields/acf.php";s:6:"5.7.12";s:19:"akismet/akismet.php";s:3:"4.1";s:9:"hello.php";s:5:"1.7.1";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.1.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.1.1.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:3:"5.1";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"5.7.12";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.12.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `tim_postmeta`
--

CREATE TABLE IF NOT EXISTS `tim_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tim_postmeta`
--

INSERT INTO `tim_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 6, '_edit_lock', '1550845767:1'),
(8, 8, '_edit_lock', '1550846364:1'),
(11, 10, '_edit_lock', '1549033696:1'),
(12, 12, '_menu_item_type', 'custom'),
(13, 12, '_menu_item_menu_item_parent', '0'),
(14, 12, '_menu_item_object_id', '12'),
(15, 12, '_menu_item_object', 'custom'),
(16, 12, '_menu_item_target', ''),
(17, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(18, 12, '_menu_item_xfn', ''),
(19, 12, '_menu_item_url', 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/'),
(21, 13, '_menu_item_type', 'post_type'),
(22, 13, '_menu_item_menu_item_parent', '0'),
(23, 13, '_menu_item_object_id', '10'),
(24, 13, '_menu_item_object', 'page'),
(25, 13, '_menu_item_target', ''),
(26, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(27, 13, '_menu_item_xfn', ''),
(28, 13, '_menu_item_url', ''),
(52, 17, '_edit_lock', '1549634819:1'),
(53, 18, '_menu_item_type', 'post_type'),
(54, 18, '_menu_item_menu_item_parent', '0'),
(55, 18, '_menu_item_object_id', '17'),
(56, 18, '_menu_item_object', 'page'),
(57, 18, '_menu_item_target', ''),
(58, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(59, 18, '_menu_item_xfn', ''),
(60, 18, '_menu_item_url', ''),
(79, 22, '_menu_item_type', 'post_type'),
(80, 22, '_menu_item_menu_item_parent', '0'),
(81, 22, '_menu_item_object_id', '2'),
(82, 22, '_menu_item_object', 'page'),
(83, 22, '_menu_item_target', ''),
(84, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(85, 22, '_menu_item_xfn', ''),
(86, 22, '_menu_item_url', ''),
(88, 2, '_edit_lock', '1549639393:1'),
(89, 26, '_wp_attached_file', '2019/02/point_exclamation.png'),
(90, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:195;s:6:"height";i:258;s:4:"file";s:29:"2019/02/point_exclamation.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"point_exclamation-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(91, 27, '_wp_attached_file', '2019/02/istockphoto-868068278-2048x2048.jpg'),
(92, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2048;s:6:"height";i:1536;s:4:"file";s:43:"2019/02/istockphoto-868068278-2048x2048.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:43:"istockphoto-868068278-2048x2048-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"istockphoto-868068278-2048x2048-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:43:"istockphoto-868068278-2048x2048-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:44:"istockphoto-868068278-2048x2048-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:24:"Getty Images/iStockphoto";s:6:"camera";s:0:"";s:7:"caption";s:51:"This image is my own  render / modeling / Texturing";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:51:"This image is my own  render / modeling / Texturing";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(93, 28, '_wp_attached_file', '2019/02/istockphoto-621921512-2048x2048.jpg'),
(94, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2048;s:6:"height";i:1365;s:4:"file";s:43:"2019/02/istockphoto-621921512-2048x2048.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:43:"istockphoto-621921512-2048x2048-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"istockphoto-621921512-2048x2048-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:43:"istockphoto-621921512-2048x2048-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:44:"istockphoto-621921512-2048x2048-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:24:"Getty Images/iStockphoto";s:6:"camera";s:0:"";s:7:"caption";s:87:"futuristic earth map technology abstract background represent global connection concept";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(95, 29, '_wp_attached_file', '2019/02/istockphoto-615428378-2048x2048.jpg'),
(96, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2048;s:6:"height";i:788;s:4:"file";s:43:"2019/02/istockphoto-615428378-2048x2048.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:43:"istockphoto-615428378-2048x2048-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"istockphoto-615428378-2048x2048-300x115.jpg";s:5:"width";i:300;s:6:"height";i:115;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:43:"istockphoto-615428378-2048x2048-768x296.jpg";s:5:"width";i:768;s:6:"height";i:296;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:44:"istockphoto-615428378-2048x2048-1024x394.jpg";s:5:"width";i:1024;s:6:"height";i:394;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:12:"Getty Images";s:6:"camera";s:0:"";s:7:"caption";s:70:"abstract motion-blurred view from the front of a train in Tokio, Japan";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:70:"abstract motion-blurred view from the front of a train in Tokio, Japan";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(98, 30, '_customize_changeset_uuid', '7163cf62-2faa-4480-9984-a44145ce7198'),
(107, 31, '_wp_trash_meta_status', 'publish'),
(108, 31, '_wp_trash_meta_time', '1550845371'),
(109, 30, '_edit_lock', '1550846684:1'),
(110, 30, '_wp_page_template', 'page-accueil.php'),
(112, 36, '_customize_changeset_uuid', '0ede28bf-bac0-4b91-8c33-842ab765a0f7'),
(113, 38, '_menu_item_type', 'post_type'),
(114, 38, '_menu_item_menu_item_parent', '0'),
(115, 38, '_menu_item_object_id', '36'),
(116, 38, '_menu_item_object', 'page'),
(117, 38, '_menu_item_target', ''),
(118, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(119, 38, '_menu_item_xfn', ''),
(120, 38, '_menu_item_url', ''),
(121, 37, '_wp_trash_meta_status', 'publish'),
(122, 37, '_wp_trash_meta_time', '1550845488'),
(134, 8, '_thumbnail_id', '29'),
(135, 30, '_thumbnail_id', '29'),
(136, 42, '_wp_trash_meta_status', 'publish'),
(137, 42, '_wp_trash_meta_time', '1550850131'),
(138, 43, '_edit_lock', '1551454483:1'),
(139, 44, '_edit_lock', '1551454988:1'),
(140, 45, '_edit_lock', '1551455594:1'),
(141, 45, '_edit_last', '1'),
(142, 50, '_edit_lock', '1551457314:1'),
(143, 50, '_edit_last', '1'),
(144, 50, 'nom_du_client', 'Crayon'),
(145, 50, '_nom_du_client', 'field_5c79533aceeda'),
(146, 50, 'photo_1', '27'),
(147, 50, '_photo_1', 'field_5c7953b9252b3'),
(148, 50, 'photo_2', '26'),
(149, 50, '_photo_2', 'field_5c7953eb078e9'),
(150, 51, 'nom_du_client', 'Crayon'),
(151, 51, '_nom_du_client', 'field_5c79533aceeda'),
(152, 51, 'photo_1', '27'),
(153, 51, '_photo_1', 'field_5c7953b9252b3'),
(154, 51, 'photo_2', '26'),
(155, 51, '_photo_2', 'field_5c7953eb078e9'),
(156, 52, '_edit_lock', '1551455278:1'),
(157, 53, '_edit_lock', '1551456173:1'),
(158, 54, '_menu_item_type', 'post_type'),
(159, 54, '_menu_item_menu_item_parent', '0'),
(160, 54, '_menu_item_object_id', '53'),
(161, 54, '_menu_item_object', 'page'),
(162, 54, '_menu_item_target', ''),
(163, 54, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(164, 54, '_menu_item_xfn', ''),
(165, 54, '_menu_item_url', ''),
(166, 53, '_wp_page_template', 'page-realisations.php');

-- --------------------------------------------------------

--
-- Table structure for table `tim_posts`
--

CREATE TABLE IF NOT EXISTS `tim_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tim_posts`
--

INSERT INTO `tim_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2019-02-01 14:41:53', '2019-02-01 13:41:53', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel·le utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href="https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/wp-admin/">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2019-02-01 14:41:53', '2019-02-01 13:41:53', '', 0, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-02-01 14:41:53', '2019-02-01 13:41:53', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous avez un compte et que vous vous connectez sur ce site, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2019-02-01 14:41:53', '2019-02-01 13:41:53', '', 0, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/?page_id=3', 0, 'page', '', 0),
(6, 1, '2019-02-01 15:51:21', '2019-02-01 14:51:21', '<!-- wp:paragraph -->\n<p>Voici un article test un deux test un deux patate poil gna gna. </p>\n<!-- /wp:paragraph -->', 'Article test', '', 'publish', 'open', 'open', '', 'article-test', '', '', '2019-02-08 16:41:17', '2019-02-08 15:41:17', '', 0, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/?p=6', 0, 'post', '', 0),
(7, 1, '2019-02-01 15:51:21', '2019-02-01 14:51:21', '<!-- wp:paragraph -->\n<p>Voici un article test un deux test un deux patate poil gna gna.</p>\n<!-- /wp:paragraph -->', 'Article test', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-02-01 15:51:21', '2019-02-01 14:51:21', '', 6, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/index.php/2019/02/01/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2019-02-01 15:57:03', '2019-02-01 14:57:03', '<!-- wp:paragraph -->\n<p>Patate patate patate patate.</p>\n<!-- /wp:paragraph -->', 'Deuxième article test', '', 'publish', 'open', 'open', '', 'deuxieme-article-test', '', '', '2019-02-22 15:37:06', '2019-02-22 14:37:06', '', 0, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/?p=8', 0, 'post', '', 0),
(9, 1, '2019-02-01 15:57:03', '2019-02-01 14:57:03', '<!-- wp:paragraph -->\n<p>Patate patate patate patate.</p>\n<!-- /wp:paragraph -->', 'Deuxième article test', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-02-01 15:57:03', '2019-02-01 14:57:03', '', 8, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/index.php/2019/02/01/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2019-02-01 16:07:07', '2019-02-01 15:07:07', '<!-- wp:paragraph -->\n<p>Une patate. Des patates. Toutes les patates.</p>\n<!-- /wp:paragraph -->', 'La première page', '', 'publish', 'closed', 'closed', '', 'la-premiere-page', '', '', '2019-02-01 16:07:07', '2019-02-01 15:07:07', '', 0, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/?page_id=10', 0, 'page', '', 0),
(11, 1, '2019-02-01 16:07:01', '2019-02-01 15:07:01', '<!-- wp:paragraph -->\n<p>Une patate. Des patates. Toutes les patates.</p>\n<!-- /wp:paragraph -->', 'La première page', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-02-01 16:07:01', '2019-02-01 15:07:01', '', 10, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/index.php/2019/02/01/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2019-02-01 16:11:33', '2019-02-01 15:11:33', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2019-02-22 15:27:41', '2019-02-22 14:27:41', '', 0, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2019-02-01 16:11:33', '2019-02-01 15:11:33', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2019-02-22 15:27:41', '2019-02-22 14:27:41', '', 0, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/?p=13', 3, 'nav_menu_item', '', 0),
(17, 1, '2019-02-08 15:09:21', '2019-02-08 14:09:21', '<!-- wp:paragraph -->\n<p>Ça fait beaucoup de pages ça.</p>\n<!-- /wp:paragraph -->', 'Troisième page', '', 'publish', 'closed', 'closed', '', 'troisieme-page', '', '', '2019-02-08 15:09:21', '2019-02-08 14:09:21', '', 0, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/?page_id=17', 0, 'page', '', 0),
(18, 1, '2019-02-08 15:09:21', '2019-02-08 14:09:21', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2019-02-22 15:27:41', '2019-02-22 14:27:41', '', 0, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/index.php/2019/02/08/18/', 4, 'nav_menu_item', '', 0),
(19, 1, '2019-02-08 15:09:21', '2019-02-08 14:09:21', '<!-- wp:paragraph -->\n<p>Ça fait beaucoup de pages ça.</p>\n<!-- /wp:paragraph -->', 'Troisième page', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-02-08 15:09:21', '2019-02-08 14:09:21', '', 17, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/index.php/2019/02/08/17-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2019-02-08 15:13:42', '2019-02-08 14:13:42', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2019-02-22 15:27:18', '2019-02-22 14:27:18', '', 0, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2019-02-08 16:39:40', '2019-02-08 15:39:40', '<!-- wp:paragraph -->\n<p>Voici un article test un deux test un deux patate poil gna gna. qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq</p>\n<!-- /wp:paragraph -->', 'Article test', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-02-08 16:39:40', '2019-02-08 15:39:40', '', 6, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/index.php/2019/02/08/6-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2019-02-08 16:41:17', '2019-02-08 15:41:17', '<!-- wp:paragraph -->\n<p>Voici un article test un deux test un deux patate poil gna gna. </p>\n<!-- /wp:paragraph -->', 'Article test', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-02-08 16:41:17', '2019-02-08 15:41:17', '', 6, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/index.php/2019/02/08/6-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2019-02-22 14:37:27', '2019-02-22 13:37:27', '', 'point_exclamation', '', 'inherit', 'open', 'closed', '', 'point_exclamation', '', '', '2019-03-01 16:49:43', '2019-03-01 15:49:43', '', 50, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/wp-content/uploads/2019/02/point_exclamation.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2019-02-22 14:37:30', '2019-02-22 13:37:30', '', 'This image is my own  render / modeling / Texturing', 'This image is my own  render / modeling / Texturing', 'inherit', 'open', 'closed', '', 'this-image-is-my-own-render-modeling-texturing', '', '', '2019-03-01 16:49:42', '2019-03-01 15:49:42', '', 50, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/wp-content/uploads/2019/02/istockphoto-868068278-2048x2048.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2019-02-22 14:37:32', '2019-02-22 13:37:32', '', 'istockphoto-621921512-2048x2048', 'futuristic earth map technology abstract background represent global connection concept', 'inherit', 'open', 'closed', '', 'istockphoto-621921512-2048x2048', '', '', '2019-02-22 14:37:32', '2019-02-22 13:37:32', '', 0, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/wp-content/uploads/2019/02/istockphoto-621921512-2048x2048.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2019-02-22 14:37:34', '2019-02-22 13:37:34', '', 'abstract motion-blurred view from the front of a train in Tokio, Japan', 'abstract motion-blurred view from the front of a train in Tokio, Japan', 'inherit', 'open', 'closed', '', 'abstract-motion-blurred-view-from-the-front-of-a-train-in-tokio-japan', '', '', '2019-02-22 14:37:34', '2019-02-22 13:37:34', '', 0, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/wp-content/uploads/2019/02/istockphoto-615428378-2048x2048.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2019-02-22 15:22:51', '2019-02-22 14:22:51', '<!-- wp:paragraph -->\n<p>Voici ma page d''accueil statique!</p>\n<!-- /wp:paragraph -->', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2019-02-22 15:47:06', '2019-02-22 14:47:06', '', 0, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/?page_id=30', 0, 'page', '', 0),
(31, 1, '2019-02-22 15:22:51', '2019-02-22 14:22:51', '{\n    "show_on_front": {\n        "value": "page",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-22 14:22:51"\n    },\n    "page_on_front": {\n        "value": "30",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-22 14:22:51"\n    },\n    "nav_menus_created_posts": {\n        "value": [\n            30\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-22 14:22:51"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7163cf62-2faa-4480-9984-a44145ce7198', '', '', '2019-02-22 15:22:51', '2019-02-22 14:22:51', '', 0, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/index.php/2019/02/22/7163cf62-2faa-4480-9984-a44145ce7198/', 0, 'customize_changeset', '', 0),
(33, 1, '2019-02-22 15:22:51', '2019-02-22 14:22:51', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2019-02-22 15:22:51', '2019-02-22 14:22:51', '', 30, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/index.php/2019/02/22/30-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-02-22 15:24:07', '2019-02-22 14:24:07', '<!-- wp:paragraph -->\n<p>Voici ma page d''accueil statique!</p>\n<!-- /wp:paragraph -->', 'Accueil', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2019-02-22 15:24:07', '2019-02-22 14:24:07', '', 30, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/index.php/2019/02/22/30-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2019-02-22 15:24:48', '2019-02-22 14:24:48', '', 'Blogue', '', 'publish', 'closed', 'closed', '', 'blogue', '', '', '2019-02-22 15:24:48', '2019-02-22 14:24:48', '', 0, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/?page_id=36', 0, 'page', '', 0),
(37, 1, '2019-02-22 15:24:48', '2019-02-22 14:24:48', '{\n    "page_for_posts": {\n        "value": "36",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-22 14:24:48"\n    },\n    "nav_menus_created_posts": {\n        "value": [\n            36\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-22 14:24:48"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0ede28bf-bac0-4b91-8c33-842ab765a0f7', '', '', '2019-02-22 15:24:48', '2019-02-22 14:24:48', '', 0, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/index.php/2019/02/22/0ede28bf-bac0-4b91-8c33-842ab765a0f7/', 0, 'customize_changeset', '', 0),
(38, 1, '2019-02-22 15:24:48', '2019-02-22 14:24:48', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2019-02-22 15:27:41', '2019-02-22 14:27:41', '', 0, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/index.php/2019/02/22/38/', 2, 'nav_menu_item', '', 0),
(39, 1, '2019-02-22 15:24:48', '2019-02-22 14:24:48', '', 'Blogue', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2019-02-22 15:24:48', '2019-02-22 14:24:48', '', 36, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/index.php/2019/02/22/36-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2019-02-22 16:42:11', '2019-02-22 15:42:11', '{\n    "site_agence::charge_image": {\n        "value": "https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/wp-content/uploads/2019/02/istockphoto-868068278-2048x2048.jpg",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-02-22 15:42:11"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a14562f9-842f-4623-9a79-734b4f59a7dd', '', '', '2019-02-22 16:42:11', '2019-02-22 15:42:11', '', 0, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/index.php/2019/02/22/a14562f9-842f-4623-9a79-734b4f59a7dd/', 0, 'customize_changeset', '', 0),
(43, 1, '2019-03-01 16:36:50', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-03-01 16:36:50', '0000-00-00 00:00:00', '', 0, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/?p=43', 0, 'post', '', 0),
(44, 1, '2019-03-01 16:42:37', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-03-01 16:42:37', '0000-00-00 00:00:00', '', 0, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/?post_type=acf-field-group&p=44', 0, 'acf-field-group', '', 0),
(45, 1, '2019-03-01 16:45:03', '2019-03-01 15:45:03', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:12:"realisations";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:13:{i:0;s:9:"permalink";i:1;s:7:"excerpt";i:2;s:10:"discussion";i:3;s:8:"comments";i:4;s:9:"revisions";i:5;s:4:"slug";i:6;s:6:"author";i:7;s:6:"format";i:8;s:15:"page_attributes";i:9;s:14:"featured_image";i:10;s:10:"categories";i:11;s:4:"tags";i:12;s:15:"send-trackbacks";}s:11:"description";s:0:"";}', 'Réalisations', 'realisations', 'publish', 'closed', 'closed', '', 'group_5c79531a8f508', '', '', '2019-03-01 16:48:14', '2019-03-01 15:48:14', '', 0, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/?post_type=acf-field-group&#038;p=45', 0, 'acf-field-group', '', 0),
(46, 1, '2019-03-01 16:45:03', '2019-03-01 15:45:03', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:23:"Entrer le nom du client";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";i:25;}', 'Nom du client', 'nom_du_client', 'publish', 'closed', 'closed', '', 'field_5c79533aceeda', '', '', '2019-03-01 16:45:03', '2019-03-01 15:45:03', '', 45, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/?post_type=acf-field&p=46', 0, 'acf-field', '', 0),
(47, 1, '2019-03-01 16:46:46', '2019-03-01 15:46:46', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:20:"Choisissez une image";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'photo 1', 'photo_1', 'publish', 'closed', 'closed', '', 'field_5c7953b9252b3', '', '', '2019-03-01 16:46:46', '2019-03-01 15:46:46', '', 45, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/?post_type=acf-field&p=47', 1, 'acf-field', '', 0),
(48, 1, '2019-03-01 16:47:36', '2019-03-01 15:47:36', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:20:"Choisissez une image";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'photo 2', 'photo_2', 'publish', 'closed', 'closed', '', 'field_5c7953eb078e9', '', '', '2019-03-01 16:47:36', '2019-03-01 15:47:36', '', 45, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/?post_type=acf-field&p=48', 2, 'acf-field', '', 0),
(49, 1, '2019-03-01 16:48:58', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-03-01 16:48:58', '0000-00-00 00:00:00', '', 0, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/?post_type=realisations&p=49', 0, 'realisations', '', 0),
(50, 1, '2019-03-01 16:49:42', '2019-03-01 15:49:42', 'Allo', 'Un test', '', 'publish', 'open', 'closed', '', 'un-test', '', '', '2019-03-01 16:49:42', '2019-03-01 15:49:42', '', 0, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/?post_type=realisations&#038;p=50', 0, 'realisations', '', 0),
(51, 1, '2019-03-01 16:49:42', '2019-03-01 15:49:42', 'Allo', 'Un test', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2019-03-01 16:49:42', '2019-03-01 15:49:42', '', 50, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/?p=51', 0, 'revision', '', 0),
(52, 1, '2019-03-01 16:50:18', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-03-01 16:50:18', '0000-00-00 00:00:00', '', 0, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/?page_id=52', 0, 'page', '', 0),
(53, 1, '2019-03-01 16:51:32', '2019-03-01 15:51:32', '<!-- wp:paragraph -->\n<p>blblabdblalbfabdf</p>\n<!-- /wp:paragraph -->', 'Réalisations', '', 'publish', 'closed', 'closed', '', 'realisations', '', '', '2019-03-01 17:05:15', '2019-03-01 16:05:15', '', 0, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/?page_id=53', 0, 'page', '', 0),
(54, 1, '2019-03-01 16:51:32', '2019-03-01 15:51:32', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2019-03-01 16:51:32', '2019-03-01 15:51:32', '', 0, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/?p=54', 5, 'nav_menu_item', '', 0),
(55, 1, '2019-03-01 16:51:32', '2019-03-01 15:51:32', '<!-- wp:paragraph -->\n<p>blblabdblalbfabdf</p>\n<!-- /wp:paragraph -->', 'Réalisations', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2019-03-01 16:51:32', '2019-03-01 15:51:32', '', 53, 'https://timunix2.cegep-ste-foy.qc.ca/~magentababies/magentaBabies/?p=55', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tim_termmeta`
--

CREATE TABLE IF NOT EXISTS `tim_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tim_terms`
--

CREATE TABLE IF NOT EXISTS `tim_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tim_terms`
--

INSERT INTO `tim_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Menu', 'menu', 0),
(3, 'Menu secondaire', 'menu-secondaire', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tim_term_relationships`
--

CREATE TABLE IF NOT EXISTS `tim_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tim_term_relationships`
--

INSERT INTO `tim_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(6, 1, 0),
(8, 1, 0),
(12, 2, 0),
(13, 2, 0),
(18, 2, 0),
(22, 3, 0),
(38, 2, 0),
(54, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tim_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `tim_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tim_term_taxonomy`
--

INSERT INTO `tim_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'nav_menu', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tim_usermeta`
--

CREATE TABLE IF NOT EXISTS `tim_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tim_usermeta`
--

INSERT INTO `tim_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'mngrant'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'tim_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'tim_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:"4f4899ea35a145c8dd70dbeafe793e4f2ecf51dc05c97447c7065610e5b4033c";a:4:{s:10:"expiration";i:1551618571;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36";s:5:"login";i:1551445771;}s:64:"16dcb9fc0ec9cd4584c31b693edda9ee901b014b586e517d4cb6887e72478550";a:4:{s:10:"expiration";i:1552662206;s:2:"ip";s:12:"10.13.206.60";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36";s:5:"login";i:1551452606;}s:64:"3cc90b855f98dcb10027c2f379b84bb1745d9f6bca0c3f04882ddeb1ec73ba6d";a:4:{s:10:"expiration";i:1552662217;s:2:"ip";s:12:"10.13.206.60";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36";s:5:"login";i:1551452617;}}'),
(17, 1, 'tim_dashboard_quick_press_last_post_id', '25'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'tim_user-settings', 'libraryContent=browse'),
(22, 1, 'tim_user-settings-time', '1550846230'),
(23, 1, 'community-events-location', 'a:1:{s:2:"ip";s:11:"10.13.206.0";}'),
(24, 2, 'nickname', 'regniere'),
(25, 2, 'first_name', 'Eliott'),
(26, 2, 'last_name', 'Régnier'),
(27, 2, 'description', ''),
(28, 2, 'rich_editing', 'true'),
(29, 2, 'syntax_highlighting', 'true'),
(30, 2, 'comment_shortcuts', 'false'),
(31, 2, 'admin_color', 'fresh'),
(32, 2, 'use_ssl', '0'),
(33, 2, 'show_admin_bar_front', 'true'),
(34, 2, 'locale', ''),
(35, 2, 'tim_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(36, 2, 'tim_user_level', '10'),
(37, 2, 'dismissed_wp_pointers', 'wp496_privacy'),
(38, 3, 'nickname', 'Leonizard'),
(39, 3, 'first_name', 'Martin'),
(40, 3, 'last_name', 'Cavanagh'),
(41, 3, 'description', ''),
(42, 3, 'rich_editing', 'true'),
(43, 3, 'syntax_highlighting', 'true'),
(44, 3, 'comment_shortcuts', 'false'),
(45, 3, 'admin_color', 'fresh'),
(46, 3, 'use_ssl', '0'),
(47, 3, 'show_admin_bar_front', 'true'),
(48, 3, 'locale', ''),
(49, 3, 'tim_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(50, 3, 'tim_user_level', '10'),
(51, 3, 'dismissed_wp_pointers', 'wp496_privacy'),
(52, 4, 'nickname', 'sbilodeau'),
(53, 4, 'first_name', 'Sara'),
(54, 4, 'last_name', 'Bilodeau'),
(55, 4, 'description', ''),
(56, 4, 'rich_editing', 'true'),
(57, 4, 'syntax_highlighting', 'true'),
(58, 4, 'comment_shortcuts', 'false'),
(59, 4, 'admin_color', 'fresh'),
(60, 4, 'use_ssl', '0'),
(61, 4, 'show_admin_bar_front', 'true'),
(62, 4, 'locale', ''),
(63, 4, 'tim_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(64, 4, 'tim_user_level', '10'),
(65, 4, 'dismissed_wp_pointers', 'wp496_privacy');

-- --------------------------------------------------------

--
-- Table structure for table `tim_users`
--

CREATE TABLE IF NOT EXISTS `tim_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tim_users`
--

INSERT INTO `tim_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'mngrant', '$P$BJuKsggT0TKnD9gmh.kWYYFCd88IDy.', 'mngrant', 'm.noelle.grant@gmail.com', '', '2019-02-01 13:41:53', '', 0, 'mngrant'),
(2, 'regniere', '$P$BTyoyQx01QiM0iIZhfek99OWheHKHG.', 'regniere', 'eliott.regnier.protic@gmail.com', '', '2019-03-01 15:04:57', '1551452697:$P$Bu57dJq9BmXxqrOKFRffPEWcMJdnYe.', 0, 'Eliott Régnier'),
(3, '1765854', '$P$BUU60bj7MuBkWITwwYVSSdtYP3nFuy/', '1765854', 'martin.cavanagh@live.ca', '', '2019-03-01 15:06:16', '1551452776:$P$Bc4TCeL83sgdjRJt.Ko.rWWNOs1w4A.', 0, 'Martin Cavanagh'),
(4, 'sbilodeau', '$P$BzVGCsoHPBuWAJpWWGS1p62ttqxJwV1', 'sbilodeau', 'sara_bilodeau1995@hotmail.com', '', '2019-03-01 15:08:09', '1551452889:$P$BE9DS/SCEUTIsJMa1Hg/v.JVqi6J0h.', 0, 'Sara Bilodeau');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tim_commentmeta`
--
ALTER TABLE `tim_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `tim_comments`
--
ALTER TABLE `tim_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `tim_links`
--
ALTER TABLE `tim_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `tim_options`
--
ALTER TABLE `tim_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `tim_postmeta`
--
ALTER TABLE `tim_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `tim_posts`
--
ALTER TABLE `tim_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `tim_termmeta`
--
ALTER TABLE `tim_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `tim_terms`
--
ALTER TABLE `tim_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `tim_term_relationships`
--
ALTER TABLE `tim_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `tim_term_taxonomy`
--
ALTER TABLE `tim_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `tim_usermeta`
--
ALTER TABLE `tim_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `tim_users`
--
ALTER TABLE `tim_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tim_commentmeta`
--
ALTER TABLE `tim_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tim_comments`
--
ALTER TABLE `tim_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tim_links`
--
ALTER TABLE `tim_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tim_options`
--
ALTER TABLE `tim_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=280;
--
-- AUTO_INCREMENT for table `tim_postmeta`
--
ALTER TABLE `tim_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=167;
--
-- AUTO_INCREMENT for table `tim_posts`
--
ALTER TABLE `tim_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `tim_termmeta`
--
ALTER TABLE `tim_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tim_terms`
--
ALTER TABLE `tim_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tim_term_taxonomy`
--
ALTER TABLE `tim_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tim_usermeta`
--
ALTER TABLE `tim_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `tim_users`
--
ALTER TABLE `tim_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
