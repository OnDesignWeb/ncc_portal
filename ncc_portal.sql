-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 17, 2018 at 01:31 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ncc_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-04-05 10:48:18', '2018-04-05 09:48:18', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/ncc_portal', 'yes'),
(2, 'home', 'http://localhost:8888/ncc_portal', 'yes'),
(3, 'blogname', 'NCC Creative Hub', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mark@ondesign.co.uk', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'closed', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'jS F Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'jS F Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:106:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:14:\"html5-blank/?$\";s:31:\"index.php?post_type=html5-blank\";s:44:\"html5-blank/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=html5-blank&feed=$matches[1]\";s:39:\"html5-blank/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=html5-blank&feed=$matches[1]\";s:31:\"html5-blank/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=html5-blank&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:37:\"html5-blank/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"html5-blank/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"html5-blank/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"html5-blank/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"html5-blank/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"html5-blank/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"html5-blank/(.+?)/embed/?$\";s:44:\"index.php?html5-blank=$matches[1]&embed=true\";s:30:\"html5-blank/(.+?)/trackback/?$\";s:38:\"index.php?html5-blank=$matches[1]&tb=1\";s:50:\"html5-blank/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?html5-blank=$matches[1]&feed=$matches[2]\";s:45:\"html5-blank/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?html5-blank=$matches[1]&feed=$matches[2]\";s:38:\"html5-blank/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?html5-blank=$matches[1]&paged=$matches[2]\";s:45:\"html5-blank/(.+?)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?html5-blank=$matches[1]&cpage=$matches[2]\";s:34:\"html5-blank/(.+?)(?:/([0-9]+))?/?$\";s:50:\"index.php?html5-blank=$matches[1]&page=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'ncc_hub', 'yes'),
(41, 'stylesheet', 'ncc_hub', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '1', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(69, 'close_comments_for_old_posts', '1', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/London', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'en_GB', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"widget-area-1\";a:0:{}s:13:\"widget-area-2\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:6:{i:1524001698;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1524044912;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1524045904;a:1:{s:25:\"swpm_account_status_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1524045905;a:1:{s:33:\"swpm_delete_pending_account_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1524046642;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1522923778;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(129, 'can_compress_scripts', '0', 'no'),
(142, 'recently_activated', 'a:1:{s:25:\"wp-members/wp-members.php\";i:1523895022;}', 'yes'),
(143, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"en_GB\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-4.9.5.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1523959042;s:15:\"version_checked\";s:5:\"4.9.5\";s:12:\"translations\";a:0:{}}', 'no'),
(145, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1523952371;s:7:\"checked\";a:2:{s:7:\"ncc_hub\";s:3:\"1.0\";s:15:\"twentyseventeen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(147, 'swpm_db_version', '1.2', 'yes'),
(148, 'swpm-settings', 'a:22:{i:0;b:0;s:16:\"join-us-page-url\";s:49:\"http://localhost:8888/ncc_portal/membership-join/\";s:21:\"registration-page-url\";s:73:\"http://localhost:8888/ncc_portal/membership-join/membership-registration/\";s:14:\"login-page-url\";s:50:\"http://localhost:8888/ncc_portal/membership-login/\";s:16:\"profile-page-url\";s:69:\"http://localhost:8888/ncc_portal/membership-login/membership-profile/\";s:14:\"reset-page-url\";s:65:\"http://localhost:8888/ncc_portal/membership-login/password-reset/\";s:25:\"reg-complete-mail-subject\";s:29:\"Your registration is complete\";s:22:\"reg-complete-mail-body\";s:211:\"Dear {first_name} {last_name}\n\nYour registration is now complete!\n\nRegistration details:\nUsername: {user_name}\nPassword: {password}\n\nPlease login to the member area at the following URL:\n\n{login_link}\n\nThank You\";s:32:\"reg-prompt-complete-mail-subject\";s:26:\"Complete your registration\";s:29:\"reg-prompt-complete-mail-body\";s:146:\"Dear {first_name} {last_name}\n\nThank you for joining us!\n\nPlease complete your registration by visiting the following link:\n\n{reg_link}\n\nThank You\";s:29:\"upgrade-complete-mail-subject\";s:44:\"Subject for email sent after account upgrade\";s:26:\"upgrade-complete-mail-body\";s:73:\"Dear {first_name} {last_name}\n\nYour Account Has Been Upgraded.\n\nThank You\";s:18:\"reset-mail-subject\";s:30:\"NCC Creative Hub: New Password\";s:15:\"reset-mail-body\";s:213:\"Dear {first_name} {last_name}\n\nHere is your new password:\n\nUsername: {user_name}\nPassword: {password}\n\nYou can change the password from the edit profile section of the site (after you log into the site)\n\nThank You\";s:28:\"account-change-email-subject\";s:16:\"Account Updated!\";s:25:\"account-change-email-body\";s:149:\"Dear {first_name} {last_name},\n\nYour account status has been updated! Please login to the member area at the following URL:\n\n {login_link}\n\nThank You\";s:10:\"email-from\";s:19:\"mark@ondesign.co.uk\";s:31:\"reg-complete-mail-subject-admin\";s:39:\"Notification of New Member Registration\";s:28:\"reg-complete-mail-body-admin\";s:242:\"A new member has completed the registration.\n\nUsername: {user_name}\nEmail: {email}\n\nPlease login to the admin dashboard to view details of this user.\n\nYou can customize this email message from the Email Settings menu of the plugin.\n\nThank You\";s:33:\"bulk-activate-notify-mail-subject\";s:18:\"Account Activated!\";s:30:\"bulk-activate-notify-mail-body\";s:87:\"Hi,\n\nYour account has been activated!\n\nYou can now login to the member area.\n\nThank You\";s:19:\"swpm-active-version\";s:5:\"3.6.4\";}', 'yes'),
(149, 'swpm_private_key_one', '5ac5f4d50057a2.44677214', 'yes'),
(153, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1523952371;s:7:\"checked\";a:1:{s:25:\"wp-members/wp-members.php\";s:7:\"3.1.9.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:25:\"wp-members/wp-members.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/wp-members\";s:4:\"slug\";s:10:\"wp-members\";s:6:\"plugin\";s:25:\"wp-members/wp-members.php\";s:11:\"new_version\";s:7:\"3.1.9.3\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/wp-members/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/plugin/wp-members.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/wp-members/assets/icon-256x256.png?rev=1226414\";s:2:\"1x\";s:63:\"https://ps.w.org/wp-members/assets/icon-128x128.png?rev=1226414\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/wp-members/assets/banner-772x250.png?rev=1195657\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(154, 'wpmembers_settings', 'a:20:{s:7:\"version\";s:7:\"3.1.9.3\";s:6:\"notify\";s:1:\"1\";s:7:\"mod_reg\";s:1:\"1\";s:7:\"captcha\";s:1:\"3\";s:7:\"use_exp\";s:1:\"0\";s:9:\"use_trial\";s:1:\"0\";s:8:\"warnings\";s:1:\"0\";s:7:\"dropins\";s:1:\"0\";s:10:\"user_pages\";a:3:{s:7:\"profile\";s:0:\"\";s:8:\"register\";s:0:\"\";s:5:\"login\";s:0:\"\";}s:6:\"cssurl\";s:66:\"/ncc_portal/wp-content/plugins/wp-members/css/generic-no-float.css\";s:5:\"style\";s:66:\"/ncc_portal/wp-content/plugins/wp-members/css/generic-no-float.css\";s:6:\"attrib\";s:1:\"0\";s:10:\"post_types\";a:0:{}s:9:\"form_tags\";a:1:{s:7:\"default\";s:20:\"Registration Default\";}s:5:\"email\";a:2:{s:4:\"from\";s:0:\"\";s:9:\"from_name\";s:0:\"\";}s:5:\"block\";a:2:{s:4:\"post\";s:1:\"1\";s:4:\"page\";s:1:\"0\";}s:12:\"show_excerpt\";a:2:{s:4:\"post\";i:0;s:4:\"page\";i:0;}s:10:\"show_login\";a:2:{s:4:\"post\";s:1:\"1\";s:4:\"page\";s:1:\"1\";}s:8:\"show_reg\";a:2:{s:4:\"post\";s:1:\"1\";s:4:\"page\";s:1:\"1\";}s:6:\"autoex\";a:2:{s:4:\"post\";a:3:{s:7:\"enabled\";i:0;s:6:\"length\";i:0;s:4:\"text\";s:0:\"\";}s:4:\"page\";a:3:{s:7:\"enabled\";i:0;s:6:\"length\";i:0;s:4:\"text\";s:0:\"\";}}}', 'yes'),
(155, 'wpmembers_fields', 'a:16:{i:0;a:7:{i:0;i:1;i:1;s:10:\"First Name\";i:2;s:10:\"first_name\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"y\";}i:1;a:7:{i:0;i:2;i:1;s:9:\"Last Name\";i:2;s:9:\"last_name\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"y\";}i:2;a:7:{i:0;i:3;i:1;s:9:\"Address 1\";i:2;s:5:\"addr1\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"n\";}i:3;a:7:{i:0;i:4;i:1;s:9:\"Address 2\";i:2;s:5:\"addr2\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"n\";i:6;s:1:\"n\";}i:4;a:7:{i:0;i:5;i:1;s:4:\"City\";i:2;s:4:\"city\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"n\";}i:5;a:7:{i:0;i:6;i:1;s:5:\"State\";i:2;s:8:\"thestate\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"n\";}i:6;a:7:{i:0;i:7;i:1;s:3:\"Zip\";i:2;s:3:\"zip\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"n\";}i:7;a:7:{i:0;i:8;i:1;s:7:\"Country\";i:2;s:7:\"country\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"n\";}i:8;a:7:{i:0;i:9;i:1;s:9:\"Day Phone\";i:2;s:6:\"phone1\";i:3;s:4:\"text\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"n\";}i:9;a:7:{i:0;i:10;i:1;s:5:\"Email\";i:2;s:10:\"user_email\";i:3;s:5:\"email\";i:4;s:1:\"y\";i:5;s:1:\"y\";i:6;s:1:\"y\";}i:10;a:7:{i:0;i:11;i:1;s:13:\"Confirm Email\";i:2;s:13:\"confirm_email\";i:3;s:5:\"email\";i:4;s:1:\"n\";i:5;s:1:\"n\";i:6;s:1:\"n\";}i:11;a:7:{i:0;i:12;i:1;s:7:\"Website\";i:2;s:8:\"user_url\";i:3;s:3:\"url\";i:4;s:1:\"n\";i:5;s:1:\"n\";i:6;s:1:\"y\";}i:12;a:7:{i:0;i:13;i:1;s:17:\"Biographical Info\";i:2;s:11:\"description\";i:3;s:8:\"textarea\";i:4;s:1:\"n\";i:5;s:1:\"n\";i:6;s:1:\"y\";}i:13;a:7:{i:0;i:14;i:1;s:8:\"Password\";i:2;s:8:\"password\";i:3;s:8:\"password\";i:4;s:1:\"n\";i:5;s:1:\"n\";i:6;s:1:\"n\";}i:14;a:7:{i:0;i:15;i:1;s:16:\"Confirm Password\";i:2;s:16:\"confirm_password\";i:3;s:8:\"password\";i:4;s:1:\"n\";i:5;s:1:\"n\";i:6;s:1:\"n\";}i:15;a:9:{i:0;i:16;i:1;s:3:\"TOS\";i:2;s:3:\"tos\";i:3;s:8:\"checkbox\";i:4;s:1:\"n\";i:5;s:1:\"n\";i:6;s:1:\"n\";i:7;s:5:\"agree\";i:8;s:1:\"n\";}}', 'yes'),
(156, 'wpmembers_tos', 'Put your TOS (Terms of Service) text here.  You can use HTML markup.', 'yes'),
(157, 'wpmembers_dialogs', 'a:9:{s:14:\"restricted_msg\";s:119:\"This content is restricted to site members.  If you are an existing user, please log in.  New users may register below.\";s:4:\"user\";s:50:\"Sorry, that username is taken, please try another.\";s:5:\"email\";s:74:\"Sorry, that email address already has an account.<br />Please try another.\";s:7:\"success\";s:124:\"Congratulations! Your registration was successful.<br /><br />You may now log in using the password that was emailed to you.\";s:11:\"editsuccess\";s:29:\"Your information was updated!\";s:11:\"pwdchangerr\";s:53:\"Passwords did not match.<br /><br />Please try again.\";s:16:\"pwdchangesuccess\";s:30:\"Password successfully changed!\";s:11:\"pwdreseterr\";s:65:\"Either the username or email address do not exist in our records.\";s:15:\"pwdresetsuccess\";s:135:\"Password successfully reset!<br /><br />An email containing a new password has been sent to the email address on file for your account.\";}', 'yes'),
(158, 'wpmembers_email_newreg', 'a:2:{s:4:\"subj\";s:37:\"Your registration info for [blogname]\";s:4:\"body\";s:269:\"Thank you for registering for [blogname]\r\n\r\nYour registration information is below.\r\nYou may wish to retain a copy for your records.\r\n\r\nusername: [username]\r\npassword: [password]\r\n\r\nYou may log in here:\r\n[reglink]\r\n\r\nYou may change your password here:\r\n[user-profile]\r\n\";}', 'no'),
(159, 'wpmembers_email_newmod', 'a:2:{s:4:\"subj\";s:40:\"Thank you for registering for [blogname]\";s:4:\"body\";s:173:\"Thank you for registering for [blogname]. \r\nYour registration has been received and is pending approval.\r\nYou will receive login instructions upon approval of your account\r\n\";}', 'no'),
(160, 'wpmembers_email_appmod', 'a:2:{s:4:\"subj\";s:50:\"Your registration for [blogname] has been approved\";s:4:\"body\";s:300:\"Your registration for [blogname] has been approved.\r\n\r\nYour registration information is below.\r\nYou may wish to retain a copy for your records.\r\n\r\nusername: [username]\r\npassword: [password]\r\n\r\nYou may log in and change your password here:\r\n[user-profile]\r\n\r\nYou originally registered at:\r\n[reglink]\r\n\";}', 'no'),
(161, 'wpmembers_email_repass', 'a:2:{s:4:\"subj\";s:34:\"Your password reset for [blogname]\";s:4:\"body\";s:157:\"Your password for [blogname] has been reset\r\n\r\nYour new password is included below. You may wish to retain a copy for your records.\r\n\r\npassword: [password]\r\n\";}', 'no'),
(162, 'wpmembers_email_notify', 'a:2:{s:4:\"subj\";s:36:\"New user registration for [blogname]\";s:4:\"body\";s:194:\"The following user registered for [blogname]:\r\n\r\nusername: [username]\r\nemail: [email]\r\n\r\n[fields]\r\nThis user registered here:\r\n[reglink]\r\n\r\nuser IP: [user-ip]\r\n\r\nactivate user: [activate-user]\r\n\";}', 'no'),
(163, 'wpmembers_email_footer', '----------------------------------\r\nThis is an automated message from [blogname]\r\nPlease do not reply to this address', 'no'),
(164, 'wpmembers_email_getuser', 'a:2:{s:4:\"subj\";s:23:\"Username for [blogname]\";s:4:\"body\";s:64:\"Your username for [blogname] is below.\r\n\r\nusername: [username]\r\n\";}', 'no'),
(165, 'wpmembers_style', 'http://localhost:8888/ncc_portal/wp-content/plugins/wp-members/css/generic-no-float.css', 'yes'),
(166, 'widget_widget_wpmemwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(180, 'current_theme', 'NCC Hub', 'yes'),
(181, 'theme_mods_ncc_hub', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(182, 'theme_switched', '', 'yes'),
(193, '_transient_timeout_plugin_slugs', '1523981700', 'no'),
(194, '_transient_plugin_slugs', 'a:1:{i:0;s:25:\"wp-members/wp-members.php\";}', 'no'),
(201, '_site_transient_timeout_theme_roots', '1523960843', 'no'),
(202, '_site_transient_theme_roots', 'a:2:{s:7:\"ncc_hub\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";}', 'no'),
(205, '_site_transient_timeout_browser_0ac065c0cd806f1e34370dacad950de7', '1524565992', 'no'),
(206, '_site_transient_browser_0ac065c0cd806f1e34370dacad950de7', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"65.0.3325.181\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(207, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 1, '_wp_trash_meta_status', 'publish'),
(3, 1, '_wp_trash_meta_time', '1522921770'),
(4, 1, '_wp_desired_post_slug', 'hello-world'),
(5, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(6, 2, '_wp_trash_meta_status', 'publish'),
(7, 2, '_wp_trash_meta_time', '1522921779'),
(8, 2, '_wp_desired_post_slug', 'sample-page'),
(9, 11, '_edit_last', '1'),
(10, 11, '_edit_lock', '1522923631:1'),
(11, 14, '_menu_item_type', 'custom'),
(12, 14, '_menu_item_menu_item_parent', '0'),
(13, 14, '_menu_item_object_id', '14'),
(14, 14, '_menu_item_object', 'custom'),
(15, 14, '_menu_item_target', ''),
(16, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(17, 14, '_menu_item_xfn', ''),
(18, 14, '_menu_item_url', '/ncc_portal/'),
(19, 14, '_menu_item_orphaned', '1523961199'),
(20, 15, '_menu_item_type', 'post_type'),
(21, 15, '_menu_item_menu_item_parent', '0'),
(22, 15, '_menu_item_object_id', '11'),
(23, 15, '_menu_item_object', 'page'),
(24, 15, '_menu_item_target', ''),
(25, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(26, 15, '_menu_item_xfn', ''),
(27, 15, '_menu_item_url', ''),
(28, 15, '_menu_item_orphaned', '1523961199'),
(29, 16, '_menu_item_type', 'post_type'),
(30, 16, '_menu_item_menu_item_parent', '0'),
(31, 16, '_menu_item_object_id', '6'),
(32, 16, '_menu_item_object', 'page'),
(33, 16, '_menu_item_target', ''),
(34, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 16, '_menu_item_xfn', ''),
(36, 16, '_menu_item_url', ''),
(37, 16, '_menu_item_orphaned', '1523961199'),
(38, 17, '_menu_item_type', 'post_type'),
(39, 17, '_menu_item_menu_item_parent', '0'),
(40, 17, '_menu_item_object_id', '7'),
(41, 17, '_menu_item_object', 'page'),
(42, 17, '_menu_item_target', ''),
(43, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 17, '_menu_item_xfn', ''),
(45, 17, '_menu_item_url', ''),
(46, 17, '_menu_item_orphaned', '1523961199'),
(47, 18, '_menu_item_type', 'post_type'),
(48, 18, '_menu_item_menu_item_parent', '0'),
(49, 18, '_menu_item_object_id', '8'),
(50, 18, '_menu_item_object', 'page'),
(51, 18, '_menu_item_target', ''),
(52, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(53, 18, '_menu_item_xfn', ''),
(54, 18, '_menu_item_url', ''),
(55, 18, '_menu_item_orphaned', '1523961199'),
(56, 19, '_menu_item_type', 'post_type'),
(57, 19, '_menu_item_menu_item_parent', '0'),
(58, 19, '_menu_item_object_id', '10'),
(59, 19, '_menu_item_object', 'page'),
(60, 19, '_menu_item_target', ''),
(61, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 19, '_menu_item_xfn', ''),
(63, 19, '_menu_item_url', ''),
(64, 19, '_menu_item_orphaned', '1523961199'),
(65, 20, '_menu_item_type', 'post_type'),
(66, 20, '_menu_item_menu_item_parent', '0'),
(67, 20, '_menu_item_object_id', '9'),
(68, 20, '_menu_item_object', 'page'),
(69, 20, '_menu_item_target', ''),
(70, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 20, '_menu_item_xfn', ''),
(72, 20, '_menu_item_url', ''),
(73, 20, '_menu_item_orphaned', '1523961199'),
(74, 21, '_menu_item_type', 'custom'),
(75, 21, '_menu_item_menu_item_parent', '0'),
(76, 21, '_menu_item_object_id', '21'),
(77, 21, '_menu_item_object', 'custom'),
(78, 21, '_menu_item_target', ''),
(79, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(80, 21, '_menu_item_xfn', ''),
(81, 21, '_menu_item_url', '#'),
(83, 22, '_menu_item_type', 'custom'),
(84, 22, '_menu_item_menu_item_parent', '0'),
(85, 22, '_menu_item_object_id', '22'),
(86, 22, '_menu_item_object', 'custom'),
(87, 22, '_menu_item_target', ''),
(88, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(89, 22, '_menu_item_xfn', ''),
(90, 22, '_menu_item_url', '#'),
(92, 23, '_menu_item_type', 'custom'),
(93, 23, '_menu_item_menu_item_parent', '0'),
(94, 23, '_menu_item_object_id', '23'),
(95, 23, '_menu_item_object', 'custom'),
(96, 23, '_menu_item_target', ''),
(97, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(98, 23, '_menu_item_xfn', ''),
(99, 23, '_menu_item_url', '#');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-04-05 10:48:18', '2018-04-05 09:48:18', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2018-04-05 10:49:30', '2018-04-05 09:49:30', '', 0, 'http://localhost:8888/ncc_portal/?p=1', 0, 'post', '', 1),
(2, 1, '2018-04-05 10:48:18', '2018-04-05 09:48:18', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Leicester City, XYZ employs over 2,000 people and does all kinds of awesome things for the Leicester community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:8888/ncc_portal/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-04-05 10:49:39', '2018-04-05 09:49:39', '', 0, 'http://localhost:8888/ncc_portal/?page_id=2', 0, 'page', '', 0),
(4, 1, '2018-04-05 10:49:30', '2018-04-05 09:49:30', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-04-05 10:49:30', '2018-04-05 09:49:30', '', 1, 'http://localhost:8888/ncc_portal/2018/04/05/1-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2018-04-05 10:49:39', '2018-04-05 09:49:39', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Leicester City, XYZ employs over 2,000 people and does all kinds of awesome things for the Leicester community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:8888/ncc_portal/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-05 10:49:39', '2018-04-05 09:49:39', '', 2, 'http://localhost:8888/ncc_portal/2018/04/05/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-04-05 11:05:08', '2018-04-05 10:05:08', '<p style=\"color:red;font-weight:bold;\">This page and the content has been automatically generated for you to give you a basic idea of how a \"Join Us\" page should look like. You can customize this page however you like it by editing this page from your WordPress page editor.</p><p style=\"font-weight:bold;\">If you end up changing the URL of this page then make sure to update the URL value in the settings menu of the plugin.</p><p style=\"border-top:1px solid #ccc;padding-top:10px;margin-top:10px;\"></p>\r\n			<strong>Free Membership</strong>\r\n			<br />\r\n			You get unlimited access to free membership content\r\n			<br />\r\n			<em><strong>Price: Free!</strong></em>\r\n			<br /><br />Link the following image to go to the Registration Page if you want your visitors to be able to create a free membership account<br /><br />\r\n			<img title=\"Join Now\" src=\"http://localhost:8888/ncc_portal/wp-content/plugins/simple-membership/images/join-now-button-image.gif\" alt=\"Join Now Button\" width=\"277\" height=\"82\" />\r\n			<p style=\"border-bottom:1px solid #ccc;padding-bottom:10px;margin-bottom:10px;\"></p><p><strong>You can register for a Free Membership or pay for one of the following membership options</strong></p><p style=\"border-top:1px solid #ccc;padding-top:10px;margin-top:10px;\"></p>\r\n			[ ==> Insert Payment Button For Your Paid Membership Levels Here <== ]\r\n			<p style=\"border-bottom:1px solid #ccc;padding-bottom:10px;margin-bottom:10px;\"></p>', 'Join Us', '', 'publish', 'closed', 'closed', '', 'membership-join', '', '', '2018-04-05 11:05:08', '2018-04-05 10:05:08', '', 0, 'http://localhost:8888/ncc_portal/membership-join/', 0, 'page', '', 0),
(7, 1, '2018-04-05 11:05:08', '2018-04-05 10:05:08', '[swpm_registration_form]', 'Registration', '', 'publish', 'closed', 'closed', '', 'membership-registration', '', '', '2018-04-05 11:05:08', '2018-04-05 10:05:08', '', 6, 'http://localhost:8888/ncc_portal/membership-join/membership-registration/', 0, 'page', '', 0),
(8, 1, '2018-04-05 11:05:08', '2018-04-05 10:05:08', '[swpm_login_form]', 'Member Login', '', 'publish', 'closed', 'closed', '', 'membership-login', '', '', '2018-04-05 11:05:08', '2018-04-05 10:05:08', '', 0, 'http://localhost:8888/ncc_portal/membership-login/', 0, 'page', '', 0),
(9, 1, '2018-04-05 11:05:08', '2018-04-05 10:05:08', '[swpm_profile_form]', 'Profile', '', 'publish', 'closed', 'closed', '', 'membership-profile', '', '', '2018-04-05 11:05:08', '2018-04-05 10:05:08', '', 8, 'http://localhost:8888/ncc_portal/membership-login/membership-profile/', 0, 'page', '', 0),
(10, 1, '2018-04-05 11:05:08', '2018-04-05 10:05:08', '[swpm_reset_form]', 'Password Reset', '', 'publish', 'closed', 'closed', '', 'password-reset', '', '', '2018-04-05 11:05:08', '2018-04-05 10:05:08', '', 8, 'http://localhost:8888/ncc_portal/membership-login/password-reset/', 0, 'page', '', 0),
(11, 1, '2018-04-05 11:17:29', '2018-04-05 10:17:29', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-04-05 11:17:29', '2018-04-05 10:17:29', '', 0, 'http://localhost:8888/ncc_portal/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-04-05 11:17:29', '2018-04-05 10:17:29', '', 'Home', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-04-05 11:17:29', '2018-04-05 10:17:29', '', 11, 'http://localhost:8888/ncc_portal/2018/04/05/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-04-17 11:33:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-04-17 11:33:13', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/ncc_portal/?p=13', 0, 'post', '', 0),
(14, 1, '2018-04-17 11:33:19', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-17 11:33:19', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/ncc_portal/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2018-04-17 11:33:19', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-17 11:33:19', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/ncc_portal/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2018-04-17 11:33:19', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-17 11:33:19', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/ncc_portal/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2018-04-17 11:33:19', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-17 11:33:19', '0000-00-00 00:00:00', '', 6, 'http://localhost:8888/ncc_portal/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2018-04-17 11:33:19', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-17 11:33:19', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/ncc_portal/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2018-04-17 11:33:19', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-17 11:33:19', '0000-00-00 00:00:00', '', 8, 'http://localhost:8888/ncc_portal/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2018-04-17 11:33:19', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-04-17 11:33:19', '0000-00-00 00:00:00', '', 8, 'http://localhost:8888/ncc_portal/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2018-04-17 11:34:16', '2018-04-17 10:34:16', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2018-04-17 11:34:16', '2018-04-17 10:34:16', '', 0, 'http://localhost:8888/ncc_portal/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2018-04-17 11:34:17', '2018-04-17 10:34:17', '', 'Careers', '', 'publish', 'closed', 'closed', '', 'careers', '', '', '2018-04-17 11:34:17', '2018-04-17 10:34:17', '', 0, 'http://localhost:8888/ncc_portal/?p=22', 2, 'nav_menu_item', '', 0),
(23, 1, '2018-04-17 11:34:17', '2018-04-17 10:34:17', '', 'Industries', '', 'publish', 'closed', 'closed', '', 'industries', '', '', '2018-04-17 11:34:17', '2018-04-17 10:34:17', '', 0, 'http://localhost:8888/ncc_portal/?p=23', 3, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_swpm_membership_meta_tbl`
--

CREATE TABLE `wp_swpm_membership_meta_tbl` (
  `id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_label` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_520_ci,
  `meta_type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'text',
  `meta_default` text COLLATE utf8mb4_unicode_520_ci,
  `meta_context` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_swpm_membership_tbl`
--

CREATE TABLE `wp_swpm_membership_tbl` (
  `id` int(11) NOT NULL,
  `alias` varchar(127) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'subscriber',
  `permissions` tinyint(4) NOT NULL DEFAULT '0',
  `subscription_period` varchar(11) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '-1',
  `subscription_duration_type` tinyint(4) NOT NULL DEFAULT '0',
  `subscription_unit` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `loginredirect_page` text COLLATE utf8mb4_unicode_520_ci,
  `category_list` longtext COLLATE utf8mb4_unicode_520_ci,
  `page_list` longtext COLLATE utf8mb4_unicode_520_ci,
  `post_list` longtext COLLATE utf8mb4_unicode_520_ci,
  `comment_list` longtext COLLATE utf8mb4_unicode_520_ci,
  `attachment_list` longtext COLLATE utf8mb4_unicode_520_ci,
  `custom_post_list` longtext COLLATE utf8mb4_unicode_520_ci,
  `disable_bookmark_list` longtext COLLATE utf8mb4_unicode_520_ci,
  `options` longtext COLLATE utf8mb4_unicode_520_ci,
  `protect_older_posts` tinyint(1) NOT NULL DEFAULT '0',
  `campaign_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_swpm_membership_tbl`
--

INSERT INTO `wp_swpm_membership_tbl` (`id`, `alias`, `role`, `permissions`, `subscription_period`, `subscription_duration_type`, `subscription_unit`, `loginredirect_page`, `category_list`, `page_list`, `post_list`, `comment_list`, `attachment_list`, `custom_post_list`, `disable_bookmark_list`, `options`, `protect_older_posts`, `campaign_name`) VALUES
(1, 'Content Protection', 'administrator', 15, '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_swpm_members_tbl`
--

CREATE TABLE `wp_swpm_members_tbl` (
  `member_id` int(12) NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `first_name` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `last_name` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `member_since` date NOT NULL DEFAULT '0000-00-00',
  `membership_level` smallint(6) NOT NULL,
  `more_membership_levels` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `account_state` enum('active','inactive','expired','pending','unsubscribed') COLLATE utf8mb4_unicode_520_ci DEFAULT 'pending',
  `last_accessed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_accessed_from_ip` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phone` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address_street` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address_city` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address_state` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address_zipcode` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `home_page` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `gender` enum('male','female','not specified') COLLATE utf8mb4_unicode_520_ci DEFAULT 'not specified',
  `referrer` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `extra_info` text COLLATE utf8mb4_unicode_520_ci,
  `reg_code` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `subscription_starts` date DEFAULT NULL,
  `initial_membership_level` smallint(6) DEFAULT NULL,
  `txn_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `subscr_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `company_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `notes` text COLLATE utf8mb4_unicode_520_ci,
  `flags` int(11) DEFAULT '0',
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_swpm_payments_tbl`
--

CREATE TABLE `wp_swpm_payments_tbl` (
  `id` int(12) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `first_name` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `last_name` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `member_id` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `membership_level` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `txn_date` date NOT NULL DEFAULT '0000-00-00',
  `txn_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `subscr_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `reference` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `payment_amount` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `gateway` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `status` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `ip_address` varchar(128) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorised', 0),
(2, 'Main Menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(21, 2, 0),
(22, 2, 0),
(23, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'nccmark'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"bc8f6c9937892102a606bb04cab79b3b342cfc80d494f1b6c8338725db13ee16\";a:4:{s:10:\"expiration\";i:1524131311;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1522921711;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '13'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'closedpostboxes_dashboard', 'a:1:{i:0;s:17:\"dashboard_primary\";}'),
(20, 1, 'metaboxhidden_dashboard', 'a:4:{i:0;s:19:\"dashboard_right_now\";i:1;s:21:\"dashboard_custom_feed\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}'),
(21, 1, 'active', '1'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(24, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'nccmark', '$P$BKE7k8Sgf00N1EVLj4fMrxxbi16C7H0', 'nccmark', 'mark@ondesign.co.uk', '', '2018-04-05 09:48:18', '', 0, 'nccmark');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_swpm_membership_meta_tbl`
--
ALTER TABLE `wp_swpm_membership_meta_tbl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level_id` (`level_id`);

--
-- Indexes for table `wp_swpm_membership_tbl`
--
ALTER TABLE `wp_swpm_membership_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_swpm_members_tbl`
--
ALTER TABLE `wp_swpm_members_tbl`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `wp_swpm_payments_tbl`
--
ALTER TABLE `wp_swpm_payments_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `wp_swpm_membership_meta_tbl`
--
ALTER TABLE `wp_swpm_membership_meta_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_swpm_membership_tbl`
--
ALTER TABLE `wp_swpm_membership_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_swpm_members_tbl`
--
ALTER TABLE `wp_swpm_members_tbl`
  MODIFY `member_id` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_swpm_payments_tbl`
--
ALTER TABLE `wp_swpm_payments_tbl`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
