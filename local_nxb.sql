-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2020 at 07:50 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `local_nxb`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(52, 'action_scheduler/migration_hook', 'complete', '2020-05-31 15:18:31', '2020-05-31 15:18:31', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1590938311;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1590938311;}', 2, 1, '2020-05-31 15:18:50', '2020-05-31 15:18:50', 0, NULL),
(53, 'action_scheduler/migration_hook', 'canceled', '2020-05-31 15:18:31', '2020-05-31 15:18:31', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1590938311;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1590938311;}', 1, 0, '2020-05-31 15:18:50', '2020-05-31 15:18:50', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'action-scheduler-migration');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 52, 'hành động được tạo', '2020-05-31 15:17:32', '2020-05-31 15:17:32'),
(2, 53, 'hành động được tạo', '2020-05-31 15:17:32', '2020-05-31 15:17:32'),
(3, 52, 'action started via Async Request', '2020-05-31 15:18:50', '2020-05-31 15:18:50'),
(4, 53, 'hành động bị huỷ', '2020-05-31 15:18:50', '2020-05-31 15:18:50'),
(5, 52, 'action complete via Async Request', '2020-05-31 15:18:50', '2020-05-31 15:18:50'),
(6, 53, 'action ignored via Async Request', '2020-05-31 15:18:51', '2020-05-31 15:18:51');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-05-28 13:21:11', '2020-05-28 13:21:11', 'Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
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
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/nxb', 'yes'),
(2, 'home', 'http://localhost/nxb', 'yes'),
(3, 'blogname', 'NXB Đại học Sư phạm', 'yes'),
(4, 'blogdescription', '280 An Dương Vương, phường 4 Quận 5, thành phố Hồ Chí Minh', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'pthyst@gmail.com', 'yes'),
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
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:157:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:6:\"mua/?$\";s:27:\"index.php?post_type=product\";s:36:\"mua/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:31:\"mua/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:23:\"mua/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:56:\"danh-muc-san-pham/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:51:\"danh-muc-san-pham/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:32:\"danh-muc-san-pham/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:44:\"danh-muc-san-pham/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:26:\"danh-muc-san-pham/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:57:\"tu-khoa-san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:52:\"tu-khoa-san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:33:\"tu-khoa-san-pham/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:45:\"tu-khoa-san-pham/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:27:\"tu-khoa-san-pham/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:40:\"sản phẩm/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"sản phẩm/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"sản phẩm/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"sản phẩm/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"sản phẩm/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"sản phẩm/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"sản phẩm/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:33:\"sản phẩm/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:53:\"sản phẩm/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:48:\"sản phẩm/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:41:\"sản phẩm/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:48:\"sản phẩm/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:38:\"sản phẩm/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:44:\"sản phẩm/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:55:\"sản phẩm/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:37:\"sản phẩm/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:29:\"sản phẩm/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"sản phẩm/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"sản phẩm/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"sản phẩm/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"sản phẩm/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"sản phẩm/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=52&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:39:\"disable-gutenberg/disable-gutenberg.php\";i:2;s:37:\"recent-posts-widget-extended/rpwe.php\";i:3;s:37:\"tinymce-advanced/tinymce-advanced.php\";i:4;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'basicstore', 'yes'),
(41, 'stylesheet', 'basicstore', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '2', 'yes'),
(84, 'page_on_front', '52', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '45', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1606224060', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'vi', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:4;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:17:\"sidebar-frontpage\";a:0:{}s:12:\"sidebar-site\";a:0:{}s:12:\"sidebar-shop\";a:5:{i:0;s:8:\"search-2\";i:1;s:22:\"woocommerce_products-2\";i:2;s:32:\"woocommerce_product_categories-2\";i:3;s:14:\"recent-posts-4\";i:4;s:12:\"categories-2\";}s:14:\"sidebar-footer\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:19:{i:1590947242;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1590949032;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590949043;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1590949065;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1590949094;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1590949277;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1590959832;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1590969600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590974477;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1591017675;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591017873;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591017874;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591017877;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591024641;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591024642;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591024648;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591363275;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1592234292;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1590675875;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(127, '_site_transient_timeout_browser_ab6bf820e8dc07c9d0c7d1067179ae16', '1591277075', 'no'),
(128, '_site_transient_browser_ab6bf820e8dc07c9d0c7d1067179ae16', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"83.0.4103.61\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(129, '_site_transient_timeout_php_check_90a84b80b2ae4bb2a14bb18a1c790012', '1591277076', 'no'),
(130, '_site_transient_php_check_90a84b80b2ae4bb2a14bb18a1c790012', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(134, 'can_compress_scripts', '1', 'no'),
(144, 'recently_activated', 'a:6:{s:61:\"blossomthemes-instagram-feed/blossomthemes-instagram-feed.php\";i:1590679760;s:47:\"blossomthemes-toolkit/blossomthemes-toolkit.php\";i:1590679760;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1590679760;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:1590679760;s:65:\"blossomthemes-email-newsletter/blossomthemes-email-newsletter.php\";i:1590679740;s:45:\"blossom-recipe-maker/blossom-recipe-maker.php\";i:1590679732;}', 'yes'),
(158, 'tadv_settings', 'a:10:{s:7:\"options\";s:44:\"menubar,advlist,menubar_block,merge_toolbars\";s:7:\"plugins\";s:104:\"anchor,code,insertdatetime,nonbreaking,print,searchreplace,table,visualblocks,visualchars,advlist,wptadv\";s:9:\"toolbar_1\";s:106:\"formatselect,bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,undo,redo\";s:9:\"toolbar_2\";s:103:\"fontselect,fontsizeselect,outdent,indent,pastetext,removeformat,charmap,wp_more,forecolor,table,wp_help\";s:9:\"toolbar_3\";s:0:\"\";s:9:\"toolbar_4\";s:0:\"\";s:21:\"toolbar_classic_block\";s:123:\"formatselect,bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,forecolor,backcolor,table,wp_help\";s:13:\"toolbar_block\";s:10:\"core/image\";s:18:\"toolbar_block_side\";s:74:\"tadv/sup,tadv/sub,core/strikethrough,core/code,tadv/mark,tadv/removeformat\";s:12:\"panels_block\";s:44:\"tadv/color-panel,tadv/background-color-panel\";}', 'yes'),
(159, 'tadv_admin_settings', 'a:1:{s:7:\"options\";s:86:\"classic_paragraph_block,table_resize_bars,table_grid,table_tab_navigation,table_advtab\";}', 'yes'),
(160, 'tadv_version', '5400', 'yes'),
(169, 'current_theme', 'BasicStore', 'yes'),
(170, 'theme_mods_blossom-recipe', 'a:15:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:6;}s:18:\"custom_css_post_id\";i:-1;s:11:\"slider_type\";s:3:\"cat\";s:10:\"slider_cat\";s:1:\"2\";s:16:\"ed_header_search\";b:1;s:20:\"ed_header_newsletter\";b:1;s:12:\"social_links\";a:0:{}s:17:\"ed_prefix_archive\";b:0;s:14:\"excerpt_length\";i:100;s:12:\"ed_post_date\";b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1590938405;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:4:{i:0;s:8:\"search-2\";i:1;s:13:\"rpwe_widget-2\";i:2;s:14:\"recent-posts-2\";i:3;s:12:\"categories-2\";}s:18:\"newsletter-section\";a:0:{}s:10:\"footer-one\";a:0:{}s:10:\"footer-two\";a:0:{}s:12:\"footer-three\";a:0:{}}}s:16:\"background_color\";s:6:\"8cc1cc\";s:11:\"header_text\";i:1;s:11:\"custom_logo\";i:47;}', 'yes'),
(171, 'theme_switched', '', 'yes'),
(192, 'theme_mods_metro-magazine', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1590678556;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"right-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:18:\"footer-sidebar-one\";a:0:{}s:18:\"footer-sidebar-two\";a:0:{}s:20:\"footer-sidebar-three\";a:0:{}}}}', 'yes'),
(193, 'widget_metro_magazine_featured_post', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(194, 'widget_metro_magazine_popular_post', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(195, 'widget_metro_magazine_recent_post', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(196, 'widget_metro_magazine_social_links', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(206, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(208, 'widget_btif_instagram_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(209, 'blossomthemes_instagram_invalid_token', '1', 'no'),
(212, 'br_recipe_settings', 'a:4:{s:5:\"pages\";a:1:{s:13:\"recipe_search\";i:38;}s:15:\"adjust_servings\";i:1;s:10:\"feat_image\";i:1;s:12:\"act_as_posts\";i:1;}', 'yes'),
(213, '_blossom_recipe_maker', 'a:1:{s:4:\"demo\";s:1:\"1\";}', 'yes'),
(215, 'widget_brm_popular_recipe', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(216, 'widget_brm_recent_recipe', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(217, 'widget_brm_recipe_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(218, 'widget_brm_recipe_categories_slider', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(219, 'widget_blossomthemes_email_newsletter_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(220, 'widget_bttk_author_bio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(221, 'widget_bttk_popular_post', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(222, 'widget_bttk_pro_recent_post', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(223, 'widget_bttk_custom_categories', 'a:2:{i:2;a:3:{s:5:\"title\";s:11:\"Sách mới\";s:6:\"target\";s:0:\"\";s:10:\"categories\";a:1:{i:0;s:1:\"2\";}}s:12:\"_multiwidget\";i:1;}', 'yes'),
(224, 'widget_bttk_image_text_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(225, 'widget_bttk_posts_category_slider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(226, 'widget_bttk_twitter_feeds_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(227, 'widget_bttk_facebook_page_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(228, 'widget_bttk_advertisement_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(229, 'widget_bttk_pinterest_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(230, 'widget_bttk_snapcode_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(231, 'widget_bttk_social_links', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(232, 'widget_blossom_client_logo_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(233, 'widget_blossomtheme_featured_page_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(234, 'widget_blossomtheme_companion_cta_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(235, 'widget_bttk_testimonial_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(236, 'widget_blossomthemes_stat_counter_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(237, 'widget_bttk_description_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(238, 'widget_bttk_icon_text_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(239, 'widget_bttk_contact_social_links', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(241, 'category_children', 'a:0:{}', 'yes'),
(246, 'widget_rpwe_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(249, '_site_transient_timeout_theme_roots', '1590946868', 'no'),
(250, '_site_transient_theme_roots', 'a:4:{s:18:\"alluring-ecommerce\";s:7:\"/themes\";s:10:\"basicstore\";s:7:\"/themes\";s:9:\"gutenshop\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";}', 'no'),
(255, '_transient_health-check-site-status-result', '{\"good\":11,\"recommended\":6,\"critical\":0}', 'yes'),
(256, 'action_scheduler_hybrid_store_demarkation', '51', 'yes'),
(257, 'schema-ActionScheduler_StoreSchema', '3.0.1590938189', 'yes'),
(258, 'schema-ActionScheduler_LoggerSchema', '2.0.1590938190', 'yes'),
(261, 'woocommerce_store_address', '280 An Duong Vuong Street, District 5, Ho Chi Minh City', 'yes'),
(262, 'woocommerce_store_address_2', '', 'yes'),
(263, 'woocommerce_store_city', 'Ho Chi Minh City', 'yes'),
(264, 'woocommerce_default_country', 'VN', 'yes'),
(265, 'woocommerce_store_postcode', '700000', 'yes'),
(266, 'woocommerce_allowed_countries', 'all', 'yes'),
(267, 'woocommerce_all_except_countries', '', 'yes'),
(268, 'woocommerce_specific_allowed_countries', '', 'yes'),
(269, 'woocommerce_ship_to_countries', '', 'yes'),
(270, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(271, 'woocommerce_default_customer_address', 'base', 'yes'),
(272, 'woocommerce_calc_taxes', 'no', 'yes'),
(273, 'woocommerce_enable_coupons', 'yes', 'yes'),
(274, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(275, 'woocommerce_currency', 'VND', 'yes'),
(276, 'woocommerce_currency_pos', 'right', 'yes'),
(277, 'woocommerce_price_thousand_sep', '.', 'yes'),
(278, 'woocommerce_price_decimal_sep', ',', 'yes'),
(279, 'woocommerce_price_num_decimals', '1', 'yes'),
(280, 'woocommerce_shop_page_id', '52', 'yes'),
(281, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(282, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(283, 'woocommerce_placeholder_image', '51', 'yes'),
(284, 'woocommerce_weight_unit', 'kg', 'yes'),
(285, 'woocommerce_dimension_unit', 'cm', 'yes'),
(286, 'woocommerce_enable_reviews', 'yes', 'yes'),
(287, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(288, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(289, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(290, 'woocommerce_review_rating_required', 'yes', 'no'),
(291, 'woocommerce_manage_stock', 'yes', 'yes'),
(292, 'woocommerce_hold_stock_minutes', '60', 'no'),
(293, 'woocommerce_notify_low_stock', 'yes', 'no'),
(294, 'woocommerce_notify_no_stock', 'yes', 'no'),
(295, 'woocommerce_stock_email_recipient', 'pthyst@gmail.com', 'no'),
(296, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(297, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(298, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(299, 'woocommerce_stock_format', '', 'yes'),
(300, 'woocommerce_file_download_method', 'force', 'no'),
(301, 'woocommerce_downloads_require_login', 'no', 'no'),
(302, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(303, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(304, 'woocommerce_prices_include_tax', 'no', 'yes'),
(305, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(306, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(307, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(308, 'woocommerce_tax_classes', '', 'yes'),
(309, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(310, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(311, 'woocommerce_price_display_suffix', '', 'yes'),
(312, 'woocommerce_tax_total_display', 'itemized', 'no'),
(313, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(314, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(315, 'woocommerce_ship_to_destination', 'billing', 'no'),
(316, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(317, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(318, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(319, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(320, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(321, 'woocommerce_registration_generate_username', 'yes', 'no'),
(322, 'woocommerce_registration_generate_password', 'yes', 'no'),
(323, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(324, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(325, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(326, 'woocommerce_registration_privacy_policy_text', 'Thông tin cá nhân của bạn sẽ được sử dụng để tăng trải nghiệm sử dụng website, quản lý truy cập vào tài khoản của bạn, và cho các mục đích cụ thể khác được mô tả trong [privacy_policy].', 'yes'),
(327, 'woocommerce_checkout_privacy_policy_text', 'Thông tin cá nhân của bạn sẽ được sử dụng để xử lý đơn hàng, tăng trải nghiệm sử dụng website, và cho các mục đích cụ thể khác đã được mô tả trong [privacy_policy].', 'yes'),
(328, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(329, 'woocommerce_trash_pending_orders', '', 'no'),
(330, 'woocommerce_trash_failed_orders', '', 'no'),
(331, 'woocommerce_trash_cancelled_orders', '', 'no'),
(332, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(333, 'woocommerce_email_from_name', 'Nhà Xuất Bản Đại học Sư Phạm', 'no'),
(334, 'woocommerce_email_from_address', 'pthyst@gmail.com', 'no'),
(335, 'woocommerce_email_header_image', '', 'no'),
(336, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(337, 'woocommerce_email_base_color', '#96588a', 'no'),
(338, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(339, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(340, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(341, 'woocommerce_cart_page_id', '53', 'no'),
(342, 'woocommerce_checkout_page_id', '54', 'no'),
(343, 'woocommerce_myaccount_page_id', '55', 'no'),
(344, 'woocommerce_terms_page_id', '', 'no'),
(345, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(346, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(347, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(348, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(349, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(350, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(351, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(352, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(353, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(354, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(355, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(356, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(357, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(358, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(359, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(360, 'woocommerce_api_enabled', 'no', 'yes'),
(361, 'woocommerce_allow_tracking', 'yes', 'no'),
(362, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(363, 'woocommerce_single_image_width', '600', 'yes'),
(364, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(365, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(366, 'woocommerce_demo_store', 'no', 'no'),
(367, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:12:\"sản phẩm\";s:13:\"category_base\";s:17:\"danh-muc-san-pham\";s:8:\"tag_base\";s:16:\"tu-khoa-san-pham\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(368, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(369, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(370, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(372, 'default_product_cat', '20', 'yes'),
(374, 'woocommerce_admin_notices', 'a:3:{i:0;s:7:\"install\";i:1;s:20:\"no_secure_connection\";i:2;s:14:\"template_files\";}', 'yes'),
(377, 'woocommerce_version', '4.1.1', 'yes'),
(378, 'woocommerce_db_version', '4.1.1', 'yes'),
(379, '_transient_timeout__woocommerce_upload_directory_status', '1591024640', 'no'),
(380, '_transient__woocommerce_upload_directory_status', 'protected', 'no'),
(381, 'action_scheduler_lock_async-request-runner', '1590947243', 'yes'),
(382, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"gNKcXlb5ZuDGwhsNoVLt8fp3bZEG3yaZ\";}', 'yes'),
(383, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(384, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(385, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(386, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(387, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(388, 'widget_woocommerce_product_categories', 'a:2:{i:2;a:8:{s:5:\"title\";s:23:\"Danh mục sản phẩm\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:1;s:9:\"max_depth\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(389, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(390, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(391, 'widget_woocommerce_products', 'a:2:{i:2;a:7:{s:5:\"title\";s:18:\"Sản phẩm mới\";s:6:\"number\";i:5;s:4:\"show\";s:0:\"\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(392, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(393, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(394, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(395, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(396, 'woocommerce_onboarding_opt_in', 'yes', 'yes'),
(399, 'woocommerce_admin_version', '1.1.3', 'yes'),
(400, 'woocommerce_admin_install_timestamp', '1590938249', 'yes'),
(402, '_transient_timeout_as-post-store-dependencies-met', '1591024651', 'no'),
(403, '_transient_as-post-store-dependencies-met', 'yes', 'no'),
(405, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:12:\"post-trashed\";s:1:\"1\";s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;}', 'yes'),
(406, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(409, 'woocommerce_admin_last_orders_milestone', '0', 'yes'),
(410, 'woocommerce_onboarding_profile', 'a:9:{s:9:\"completed\";b:1;s:12:\"setup_client\";b:1;s:8:\"industry\";a:1:{i:0;a:1:{s:4:\"slug\";s:5:\"other\";}}s:13:\"product_types\";a:1:{i:0;s:8:\"physical\";}s:13:\"product_count\";s:4:\"1-10\";s:14:\"selling_venues\";s:2:\"no\";s:19:\"business_extensions\";a:0:{}s:5:\"theme\";s:10:\"storefront\";s:7:\"plugins\";s:7:\"skipped\";}', 'yes'),
(412, '_transient_timeout_wc_onboarding_product_data', '1591024663', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(413, '_transient_wc_onboarding_product_data', 'a:6:{s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:17:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Sun, 31 May 2020 15:17:43 GMT\";s:12:\"content-type\";s:31:\"application/json; charset=UTF-8\";s:14:\"content-length\";s:4:\"3892\";s:12:\"x-robots-tag\";s:7:\"noindex\";s:4:\"link\";s:60:\"<https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:29:\"access-control-expose-headers\";s:27:\"X-WP-Total, X-WP-TotalPages\";s:28:\"access-control-allow-headers\";s:27:\"Authorization, Content-Type\";s:13:\"cache-control\";s:10:\"max-age=60\";s:5:\"allow\";s:3:\"GET\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"x-rq\";s:16:\"sin1 86 175 3109\";s:3:\"age\";s:2:\"31\";s:7:\"x-cache\";s:3:\"hit\";s:4:\"vary\";s:23:\"Accept-Encoding, Origin\";s:13:\"accept-ranges\";s:5:\"bytes\";}}s:4:\"body\";s:15612:\"{\"products\":[{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/woosubs.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"WooCommerce Memberships\",\"image\":\"\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"Product Bundles\",\"image\":\"\",\"excerpt\":\"Offer configurable product bundles, bulk discount packages and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"WooCommerce Bookings\",\"image\":\"\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"Composite Products\",\"image\":\"\",\"excerpt\":\"Create and offer personalized product kits and custom product configurators.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"Groups for WooCommerce\",\"image\":\"\",\"excerpt\":\"Sell Memberships with Groups and WooCommerce \\u2013\\u00a0the best Group Membership and Access Control solution for WordPress and WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/groups-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"aa2d455ed00566e4fb71bc9d53f2613b\",\"slug\":\"groups-woocommerce\",\"id\":18704},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"Chained Products\",\"image\":\"\",\"excerpt\":\"Pre-configured product bundles, giveaways, forced sells and discounted combos. Automatically adds \\u201cchained\\u201d products to cart when \\u201cmain\\u201d product is added.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/chained-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=cp\",\"price\":\"&#36;49.00\",\"hash\":\"cc6e246e495745db10f9f7fddc5aa907\",\"slug\":\"woocommerce-chained-products\",\"id\":18687},{\"title\":\"Mix and Match Products\",\"image\":\"\",\"excerpt\":\"Allow your customers to combine products and create their own variations, and increase your average order value.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-mix-and-match-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"e59883891b7bcd535025486721e4c09f\",\"slug\":\"woocommerce-mix-and-match-products\",\"id\":853021},{\"title\":\"WooCommerce Box Office\",\"image\":\"\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"All Products for WooCommerce Subscriptions\",\"image\":\"\",\"excerpt\":\"Make your products available on subscription. Give customers the freedom to add products to their subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/all-products-for-woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"2794ee6e-bc30-4733-9b24-5edfc3f0095d\",\"slug\":\"woocommerce-all-products-for-subscriptions\",\"id\":3978176},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602},{\"title\":\"Teams for WooCommerce Memberships\",\"image\":\"\",\"excerpt\":\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/teams-woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9feb48da-9615-4131-8aa8-eebb55b9cff4\",\"slug\":\"woocommerce-memberships-for-teams\",\"id\":2893267},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683},{\"title\":\"WooCommerce API Manager\",\"image\":\"\",\"excerpt\":\"Let customers subscribe to your software or services through API Keys, aka License Keys. Provide automated updates for WordPress Plugins and Themes, or any software through robust APIs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-api-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"f7cdcfb7de76afa0889f07bcb92bf12e\",\"slug\":\"woocommerce-api-manager\",\"id\":260110},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225},{\"title\":\"Auctions for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/10\\/auctions_for_woocommerce.png\",\"excerpt\":\"A professional Auction solution for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/auctions-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/wpinstitut.com\\/auctions-for-woocommerce-demo\\/\",\"price\":\"&#36;149.00\",\"hash\":\"c41a199e-5f49-4f5c-bb28-7ca22b0c4fe7\",\"slug\":\"auctions-for-woocommerce\",\"id\":4922919},{\"title\":\"Paywall for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/01\\/paywall-for-woocommerce-logo.png?w=150&amp;h=150&amp;crop=1\",\"excerpt\":\"Paywall is a WooCommerce extension that allows creating products with restricted access to content.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paywall-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo-woocommerce-paywall.tiv.net\\/\",\"price\":\"&#36;79.00\",\"hash\":\"a688fc22-9370-4652-9e5e-f968ced9a0a8\",\"slug\":\"paywall-for-woocommerce\",\"id\":5253500},{\"title\":\"Auctions Made Easy for WooCommerce\",\"image\":\"\",\"excerpt\":\"Auctions Made Easy for WooCommerce is a full-featured auctions plugin for creating and managing online auctions in a WooCommerce shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/auctions-made-easy-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a7fbc475-9946-4db9-92b6-5b7ebab3bab2\",\"slug\":\"auctions-made-easy-for-woocommerce\",\"id\":5249611},{\"title\":\"Assorted Products for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/10\\/icon.jpg\",\"excerpt\":\"Empower your customers to create product bundles\\u2014gift boxes of their choice comprising items from your shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/assorted-products-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/assorted-products.codeincept.com\\/product\\/assorted-product\\/\",\"price\":\"&#36;79.00\",\"hash\":\"6ab9ee51-c187-421c-9104-efa21d9423ca\",\"slug\":\"assorted-products-for-woocommerce\",\"id\":4911617},{\"title\":\"Custom Product Boxes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/04\\/CPB_Icon.jpg?w=150&amp;h=150\",\"excerpt\":\"Custom product boxes for WooCommerce allows users to create product bundles by choosing specific items of their own choice from the collection of products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/custom-product-boxes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/composite-products.codeincept.com\\/product\\/cupcake-gift-box\\/\",\"price\":\"&#36;79.00\",\"hash\":\"ba19e1e3-1d5f-4e2c-bc3e-d7029c04f326\",\"slug\":\"custom-product-boxes\",\"id\":5706607},{\"title\":\"Smart Product Bundle For WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/01\\/productlogo-1.png\",\"excerpt\":\"Fulfill customer expectations with Smart Product Bundle and enrich customer experiences along with your sales revenue.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-bundle-product-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.wpexperts.io\\/smart-bundle-product-for-woocommerce\\/\",\"price\":\"&#36;79.00\",\"hash\":\"033cccdf-744b-4497-87b1-5765e71d3dcd\",\"slug\":\"smart-bundle-for-woocommerce\",\"id\":5193957},{\"title\":\"Featured Listing for Product Vendors\",\"image\":\"\",\"excerpt\":\"This is an addon of WooCommerce Product Vendor which offers vendor the option to feature their product ahead of others, for a small fee.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/featured-listing-for-product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.makewebbetter.com\\/featured-listing-for-product-vendors\\/\",\"price\":\"&#36;79.00\",\"hash\":\"78610942-f38c-4517-b7e0-4c3753d11752\",\"slug\":\"featured-listing-for-product-vendors\",\"id\":5021060},{\"title\":\"Walmart Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo-1.png?w=150&amp;h=150&amp;crop=0\",\"excerpt\":\"Sell on Walmart with Walmart Integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/walmart-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;249.00\",\"hash\":\"1237f272-56c8-4c77-8539-31450a2f4e1a\",\"slug\":\"walmart-integration-for-woocommerce\",\"id\":5423057},{\"title\":\"Shopee Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo.png\",\"excerpt\":\"Sell on Shopee with Shopee integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shopee-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"dcf810b6-c8ce-48da-84ba-289ac4ee43f5\",\"slug\":\"woocommerce-shopee-integration\",\"id\":4794826},{\"title\":\"Lottery for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/05\\/lottery-logo.png?w=150&amp;h=150\",\"excerpt\":\"Lottery for WooCommerce is a full-featured lottery plugin for creating and managing online lotteries in your WooCommerce Shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/lottery-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9694c9bd-1d5c-43af-b1e9-796cc64b16a8\",\"slug\":\"lottery-for-woocommerce\",\"id\":5860289},{\"title\":\"Etsy Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo-2.png?w=150&amp;h=150\",\"excerpt\":\"Sell on Etsy with Etsy Integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/etsy-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"1dc5953a-3b22-4e73-9d7d-cc852d189beb\",\"slug\":\"woocommerce-etsy-integration\",\"id\":5712585},{\"title\":\"Rental Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/05\\/Rental-Products-Logo.png?w=150&amp;h=150\",\"excerpt\":\"Create rental products within your WooCommerce store, allowing customers to rent products for specific dates.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/rental-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"d6b9b1a1-8b92-4e07-89b9-4d85e3b574ce\",\"slug\":\"wcrp-rental-products\",\"id\":5860277}]}\";s:8:\"response\";a:2:{s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";}s:7:\"cookies\";a:0:{}s:8:\"filename\";N;s:13:\"http_response\";O:25:\"WP_HTTP_Requests_Response\":5:{s:11:\"\0*\0response\";O:17:\"Requests_Response\":10:{s:4:\"body\";s:15612:\"{\"products\":[{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/woosubs.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"WooCommerce Memberships\",\"image\":\"\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"Product Bundles\",\"image\":\"\",\"excerpt\":\"Offer configurable product bundles, bulk discount packages and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"WooCommerce Bookings\",\"image\":\"\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"Composite Products\",\"image\":\"\",\"excerpt\":\"Create and offer personalized product kits and custom product configurators.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"Groups for WooCommerce\",\"image\":\"\",\"excerpt\":\"Sell Memberships with Groups and WooCommerce \\u2013\\u00a0the best Group Membership and Access Control solution for WordPress and WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/groups-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"aa2d455ed00566e4fb71bc9d53f2613b\",\"slug\":\"groups-woocommerce\",\"id\":18704},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"Chained Products\",\"image\":\"\",\"excerpt\":\"Pre-configured product bundles, giveaways, forced sells and discounted combos. Automatically adds \\u201cchained\\u201d products to cart when \\u201cmain\\u201d product is added.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/chained-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=cp\",\"price\":\"&#36;49.00\",\"hash\":\"cc6e246e495745db10f9f7fddc5aa907\",\"slug\":\"woocommerce-chained-products\",\"id\":18687},{\"title\":\"Mix and Match Products\",\"image\":\"\",\"excerpt\":\"Allow your customers to combine products and create their own variations, and increase your average order value.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-mix-and-match-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"e59883891b7bcd535025486721e4c09f\",\"slug\":\"woocommerce-mix-and-match-products\",\"id\":853021},{\"title\":\"WooCommerce Box Office\",\"image\":\"\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"All Products for WooCommerce Subscriptions\",\"image\":\"\",\"excerpt\":\"Make your products available on subscription. Give customers the freedom to add products to their subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/all-products-for-woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"2794ee6e-bc30-4733-9b24-5edfc3f0095d\",\"slug\":\"woocommerce-all-products-for-subscriptions\",\"id\":3978176},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602},{\"title\":\"Teams for WooCommerce Memberships\",\"image\":\"\",\"excerpt\":\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/teams-woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9feb48da-9615-4131-8aa8-eebb55b9cff4\",\"slug\":\"woocommerce-memberships-for-teams\",\"id\":2893267},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683},{\"title\":\"WooCommerce API Manager\",\"image\":\"\",\"excerpt\":\"Let customers subscribe to your software or services through API Keys, aka License Keys. Provide automated updates for WordPress Plugins and Themes, or any software through robust APIs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-api-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"f7cdcfb7de76afa0889f07bcb92bf12e\",\"slug\":\"woocommerce-api-manager\",\"id\":260110},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225},{\"title\":\"Auctions for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/10\\/auctions_for_woocommerce.png\",\"excerpt\":\"A professional Auction solution for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/auctions-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/wpinstitut.com\\/auctions-for-woocommerce-demo\\/\",\"price\":\"&#36;149.00\",\"hash\":\"c41a199e-5f49-4f5c-bb28-7ca22b0c4fe7\",\"slug\":\"auctions-for-woocommerce\",\"id\":4922919},{\"title\":\"Paywall for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/01\\/paywall-for-woocommerce-logo.png?w=150&amp;h=150&amp;crop=1\",\"excerpt\":\"Paywall is a WooCommerce extension that allows creating products with restricted access to content.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paywall-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo-woocommerce-paywall.tiv.net\\/\",\"price\":\"&#36;79.00\",\"hash\":\"a688fc22-9370-4652-9e5e-f968ced9a0a8\",\"slug\":\"paywall-for-woocommerce\",\"id\":5253500},{\"title\":\"Auctions Made Easy for WooCommerce\",\"image\":\"\",\"excerpt\":\"Auctions Made Easy for WooCommerce is a full-featured auctions plugin for creating and managing online auctions in a WooCommerce shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/auctions-made-easy-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a7fbc475-9946-4db9-92b6-5b7ebab3bab2\",\"slug\":\"auctions-made-easy-for-woocommerce\",\"id\":5249611},{\"title\":\"Assorted Products for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/10\\/icon.jpg\",\"excerpt\":\"Empower your customers to create product bundles\\u2014gift boxes of their choice comprising items from your shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/assorted-products-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/assorted-products.codeincept.com\\/product\\/assorted-product\\/\",\"price\":\"&#36;79.00\",\"hash\":\"6ab9ee51-c187-421c-9104-efa21d9423ca\",\"slug\":\"assorted-products-for-woocommerce\",\"id\":4911617},{\"title\":\"Custom Product Boxes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/04\\/CPB_Icon.jpg?w=150&amp;h=150\",\"excerpt\":\"Custom product boxes for WooCommerce allows users to create product bundles by choosing specific items of their own choice from the collection of products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/custom-product-boxes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/composite-products.codeincept.com\\/product\\/cupcake-gift-box\\/\",\"price\":\"&#36;79.00\",\"hash\":\"ba19e1e3-1d5f-4e2c-bc3e-d7029c04f326\",\"slug\":\"custom-product-boxes\",\"id\":5706607},{\"title\":\"Smart Product Bundle For WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/01\\/productlogo-1.png\",\"excerpt\":\"Fulfill customer expectations with Smart Product Bundle and enrich customer experiences along with your sales revenue.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-bundle-product-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.wpexperts.io\\/smart-bundle-product-for-woocommerce\\/\",\"price\":\"&#36;79.00\",\"hash\":\"033cccdf-744b-4497-87b1-5765e71d3dcd\",\"slug\":\"smart-bundle-for-woocommerce\",\"id\":5193957},{\"title\":\"Featured Listing for Product Vendors\",\"image\":\"\",\"excerpt\":\"This is an addon of WooCommerce Product Vendor which offers vendor the option to feature their product ahead of others, for a small fee.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/featured-listing-for-product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.makewebbetter.com\\/featured-listing-for-product-vendors\\/\",\"price\":\"&#36;79.00\",\"hash\":\"78610942-f38c-4517-b7e0-4c3753d11752\",\"slug\":\"featured-listing-for-product-vendors\",\"id\":5021060},{\"title\":\"Walmart Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo-1.png?w=150&amp;h=150&amp;crop=0\",\"excerpt\":\"Sell on Walmart with Walmart Integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/walmart-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;249.00\",\"hash\":\"1237f272-56c8-4c77-8539-31450a2f4e1a\",\"slug\":\"walmart-integration-for-woocommerce\",\"id\":5423057},{\"title\":\"Shopee Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo.png\",\"excerpt\":\"Sell on Shopee with Shopee integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shopee-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"dcf810b6-c8ce-48da-84ba-289ac4ee43f5\",\"slug\":\"woocommerce-shopee-integration\",\"id\":4794826},{\"title\":\"Lottery for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/05\\/lottery-logo.png?w=150&amp;h=150\",\"excerpt\":\"Lottery for WooCommerce is a full-featured lottery plugin for creating and managing online lotteries in your WooCommerce Shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/lottery-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9694c9bd-1d5c-43af-b1e9-796cc64b16a8\",\"slug\":\"lottery-for-woocommerce\",\"id\":5860289},{\"title\":\"Etsy Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo-2.png?w=150&amp;h=150\",\"excerpt\":\"Sell on Etsy with Etsy Integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/etsy-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"1dc5953a-3b22-4e73-9d7d-cc852d189beb\",\"slug\":\"woocommerce-etsy-integration\",\"id\":5712585},{\"title\":\"Rental Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/05\\/Rental-Products-Logo.png?w=150&amp;h=150\",\"excerpt\":\"Create rental products within your WooCommerce store, allowing customers to rent products for specific dates.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/rental-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"d6b9b1a1-8b92-4e07-89b9-4d85e3b574ce\",\"slug\":\"wcrp-rental-products\",\"id\":5860277}]}\";s:3:\"raw\";s:16177:\"HTTP/1.1 200 OK\r\nServer: nginx\r\nDate: Sun, 31 May 2020 15:17:43 GMT\r\nContent-Type: application/json; charset=UTF-8\r\nContent-Length: 3892\r\nConnection: close\r\nX-Robots-Tag: noindex\r\nLink: <https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\r\nX-Content-Type-Options: nosniff\r\nAccess-Control-Expose-Headers: X-WP-Total, X-WP-TotalPages\r\nAccess-Control-Allow-Headers: Authorization, Content-Type\r\nCache-Control: max-age=60\r\nAllow: GET\r\nContent-Encoding: gzip\r\nX-rq: sin1 86 175 3109\r\nAge: 31\r\nX-Cache: hit\r\nVary: Accept-Encoding, Origin\r\nAccept-Ranges: bytes\r\n\r\n{\"products\":[{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/woosubs.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"WooCommerce Memberships\",\"image\":\"\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"Product Bundles\",\"image\":\"\",\"excerpt\":\"Offer configurable product bundles, bulk discount packages and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"WooCommerce Bookings\",\"image\":\"\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"Composite Products\",\"image\":\"\",\"excerpt\":\"Create and offer personalized product kits and custom product configurators.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"Groups for WooCommerce\",\"image\":\"\",\"excerpt\":\"Sell Memberships with Groups and WooCommerce \\u2013\\u00a0the best Group Membership and Access Control solution for WordPress and WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/groups-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"aa2d455ed00566e4fb71bc9d53f2613b\",\"slug\":\"groups-woocommerce\",\"id\":18704},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"Chained Products\",\"image\":\"\",\"excerpt\":\"Pre-configured product bundles, giveaways, forced sells and discounted combos. Automatically adds \\u201cchained\\u201d products to cart when \\u201cmain\\u201d product is added.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/chained-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=cp\",\"price\":\"&#36;49.00\",\"hash\":\"cc6e246e495745db10f9f7fddc5aa907\",\"slug\":\"woocommerce-chained-products\",\"id\":18687},{\"title\":\"Mix and Match Products\",\"image\":\"\",\"excerpt\":\"Allow your customers to combine products and create their own variations, and increase your average order value.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-mix-and-match-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"e59883891b7bcd535025486721e4c09f\",\"slug\":\"woocommerce-mix-and-match-products\",\"id\":853021},{\"title\":\"WooCommerce Box Office\",\"image\":\"\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"All Products for WooCommerce Subscriptions\",\"image\":\"\",\"excerpt\":\"Make your products available on subscription. Give customers the freedom to add products to their subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/all-products-for-woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"2794ee6e-bc30-4733-9b24-5edfc3f0095d\",\"slug\":\"woocommerce-all-products-for-subscriptions\",\"id\":3978176},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602},{\"title\":\"Teams for WooCommerce Memberships\",\"image\":\"\",\"excerpt\":\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/teams-woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9feb48da-9615-4131-8aa8-eebb55b9cff4\",\"slug\":\"woocommerce-memberships-for-teams\",\"id\":2893267},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683},{\"title\":\"WooCommerce API Manager\",\"image\":\"\",\"excerpt\":\"Let customers subscribe to your software or services through API Keys, aka License Keys. Provide automated updates for WordPress Plugins and Themes, or any software through robust APIs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-api-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"f7cdcfb7de76afa0889f07bcb92bf12e\",\"slug\":\"woocommerce-api-manager\",\"id\":260110},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225},{\"title\":\"Auctions for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/10\\/auctions_for_woocommerce.png\",\"excerpt\":\"A professional Auction solution for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/auctions-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/wpinstitut.com\\/auctions-for-woocommerce-demo\\/\",\"price\":\"&#36;149.00\",\"hash\":\"c41a199e-5f49-4f5c-bb28-7ca22b0c4fe7\",\"slug\":\"auctions-for-woocommerce\",\"id\":4922919},{\"title\":\"Paywall for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/01\\/paywall-for-woocommerce-logo.png?w=150&amp;h=150&amp;crop=1\",\"excerpt\":\"Paywall is a WooCommerce extension that allows creating products with restricted access to content.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paywall-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo-woocommerce-paywall.tiv.net\\/\",\"price\":\"&#36;79.00\",\"hash\":\"a688fc22-9370-4652-9e5e-f968ced9a0a8\",\"slug\":\"paywall-for-woocommerce\",\"id\":5253500},{\"title\":\"Auctions Made Easy for WooCommerce\",\"image\":\"\",\"excerpt\":\"Auctions Made Easy for WooCommerce is a full-featured auctions plugin for creating and managing online auctions in a WooCommerce shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/auctions-made-easy-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a7fbc475-9946-4db9-92b6-5b7ebab3bab2\",\"slug\":\"auctions-made-easy-for-woocommerce\",\"id\":5249611},{\"title\":\"Assorted Products for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/10\\/icon.jpg\",\"excerpt\":\"Empower your customers to create product bundles\\u2014gift boxes of their choice comprising items from your shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/assorted-products-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/assorted-products.codeincept.com\\/product\\/assorted-product\\/\",\"price\":\"&#36;79.00\",\"hash\":\"6ab9ee51-c187-421c-9104-efa21d9423ca\",\"slug\":\"assorted-products-for-woocommerce\",\"id\":4911617},{\"title\":\"Custom Product Boxes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/04\\/CPB_Icon.jpg?w=150&amp;h=150\",\"excerpt\":\"Custom product boxes for WooCommerce allows users to create product bundles by choosing specific items of their own choice from the collection of products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/custom-product-boxes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/composite-products.codeincept.com\\/product\\/cupcake-gift-box\\/\",\"price\":\"&#36;79.00\",\"hash\":\"ba19e1e3-1d5f-4e2c-bc3e-d7029c04f326\",\"slug\":\"custom-product-boxes\",\"id\":5706607},{\"title\":\"Smart Product Bundle For WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/01\\/productlogo-1.png\",\"excerpt\":\"Fulfill customer expectations with Smart Product Bundle and enrich customer experiences along with your sales revenue.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-bundle-product-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.wpexperts.io\\/smart-bundle-product-for-woocommerce\\/\",\"price\":\"&#36;79.00\",\"hash\":\"033cccdf-744b-4497-87b1-5765e71d3dcd\",\"slug\":\"smart-bundle-for-woocommerce\",\"id\":5193957},{\"title\":\"Featured Listing for Product Vendors\",\"image\":\"\",\"excerpt\":\"This is an addon of WooCommerce Product Vendor which offers vendor the option to feature their product ahead of others, for a small fee.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/featured-listing-for-product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.makewebbetter.com\\/featured-listing-for-product-vendors\\/\",\"price\":\"&#36;79.00\",\"hash\":\"78610942-f38c-4517-b7e0-4c3753d11752\",\"slug\":\"featured-listing-for-product-vendors\",\"id\":5021060},{\"title\":\"Walmart Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo-1.png?w=150&amp;h=150&amp;crop=0\",\"excerpt\":\"Sell on Walmart with Walmart Integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/walmart-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;249.00\",\"hash\":\"1237f272-56c8-4c77-8539-31450a2f4e1a\",\"slug\":\"walmart-integration-for-woocommerce\",\"id\":5423057},{\"title\":\"Shopee Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo.png\",\"excerpt\":\"Sell on Shopee with Shopee integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shopee-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"dcf810b6-c8ce-48da-84ba-289ac4ee43f5\",\"slug\":\"woocommerce-shopee-integration\",\"id\":4794826},{\"title\":\"Lottery for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/05\\/lottery-logo.png?w=150&amp;h=150\",\"excerpt\":\"Lottery for WooCommerce is a full-featured lottery plugin for creating and managing online lotteries in your WooCommerce Shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/lottery-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9694c9bd-1d5c-43af-b1e9-796cc64b16a8\",\"slug\":\"lottery-for-woocommerce\",\"id\":5860289},{\"title\":\"Etsy Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo-2.png?w=150&amp;h=150\",\"excerpt\":\"Sell on Etsy with Etsy Integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/etsy-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"1dc5953a-3b22-4e73-9d7d-cc852d189beb\",\"slug\":\"woocommerce-etsy-integration\",\"id\":5712585},{\"title\":\"Rental Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/05\\/Rental-Products-Logo.png?w=150&amp;h=150\",\"excerpt\":\"Create rental products within your WooCommerce store, allowing customers to rent products for specific dates.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/rental-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"d6b9b1a1-8b92-4e07-89b9-4d85e3b574ce\",\"slug\":\"wcrp-rental-products\",\"id\":5860277}]}\";s:7:\"headers\";O:25:\"Requests_Response_Headers\":1:{s:7:\"\0*\0data\";a:17:{s:6:\"server\";a:1:{i:0;s:5:\"nginx\";}s:4:\"date\";a:1:{i:0;s:29:\"Sun, 31 May 2020 15:17:43 GMT\";}s:12:\"content-type\";a:1:{i:0;s:31:\"application/json; charset=UTF-8\";}s:14:\"content-length\";a:1:{i:0;s:4:\"3892\";}s:12:\"x-robots-tag\";a:1:{i:0;s:7:\"noindex\";}s:4:\"link\";a:1:{i:0;s:60:\"<https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\";}s:22:\"x-content-type-options\";a:1:{i:0;s:7:\"nosniff\";}s:29:\"access-control-expose-headers\";a:1:{i:0;s:27:\"X-WP-Total, X-WP-TotalPages\";}s:28:\"access-control-allow-headers\";a:1:{i:0;s:27:\"Authorization, Content-Type\";}s:13:\"cache-control\";a:1:{i:0;s:10:\"max-age=60\";}s:5:\"allow\";a:1:{i:0;s:3:\"GET\";}s:16:\"content-encoding\";a:1:{i:0;s:4:\"gzip\";}s:4:\"x-rq\";a:1:{i:0;s:16:\"sin1 86 175 3109\";}s:3:\"age\";a:1:{i:0;s:2:\"31\";}s:7:\"x-cache\";a:1:{i:0;s:3:\"hit\";}s:4:\"vary\";a:1:{i:0;s:23:\"Accept-Encoding, Origin\";}s:13:\"accept-ranges\";a:1:{i:0;s:5:\"bytes\";}}}s:11:\"status_code\";i:200;s:16:\"protocol_version\";d:1.1;s:7:\"success\";b:1;s:9:\"redirects\";i:0;s:3:\"url\";s:81:\"https://woocommerce.com/wp-json/wccom-extensions/1.0/search?category=product-type\";s:7:\"history\";a:0:{}s:7:\"cookies\";O:19:\"Requests_Cookie_Jar\":1:{s:10:\"\0*\0cookies\";a:0:{}}}s:11:\"\0*\0filename\";N;s:4:\"data\";N;s:7:\"headers\";N;s:6:\"status\";N;}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(414, '_transient_woocommerce_reports-transient-version', '1590938372', 'yes'),
(415, '_transient_timeout_orders-all-statuses', '1591543291', 'no'),
(416, '_transient_orders-all-statuses', 'a:2:{s:7:\"version\";s:10:\"1590938372\";s:5:\"value\";a:0:{}}', 'no'),
(421, 'action_scheduler_migration_status', 'complete', 'yes'),
(423, 'theme_mods_storefront', 'a:14:{s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:6;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1590944511;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:8:\"search-2\";i:1;s:22:\"woocommerce_products-2\";i:2;s:12:\"categories-2\";i:3;s:32:\"woocommerce_product_categories-2\";i:4;s:14:\"recent-posts-4\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}s:12:\"header_image\";s:13:\"remove-header\";s:34:\"storefront_header_background_color\";s:7:\"#ffffff\";s:28:\"storefront_header_text_color\";s:7:\"#1e73be\";s:34:\"storefront_footer_background_color\";s:7:\"#00375b\";s:28:\"storefront_footer_text_color\";s:7:\"#ffffff\";s:28:\"storefront_footer_link_color\";s:7:\"#81d742\";s:16:\"background_color\";s:6:\"ffffff\";s:24:\"storefront_heading_color\";s:7:\"#333333\";s:34:\"storefront_button_background_color\";s:7:\"#1e73be\";s:28:\"storefront_button_text_color\";s:7:\"#ffffff\";s:17:\"storefront_layout\";s:4:\"left\";}', 'yes'),
(424, 'woocommerce_catalog_rows', '4', 'yes'),
(425, 'woocommerce_catalog_columns', '3', 'yes'),
(426, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(431, 'storefront_nux_fresh_site', '0', 'yes'),
(438, 'woocommerce_task_list_tracked_completed_tasks', 'a:1:{i:0;s:8:\"purchase\";}', 'yes'),
(439, '_transient_timeout_wc_tracks_blog_details', '1591024815', 'no'),
(440, '_transient_wc_tracks_blog_details', 'a:4:{s:3:\"url\";s:20:\"http://localhost/nxb\";s:9:\"blog_lang\";s:2:\"vi\";s:7:\"blog_id\";N;s:14:\"products_count\";i:0;}', 'no'),
(443, 'woocommerce_task_list_welcome_modal_dismissed', '1', 'yes'),
(448, 'woocommerce_task_list_hidden', 'yes', 'yes'),
(451, '_transient_timeout_wc_report_orders_stats_51a983d43eb480647112589093cc0c01', '1591543224', 'no'),
(452, '_transient_timeout_wc_report_orders_stats_f06e60c2ee53f7424cf6107090cd3206', '1591543224', 'no'),
(453, '_transient_wc_report_orders_stats_51a983d43eb480647112589093cc0c01', 'a:2:{s:7:\"version\";s:10:\"1590938372\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":16:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:5:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-22\";s:10:\"date_start\";s:19:\"2020-05-25 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-25 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-31 22:20:00\";s:12:\"date_end_gmt\";s:19:\"2020-05-31 22:20:00\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2020-21\";s:10:\"date_start\";s:19:\"2020-05-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-18 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-24 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-24 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2020-20\";s:10:\"date_start\";s:19:\"2020-05-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-11 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-17 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2020-19\";s:10:\"date_start\";s:19:\"2020-05-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-04 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:7:\"2020-18\";s:10:\"date_start\";s:19:\"2020-05-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:5;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(454, '_transient_timeout_wc_report_orders_stats_425cb0484f518a9617ee0c206491feed', '1591543224', 'no'),
(455, '_transient_wc_report_orders_stats_f06e60c2ee53f7424cf6107090cd3206', 'a:2:{s:7:\"version\";s:10:\"1590938372\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":7:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:8:\"products\";i:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:31:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-05-01\";s:10:\"date_start\";s:19:\"2020-05-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-05-02\";s:10:\"date_start\";s:19:\"2020-05-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2020-05-03\";s:10:\"date_start\";s:19:\"2020-05-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-03 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2020-05-04\";s:10:\"date_start\";s:19:\"2020-05-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-04 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2020-05-05\";s:10:\"date_start\";s:19:\"2020-05-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-05 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2020-05-06\";s:10:\"date_start\";s:19:\"2020-05-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-06 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2020-05-07\";s:10:\"date_start\";s:19:\"2020-05-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-07 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2020-05-08\";s:10:\"date_start\";s:19:\"2020-05-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-08 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2020-05-09\";s:10:\"date_start\";s:19:\"2020-05-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-09 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2020-05-10\";s:10:\"date_start\";s:19:\"2020-05-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-10 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2020-05-11\";s:10:\"date_start\";s:19:\"2020-05-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-11 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-11 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2020-05-12\";s:10:\"date_start\";s:19:\"2020-05-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-12 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2020-05-13\";s:10:\"date_start\";s:19:\"2020-05-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-13 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-13 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2020-05-14\";s:10:\"date_start\";s:19:\"2020-05-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-14 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2020-05-15\";s:10:\"date_start\";s:19:\"2020-05-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-15 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-15 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:15;a:6:{s:8:\"interval\";s:10:\"2020-05-16\";s:10:\"date_start\";s:19:\"2020-05-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-16 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-16 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:16;a:6:{s:8:\"interval\";s:10:\"2020-05-17\";s:10:\"date_start\";s:19:\"2020-05-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-17 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-17 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:17;a:6:{s:8:\"interval\";s:10:\"2020-05-18\";s:10:\"date_start\";s:19:\"2020-05-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-18 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-18 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:18;a:6:{s:8:\"interval\";s:10:\"2020-05-19\";s:10:\"date_start\";s:19:\"2020-05-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-19 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-19 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:19;a:6:{s:8:\"interval\";s:10:\"2020-05-20\";s:10:\"date_start\";s:19:\"2020-05-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-20 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-20 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:20;a:6:{s:8:\"interval\";s:10:\"2020-05-21\";s:10:\"date_start\";s:19:\"2020-05-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-21 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-21 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:21;a:6:{s:8:\"interval\";s:10:\"2020-05-22\";s:10:\"date_start\";s:19:\"2020-05-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-22 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-22 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:22;a:6:{s:8:\"interval\";s:10:\"2020-05-23\";s:10:\"date_start\";s:19:\"2020-05-23 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-23 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-23 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-23 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:23;a:6:{s:8:\"interval\";s:10:\"2020-05-24\";s:10:\"date_start\";s:19:\"2020-05-24 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-24 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-24 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-24 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:24;a:6:{s:8:\"interval\";s:10:\"2020-05-25\";s:10:\"date_start\";s:19:\"2020-05-25 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-25 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-25 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-25 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:25;a:6:{s:8:\"interval\";s:10:\"2020-05-26\";s:10:\"date_start\";s:19:\"2020-05-26 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-26 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-26 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-26 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:26;a:6:{s:8:\"interval\";s:10:\"2020-05-27\";s:10:\"date_start\";s:19:\"2020-05-27 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-27 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-27 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-27 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:27;a:6:{s:8:\"interval\";s:10:\"2020-05-28\";s:10:\"date_start\";s:19:\"2020-05-28 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-28 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-28 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-28 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:28;a:6:{s:8:\"interval\";s:10:\"2020-05-29\";s:10:\"date_start\";s:19:\"2020-05-29 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-29 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-29 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-29 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:29;a:6:{s:8:\"interval\";s:10:\"2020-05-30\";s:10:\"date_start\";s:19:\"2020-05-30 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-30 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-30 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-30 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:30;a:6:{s:8:\"interval\";s:10:\"2020-05-31\";s:10:\"date_start\";s:19:\"2020-05-31 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-31 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-31 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-31 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:31;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(456, '_transient_wc_report_orders_stats_425cb0484f518a9617ee0c206491feed', 'a:2:{s:7:\"version\";s:10:\"1590938372\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":16:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:5:{i:0;a:6:{s:8:\"interval\";s:7:\"2019-22\";s:10:\"date_start\";s:19:\"2019-05-27 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-27 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-31 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-31 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2019-21\";s:10:\"date_start\";s:19:\"2019-05-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-20 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-26 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-26 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2019-20\";s:10:\"date_start\";s:19:\"2019-05-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-13 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-19 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2019-19\";s:10:\"date_start\";s:19:\"2019-05-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-06 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:7:\"2019-18\";s:10:\"date_start\";s:19:\"2019-05-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:5;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(457, '_transient_timeout_wc_report_orders_stats_ee5ccf5e844f813a19b652447b8db777', '1591543224', 'no'),
(458, '_transient_timeout_wc_report_orders_stats_d6b7cb3effdff0e1283ced8f0b984759', '1591543224', 'no'),
(459, '_transient_timeout_wc_report_orders_stats_a1cdfe32bd719e0f4660685d70ad059c', '1591543224', 'no'),
(460, '_transient_timeout_wc_report_orders_stats_c3aa5ac77ec34e301c1dbf1415beb8a3', '1591543224', 'no'),
(461, '_transient_wc_report_orders_stats_d6b7cb3effdff0e1283ced8f0b984759', 'a:2:{s:7:\"version\";s:10:\"1590938372\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":16:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:5:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-22\";s:10:\"date_start\";s:19:\"2020-05-25 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-25 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-31 22:20:00\";s:12:\"date_end_gmt\";s:19:\"2020-05-31 22:20:00\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2020-21\";s:10:\"date_start\";s:19:\"2020-05-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-18 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-24 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-24 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2020-20\";s:10:\"date_start\";s:19:\"2020-05-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-11 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-17 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2020-19\";s:10:\"date_start\";s:19:\"2020-05-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-04 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:7:\"2020-18\";s:10:\"date_start\";s:19:\"2020-05-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:5;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(462, '_transient_wc_report_orders_stats_ee5ccf5e844f813a19b652447b8db777', 'a:2:{s:7:\"version\";s:10:\"1590938372\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":7:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:8:\"products\";i:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:31:{i:0;a:6:{s:8:\"interval\";s:10:\"2019-05-01\";s:10:\"date_start\";s:19:\"2019-05-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2019-05-02\";s:10:\"date_start\";s:19:\"2019-05-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-02 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2019-05-03\";s:10:\"date_start\";s:19:\"2019-05-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-03 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2019-05-04\";s:10:\"date_start\";s:19:\"2019-05-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-04 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2019-05-05\";s:10:\"date_start\";s:19:\"2019-05-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-05 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2019-05-06\";s:10:\"date_start\";s:19:\"2019-05-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-06 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2019-05-07\";s:10:\"date_start\";s:19:\"2019-05-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-07 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2019-05-08\";s:10:\"date_start\";s:19:\"2019-05-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-08 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2019-05-09\";s:10:\"date_start\";s:19:\"2019-05-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-09 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2019-05-10\";s:10:\"date_start\";s:19:\"2019-05-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-10 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2019-05-11\";s:10:\"date_start\";s:19:\"2019-05-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-11 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-11 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2019-05-12\";s:10:\"date_start\";s:19:\"2019-05-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-12 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2019-05-13\";s:10:\"date_start\";s:19:\"2019-05-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-13 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-13 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2019-05-14\";s:10:\"date_start\";s:19:\"2019-05-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-14 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2019-05-15\";s:10:\"date_start\";s:19:\"2019-05-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-15 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-15 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:15;a:6:{s:8:\"interval\";s:10:\"2019-05-16\";s:10:\"date_start\";s:19:\"2019-05-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-16 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-16 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:16;a:6:{s:8:\"interval\";s:10:\"2019-05-17\";s:10:\"date_start\";s:19:\"2019-05-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-17 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-17 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:17;a:6:{s:8:\"interval\";s:10:\"2019-05-18\";s:10:\"date_start\";s:19:\"2019-05-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-18 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-18 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:18;a:6:{s:8:\"interval\";s:10:\"2019-05-19\";s:10:\"date_start\";s:19:\"2019-05-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-19 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-19 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:19;a:6:{s:8:\"interval\";s:10:\"2019-05-20\";s:10:\"date_start\";s:19:\"2019-05-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-20 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-20 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:20;a:6:{s:8:\"interval\";s:10:\"2019-05-21\";s:10:\"date_start\";s:19:\"2019-05-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-21 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-21 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:21;a:6:{s:8:\"interval\";s:10:\"2019-05-22\";s:10:\"date_start\";s:19:\"2019-05-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-22 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-22 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:22;a:6:{s:8:\"interval\";s:10:\"2019-05-23\";s:10:\"date_start\";s:19:\"2019-05-23 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-23 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-23 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-23 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:23;a:6:{s:8:\"interval\";s:10:\"2019-05-24\";s:10:\"date_start\";s:19:\"2019-05-24 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-24 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-24 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-24 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:24;a:6:{s:8:\"interval\";s:10:\"2019-05-25\";s:10:\"date_start\";s:19:\"2019-05-25 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-25 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-25 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-25 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:25;a:6:{s:8:\"interval\";s:10:\"2019-05-26\";s:10:\"date_start\";s:19:\"2019-05-26 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-26 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-26 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-26 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:26;a:6:{s:8:\"interval\";s:10:\"2019-05-27\";s:10:\"date_start\";s:19:\"2019-05-27 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-27 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-27 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-27 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:27;a:6:{s:8:\"interval\";s:10:\"2019-05-28\";s:10:\"date_start\";s:19:\"2019-05-28 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-28 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-28 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-28 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:28;a:6:{s:8:\"interval\";s:10:\"2019-05-29\";s:10:\"date_start\";s:19:\"2019-05-29 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-29 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-29 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-29 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:29;a:6:{s:8:\"interval\";s:10:\"2019-05-30\";s:10:\"date_start\";s:19:\"2019-05-30 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-30 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-30 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-30 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:30;a:6:{s:8:\"interval\";s:10:\"2019-05-31\";s:10:\"date_start\";s:19:\"2019-05-31 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-31 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-31 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-31 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:11:\"total_sales\";d:0;s:11:\"net_revenue\";d:0;s:7:\"refunds\";d:0;s:8:\"shipping\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:31;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(463, '_transient_wc_report_orders_stats_c3aa5ac77ec34e301c1dbf1415beb8a3', 'a:2:{s:7:\"version\";s:10:\"1590938372\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":16:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:5:{i:0;a:6:{s:8:\"interval\";s:7:\"2019-22\";s:10:\"date_start\";s:19:\"2019-05-27 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-27 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-31 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-31 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2019-21\";s:10:\"date_start\";s:19:\"2019-05-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-20 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-26 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-26 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2019-20\";s:10:\"date_start\";s:19:\"2019-05-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-13 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-19 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2019-19\";s:10:\"date_start\";s:19:\"2019-05-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-06 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:7:\"2019-18\";s:10:\"date_start\";s:19:\"2019-05-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:5;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(464, '_transient_wc_report_orders_stats_a1cdfe32bd719e0f4660685d70ad059c', 'a:2:{s:7:\"version\";s:10:\"1590938372\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":5:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:8:\"products\";i:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:31:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-05-01\";s:10:\"date_start\";s:19:\"2020-05-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-05-02\";s:10:\"date_start\";s:19:\"2020-05-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2020-05-03\";s:10:\"date_start\";s:19:\"2020-05-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-03 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2020-05-04\";s:10:\"date_start\";s:19:\"2020-05-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-04 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2020-05-05\";s:10:\"date_start\";s:19:\"2020-05-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-05 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2020-05-06\";s:10:\"date_start\";s:19:\"2020-05-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-06 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2020-05-07\";s:10:\"date_start\";s:19:\"2020-05-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-07 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2020-05-08\";s:10:\"date_start\";s:19:\"2020-05-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-08 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2020-05-09\";s:10:\"date_start\";s:19:\"2020-05-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-09 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2020-05-10\";s:10:\"date_start\";s:19:\"2020-05-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-10 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2020-05-11\";s:10:\"date_start\";s:19:\"2020-05-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-11 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-11 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2020-05-12\";s:10:\"date_start\";s:19:\"2020-05-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-12 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2020-05-13\";s:10:\"date_start\";s:19:\"2020-05-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-13 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-13 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2020-05-14\";s:10:\"date_start\";s:19:\"2020-05-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-14 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2020-05-15\";s:10:\"date_start\";s:19:\"2020-05-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-15 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-15 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:15;a:6:{s:8:\"interval\";s:10:\"2020-05-16\";s:10:\"date_start\";s:19:\"2020-05-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-16 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-16 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:16;a:6:{s:8:\"interval\";s:10:\"2020-05-17\";s:10:\"date_start\";s:19:\"2020-05-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-17 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-17 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:17;a:6:{s:8:\"interval\";s:10:\"2020-05-18\";s:10:\"date_start\";s:19:\"2020-05-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-18 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-18 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:18;a:6:{s:8:\"interval\";s:10:\"2020-05-19\";s:10:\"date_start\";s:19:\"2020-05-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-19 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-19 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:19;a:6:{s:8:\"interval\";s:10:\"2020-05-20\";s:10:\"date_start\";s:19:\"2020-05-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-20 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-20 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:20;a:6:{s:8:\"interval\";s:10:\"2020-05-21\";s:10:\"date_start\";s:19:\"2020-05-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-21 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-21 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:21;a:6:{s:8:\"interval\";s:10:\"2020-05-22\";s:10:\"date_start\";s:19:\"2020-05-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-22 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-22 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:22;a:6:{s:8:\"interval\";s:10:\"2020-05-23\";s:10:\"date_start\";s:19:\"2020-05-23 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-23 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-23 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-23 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:23;a:6:{s:8:\"interval\";s:10:\"2020-05-24\";s:10:\"date_start\";s:19:\"2020-05-24 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-24 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-24 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-24 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:24;a:6:{s:8:\"interval\";s:10:\"2020-05-25\";s:10:\"date_start\";s:19:\"2020-05-25 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-25 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-25 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-25 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:25;a:6:{s:8:\"interval\";s:10:\"2020-05-26\";s:10:\"date_start\";s:19:\"2020-05-26 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-26 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-26 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-26 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:26;a:6:{s:8:\"interval\";s:10:\"2020-05-27\";s:10:\"date_start\";s:19:\"2020-05-27 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-27 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-27 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-27 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:27;a:6:{s:8:\"interval\";s:10:\"2020-05-28\";s:10:\"date_start\";s:19:\"2020-05-28 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-28 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-28 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-28 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:28;a:6:{s:8:\"interval\";s:10:\"2020-05-29\";s:10:\"date_start\";s:19:\"2020-05-29 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-29 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-29 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-29 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:29;a:6:{s:8:\"interval\";s:10:\"2020-05-30\";s:10:\"date_start\";s:19:\"2020-05-30 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-30 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-30 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-30 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:30;a:6:{s:8:\"interval\";s:10:\"2020-05-31\";s:10:\"date_start\";s:19:\"2020-05-31 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-05-31 00:00:00\";s:8:\"date_end\";s:19:\"2020-05-31 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-05-31 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:31;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(467, '_transient_timeout_wc_report_orders_stats_da53fe9d79360d5379a8cfa4a284aba5', '1591543226', 'no'),
(468, '_transient_wc_report_orders_stats_da53fe9d79360d5379a8cfa4a284aba5', 'a:2:{s:7:\"version\";s:10:\"1590938372\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":5:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:8:\"products\";i:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:31:{i:0;a:6:{s:8:\"interval\";s:10:\"2019-05-01\";s:10:\"date_start\";s:19:\"2019-05-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2019-05-02\";s:10:\"date_start\";s:19:\"2019-05-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-02 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2019-05-03\";s:10:\"date_start\";s:19:\"2019-05-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-03 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2019-05-04\";s:10:\"date_start\";s:19:\"2019-05-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-04 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2019-05-05\";s:10:\"date_start\";s:19:\"2019-05-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-05 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2019-05-06\";s:10:\"date_start\";s:19:\"2019-05-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-06 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2019-05-07\";s:10:\"date_start\";s:19:\"2019-05-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-07 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2019-05-08\";s:10:\"date_start\";s:19:\"2019-05-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-08 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2019-05-09\";s:10:\"date_start\";s:19:\"2019-05-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-09 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2019-05-10\";s:10:\"date_start\";s:19:\"2019-05-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-10 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2019-05-11\";s:10:\"date_start\";s:19:\"2019-05-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-11 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-11 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2019-05-12\";s:10:\"date_start\";s:19:\"2019-05-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-12 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2019-05-13\";s:10:\"date_start\";s:19:\"2019-05-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-13 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-13 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2019-05-14\";s:10:\"date_start\";s:19:\"2019-05-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-14 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2019-05-15\";s:10:\"date_start\";s:19:\"2019-05-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-15 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-15 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:15;a:6:{s:8:\"interval\";s:10:\"2019-05-16\";s:10:\"date_start\";s:19:\"2019-05-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-16 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-16 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:16;a:6:{s:8:\"interval\";s:10:\"2019-05-17\";s:10:\"date_start\";s:19:\"2019-05-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-17 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-17 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:17;a:6:{s:8:\"interval\";s:10:\"2019-05-18\";s:10:\"date_start\";s:19:\"2019-05-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-18 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-18 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:18;a:6:{s:8:\"interval\";s:10:\"2019-05-19\";s:10:\"date_start\";s:19:\"2019-05-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-19 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-19 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:19;a:6:{s:8:\"interval\";s:10:\"2019-05-20\";s:10:\"date_start\";s:19:\"2019-05-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-20 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-20 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:20;a:6:{s:8:\"interval\";s:10:\"2019-05-21\";s:10:\"date_start\";s:19:\"2019-05-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-21 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-21 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:21;a:6:{s:8:\"interval\";s:10:\"2019-05-22\";s:10:\"date_start\";s:19:\"2019-05-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-22 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-22 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:22;a:6:{s:8:\"interval\";s:10:\"2019-05-23\";s:10:\"date_start\";s:19:\"2019-05-23 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-23 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-23 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-23 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:23;a:6:{s:8:\"interval\";s:10:\"2019-05-24\";s:10:\"date_start\";s:19:\"2019-05-24 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-24 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-24 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-24 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:24;a:6:{s:8:\"interval\";s:10:\"2019-05-25\";s:10:\"date_start\";s:19:\"2019-05-25 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-25 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-25 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-25 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:25;a:6:{s:8:\"interval\";s:10:\"2019-05-26\";s:10:\"date_start\";s:19:\"2019-05-26 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-26 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-26 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-26 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:26;a:6:{s:8:\"interval\";s:10:\"2019-05-27\";s:10:\"date_start\";s:19:\"2019-05-27 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-27 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-27 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-27 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:27;a:6:{s:8:\"interval\";s:10:\"2019-05-28\";s:10:\"date_start\";s:19:\"2019-05-28 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-28 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-28 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-28 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:28;a:6:{s:8:\"interval\";s:10:\"2019-05-29\";s:10:\"date_start\";s:19:\"2019-05-29 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-29 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-29 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-29 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:29;a:6:{s:8:\"interval\";s:10:\"2019-05-30\";s:10:\"date_start\";s:19:\"2019-05-30 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-30 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-30 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-30 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:30;a:6:{s:8:\"interval\";s:10:\"2019-05-31\";s:10:\"date_start\";s:19:\"2019-05-31 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-05-31 00:00:00\";s:8:\"date_end\";s:19:\"2019-05-31 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-05-31 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:12:\"orders_count\";i:0;s:15:\"avg_order_value\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:31;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(480, '_transient_product_query-transient-version', '1590947040', 'yes'),
(487, 'product_cat_children', 'a:1:{i:21;a:3:{i:0;i:22;i:1;i:23;i:2;i:24;}}', 'yes'),
(492, '_transient_product-transient-version', '1590938913', 'yes'),
(500, '_transient_timeout_wc_product_loop_35b359e40c026cf96a7cc44ec9e75ea4', '1593530769', 'no'),
(501, '_transient_wc_product_loop_35b359e40c026cf96a7cc44ec9e75ea4', 'a:2:{s:7:\"version\";s:10:\"1590938749\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:57;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:2;s:12:\"current_page\";i:1;}}', 'no'),
(504, '_transient_timeout_wc_product_loop_45eabf8fa0eefc30a29816b585b3ac67', '1593530769', 'no'),
(505, '_transient_wc_product_loop_45eabf8fa0eefc30a29816b585b3ac67', 'a:2:{s:7:\"version\";s:10:\"1590938749\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:57;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}', 'no'),
(506, '_transient_timeout_wc_related_57', '1591033501', 'no'),
(507, '_transient_wc_related_57', 'a:2:{s:50:\"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=57\";a:0:{}s:50:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=57\";a:1:{i:0;s:2:\"59\";}}', 'no'),
(511, '_transient_timeout_woocommerce_admin_low_out_of_stock_count', '1590942516', 'no'),
(512, '_transient_woocommerce_admin_low_out_of_stock_count', '0', 'no'),
(514, 'storefront_nux_guided_tour', '1', 'yes'),
(520, '_transient_timeout__woocommerce_helper_updates', '1590982293', 'no'),
(521, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1590939093;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(527, 'theme_mods_moto-news', 'a:8:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:6;}s:18:\"custom_css_post_id\";i:-1;s:16:\"header_textcolor\";s:6:\"d7d7d7\";s:12:\"header_image\";s:70:\"http://localhost/nxb/wp-content/uploads/2020/05/cropped-download-1.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:66;s:3:\"url\";s:70:\"http://localhost/nxb/wp-content/uploads/2020/05/cropped-download-1.jpg\";s:13:\"thumbnail_url\";s:70:\"http://localhost/nxb/wp-content/uploads/2020/05/cropped-download-1.jpg\";s:6:\"height\";i:399;s:5:\"width\";i:1900;}s:13:\"theme_options\";a:6:{s:11:\"show_ticker\";b:1;s:12:\"ticker_title\";s:9:\"Tin mới\";s:13:\"ticker_number\";i:5;s:21:\"show_social_in_header\";b:0;s:12:\"show_tagline\";b:1;s:9:\"show_date\";b:0;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1590940425;s:4:\"data\";a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:22:\"woocommerce_products-2\";i:2;s:12:\"categories-2\";}s:9:\"sidebar-2\";a:2:{i:0;s:32:\"woocommerce_product_categories-2\";i:1;s:14:\"recent-posts-4\";}s:30:\"sidebar-front-page-widget-area\";a:0:{}s:12:\"header-right\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(528, 'widget_magazine-plus-social', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(529, 'widget_magazine-plus-image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(530, 'widget_magazine-plus-featured-page', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(531, 'widget_magazine-plus-latest-news', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(532, 'widget_magazine-plus-recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(533, 'widget_magazine-plus-news-slider', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(534, 'widget_magazine-plus-tabbed', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(578, '_transient_shipping-transient-version', '1590939525', 'yes'),
(579, '_transient_timeout_wc_shipping_method_count_legacy', '1593531526', 'no'),
(580, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1590939525\";s:5:\"value\";i:0;}', 'no'),
(590, '_transient_timeout_wc_term_counts', '1593531734', 'no'),
(591, '_transient_wc_term_counts', 'a:2:{i:22;s:1:\"2\";i:21;s:1:\"2\";}', 'no'),
(596, '_transient_magazine_plus_categories', '1', 'yes'),
(597, '_transient_timeout_wc_related_59', '1591033564', 'no'),
(598, '_transient_wc_related_59', 'a:1:{s:50:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=59\";a:1:{i:0;s:2:\"57\";}}', 'no'),
(611, 'theme_mods_online-shop', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:6;}s:18:\"custom_css_post_id\";i:-1;s:25:\"online_shop_theme_options\";a:15:{s:29:\"online-shop-enable-header-top\";b:0;s:51:\"online-shop-header-top-basic-info-display-selection\";s:5:\"right\";s:47:\"online-shop-header-top-social-display-selection\";s:4:\"hide\";s:28:\"online-shop-third-info-title\";s:12:\"Địa chỉ\";s:27:\"online-shop-third-info-link\";s:0:\"\";s:29:\"online-shop-display-site-logo\";b:1;s:28:\"online-shop-enable-cart-icon\";b:0;s:32:\"online-shop-display-site-tagline\";b:0;s:44:\"online-shop-header-logo-ads-display-position\";s:21:\"center-logo-below-ads\";s:31:\"online-shop-enable-special-menu\";b:1;s:29:\"online-shop-special-menu-text\";s:23:\"Danh mục sản phẩm\";s:30:\"online-shop-enable-sticky-menu\";b:1;s:28:\"online-shop-footer-copyright\";s:102:\"NXB Đại học Sư Phạm, 280 An Dương Vương, phường 4 Quận 5, thành phố Hồ Chí Minh\";s:36:\"online-shop-enable-footer-power-text\";b:0;s:33:\"online-shop-single-sidebar-layout\";s:12:\"both-sidebar\";}s:11:\"custom_logo\";i:44;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1590941352;s:4:\"data\";a:17:{s:19:\"wp_inactive_widgets\";a:0:{}s:19:\"online-shop-sidebar\";a:3:{i:0;s:8:\"search-2\";i:1;s:22:\"woocommerce_products-2\";i:2;s:12:\"categories-2\";}s:16:\"online-shop-home\";a:0:{}s:24:\"online-shop-sidebar-left\";a:2:{i:0;s:32:\"woocommerce_product_categories-2\";i:1;s:14:\"recent-posts-4\";}s:18:\"online-shop-header\";a:0:{}s:26:\"online-shop-before-feature\";a:0:{}s:20:\"single-after-content\";a:0:{}s:21:\"full-width-top-footer\";a:0:{}s:18:\"footer-top-col-one\";a:0:{}s:18:\"footer-top-col-two\";a:0:{}s:20:\"footer-top-col-three\";a:0:{}s:19:\"footer-top-col-four\";a:0:{}s:21:\"footer-bottom-col-one\";a:0:{}s:21:\"footer-bottom-col-two\";a:0:{}s:24:\"full-width-bottom-footer\";a:0:{}s:23:\"footer-bottom-left-area\";a:0:{}s:17:\"popup-widget-area\";a:0:{}}}}', 'yes'),
(612, 'widget_online_shop_posts_col', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(613, 'widget_online_shop_about', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(614, 'widget_online_shop_advanced_image_logo', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(615, 'widget_online_shop_featured_page', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(616, 'widget_online_shop_social', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(617, 'widget_online_shop_wc_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(618, 'widget_online_shop_advanced_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(619, 'widget_online_shop_wc_feature_cats', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(620, 'widget_online_shop_wc_cats_tabs', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(656, 'theme_mods_magazine-plus', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:6;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1590941627;s:4:\"data\";a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:22:\"woocommerce_products-2\";i:2;s:12:\"categories-2\";}s:9:\"sidebar-2\";a:2:{i:0;s:32:\"woocommerce_product_categories-2\";i:1;s:14:\"recent-posts-4\";}s:30:\"sidebar-front-page-widget-area\";a:0:{}s:12:\"header-right\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(714, 'theme_mods_orchid-store', 'a:11:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:6;}s:18:\"custom_css_post_id\";i:-1;s:30:\"orchid_store_field_site_layout\";s:9:\"fullwidth\";s:47:\"orchid_store_field_enable_sidebar_small_devices\";b:0;s:49:\"orchid_store_field_enable_global_sidebar_position\";b:0;s:42:\"orchid_store_field_global_sidebar_position\";s:5:\"right\";s:16:\"background_color\";s:6:\"ffffff\";s:32:\"orchid_store_field_primary_color\";s:7:\"#097e96\";s:34:\"orchid_store_field_secondary_color\";s:7:\"#000000\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1590943292;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:8:\"search-2\";i:1;s:22:\"woocommerce_products-2\";i:2;s:12:\"categories-2\";i:3;s:32:\"woocommerce_product_categories-2\";i:4;s:14:\"recent-posts-4\";}s:9:\"sidebar-2\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:19:\"woocommerce-sidebar\";a:0:{}}}}', 'yes'),
(715, 'widget_orchid-store-banner-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(716, 'widget_orchid-store-post-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(717, 'widget_orchid-store-advertisement-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(718, 'widget_orchid-store-services-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(719, 'widget_orchid-store-about-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(720, 'widget_orchid-store-featured-product-categories-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(721, 'widget_orchid-store-products-filter-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(722, 'widget_orchid-store-products-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(789, 'theme_mods_bcf-shop', 'a:8:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:6;}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:72:\"http://localhost/nxb/wp-content/uploads/2020/05/cropped-download-1-1.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:82;s:3:\"url\";s:72:\"http://localhost/nxb/wp-content/uploads/2020/05/cropped-download-1-1.jpg\";s:13:\"thumbnail_url\";s:72:\"http://localhost/nxb/wp-content/uploads/2020/05/cropped-download-1-1.jpg\";s:6:\"height\";i:250;s:5:\"width\";i:1000;}s:22:\"blog_loop_content_type\";s:7:\"excerpt\";s:16:\"index_hide_thumb\";b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1590943634;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:8:\"search-2\";i:1;s:22:\"woocommerce_products-2\";i:2;s:12:\"categories-2\";i:3;s:32:\"woocommerce_product_categories-2\";i:4;s:14:\"recent-posts-4\";}s:10:\"logo-right\";a:0:{}s:6:\"footer\";a:0:{}s:18:\"front_page_sidebar\";a:0:{}}}}', 'yes'),
(790, 'widget_business-consultant-finder-header-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(863, 'theme_mods_stoready', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:6;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1590944793;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:8:\"search-2\";i:1;s:22:\"woocommerce_products-2\";i:2;s:12:\"categories-2\";i:3;s:32:\"woocommerce_product_categories-2\";i:4;s:14:\"recent-posts-4\";}s:21:\"woocommerce-sidebar-1\";a:0:{}s:17:\"footer-widget-one\";a:0:{}s:17:\"footer-widget-two\";a:0:{}s:19:\"footer-widget-three\";a:0:{}}}}', 'yes'),
(924, 'theme_mods_alluring-ecommerce', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:6;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1590945089;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:8:\"search-2\";i:1;s:22:\"woocommerce_products-2\";i:2;s:12:\"categories-2\";i:3;s:32:\"woocommerce_product_categories-2\";i:4;s:14:\"recent-posts-4\";}s:21:\"woocommerce-sidebar-1\";a:0:{}s:17:\"footer-widget-one\";a:0:{}s:17:\"footer-widget-two\";a:0:{}s:19:\"footer-widget-three\";a:0:{}}}}', 'yes'),
(936, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1590945086;s:15:\"version_checked\";s:5:\"5.4.1\";s:12:\"translations\";a:0:{}}', 'no'),
(938, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1590945089;s:7:\"checked\";a:4:{s:18:\"alluring-ecommerce\";s:3:\"1.2\";s:10:\"basicstore\";s:5:\"1.5.1\";s:9:\"gutenshop\";s:3:\"4.6\";s:10:\"storefront\";s:5:\"2.5.6\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(940, 'theme_mods_basicstore', 'a:11:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:12:\"primary-left\";i:6;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:44;s:16:\"header_textcolor\";s:6:\"333333\";s:16:\"background_color\";s:6:\"ffffff\";s:12:\"header_image\";s:86:\"http://localhost/nxb/wp-content/uploads/2020/05/Hanoi-Lotte-Center-Serviced-Office.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:97;s:3:\"url\";s:86:\"http://localhost/nxb/wp-content/uploads/2020/05/Hanoi-Lotte-Center-Serviced-Office.jpg\";s:13:\"thumbnail_url\";s:86:\"http://localhost/nxb/wp-content/uploads/2020/05/Hanoi-Lotte-Center-Serviced-Office.jpg\";s:6:\"height\";i:800;s:5:\"width\";i:1920;}s:16:\"background_image\";s:163:\"http://localhost/nxb/wp-content/uploads/2020/05/89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-2.jpg\";s:21:\"background_position_x\";s:6:\"center\";s:21:\"background_position_y\";s:6:\"center\";}', 'yes'),
(941, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1590945092;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:11:{s:59:\"advanced-page-visit-counter/advanced-page-visit-counter.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/advanced-page-visit-counter\";s:4:\"slug\";s:27:\"advanced-page-visit-counter\";s:6:\"plugin\";s:59:\"advanced-page-visit-counter/advanced-page-visit-counter.php\";s:11:\"new_version\";s:5:\"3.0.5\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/advanced-page-visit-counter/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/advanced-page-visit-counter.3.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/advanced-page-visit-counter/assets/icon-256x256.png?rev=2300049\";s:2:\"1x\";s:80:\"https://ps.w.org/advanced-page-visit-counter/assets/icon-128x128.png?rev=2300049\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/advanced-page-visit-counter/assets/banner-1544x500.jpg?rev=2300049\";s:2:\"1x\";s:82:\"https://ps.w.org/advanced-page-visit-counter/assets/banner-772x250.png?rev=2300049\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"disable-gutenberg/disable-gutenberg.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/disable-gutenberg\";s:4:\"slug\";s:17:\"disable-gutenberg\";s:6:\"plugin\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/disable-gutenberg/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/disable-gutenberg.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-256x256.png?rev=1925990\";s:2:\"1x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-128x128.png?rev=1925990\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:21:\"gutentor/gutentor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/gutentor\";s:4:\"slug\";s:8:\"gutentor\";s:6:\"plugin\";s:21:\"gutentor/gutentor.php\";s:11:\"new_version\";s:5:\"2.1.2\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/gutentor/\";s:7:\"package\";s:51:\"https://downloads.wordpress.org/plugin/gutentor.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:61:\"https://ps.w.org/gutentor/assets/icon-256x256.png?rev=2144459\";s:2:\"1x\";s:53:\"https://ps.w.org/gutentor/assets/icon.svg?rev=2144459\";s:3:\"svg\";s:53:\"https://ps.w.org/gutentor/assets/icon.svg?rev=2144459\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/gutentor/assets/banner-1544x500.png?rev=2144459\";s:2:\"1x\";s:63:\"https://ps.w.org/gutentor/assets/banner-772x250.png?rev=2144459\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:3:\"8.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/jetpack.8.5.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/mailchimp-for-woocommerce\";s:4:\"slug\";s:25:\"mailchimp-for-woocommerce\";s:6:\"plugin\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:11:\"new_version\";s:5:\"2.4.0\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/mailchimp-for-woocommerce/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/mailchimp-for-woocommerce.2.4.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";s:2:\"1x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-1544x500.png?rev=1950415\";s:2:\"1x\";s:80:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-772x250.jpg?rev=1950415\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"recent-posts-widget-extended/rpwe.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:42:\"w.org/plugins/recent-posts-widget-extended\";s:4:\"slug\";s:28:\"recent-posts-widget-extended\";s:6:\"plugin\";s:37:\"recent-posts-widget-extended/rpwe.php\";s:11:\"new_version\";s:7:\"0.9.9.7\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/recent-posts-widget-extended/\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/plugin/recent-posts-widget-extended.0.9.9.7.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:81:\"https://ps.w.org/recent-posts-widget-extended/assets/icon-128x128.png?rev=1240338\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/recent-posts-widget-extended/assets/banner-772x250.png?rev=900647\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"tinymce-advanced/tinymce-advanced.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/tinymce-advanced\";s:4:\"slug\";s:16:\"tinymce-advanced\";s:6:\"plugin\";s:37:\"tinymce-advanced/tinymce-advanced.php\";s:11:\"new_version\";s:5:\"5.4.0\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/tinymce-advanced/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/tinymce-advanced.5.4.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-256x256.png?rev=971511\";s:2:\"1x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-128x128.png?rev=971511\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/tinymce-advanced/assets/banner-1544x500.png?rev=2011513\";s:2:\"1x\";s:71:\"https://ps.w.org/tinymce-advanced/assets/banner-772x250.png?rev=2011513\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.1.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"woocommerce-services/woocommerce-services.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/woocommerce-services\";s:4:\"slug\";s:20:\"woocommerce-services\";s:6:\"plugin\";s:45:\"woocommerce-services/woocommerce-services.php\";s:11:\"new_version\";s:6:\"1.23.0\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/woocommerce-services/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/woocommerce-services.1.23.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-256x256.png?rev=1910075\";s:2:\"1x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-128x128.png?rev=1910075\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/woocommerce-services/assets/banner-1544x500.png?rev=1962920\";s:2:\"1x\";s:75:\"https://ps.w.org/woocommerce-services/assets/banner-772x250.png?rev=1962920\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(961, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 7, '_edit_last', '1'),
(4, 7, '_edit_lock', '1590676574:1'),
(5, 8, '_wp_attached_file', '2020/05/Cac-vi-du-va-phan-vi-du-trong-dai-so-2-scaled.jpg'),
(6, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1774;s:6:\"height\";i:2560;s:4:\"file\";s:57:\"2020/05/Cac-vi-du-va-phan-vi-du-trong-dai-so-2-scaled.jpg\";s:5:\"sizes\";a:13:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:57:\"Cac-vi-du-va-phan-vi-du-trong-dai-so-2-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:57:\"Cac-vi-du-va-phan-vi-du-trong-dai-so-2-scaled-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:57:\"Cac-vi-du-va-phan-vi-du-trong-dai-so-2-scaled-600x866.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:866;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"Cac-vi-du-va-phan-vi-du-trong-dai-so-2-208x300.jpg\";s:5:\"width\";i:208;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:51:\"Cac-vi-du-va-phan-vi-du-trong-dai-so-2-710x1024.jpg\";s:5:\"width\";i:710;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"Cac-vi-du-va-phan-vi-du-trong-dai-so-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:51:\"Cac-vi-du-va-phan-vi-du-trong-dai-so-2-768x1108.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1108;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:52:\"Cac-vi-du-va-phan-vi-du-trong-dai-so-2-1064x1536.jpg\";s:5:\"width\";i:1064;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:52:\"Cac-vi-du-va-phan-vi-du-trong-dai-so-2-1419x2048.jpg\";s:5:\"width\";i:1419;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"blossom-recipe-schema\";a:4:{s:4:\"file\";s:48:\"Cac-vi-du-va-phan-vi-du-trong-dai-so-2-42x60.jpg\";s:5:\"width\";i:42;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"blossom-recipe-slider\";a:4:{s:4:\"file\";s:50:\"Cac-vi-du-va-phan-vi-du-trong-dai-so-2-480x702.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:702;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"blossom-recipe-blog\";a:4:{s:4:\"file\";s:50:\"Cac-vi-du-va-phan-vi-du-trong-dai-so-2-800x840.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"blossom-recipe-blog-one\";a:4:{s:4:\"file\";s:51:\"Cac-vi-du-va-phan-vi-du-trong-dai-so-2-1170x840.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 9, '_wp_attached_file', '2020/05/Cac-vi-du-va-phan-vi-du-trong-dai-so-scaled.jpg'),
(8, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1765;s:6:\"height\";i:2560;s:4:\"file\";s:55:\"2020/05/Cac-vi-du-va-phan-vi-du-trong-dai-so-scaled.jpg\";s:5:\"sizes\";a:13:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:55:\"Cac-vi-du-va-phan-vi-du-trong-dai-so-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:55:\"Cac-vi-du-va-phan-vi-du-trong-dai-so-scaled-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:55:\"Cac-vi-du-va-phan-vi-du-trong-dai-so-scaled-600x870.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:870;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Cac-vi-du-va-phan-vi-du-trong-dai-so-207x300.jpg\";s:5:\"width\";i:207;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"Cac-vi-du-va-phan-vi-du-trong-dai-so-706x1024.jpg\";s:5:\"width\";i:706;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Cac-vi-du-va-phan-vi-du-trong-dai-so-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"Cac-vi-du-va-phan-vi-du-trong-dai-so-768x1114.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1114;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:50:\"Cac-vi-du-va-phan-vi-du-trong-dai-so-1059x1536.jpg\";s:5:\"width\";i:1059;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:50:\"Cac-vi-du-va-phan-vi-du-trong-dai-so-1412x2048.jpg\";s:5:\"width\";i:1412;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"blossom-recipe-schema\";a:4:{s:4:\"file\";s:46:\"Cac-vi-du-va-phan-vi-du-trong-dai-so-41x60.jpg\";s:5:\"width\";i:41;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"blossom-recipe-slider\";a:4:{s:4:\"file\";s:48:\"Cac-vi-du-va-phan-vi-du-trong-dai-so-480x702.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:702;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"blossom-recipe-blog\";a:4:{s:4:\"file\";s:48:\"Cac-vi-du-va-phan-vi-du-trong-dai-so-800x840.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"blossom-recipe-blog-one\";a:4:{s:4:\"file\";s:49:\"Cac-vi-du-va-phan-vi-du-trong-dai-so-1170x840.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11, 7, '_blossom_recipe_sidebar_layout', 'default-sidebar'),
(12, 7, '_thumbnail_id', '9'),
(15, 11, '_edit_last', '1'),
(16, 11, '_edit_lock', '1590677029:1'),
(17, 12, '_wp_attached_file', '2020/05/Chay-cu-ly-ngan-2-scaled.jpg'),
(18, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1738;s:6:\"height\";i:2560;s:4:\"file\";s:36:\"2020/05/Chay-cu-ly-ngan-2-scaled.jpg\";s:5:\"sizes\";a:13:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"Chay-cu-ly-ngan-2-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"Chay-cu-ly-ngan-2-scaled-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:36:\"Chay-cu-ly-ngan-2-scaled-600x884.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:884;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"Chay-cu-ly-ngan-2-204x300.jpg\";s:5:\"width\";i:204;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"Chay-cu-ly-ngan-2-695x1024.jpg\";s:5:\"width\";i:695;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"Chay-cu-ly-ngan-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"Chay-cu-ly-ngan-2-768x1131.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1131;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:31:\"Chay-cu-ly-ngan-2-1043x1536.jpg\";s:5:\"width\";i:1043;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:31:\"Chay-cu-ly-ngan-2-1390x2048.jpg\";s:5:\"width\";i:1390;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"blossom-recipe-schema\";a:4:{s:4:\"file\";s:27:\"Chay-cu-ly-ngan-2-41x60.jpg\";s:5:\"width\";i:41;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"blossom-recipe-slider\";a:4:{s:4:\"file\";s:29:\"Chay-cu-ly-ngan-2-480x702.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:702;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"blossom-recipe-blog\";a:4:{s:4:\"file\";s:29:\"Chay-cu-ly-ngan-2-800x840.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"blossom-recipe-blog-one\";a:4:{s:4:\"file\";s:30:\"Chay-cu-ly-ngan-2-1170x840.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 13, '_wp_attached_file', '2020/05/Chay-cu-ly-ngan-scaled.jpg'),
(20, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1741;s:6:\"height\";i:2560;s:4:\"file\";s:34:\"2020/05/Chay-cu-ly-ngan-scaled.jpg\";s:5:\"sizes\";a:13:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"Chay-cu-ly-ngan-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"Chay-cu-ly-ngan-scaled-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"Chay-cu-ly-ngan-scaled-600x882.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:882;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Chay-cu-ly-ngan-204x300.jpg\";s:5:\"width\";i:204;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"Chay-cu-ly-ngan-697x1024.jpg\";s:5:\"width\";i:697;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Chay-cu-ly-ngan-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"Chay-cu-ly-ngan-768x1129.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1129;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:29:\"Chay-cu-ly-ngan-1045x1536.jpg\";s:5:\"width\";i:1045;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:29:\"Chay-cu-ly-ngan-1393x2048.jpg\";s:5:\"width\";i:1393;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"blossom-recipe-schema\";a:4:{s:4:\"file\";s:25:\"Chay-cu-ly-ngan-41x60.jpg\";s:5:\"width\";i:41;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"blossom-recipe-slider\";a:4:{s:4:\"file\";s:27:\"Chay-cu-ly-ngan-480x702.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:702;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"blossom-recipe-blog\";a:4:{s:4:\"file\";s:27:\"Chay-cu-ly-ngan-800x840.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"blossom-recipe-blog-one\";a:4:{s:4:\"file\";s:28:\"Chay-cu-ly-ngan-1170x840.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 11, '_thumbnail_id', '13'),
(24, 11, '_blossom_recipe_sidebar_layout', 'default-sidebar'),
(25, 15, '_menu_item_type', 'custom'),
(26, 15, '_menu_item_menu_item_parent', '0'),
(27, 15, '_menu_item_object_id', '15'),
(28, 15, '_menu_item_object', 'custom'),
(29, 15, '_menu_item_target', ''),
(30, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(31, 15, '_menu_item_xfn', ''),
(32, 15, '_menu_item_url', 'http://localhost/nxb/'),
(33, 15, '_menu_item_orphaned', '1590676841'),
(34, 16, '_menu_item_type', 'post_type'),
(35, 16, '_menu_item_menu_item_parent', '0'),
(36, 16, '_menu_item_object_id', '2'),
(37, 16, '_menu_item_object', 'page'),
(38, 16, '_menu_item_target', ''),
(39, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(40, 16, '_menu_item_xfn', ''),
(41, 16, '_menu_item_url', ''),
(42, 16, '_menu_item_orphaned', '1590676842'),
(43, 17, '_edit_last', '1'),
(44, 17, '_edit_lock', '1590677024:1'),
(45, 18, '_wp_attached_file', '2020/05/Chuye-de-triet-hoc-2-scaled.jpg'),
(46, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1819;s:6:\"height\";i:2560;s:4:\"file\";s:39:\"2020/05/Chuye-de-triet-hoc-2-scaled.jpg\";s:5:\"sizes\";a:13:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:39:\"Chuye-de-triet-hoc-2-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:39:\"Chuye-de-triet-hoc-2-scaled-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:39:\"Chuye-de-triet-hoc-2-scaled-600x844.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:844;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Chuye-de-triet-hoc-2-213x300.jpg\";s:5:\"width\";i:213;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"Chuye-de-triet-hoc-2-728x1024.jpg\";s:5:\"width\";i:728;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Chuye-de-triet-hoc-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"Chuye-de-triet-hoc-2-768x1081.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1081;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:34:\"Chuye-de-triet-hoc-2-1092x1536.jpg\";s:5:\"width\";i:1092;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:34:\"Chuye-de-triet-hoc-2-1455x2048.jpg\";s:5:\"width\";i:1455;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"blossom-recipe-schema\";a:4:{s:4:\"file\";s:30:\"Chuye-de-triet-hoc-2-43x60.jpg\";s:5:\"width\";i:43;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"blossom-recipe-slider\";a:4:{s:4:\"file\";s:32:\"Chuye-de-triet-hoc-2-480x702.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:702;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"blossom-recipe-blog\";a:4:{s:4:\"file\";s:32:\"Chuye-de-triet-hoc-2-800x840.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"blossom-recipe-blog-one\";a:4:{s:4:\"file\";s:33:\"Chuye-de-triet-hoc-2-1170x840.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 19, '_wp_attached_file', '2020/05/Chuye-de-triet-hoc-scaled.jpg'),
(48, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1809;s:6:\"height\";i:2560;s:4:\"file\";s:37:\"2020/05/Chuye-de-triet-hoc-scaled.jpg\";s:5:\"sizes\";a:13:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:37:\"Chuye-de-triet-hoc-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:37:\"Chuye-de-triet-hoc-scaled-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:37:\"Chuye-de-triet-hoc-scaled-600x849.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:849;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Chuye-de-triet-hoc-212x300.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"Chuye-de-triet-hoc-723x1024.jpg\";s:5:\"width\";i:723;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Chuye-de-triet-hoc-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"Chuye-de-triet-hoc-768x1087.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1087;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:32:\"Chuye-de-triet-hoc-1085x1536.jpg\";s:5:\"width\";i:1085;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:32:\"Chuye-de-triet-hoc-1447x2048.jpg\";s:5:\"width\";i:1447;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"blossom-recipe-schema\";a:4:{s:4:\"file\";s:28:\"Chuye-de-triet-hoc-42x60.jpg\";s:5:\"width\";i:42;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"blossom-recipe-slider\";a:4:{s:4:\"file\";s:30:\"Chuye-de-triet-hoc-480x702.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:702;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"blossom-recipe-blog\";a:4:{s:4:\"file\";s:30:\"Chuye-de-triet-hoc-800x840.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"blossom-recipe-blog-one\";a:4:{s:4:\"file\";s:31:\"Chuye-de-triet-hoc-1170x840.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:840;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 17, '_thumbnail_id', '19'),
(52, 17, '_blossom_recipe_sidebar_layout', 'default-sidebar'),
(53, 1, '_wp_trash_meta_status', 'publish'),
(54, 1, '_wp_trash_meta_time', '1590677035'),
(55, 1, '_wp_desired_post_slug', 'chao-moi-nguoi'),
(56, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(57, 22, '_wp_trash_meta_status', 'publish'),
(58, 22, '_wp_trash_meta_time', '1590677115'),
(59, 24, '_wp_attached_file', '2020/05/15.jpg'),
(60, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:630;s:6:\"height\";i:267;s:4:\"file\";s:14:\"2020/05/15.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"15-300x267.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"15-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"15-600x254.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:254;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"15-300x127.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:127;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"15-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"blossom-recipe-schema\";a:4:{s:4:\"file\";s:13:\"15-142x60.jpg\";s:5:\"width\";i:142;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"blossom-recipe-slider\";a:4:{s:4:\"file\";s:14:\"15-480x267.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:267;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(61, 23, '_edit_last', '1'),
(62, 23, '_edit_lock', '1590677533:1'),
(63, 23, '_thumbnail_id', '24'),
(66, 23, '_blossom_recipe_sidebar_layout', 'default-sidebar'),
(67, 26, '_edit_lock', '1590677647:1'),
(68, 26, '_wp_trash_meta_status', 'publish'),
(69, 26, '_wp_trash_meta_time', '1590677671'),
(70, 27, '_edit_last', '1'),
(71, 27, '_edit_lock', '1590677656:1'),
(72, 28, '_wp_attached_file', '2020/05/1_BYFW.jpg'),
(73, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:405;s:6:\"height\";i:305;s:4:\"file\";s:18:\"2020/05/1_BYFW.jpg\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"1_BYFW-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"1_BYFW-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"1_BYFW-300x226.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:226;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"1_BYFW-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"blossom-recipe-schema\";a:4:{s:4:\"file\";s:16:\"1_BYFW-80x60.jpg\";s:5:\"width\";i:80;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(74, 27, '_thumbnail_id', '28'),
(77, 27, '_blossom_recipe_sidebar_layout', 'default-sidebar'),
(78, 30, '_edit_lock', '1590677992:1'),
(79, 31, '_menu_item_type', 'custom'),
(80, 31, '_menu_item_menu_item_parent', '0'),
(81, 31, '_menu_item_object_id', '31'),
(82, 31, '_menu_item_object', 'custom'),
(83, 31, '_menu_item_target', ''),
(84, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(85, 31, '_menu_item_xfn', ''),
(86, 31, '_menu_item_url', 'http://localhost/nxb/'),
(88, 32, '_menu_item_type', 'post_type'),
(89, 32, '_menu_item_menu_item_parent', '0'),
(90, 32, '_menu_item_object_id', '2'),
(91, 32, '_menu_item_object', 'page'),
(92, 32, '_menu_item_target', ''),
(93, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(94, 32, '_menu_item_xfn', ''),
(95, 32, '_menu_item_url', ''),
(96, 32, '_menu_item_orphaned', '1590678634'),
(106, 34, '_menu_item_type', 'taxonomy'),
(107, 34, '_menu_item_menu_item_parent', '0'),
(108, 34, '_menu_item_object_id', '5'),
(109, 34, '_menu_item_object', 'category'),
(110, 34, '_menu_item_target', ''),
(111, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(112, 34, '_menu_item_xfn', ''),
(113, 34, '_menu_item_url', ''),
(115, 35, '_wp_page_template', 'templates/template-recipe-category.php'),
(116, 36, '_wp_page_template', 'templates/template-recipe-cuisine.php'),
(117, 37, '_wp_page_template', 'templates/template-recipe-cooking-method.php'),
(118, 39, 'br_recipe', 'a:4:{s:7:\"details\";a:5:{s:8:\"servings\";s:1:\"2\";s:9:\"prep_time\";s:3:\"120\";s:9:\"cook_time\";s:2:\"30\";s:10:\"total_time\";s:3:\"150\";s:16:\"difficulty_level\";s:6:\"Medium\";}s:5:\"notes\";s:58:\"Use this section to add recipe notes or anything you like.\";s:10:\"ingredient\";a:10:{i:0;a:1:{s:7:\"heading\";s:16:\"Main Ingredients\";}i:1;a:4:{s:8:\"quantity\";s:5:\"1 1/2\";s:4:\"unit\";s:2:\"lb\";s:10:\"ingredient\";s:14:\"Salmon Fillets\";s:5:\"notes\";s:0:\"\";}i:2;a:4:{s:8:\"quantity\";s:3:\"1/2\";s:4:\"unit\";s:3:\"cup\";s:10:\"ingredient\";s:9:\"Soy Sauce\";s:5:\"notes\";s:0:\"\";}i:3;a:4:{s:8:\"quantity\";s:1:\"2\";s:4:\"unit\";s:4:\"tbsp\";s:10:\"ingredient\";s:11:\"Brown Sugar\";s:5:\"notes\";s:0:\"\";}i:4;a:4:{s:8:\"quantity\";s:3:\"1/2\";s:4:\"unit\";s:3:\"cup\";s:10:\"ingredient\";s:5:\"Water\";s:5:\"notes\";s:0:\"\";}i:5;a:4:{s:8:\"quantity\";s:1:\"6\";s:4:\"unit\";s:4:\"tbsp\";s:10:\"ingredient\";s:13:\"Vegetable Oil\";s:5:\"notes\";s:0:\"\";}i:6;a:1:{s:7:\"heading\";s:18:\"Mixing Ingredients\";}i:7;a:4:{s:8:\"quantity\";s:3:\"1/2\";s:4:\"unit\";s:3:\"tsp\";s:10:\"ingredient\";s:4:\"Salt\";s:5:\"notes\";s:13:\"To your taste\";}i:8;a:4:{s:8:\"quantity\";s:3:\"1/2\";s:4:\"unit\";s:3:\"tsp\";s:10:\"ingredient\";s:12:\"Lemon Pepper\";s:5:\"notes\";s:0:\"\";}i:9;a:4:{s:8:\"quantity\";s:3:\"1/2\";s:4:\"unit\";s:3:\"tsp\";s:10:\"ingredient\";s:13:\"Garlic Powder\";s:5:\"notes\";s:0:\"\";}}s:12:\"instructions\";a:4:{i:0;a:2:{s:11:\"description\";s:65:\"Season salmon fillets with lemon pepper, garlic powder, and salt.\";s:5:\"image\";s:0:\"\";}i:1;a:2:{s:11:\"description\";s:236:\"In a small bowl, stir together soy sauce, brown sugar, water, and vegetable oil until sugar is dissolved. Place fish in a large resealable plastic bag with the soy sauce mixture, seal, and turn to coat. Refrigerate for at least 2 hours.\";s:5:\"image\";s:0:\"\";}i:2;a:2:{s:11:\"description\";s:30:\"Preheat grill for medium heat.\";s:5:\"image\";s:0:\"\";}i:3;a:2:{s:11:\"description\";s:169:\"Lightly oil grill grate. Place salmon on the preheated grill, and discard marinade. Cook salmon for 6 to 8 minutes per side, or until the fish flakes easily with a fork.\";s:5:\"image\";s:0:\"\";}}}'),
(119, 40, '_wp_attached_file', '2020/05/salmon-recipe.jpg'),
(120, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1170;s:6:\"height\";i:550;s:4:\"file\";s:25:\"2020/05/salmon-recipe.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"salmon-recipe-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"salmon-recipe-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"salmon-recipe-600x282.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:282;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"salmon-recipe-300x141.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:141;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"salmon-recipe-1024x481.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:481;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"salmon-recipe-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"salmon-recipe-768x361.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:361;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"blossom-recipe-schema\";a:4:{s:4:\"file\";s:24:\"salmon-recipe-128x60.jpg\";s:5:\"width\";i:128;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"blossom-recipe-slider\";a:4:{s:4:\"file\";s:25:\"salmon-recipe-480x550.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"blossom-recipe-blog\";a:4:{s:4:\"file\";s:25:\"salmon-recipe-800x550.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"recipe-maker-thumbnail-size\";a:4:{s:4:\"file\";s:25:\"salmon-recipe-470x313.jpg\";s:5:\"width\";i:470;s:6:\"height\";i:313;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"recipe_maker_gallery_size\";a:4:{s:4:\"file\";s:25:\"salmon-recipe-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(121, 40, '_source_url', 'http://localhost/nxb/wp-content/plugins/blossom-recipe-maker/public/images/salmon-recipe.jpg'),
(122, 39, '_thumbnail_id', '40'),
(129, 27, '_bttk_view_count', '1'),
(130, 42, '_wp_attached_file', '2020/05/books_759.jpg'),
(131, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:759;s:6:\"height\";i:422;s:4:\"file\";s:21:\"2020/05/books_759.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"books_759-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"books_759-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"books_759-600x334.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:334;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"books_759-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"books_759-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"recipe-maker-thumbnail-size\";a:4:{s:4:\"file\";s:21:\"books_759-470x313.jpg\";s:5:\"width\";i:470;s:6:\"height\";i:313;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"recipe_maker_gallery_size\";a:4:{s:4:\"file\";s:21:\"books_759-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"post-slider-thumb-size\";a:4:{s:4:\"file\";s:21:\"books_759-330x190.jpg\";s:5:\"width\";i:330;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"blossom-recipe-schema\";a:4:{s:4:\"file\";s:20:\"books_759-108x60.jpg\";s:5:\"width\";i:108;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"blossom-recipe-slider\";a:4:{s:4:\"file\";s:21:\"books_759-480x422.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:422;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(132, 30, '_customize_restore_dismissed', '1'),
(133, 43, '_wp_trash_meta_status', 'publish'),
(134, 43, '_wp_trash_meta_time', '1590680227'),
(135, 44, '_wp_attached_file', '2020/05/logo.png'),
(136, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:112;s:6:\"height\";i:112;s:4:\"file\";s:16:\"2020/05/logo.png\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"blossom-recipe-schema\";a:4:{s:4:\"file\";s:14:\"logo-60x60.png\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:14:\"logo-45x45.png\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 45, '_wp_attached_file', '2020/05/cropped-logo.png'),
(138, 45, '_wp_attachment_context', 'site-icon'),
(139, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:24:\"2020/05/cropped-logo.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"blossom-recipe-schema\";a:4:{s:4:\"file\";s:22:\"cropped-logo-60x60.png\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"blossom-recipe-slider\";a:4:{s:4:\"file\";s:24:\"cropped-logo-480x512.png\";s:5:\"width\";i:480;s:6:\"height\";i:512;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:22:\"cropped-logo-45x45.png\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:24:\"cropped-logo-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:24:\"cropped-logo-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:24:\"cropped-logo-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:22:\"cropped-logo-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(140, 46, '_wp_trash_meta_status', 'publish'),
(141, 46, '_wp_trash_meta_time', '1590680387'),
(142, 47, '_wp_attached_file', '2020/05/cropped-logo-1.png'),
(143, 47, '_wp_attachment_context', 'custom-logo'),
(144, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:112;s:6:\"height\";i:112;s:4:\"file\";s:26:\"2020/05/cropped-logo-1.png\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"blossom-recipe-schema\";a:4:{s:4:\"file\";s:24:\"cropped-logo-1-60x60.png\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-1-45x45.png\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(145, 48, '_edit_lock', '1590680530:1'),
(146, 48, '_wp_trash_meta_status', 'publish'),
(147, 48, '_wp_trash_meta_time', '1590680531'),
(148, 49, '_wp_trash_meta_status', 'publish'),
(149, 49, '_wp_trash_meta_time', '1590680562'),
(150, 51, '_wp_attached_file', 'woocommerce-placeholder.png'),
(151, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"blossom-recipe-schema\";a:4:{s:4:\"file\";s:33:\"woocommerce-placeholder-60x60.png\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"blossom-recipe-slider\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-480x702.png\";s:5:\"width\";i:480;s:6:\"height\";i:702;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"blossom-recipe-blog\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-800x840.png\";s:5:\"width\";i:800;s:6:\"height\";i:840;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"blossom-recipe-blog-one\";a:4:{s:4:\"file\";s:36:\"woocommerce-placeholder-1170x840.png\";s:5:\"width\";i:1170;s:6:\"height\";i:840;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:33:\"woocommerce-placeholder-45x45.png\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(152, 17, '_wp_trash_meta_status', 'publish'),
(153, 17, '_wp_trash_meta_time', '1590938475'),
(154, 17, '_wp_desired_post_slug', 'chuyen-de-triet-hoc'),
(155, 11, '_wp_trash_meta_status', 'publish'),
(156, 11, '_wp_trash_meta_time', '1590938476'),
(157, 11, '_wp_desired_post_slug', 'chay-cu-ly-ngan'),
(158, 7, '_wp_trash_meta_status', 'publish'),
(159, 7, '_wp_trash_meta_time', '1590938478'),
(160, 7, '_wp_desired_post_slug', 'cac-vi-du-va-phan-vi-du-trong-dai-so'),
(161, 58, '_wp_attached_file', '2020/05/7a20d87f9144884e78370285536cb069634588463178222500chi-huy-dan-dung-hat-tap-the.jpg'),
(162, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:210;s:6:\"height\";i:300;s:4:\"file\";s:90:\"2020/05/7a20d87f9144884e78370285536cb069634588463178222500chi-huy-dan-dung-hat-tap-the.jpg\";s:5:\"sizes\";a:4:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:90:\"7a20d87f9144884e78370285536cb069634588463178222500chi-huy-dan-dung-hat-tap-the-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:90:\"7a20d87f9144884e78370285536cb069634588463178222500chi-huy-dan-dung-hat-tap-the-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:88:\"7a20d87f9144884e78370285536cb069634588463178222500chi-huy-dan-dung-hat-tap-the-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:90:\"7a20d87f9144884e78370285536cb069634588463178222500chi-huy-dan-dung-hat-tap-the-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(163, 57, '_edit_last', '1'),
(164, 57, '_thumbnail_id', '58'),
(165, 57, 'total_sales', '0'),
(166, 57, '_tax_status', 'taxable'),
(167, 57, '_tax_class', ''),
(168, 57, '_manage_stock', 'no'),
(169, 57, '_backorders', 'no'),
(170, 57, '_sold_individually', 'no'),
(171, 57, '_virtual', 'no'),
(172, 57, '_downloadable', 'no'),
(173, 57, '_download_limit', '-1'),
(174, 57, '_download_expiry', '-1'),
(175, 57, '_stock', NULL),
(176, 57, '_stock_status', 'instock'),
(177, 57, '_wc_average_rating', '0'),
(178, 57, '_wc_review_count', '0'),
(179, 57, '_product_version', '4.1.1'),
(180, 57, '_edit_lock', '1590938761:1'),
(181, 60, '_wp_attached_file', '2020/05/4409aeb65259aa09c8092826fe70eb31634586102327128750mua-Converted.jpg'),
(182, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:489;s:6:\"height\";i:692;s:4:\"file\";s:75:\"2020/05/4409aeb65259aa09c8092826fe70eb31634586102327128750mua-Converted.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:75:\"4409aeb65259aa09c8092826fe70eb31634586102327128750mua-Converted-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:75:\"4409aeb65259aa09c8092826fe70eb31634586102327128750mua-Converted-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:75:\"4409aeb65259aa09c8092826fe70eb31634586102327128750mua-Converted-416x589.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:589;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:75:\"4409aeb65259aa09c8092826fe70eb31634586102327128750mua-Converted-212x300.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:75:\"4409aeb65259aa09c8092826fe70eb31634586102327128750mua-Converted-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:73:\"4409aeb65259aa09c8092826fe70eb31634586102327128750mua-Converted-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:75:\"4409aeb65259aa09c8092826fe70eb31634586102327128750mua-Converted-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:75:\"4409aeb65259aa09c8092826fe70eb31634586102327128750mua-Converted-416x589.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:589;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:75:\"4409aeb65259aa09c8092826fe70eb31634586102327128750mua-Converted-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(183, 59, '_edit_last', '1'),
(184, 59, '_thumbnail_id', '60'),
(185, 59, 'total_sales', '0'),
(186, 59, '_tax_status', 'taxable'),
(187, 59, '_tax_class', ''),
(188, 59, '_manage_stock', 'no'),
(189, 59, '_backorders', 'no'),
(190, 59, '_sold_individually', 'no'),
(191, 59, '_virtual', 'no'),
(192, 59, '_downloadable', 'yes'),
(193, 59, '_download_limit', '-1'),
(194, 59, '_download_expiry', '-1'),
(195, 59, '_stock', NULL),
(196, 59, '_stock_status', 'instock'),
(197, 59, '_wc_average_rating', '0'),
(198, 59, '_wc_review_count', '0'),
(199, 59, '_product_version', '4.1.1'),
(200, 59, '_edit_lock', '1590938955:1'),
(201, 61, '_wp_attached_file', '2020/05/cropped-books_759-1.jpg'),
(202, 61, '_wp_attachment_context', 'custom-header'),
(203, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1900;s:6:\"height\";i:400;s:4:\"file\";s:31:\"2020/05/cropped-books_759-1.jpg\";s:5:\"sizes\";a:13:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"cropped-books_759-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"cropped-books_759-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"cropped-books_759-1-600x126.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:126;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"cropped-books_759-1-300x63.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:63;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"cropped-books_759-1-1024x216.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:216;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"cropped-books_759-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"cropped-books_759-1-768x162.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:32:\"cropped-books_759-1-1536x323.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"magazine-plus-thumb\";a:4:{s:4:\"file\";s:30:\"cropped-books_759-1-370x78.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-books_759-1-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:31:\"cropped-books_759-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"cropped-books_759-1-600x126.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:126;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"cropped-books_759-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(204, 61, '_wp_attachment_custom_header_last_used_moto-news', '1590939239'),
(205, 61, '_wp_attachment_is_custom_header', 'moto-news'),
(206, 62, '_edit_lock', '1590939497:1'),
(207, 63, '_wp_attached_file', '2020/05/download.jpg'),
(208, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:20:\"2020/05/download.jpg\";s:5:\"sizes\";a:4:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"download-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"download-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:18:\"download-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"download-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(209, 64, '_wp_attached_file', '2020/05/cropped-download.jpg'),
(210, 64, '_wp_attachment_context', 'custom-header');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(211, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1900;s:6:\"height\";i:400;s:4:\"file\";s:28:\"2020/05/cropped-download.jpg\";s:5:\"sizes\";a:13:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"cropped-download-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-download-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"cropped-download-600x126.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:126;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cropped-download-300x63.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:63;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"cropped-download-1024x216.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:216;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-download-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"cropped-download-768x162.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:29:\"cropped-download-1536x323.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"magazine-plus-thumb\";a:4:{s:4:\"file\";s:27:\"cropped-download-370x78.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-download-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:28:\"cropped-download-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"cropped-download-600x126.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:126;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-download-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(212, 64, '_wp_attachment_custom_header_last_used_moto-news', '1590939313'),
(213, 64, '_wp_attachment_is_custom_header', 'moto-news'),
(214, 65, '_wp_attached_file', '2020/05/download-1.jpg'),
(215, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:729;s:4:\"file\";s:22:\"2020/05/download-1.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"download-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"download-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"download-1-600x365.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"download-1-300x182.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"download-1-1024x622.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:622;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"download-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"download-1-768x467.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:467;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"magazine-plus-thumb\";a:4:{s:4:\"file\";s:22:\"download-1-370x225.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:20:\"download-1-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"download-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"download-1-600x365.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"download-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(216, 66, '_wp_attached_file', '2020/05/cropped-download-1.jpg'),
(217, 66, '_wp_attachment_context', 'custom-header'),
(218, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1900;s:6:\"height\";i:399;s:4:\"file\";s:30:\"2020/05/cropped-download-1.jpg\";s:5:\"sizes\";a:13:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"cropped-download-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-download-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"cropped-download-1-600x126.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:126;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"cropped-download-1-300x63.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:63;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"cropped-download-1-1024x215.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:215;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-download-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"cropped-download-1-768x161.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:161;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:31:\"cropped-download-1-1536x323.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"magazine-plus-thumb\";a:4:{s:4:\"file\";s:29:\"cropped-download-1-370x78.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:78;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-download-1-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:30:\"cropped-download-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"cropped-download-1-600x126.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:126;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-download-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(219, 66, '_wp_attachment_custom_header_last_used_moto-news', '1590939512'),
(220, 66, '_wp_attachment_is_custom_header', 'moto-news'),
(221, 62, '_wp_trash_meta_status', 'publish'),
(222, 62, '_wp_trash_meta_time', '1590939512'),
(223, 68, '_menu_item_type', 'post_type'),
(224, 68, '_menu_item_menu_item_parent', '0'),
(225, 68, '_menu_item_object_id', '52'),
(226, 68, '_menu_item_object', 'page'),
(227, 68, '_menu_item_target', ''),
(228, 68, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(229, 68, '_menu_item_xfn', ''),
(230, 68, '_menu_item_url', ''),
(231, 67, '_wp_trash_meta_status', 'publish'),
(232, 67, '_wp_trash_meta_time', '1590939570'),
(233, 69, '_wp_trash_meta_status', 'publish'),
(234, 69, '_wp_trash_meta_time', '1590939614'),
(235, 70, '_edit_lock', '1590939629:1'),
(236, 70, '_wp_trash_meta_status', 'publish'),
(237, 70, '_wp_trash_meta_time', '1590939633'),
(238, 52, '_edit_lock', '1590941102:1'),
(239, 52, '_edit_last', '1'),
(240, 72, '_edit_lock', '1590940745:1'),
(241, 72, '_wp_trash_meta_status', 'publish'),
(242, 72, '_wp_trash_meta_time', '1590940764'),
(243, 73, '_wp_trash_meta_status', 'publish'),
(244, 73, '_wp_trash_meta_time', '1590940792'),
(245, 74, '_edit_lock', '1590940866:1'),
(246, 74, '_wp_trash_meta_status', 'publish'),
(247, 74, '_wp_trash_meta_time', '1590940869'),
(248, 75, '_edit_lock', '1590940913:1'),
(249, 75, '_wp_trash_meta_status', 'publish'),
(250, 75, '_wp_trash_meta_time', '1590940914'),
(251, 76, '_wp_trash_meta_status', 'publish'),
(252, 76, '_wp_trash_meta_time', '1590941143'),
(253, 52, 'online-shop-featured-icon', ''),
(254, 52, 'online_shop_sidebar_layout', 'both-sidebar'),
(255, 78, '_edit_lock', '1590941986:1'),
(256, 78, '_wp_trash_meta_status', 'publish'),
(257, 78, '_wp_trash_meta_time', '1590942023'),
(258, 79, '_wp_trash_meta_status', 'publish'),
(259, 79, '_wp_trash_meta_time', '1590942036'),
(260, 80, '_wp_trash_meta_status', 'publish'),
(261, 80, '_wp_trash_meta_time', '1590942072'),
(262, 81, '_edit_lock', '1590942178:1'),
(263, 81, '_wp_trash_meta_status', 'publish'),
(264, 81, '_wp_trash_meta_time', '1590942203'),
(265, 82, '_wp_attached_file', '2020/05/cropped-download-1-1.jpg'),
(266, 82, '_wp_attachment_context', 'custom-header'),
(267, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:250;s:4:\"file\";s:32:\"2020/05/cropped-download-1-1.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"cropped-download-1-1-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-download-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"cropped-download-1-1-600x150.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"cropped-download-1-1-300x75.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-download-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"cropped-download-1-1-768x192.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-download-1-1-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:32:\"cropped-download-1-1-300x250.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"cropped-download-1-1-600x150.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-download-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(268, 82, '_wp_attachment_custom_header_last_used_bcf-shop', '1590943585'),
(269, 82, '_wp_attachment_is_custom_header', 'bcf-shop'),
(270, 83, '_edit_lock', '1590943537:1'),
(271, 83, '_wp_trash_meta_status', 'publish'),
(272, 83, '_wp_trash_meta_time', '1590943585'),
(273, 84, '_wp_attached_file', '2020/05/cropped-download-1-3.jpg'),
(274, 84, '_wp_attachment_context', 'custom-header'),
(275, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:308;s:4:\"file\";s:32:\"2020/05/cropped-download-1-3.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"cropped-download-1-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-download-1-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"cropped-download-1-3-600x154.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"cropped-download-1-3-300x77.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:77;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"cropped-download-1-3-1024x263.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:263;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-download-1-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"cropped-download-1-3-768x197.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-download-1-3-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:32:\"cropped-download-1-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"cropped-download-1-3-600x154.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-download-1-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(276, 84, '_wp_attachment_custom_header_last_used_storefront', '1590943910'),
(277, 84, '_wp_attachment_is_custom_header', 'storefront'),
(278, 85, '_edit_lock', '1590944013:1'),
(279, 86, '_wp_attached_file', '2020/05/cropped-download-2.jpg'),
(280, 86, '_wp_attachment_context', 'custom-header'),
(281, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:71;s:4:\"file\";s:30:\"2020/05/cropped-download-2.jpg\";s:5:\"sizes\";a:4:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-download-2-100x71.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:71;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-download-2-150x71.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:71;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-download-2-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-download-2-100x71.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:71;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(282, 86, '_wp_attachment_custom_header_last_used_storefront', '1590943885'),
(283, 86, '_wp_attachment_is_custom_header', 'storefront'),
(284, 87, '_wp_attached_file', '2020/05/cropped-books_759-2.jpg'),
(285, 87, '_wp_attachment_context', 'custom-header'),
(286, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:759;s:6:\"height\";i:195;s:4:\"file\";s:31:\"2020/05/cropped-books_759-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"cropped-books_759-2-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"cropped-books_759-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"cropped-books_759-2-600x154.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"cropped-books_759-2-300x77.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:77;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"cropped-books_759-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-books_759-2-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:31:\"cropped-books_759-2-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"cropped-books_759-2-600x154.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"cropped-books_759-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(287, 87, '_wp_attachment_custom_header_last_used_storefront', '1590943900'),
(288, 87, '_wp_attachment_is_custom_header', 'storefront'),
(289, 85, '_wp_trash_meta_status', 'publish'),
(290, 85, '_wp_trash_meta_time', '1590944014'),
(291, 88, '_edit_lock', '1590944133:1'),
(292, 88, '_wp_trash_meta_status', 'publish'),
(293, 88, '_wp_trash_meta_time', '1590944132'),
(294, 89, '_wp_trash_meta_status', 'publish'),
(295, 89, '_wp_trash_meta_time', '1590944156'),
(296, 65, '_wp_attachment_custom_header_last_used_basicstore', '1590945918'),
(297, 65, '_wp_attachment_is_custom_header', 'basicstore'),
(298, 90, '_edit_lock', '1590945635:1'),
(299, 44, '_wp_attachment_is_custom_background', 'basicstore'),
(300, 91, '_wp_attached_file', '2020/05/89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o.jpg'),
(301, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:1300;s:4:\"file\";s:121:\"2020/05/89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:121:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:123:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:121:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:121:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:119:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:121:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:121:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:121:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:121:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:121:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:121:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:193:\"Seamless pattern, floral ornamental background, repeat geometric tiles, curved lines, lattice. Abstract ornament texture in pastel colors, white and beige. Elegant repeat design. - Stock vector\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:64:\"Seamless pattern, floral ornament texture, geometric tiles. Whit\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:50:{i:0;s:16:\"seamless pattern\";i:1;s:6:\"vector\";i:2;s:6:\"floral\";i:3;s:8:\"patterns\";i:4;s:9:\"geometric\";i:5;s:8:\"ornament\";i:6;s:5:\"beige\";i:7;s:6:\"pastel\";i:8;s:5:\"white\";i:9;s:8:\"seamless\";i:10;s:10:\"background\";i:11;s:7:\"texture\";i:12;s:7:\"lattice\";i:13;s:7:\"elegant\";i:14;s:5:\"style\";i:15;s:5:\"decor\";i:16;s:8:\"abstract\";i:17;s:4:\"grid\";i:18;s:6:\"simple\";i:19;s:5:\"shape\";i:20;s:4:\"tile\";i:21;s:7:\"graphic\";i:22;s:6:\"design\";i:23;s:6:\"repeat\";i:24;s:10:\"decorative\";i:25;s:9:\"arabesque\";i:26;s:4:\"arab\";i:27;s:8:\"moroccan\";i:28;s:7:\"turkish\";i:29;s:6:\"tiling\";i:30;s:7:\"Islamic\";i:31;s:3:\"art\";i:32;s:5:\"motif\";i:33;s:8:\"oriental\";i:34;s:10:\"ornamental\";i:35;s:4:\"cute\";i:36;s:8:\"romantic\";i:37;s:7:\"minimal\";i:38;s:5:\"curve\";i:39;s:5:\"print\";i:40;s:5:\"retro\";i:41;s:5:\"cover\";i:42;s:6:\"mosaic\";i:43;s:9:\"wallpaper\";i:44;s:6:\"modern\";i:45;s:5:\"paper\";i:46;s:6:\"fabric\";i:47;s:7:\"element\";i:48;s:7:\"digital\";i:49;s:6:\"subtle\";}}}'),
(302, 91, '_wp_attachment_is_custom_background', 'basicstore'),
(303, 92, '_wp_attached_file', '2020/05/89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-1.jpg'),
(304, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:1300;s:4:\"file\";s:123:\"2020/05/89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-1.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:123:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:125:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:123:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:123:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:121:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-1-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:123:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:123:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:123:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:123:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:123:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:123:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(305, 92, '_wp_attachment_is_custom_background', 'basicstore'),
(306, 93, '_wp_attached_file', '2020/05/89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-2.jpg'),
(307, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:504;s:6:\"height\";i:490;s:4:\"file\";s:123:\"2020/05/89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-2.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:123:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-2-300x292.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:292;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:123:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:121:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-2-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:123:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:123:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:123:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:123:\"89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(308, 93, '_wp_attachment_is_custom_background', 'basicstore'),
(309, 90, '_wp_trash_meta_status', 'publish'),
(310, 90, '_wp_trash_meta_time', '1590945662'),
(311, 94, '_wp_trash_meta_status', 'publish'),
(312, 94, '_wp_trash_meta_time', '1590945709'),
(313, 95, '_edit_lock', '1590945725:1'),
(314, 95, '_wp_trash_meta_status', 'publish'),
(315, 95, '_wp_trash_meta_time', '1590945732'),
(316, 96, '_edit_lock', '1590946599:1'),
(317, 97, '_wp_attached_file', '2020/05/Hanoi-Lotte-Center-Serviced-Office.jpg'),
(318, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:800;s:4:\"file\";s:46:\"2020/05/Hanoi-Lotte-Center-Serviced-Office.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"Hanoi-Lotte-Center-Serviced-Office-300x125.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:47:\"Hanoi-Lotte-Center-Serviced-Office-1024x427.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"Hanoi-Lotte-Center-Serviced-Office-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"Hanoi-Lotte-Center-Serviced-Office-768x320.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:47:\"Hanoi-Lotte-Center-Serviced-Office-1536x640.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:44:\"Hanoi-Lotte-Center-Serviced-Office-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:46:\"Hanoi-Lotte-Center-Serviced-Office-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:46:\"Hanoi-Lotte-Center-Serviced-Office-600x250.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:46:\"Hanoi-Lotte-Center-Serviced-Office-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:46:\"Hanoi-Lotte-Center-Serviced-Office-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:46:\"Hanoi-Lotte-Center-Serviced-Office-600x250.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:46:\"Hanoi-Lotte-Center-Serviced-Office-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(319, 97, '_wp_attachment_custom_header_last_used_basicstore', '1590947036'),
(320, 97, '_wp_attachment_is_custom_header', 'basicstore'),
(321, 96, '_customize_restore_dismissed', '1'),
(322, 99, '_wp_trash_meta_status', 'publish'),
(323, 99, '_wp_trash_meta_time', '1590947036');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
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
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-05-28 13:21:11', '2020-05-28 13:21:11', '<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'trash', 'open', 'open', '', 'chao-moi-nguoi__trashed', '', '', '2020-05-28 14:43:55', '2020-05-28 14:43:55', '', 0, 'http://localhost/nxb/?p=1', 0, 'post', '', 1),
(2, 1, '2020-05-28 13:21:11', '2020-05-28 13:21:11', '<!-- wp:paragraph -->\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... hoặc cái gì đó như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"http://localhost/nxb/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\n<!-- /wp:paragraph -->', 'Trang Mẫu', '', 'publish', 'closed', 'open', '', 'Trang mẫu', '', '', '2020-05-28 13:21:11', '2020-05-28 13:21:11', '', 0, 'http://localhost/nxb/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-05-28 13:21:11', '2020-05-28 13:21:11', '<!-- wp:heading --><h2>Chúng tôi là ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Địa chỉ website là: http://localhost/nxb.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Bình luận</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thư viện</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thông tin liên hệ</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn vào trang đăng nhập, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Nội dung nhúng từ website khác</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Phân tích</h3><!-- /wp:heading --><!-- wp:heading --><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><!-- /wp:heading --><!-- wp:heading --><h2>Dữ liệu của bạn tồn tại bao lâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các quyền nào của bạn với dữ liệu của mình</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các dữ liệu của bạn được gửi tới đâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin liên hệ của bạn</h2><!-- /wp:heading --><!-- wp:heading --><h2>Thông tin bổ sung</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các yêu cầu công bố thông tin được quản lý</h3><!-- /wp:heading -->', 'Chính sách bảo mật', '', 'draft', 'closed', 'open', '', 'chinh-sach-bao-mat', '', '', '2020-05-28 13:21:11', '2020-05-28 13:21:11', '', 0, 'http://localhost/nxb/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-05-28 13:24:37', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-05-28 13:24:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/nxb/?p=4', 0, 'post', '', 0),
(5, 1, '2020-05-28 13:27:46', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-05-28 13:27:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/nxb/?p=5', 0, 'post', '', 0),
(6, 1, '2020-05-28 14:24:46', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-05-28 14:24:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/nxb/?p=6', 0, 'post', '', 0),
(7, 1, '2020-05-28 14:35:55', '2020-05-28 14:35:55', '<img class=\"alignnone size-medium wp-image-9\" src=\"http://localhost/nxb/wp-content/uploads/2020/05/Cac-vi-du-va-phan-vi-du-trong-dai-so-207x300.jpg\" alt=\"\" width=\"207\" height=\"300\" />\r\n\r\n<!--more-->\r\n\r\n<img class=\"alignnone size-medium wp-image-8\" src=\"http://localhost/nxb/wp-content/uploads/2020/05/Cac-vi-du-va-phan-vi-du-trong-dai-so-2-208x300.jpg\" alt=\"\" width=\"208\" height=\"300\" />', 'Các ví dụ và phản ví dụ trong Đại số', '', 'trash', 'open', 'open', '', 'cac-vi-du-va-phan-vi-du-trong-dai-so__trashed', '', '', '2020-05-31 15:21:18', '2020-05-31 15:21:18', '', 0, 'http://localhost/nxb/?p=7', 0, 'post', '', 0),
(8, 1, '2020-05-28 14:35:06', '2020-05-28 14:35:06', '', 'Cac vi du va phan vi du', '', 'inherit', 'open', 'closed', '', 'cac-vi-du-va-phan-vi-du', '', '', '2020-05-28 14:35:06', '2020-05-28 14:35:06', '', 7, 'http://localhost/nxb/wp-content/uploads/2020/05/Cac-vi-du-va-phan-vi-du-trong-dai-so-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2020-05-28 14:35:16', '2020-05-28 14:35:16', '', 'Cac vi du va phan vi du', '', 'inherit', 'open', 'closed', '', 'cac-vi-du-va-phan-vi-du-2', '', '', '2020-05-28 14:35:16', '2020-05-28 14:35:16', '', 7, 'http://localhost/nxb/wp-content/uploads/2020/05/Cac-vi-du-va-phan-vi-du-trong-dai-so.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2020-05-28 14:35:55', '2020-05-28 14:35:55', '<img class=\"alignnone size-medium wp-image-9\" src=\"http://localhost/nxb/wp-content/uploads/2020/05/Cac-vi-du-va-phan-vi-du-trong-dai-so-207x300.jpg\" alt=\"\" width=\"207\" height=\"300\" />\r\n\r\n<!--more-->\r\n\r\n<img class=\"alignnone size-medium wp-image-8\" src=\"http://localhost/nxb/wp-content/uploads/2020/05/Cac-vi-du-va-phan-vi-du-trong-dai-so-2-208x300.jpg\" alt=\"\" width=\"208\" height=\"300\" />', 'Các ví dụ và phản ví dụ trong Đại số', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-05-28 14:35:55', '2020-05-28 14:35:55', '', 7, 'http://localhost/nxb/2020/05/28/7-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2020-05-28 14:39:30', '2020-05-28 14:39:30', '<img class=\"alignnone size-medium wp-image-13\" src=\"http://localhost/nxb/wp-content/uploads/2020/05/Chay-cu-ly-ngan-204x300.jpg\" alt=\"\" width=\"204\" height=\"300\" />\r\n\r\n<img class=\"alignnone size-medium wp-image-12\" src=\"http://localhost/nxb/wp-content/uploads/2020/05/Chay-cu-ly-ngan-2-204x300.jpg\" alt=\"\" width=\"204\" height=\"300\" />', 'Chạy cự ly ngắn', '', 'trash', 'open', 'open', '', 'chay-cu-ly-ngan__trashed', '', '', '2020-05-31 15:21:16', '2020-05-31 15:21:16', '', 0, 'http://localhost/nxb/?p=11', 0, 'post', '', 0),
(12, 1, '2020-05-28 14:38:56', '2020-05-28 14:38:56', '', 'Chay cu ly ngan', '', 'inherit', 'open', 'closed', '', 'chay-cu-ly-ngan', '', '', '2020-05-28 14:38:56', '2020-05-28 14:38:56', '', 11, 'http://localhost/nxb/wp-content/uploads/2020/05/Chay-cu-ly-ngan-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2020-05-28 14:39:04', '2020-05-28 14:39:04', '', 'Chay cu ly ngan', '', 'inherit', 'open', 'closed', '', 'chay-cu-ly-ngan-2', '', '', '2020-05-28 14:39:04', '2020-05-28 14:39:04', '', 11, 'http://localhost/nxb/wp-content/uploads/2020/05/Chay-cu-ly-ngan.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2020-05-28 14:39:30', '2020-05-28 14:39:30', '<img class=\"alignnone size-medium wp-image-13\" src=\"http://localhost/nxb/wp-content/uploads/2020/05/Chay-cu-ly-ngan-204x300.jpg\" alt=\"\" width=\"204\" height=\"300\" />\r\n\r\n<img class=\"alignnone size-medium wp-image-12\" src=\"http://localhost/nxb/wp-content/uploads/2020/05/Chay-cu-ly-ngan-2-204x300.jpg\" alt=\"\" width=\"204\" height=\"300\" />', 'Chạy cự ly ngắn', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-05-28 14:39:30', '2020-05-28 14:39:30', '', 11, 'http://localhost/nxb/2020/05/28/11-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-05-28 14:40:40', '0000-00-00 00:00:00', '', 'Trang chủ', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-28 14:40:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/nxb/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2020-05-28 14:40:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-28 14:40:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/nxb/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2020-05-28 14:43:34', '2020-05-28 14:43:34', '<img class=\"alignnone size-medium wp-image-19\" src=\"http://localhost/nxb/wp-content/uploads/2020/05/Chuye-de-triet-hoc-212x300.jpg\" alt=\"\" width=\"212\" height=\"300\" />\r\n\r\n<img class=\"alignnone size-medium wp-image-18\" src=\"http://localhost/nxb/wp-content/uploads/2020/05/Chuye-de-triet-hoc-2-213x300.jpg\" alt=\"\" width=\"213\" height=\"300\" />', 'Chuyên đề Triết học', '', 'trash', 'open', 'open', '', 'chuyen-de-triet-hoc__trashed', '', '', '2020-05-31 15:21:15', '2020-05-31 15:21:15', '', 0, 'http://localhost/nxb/?p=17', 0, 'post', '', 0),
(18, 1, '2020-05-28 14:42:43', '2020-05-28 14:42:43', '', 'Print', '', 'inherit', 'open', 'closed', '', 'print', '', '', '2020-05-28 14:42:43', '2020-05-28 14:42:43', '', 17, 'http://localhost/nxb/wp-content/uploads/2020/05/Chuye-de-triet-hoc-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2020-05-28 14:42:51', '2020-05-28 14:42:51', '', 'Print', '', 'inherit', 'open', 'closed', '', 'print-2', '', '', '2020-05-28 14:42:51', '2020-05-28 14:42:51', '', 17, 'http://localhost/nxb/wp-content/uploads/2020/05/Chuye-de-triet-hoc.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2020-05-28 14:43:34', '2020-05-28 14:43:34', '<img class=\"alignnone size-medium wp-image-19\" src=\"http://localhost/nxb/wp-content/uploads/2020/05/Chuye-de-triet-hoc-212x300.jpg\" alt=\"\" width=\"212\" height=\"300\" />\r\n\r\n<img class=\"alignnone size-medium wp-image-18\" src=\"http://localhost/nxb/wp-content/uploads/2020/05/Chuye-de-triet-hoc-2-213x300.jpg\" alt=\"\" width=\"213\" height=\"300\" />', 'Chuyên đề Triết học', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-05-28 14:43:34', '2020-05-28 14:43:34', '', 17, 'http://localhost/nxb/2020/05/28/17-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2020-05-28 14:43:55', '2020-05-28 14:43:55', '<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-05-28 14:43:55', '2020-05-28 14:43:55', '', 1, 'http://localhost/nxb/2020/05/28/1-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2020-05-28 14:45:14', '2020-05-28 14:45:14', '{\n    \"blossom-recipe::slider_type\": {\n        \"value\": \"cat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-28 14:45:14\"\n    },\n    \"blossom-recipe::slider_cat\": {\n        \"value\": \"2\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-28 14:45:14\"\n    },\n    \"blossom-recipe::ed_header_search\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-28 14:45:14\"\n    },\n    \"blossom-recipe::ed_header_newsletter\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-28 14:45:14\"\n    },\n    \"blossom-recipe::social_links\": {\n        \"value\": \"%5B%5D\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-28 14:45:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '14d11865-8328-40bd-b6b6-283c3fc852b5', '', '', '2020-05-28 14:45:14', '2020-05-28 14:45:14', '', 0, 'http://localhost/nxb/2020/05/28/14d11865-8328-40bd-b6b6-283c3fc852b5/', 0, 'customize_changeset', '', 0),
(23, 1, '2020-05-28 14:52:19', '2020-05-28 14:52:19', '<div class=\"brief-detail\">\r\n\r\n<strong>GD&amp;TĐ - Để làm bài thi Ngữ văn Kỳ thi THPT quốc gia năm nay thật tốt, thí sinh cần bồi dưỡng năng lực Ngữ văn cả về kiến thức và phương pháp làm bài. Báo Giáo dục và Thời đại xin giới thiệu bài viết của GS.TS Lã Nhâm Thìn - Nguyên Trưởng khoa Ngữ văn (Trường ĐHSP Hà Nội) - với những chia sẻ chi tiết về vấn đề này.</strong>\r\n\r\n</div>\r\n<!--more-->\r\n<div class=\"content-detail\">\r\n\r\n<strong>Phần 1: Yêu cầu đề thi và kiến thức, phương pháp phần Đọc hiểu</strong>\r\n\r\nĐể Kỳ thi THPT môn Ngữ văn đạt kết quả tốt, trước hết thí sinh cần nắm được cấu trúc và yêu cầu của đề thi để từ đó xác định kiến thức và phương pháp làm bài.\r\n\r\n<strong>Cấu trúc, yêu cầu đề thi</strong>\r\n\r\nVề cấu trúc đề thi: Đề thi gồm hai phần Đọc hiểu và Làm văn. Phần Đọc hiểu (3,0 điểm) có hai đoạn văn bản, thường là một đoạn thơ và một đoạn văn xuôi (có trong SGK hoặc ngoài SGK). Phần Làm văn có Nghị luận xã hội (3,0 điểm) và Nghị luận văn học (4,0 điểm).\r\n\r\nVề yêu cầu của đề thi: Đánh giá được năng lực ngữ văn của học sinh, phân hóa được trình độ học sinh để xét tốt nghiệp THPT và xét tuyển vào các trường đại học, cao đẳng theo các mức độ cao thấp khác nhau.\r\n\r\nYêu cầu đánh giá năng lực ngữ văn của học sinh cụ thể gồm: Năng lực tiếp nhận văn bản (chú trọng năng lực đọc hiểu văn bản) - Năng lực đọc hiểu nhiều kiểu loại văn bản khác nhau, theo các mức độ: Hiểu đúng văn bản, thấy được cái hay của văn bản, thấy được cái đẹp (giá trị thẩm mĩ) của văn bản (đối với văn bản văn học).\r\n\r\nNăng lực viết văn bản: Tổ chức văn bản, triển khai nội dung, trình bày theo đúng phong cách ngôn ngữ… Chú ý năng lực viết văn bản nghị luận về những vấn đề trong đời sống, xã hội, về tác phẩm văn chương…; chú ý năng lực giải quyết vấn đề.\r\n\r\nVề yêu cầu phân hóa trình độ học sinh: Đề ra theo theo hướng mở để học sinh có thể phát huy vốn kiết thức, năng lực sáng tạo, cá tính sắc sảo… Văn bản đọc hiểu có trong SGK hay ngoài SGK, trên cơ sở tri thức cơ bản, nền tảng của yêu cầu đọc hiểu. Nghị luận xã hội, tích hợp các kiến thức về lịch sử, địa lí, văn hóa, xã hội… Nghị luận văn học, kiến thức trọng tâm ở các tác phẩm văn học nằm trong nội dung thi kết hợp với yêu cầu thể hiện năng lực sáng tạo của học sinh (phân tích sâu, mở rộng liên hệ so sánh, năng lực tổng hợp…)\r\n\r\nĐể có thể phân hóa trình độ học sinh, phần Đọc hiểu có nhiều câu hỏi theo các mức độ khác nhau: Nhận biết (biết) - Thông hiểu (hiểu) - Vận dụng thấp - Vận dụng cao. Phần Làm văn, với Nghị luận xã hội, việc phân hóa trình độ học sinh căn cứ vào năng lực phân tích vấn đề, vận dụng vào thực tiễn, nhận thức và hành động của bản thân. Với Nghị luận văn học, phân hóa theo trình độ nắm tri thức về những vấn đề văn học, năng lực phân tích, tổng hợp, năng lực cảm thụ văn chương, năng lực diễn đạt.\r\n\r\nĐể nắm được cấu trúc, yêu cầu của đề thi, học sinh tham khảo Đề thi chính thức Kỳ thi THPT quốc gia năm 2015, môn Ngữ văn của Bộ GD&amp;ĐT.\r\n\r\n<strong>Kiến thức, phương pháp phần Đọc hiểu</strong>\r\n\r\nLiên quan đến nội kiến thức và phương pháp, thí sinh cần phải thấu suốt quan điểm và nhận thức đúng thực tế: Không có phương pháp, năng lực tự nhiên, tự thân. Phương pháp, năng lực chỉ có thể hình thành trên cơ sở kiến thức. Không có sự tách rời, đối lập giữa kiến thức và năng lực. Vả lại, là môn học trong nhà trường phổ thông, môn Văn cũng như các môn học khác, có những yêu cầu về kiến thức cần phải nắm vững. Vì vậy, học sinh cần phải học và ôn những kiến thức trọng tâm, từ đó hình thành phương pháp, phát triển năng lực.\r\n\r\nKiến thức ở phần Đọc hiểu không những giúp chúng ta làm tốt phần Đọc hiểu mà còn làm tốt cả phần Làm văn, bởi lẽ khi phân tích văn học, nhiều khi phải vận dụng kiến thức đọc hiểu văn bản. Học sinh cần nắm và vận dụng kiến thức như sau:\r\n\r\nThứ nhất là Các thể thơ: Thơ Đường luật, thơ lục bát, thơ song thất lục bát, thơ tự do, một số thể thơ khác (thơ năm chữ - mỗi câu thơ năm chữ, thơ bảy chữ - mỗi câu thơ bảy chữ, thơ tám chữ - mỗi câu thơ tám chữ, các câu thơ nối tiếp nhau hoặc bốn câu thơ làm thành một khổ thơ). Với các thể thơ, cần nắm và vận dụng theo các mức độ: Đặc điểm cơ bản của thể thơ, nhận biết văn bản được viết theo thể thơ nào, tác dụng của thể thơ đó trong văn bản đọc hiểu.\r\n\r\nThứ hai là các biện pháp tu từ: Biện pháp nghệ thuật tu từ bao gồm cả tu từ từ vựng và tu từ cú pháp. Tu từ từ vựng gồm các biện pháp so sánh, ẩn dụ, hoán dụ, nhân cách hóa, điệp từ, điệp ngữ, đối tương đồng, đối tương phản. Tu từ cú pháp bao gồm câu hỏi tu từ, đảo trật tự cú pháp (đảo ngữ), liệt kê, câu đặc biệt, điệp cấu trúc câu... Với các biện pháp nghệ thuật tu từ, cần nắm và vận dụng theo các mức độ: Đặc điểm của từng biện pháp nghệ thuật tu từ, nhận biết các biện pháp nghệ thuật tu từ trong văn bản, tác dụng của các biện pháp tu từ, nhất là giá trị nghệ thuật của biện pháp tu từ trong văn cảnh của văn bản.\r\n\r\nThứ ba là các kiểu văn bản và các phương thức biểu đạt, gồm: Văn bản miêu tả, văn bản tự sự, văn bản biểu cảm, văn bản thông báo, văn bản thuyết minh, văn bản nghị luận. Học sinh cần nắm và vận dụng theo các mức độ: Đặc điểm phương thức biểu đạt của kiểu văn bản, nhận biết văn bản đọc hiểu được viết theo kiểu văn bản và phương thức biểu đạt nào, tác dụng của kiểu văn bản và phương thức biểu đạt đó ở văn bản đọc hiểu.\r\n\r\nThứ tư là các phong cách ngôn ngữ: Phong cách ngôn ngữ sinh hoạt, phong cách ngôn ngữ hành chính, phong cách ngôn ngữ khoa học, phong cách ngôn ngữ báo chí, phong cách ngôn ngữ chính luận, phong cách ngôn ngữ nghệ thuật. Học sinh cũng cần nắm và vận dụng theo các mức độ: Đặc điểm của từng phong cách ngôn ngữ, nhận biết phong cách ngôn ngữ của văn bản đọc hiểu, tác dụng của phong cách ngôn ngữ đối với kiểu văn bản đọc hiểu.\r\n\r\nĐọc hiểu văn bản vừa phải nhận diện đúng các biện pháp nghệ thuật, các yếu tố nghệ thuật, vừa phải thấy được tác dụng của các biện pháp, các yếu tố nghệ thuật đó. Từ các yếu tố cụ thể, cần khái quát tổng hợp, cảm nhận chung về văn bản đọc hiểu.<em> </em>\r\n\r\n</div>', 'Tác giả biên soạn sách tư vấn \"Toàn cảnh kiến thức, phương pháp làm bài Ngữ văn thi THPTQG\" (Phần 1)', '', 'publish', 'open', 'open', '', 'tac-gia-bien-soan-sach-tu-van-toan-canh-kien-thuc-phuong-phap-lam-bai-ngu-van-thi-thptqg-phan-1', '', '', '2020-05-28 14:52:19', '2020-05-28 14:52:19', '', 0, 'http://localhost/nxb/?p=23', 0, 'post', '', 0),
(24, 1, '2020-05-28 14:52:07', '2020-05-28 14:52:07', '', '15', '', 'inherit', 'open', 'closed', '', '15', '', '', '2020-05-28 14:52:07', '2020-05-28 14:52:07', '', 23, 'http://localhost/nxb/wp-content/uploads/2020/05/15.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2020-05-28 14:52:19', '2020-05-28 14:52:19', '<div class=\"brief-detail\">\r\n\r\n<strong>GD&amp;TĐ - Để làm bài thi Ngữ văn Kỳ thi THPT quốc gia năm nay thật tốt, thí sinh cần bồi dưỡng năng lực Ngữ văn cả về kiến thức và phương pháp làm bài. Báo Giáo dục và Thời đại xin giới thiệu bài viết của GS.TS Lã Nhâm Thìn - Nguyên Trưởng khoa Ngữ văn (Trường ĐHSP Hà Nội) - với những chia sẻ chi tiết về vấn đề này.</strong>\r\n\r\n</div>\r\n<!--more-->\r\n<div class=\"content-detail\">\r\n\r\n<strong>Phần 1: Yêu cầu đề thi và kiến thức, phương pháp phần Đọc hiểu</strong>\r\n\r\nĐể Kỳ thi THPT môn Ngữ văn đạt kết quả tốt, trước hết thí sinh cần nắm được cấu trúc và yêu cầu của đề thi để từ đó xác định kiến thức và phương pháp làm bài.\r\n\r\n<strong>Cấu trúc, yêu cầu đề thi</strong>\r\n\r\nVề cấu trúc đề thi: Đề thi gồm hai phần Đọc hiểu và Làm văn. Phần Đọc hiểu (3,0 điểm) có hai đoạn văn bản, thường là một đoạn thơ và một đoạn văn xuôi (có trong SGK hoặc ngoài SGK). Phần Làm văn có Nghị luận xã hội (3,0 điểm) và Nghị luận văn học (4,0 điểm).\r\n\r\nVề yêu cầu của đề thi: Đánh giá được năng lực ngữ văn của học sinh, phân hóa được trình độ học sinh để xét tốt nghiệp THPT và xét tuyển vào các trường đại học, cao đẳng theo các mức độ cao thấp khác nhau.\r\n\r\nYêu cầu đánh giá năng lực ngữ văn của học sinh cụ thể gồm: Năng lực tiếp nhận văn bản (chú trọng năng lực đọc hiểu văn bản) - Năng lực đọc hiểu nhiều kiểu loại văn bản khác nhau, theo các mức độ: Hiểu đúng văn bản, thấy được cái hay của văn bản, thấy được cái đẹp (giá trị thẩm mĩ) của văn bản (đối với văn bản văn học).\r\n\r\nNăng lực viết văn bản: Tổ chức văn bản, triển khai nội dung, trình bày theo đúng phong cách ngôn ngữ… Chú ý năng lực viết văn bản nghị luận về những vấn đề trong đời sống, xã hội, về tác phẩm văn chương…; chú ý năng lực giải quyết vấn đề.\r\n\r\nVề yêu cầu phân hóa trình độ học sinh: Đề ra theo theo hướng mở để học sinh có thể phát huy vốn kiết thức, năng lực sáng tạo, cá tính sắc sảo… Văn bản đọc hiểu có trong SGK hay ngoài SGK, trên cơ sở tri thức cơ bản, nền tảng của yêu cầu đọc hiểu. Nghị luận xã hội, tích hợp các kiến thức về lịch sử, địa lí, văn hóa, xã hội… Nghị luận văn học, kiến thức trọng tâm ở các tác phẩm văn học nằm trong nội dung thi kết hợp với yêu cầu thể hiện năng lực sáng tạo của học sinh (phân tích sâu, mở rộng liên hệ so sánh, năng lực tổng hợp…)\r\n\r\nĐể có thể phân hóa trình độ học sinh, phần Đọc hiểu có nhiều câu hỏi theo các mức độ khác nhau: Nhận biết (biết) - Thông hiểu (hiểu) - Vận dụng thấp - Vận dụng cao. Phần Làm văn, với Nghị luận xã hội, việc phân hóa trình độ học sinh căn cứ vào năng lực phân tích vấn đề, vận dụng vào thực tiễn, nhận thức và hành động của bản thân. Với Nghị luận văn học, phân hóa theo trình độ nắm tri thức về những vấn đề văn học, năng lực phân tích, tổng hợp, năng lực cảm thụ văn chương, năng lực diễn đạt.\r\n\r\nĐể nắm được cấu trúc, yêu cầu của đề thi, học sinh tham khảo Đề thi chính thức Kỳ thi THPT quốc gia năm 2015, môn Ngữ văn của Bộ GD&amp;ĐT.\r\n\r\n<strong>Kiến thức, phương pháp phần Đọc hiểu</strong>\r\n\r\nLiên quan đến nội kiến thức và phương pháp, thí sinh cần phải thấu suốt quan điểm và nhận thức đúng thực tế: Không có phương pháp, năng lực tự nhiên, tự thân. Phương pháp, năng lực chỉ có thể hình thành trên cơ sở kiến thức. Không có sự tách rời, đối lập giữa kiến thức và năng lực. Vả lại, là môn học trong nhà trường phổ thông, môn Văn cũng như các môn học khác, có những yêu cầu về kiến thức cần phải nắm vững. Vì vậy, học sinh cần phải học và ôn những kiến thức trọng tâm, từ đó hình thành phương pháp, phát triển năng lực.\r\n\r\nKiến thức ở phần Đọc hiểu không những giúp chúng ta làm tốt phần Đọc hiểu mà còn làm tốt cả phần Làm văn, bởi lẽ khi phân tích văn học, nhiều khi phải vận dụng kiến thức đọc hiểu văn bản. Học sinh cần nắm và vận dụng kiến thức như sau:\r\n\r\nThứ nhất là Các thể thơ: Thơ Đường luật, thơ lục bát, thơ song thất lục bát, thơ tự do, một số thể thơ khác (thơ năm chữ - mỗi câu thơ năm chữ, thơ bảy chữ - mỗi câu thơ bảy chữ, thơ tám chữ - mỗi câu thơ tám chữ, các câu thơ nối tiếp nhau hoặc bốn câu thơ làm thành một khổ thơ). Với các thể thơ, cần nắm và vận dụng theo các mức độ: Đặc điểm cơ bản của thể thơ, nhận biết văn bản được viết theo thể thơ nào, tác dụng của thể thơ đó trong văn bản đọc hiểu.\r\n\r\nThứ hai là các biện pháp tu từ: Biện pháp nghệ thuật tu từ bao gồm cả tu từ từ vựng và tu từ cú pháp. Tu từ từ vựng gồm các biện pháp so sánh, ẩn dụ, hoán dụ, nhân cách hóa, điệp từ, điệp ngữ, đối tương đồng, đối tương phản. Tu từ cú pháp bao gồm câu hỏi tu từ, đảo trật tự cú pháp (đảo ngữ), liệt kê, câu đặc biệt, điệp cấu trúc câu... Với các biện pháp nghệ thuật tu từ, cần nắm và vận dụng theo các mức độ: Đặc điểm của từng biện pháp nghệ thuật tu từ, nhận biết các biện pháp nghệ thuật tu từ trong văn bản, tác dụng của các biện pháp tu từ, nhất là giá trị nghệ thuật của biện pháp tu từ trong văn cảnh của văn bản.\r\n\r\nThứ ba là các kiểu văn bản và các phương thức biểu đạt, gồm: Văn bản miêu tả, văn bản tự sự, văn bản biểu cảm, văn bản thông báo, văn bản thuyết minh, văn bản nghị luận. Học sinh cần nắm và vận dụng theo các mức độ: Đặc điểm phương thức biểu đạt của kiểu văn bản, nhận biết văn bản đọc hiểu được viết theo kiểu văn bản và phương thức biểu đạt nào, tác dụng của kiểu văn bản và phương thức biểu đạt đó ở văn bản đọc hiểu.\r\n\r\nThứ tư là các phong cách ngôn ngữ: Phong cách ngôn ngữ sinh hoạt, phong cách ngôn ngữ hành chính, phong cách ngôn ngữ khoa học, phong cách ngôn ngữ báo chí, phong cách ngôn ngữ chính luận, phong cách ngôn ngữ nghệ thuật. Học sinh cũng cần nắm và vận dụng theo các mức độ: Đặc điểm của từng phong cách ngôn ngữ, nhận biết phong cách ngôn ngữ của văn bản đọc hiểu, tác dụng của phong cách ngôn ngữ đối với kiểu văn bản đọc hiểu.\r\n\r\nĐọc hiểu văn bản vừa phải nhận diện đúng các biện pháp nghệ thuật, các yếu tố nghệ thuật, vừa phải thấy được tác dụng của các biện pháp, các yếu tố nghệ thuật đó. Từ các yếu tố cụ thể, cần khái quát tổng hợp, cảm nhận chung về văn bản đọc hiểu.<em> </em>\r\n\r\n</div>', 'Tác giả biên soạn sách tư vấn \"Toàn cảnh kiến thức, phương pháp làm bài Ngữ văn thi THPTQG\" (Phần 1)', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-05-28 14:52:19', '2020-05-28 14:52:19', '', 23, 'http://localhost/nxb/2020/05/28/23-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2020-05-28 14:54:31', '2020-05-28 14:54:31', '{\n    \"blossom-recipe::social_links\": {\n        \"value\": \"%5B%5D\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-28 14:54:06\"\n    },\n    \"blossom-recipe::ed_prefix_archive\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-28 14:54:06\"\n    },\n    \"blossom-recipe::excerpt_length\": {\n        \"value\": \"100\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-28 14:54:06\"\n    },\n    \"blossom-recipe::ed_post_date\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-28 14:54:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e3113f05-0672-4278-8ca5-5e6aad83fd09', '', '', '2020-05-28 14:54:31', '2020-05-28 14:54:31', '', 0, 'http://localhost/nxb/?p=26', 0, 'customize_changeset', '', 0),
(27, 1, '2020-05-28 14:56:05', '2020-05-28 14:56:05', '<div class=\"brief-detail\">\r\n\r\n<strong>GD&amp;TĐ - GS.TS Lã Nhâm Thìn - Nguyên Trưởng khoa Ngữ văn (Trường ĐHSP Hà Nội) - lưu ý thí sinh thi THPT quốc gia năm 2016 về kiến thức, phương pháp phần Làm văn bài thi THPT quốc gia với nội dung Nghị luận xã hội và Nghị luận văn học.</strong>\r\n\r\n</div>\r\n<div class=\"content-detail\">\r\n\r\n<strong>Phần 2: Kiến thức, phương pháp Làm văn thi THPT quốc gia</strong>\r\n\r\n</div>\r\n<!--more-->\r\n\r\n<strong>Nghị luận xã hội: Các dạng đề và trình tự làm bài</strong>\r\n\r\nThí sinh cần nắm vững các dạng đề nghị luận xã hội gồm: Nghị luận về một tư tưởng đạo lí; nghị luận về một hiện tượng, sự kiện trong đời sống; nghị luận về một vấn đề xã hội đặt ra trong tác phẩm văn học.\r\n\r\nNghị luận về một tư tưởng đạo lí: Dạng đề này thường lấy một câu danh ngôn, một nhận định, một đánh giá nào đó để yêu cầu người viết bàn luận. Dạng đề này thường bàn về các vấn đề: Quan niệm về cuộc sống, lí tưởng sống, thái độ sống (kiểu đề này khá phổ biến); quan niệm về tốt - xấu, thiện - ác, chính nghĩa - gian tà, vị tha - ích kỉ; các quan hệ xã hội, tình đồng loại, tình cốt nhục, tình bạn, tình yêu; các hành động hoặc các ứng xử (phổ biến hơn cả): Tích cực - tiêu cực, ý thức - vô ý thức, có văn hóa - vô văn hóa…\r\n\r\nNghị luận về một hiện tượng, sự kiện trong đời sống: Dạng đề này thường nêu lên một hiện tượng, một vấn đề có tính chất thời sự, được mọi người (trong nước, ngoài nước) quan tâm.\r\n\r\nNghị luận về một vấn đề xã hội đặt ra trong tác phẩm văn học: Dạng đề này thường từ một tác phẩm văn học, yêu cầu bàn về một ý nghĩa xã hội nào đó gợi lên từ tác phẩm.\r\n\r\nLưu ý: Có khi vấn đề nêu ra vừa là một tư tưởng, đạo lí, vừa có ý nghĩa một hiện tượng, sự kiện trong đời sống. Đề thi thường là những vấn đề tư tưởng đạo lí có ý nghĩa thời sự, thiết thực đối với cuộc sống đương thời.\r\n\r\nĐể làm tốt bài làm văn nghị luận xã hội, có thể chuẩn bị kiến thức theo các chủ đề: Đạo đức, nhân cách, lí tưởng, lối sống, lòng nhân ái, tri thức, trí tuệ, học tập, nghề nghiệp, môi trường, văn hóa… Những kiến thức này có trên sách báo và có từ thực tế đời sống xã hội.\r\n\r\nCùng các dạng đề nghị luận xã hội, thí sinh cần nắm vững trình tự làm một bài văn nghị luận xã hội, cụ thể như sau:\r\n\r\nGiải thích vấn đề, ý kiến cần bàn luận: Giải thích nghĩa thực, nghĩa nghệ thuật, nếu ý kiến, vấn đề được nói bằng hình ảnh. Tiếp đó là giải thích các phương diện nội dung vấn đề bàn luận.\r\n\r\nLuận bàn về vấn đề, ý kiến được đặt ra: Vấn đề, ý kiến bàn luận đúng hay sai? Đúng sai ở mức độ nào? Ý nghĩa của vấn đề, của ý kiến đúng, sai? Dẫn chứng làm sáng tỏ (dẫn chứng từ đời sống, khi cần có thể lấy dẫn chứng từ tác phẩm văn học, nhưng không làm bài nghị luận xã hội trở thành bài nghị luận văn học).\r\n\r\nBài học về nhận thức và hành động: Nhận thức của bản thân trước vấn đề, ý kiến bàn luận đặt ra. Từ nhận thức chuyển biến thành hành động (hành động của bản thân và tác động tới cộng đồng)\r\n\r\n<strong>Những lưu ý với kiểu bài nghị luận văn học</strong>\r\n\r\nVới kiểu bài nghị luận văn học, đầu tiên, thí sinh cần nắm vững kiến thức trọng tâm của các tác phẩm văn học nằm trong nội dung thi. Tác phẩm văn học nằm trong nội dung thi có ở cả chương trình lớp 11 và lớp 12, nhưng chủ yếu là chương trình lớp 12. Có thể học và ôn theo hệ thống thể loại: Thơ, văn xuôi, kịch, văn nghị luận.\r\n\r\nVề thơ: Các bài Tây Tiến (Quang Dũng), Việt Bắc (Tố Hữu), Sóng (Xuân Quỳnh), Đất Nước (Nguyễn Khoa Điềm), Đàn ghi ta của Lor-ca (Thanh Thảo). Cũng cần quan tâm thêm tới các bài thơ ở chương trình lớp 11: Vội vàng (Xuân Diệu), Tràng giang (Huy Cận), Đây thôn Vĩ Dạ (Hàn Mặc Tử), Chiều tối (Mộ) của Chủ tịch Hồ Chí Minh, Từ ấy (Tố Hữu). Đối với thơ, cần nắm kiến thức trọng tâm về nội dung, về nghệ thuật, vừa bao quát toàn bài, vừa phân tích được những đoạn thơ hay, tiêu biểu, chú ý tới hình tượng nhân vật trữ tình, nghệ thuật sử dụng từ ngữ, hình ảnh, nhịp điệu, vần điệu.\r\n\r\nVề văn xuôi: Các bài Vợ chồng A Phủ (Tô Hoài), Vợ nhặt (Kim Lân), Người lái đò Sông Đà (Nguyễn Tuân), Rừng xà nu (Nguyễn Trung Thành), Những đứa con trong gia đình (Nguyễn Thi), Chiếc thuyền ngoài xa (Nguyễn Minh Châu), Ai đã đặt tên cho dòng sông? (Hoàng Phủ Ngọc Tường). Cần quan tâm thêm tới các tác phẩm văn xuôi ở chương trình lớp 11: Hai đứa trẻ (Thạch Lam), Chữ người tử tù (Nguyễn Tuân), Chí Phèo (Nam Cao).\r\n\r\nĐối với tác phẩm văn xuôi, bên cạnh việc nắm kiến thức trọng tâm về nội dung, nghệ thuật, cần chú ý tới kết cấu, cốt truyện, tình huống truyện, nhân vật, tình tiết nghệ thuật, nghệ thuật kể chuyện.\r\n\r\nVề kịch có tác phẩm Hồn Trương Ba da hàng thịt (Lưu Quang Vũ). Quan tâm thêm tới tác phẩm kịch ở chương trình lớp 11: Trích đoạn Vĩnh biệt Cửu Trùng Đài (kịch Vũ Như Tô) của Nguyễn Huy Tưởng. Đối với tác phẩm kịch, bên cạnh việc nắm kiến thức trọng tâm về nội dung, nghệ thuật, cần chú ý tới tình huống kịch, mâu thuẫn, xung đột kịch, nhân vật, ngôn ngữ, hành động kịch.\r\n\r\nVề văn nghị luận có tác phẩm Tuyên ngôn Độc lập (Hồ Chí Minh). Đối với văn nghị luận, bên cạnh việc nắm kiến thức trọng tâm về nội dung, nghệ thuật, thí sinh cần chú ý tới kết cấu, hệ thống luận điểm, trình tự lập luận, nghệ thuật lập luận.\r\n\r\nThứ hai, từ việc nắm kiến thức trọng tâm của từng tác phẩm, thí sinh mở rộng so sánh, tổng hợp theo các chủ đề, các vấn đề, cụ thể:\r\n\r\nChủ đề đất nước, cách mạng qua bài thơ Việt Bắc và Đất Nước (Nguyễn Khoa Điềm) (So sánh trên các vấn đề: Lòng yêu nước, yêu cách mạng, sự gắn bó giữa nhân dân với đất nước, cách mạng, nghệ thuật sử dụng chất liệu dân gian...).\r\n\r\nChủ đề người nông dân qua truyện ngắn Chí Phèo và truyện ngắn Vợ nhặt (So sánh trên các vấn đề: Số phận người nông dân, nội dung nhân đạo, cách kết thúc tác phẩm).\r\n\r\nChủ đề người phụ nữ qua các tác phẩm Vợ chồng A Phủ, Vợ nhặt, Chiếc thuyền ngoài xa (So sánh trên các vấn đề: Số phận, vẻ đẹp người phụ nữ, giá trị nhân đạo).\r\n\r\nSo sánh chất sử thi trong hai tác phẩm Rừng xà nu và Những đứa con trong gia đình.\r\n\r\nSo sánh hình tượng Sông Đà trong Người lái đò Sông Đà và hình tượng sông Hương trong Ai đã đặt tên cho dòng sông?\r\n\r\nThứ ba, thí sinh ôn luyện kĩ năng làm bài nghị luận văn học. Theo đó, phần Mở bài: Khái quát về tác giả (vị trí, đóng góp của tác giả); khái quát về tác phẩm (vị trí tác phẩm, hoàn cảnh sáng tác (nếu hoàn cảnh sáng tác thật sự có ý nghĩa để hiểu sâu thêm tác phẩm), giá trị nội dung, giá trị nghệ thuật); khái quát vấn đề cần bàn luận. Đã gọi là khái quát thì cần ngắn gọn.\r\n\r\nThân bài: Các ý trình bày khái quát thành luận điểm, luận cứ, phân tích dẫn chứng để làm sáng tỏ. Các luận điểm nên trình bày theo hướng Tổng - Phân - Hợp (Khái quát các nội dung trình bày bằng câu chủ đề, phân tích và chứng minh các nội dung theo trình tự đã khái quát ở câu chủ đề, kết luận chung lại sau khi đã phân tích).\r\n\r\nKết luận: Khái quát lại ngắn gọn những vấn đề đã trình bày, liên hệ mở rộng, nâng cao vấn đề bàn luận.', 'Tác giả biên soạn sách tư vấn \"Toàn cảnh kiến thức, phương pháp làm bài Ngữ văn thi THPTQG\" (Phần 2)', '', 'publish', 'open', 'open', '', 'tac-gia-bien-soan-sach-tu-van-toan-canh-kien-thuc-phuong-phap-lam-bai-ngu-van-thi-thptqg-phan-2', '', '', '2020-05-28 14:56:05', '2020-05-28 14:56:05', '', 0, 'http://localhost/nxb/?p=27', 0, 'post', '', 0),
(28, 1, '2020-05-28 14:56:00', '2020-05-28 14:56:00', '', '1_BYFW', '', 'inherit', 'open', 'closed', '', '1_byfw', '', '', '2020-05-28 14:56:00', '2020-05-28 14:56:00', '', 27, 'http://localhost/nxb/wp-content/uploads/2020/05/1_BYFW.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2020-05-28 14:56:05', '2020-05-28 14:56:05', '<div class=\"brief-detail\">\r\n\r\n<strong>GD&amp;TĐ - GS.TS Lã Nhâm Thìn - Nguyên Trưởng khoa Ngữ văn (Trường ĐHSP Hà Nội) - lưu ý thí sinh thi THPT quốc gia năm 2016 về kiến thức, phương pháp phần Làm văn bài thi THPT quốc gia với nội dung Nghị luận xã hội và Nghị luận văn học.</strong>\r\n\r\n</div>\r\n<div class=\"content-detail\">\r\n\r\n<strong>Phần 2: Kiến thức, phương pháp Làm văn thi THPT quốc gia</strong>\r\n\r\n</div>\r\n<!--more-->\r\n\r\n<strong>Nghị luận xã hội: Các dạng đề và trình tự làm bài</strong>\r\n\r\nThí sinh cần nắm vững các dạng đề nghị luận xã hội gồm: Nghị luận về một tư tưởng đạo lí; nghị luận về một hiện tượng, sự kiện trong đời sống; nghị luận về một vấn đề xã hội đặt ra trong tác phẩm văn học.\r\n\r\nNghị luận về một tư tưởng đạo lí: Dạng đề này thường lấy một câu danh ngôn, một nhận định, một đánh giá nào đó để yêu cầu người viết bàn luận. Dạng đề này thường bàn về các vấn đề: Quan niệm về cuộc sống, lí tưởng sống, thái độ sống (kiểu đề này khá phổ biến); quan niệm về tốt - xấu, thiện - ác, chính nghĩa - gian tà, vị tha - ích kỉ; các quan hệ xã hội, tình đồng loại, tình cốt nhục, tình bạn, tình yêu; các hành động hoặc các ứng xử (phổ biến hơn cả): Tích cực - tiêu cực, ý thức - vô ý thức, có văn hóa - vô văn hóa…\r\n\r\nNghị luận về một hiện tượng, sự kiện trong đời sống: Dạng đề này thường nêu lên một hiện tượng, một vấn đề có tính chất thời sự, được mọi người (trong nước, ngoài nước) quan tâm.\r\n\r\nNghị luận về một vấn đề xã hội đặt ra trong tác phẩm văn học: Dạng đề này thường từ một tác phẩm văn học, yêu cầu bàn về một ý nghĩa xã hội nào đó gợi lên từ tác phẩm.\r\n\r\nLưu ý: Có khi vấn đề nêu ra vừa là một tư tưởng, đạo lí, vừa có ý nghĩa một hiện tượng, sự kiện trong đời sống. Đề thi thường là những vấn đề tư tưởng đạo lí có ý nghĩa thời sự, thiết thực đối với cuộc sống đương thời.\r\n\r\nĐể làm tốt bài làm văn nghị luận xã hội, có thể chuẩn bị kiến thức theo các chủ đề: Đạo đức, nhân cách, lí tưởng, lối sống, lòng nhân ái, tri thức, trí tuệ, học tập, nghề nghiệp, môi trường, văn hóa… Những kiến thức này có trên sách báo và có từ thực tế đời sống xã hội.\r\n\r\nCùng các dạng đề nghị luận xã hội, thí sinh cần nắm vững trình tự làm một bài văn nghị luận xã hội, cụ thể như sau:\r\n\r\nGiải thích vấn đề, ý kiến cần bàn luận: Giải thích nghĩa thực, nghĩa nghệ thuật, nếu ý kiến, vấn đề được nói bằng hình ảnh. Tiếp đó là giải thích các phương diện nội dung vấn đề bàn luận.\r\n\r\nLuận bàn về vấn đề, ý kiến được đặt ra: Vấn đề, ý kiến bàn luận đúng hay sai? Đúng sai ở mức độ nào? Ý nghĩa của vấn đề, của ý kiến đúng, sai? Dẫn chứng làm sáng tỏ (dẫn chứng từ đời sống, khi cần có thể lấy dẫn chứng từ tác phẩm văn học, nhưng không làm bài nghị luận xã hội trở thành bài nghị luận văn học).\r\n\r\nBài học về nhận thức và hành động: Nhận thức của bản thân trước vấn đề, ý kiến bàn luận đặt ra. Từ nhận thức chuyển biến thành hành động (hành động của bản thân và tác động tới cộng đồng)\r\n\r\n<strong>Những lưu ý với kiểu bài nghị luận văn học</strong>\r\n\r\nVới kiểu bài nghị luận văn học, đầu tiên, thí sinh cần nắm vững kiến thức trọng tâm của các tác phẩm văn học nằm trong nội dung thi. Tác phẩm văn học nằm trong nội dung thi có ở cả chương trình lớp 11 và lớp 12, nhưng chủ yếu là chương trình lớp 12. Có thể học và ôn theo hệ thống thể loại: Thơ, văn xuôi, kịch, văn nghị luận.\r\n\r\nVề thơ: Các bài Tây Tiến (Quang Dũng), Việt Bắc (Tố Hữu), Sóng (Xuân Quỳnh), Đất Nước (Nguyễn Khoa Điềm), Đàn ghi ta của Lor-ca (Thanh Thảo). Cũng cần quan tâm thêm tới các bài thơ ở chương trình lớp 11: Vội vàng (Xuân Diệu), Tràng giang (Huy Cận), Đây thôn Vĩ Dạ (Hàn Mặc Tử), Chiều tối (Mộ) của Chủ tịch Hồ Chí Minh, Từ ấy (Tố Hữu). Đối với thơ, cần nắm kiến thức trọng tâm về nội dung, về nghệ thuật, vừa bao quát toàn bài, vừa phân tích được những đoạn thơ hay, tiêu biểu, chú ý tới hình tượng nhân vật trữ tình, nghệ thuật sử dụng từ ngữ, hình ảnh, nhịp điệu, vần điệu.\r\n\r\nVề văn xuôi: Các bài Vợ chồng A Phủ (Tô Hoài), Vợ nhặt (Kim Lân), Người lái đò Sông Đà (Nguyễn Tuân), Rừng xà nu (Nguyễn Trung Thành), Những đứa con trong gia đình (Nguyễn Thi), Chiếc thuyền ngoài xa (Nguyễn Minh Châu), Ai đã đặt tên cho dòng sông? (Hoàng Phủ Ngọc Tường). Cần quan tâm thêm tới các tác phẩm văn xuôi ở chương trình lớp 11: Hai đứa trẻ (Thạch Lam), Chữ người tử tù (Nguyễn Tuân), Chí Phèo (Nam Cao).\r\n\r\nĐối với tác phẩm văn xuôi, bên cạnh việc nắm kiến thức trọng tâm về nội dung, nghệ thuật, cần chú ý tới kết cấu, cốt truyện, tình huống truyện, nhân vật, tình tiết nghệ thuật, nghệ thuật kể chuyện.\r\n\r\nVề kịch có tác phẩm Hồn Trương Ba da hàng thịt (Lưu Quang Vũ). Quan tâm thêm tới tác phẩm kịch ở chương trình lớp 11: Trích đoạn Vĩnh biệt Cửu Trùng Đài (kịch Vũ Như Tô) của Nguyễn Huy Tưởng. Đối với tác phẩm kịch, bên cạnh việc nắm kiến thức trọng tâm về nội dung, nghệ thuật, cần chú ý tới tình huống kịch, mâu thuẫn, xung đột kịch, nhân vật, ngôn ngữ, hành động kịch.\r\n\r\nVề văn nghị luận có tác phẩm Tuyên ngôn Độc lập (Hồ Chí Minh). Đối với văn nghị luận, bên cạnh việc nắm kiến thức trọng tâm về nội dung, nghệ thuật, thí sinh cần chú ý tới kết cấu, hệ thống luận điểm, trình tự lập luận, nghệ thuật lập luận.\r\n\r\nThứ hai, từ việc nắm kiến thức trọng tâm của từng tác phẩm, thí sinh mở rộng so sánh, tổng hợp theo các chủ đề, các vấn đề, cụ thể:\r\n\r\nChủ đề đất nước, cách mạng qua bài thơ Việt Bắc và Đất Nước (Nguyễn Khoa Điềm) (So sánh trên các vấn đề: Lòng yêu nước, yêu cách mạng, sự gắn bó giữa nhân dân với đất nước, cách mạng, nghệ thuật sử dụng chất liệu dân gian...).\r\n\r\nChủ đề người nông dân qua truyện ngắn Chí Phèo và truyện ngắn Vợ nhặt (So sánh trên các vấn đề: Số phận người nông dân, nội dung nhân đạo, cách kết thúc tác phẩm).\r\n\r\nChủ đề người phụ nữ qua các tác phẩm Vợ chồng A Phủ, Vợ nhặt, Chiếc thuyền ngoài xa (So sánh trên các vấn đề: Số phận, vẻ đẹp người phụ nữ, giá trị nhân đạo).\r\n\r\nSo sánh chất sử thi trong hai tác phẩm Rừng xà nu và Những đứa con trong gia đình.\r\n\r\nSo sánh hình tượng Sông Đà trong Người lái đò Sông Đà và hình tượng sông Hương trong Ai đã đặt tên cho dòng sông?\r\n\r\nThứ ba, thí sinh ôn luyện kĩ năng làm bài nghị luận văn học. Theo đó, phần Mở bài: Khái quát về tác giả (vị trí, đóng góp của tác giả); khái quát về tác phẩm (vị trí tác phẩm, hoàn cảnh sáng tác (nếu hoàn cảnh sáng tác thật sự có ý nghĩa để hiểu sâu thêm tác phẩm), giá trị nội dung, giá trị nghệ thuật); khái quát vấn đề cần bàn luận. Đã gọi là khái quát thì cần ngắn gọn.\r\n\r\nThân bài: Các ý trình bày khái quát thành luận điểm, luận cứ, phân tích dẫn chứng để làm sáng tỏ. Các luận điểm nên trình bày theo hướng Tổng - Phân - Hợp (Khái quát các nội dung trình bày bằng câu chủ đề, phân tích và chứng minh các nội dung theo trình tự đã khái quát ở câu chủ đề, kết luận chung lại sau khi đã phân tích).\r\n\r\nKết luận: Khái quát lại ngắn gọn những vấn đề đã trình bày, liên hệ mở rộng, nâng cao vấn đề bàn luận.', 'Tác giả biên soạn sách tư vấn \"Toàn cảnh kiến thức, phương pháp làm bài Ngữ văn thi THPTQG\" (Phần 2)', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2020-05-28 14:56:05', '2020-05-28 14:56:05', '', 27, 'http://localhost/nxb/2020/05/28/27-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2020-05-28 14:59:52', '0000-00-00 00:00:00', '{\n    \"blossom-recipe::background_color\": {\n        \"value\": \"#1ab2b2\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-28 14:59:52\"\n    },\n    \"blossom-recipe::social_links\": {\n        \"value\": \"%5B%5D\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-28 14:59:52\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'ac039d35-9f9e-4158-b3bb-887c35a54635', '', '', '2020-05-28 14:59:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/nxb/?p=30', 0, 'customize_changeset', '', 0),
(31, 1, '2020-05-28 15:11:30', '2020-05-28 15:11:30', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2020-05-31 15:43:44', '2020-05-31 15:43:44', '', 0, 'http://localhost/nxb/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2020-05-28 15:10:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-28 15:10:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/nxb/?p=32', 1, 'nav_menu_item', '', 0),
(34, 1, '2020-05-28 15:11:31', '2020-05-28 15:11:31', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2020-05-31 15:43:45', '2020-05-31 15:43:45', '', 0, 'http://localhost/nxb/?p=34', 3, 'nav_menu_item', '', 0),
(35, 1, '2020-05-28 15:18:38', '2020-05-28 15:18:38', '', 'Recipe Category', '', 'publish', 'closed', 'closed', '', 'recipe-category', '', '', '2020-05-28 15:18:38', '2020-05-28 15:18:38', '', 0, 'http://localhost/nxb/recipe-category/', 0, 'page', '', 0),
(36, 1, '2020-05-28 15:18:39', '2020-05-28 15:18:39', '', 'Recipe Cuisine', '', 'publish', 'closed', 'closed', '', 'recipe-cuisine', '', '', '2020-05-28 15:18:39', '2020-05-28 15:18:39', '', 0, 'http://localhost/nxb/recipe-cuisine/', 0, 'page', '', 0),
(37, 1, '2020-05-28 15:18:39', '2020-05-28 15:18:39', '', 'Recipe Cooking Method', '', 'publish', 'closed', 'closed', '', 'recipe-cooking-method', '', '', '2020-05-28 15:18:39', '2020-05-28 15:18:39', '', 0, 'http://localhost/nxb/recipe-cooking-method/', 0, 'page', '', 0),
(38, 1, '2020-05-28 15:18:39', '2020-05-28 15:18:39', '[BLOSSOM_RECIPE_MAKER_SEARCH_RESULTS]', 'Recipe Search Results', '', 'publish', 'closed', 'closed', '', 'recipe-search-results', '', '', '2020-05-28 15:18:39', '2020-05-28 15:18:39', '', 0, 'http://localhost/nxb/recipe-search-results/', 0, 'page', '', 0),
(39, 1, '2020-05-28 15:18:40', '0000-00-00 00:00:00', 'This is a demo recipe post. Use this like normal recipe post content.', 'Salmon Demo Recipe', 'The excerpt is the summary of the recipe post. It is used on recipe listing templates, where the full recipe should not be displayed.', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-28 15:18:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/nxb/?p=39', 0, 'blossom-recipe', '', 0),
(40, 1, '2020-05-28 15:18:40', '2020-05-28 15:18:40', '', 'salmon-recipe', '', 'inherit', 'open', 'closed', '', 'salmon-recipe', '', '', '2020-05-28 15:18:40', '2020-05-28 15:18:40', '', 39, 'http://localhost/nxb/wp-content/uploads/2020/05/salmon-recipe.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2020-05-28 15:22:32', '2020-05-28 15:22:32', '', 'books_759', '', 'inherit', 'open', 'closed', '', 'books_759', '', '', '2020-05-28 15:22:32', '2020-05-28 15:22:32', '', 0, 'http://localhost/nxb/wp-content/uploads/2020/05/books_759.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(43, 1, '2020-05-28 15:37:07', '2020-05-28 15:37:07', '{\n    \"blossom-recipe::background_color\": {\n        \"value\": \"#8cc1cc\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-28 15:37:07\"\n    },\n    \"blossom-recipe::social_links\": {\n        \"value\": \"%5B%5D\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-28 15:37:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '69b6c66b-3c05-4a82-806c-f34e7941d951', '', '', '2020-05-28 15:37:07', '2020-05-28 15:37:07', '', 0, 'http://localhost/nxb/2020/05/28/69b6c66b-3c05-4a82-806c-f34e7941d951/', 0, 'customize_changeset', '', 0),
(44, 1, '2020-05-28 15:39:26', '2020-05-28 15:39:26', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2020-05-28 15:39:26', '2020-05-28 15:39:26', '', 0, 'http://localhost/nxb/wp-content/uploads/2020/05/logo.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2020-05-28 15:39:37', '2020-05-28 15:39:37', 'http://localhost/nxb/wp-content/uploads/2020/05/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2020-05-28 15:39:37', '2020-05-28 15:39:37', '', 0, 'http://localhost/nxb/wp-content/uploads/2020/05/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2020-05-28 15:39:47', '2020-05-28 15:39:47', '{\n    \"blossom-recipe::header_text\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-28 15:39:47\"\n    },\n    \"site_icon\": {\n        \"value\": 45,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-28 15:39:47\"\n    },\n    \"blossom-recipe::social_links\": {\n        \"value\": \"%5B%5D\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-28 15:39:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8015e2e1-d599-4d27-9402-19cc74e7abd9', '', '', '2020-05-28 15:39:47', '2020-05-28 15:39:47', '', 0, 'http://localhost/nxb/2020/05/28/8015e2e1-d599-4d27-9402-19cc74e7abd9/', 0, 'customize_changeset', '', 0),
(47, 1, '2020-05-28 15:42:06', '2020-05-28 15:42:06', 'http://localhost/nxb/wp-content/uploads/2020/05/cropped-logo-1.png', 'cropped-logo-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-1-png', '', '', '2020-05-28 15:42:06', '2020-05-28 15:42:06', '', 0, 'http://localhost/nxb/wp-content/uploads/2020/05/cropped-logo-1.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2020-05-28 15:42:11', '2020-05-28 15:42:11', '{\n    \"blossom-recipe::custom_logo\": {\n        \"value\": 47,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-28 15:42:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '955a9b62-30d0-404b-82ba-647fcc6c80ca', '', '', '2020-05-28 15:42:11', '2020-05-28 15:42:11', '', 0, 'http://localhost/nxb/?p=48', 0, 'customize_changeset', '', 0),
(49, 1, '2020-05-28 15:42:42', '2020-05-28 15:42:42', '{\n    \"blogdescription\": {\n        \"value\": \"280 An D\\u01b0\\u01a1ng V\\u01b0\\u01a1ng, ph\\u01b0\\u1eddng 4 Qu\\u1eadn 5, th\\u00e0nh ph\\u1ed1 H\\u1ed3 Ch\\u00ed Minh\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-28 15:42:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '225a27fe-3bc0-46ed-b944-602b9c61e180', '', '', '2020-05-28 15:42:42', '2020-05-28 15:42:42', '', 0, 'http://localhost/nxb/2020/05/28/225a27fe-3bc0-46ed-b944-602b9c61e180/', 0, 'customize_changeset', '', 0),
(50, 1, '2020-05-31 15:16:07', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-05-31 15:16:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/nxb/?p=50', 0, 'post', '', 0),
(51, 1, '2020-05-31 15:17:13', '2020-05-31 15:17:13', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-05-31 15:17:13', '2020-05-31 15:17:13', '', 0, 'http://localhost/nxb/wp-content/uploads/2020/05/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2020-05-31 15:19:34', '2020-05-31 15:19:34', '', 'Sản phẩm', '', 'publish', 'closed', 'closed', '', 'mua', '', '', '2020-05-31 16:07:06', '2020-05-31 16:07:06', '', 0, 'http://localhost/nxb/mua/', 0, 'page', '', 0),
(53, 1, '2020-05-31 15:19:34', '2020-05-31 15:19:34', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Giỏ hàng', '', 'publish', 'closed', 'closed', '', 'gio-hang', '', '', '2020-05-31 15:19:34', '2020-05-31 15:19:34', '', 0, 'http://localhost/nxb/gio-hang/', 0, 'page', '', 0),
(54, 1, '2020-05-31 15:19:35', '2020-05-31 15:19:35', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Thanh toán', '', 'publish', 'closed', 'closed', '', 'thanh-toan', '', '', '2020-05-31 15:19:35', '2020-05-31 15:19:35', '', 0, 'http://localhost/nxb/thanh-toan/', 0, 'page', '', 0),
(55, 1, '2020-05-31 15:19:35', '2020-05-31 15:19:35', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'Tài khoản', '', 'publish', 'closed', 'closed', '', 'tai-khoan', '', '', '2020-05-31 15:19:35', '2020-05-31 15:19:35', '', 0, 'http://localhost/nxb/tai-khoan/', 0, 'page', '', 0),
(56, 1, '2020-05-31 15:21:29', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-05-31 15:21:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/nxb/?post_type=product&p=56', 0, 'product', '', 0),
(57, 1, '2020-05-31 15:25:45', '2020-05-31 15:25:45', '<table class=\"table table-bordered table-striped\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"bold\">Tác giả</td>\r\n<td>Đoàn Phi</td>\r\n</tr>\r\n<tr>\r\n<td class=\"bold\">Số trang</td>\r\n<td>120</td>\r\n</tr>\r\n<tr>\r\n<td class=\"bold\">Kích cỡ</td>\r\n<td>17 x 24cm</td>\r\n</tr>\r\n<tr>\r\n<td class=\"bold\">Nhà xuất bản</td>\r\n<td>NXB Đại Học Sư Phạm</td>\r\n</tr>\r\n<tr>\r\n<td class=\"bold\">Hình thức bìa</td>\r\n<td>Bìa mềm</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Chỉ huy dàn dựng hát tập thể', '<img class=\"alignnone size-full wp-image-58\" src=\"http://localhost/nxb/wp-content/uploads/2020/05/7a20d87f9144884e78370285536cb069634588463178222500chi-huy-dan-dung-hat-tap-the.jpg\" alt=\"\" width=\"210\" height=\"300\" />', 'publish', 'open', 'closed', '', 'chi-huy-dan-dung-hat-tap-the', '', '', '2020-05-31 15:25:49', '2020-05-31 15:25:49', '', 0, 'http://localhost/nxb/?post_type=product&#038;p=57', 0, 'product', '', 0),
(58, 1, '2020-05-31 15:25:32', '2020-05-31 15:25:32', '', '7a20d87f9144884e78370285536cb069634588463178222500chi-huy-dan-dung-hat-tap-the', '', 'inherit', 'open', 'closed', '', '7a20d87f9144884e78370285536cb069634588463178222500chi-huy-dan-dung-hat-tap-the', '', '', '2020-05-31 15:25:32', '2020-05-31 15:25:32', '', 57, 'http://localhost/nxb/wp-content/uploads/2020/05/7a20d87f9144884e78370285536cb069634588463178222500chi-huy-dan-dung-hat-tap-the.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2020-05-31 15:28:28', '2020-05-31 15:28:28', '<table class=\"table table-bordered table-striped\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"bold\">Tác giả</td>\r\n<td>Trần Minh Trí</td>\r\n</tr>\r\n<tr>\r\n<td class=\"bold\">Kích cỡ</td>\r\n<td>17 x 24cm</td>\r\n</tr>\r\n<tr>\r\n<td class=\"bold\">Nhà xuất bản</td>\r\n<td>NXB Đại Học Sư Phạm</td>\r\n</tr>\r\n<tr>\r\n<td class=\"bold\">Hình thức bìa</td>\r\n<td>Bìa mềm</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'GT Múa - Tập 2', '<img class=\"alignnone size-medium wp-image-60\" src=\"http://localhost/nxb/wp-content/uploads/2020/05/4409aeb65259aa09c8092826fe70eb31634586102327128750mua-Converted-212x300.jpg\" alt=\"\" width=\"212\" height=\"300\" />', 'publish', 'open', 'closed', '', 'gt-mua-tap-2', '', '', '2020-05-31 15:28:33', '2020-05-31 15:28:33', '', 0, 'http://localhost/nxb/?post_type=product&#038;p=59', 0, 'product', '', 0),
(60, 1, '2020-05-31 15:28:05', '2020-05-31 15:28:05', '', '4409aeb65259aa09c8092826fe70eb31634586102327128750mua-[Converted]', '', 'inherit', 'open', 'closed', '', '4409aeb65259aa09c8092826fe70eb31634586102327128750mua-converted', '', '', '2020-05-31 15:28:05', '2020-05-31 15:28:05', '', 59, 'http://localhost/nxb/wp-content/uploads/2020/05/4409aeb65259aa09c8092826fe70eb31634586102327128750mua-Converted.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2020-05-31 15:33:56', '2020-05-31 15:33:56', '', 'cropped-books_759-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-books_759-1-jpg', '', '', '2020-05-31 15:33:56', '2020-05-31 15:33:56', '', 0, 'http://localhost/nxb/wp-content/uploads/2020/05/cropped-books_759-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2020-05-31 15:38:31', '2020-05-31 15:38:31', '{\n    \"moto-news::header_textcolor\": {\n        \"value\": \"#d7d7d7\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 15:34:27\"\n    },\n    \"moto-news::header_image\": {\n        \"value\": \"http://localhost/nxb/wp-content/uploads/2020/05/cropped-download-1.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 15:37:17\"\n    },\n    \"moto-news::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/nxb/wp-content/uploads/2020/05/cropped-download-1.jpg\",\n            \"thumbnail_url\": \"http://localhost/nxb/wp-content/uploads/2020/05/cropped-download-1.jpg\",\n            \"timestamp\": 1590939422393,\n            \"attachment_id\": 66,\n            \"width\": 1900,\n            \"height\": 399\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 15:37:17\"\n    },\n    \"moto-news::theme_options[show_ticker]\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 15:38:17\"\n    },\n    \"moto-news::theme_options[ticker_title]\": {\n        \"value\": \"Tin m\\u1edbi\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 15:38:17\"\n    },\n    \"moto-news::theme_options[ticker_number]\": {\n        \"value\": \"5\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 15:38:17\"\n    },\n    \"moto-news::theme_options[show_social_in_header]\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 15:38:17\"\n    },\n    \"moto-news::theme_options[show_tagline]\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 15:38:31\"\n    },\n    \"moto-news::theme_options[show_date]\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 15:38:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd43d54bf-6752-4c87-b147-af88a98423d4', '', '', '2020-05-31 15:38:31', '2020-05-31 15:38:31', '', 0, 'http://localhost/nxb/?p=62', 0, 'customize_changeset', '', 0),
(63, 1, '2020-05-31 15:35:00', '2020-05-31 15:35:00', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2020-05-31 15:35:00', '2020-05-31 15:35:00', '', 0, 'http://localhost/nxb/wp-content/uploads/2020/05/download.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2020-05-31 15:35:10', '2020-05-31 15:35:10', '', 'cropped-download.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-download-jpg', '', '', '2020-05-31 15:35:10', '2020-05-31 15:35:10', '', 0, 'http://localhost/nxb/wp-content/uploads/2020/05/cropped-download.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2020-05-31 15:36:49', '2020-05-31 15:36:49', '', 'download', '', 'inherit', 'open', 'closed', '', 'download-2', '', '', '2020-05-31 15:36:49', '2020-05-31 15:36:49', '', 0, 'http://localhost/nxb/wp-content/uploads/2020/05/download-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2020-05-31 15:36:59', '2020-05-31 15:36:59', '', 'cropped-download-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-download-1-jpg', '', '', '2020-05-31 15:36:59', '2020-05-31 15:36:59', '', 0, 'http://localhost/nxb/wp-content/uploads/2020/05/cropped-download-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2020-05-31 15:39:28', '2020-05-31 15:39:28', '{\n    \"nav_menu_item[33]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 15:39:28\"\n    },\n    \"nav_menu_item[-9116133494761312000]\": {\n        \"value\": {\n            \"object_id\": 52,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"C\\u1eeda h\\u00e0ng\",\n            \"url\": \"http://localhost/nxb/mua/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"C\\u1eeda h\\u00e0ng\",\n            \"nav_menu_term_id\": 6,\n            \"_invalid\": false,\n            \"type_label\": \"Trang\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 15:39:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1a98540a-ed6e-4cd8-bd96-42b91a07ffde', '', '', '2020-05-31 15:39:28', '2020-05-31 15:39:28', '', 0, 'http://localhost/nxb/2020/05/31/1a98540a-ed6e-4cd8-bd96-42b91a07ffde/', 0, 'customize_changeset', '', 0),
(68, 1, '2020-05-31 15:39:29', '2020-05-31 15:39:29', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2020-05-31 15:43:44', '2020-05-31 15:43:44', '', 0, 'http://localhost/nxb/2020/05/31/68/', 2, 'nav_menu_item', '', 0),
(69, 1, '2020-05-31 15:40:14', '2020-05-31 15:40:14', '{\n    \"sidebars_widgets[sidebar-2]\": {\n        \"value\": [\n            \"recent-posts-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 15:40:14\"\n    },\n    \"widget_recent-posts[4]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 15:40:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '835979de-36de-4e12-aadf-9544c30a2540', '', '', '2020-05-31 15:40:14', '2020-05-31 15:40:14', '', 0, 'http://localhost/nxb/2020/05/31/835979de-36de-4e12-aadf-9544c30a2540/', 0, 'customize_changeset', '', 0),
(70, 1, '2020-05-31 15:40:32', '2020-05-31 15:40:32', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 15:40:29\"\n    },\n    \"page_on_front\": {\n        \"value\": \"52\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 15:40:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3fabd1c8-c4f0-463d-a39c-e545ba85c36d', '', '', '2020-05-31 15:40:32', '2020-05-31 15:40:32', '', 0, 'http://localhost/nxb/?p=70', 0, 'customize_changeset', '', 0),
(71, 1, '2020-05-31 15:43:25', '2020-05-31 15:43:25', '', 'Sản phẩm', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2020-05-31 15:43:25', '2020-05-31 15:43:25', '', 52, 'http://localhost/nxb/2020/05/31/52-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2020-05-31 15:59:23', '2020-05-31 15:59:23', '{\n    \"online-shop::online_shop_theme_options[online-shop-enable-header-top]\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 15:55:25\"\n    },\n    \"online-shop::online_shop_theme_options[online-shop-header-top-basic-info-display-selection]\": {\n        \"value\": \"right\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 15:55:25\"\n    },\n    \"online-shop::online_shop_theme_options[online-shop-header-top-social-display-selection]\": {\n        \"value\": \"hide\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 15:55:25\"\n    },\n    \"online-shop::online_shop_theme_options[online-shop-third-info-title]\": {\n        \"value\": \"\\u0110\\u1ecba ch\\u1ec9\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 15:56:25\"\n    },\n    \"online-shop::online_shop_theme_options[online-shop-third-info-link]\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 15:56:25\"\n    },\n    \"online-shop::custom_logo\": {\n        \"value\": 44,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 15:57:25\"\n    },\n    \"online-shop::online_shop_theme_options[online-shop-display-site-logo]\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 15:58:25\"\n    },\n    \"online-shop::online_shop_theme_options[online-shop-enable-cart-icon]\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 15:57:25\"\n    },\n    \"online-shop::online_shop_theme_options[online-shop-display-site-tagline]\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 15:58:25\"\n    },\n    \"online-shop::online_shop_theme_options[online-shop-header-logo-ads-display-position]\": {\n        \"value\": \"center-logo-below-ads\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 15:58:25\"\n    },\n    \"online-shop::online_shop_theme_options[online-shop-enable-special-menu]\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 15:58:25\"\n    },\n    \"online-shop::online_shop_theme_options[online-shop-special-menu-text]\": {\n        \"value\": \"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 15:59:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '91d56fb0-42c3-4ddc-9b3d-f66efaa41ff7', '', '', '2020-05-31 15:59:23', '2020-05-31 15:59:23', '', 0, 'http://localhost/nxb/?p=72', 0, 'customize_changeset', '', 0),
(73, 1, '2020-05-31 15:59:52', '2020-05-31 15:59:52', '{\n    \"online-shop::online_shop_theme_options[online-shop-enable-sticky-menu]\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 15:59:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7a04ade9-98fc-4587-8bb8-c1e836eec83e', '', '', '2020-05-31 15:59:52', '2020-05-31 15:59:52', '', 0, 'http://localhost/nxb/2020/05/31/7a04ade9-98fc-4587-8bb8-c1e836eec83e/', 0, 'customize_changeset', '', 0),
(74, 1, '2020-05-31 16:01:09', '2020-05-31 16:01:09', '{\n    \"online-shop::online_shop_theme_options[online-shop-footer-copyright]\": {\n        \"value\": \"NXB \\u0110\\u1ea1i h\\u1ecdc S\\u01b0 Ph\\u1ea1m, 280 An D\\u01b0\\u01a1ng V\\u01b0\\u01a1ng, ph\\u01b0\\u1eddng 4 Qu\\u1eadn 5, th\\u00e0nh ph\\u1ed1 H\\u1ed3 Ch\\u00ed Minh\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:01:09\"\n    },\n    \"online-shop::online_shop_theme_options[online-shop-enable-footer-power-text]\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:00:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd9fd73f2-77dd-4a0b-845a-2112fd7ea99d', '', '', '2020-05-31 16:01:09', '2020-05-31 16:01:09', '', 0, 'http://localhost/nxb/?p=74', 0, 'customize_changeset', '', 0),
(75, 1, '2020-05-31 16:01:54', '2020-05-31 16:01:54', '{\n    \"online-shop::online_shop_theme_options[online-shop-single-sidebar-layout]\": {\n        \"value\": \"both-sidebar\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:01:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '90457cef-e1f8-4aa7-b260-77035a453fb2', '', '', '2020-05-31 16:01:54', '2020-05-31 16:01:54', '', 0, 'http://localhost/nxb/?p=75', 0, 'customize_changeset', '', 0),
(76, 1, '2020-05-31 16:05:43', '2020-05-31 16:05:43', '{\n    \"page_for_posts\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:05:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3aa59ae0-859c-4c0e-bc5a-c6efffbd4d95', '', '', '2020-05-31 16:05:43', '2020-05-31 16:05:43', '', 0, 'http://localhost/nxb/2020/05/31/3aa59ae0-859c-4c0e-bc5a-c6efffbd4d95/', 0, 'customize_changeset', '', 0),
(77, 1, '2020-05-31 16:06:35', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-05-31 16:06:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/nxb/?page_id=77', 0, 'page', '', 0),
(78, 1, '2020-05-31 16:20:22', '2020-05-31 16:20:22', '{\n    \"orchid-store::orchid_store_field_site_layout\": {\n        \"value\": \"fullwidth\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:18:46\"\n    },\n    \"orchid-store::orchid_store_field_enable_sidebar_small_devices\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:18:46\"\n    },\n    \"orchid-store::orchid_store_field_enable_global_sidebar_position\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:20:22\"\n    },\n    \"orchid-store::orchid_store_field_global_sidebar_position\": {\n        \"value\": \"right\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:19:46\"\n    },\n    \"orchid-store::background_color\": {\n        \"value\": \"#3d5051\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:20:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5005bace-9e05-44f8-840e-a24e03a211be', '', '', '2020-05-31 16:20:22', '2020-05-31 16:20:22', '', 0, 'http://localhost/nxb/?p=78', 0, 'customize_changeset', '', 0),
(79, 1, '2020-05-31 16:20:36', '2020-05-31 16:20:36', '{\n    \"orchid-store::background_color\": {\n        \"value\": \"#014d51\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:20:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '64a638f4-f147-427b-8d31-a5b059756e58', '', '', '2020-05-31 16:20:36', '2020-05-31 16:20:36', '', 0, 'http://localhost/nxb/2020/05/31/64a638f4-f147-427b-8d31-a5b059756e58/', 0, 'customize_changeset', '', 0),
(80, 1, '2020-05-31 16:21:12', '2020-05-31 16:21:12', '{\n    \"orchid-store::background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:21:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ecbadd3c-1126-4dc8-8da8-56957f5ec9b3', '', '', '2020-05-31 16:21:12', '2020-05-31 16:21:12', '', 0, 'http://localhost/nxb/2020/05/31/ecbadd3c-1126-4dc8-8da8-56957f5ec9b3/', 0, 'customize_changeset', '', 0),
(81, 1, '2020-05-31 16:23:22', '2020-05-31 16:23:22', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:23:22\"\n    },\n    \"page_on_front\": {\n        \"value\": \"52\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:23:22\"\n    },\n    \"orchid-store::orchid_store_field_primary_color\": {\n        \"value\": \"#097e96\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:23:22\"\n    },\n    \"orchid-store::orchid_store_field_secondary_color\": {\n        \"value\": \"#000000\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:23:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f3368815-6c2d-404f-bb71-d5d0420444ff', '', '', '2020-05-31 16:23:22', '2020-05-31 16:23:22', '', 0, 'http://localhost/nxb/?p=81', 0, 'customize_changeset', '', 0),
(82, 1, '2020-05-31 16:44:56', '2020-05-31 16:44:56', '', 'cropped-download-1-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-download-1-1-jpg', '', '', '2020-05-31 16:44:56', '2020-05-31 16:44:56', '', 0, 'http://localhost/nxb/wp-content/uploads/2020/05/cropped-download-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2020-05-31 16:46:25', '2020-05-31 16:46:25', '{\n    \"bcf-shop::header_image\": {\n        \"value\": \"http://localhost/nxb/wp-content/uploads/2020/05/cropped-download-1-1.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:45:37\"\n    },\n    \"bcf-shop::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/nxb/wp-content/uploads/2020/05/cropped-download-1-1.jpg\",\n            \"thumbnail_url\": \"http://localhost/nxb/wp-content/uploads/2020/05/cropped-download-1-1.jpg\",\n            \"timestamp\": 1590943497304,\n            \"attachment_id\": 82,\n            \"width\": 1000,\n            \"height\": 250\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:45:37\"\n    },\n    \"bcf-shop::blog_loop_content_type\": {\n        \"value\": \"excerpt\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:46:25\"\n    },\n    \"bcf-shop::index_hide_thumb\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:46:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4710e0a6-03c6-4470-b368-349a8f175a6f', '', '', '2020-05-31 16:46:25', '2020-05-31 16:46:25', '', 0, 'http://localhost/nxb/?p=83', 0, 'customize_changeset', '', 0),
(84, 1, '2020-05-31 16:51:47', '2020-05-31 16:51:47', '', 'cropped-download-1-3.jpg', '', 'inherit', 'closed', 'closed', '', 'cropped-download-1-2-jpg', '', '', '2020-05-31 16:51:47', '2020-05-31 16:51:47', '', 0, 'http://localhost/nxb/wp-content/uploads/2020/05/cropped-download-1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2020-05-31 16:53:34', '2020-05-31 16:53:34', '{\n    \"storefront::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:53:17\"\n    },\n    \"storefront::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:53:17\"\n    },\n    \"storefront::storefront_header_background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:50:17\"\n    },\n    \"storefront::storefront_header_text_color\": {\n        \"value\": \"#1e73be\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:50:17\"\n    },\n    \"storefront::storefront_footer_background_color\": {\n        \"value\": \"#00375b\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:53:17\"\n    },\n    \"storefront::storefront_footer_text_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:53:34\"\n    },\n    \"storefront::storefront_footer_link_color\": {\n        \"value\": \"#81d742\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:53:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2585d4c4-1ce8-4039-86f8-75ca992b0c61', '', '', '2020-05-31 16:53:34', '2020-05-31 16:53:34', '', 0, 'http://localhost/nxb/?p=85', 0, 'customize_changeset', '', 0),
(86, 1, '2020-05-31 16:51:23', '2020-05-31 16:51:23', '', 'cropped-download-2.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-download-2-jpg', '', '', '2020-05-31 16:51:23', '2020-05-31 16:51:23', '', 0, 'http://localhost/nxb/wp-content/uploads/2020/05/cropped-download-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2020-05-31 16:51:37', '2020-05-31 16:51:37', '', 'cropped-books_759-2.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-books_759-2-jpg', '', '', '2020-05-31 16:51:37', '2020-05-31 16:51:37', '', 0, 'http://localhost/nxb/wp-content/uploads/2020/05/cropped-books_759-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2020-05-31 16:55:31', '2020-05-31 16:55:31', '{\n    \"storefront::background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:54:17\"\n    },\n    \"storefront::storefront_heading_color\": {\n        \"value\": \"#333333\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:55:17\"\n    },\n    \"storefront::storefront_button_background_color\": {\n        \"value\": \"#1e73be\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:55:17\"\n    },\n    \"storefront::storefront_button_text_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:55:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f525362a-54fd-42d0-b86d-3f55ab415934', '', '', '2020-05-31 16:55:31', '2020-05-31 16:55:31', '', 0, 'http://localhost/nxb/?p=88', 0, 'customize_changeset', '', 0),
(89, 1, '2020-05-31 16:55:56', '2020-05-31 16:55:56', '{\n    \"storefront::storefront_layout\": {\n        \"value\": \"left\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 16:55:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9c6f5dc9-5a7c-48f7-bcd1-506b47d78029', '', '', '2020-05-31 16:55:56', '2020-05-31 16:55:56', '', 0, 'http://localhost/nxb/2020/05/31/9c6f5dc9-5a7c-48f7-bcd1-506b47d78029/', 0, 'customize_changeset', '', 0),
(90, 1, '2020-05-31 17:21:01', '2020-05-31 17:21:01', '{\n    \"basicstore::custom_logo\": {\n        \"value\": 44,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 17:15:44\"\n    },\n    \"basicstore::header_textcolor\": {\n        \"value\": \"#333333\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 17:15:44\"\n    },\n    \"basicstore::background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 17:15:44\"\n    },\n    \"basicstore::header_image\": {\n        \"value\": \"http://localhost/nxb/wp-content/uploads/2020/05/download-1.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 17:15:44\"\n    },\n    \"basicstore::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/nxb/wp-content/uploads/2020/05/download-1.jpg\",\n            \"thumbnail_url\": \"http://localhost/nxb/wp-content/uploads/2020/05/download-1.jpg\",\n            \"timestamp\": 1590945334532,\n            \"attachment_id\": 65,\n            \"width\": 1200,\n            \"height\": 729\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 17:15:44\"\n    },\n    \"basicstore::background_image\": {\n        \"value\": \"http://localhost/nxb/wp-content/uploads/2020/05/89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-2.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 17:21:01\"\n    },\n    \"basicstore::background_position_x\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 17:17:07\"\n    },\n    \"basicstore::background_position_y\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 17:17:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd76937fc-2f56-467a-ab83-7eeabec8102e', '', '', '2020-05-31 17:21:01', '2020-05-31 17:21:01', '', 0, 'http://localhost/nxb/?p=90', 0, 'customize_changeset', '', 0),
(91, 1, '2020-05-31 17:18:15', '2020-05-31 17:18:15', '', 'Seamless pattern, floral ornament texture, geometric tiles. Whit', 'Seamless pattern, floral ornamental background, repeat geometric tiles, curved lines, lattice. Abstract ornament texture in pastel colors, white and beige. Elegant repeat design. - Stock vector', 'inherit', 'open', 'closed', '', 'seamless-pattern-floral-ornament-texture-geometric-tiles-whit', '', '', '2020-05-31 17:18:15', '2020-05-31 17:18:15', '', 0, 'http://localhost/nxb/wp-content/uploads/2020/05/89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2020-05-31 17:20:20', '2020-05-31 17:20:20', '', '89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o', '', 'inherit', 'open', 'closed', '', '89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o', '', '', '2020-05-31 17:20:20', '2020-05-31 17:20:20', '', 0, 'http://localhost/nxb/wp-content/uploads/2020/05/89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2020-05-31 17:20:52', '2020-05-31 17:20:52', '', '89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o', '', 'inherit', 'open', 'closed', '', '89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-2', '', '', '2020-05-31 17:20:52', '2020-05-31 17:20:52', '', 0, 'http://localhost/nxb/wp-content/uploads/2020/05/89541150-seamless-pattern-floral-ornamental-background-repeat-geometric-tiles-curved-lines-lattice-abstract-o-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2020-05-31 17:21:49', '2020-05-31 17:21:49', '{\n    \"blogname\": {\n        \"value\": \"NXB \\u0110\\u1ea1i h\\u1ecdc S\\u01b0 ph\\u1ea1m\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 17:21:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b02876c8-af6d-4d49-b494-8cdef3233571', '', '', '2020-05-31 17:21:49', '2020-05-31 17:21:49', '', 0, 'http://localhost/nxb/2020/05/31/b02876c8-af6d-4d49-b494-8cdef3233571/', 0, 'customize_changeset', '', 0),
(95, 1, '2020-05-31 17:22:12', '2020-05-31 17:22:12', '{\n    \"basicstore::header_textcolor\": {\n        \"value\": \"#333333\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 17:22:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '82eb804c-2461-4edc-ae5b-c12bd4e3e0c7', '', '', '2020-05-31 17:22:12', '2020-05-31 17:22:12', '', 0, 'http://localhost/nxb/?p=95', 0, 'customize_changeset', '', 0),
(96, 1, '2020-05-31 17:27:48', '0000-00-00 00:00:00', '{\n    \"basicstore::header_textcolor\": {\n        \"value\": \"#0a0a0a\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 17:24:05\"\n    },\n    \"basicstore::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/nxb/wp-content/uploads/2020/05/Hanoi-Lotte-Center-Serviced-Office.jpg\",\n            \"thumbnail_url\": \"http://localhost/nxb/wp-content/uploads/2020/05/Hanoi-Lotte-Center-Serviced-Office.jpg\",\n            \"timestamp\": 1590946017551,\n            \"attachment_id\": 97,\n            \"width\": 1920,\n            \"height\": 800\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 17:27:48\"\n    },\n    \"basicstore::header_image\": {\n        \"value\": \"http://localhost/nxb/wp-content/uploads/2020/05/Hanoi-Lotte-Center-Serviced-Office.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 17:27:48\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '35eed13c-71f7-44d1-8474-ebc5bf665542', '', '', '2020-05-31 17:27:48', '2020-05-31 17:27:48', '', 0, 'http://localhost/nxb/?p=96', 0, 'customize_changeset', '', 0),
(97, 1, '2020-05-31 17:26:48', '2020-05-31 17:26:48', '', 'Hanoi-Lotte-Center-Serviced-Office', '', 'inherit', 'open', 'closed', '', 'hanoi-lotte-center-serviced-office', '', '', '2020-05-31 17:26:48', '2020-05-31 17:26:48', '', 0, 'http://localhost/nxb/wp-content/uploads/2020/05/Hanoi-Lotte-Center-Serviced-Office.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2020-05-31 17:43:37', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-05-31 17:43:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/nxb/?p=98', 0, 'post', '', 0),
(99, 1, '2020-05-31 17:43:55', '2020-05-31 17:43:55', '{\n    \"basicstore::header_image\": {\n        \"value\": \"http://localhost/nxb/wp-content/uploads/2020/05/Hanoi-Lotte-Center-Serviced-Office.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 17:43:55\"\n    },\n    \"basicstore::header_image_data\": {\n        \"value\": {\n            \"attachment_id\": 97,\n            \"url\": \"http://localhost/nxb/wp-content/uploads/2020/05/Hanoi-Lotte-Center-Serviced-Office.jpg\",\n            \"thumbnail_url\": \"http://localhost/nxb/wp-content/uploads/2020/05/Hanoi-Lotte-Center-Serviced-Office.jpg\",\n            \"alt_text\": \"\",\n            \"attachment_parent\": \"\",\n            \"width\": 1920,\n            \"height\": 800,\n            \"timestamp\": [\n                \"1590946018\"\n            ]\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-31 17:43:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3cc28757-9c67-4181-8a26-b2f2fd052232', '', '', '2020-05-31 17:43:55', '2020-05-31 17:43:55', '', 0, 'http://localhost/nxb/2020/05/31/3cc28757-9c67-4181-8a26-b2f2fd052232/', 0, 'customize_changeset', '', 0),
(100, 1, '2020-05-31 17:44:00', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-05-31 17:44:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/nxb/?p=100', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'category-image-id', '42'),
(2, 21, 'order', '0'),
(3, 21, 'display_type', ''),
(4, 21, 'thumbnail_id', '0'),
(5, 22, 'order', '0'),
(6, 22, 'display_type', ''),
(7, 22, 'thumbnail_id', '0'),
(8, 23, 'order', '0'),
(9, 23, 'display_type', ''),
(10, 23, 'thumbnail_id', '0'),
(11, 24, 'order', '0'),
(12, 24, 'display_type', ''),
(13, 24, 'thumbnail_id', '0'),
(14, 21, 'product_count_product_cat', '2'),
(15, 22, 'product_count_product_cat', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa được phân loại', 'khong-phan-loai', 0),
(2, 'Sách', 'sach', 0),
(3, 'Tin Xã hội', 'tin-xa-hoi', 0),
(4, 'Tin Nội bộ', 'tin-noi-bo', 0),
(5, 'Tin Giáo dục', 'tin-giao-duc', 0),
(6, 'Menu đầu trang', 'menu-dau-trang', 0),
(7, 'simple', 'simple', 0),
(8, 'grouped', 'grouped', 0),
(9, 'variable', 'variable', 0),
(10, 'external', 'external', 0),
(11, 'exclude-from-search', 'exclude-from-search', 0),
(12, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(13, 'featured', 'featured', 0),
(14, 'outofstock', 'outofstock', 0),
(15, 'rated-1', 'rated-1', 0),
(16, 'rated-2', 'rated-2', 0),
(17, 'rated-3', 'rated-3', 0),
(18, 'rated-4', 'rated-4', 0),
(19, 'rated-5', 'rated-5', 0),
(20, 'Chưa phân loại', 'chua-phan-loai', 0),
(21, 'Sách Đại học, sau Đại học', 'dai-hoc-sau-dai-hoc', 0),
(22, 'Âm nhạc', 'am-nhac', 0),
(23, 'Công tác xã hội', 'cong-tac-xa-hoi', 0),
(24, 'Công nghệ thông tin', 'cong-nghe-thong-tin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 2, 0),
(11, 2, 0),
(17, 2, 0),
(23, 5, 0),
(27, 5, 0),
(31, 6, 0),
(34, 6, 0),
(57, 7, 0),
(57, 21, 0),
(57, 22, 0),
(59, 7, 0),
(59, 21, 0),
(59, 22, 0),
(68, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 0),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 0, 0),
(5, 5, 'category', '', 0, 2),
(6, 6, 'nav_menu', '', 0, 3),
(7, 7, 'product_type', '', 0, 2),
(8, 8, 'product_type', '', 0, 0),
(9, 9, 'product_type', '', 0, 0),
(10, 10, 'product_type', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_visibility', '', 0, 0),
(18, 18, 'product_visibility', '', 0, 0),
(19, 19, 'product_visibility', '', 0, 0),
(20, 20, 'product_cat', '', 0, 0),
(21, 21, 'product_cat', '', 0, 2),
(22, 22, 'product_cat', '', 21, 2),
(23, 23, 'product_cat', '', 21, 0),
(24, 24, 'product_cat', '', 21, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'pthyst'),
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
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"87775146812759b25ef68e31e86785bcaf38f0995235ff6789ae4ca07efff2b7\";a:4:{s:10:\"expiration\";i:1591110966;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:130:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36 Edg/83.0.478.37\";s:5:\"login\";i:1590938166;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1590676553'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, '_woocommerce_tracks_anon_id', 'woo:R9Hh3pdpDenX23c9twFOHJ9x'),
(23, 1, 'wc_last_active', '1590883200'),
(24, 1, 'nav_menu_recently_edited', '6');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
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
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'pthyst', '$P$Bq4lxxYyLhVIQZGGa.D2fB7sXdnaIf1', 'pthyst', 'pthyst@gmail.com', 'http://localhost/nxb', '2020-05-28 13:21:10', '', 0, 'pthyst');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `icon`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`) VALUES
(1, 'wc-admin-welcome-note', 'info', 'en_US', 'New feature(s)', 'Welcome to the new WooCommerce experience! In this new release you\'ll be able to have a glimpse of how your store is doing in the Dashboard, manage important aspects of your business (such as managing orders, stock, reviews) from anywhere in the interface, dive into your store data with a completely new Analytics section and more!', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-05-31 15:17:28', NULL, 0),
(2, 'wc-admin-store-notice-setting-moved', 'info', 'en_US', 'Looking for the Store Notice setting?', 'It can now be found in the Customizer.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-05-31 15:17:29', NULL, 0),
(3, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-05-31 15:17:34', NULL, 0),
(4, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-05-31 15:17:34', NULL, 0),
(5, 'wc-admin-onboarding-profiler-reminder', 'update', 'en_US', 'Welcome to WooCommerce! Set up your store and start selling', 'We\'re here to help you going through the most important steps to get your store up and running.', 'info', '{}', 'actioned', 'woocommerce-admin', '2020-05-31 15:17:42', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`) VALUES
(1, 1, 'learn-more', 'Tìm hiểu thêm', 'https://woocommerce.wordpress.com/', 'actioned', 0),
(2, 2, 'open-customizer', 'Open Customizer', 'customize.php', 'actioned', 0),
(3, 3, 'connect', 'Kết nối', '?page=wc-addons&section=helper', 'unactioned', 0),
(4, 4, 'connect', 'Kết nối', '?page=wc-addons&section=helper', 'unactioned', 0),
(5, 5, 'continue-profiler', 'Continue Store Setup', 'http://localhost/nxb/wp-admin/admin.php?page=wc-admin&enable_onboarding=1', 'unactioned', 1),
(6, 5, 'skip-profiler', 'Skip Setup', 'http://localhost/nxb/wp-admin/admin.php?page=wc-admin&reset_profiler=0', 'actioned', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_category_lookup`
--

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(57, '', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(59, '', 0, 1, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, '1', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:704:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"GB\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"GB\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:16:\"pthyst@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1591111069);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

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
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

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
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

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
-- Indexes for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Indexes for table `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Indexes for table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Indexes for table `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indexes for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=965;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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

--
-- AUTO_INCREMENT for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
