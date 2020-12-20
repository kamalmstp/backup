-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2020 at 08:46 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pcm4`
--

-- --------------------------------------------------------

--
-- Table structure for table `pcm_commentmeta`
--

CREATE TABLE `pcm_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pcm_comments`
--

CREATE TABLE `pcm_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pcm_comments`
--

INSERT INTO `pcm_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Seorang Komentator WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-12-05 04:20:06', '2020-12-05 04:20:06', 'Hai, ini sebuah komentar.\nUntuk mulai memoderasi, mengedit, dan menghapus komentar, silakan kunjungi laman Komentar di dasbor.\nAvatar komentator diambil dari <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pcm_links`
--

CREATE TABLE `pcm_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pcm_options`
--

CREATE TABLE `pcm_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pcm_options`
--

INSERT INTO `pcm_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/pcm4', 'yes'),
(2, 'home', 'http://localhost/pcm4', 'yes'),
(3, 'blogname', 'Pimpinan Cabang Muhammadiyah Banjarmasin 4', 'yes'),
(4, 'blogdescription', 'Pimpinan Cabang Muhammadiyah Banjarmasin 4', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@gmail.com', 'yes'),
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
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:57:\"D:\\xampp\\htdocs\\pcm4/wp-content/themes/colormag/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'colormag', 'yes'),
(41, 'stylesheet', 'colormag', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:11:{i:2;a:2:{s:5:\"title\";s:14:\"Premium Themes\";s:4:\"text\";s:755:\"<ul>\r\n										<li><a href=\"https://themegrill.com/themes/spacious-pro/\">Spacious Pro</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/foodhunt-pro/\">FoodHunt Pro</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/colornews-pro/\">ColorNews Pro</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/accelerate-pro/\">Accelerate Pro</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/esteem-pro/\">Esteem Pro</a></li>\r\n										<li><a href=\"https://http://themegrill.com/themes/radiate-pro/\">Radiate Pro</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/fitclub-pro/\">Fitclub Pro</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/himalayas-pro/\">Himalayas Pro</a></li>\r\n									</ul>\";}i:3;a:2:{s:5:\"title\";s:8:\"About Us\";s:4:\"text\";s:346:\"<a title=\"logo\" href=\"http://localhost/pcm4\"><img src=\"http://localhost/pcm4/wp-content/themes/colormag/img/colormag-logo.png\" alt=\"Logo\" /></a> <br> We love WordPress and we are here to provide you with professional looking WordPress themes so that you can take your website one step ahead. We focus on simplicity, elegant design and clean code.\";}i:4;a:2:{s:5:\"title\";s:12:\"Useful Links\";s:4:\"text\";s:663:\"<ul>\r\n										<li><a href=\"https://themegrill.com/\">ThemeGrill</a></li>\r\n										<li><a href=\"https://themegrill.com/support-forum/\">Support</a></li>\r\n										<li><a href=\"https://themegrill.com/theme-instruction/colormag/\">Documentation</a></li>\r\n										<li><a href=\"https://themegrill.com/frequently-asked-questions/\">FAQ</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/\">Themes</a></li>\r\n										<li><a href=\"https://themegrill.com/plugins/\">Plugins</a></li>\r\n										<li><a href=\"https://themegrill.com/blog/\">Blog</a></li>\r\n										<li><a href=\"https://themegrill.com/plans-pricing/\">Plans &amp; Pricing</a></li>\r\n									</ul>\";}i:5;a:2:{s:5:\"title\";s:12:\"Other Themes\";s:4:\"text\";s:757:\"<ul>\r\n										<li><a href=\"https://themegrill.com/themes/envince/\">Envince</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/estore/\">eStore</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/ample/\">Ample</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/spacious/\">Spacious</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/accelerate/\">Accelerate</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/radiate/\">Radiate</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/esteem/\">Esteem</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/himalayas/\">Himalayas</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/colornews/\">ColorNews</a></li>\r\n									</ul>\";}i:6;a:1:{s:4:\"text\";s:71:\"Contains all features of free version and many new additional features.\";}s:12:\"_multiwidget\";i:1;i:7;a:2:{s:5:\"title\";s:14:\"Premium Themes\";s:4:\"text\";s:755:\"<ul>\r\n										<li><a href=\"https://themegrill.com/themes/spacious-pro/\">Spacious Pro</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/foodhunt-pro/\">FoodHunt Pro</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/colornews-pro/\">ColorNews Pro</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/accelerate-pro/\">Accelerate Pro</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/esteem-pro/\">Esteem Pro</a></li>\r\n										<li><a href=\"https://http://themegrill.com/themes/radiate-pro/\">Radiate Pro</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/fitclub-pro/\">Fitclub Pro</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/himalayas-pro/\">Himalayas Pro</a></li>\r\n									</ul>\";}i:8;a:2:{s:5:\"title\";s:8:\"About Us\";s:4:\"text\";s:346:\"<a title=\"logo\" href=\"http://localhost/pcm4\"><img src=\"http://localhost/pcm4/wp-content/themes/colormag/img/colormag-logo.png\" alt=\"Logo\" /></a> <br> We love WordPress and we are here to provide you with professional looking WordPress themes so that you can take your website one step ahead. We focus on simplicity, elegant design and clean code.\";}i:9;a:2:{s:5:\"title\";s:12:\"Useful Links\";s:4:\"text\";s:663:\"<ul>\r\n										<li><a href=\"https://themegrill.com/\">ThemeGrill</a></li>\r\n										<li><a href=\"https://themegrill.com/support-forum/\">Support</a></li>\r\n										<li><a href=\"https://themegrill.com/theme-instruction/colormag/\">Documentation</a></li>\r\n										<li><a href=\"https://themegrill.com/frequently-asked-questions/\">FAQ</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/\">Themes</a></li>\r\n										<li><a href=\"https://themegrill.com/plugins/\">Plugins</a></li>\r\n										<li><a href=\"https://themegrill.com/blog/\">Blog</a></li>\r\n										<li><a href=\"https://themegrill.com/plans-pricing/\">Plans &amp; Pricing</a></li>\r\n									</ul>\";}i:10;a:2:{s:5:\"title\";s:12:\"Other Themes\";s:4:\"text\";s:757:\"<ul>\r\n										<li><a href=\"https://themegrill.com/themes/envince/\">Envince</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/estore/\">eStore</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/ample/\">Ample</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/spacious/\">Spacious</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/accelerate/\">Accelerate</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/radiate/\">Radiate</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/esteem/\">Esteem</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/himalayas/\">Himalayas</a></li>\r\n										<li><a href=\"https://themegrill.com/themes/colornews/\">ColorNews</a></li>\r\n									</ul>\";}i:11;a:1:{s:4:\"text\";s:71:\"Contains all features of free version and many new additional features.\";}}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '63', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1622693977', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'pcm_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'WPLANG', 'id_ID', 'yes'),
(99, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:18:{s:19:\"wp_inactive_widgets\";a:0:{}s:22:\"colormag_right_sidebar\";a:3:{i:0;s:41:\"colormag_featured_posts_vertical_widget-2\";i:1;s:6:\"text-7\";i:2;s:39:\"colormag_125x125_advertisement_widget-2\";}s:21:\"colormag_left_sidebar\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:23:\"colormag_header_sidebar\";a:0:{}s:31:\"colormag_front_page_slider_area\";a:1:{i:0;s:39:\"colormag_featured_posts_slider_widget-2\";}s:38:\"colormag_front_page_area_beside_slider\";a:1:{i:0;s:35:\"colormag_highlighted_posts_widget-2\";}s:39:\"colormag_front_page_content_top_section\";a:1:{i:0;s:32:\"colormag_featured_posts_widget-2\";}s:47:\"colormag_front_page_content_middle_left_section\";a:1:{i:0;s:41:\"colormag_featured_posts_vertical_widget-3\";}s:48:\"colormag_front_page_content_middle_right_section\";a:1:{i:0;s:41:\"colormag_featured_posts_vertical_widget-4\";}s:42:\"colormag_front_page_content_bottom_section\";a:1:{i:0;s:32:\"colormag_featured_posts_widget-3\";}s:29:\"colormag_contact_page_sidebar\";a:0:{}s:31:\"colormag_error_404_page_sidebar\";a:0:{}s:47:\"colormag_advertisement_above_the_footer_sidebar\";a:0:{}s:27:\"colormag_footer_sidebar_one\";a:1:{i:0;s:6:\"text-8\";}s:27:\"colormag_footer_sidebar_two\";a:1:{i:0;s:6:\"text-9\";}s:29:\"colormag_footer_sidebar_three\";a:1:{i:0;s:7:\"text-10\";}s:28:\"colormag_footer_sidebar_four\";a:2:{i:0;s:39:\"colormag_300x250_advertisement_widget-2\";i:1;s:7:\"text-11\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:8:{i:1608124815;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1608135615;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1608178810;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1608178935;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1608178936;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1608178941;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1608438013;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1607409332;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(134, 'can_compress_scripts', '1', 'no'),
(147, 'finished_updating_comment_type', '1', 'yes'),
(157, '_transient_health-check-site-status-result', '{\"good\":\"11\",\"recommended\":\"9\",\"critical\":\"0\"}', 'yes'),
(172, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/id_ID/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"id_ID\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/id_ID/wordpress-5.6.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/id_ID/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"id_ID\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/id_ID/wordpress-5.6.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1608121963;s:15:\"version_checked\";s:5:\"5.5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(173, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1608121975;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.1.7\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(175, 'current_theme', 'ColorMag', 'yes'),
(176, 'theme_mods_colormag', 'a:21:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:62;s:22:\"colormag_breaking_news\";i:1;s:21:\"colormag_date_display\";i:1;s:30:\"colormag_header_logo_placement\";s:16:\"header_logo_only\";s:24:\"colormag_hide_blog_front\";i:1;s:28:\"colormag_search_icon_in_menu\";i:1;s:28:\"colormag_random_post_in_menu\";i:1;s:29:\"colormag_social_link_activate\";i:1;s:26:\"colormag_home_icon_display\";i:1;s:28:\"colormag_primary_sticky_menu\";i:1;s:31:\"colormag_related_posts_activate\";i:1;s:24:\"colormag_social_facebook\";s:1:\"#\";s:23:\"colormag_social_twitter\";s:1:\"#\";s:26:\"colormag_social_googleplus\";s:1:\"#\";s:25:\"colormag_social_instagram\";s:1:\"#\";s:25:\"colormag_social_pinterest\";s:1:\"#\";s:23:\"colormag_social_youtube\";s:1:\"#\";s:22:\"colormag_primary_color\";s:7:\"#1a8426\";}', 'yes'),
(177, 'theme_switched', '', 'yes'),
(178, 'colormag_upgrade_notice_start_time', '1607409333', 'yes'),
(179, 'colormag_theme_installed_time', '1607409334', 'yes'),
(180, 'widget_colormag_featured_posts_slider_widget', 'a:2:{s:12:\"_multiwidget\";i:1;i:2;a:1:{s:6:\"number\";i:2;}}', 'yes'),
(181, 'widget_colormag_highlighted_posts_widget', 'a:2:{s:12:\"_multiwidget\";i:1;i:2;a:1:{s:6:\"number\";i:4;}}', 'yes'),
(182, 'widget_colormag_featured_posts_widget', 'a:3:{s:12:\"_multiwidget\";i:1;i:2;a:2:{s:5:\"title\";s:6:\"HEALTH\";s:6:\"number\";i:5;}i:3;a:3:{s:5:\"title\";s:10:\"TECHNOLOGY\";s:4:\"text\";s:39:\"Check out technology changing the life.\";s:6:\"number\";i:4;}}', 'yes'),
(183, 'widget_colormag_featured_posts_vertical_widget', 'a:4:{s:12:\"_multiwidget\";i:1;i:2;a:2:{s:5:\"title\";s:4:\"NEWS\";s:6:\"number\";i:2;}i:3;a:2:{s:5:\"title\";s:7:\"FASHION\";s:6:\"number\";i:4;}i:4;a:2:{s:5:\"title\";s:6:\"SPORTS\";s:6:\"number\";i:4;}}', 'yes'),
(184, 'widget_colormag_728x90_advertisement_widget', 'a:2:{s:12:\"_multiwidget\";i:1;i:2;a:2:{s:17:\"728x90_image_link\";s:41:\"https://demo.themegrill.com/colormag-pro/\";s:16:\"728x90_image_url\";s:65:\"http://localhost/pcm4/wp-content/themes/colormag/img/ad-large.jpg\";}}', 'yes'),
(185, 'widget_colormag_300x250_advertisement_widget', 'a:2:{s:12:\"_multiwidget\";i:1;i:2;a:3:{s:5:\"title\";s:12:\"ColorMag Pro\";s:18:\"300x250_image_link\";s:41:\"https://demo.themegrill.com/colormag-pro/\";s:17:\"300x250_image_url\";s:66:\"http://localhost/pcm4/wp-content/themes/colormag/img/ad-medium.jpg\";}}', 'yes'),
(186, 'widget_colormag_125x125_advertisement_widget', 'a:2:{s:12:\"_multiwidget\";i:1;i:2;a:9:{s:5:\"title\";s:15:\"TG: 125x125 Ads\";s:20:\"125x125_image_link_1\";s:23:\"https://themegrill.com/\";s:19:\"125x125_image_url_1\";s:65:\"http://localhost/pcm4/wp-content/themes/colormag/img/ad-small.jpg\";s:20:\"125x125_image_link_2\";s:23:\"https://themegrill.com/\";s:19:\"125x125_image_url_2\";s:65:\"http://localhost/pcm4/wp-content/themes/colormag/img/ad-small.jpg\";s:20:\"125x125_image_link_3\";s:23:\"https://themegrill.com/\";s:19:\"125x125_image_url_3\";s:65:\"http://localhost/pcm4/wp-content/themes/colormag/img/ad-small.jpg\";s:20:\"125x125_image_link_4\";s:23:\"https://themegrill.com/\";s:19:\"125x125_image_url_4\";s:65:\"http://localhost/pcm4/wp-content/themes/colormag/img/ad-small.jpg\";}}', 'yes'),
(195, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(198, 'category_children', 'a:0:{}', 'yes'),
(204, '_site_transient_timeout_php_check_9dfe9c1407d8720f2aa82fbeb25ecdd3', '1608527633', 'no'),
(205, '_site_transient_php_check_9dfe9c1407d8720f2aa82fbeb25ecdd3', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(207, '_site_transient_timeout_browser_2d6330f380f44ac20f3a02eed0958f66', '1608528630', 'no'),
(208, '_site_transient_browser_2d6330f380f44ac20f3a02eed0958f66', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"87.0.4280.88\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(223, '_site_transient_timeout_theme_roots', '1608123771', 'no'),
(224, '_site_transient_theme_roots', 'a:4:{s:8:\"colormag\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(225, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1608121975;s:7:\"checked\";a:4:{s:8:\"colormag\";s:5:\"2.0.3\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:4:{s:8:\"colormag\";a:6:{s:5:\"theme\";s:8:\"colormag\";s:11:\"new_version\";s:5:\"2.0.4\";s:3:\"url\";s:38:\"https://wordpress.org/themes/colormag/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/theme/colormag.2.0.4.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.8.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.6.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `pcm_postmeta`
--

CREATE TABLE `pcm_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pcm_postmeta`
--

INSERT INTO `pcm_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 3, '_wp_page_template', 'default'),
(56, 22, '_menu_item_type', 'custom'),
(57, 22, '_menu_item_menu_item_parent', '0'),
(58, 22, '_menu_item_object_id', '22'),
(59, 22, '_menu_item_object', 'custom'),
(60, 22, '_menu_item_target', ''),
(61, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 22, '_menu_item_xfn', ''),
(63, 22, '_menu_item_url', 'http://localhost/pcm4/'),
(74, 24, '_wp_attached_file', '2020/12/colormag-logo-1.png'),
(75, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:265;s:6:\"height\";i:90;s:4:\"file\";s:27:\"2020/12/colormag-logo-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"colormag-logo-1-150x90.png\";s:5:\"width\";i:150;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:26:\"colormag-logo-1-130x90.png\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(76, 24, '_starter_content_theme', 'colormag'),
(78, 25, '_wp_attached_file', '2020/12/fireman-1.jpg'),
(79, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:445;s:4:\"file\";s:21:\"2020/12/fireman-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"fireman-1-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"fireman-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"fireman-1-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:21:\"fireman-1-392x272.jpg\";s:5:\"width\";i:392;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:21:\"fireman-1-390x205.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:20:\"fireman-1-130x90.jpg\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(80, 25, '_starter_content_theme', 'colormag'),
(82, 26, '_wp_attached_file', '2020/12/coffee-1.jpg'),
(83, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:445;s:4:\"file\";s:20:\"2020/12/coffee-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"coffee-1-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"coffee-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"coffee-1-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:20:\"coffee-1-392x272.jpg\";s:5:\"width\";i:392;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:20:\"coffee-1-390x205.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:19:\"coffee-1-130x90.jpg\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(84, 26, '_starter_content_theme', 'colormag'),
(86, 27, '_wp_attached_file', '2020/12/yummy-1.jpg'),
(87, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:445;s:4:\"file\";s:19:\"2020/12/yummy-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"yummy-1-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"yummy-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"yummy-1-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:19:\"yummy-1-392x272.jpg\";s:5:\"width\";i:392;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:19:\"yummy-1-390x205.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:18:\"yummy-1-130x90.jpg\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(88, 27, '_starter_content_theme', 'colormag'),
(90, 28, '_wp_attached_file', '2020/12/relay-race-1.jpg'),
(91, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:445;s:4:\"file\";s:24:\"2020/12/relay-race-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"relay-race-1-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"relay-race-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"relay-race-1-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:24:\"relay-race-1-392x272.jpg\";s:5:\"width\";i:392;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:24:\"relay-race-1-390x205.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:23:\"relay-race-1-130x90.jpg\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 28, '_starter_content_theme', 'colormag'),
(94, 29, '_wp_attached_file', '2020/12/sea-1.jpg'),
(95, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:445;s:4:\"file\";s:17:\"2020/12/sea-1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"sea-1-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"sea-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"sea-1-768x427.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:17:\"sea-1-392x272.jpg\";s:5:\"width\";i:392;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:17:\"sea-1-390x205.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:16:\"sea-1-130x90.jpg\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(96, 29, '_starter_content_theme', 'colormag'),
(98, 30, '_wp_attached_file', '2020/12/ad-medium-1.jpg'),
(99, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:250;s:4:\"file\";s:23:\"2020/12/ad-medium-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"ad-medium-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:23:\"ad-medium-1-300x205.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:22:\"ad-medium-1-130x90.jpg\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(100, 30, '_starter_content_theme', 'colormag'),
(102, 31, '_wp_attached_file', '2020/12/ad-large-1.jpg'),
(103, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:728;s:6:\"height\";i:90;s:4:\"file\";s:22:\"2020/12/ad-large-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"ad-large-1-300x37.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:37;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"ad-large-1-150x90.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:21:\"ad-large-1-392x90.jpg\";s:5:\"width\";i:392;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:21:\"ad-large-1-390x90.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:21:\"ad-large-1-130x90.jpg\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(104, 31, '_starter_content_theme', 'colormag'),
(107, 32, '_customize_changeset_uuid', '90538fa5-9d28-4df6-90fc-45620c53bc52'),
(108, 33, '_wp_page_template', 'page-templates/contact.php'),
(110, 33, '_customize_changeset_uuid', '90538fa5-9d28-4df6-90fc-45620c53bc52'),
(111, 34, '_thumbnail_id', '26'),
(113, 34, '_customize_changeset_uuid', '90538fa5-9d28-4df6-90fc-45620c53bc52'),
(114, 35, '_thumbnail_id', '27'),
(116, 35, '_customize_changeset_uuid', '90538fa5-9d28-4df6-90fc-45620c53bc52'),
(117, 36, '_thumbnail_id', '28'),
(119, 36, '_customize_changeset_uuid', '90538fa5-9d28-4df6-90fc-45620c53bc52'),
(120, 37, '_thumbnail_id', '29'),
(122, 37, '_customize_changeset_uuid', '90538fa5-9d28-4df6-90fc-45620c53bc52'),
(123, 38, '_thumbnail_id', '25'),
(125, 38, '_customize_changeset_uuid', '90538fa5-9d28-4df6-90fc-45620c53bc52'),
(136, 47, '_menu_item_type', 'custom'),
(137, 47, '_menu_item_menu_item_parent', '0'),
(138, 47, '_menu_item_object_id', '47'),
(139, 47, '_menu_item_object', 'custom'),
(140, 47, '_menu_item_target', ''),
(141, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(142, 47, '_menu_item_xfn', ''),
(143, 47, '_menu_item_url', 'https://downloads.wordpress.org/theme/colormag.zip'),
(144, 48, '_menu_item_type', 'custom'),
(145, 48, '_menu_item_menu_item_parent', '0'),
(146, 48, '_menu_item_object_id', '48'),
(147, 48, '_menu_item_object', 'custom'),
(148, 48, '_menu_item_target', ''),
(149, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(150, 48, '_menu_item_xfn', ''),
(151, 48, '_menu_item_url', 'https://themegrill.com/themes/colormag/'),
(152, 49, '_menu_item_type', 'custom'),
(153, 49, '_menu_item_menu_item_parent', '0'),
(154, 49, '_menu_item_object_id', '49'),
(155, 49, '_menu_item_object', 'custom'),
(156, 49, '_menu_item_target', ''),
(157, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(158, 49, '_menu_item_xfn', ''),
(159, 49, '_menu_item_url', 'https://themegrill.com/themes/colormag/'),
(160, 50, '_menu_item_type', 'post_type'),
(161, 50, '_menu_item_menu_item_parent', '0'),
(162, 50, '_menu_item_object_id', '32'),
(163, 50, '_menu_item_object', 'page'),
(164, 50, '_menu_item_target', ''),
(165, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(166, 50, '_menu_item_xfn', ''),
(167, 50, '_menu_item_url', ''),
(168, 51, '_menu_item_type', 'post_type'),
(169, 51, '_menu_item_menu_item_parent', '0'),
(170, 51, '_menu_item_object_id', '33'),
(171, 51, '_menu_item_object', 'page'),
(172, 51, '_menu_item_target', ''),
(173, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(174, 51, '_menu_item_xfn', ''),
(175, 51, '_menu_item_url', ''),
(176, 39, '_wp_trash_meta_status', 'publish'),
(177, 39, '_wp_trash_meta_time', '1607410746'),
(182, 55, '_wp_attached_file', '2020/12/cropped-logo.jpg'),
(183, 55, '_wp_attachment_context', 'custom-logo'),
(184, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:24:\"2020/12/cropped-logo.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-logo-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:24:\"cropped-logo-392x272.jpg\";s:5:\"width\";i:392;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:24:\"cropped-logo-390x205.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:23:\"cropped-logo-130x90.jpg\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"colormag-featured-image\";a:4:{s:4:\"file\";s:24:\"cropped-logo-600x445.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:445;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(185, 53, '_customize_restore_dismissed', '1'),
(186, 56, '_edit_lock', '1607924927:1'),
(187, 57, '_wp_attached_file', '2020/12/muhammadiyah-logo-40489-e1607924915530.png'),
(188, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:50:\"2020/12/muhammadiyah-logo-40489-e1607924915530.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"muhammadiyah-logo-40489-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"muhammadiyah-logo-40489-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:35:\"muhammadiyah-logo-40489-392x272.png\";s:5:\"width\";i:392;s:6:\"height\";i:272;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:35:\"muhammadiyah-logo-40489-390x205.png\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:34:\"muhammadiyah-logo-40489-130x90.png\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"colormag-featured-image\";a:4:{s:4:\"file\";s:35:\"muhammadiyah-logo-40489-755x445.png\";s:5:\"width\";i:755;s:6:\"height\";i:445;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(189, 58, '_wp_attached_file', '2020/12/cropped-muhammadiyah-logo-40489.png'),
(190, 58, '_wp_attachment_context', 'custom-logo'),
(191, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:755;s:6:\"height\";i:755;s:4:\"file\";s:43:\"2020/12/cropped-muhammadiyah-logo-40489.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"cropped-muhammadiyah-logo-40489-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"cropped-muhammadiyah-logo-40489-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:43:\"cropped-muhammadiyah-logo-40489-392x272.png\";s:5:\"width\";i:392;s:6:\"height\";i:272;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:43:\"cropped-muhammadiyah-logo-40489-390x205.png\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:42:\"cropped-muhammadiyah-logo-40489-130x90.png\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"colormag-featured-image\";a:4:{s:4:\"file\";s:43:\"cropped-muhammadiyah-logo-40489-755x445.png\";s:5:\"width\";i:755;s:6:\"height\";i:445;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(192, 57, '_edit_lock', '1607924800:1'),
(193, 57, '_edit_last', '1'),
(194, 57, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:755;s:6:\"height\";i:755;s:4:\"file\";s:27:\"muhammadiyah-logo-40489.png\";}}'),
(195, 59, '_wp_attached_file', '2020/12/cropped-muhammadiyah-logo-40489-e1607924915530.png'),
(196, 59, '_wp_attachment_context', 'custom-logo'),
(197, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:58:\"2020/12/cropped-muhammadiyah-logo-40489-e1607924915530.png\";s:5:\"sizes\";a:1:{s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:57:\"cropped-muhammadiyah-logo-40489-e1607924915530-130x90.png\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(198, 56, '_customize_restore_dismissed', '1'),
(199, 60, '_edit_lock', '1607925283:1'),
(200, 61, '_wp_attached_file', '2020/12/logo-muh-e1607925314395.png'),
(201, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:35:\"2020/12/logo-muh-e1607925314395.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"logo-muh-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"logo-muh-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:20:\"logo-muh-392x272.png\";s:5:\"width\";i:392;s:6:\"height\";i:272;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:20:\"logo-muh-390x205.png\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:19:\"logo-muh-130x90.png\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"colormag-featured-image\";a:4:{s:4:\"file\";s:20:\"logo-muh-600x445.png\";s:5:\"width\";i:600;s:6:\"height\";i:445;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(202, 61, '_edit_lock', '1607925177:1'),
(203, 61, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:12:\"logo-muh.png\";}}'),
(204, 61, '_edit_last', '1'),
(205, 60, '_wp_trash_meta_status', 'publish'),
(206, 60, '_wp_trash_meta_time', '1607925332'),
(207, 62, '_wp_attached_file', '2020/12/cropped-logo-muh-e1607925314395.png'),
(208, 62, '_wp_attachment_context', 'custom-logo'),
(209, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:43:\"2020/12/cropped-logo-muh-e1607925314395.png\";s:5:\"sizes\";a:1:{s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:42:\"cropped-logo-muh-e1607925314395-130x90.png\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(210, 63, '_wp_attached_file', '2020/12/cropped-muhammadiyah-logo-40489-e1607924915530-1.png'),
(211, 63, '_wp_attachment_context', 'site-icon'),
(212, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:60:\"2020/12/cropped-muhammadiyah-logo-40489-e1607924915530-1.png\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:60:\"cropped-muhammadiyah-logo-40489-e1607924915530-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:60:\"cropped-muhammadiyah-logo-40489-e1607924915530-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:60:\"cropped-muhammadiyah-logo-40489-e1607924915530-1-392x272.png\";s:5:\"width\";i:392;s:6:\"height\";i:272;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:60:\"cropped-muhammadiyah-logo-40489-e1607924915530-1-390x205.png\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:59:\"cropped-muhammadiyah-logo-40489-e1607924915530-1-130x90.png\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"colormag-featured-image\";a:4:{s:4:\"file\";s:60:\"cropped-muhammadiyah-logo-40489-e1607924915530-1-512x445.png\";s:5:\"width\";i:512;s:6:\"height\";i:445;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:60:\"cropped-muhammadiyah-logo-40489-e1607924915530-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:60:\"cropped-muhammadiyah-logo-40489-e1607924915530-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:60:\"cropped-muhammadiyah-logo-40489-e1607924915530-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:58:\"cropped-muhammadiyah-logo-40489-e1607924915530-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(213, 64, '_edit_lock', '1607925751:1'),
(214, 64, '_wp_trash_meta_status', 'publish'),
(215, 64, '_wp_trash_meta_time', '1607925756');

-- --------------------------------------------------------

--
-- Table structure for table `pcm_posts`
--

CREATE TABLE `pcm_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pcm_posts`
--

INSERT INTO `pcm_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-12-05 04:20:06', '2020-12-05 04:20:06', '<!-- wp:paragraph -->\n<p>Selamt datang di WordPress. Ini adalah pos pertama Anda. Sunting atau hapus, kemudian mulai menulis!</p>\n<!-- /wp:paragraph -->', 'Halo dunia!', '', 'publish', 'open', 'open', '', 'halo-dunia', '', '', '2020-12-05 04:20:06', '2020-12-05 04:20:06', '', 0, 'http://localhost/pcm4/?p=1', 0, 'post', '', 1),
(2, 1, '2020-12-05 04:20:06', '2020-12-05 04:20:06', '<!-- wp:paragraph -->\n<p>Ini adalah halaman contoh. Halaman ini berbeda dari artikel blog karena akan tetap di satu tempat dan akan muncul di navigasi situs Anda (di sebagian besar tema). Kebanyakan orang memulai dengan halaman \"Tentang\" yang bertujuan untuk mengenalkan mereka kepada pengunjung potensial situs. Biasanya berisi seperti ini:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hai yang disana! Saya seorang kurir bersepeda di siang hari, di malam hari bermimpi menjadi seorang aktor, dan ini adalah situs web saya. Saya tinggal di Los Angeles, punya anjing besar bernama Jack, dan saya suka pi&#241;a minuman Colada. (Dan terjebak dalam hujan.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...atau seperti ini:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Perusahaan Doohickey XYZ didirikan pada tahun 1971, dan telah menyediakan doohickey berkualitas untuk masyarakat umum sejak saat itu. Terletak di Kota Gotham, XYZ mempekerjakan lebih dari 2.000 orang dan melakukan segala macam hal luar biasa untuk komunitas Gotham.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Sebagai pengguna baru WordPress, Anda harus membuka <a href=\"http://localhost/pcm4/wp-admin/\">dasbor Anda</a> untuk menghapus laman ini dan membuat laman-laman baru untuk konten Anda. Have fun!</p>\n<!-- /wp:paragraph -->', 'Laman Contoh', '', 'publish', 'closed', 'open', '', 'laman-contoh', '', '', '2020-12-05 04:20:06', '2020-12-05 04:20:06', '', 0, 'http://localhost/pcm4/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-12-05 04:20:06', '2020-12-05 04:20:06', '<!-- wp:heading --><h2>Siapa kami</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Alamat situs web kami adalah: http://localhost/pcm4.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Data pribadi apa yang kami kumpulkan dan mengapa kami mengumpulkannya</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Komentar</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Saat pengunjung meninggalkan komentar pada situs, kita mengumpulkan data yang ditampilkan pada form komentar, alamat IP pengunjung dan user agent browser untuk membantu pendeteksian spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>String anonim yang dibuat dari alamat email Anda (juga disebut hash) dapat diberikan ke layanan Gravatar untuk melihat apakah Anda menggunakannya. Kebijakan privasi layanan Gravatar tersedia di sini: https://automattic.com/privacy/. Setelah persetujuan atas komentar Anda, gambar profil Anda dapat dilihat oleh publik dalam konteks komentar Anda.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Jika Anda mengunggah gambar ke situs web, Anda harus menghindari mengunggah gambar dengan data lokasi tertanam (GPS EXIF) yang disertakan. Pengunjung ke situs web dapat mengunduh dan mengekstrak data lokasi apa pun dari gambar di situs web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulir Kontak</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Jika Anda meninggalkan komentar di situs kami, Anda dapat memilih untuk menyimpan nama, alamat email, dan situs web Anda dalam cookie. Ini untuk kenyamanan Anda sehingga Anda tidak perlu mengisi detail Anda lagi ketika Anda meninggalkan komentar lain. Cookie ini akan bertahan selama satu tahun.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Jika Anda mengunjungi halaman login kami, kami akan memasang cookie sementara untuk memastikan apakah browser Anda menerima cookie. Cookie ini tidak mengandung data pribadi dan dibuang ketika Anda menutup browser Anda.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Saat Anda log masuk, kami akan menyiapkan beberapa cookie untuk menyimpan informasi log masuk Anda dan tampilan yang Anda pilih. Cookie log masuk berlaku selama dua hari, dan cookie pengaturan tampilan berlaku selama satu tahun. Jika Anda memilih &quot;Ingatkan Saya&quot;, log masuk anda akan bertahan selama dua minggu. Jika Anda log keluar dari akun, cookie log masuk akan dihapus.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Jika Anda menyunting atau menerbitkan artikel, cookie tambahan akan disimpan di browser Anda. Cookie ini tidak menyertakan data pribadi dan hanya menunjukkan ID posting dari artikel yang baru saja Anda sunting. Kadaluwarsa setelah 1 hari.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Konten yang disematkan dari situs web lain</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Artikel-artikel di dalam situs ini dapat menyertakan konten terembed (seperti video, gambar, artikel, dll). Konten terembed dari situs web lain akan berlaku sama dengan pengunjung yang mengunjungi situs web lain.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Situs-situs web ini dapat mengumpulkan data tentang Anda, menggunakan cookies, menanamkan pelacak dari pihak ketiga, dan memonitor interaksi Anda dengan muatan tertanam, termasuk menggunakannya untuk melacak interaksi Anda jika Anda memiliki sebuah akun dan masuk ke dalam situs web tersebut.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analitik</h3><!-- /wp:heading --><!-- wp:heading --><h2>Dengan siapa kami membagi data Anda</h2><!-- /wp:heading --><!-- wp:heading --><h2>Berapa lama kami menyimpan data Anda</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Jika Anda meninggalkan komentar, komentar dan metadatanya dipertahankan tanpa batas. Ini agar kami dapat mengenali dan menyetujui komentar tindak lanjut secara otomatis dan tidak menahannya dalam antrean moderasi.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Untuk pengguna yang mendaftar pada website kami (jika ada), kami juga menyimpan informasi pribadi yang mereka berikan dalam profil pengguna mereka. Semua pengguna dapat melihat, mengedit, atau menghapus informasi pribadi mereka kapan saja (kecuali mereka tidak dapat mengubah nama pengguna mereka). Administrator situs juga dapat melihat dan mengedit informasi tersebut.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Hak apa yang Anda miliki atas data ANda</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Jika anda mempunyai akun di situs ini, atau telah meninggalkan komentar, anda dapat meminta untuk mendapat data personal dalam file export dari kami, termasuk data yang anda berikan kepada kami. Anda juga dapat meminta kami menghapus data personal mengenai anda. Ini tidak termasuk data yang wajib kami simpan untuk keperluan administratif, hukum, atau keamanan.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ke mana kami kirim data Anda</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Komentar pengunjung dapat diperiksa melalui layanan deteksi spam otomatis.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informasi kontak Anda</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informasi tambahan</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Bagaimana kami melindungi data Anda</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Apa prosedur kebocoran data yang kami miliki</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Pihak ketiga mana saja data yang kami terima berasal</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Apa pengambilan keputusan otomatis dan/atau profil yang kami lakukan dengan data pengguna</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Persyaratan pengungkapan regulasi industri</h3><!-- /wp:heading -->', 'Kebijakan Privasi', '', 'draft', 'closed', 'open', '', 'kebijakan-privasi', '', '', '2020-12-05 04:20:06', '2020-12-05 04:20:06', '', 0, 'http://localhost/pcm4/?page_id=3', 0, 'page', '', 0),
(22, 1, '2020-12-08 06:38:47', '2020-12-08 06:38:47', '', 'Beranda', '', 'publish', 'closed', 'closed', '', 'beranda', '', '', '2020-12-08 06:40:26', '2020-12-08 06:40:26', '', 0, 'http://localhost/pcm4/?p=22', 1, 'nav_menu_item', '', 0),
(24, 1, '2020-12-08 06:58:18', '2020-12-08 06:58:18', '', 'ColorMag Logo', '', 'inherit', 'open', 'closed', '', 'colormag-logo', '', '', '2020-12-08 06:58:18', '2020-12-08 06:58:18', '', 0, 'http://localhost/pcm4/wp-content/uploads/2020/12/colormag-logo-1.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2020-12-08 06:58:19', '2020-12-08 06:58:19', '', 'Featured image fireman', '', 'inherit', 'open', 'closed', '', 'featured-image-fireman', '', '', '2020-12-08 06:58:19', '2020-12-08 06:58:19', '', 0, 'http://localhost/pcm4/wp-content/uploads/2020/12/fireman-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2020-12-08 06:58:19', '2020-12-08 06:58:19', '', 'Featured image coffee', '', 'inherit', 'open', 'closed', '', 'featured-image-coffee', '', '', '2020-12-08 06:58:19', '2020-12-08 06:58:19', '', 0, 'http://localhost/pcm4/wp-content/uploads/2020/12/coffee-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2020-12-08 06:58:19', '2020-12-08 06:58:19', '', 'Featured image yummy', '', 'inherit', 'open', 'closed', '', 'featured-image-yummy', '', '', '2020-12-08 06:58:19', '2020-12-08 06:58:19', '', 0, 'http://localhost/pcm4/wp-content/uploads/2020/12/yummy-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2020-12-08 06:58:20', '2020-12-08 06:58:20', '', 'Featured image relay race', '', 'inherit', 'open', 'closed', '', 'featured-image-relay-race', '', '', '2020-12-08 06:58:20', '2020-12-08 06:58:20', '', 0, 'http://localhost/pcm4/wp-content/uploads/2020/12/relay-race-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2020-12-08 06:58:21', '2020-12-08 06:58:21', '', 'Featured image paradise for holiday', '', 'inherit', 'open', 'closed', '', 'featured-image-paradise-for-holiday', '', '', '2020-12-08 06:58:21', '2020-12-08 06:58:21', '', 0, 'http://localhost/pcm4/wp-content/uploads/2020/12/sea-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2020-12-08 06:58:21', '2020-12-08 06:58:21', '', 'Featured image ad medium', '', 'inherit', 'open', 'closed', '', 'featured-image-ad-medium', '', '', '2020-12-08 06:58:21', '2020-12-08 06:58:21', '', 0, 'http://localhost/pcm4/wp-content/uploads/2020/12/ad-medium-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2020-12-08 06:58:21', '2020-12-08 06:58:21', '', 'Featured image ad large', '', 'inherit', 'open', 'closed', '', 'featured-image-ad-large', '', '', '2020-12-08 06:58:21', '2020-12-08 06:58:21', '', 0, 'http://localhost/pcm4/wp-content/uploads/2020/12/ad-large-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2020-12-08 06:58:22', '2020-12-08 06:58:22', 'ThemeGrill layout content', 'Layout', '', 'publish', 'closed', 'closed', '', 'layout', '', '', '2020-12-08 06:58:22', '2020-12-08 06:58:22', '', 0, 'http://localhost/pcm4/?page_id=32', 0, 'page', '', 0),
(33, 1, '2020-12-08 06:58:23', '2020-12-08 06:58:23', '<!-- wp:paragraph -->\n<p>Ini laman dengan informasi kontak dasar, seperti alamat dan nomor telepon. Anda juga bisa menggunakan plugin untuk menambahkan formulir kontak.</p>\n<!-- /wp:paragraph -->', 'Kontak', '', 'publish', 'closed', 'closed', '', 'kontak', '', '', '2020-12-08 06:58:23', '2020-12-08 06:58:23', '', 0, 'http://localhost/pcm4/?page_id=33', 0, 'page', '', 0),
(34, 1, '2020-12-08 06:58:23', '2020-12-08 06:58:23', 'Vivamus vestibulum ut magna vitae facilisis. Maecenas laoreet lobortis tristique. Aenean accumsan malesuada convallis. Suspendisse egestas luctus nisl, sit amet', 'Coffee is health food: Myth or fact?', '', 'publish', 'open', 'open', '', 'coffee-is-health-food-myth-or-fact', '', '', '2020-12-08 06:58:23', '2020-12-08 06:58:23', '', 0, 'http://localhost/pcm4/?p=34', 0, 'post', '', 0),
(35, 1, '2020-12-08 06:58:26', '2020-12-08 06:58:26', 'Fusce non nunc mi. Integer placerat nulla id quam varius dapibus. Nulla sit amet tellus et purus lobortis efficitur. Vivamus tempus posuere ipsum in suscipit. Quisque pulvinar fringilla cursus. Morbi malesuada laoreet dui, vitae consequat arcu vehicula vel. Fusce vel turpis non ante mollis bibendum a ac risus. Morbi ornare ipsum sit amet enim rhoncus, sed eleifend felis tristique. Mauris sed sollicitudin libero. In nec lacus quis erat rhoncus molestie.', 'Get more nutrition in every bite', '', 'publish', 'open', 'open', '', 'get-more-nutrition-in-every-bite', '', '', '2020-12-08 06:58:26', '2020-12-08 06:58:26', '', 0, 'http://localhost/pcm4/?p=35', 0, 'post', '', 0),
(36, 1, '2020-12-08 06:58:30', '2020-12-08 06:58:30', 'The young team of Franziska Hildebrand, Franziska Preuss, Vanessa Hinz and Dahlmeier clocked 1 hour, 11 minutes, 54.6 seconds to beat France by just over 1 minute. Italy took bronze, 1:06.1 behind. Germany missed six targets overall, avoiding any laps around the penalty loop. Maria Dorin Habert of France, who has two individual gold medals at these worlds, passed Russia and France on the last leg and to take her team from fourth to second.', 'Womens Relay Competition', '', 'publish', 'open', 'open', '', 'womens-relay-competition', '', '', '2020-12-08 06:58:30', '2020-12-08 06:58:30', '', 0, 'http://localhost/pcm4/?p=36', 0, 'post', '', 0),
(37, 1, '2020-12-08 06:58:32', '2020-12-08 06:58:32', 'Chocolate bar marzipan sweet marzipan. Danish tart bear claw donut cake bonbon biscuit powder croissant. Liquorice cake cookie. Dessert cotton candy macaroon gummies sweet gingerbread sugar plum. Biscuit tart cake. Candy jelly ice cream halvah jelly-o jelly beans brownie pastry sweet. Candy sweet roll dessert. Lemon drops jelly-o fruitcake topping. Souffle jelly beans bonbon.', 'A Paradise for Holiday', '', 'publish', 'open', 'open', '', 'a-paradise-for-holiday', '', '', '2020-12-08 06:58:32', '2020-12-08 06:58:32', '', 0, 'http://localhost/pcm4/?p=37', 0, 'post', '', 0),
(38, 1, '2020-12-08 06:58:35', '2020-12-08 06:58:35', 'Nunc consectetur ipsum nisi, ut pellentesque felis tempus vitae. Integer eget lacinia nunc. Vestibulum consectetur convallis augue id egestas. Nullam rhoncus, arcu in tincidunt ultricies, velit diam imperdiet lacus, sed faucibus mi massa vel nunc. In ac viverra augue, a luctus nisl. Donec interdum enim tempus, aliquet metus maximus, euismod quam. Sed pretium finibus rhoncus. Phasellus libero diam, rutrum non ipsum ut, ultricies sodales sapien. Duis viverra purus lorem.', 'Destruction in Montania', '', 'publish', 'open', 'open', '', 'destruction-in-montania', '', '', '2020-12-08 06:58:35', '2020-12-08 06:58:35', '', 0, 'http://localhost/pcm4/?p=38', 0, 'post', '', 0),
(39, 1, '2020-12-08 06:58:11', '2020-12-08 06:58:11', '{\n    \"widget_colormag_728x90_advertisement_widget[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjE3OiI3Mjh4OTBfaW1hZ2VfbGluayI7czo0MToiaHR0cHM6Ly9kZW1vLnRoZW1lZ3JpbGwuY29tL2NvbG9ybWFnLXByby8iO3M6MTY6IjcyOHg5MF9pbWFnZV91cmwiO3M6NjU6Imh0dHA6Ly9sb2NhbGhvc3QvcGNtNC93cC1jb250ZW50L3RoZW1lcy9jb2xvcm1hZy9pbWcvYWQtbGFyZ2UuanBnIjt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"259ae044358d2395f5bb2dae490f5720\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"sidebars_widgets[colormag_header_sidebar]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"colormag_728x90_advertisement_widget-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"widget_colormag_featured_posts_slider_widget[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjY6Im51bWJlciI7aToyO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"e7c97aa92c152c2cdd19201f6b4f7a0d\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"sidebars_widgets[colormag_front_page_slider_area]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"colormag_featured_posts_slider_widget-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"widget_colormag_highlighted_posts_widget[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjY6Im51bWJlciI7aTo0O30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"a946b4e59badc4f4e16736df0b736815\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"sidebars_widgets[colormag_front_page_area_beside_slider]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"colormag_highlighted_posts_widget-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"widget_colormag_featured_posts_vertical_widget[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjQ6Ik5FV1MiO3M6NjoibnVtYmVyIjtpOjI7fQ==\",\n            \"title\": \"NEWS\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"ffbdb8d3706a18a224b8627848ea1d34\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"widget_text[7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjE0OiJQcmVtaXVtIFRoZW1lcyI7czo0OiJ0ZXh0IjtzOjc1NToiPHVsPg0KCQkJCQkJCQkJCTxsaT48YSBocmVmPSJodHRwczovL3RoZW1lZ3JpbGwuY29tL3RoZW1lcy9zcGFjaW91cy1wcm8vIj5TcGFjaW91cyBQcm88L2E+PC9saT4NCgkJCQkJCQkJCQk8bGk+PGEgaHJlZj0iaHR0cHM6Ly90aGVtZWdyaWxsLmNvbS90aGVtZXMvZm9vZGh1bnQtcHJvLyI+Rm9vZEh1bnQgUHJvPC9hPjwvbGk+DQoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vdGhlbWVzL2NvbG9ybmV3cy1wcm8vIj5Db2xvck5ld3MgUHJvPC9hPjwvbGk+DQoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vdGhlbWVzL2FjY2VsZXJhdGUtcHJvLyI+QWNjZWxlcmF0ZSBQcm88L2E+PC9saT4NCgkJCQkJCQkJCQk8bGk+PGEgaHJlZj0iaHR0cHM6Ly90aGVtZWdyaWxsLmNvbS90aGVtZXMvZXN0ZWVtLXByby8iPkVzdGVlbSBQcm88L2E+PC9saT4NCgkJCQkJCQkJCQk8bGk+PGEgaHJlZj0iaHR0cHM6Ly9odHRwOi8vdGhlbWVncmlsbC5jb20vdGhlbWVzL3JhZGlhdGUtcHJvLyI+UmFkaWF0ZSBQcm88L2E+PC9saT4NCgkJCQkJCQkJCQk8bGk+PGEgaHJlZj0iaHR0cHM6Ly90aGVtZWdyaWxsLmNvbS90aGVtZXMvZml0Y2x1Yi1wcm8vIj5GaXRjbHViIFBybzwvYT48L2xpPg0KCQkJCQkJCQkJCTxsaT48YSBocmVmPSJodHRwczovL3RoZW1lZ3JpbGwuY29tL3RoZW1lcy9oaW1hbGF5YXMtcHJvLyI+SGltYWxheWFzIFBybzwvYT48L2xpPg0KCQkJCQkJCQkJPC91bD4iO30=\",\n            \"title\": \"Premium Themes\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"e09a8cd666d4dc2eee4b9b70859cfe5b\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"widget_colormag_125x125_advertisement_widget[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo5OntzOjU6InRpdGxlIjtzOjE1OiJURzogMTI1eDEyNSBBZHMiO3M6MjA6IjEyNXgxMjVfaW1hZ2VfbGlua18xIjtzOjIzOiJodHRwczovL3RoZW1lZ3JpbGwuY29tLyI7czoxOToiMTI1eDEyNV9pbWFnZV91cmxfMSI7czo2NToiaHR0cDovL2xvY2FsaG9zdC9wY200L3dwLWNvbnRlbnQvdGhlbWVzL2NvbG9ybWFnL2ltZy9hZC1zbWFsbC5qcGciO3M6MjA6IjEyNXgxMjVfaW1hZ2VfbGlua18yIjtzOjIzOiJodHRwczovL3RoZW1lZ3JpbGwuY29tLyI7czoxOToiMTI1eDEyNV9pbWFnZV91cmxfMiI7czo2NToiaHR0cDovL2xvY2FsaG9zdC9wY200L3dwLWNvbnRlbnQvdGhlbWVzL2NvbG9ybWFnL2ltZy9hZC1zbWFsbC5qcGciO3M6MjA6IjEyNXgxMjVfaW1hZ2VfbGlua18zIjtzOjIzOiJodHRwczovL3RoZW1lZ3JpbGwuY29tLyI7czoxOToiMTI1eDEyNV9pbWFnZV91cmxfMyI7czo2NToiaHR0cDovL2xvY2FsaG9zdC9wY200L3dwLWNvbnRlbnQvdGhlbWVzL2NvbG9ybWFnL2ltZy9hZC1zbWFsbC5qcGciO3M6MjA6IjEyNXgxMjVfaW1hZ2VfbGlua180IjtzOjIzOiJodHRwczovL3RoZW1lZ3JpbGwuY29tLyI7czoxOToiMTI1eDEyNV9pbWFnZV91cmxfNCI7czo2NToiaHR0cDovL2xvY2FsaG9zdC9wY200L3dwLWNvbnRlbnQvdGhlbWVzL2NvbG9ybWFnL2ltZy9hZC1zbWFsbC5qcGciO30=\",\n            \"title\": \"TG: 125x125 Ads\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"138482473e0c112dee8ad19ce0991a5d\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"sidebars_widgets[colormag_right_sidebar]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"colormag_featured_posts_vertical_widget-2\",\n            \"text-7\",\n            \"colormag_125x125_advertisement_widget-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"widget_colormag_featured_posts_widget[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjY6IkhFQUxUSCI7czo2OiJudW1iZXIiO2k6NTt9\",\n            \"title\": \"HEALTH\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"f99624195b595b5fc3b7d7a43b347628\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"sidebars_widgets[colormag_front_page_content_top_section]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"colormag_featured_posts_widget-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"widget_colormag_featured_posts_vertical_widget[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjc6IkZBU0hJT04iO3M6NjoibnVtYmVyIjtpOjQ7fQ==\",\n            \"title\": \"FASHION\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"05624751bd2a04c36f9225f39cb6c101\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"sidebars_widgets[colormag_front_page_content_middle_left_section]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"colormag_featured_posts_vertical_widget-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"widget_colormag_featured_posts_vertical_widget[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjY6IlNQT1JUUyI7czo2OiJudW1iZXIiO2k6NDt9\",\n            \"title\": \"SPORTS\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"d3d846377e374d5a8c3a0cd81530e3a0\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"sidebars_widgets[colormag_front_page_content_middle_right_section]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"colormag_featured_posts_vertical_widget-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"widget_colormag_featured_posts_widget[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjU6InRpdGxlIjtzOjEwOiJURUNITk9MT0dZIjtzOjQ6InRleHQiO3M6Mzk6IkNoZWNrIG91dCB0ZWNobm9sb2d5IGNoYW5naW5nIHRoZSBsaWZlLiI7czo2OiJudW1iZXIiO2k6NDt9\",\n            \"title\": \"TECHNOLOGY\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"7d1d6d7e5d4c36ebf3d8164476aa8779\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"sidebars_widgets[colormag_front_page_content_bottom_section]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"colormag_featured_posts_widget-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"widget_text[8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjg6IkFib3V0IFVzIjtzOjQ6InRleHQiO3M6MzQ2OiI8YSB0aXRsZT0ibG9nbyIgaHJlZj0iaHR0cDovL2xvY2FsaG9zdC9wY200Ij48aW1nIHNyYz0iaHR0cDovL2xvY2FsaG9zdC9wY200L3dwLWNvbnRlbnQvdGhlbWVzL2NvbG9ybWFnL2ltZy9jb2xvcm1hZy1sb2dvLnBuZyIgYWx0PSJMb2dvIiAvPjwvYT4gPGJyPiBXZSBsb3ZlIFdvcmRQcmVzcyBhbmQgd2UgYXJlIGhlcmUgdG8gcHJvdmlkZSB5b3Ugd2l0aCBwcm9mZXNzaW9uYWwgbG9va2luZyBXb3JkUHJlc3MgdGhlbWVzIHNvIHRoYXQgeW91IGNhbiB0YWtlIHlvdXIgd2Vic2l0ZSBvbmUgc3RlcCBhaGVhZC4gV2UgZm9jdXMgb24gc2ltcGxpY2l0eSwgZWxlZ2FudCBkZXNpZ24gYW5kIGNsZWFuIGNvZGUuIjt9\",\n            \"title\": \"About Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"69617381e1b15fe06b8b588e57fdbbec\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"sidebars_widgets[colormag_footer_sidebar_one]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"widget_text[9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjEyOiJVc2VmdWwgTGlua3MiO3M6NDoidGV4dCI7czo2NjM6Ijx1bD4NCgkJCQkJCQkJCQk8bGk+PGEgaHJlZj0iaHR0cHM6Ly90aGVtZWdyaWxsLmNvbS8iPlRoZW1lR3JpbGw8L2E+PC9saT4NCgkJCQkJCQkJCQk8bGk+PGEgaHJlZj0iaHR0cHM6Ly90aGVtZWdyaWxsLmNvbS9zdXBwb3J0LWZvcnVtLyI+U3VwcG9ydDwvYT48L2xpPg0KCQkJCQkJCQkJCTxsaT48YSBocmVmPSJodHRwczovL3RoZW1lZ3JpbGwuY29tL3RoZW1lLWluc3RydWN0aW9uL2NvbG9ybWFnLyI+RG9jdW1lbnRhdGlvbjwvYT48L2xpPg0KCQkJCQkJCQkJCTxsaT48YSBocmVmPSJodHRwczovL3RoZW1lZ3JpbGwuY29tL2ZyZXF1ZW50bHktYXNrZWQtcXVlc3Rpb25zLyI+RkFRPC9hPjwvbGk+DQoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vdGhlbWVzLyI+VGhlbWVzPC9hPjwvbGk+DQoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vcGx1Z2lucy8iPlBsdWdpbnM8L2E+PC9saT4NCgkJCQkJCQkJCQk8bGk+PGEgaHJlZj0iaHR0cHM6Ly90aGVtZWdyaWxsLmNvbS9ibG9nLyI+QmxvZzwvYT48L2xpPg0KCQkJCQkJCQkJCTxsaT48YSBocmVmPSJodHRwczovL3RoZW1lZ3JpbGwuY29tL3BsYW5zLXByaWNpbmcvIj5QbGFucyAmYW1wOyBQcmljaW5nPC9hPjwvbGk+DQoJCQkJCQkJCQk8L3VsPiI7fQ==\",\n            \"title\": \"Useful Links\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"afa984fa7bee66224c9de37f2db756bf\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"sidebars_widgets[colormag_footer_sidebar_two]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-9\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"widget_text[10]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjEyOiJPdGhlciBUaGVtZXMiO3M6NDoidGV4dCI7czo3NTc6Ijx1bD4NCgkJCQkJCQkJCQk8bGk+PGEgaHJlZj0iaHR0cHM6Ly90aGVtZWdyaWxsLmNvbS90aGVtZXMvZW52aW5jZS8iPkVudmluY2U8L2E+PC9saT4NCgkJCQkJCQkJCQk8bGk+PGEgaHJlZj0iaHR0cHM6Ly90aGVtZWdyaWxsLmNvbS90aGVtZXMvZXN0b3JlLyI+ZVN0b3JlPC9hPjwvbGk+DQoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vdGhlbWVzL2FtcGxlLyI+QW1wbGU8L2E+PC9saT4NCgkJCQkJCQkJCQk8bGk+PGEgaHJlZj0iaHR0cHM6Ly90aGVtZWdyaWxsLmNvbS90aGVtZXMvc3BhY2lvdXMvIj5TcGFjaW91czwvYT48L2xpPg0KCQkJCQkJCQkJCTxsaT48YSBocmVmPSJodHRwczovL3RoZW1lZ3JpbGwuY29tL3RoZW1lcy9hY2NlbGVyYXRlLyI+QWNjZWxlcmF0ZTwvYT48L2xpPg0KCQkJCQkJCQkJCTxsaT48YSBocmVmPSJodHRwczovL3RoZW1lZ3JpbGwuY29tL3RoZW1lcy9yYWRpYXRlLyI+UmFkaWF0ZTwvYT48L2xpPg0KCQkJCQkJCQkJCTxsaT48YSBocmVmPSJodHRwczovL3RoZW1lZ3JpbGwuY29tL3RoZW1lcy9lc3RlZW0vIj5Fc3RlZW08L2E+PC9saT4NCgkJCQkJCQkJCQk8bGk+PGEgaHJlZj0iaHR0cHM6Ly90aGVtZWdyaWxsLmNvbS90aGVtZXMvaGltYWxheWFzLyI+SGltYWxheWFzPC9hPjwvbGk+DQoJCQkJCQkJCQkJPGxpPjxhIGhyZWY9Imh0dHBzOi8vdGhlbWVncmlsbC5jb20vdGhlbWVzL2NvbG9ybmV3cy8iPkNvbG9yTmV3czwvYT48L2xpPg0KCQkJCQkJCQkJPC91bD4iO30=\",\n            \"title\": \"Other Themes\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"94f9cfcfa122573d1ac9551fb7955f6c\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"sidebars_widgets[colormag_footer_sidebar_three]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-10\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"widget_colormag_300x250_advertisement_widget[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjU6InRpdGxlIjtzOjEyOiJDb2xvck1hZyBQcm8iO3M6MTg6IjMwMHgyNTBfaW1hZ2VfbGluayI7czo0MToiaHR0cHM6Ly9kZW1vLnRoZW1lZ3JpbGwuY29tL2NvbG9ybWFnLXByby8iO3M6MTc6IjMwMHgyNTBfaW1hZ2VfdXJsIjtzOjY2OiJodHRwOi8vbG9jYWxob3N0L3BjbTQvd3AtY29udGVudC90aGVtZXMvY29sb3JtYWcvaW1nL2FkLW1lZGl1bS5qcGciO30=\",\n            \"title\": \"ColorMag Pro\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"84e83d47dcb4b28d34b25f3e5b5a9115\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"widget_text[11]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjQ6InRleHQiO3M6NzE6IkNvbnRhaW5zIGFsbCBmZWF0dXJlcyBvZiBmcmVlIHZlcnNpb24gYW5kIG1hbnkgbmV3IGFkZGl0aW9uYWwgZmVhdHVyZXMuIjt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"bc0420bf4d0c1ccfae1b4e188834758c\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"sidebars_widgets[colormag_footer_sidebar_four]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"colormag_300x250_advertisement_widget-2\",\n            \"text-11\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            24,\n            25,\n            26,\n            27,\n            28,\n            29,\n            30,\n            31,\n            32,\n            33,\n            34,\n            35,\n            36,\n            37,\n            38\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"Primary\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:58:11\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Download\",\n            \"url\": \"https://downloads.wordpress.org/theme/colormag.zip\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Tautan Tersuai\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:58:11\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Theme Info\",\n            \"url\": \"https://themegrill.com/themes/colormag/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Tautan Tersuai\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:58:11\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"View pro\",\n            \"url\": \"https://themegrill.com/themes/colormag/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Tautan Tersuai\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:58:11\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 32,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Layout\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Layout\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Laman\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:58:11\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 33,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"Kontak\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Kontak\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Laman\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:58:11\"\n    },\n    \"colormag::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"blogname\": {\n        \"starter_content\": true,\n        \"value\": \"ColorMag\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"blogdescription\": {\n        \"starter_content\": true,\n        \"value\": \"ColorMag Demo site\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"colormag::custom_logo\": {\n        \"starter_content\": true,\n        \"value\": 24,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"colormag::colormag_breaking_news\": {\n        \"starter_content\": true,\n        \"value\": 1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"colormag::colormag_date_display\": {\n        \"starter_content\": true,\n        \"value\": 1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"colormag::colormag_header_logo_placement\": {\n        \"starter_content\": true,\n        \"value\": \"header_logo_only\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"colormag::colormag_hide_blog_front\": {\n        \"starter_content\": true,\n        \"value\": 1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"colormag::colormag_search_icon_in_menu\": {\n        \"starter_content\": true,\n        \"value\": 1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"colormag::colormag_random_post_in_menu\": {\n        \"starter_content\": true,\n        \"value\": 1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"colormag::colormag_social_link_activate\": {\n        \"starter_content\": true,\n        \"value\": 1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"colormag::colormag_home_icon_display\": {\n        \"starter_content\": true,\n        \"value\": 1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"colormag::colormag_primary_sticky_menu\": {\n        \"starter_content\": true,\n        \"value\": 1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"colormag::colormag_related_posts_activate\": {\n        \"starter_content\": true,\n        \"value\": 1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"colormag::colormag_social_facebook\": {\n        \"starter_content\": true,\n        \"value\": \"#\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"colormag::colormag_social_twitter\": {\n        \"starter_content\": true,\n        \"value\": \"#\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"colormag::colormag_social_googleplus\": {\n        \"starter_content\": true,\n        \"value\": \"#\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"colormag::colormag_social_instagram\": {\n        \"starter_content\": true,\n        \"value\": \"#\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"colormag::colormag_social_pinterest\": {\n        \"starter_content\": true,\n        \"value\": \"#\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"colormag::colormag_social_youtube\": {\n        \"starter_content\": true,\n        \"value\": \"#\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:46:50\"\n    },\n    \"colormag::colormag_primary_color\": {\n        \"value\": \"#1a8426\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-08 06:58:11\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '90538fa5-9d28-4df6-90fc-45620c53bc52', '', '', '2020-12-08 06:58:11', '2020-12-08 06:58:11', '', 0, 'http://localhost/pcm4/?p=39', 0, 'customize_changeset', '', 0),
(40, 1, '2020-12-08 06:58:22', '2020-12-08 06:58:22', 'ThemeGrill layout content', 'Layout', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2020-12-08 06:58:22', '2020-12-08 06:58:22', '', 32, 'http://localhost/pcm4/index.php/2020/12/08/32-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2020-12-08 06:58:23', '2020-12-08 06:58:23', '<!-- wp:paragraph -->\n<p>Ini laman dengan informasi kontak dasar, seperti alamat dan nomor telepon. Anda juga bisa menggunakan plugin untuk menambahkan formulir kontak.</p>\n<!-- /wp:paragraph -->', 'Kontak', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-12-08 06:58:23', '2020-12-08 06:58:23', '', 33, 'http://localhost/pcm4/index.php/2020/12/08/33-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2020-12-08 06:58:23', '2020-12-08 06:58:23', 'Vivamus vestibulum ut magna vitae facilisis. Maecenas laoreet lobortis tristique. Aenean accumsan malesuada convallis. Suspendisse egestas luctus nisl, sit amet', 'Coffee is health food: Myth or fact?', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2020-12-08 06:58:23', '2020-12-08 06:58:23', '', 34, 'http://localhost/pcm4/index.php/2020/12/08/34-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2020-12-08 06:58:26', '2020-12-08 06:58:26', 'Fusce non nunc mi. Integer placerat nulla id quam varius dapibus. Nulla sit amet tellus et purus lobortis efficitur. Vivamus tempus posuere ipsum in suscipit. Quisque pulvinar fringilla cursus. Morbi malesuada laoreet dui, vitae consequat arcu vehicula vel. Fusce vel turpis non ante mollis bibendum a ac risus. Morbi ornare ipsum sit amet enim rhoncus, sed eleifend felis tristique. Mauris sed sollicitudin libero. In nec lacus quis erat rhoncus molestie.', 'Get more nutrition in every bite', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2020-12-08 06:58:26', '2020-12-08 06:58:26', '', 35, 'http://localhost/pcm4/index.php/2020/12/08/35-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2020-12-08 06:58:30', '2020-12-08 06:58:30', 'The young team of Franziska Hildebrand, Franziska Preuss, Vanessa Hinz and Dahlmeier clocked 1 hour, 11 minutes, 54.6 seconds to beat France by just over 1 minute. Italy took bronze, 1:06.1 behind. Germany missed six targets overall, avoiding any laps around the penalty loop. Maria Dorin Habert of France, who has two individual gold medals at these worlds, passed Russia and France on the last leg and to take her team from fourth to second.', 'Womens Relay Competition', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-12-08 06:58:30', '2020-12-08 06:58:30', '', 36, 'http://localhost/pcm4/index.php/2020/12/08/36-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2020-12-08 06:58:32', '2020-12-08 06:58:32', 'Chocolate bar marzipan sweet marzipan. Danish tart bear claw donut cake bonbon biscuit powder croissant. Liquorice cake cookie. Dessert cotton candy macaroon gummies sweet gingerbread sugar plum. Biscuit tart cake. Candy jelly ice cream halvah jelly-o jelly beans brownie pastry sweet. Candy sweet roll dessert. Lemon drops jelly-o fruitcake topping. Souffle jelly beans bonbon.', 'A Paradise for Holiday', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2020-12-08 06:58:32', '2020-12-08 06:58:32', '', 37, 'http://localhost/pcm4/index.php/2020/12/08/37-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2020-12-08 06:58:35', '2020-12-08 06:58:35', 'Nunc consectetur ipsum nisi, ut pellentesque felis tempus vitae. Integer eget lacinia nunc. Vestibulum consectetur convallis augue id egestas. Nullam rhoncus, arcu in tincidunt ultricies, velit diam imperdiet lacus, sed faucibus mi massa vel nunc. In ac viverra augue, a luctus nisl. Donec interdum enim tempus, aliquet metus maximus, euismod quam. Sed pretium finibus rhoncus. Phasellus libero diam, rutrum non ipsum ut, ultricies sodales sapien. Duis viverra purus lorem.', 'Destruction in Montania', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2020-12-08 06:58:35', '2020-12-08 06:58:35', '', 38, 'http://localhost/pcm4/index.php/2020/12/08/38-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2020-12-08 06:58:38', '2020-12-08 06:58:38', '', 'Download', '', 'publish', 'closed', 'closed', '', 'download', '', '', '2020-12-08 06:58:38', '2020-12-08 06:58:38', '', 0, 'http://localhost/pcm4/index.php/2020/12/08/download/', 0, 'nav_menu_item', '', 0),
(48, 1, '2020-12-08 06:58:41', '2020-12-08 06:58:41', '', 'Theme Info', '', 'publish', 'closed', 'closed', '', 'theme-info', '', '', '2020-12-08 06:58:41', '2020-12-08 06:58:41', '', 0, 'http://localhost/pcm4/index.php/2020/12/08/theme-info/', 1, 'nav_menu_item', '', 0),
(49, 1, '2020-12-08 06:58:45', '2020-12-08 06:58:45', '', 'View pro', '', 'publish', 'closed', 'closed', '', 'view-pro', '', '', '2020-12-08 06:58:45', '2020-12-08 06:58:45', '', 0, 'http://localhost/pcm4/index.php/2020/12/08/view-pro/', 2, 'nav_menu_item', '', 0),
(50, 1, '2020-12-08 06:58:49', '2020-12-08 06:58:49', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2020-12-08 06:58:49', '2020-12-08 06:58:49', '', 0, 'http://localhost/pcm4/index.php/2020/12/08/50/', 3, 'nav_menu_item', '', 0),
(51, 1, '2020-12-08 06:58:53', '2020-12-08 06:58:53', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2020-12-08 06:58:53', '2020-12-08 06:58:53', '', 0, 'http://localhost/pcm4/index.php/2020/12/08/51/', 4, 'nav_menu_item', '', 0),
(52, 1, '2020-12-14 05:30:32', '0000-00-00 00:00:00', '', 'Konsep Otomatis', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-12-14 05:30:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/pcm4/?p=52', 0, 'post', '', 0),
(53, 1, '2020-12-14 05:34:47', '0000-00-00 00:00:00', '{\n    \"colormag::colormag_hide_blog_front\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-14 05:34:24\"\n    },\n    \"blogname\": {\n        \"value\": \"Pimpinan Cabang Muhammadiyah Banjarmasin 4\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-14 05:34:47\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'b4cb2b0c-44df-40d7-aa06-00771dad5cea', '', '', '2020-12-14 05:34:47', '2020-12-14 05:34:47', '', 0, 'http://localhost/pcm4/?p=53', 0, 'customize_changeset', '', 0),
(55, 1, '2020-12-14 05:43:20', '2020-12-14 05:43:20', 'http://localhost/pcm4/wp-content/uploads/2020/12/cropped-logo.jpg', 'cropped-logo.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-logo-jpg', '', '', '2020-12-14 05:43:20', '2020-12-14 05:43:20', '', 0, 'http://localhost/pcm4/wp-content/uploads/2020/12/cropped-logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2020-12-14 05:46:34', '0000-00-00 00:00:00', '{\n    \"sidebars_widgets[colormag_header_sidebar]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-14 05:44:14\"\n    },\n    \"blogname\": {\n        \"value\": \"Pimpinan Cabang Muhammadiyah Banjarmasin 4\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-14 05:44:14\"\n    },\n    \"blogdescription\": {\n        \"value\": \"Pimpinan Cabang Muhammadiyah Banjarmasin 4\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-14 05:44:14\"\n    },\n    \"colormag::custom_logo\": {\n        \"value\": 58,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-14 05:46:34\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '8fdbb788-fdd1-4fdb-bb2e-ac193e32c5d8', '', '', '2020-12-14 05:46:34', '2020-12-14 05:46:34', '', 0, 'http://localhost/pcm4/?p=56', 0, 'customize_changeset', '', 0),
(57, 1, '2020-12-14 05:45:58', '2020-12-14 05:45:58', '', 'muhammadiyah-logo-40489', '', 'inherit', 'open', 'closed', '', 'muhammadiyah-logo-40489', '', '', '2020-12-14 05:48:41', '2020-12-14 05:48:41', '', 0, 'http://localhost/pcm4/wp-content/uploads/2020/12/muhammadiyah-logo-40489.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2020-12-14 05:46:13', '2020-12-14 05:46:13', 'http://localhost/pcm4/wp-content/uploads/2020/12/cropped-muhammadiyah-logo-40489.png', 'cropped-muhammadiyah-logo-40489.png', '', 'inherit', 'open', 'closed', '', 'cropped-muhammadiyah-logo-40489-png', '', '', '2020-12-14 05:46:13', '2020-12-14 05:46:13', '', 0, 'http://localhost/pcm4/wp-content/uploads/2020/12/cropped-muhammadiyah-logo-40489.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `pcm_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(59, 1, '2020-12-14 05:50:00', '2020-12-14 05:50:00', 'http://localhost/pcm4/wp-content/uploads/2020/12/cropped-muhammadiyah-logo-40489-e1607924915530.png', 'cropped-muhammadiyah-logo-40489-e1607924915530.png', '', 'inherit', 'open', 'closed', '', 'cropped-muhammadiyah-logo-40489-e1607924915530-png', '', '', '2020-12-14 05:50:00', '2020-12-14 05:50:00', '', 0, 'http://localhost/pcm4/wp-content/uploads/2020/12/cropped-muhammadiyah-logo-40489-e1607924915530.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2020-12-14 05:55:31', '2020-12-14 05:55:31', '{\n    \"sidebars_widgets[colormag_header_sidebar]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-14 05:50:25\"\n    },\n    \"colormag::custom_logo\": {\n        \"value\": 59,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-14 05:50:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ef15ff17-4dbf-4446-986d-476d9106d1eb', '', '', '2020-12-14 05:55:31', '2020-12-14 05:55:31', '', 0, 'http://localhost/pcm4/?p=60', 0, 'customize_changeset', '', 0),
(61, 1, '2020-12-14 05:54:59', '2020-12-14 05:54:59', '', 'logo-muh', '', 'inherit', 'open', 'closed', '', 'logo-muh', '', '', '2020-12-14 05:55:18', '2020-12-14 05:55:18', '', 0, 'http://localhost/pcm4/wp-content/uploads/2020/12/logo-muh.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2020-12-14 05:55:46', '2020-12-14 05:55:46', 'http://localhost/pcm4/wp-content/uploads/2020/12/cropped-logo-muh-e1607925314395.png', 'cropped-logo-muh-e1607925314395.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-muh-e1607925314395-png', '', '', '2020-12-14 05:55:46', '2020-12-14 05:55:46', '', 0, 'http://localhost/pcm4/wp-content/uploads/2020/12/cropped-logo-muh-e1607925314395.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2020-12-14 05:56:09', '2020-12-14 05:56:09', 'http://localhost/pcm4/wp-content/uploads/2020/12/cropped-muhammadiyah-logo-40489-e1607924915530-1.png', 'cropped-muhammadiyah-logo-40489-e1607924915530-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-muhammadiyah-logo-40489-e1607924915530-1-png', '', '', '2020-12-14 05:56:09', '2020-12-14 05:56:09', '', 0, 'http://localhost/pcm4/wp-content/uploads/2020/12/cropped-muhammadiyah-logo-40489-e1607924915530-1.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2020-12-14 06:02:35', '2020-12-14 06:02:35', '{\n    \"blogname\": {\n        \"value\": \"Pimpinan Cabang Muhammadiyah Banjarmasin 4\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-14 05:56:48\"\n    },\n    \"blogdescription\": {\n        \"value\": \"Pimpinan Cabang Muhammadiyah Banjarmasin 4\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-14 05:56:48\"\n    },\n    \"site_icon\": {\n        \"value\": 63,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-14 05:56:48\"\n    },\n    \"colormag::custom_logo\": {\n        \"value\": 62,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-14 05:56:48\"\n    },\n    \"colormag::colormag_header_logo_placement\": {\n        \"value\": \"header_logo_only\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-14 06:02:31\"\n    },\n    \"colormag::nav_menu_locations[primary]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-14 06:02:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '05fd4181-b142-4dcd-ab39-e1b4049a8349', '', '', '2020-12-14 06:02:35', '2020-12-14 06:02:35', '', 0, 'http://localhost/pcm4/?p=64', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pcm_termmeta`
--

CREATE TABLE `pcm_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pcm_terms`
--

CREATE TABLE `pcm_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pcm_terms`
--

INSERT INTO `pcm_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Tak Berkategori', 'tak-berkategori', 0),
(2, 'Menu', 'menu', 0),
(3, 'Primary', 'primary', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pcm_term_relationships`
--

CREATE TABLE `pcm_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pcm_term_relationships`
--

INSERT INTO `pcm_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(22, 2, 0),
(34, 1, 0),
(35, 1, 0),
(36, 1, 0),
(37, 1, 0),
(38, 1, 0),
(47, 3, 0),
(48, 3, 0),
(49, 3, 0),
(50, 3, 0),
(51, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pcm_term_taxonomy`
--

CREATE TABLE `pcm_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pcm_term_taxonomy`
--

INSERT INTO `pcm_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 6),
(2, 2, 'nav_menu', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `pcm_usermeta`
--

CREATE TABLE `pcm_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pcm_usermeta`
--

INSERT INTO `pcm_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(12, 1, 'pcm_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'pcm_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'pcm_dashboard_quick_press_last_post_id', '52'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'session_tokens', 'a:1:{s:64:\"5acfa2e93d1bda7cc32a43ce36afbb870629d0450c0207d7d7003b3d28632ee2\";a:4:{s:10:\"expiration\";i:1608096624;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\";s:5:\"login\";i:1607923824;}}'),
(22, 1, 'colormag_upgrade_notice_dismiss_temporary', 'yes'),
(23, 1, 'colormag_upgrade_notice_dismiss_temporary_start_time', '1607924162'),
(24, 1, 'pcm_user-settings', 'libraryContent=browse'),
(25, 1, 'pcm_user-settings-time', '1607924792');

-- --------------------------------------------------------

--
-- Table structure for table `pcm_users`
--

CREATE TABLE `pcm_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pcm_users`
--

INSERT INTO `pcm_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BxPzZOcLGKaQptHXo6y/jcsqICS.np/', 'admin', 'admin@gmail.com', 'http://localhost/pcm4', '2020-12-05 04:20:01', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pcm_commentmeta`
--
ALTER TABLE `pcm_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `pcm_comments`
--
ALTER TABLE `pcm_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `pcm_links`
--
ALTER TABLE `pcm_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `pcm_options`
--
ALTER TABLE `pcm_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `pcm_postmeta`
--
ALTER TABLE `pcm_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `pcm_posts`
--
ALTER TABLE `pcm_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `pcm_termmeta`
--
ALTER TABLE `pcm_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `pcm_terms`
--
ALTER TABLE `pcm_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `pcm_term_relationships`
--
ALTER TABLE `pcm_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `pcm_term_taxonomy`
--
ALTER TABLE `pcm_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `pcm_usermeta`
--
ALTER TABLE `pcm_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `pcm_users`
--
ALTER TABLE `pcm_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pcm_commentmeta`
--
ALTER TABLE `pcm_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pcm_comments`
--
ALTER TABLE `pcm_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pcm_links`
--
ALTER TABLE `pcm_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pcm_options`
--
ALTER TABLE `pcm_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `pcm_postmeta`
--
ALTER TABLE `pcm_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `pcm_posts`
--
ALTER TABLE `pcm_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `pcm_termmeta`
--
ALTER TABLE `pcm_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pcm_terms`
--
ALTER TABLE `pcm_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pcm_term_taxonomy`
--
ALTER TABLE `pcm_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pcm_usermeta`
--
ALTER TABLE `pcm_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pcm_users`
--
ALTER TABLE `pcm_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
