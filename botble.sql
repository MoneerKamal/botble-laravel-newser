-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 14, 2024 at 06:24 PM
-- Server version: 8.0.31
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `botble`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
CREATE TABLE IF NOT EXISTS `activations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, '7ZXDqahVc7fN6jLOl74DqqyxD2X6YlCP', 1, '2024-01-25 00:35:56', '2024-01-25 00:35:56', '2024-01-25 00:35:56'),
(2, 2, '1uMivc5dW0swLp2dFfcSpnJkk9udCEdm', 1, '2024-01-25 00:35:56', '2024-01-25 00:35:56', '2024-01-25 00:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
CREATE TABLE IF NOT EXISTS `admin_notifications` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
CREATE TABLE IF NOT EXISTS `audit_histories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `module` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint UNSIGNED NOT NULL,
  `reference_id` bigint UNSIGNED NOT NULL,
  `reference_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_histories`
--

INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 2, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', '127.0.0.1', 0, 2, 'Else Williamson', 'info', '2024-04-12 10:05:32', '2024-04-12 10:05:32'),
(2, 2, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', '127.0.0.1', 0, 2, 'Else Williamson', 'info', '2024-04-12 19:06:29', '2024-04-12 19:06:29'),
(3, 2, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', '127.0.0.1', 0, 2, 'Else Williamson', 'info', '2024-04-13 11:43:13', '2024-04-13 11:43:13'),
(4, 2, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', '127.0.0.1', 0, 2, 'Else Williamson', 'info', '2024-04-13 16:57:21', '2024-04-13 16:57:21'),
(5, 2, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', '127.0.0.1', 0, 2, 'Else Williamson', 'info', '2024-04-14 10:31:14', '2024-04-14 10:31:14'),
(6, 2, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', '127.0.0.1', 0, 2, 'Else Williamson', 'info', '2024-04-14 14:57:18', '2024-04-14 14:57:18');

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
CREATE TABLE IF NOT EXISTS `blocks` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blocks_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `name`, `alias`, `description`, `content`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Gregory Stanton', 'gregory-stanton', 'Consequuntur eum et quasi esse vel.', 'Inventore rerum voluptatem et asperiores repudiandae. Omnis doloribus non ut at aliquid rerum. Repudiandae consequuntur iusto et. Dolor veritatis illum dignissimos. Voluptatibus autem magni iusto aut neque vero rerum cum. Architecto rerum itaque sit nostrum cumque ut repellat sunt. Quaerat impedit unde libero et. Quia quia est voluptas ab voluptate. Nobis voluptates soluta aut ipsam. Et animi neque hic.', 'published', NULL, '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(2, 'Prof. Tracey Grant', 'prof-tracey-grant', 'Beatae rerum qui aut nisi fugiat qui repudiandae.', 'Sit et modi a qui similique consequatur. Modi vitae iure dolorem totam explicabo. Laboriosam et magnam ducimus minima qui atque. A laudantium omnis quia ea placeat dolor rerum consectetur. Rerum nihil magni ut cumque voluptatibus optio dicta. Ut mollitia impedit dolores eaque et sunt in id. Rerum vitae ipsa doloremque fuga non sed.', 'published', NULL, '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(3, 'Maymie Morissette', 'maymie-morissette', 'Quidem quasi aut non cupiditate optio.', 'Molestias eum est ut expedita. Ad ut qui at rerum vel mollitia. Dolore dolores sequi vero corporis voluptas. Aperiam aspernatur est voluptate repellat perferendis sit sed. Eveniet facere autem expedita quis. Voluptatum accusamus saepe eum totam qui eveniet. Vitae aliquam aut nulla aliquid enim et. Nesciunt enim nam impedit dolor quasi qui. At soluta in et cum possimus accusamus temporibus. Quis veniam non quia sed. Tempora est et eius aut suscipit doloremque voluptas.', 'published', NULL, '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(4, 'Nils Schiller', 'nils-schiller', 'Excepturi assumenda molestiae earum dolorem iste.', 'Cumque unde est voluptatibus illum veniam sunt. Et cupiditate temporibus ut alias iusto laboriosam sint. Consequatur rerum optio nulla non. Doloremque iusto et voluptatem qui quae. Eum sunt aut et est. Excepturi minus dolorum minus velit sunt magnam praesentium. Voluptatem nesciunt dicta nihil ipsum impedit aut eum. Odio repellat placeat ex. Optio exercitationem quaerat ut unde tempore quam molestiae.', 'published', NULL, '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(5, 'Brooke Hansen', 'brooke-hansen', 'Fugit porro ut quo architecto iste dolorem.', 'Laudantium maxime nesciunt unde repudiandae quas consequatur. Possimus fuga distinctio non eius impedit velit sequi. Est error aliquam modi eaque doloremque. Et architecto iure itaque consequatur nobis dignissimos harum. Ex nostrum mollitia aut suscipit recusandae fugit accusamus architecto. Est beatae ut facere maxime eius itaque. Et deserunt et explicabo. Autem et vero repellat enim totam consectetur nesciunt. Ut aperiam iure maiores eum ipsam.', 'published', NULL, '2024-01-25 00:36:01', '2024-01-25 00:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `blocks_translations`
--

DROP TABLE IF EXISTS `blocks_translations`;
CREATE TABLE IF NOT EXISTS `blocks_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blocks_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`blocks_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint UNSIGNED DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Design', 0, 'Voluptatibus natus aliquid ea nihil mollitia nesciunt corrupti. Quod deleniti veniam quos et modi quas et. Aut vel natus atque ut consequuntur.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2024-01-25 00:35:57', '2024-01-25 00:35:57'),
(2, 'Lifestyle', 0, 'Omnis ut debitis id nemo. A omnis autem eius. Nemo nesciunt id iure perspiciatis vel. Ut et quidem molestias nesciunt adipisci. Deserunt magnam officia eveniet voluptas repellendus laudantium.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2024-01-25 00:35:57', '2024-01-25 00:35:57'),
(3, 'Travel Tips', 2, 'Odio voluptatem placeat non aut numquam. Suscipit nihil dolores enim ullam sint dignissimos. Quae explicabo veniam ex. Libero quam sunt aliquid autem adipisci tempora laboriosam.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2024-01-25 00:35:57', '2024-01-25 00:35:57'),
(4, 'Healthy', 0, 'Possimus quia quia voluptatem sed aspernatur ut. Facilis itaque dolore ut iure a totam consequatur unde. Ut placeat molestiae aliquid minima fugit.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(5, 'Hotel', 0, 'Et eius eos esse odit beatae. Libero est porro est amet similique voluptatem beatae.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(6, 'Nature', 5, 'Voluptas libero voluptates quia molestiae expedita. Quisquam quia ut quia repellat tenetur qui a. Non ratione accusantium amet voluptatibus praesentium enim.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2024-01-25 00:35:58', '2024-01-25 00:35:58');

-- --------------------------------------------------------

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
CREATE TABLE IF NOT EXISTS `categories_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `subject`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Maia Spinka', 'vgrant@example.org', '1-818-367-4264', '1277 Purdy Port\nSouth Jessyland, KS 11517', 'Totam quos sed eos quo voluptas.', 'Et pariatur aspernatur quod culpa. Officia consequatur repudiandae laborum quia nihil reiciendis et. Eos sequi expedita aliquid et. Minima dolores cumque officia ducimus ducimus eum et. Dolore labore et laborum maiores. Vero incidunt a voluptate minus commodi. Eaque quaerat nisi et tenetur perferendis esse exercitationem. Earum natus numquam nobis in aut tempore veritatis. Molestiae debitis dolores et.', 'unread', '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(2, 'Elyssa Adams DDS', 'wilmer.oreilly@example.net', '1-620-673-9456', '82761 Nico Field\nEast Cedrick, DC 20695-8679', 'Autem quia sint rerum consequatur dignissimos.', 'Ratione sunt dolorem quaerat accusantium. Et reprehenderit expedita perferendis alias. Hic velit labore excepturi expedita eveniet adipisci blanditiis. Voluptate ea necessitatibus dolorum modi. Deserunt et et quis repudiandae voluptatem deserunt. Velit vel et soluta modi. Et voluptatem molestiae voluptate dolor.', 'read', '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(3, 'Augustine Steuber', 'zmurphy@example.com', '(678) 252-2500', '90815 Considine Route Suite 581\nPfannerstillton, DC 52724', 'Dolor in est iste aut ducimus velit.', 'Amet doloremque perspiciatis beatae qui quia aliquid. Laudantium ullam quia aut aut aspernatur. Est quia quia nisi. Ex non qui velit voluptatum blanditiis id. Ad voluptatem accusantium nesciunt delectus aut. Et ad sint id ut est alias voluptate. Deleniti tenetur quae distinctio perspiciatis quidem. Reiciendis expedita est aut a reprehenderit reprehenderit enim. Id beatae nobis a soluta doloribus voluptate sit. Consequatur eos aut vel sunt.', 'read', '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(4, 'Jay Lehner', 'brakus.jimmy@example.net', '+15629412938', '548 Oswaldo Creek\nEast Turnerberg, MS 97305', 'Soluta non fuga quaerat.', 'Non recusandae non optio ratione dolores ut. Cupiditate sapiente quos eveniet recusandae odit cupiditate molestias. Et aut voluptate possimus aperiam at libero. Eligendi iste animi quis temporibus. Modi quas odit labore beatae. Illo est assumenda odit earum consequatur. Autem temporibus a nam eveniet earum. Dolores nam perferendis totam et. Et reiciendis perspiciatis asperiores ut fuga placeat error iste. Magnam natus ratione officia. Quisquam soluta enim consequuntur unde sequi.', 'read', '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(5, 'Dr. Nayeli Stokes', 'carlee.jacobson@example.net', '307-494-5870', '734 Yasmeen Lakes\nNorth Pietro, AR 36773', 'Veritatis cum excepturi neque id maxime.', 'Reiciendis accusamus odit qui ex dolorum provident qui. Cupiditate totam fugiat alias eaque praesentium alias doloremque. Et dolorum quasi consequatur ea. Reiciendis quia commodi facilis ipsam. Autem quia amet eos. Quia enim minus nihil. Laborum blanditiis quia ad enim vero aperiam. Placeat error facilis accusamus. Nobis laborum est repellat voluptate quis rerum quia. Id consequuntur est rerum quis qui eum. Dolorem numquam facilis corrupti hic adipisci.', 'unread', '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(6, 'Talon Mosciski', 'carole.cronin@example.org', '234-723-8284', '22017 Lyla Place Apt. 463\nNorth Mistytown, IL 96175', 'Quia cumque quo esse molestiae est.', 'Est sed debitis sunt officia error. Magnam deserunt maxime repellendus voluptatem qui reprehenderit. Quo explicabo corporis iste ipsam reiciendis est. In quos odit voluptatem vel quia. Provident fuga et quo numquam omnis aliquid. Autem eligendi nemo consequuntur officiis aliquid. Voluptatibus soluta cum itaque quae facere earum. Assumenda aut nulla amet quo sed quia omnis. Quis ut animi repudiandae non qui illo.', 'read', '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(7, 'Bonita Upton DDS', 'maximillian.sanford@example.net', '872-516-0666', '722 Velda Cliffs\nVanessastad, OK 95606', 'Ut voluptatum suscipit fugiat.', 'Sed asperiores quia quia dolores quo. Vero vero optio dolor est doloribus quidem perspiciatis. Nam quae enim voluptates excepturi ipsa rerum quibusdam. Consequatur enim iste temporibus modi. Atque perferendis omnis adipisci amet ut sed. Non optio harum quia numquam esse voluptas. A et corrupti quod sed ad. Eum similique illum nobis vitae voluptas ut.', 'read', '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(8, 'Mr. August Haag V', 'christiana78@example.com', '(662) 858-5496', '8855 Brown Square Suite 855\nRoderickhaven, NJ 37738-4491', 'Sunt et ut vel fuga animi dignissimos.', 'Sint explicabo sit quia est voluptatem sapiente id. Ut odio minus ut non. Quasi magnam sit necessitatibus officiis commodi accusamus quae aut. Quasi reprehenderit eligendi asperiores dicta aut maiores. Libero id ullam voluptatem eos exercitationem. Molestiae recusandae voluptate ea ratione ea. Culpa cumque commodi vel a dolorum. Unde atque autem sunt quia animi optio in molestias. Qui aut dolores eos inventore optio.', 'unread', '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(9, 'Leatha Murphy', 'mohamed.carter@example.net', '+1-847-272-3149', '4703 Mona Vista Apt. 064\nBrakustown, TN 04507', 'Veniam et et id eius.', 'Dolorem dicta vel fugit nobis quia et eius. Qui culpa minima error ut est. Provident voluptas qui molestiae ut nihil molestiae provident distinctio. Ea placeat et officiis eaque ab dolor. Eos est officia vel et qui cupiditate laboriosam. Amet aperiam commodi atque blanditiis maiores.', 'read', '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(10, 'Dr. Raegan Bogisich DVM', 'santiago85@example.net', '(252) 488-9129', '690 Eric Dale\nNew Russ, NC 06600', 'Dolor optio qui ut optio sequi ut dolore.', 'Repellendus animi temporibus eius consequatur. Aspernatur est aut quia. Perspiciatis est deleniti enim quo optio cumque nam. Ut quaerat commodi fuga. Sapiente vel corporis qui veritatis officia. Ab in voluptatem dolorem autem veniam. Velit vitae accusamus sit rerum deserunt atque. Non porro tempore aspernatur nesciunt sunt enim minima.', 'unread', '2024-01-25 00:36:01', '2024-01-25 00:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
CREATE TABLE IF NOT EXISTS `contact_replies` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
CREATE TABLE IF NOT EXISTS `custom_fields` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `use_for` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_for_id` bigint UNSIGNED NOT NULL,
  `field_item_id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `custom_fields_field_item_id_index` (`field_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields_translations`
--

DROP TABLE IF EXISTS `custom_fields_translations`;
CREATE TABLE IF NOT EXISTS `custom_fields_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields_id` bigint UNSIGNED NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
CREATE TABLE IF NOT EXISTS `dashboard_widgets` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_themes', '2024-04-12 10:05:40', '2024-04-12 10:05:40'),
(2, 'widget_total_users', '2024-04-12 10:05:41', '2024-04-12 10:05:41'),
(3, 'widget_total_plugins', '2024-04-12 10:05:41', '2024-04-12 10:05:41'),
(4, 'widget_total_pages', '2024-04-12 10:05:41', '2024-04-12 10:05:41'),
(5, 'widget_analytics_general', '2024-04-12 10:05:41', '2024-04-12 10:05:41'),
(6, 'widget_analytics_page', '2024-04-12 10:05:42', '2024-04-12 10:05:42'),
(7, 'widget_analytics_browser', '2024-04-12 10:05:42', '2024-04-12 10:05:42'),
(8, 'widget_analytics_referrer', '2024-04-12 10:05:42', '2024-04-12 10:05:42'),
(9, 'widget_posts_recent', '2024-04-12 10:05:43', '2024-04-12 10:05:43'),
(10, 'widget_audit_logs', '2024-04-12 10:05:43', '2024-04-12 10:05:43'),
(11, 'widget_request_errors', '2024-04-12 10:05:43', '2024-04-12 10:05:43');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
CREATE TABLE IF NOT EXISTS `dashboard_widget_settings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` bigint UNSIGNED NOT NULL,
  `widget_id` bigint UNSIGNED NOT NULL,
  `order` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_groups`
--

DROP TABLE IF EXISTS `field_groups`;
CREATE TABLE IF NOT EXISTS `field_groups` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '0',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_groups_created_by_index` (`created_by`),
  KEY `field_groups_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_items`
--

DROP TABLE IF EXISTS `field_items`;
CREATE TABLE IF NOT EXISTS `field_items` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `field_group_id` bigint UNSIGNED NOT NULL,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `order` int DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `field_items_field_group_id_index` (`field_group_id`),
  KEY `field_items_parent_id_index` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
CREATE TABLE IF NOT EXISTS `galleries` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `order` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `description`, `is_featured`, `order`, `image`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Perfect', 'Magnam occaecati dolor natus hic et. Unde maxime voluptatem debitis fugiat est ea. Quibusdam qui molestias odio est. Qui fuga nobis animi laborum.', 1, 0, 'galleries/1.jpg', 2, 'published', '2024-01-25 00:35:57', '2024-01-25 00:35:57'),
(2, 'New Day', 'Est consequatur qui sapiente qui tenetur. Voluptatem rerum nam ut qui dignissimos accusantium et. Ipsa ut sequi occaecati id et.', 1, 0, 'galleries/2.jpg', 2, 'published', '2024-01-25 00:35:57', '2024-01-25 00:35:57'),
(3, 'Happy Day', 'Omnis nulla in id fugiat. Voluptatem nihil sed veniam. Earum velit ea odio quisquam perspiciatis.', 1, 0, 'galleries/3.jpg', 2, 'published', '2024-01-25 00:35:57', '2024-01-25 00:35:57'),
(4, 'Nature', 'Et ut enim ut quia velit. Cupiditate sint at eius porro maiores explicabo itaque. Repudiandae non voluptatem illo dolore odio enim rerum.', 1, 0, 'galleries/4.jpg', 2, 'published', '2024-01-25 00:35:57', '2024-01-25 00:35:57'),
(5, 'Morning', 'Quaerat officia veniam deserunt occaecati aut. Accusamus aliquid vel maiores odit unde blanditiis. Odio ducimus rerum sint.', 1, 0, 'galleries/5.jpg', 2, 'published', '2024-01-25 00:35:57', '2024-01-25 00:35:57'),
(6, 'Photography', 'Repellat et asperiores esse voluptatem occaecati. Neque sequi aut pariatur est. Minima dolorem nisi ea dicta amet ea omnis ducimus.', 1, 0, 'galleries/6.jpg', 2, 'published', '2024-01-25 00:35:57', '2024-01-25 00:35:57');

-- --------------------------------------------------------

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
CREATE TABLE IF NOT EXISTS `galleries_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
CREATE TABLE IF NOT EXISTS `gallery_meta` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint UNSIGNED NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_meta`
--

INSERT INTO `gallery_meta` (`id`, `images`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Rerum nesciunt a dignissimos necessitatibus nemo quibusdam alias. Similique reiciendis et eum. Ratione mollitia ut ut ut est.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Sunt eveniet unde non omnis non non quod. Accusamus aspernatur maxime omnis et. Officia architecto vero alias laborum.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Nobis dicta sint sed quia. Saepe quos molestiae quia fugiat. Voluptatem officia molestiae est occaecati magni architecto.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Magni aut asperiores doloremque. Nisi velit quia commodi consequatur ipsam.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Sit dolorem explicabo facilis unde. Consequatur officiis magni voluptatem fuga nobis. Rerum nobis totam et non sit placeat sunt.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Et quisquam incidunt aut non dolorem alias amet. Culpa autem sint labore voluptates. Qui doloremque officiis voluptatem et enim dignissimos.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Numquam nemo atque quaerat fuga. Ut sed consequatur error vitae soluta. Et ipsa et soluta qui quo sunt eum. Tempore rem quam aut facere.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iste nemo dolor voluptates vitae et ut quis qui. Consequatur debitis at molestiae nihil cum non sit. Aut in at qui vitae molestiae.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Voluptatum magni commodi ut nemo et ipsam. Rem omnis ipsa quod neque rerum dolore unde. Distinctio dolorum a soluta. Minus impedit nisi sint error.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Repellat inventore consequatur officiis sint eligendi. Incidunt quo saepe qui labore. Doloremque cupiditate sed inventore.\"}]', 1, 'Botble\\Gallery\\Models\\Gallery', '2024-01-25 00:35:57', '2024-01-25 00:35:57'),
(2, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Rerum nesciunt a dignissimos necessitatibus nemo quibusdam alias. Similique reiciendis et eum. Ratione mollitia ut ut ut est.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Sunt eveniet unde non omnis non non quod. Accusamus aspernatur maxime omnis et. Officia architecto vero alias laborum.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Nobis dicta sint sed quia. Saepe quos molestiae quia fugiat. Voluptatem officia molestiae est occaecati magni architecto.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Magni aut asperiores doloremque. Nisi velit quia commodi consequatur ipsam.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Sit dolorem explicabo facilis unde. Consequatur officiis magni voluptatem fuga nobis. Rerum nobis totam et non sit placeat sunt.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Et quisquam incidunt aut non dolorem alias amet. Culpa autem sint labore voluptates. Qui doloremque officiis voluptatem et enim dignissimos.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Numquam nemo atque quaerat fuga. Ut sed consequatur error vitae soluta. Et ipsa et soluta qui quo sunt eum. Tempore rem quam aut facere.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iste nemo dolor voluptates vitae et ut quis qui. Consequatur debitis at molestiae nihil cum non sit. Aut in at qui vitae molestiae.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Voluptatum magni commodi ut nemo et ipsam. Rem omnis ipsa quod neque rerum dolore unde. Distinctio dolorum a soluta. Minus impedit nisi sint error.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Repellat inventore consequatur officiis sint eligendi. Incidunt quo saepe qui labore. Doloremque cupiditate sed inventore.\"}]', 2, 'Botble\\Gallery\\Models\\Gallery', '2024-01-25 00:35:57', '2024-01-25 00:35:57'),
(3, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Rerum nesciunt a dignissimos necessitatibus nemo quibusdam alias. Similique reiciendis et eum. Ratione mollitia ut ut ut est.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Sunt eveniet unde non omnis non non quod. Accusamus aspernatur maxime omnis et. Officia architecto vero alias laborum.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Nobis dicta sint sed quia. Saepe quos molestiae quia fugiat. Voluptatem officia molestiae est occaecati magni architecto.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Magni aut asperiores doloremque. Nisi velit quia commodi consequatur ipsam.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Sit dolorem explicabo facilis unde. Consequatur officiis magni voluptatem fuga nobis. Rerum nobis totam et non sit placeat sunt.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Et quisquam incidunt aut non dolorem alias amet. Culpa autem sint labore voluptates. Qui doloremque officiis voluptatem et enim dignissimos.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Numquam nemo atque quaerat fuga. Ut sed consequatur error vitae soluta. Et ipsa et soluta qui quo sunt eum. Tempore rem quam aut facere.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iste nemo dolor voluptates vitae et ut quis qui. Consequatur debitis at molestiae nihil cum non sit. Aut in at qui vitae molestiae.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Voluptatum magni commodi ut nemo et ipsam. Rem omnis ipsa quod neque rerum dolore unde. Distinctio dolorum a soluta. Minus impedit nisi sint error.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Repellat inventore consequatur officiis sint eligendi. Incidunt quo saepe qui labore. Doloremque cupiditate sed inventore.\"}]', 3, 'Botble\\Gallery\\Models\\Gallery', '2024-01-25 00:35:57', '2024-01-25 00:35:57'),
(4, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Rerum nesciunt a dignissimos necessitatibus nemo quibusdam alias. Similique reiciendis et eum. Ratione mollitia ut ut ut est.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Sunt eveniet unde non omnis non non quod. Accusamus aspernatur maxime omnis et. Officia architecto vero alias laborum.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Nobis dicta sint sed quia. Saepe quos molestiae quia fugiat. Voluptatem officia molestiae est occaecati magni architecto.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Magni aut asperiores doloremque. Nisi velit quia commodi consequatur ipsam.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Sit dolorem explicabo facilis unde. Consequatur officiis magni voluptatem fuga nobis. Rerum nobis totam et non sit placeat sunt.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Et quisquam incidunt aut non dolorem alias amet. Culpa autem sint labore voluptates. Qui doloremque officiis voluptatem et enim dignissimos.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Numquam nemo atque quaerat fuga. Ut sed consequatur error vitae soluta. Et ipsa et soluta qui quo sunt eum. Tempore rem quam aut facere.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iste nemo dolor voluptates vitae et ut quis qui. Consequatur debitis at molestiae nihil cum non sit. Aut in at qui vitae molestiae.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Voluptatum magni commodi ut nemo et ipsam. Rem omnis ipsa quod neque rerum dolore unde. Distinctio dolorum a soluta. Minus impedit nisi sint error.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Repellat inventore consequatur officiis sint eligendi. Incidunt quo saepe qui labore. Doloremque cupiditate sed inventore.\"}]', 4, 'Botble\\Gallery\\Models\\Gallery', '2024-01-25 00:35:57', '2024-01-25 00:35:57'),
(5, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Rerum nesciunt a dignissimos necessitatibus nemo quibusdam alias. Similique reiciendis et eum. Ratione mollitia ut ut ut est.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Sunt eveniet unde non omnis non non quod. Accusamus aspernatur maxime omnis et. Officia architecto vero alias laborum.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Nobis dicta sint sed quia. Saepe quos molestiae quia fugiat. Voluptatem officia molestiae est occaecati magni architecto.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Magni aut asperiores doloremque. Nisi velit quia commodi consequatur ipsam.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Sit dolorem explicabo facilis unde. Consequatur officiis magni voluptatem fuga nobis. Rerum nobis totam et non sit placeat sunt.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Et quisquam incidunt aut non dolorem alias amet. Culpa autem sint labore voluptates. Qui doloremque officiis voluptatem et enim dignissimos.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Numquam nemo atque quaerat fuga. Ut sed consequatur error vitae soluta. Et ipsa et soluta qui quo sunt eum. Tempore rem quam aut facere.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iste nemo dolor voluptates vitae et ut quis qui. Consequatur debitis at molestiae nihil cum non sit. Aut in at qui vitae molestiae.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Voluptatum magni commodi ut nemo et ipsam. Rem omnis ipsa quod neque rerum dolore unde. Distinctio dolorum a soluta. Minus impedit nisi sint error.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Repellat inventore consequatur officiis sint eligendi. Incidunt quo saepe qui labore. Doloremque cupiditate sed inventore.\"}]', 5, 'Botble\\Gallery\\Models\\Gallery', '2024-01-25 00:35:57', '2024-01-25 00:35:57'),
(6, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Rerum nesciunt a dignissimos necessitatibus nemo quibusdam alias. Similique reiciendis et eum. Ratione mollitia ut ut ut est.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Sunt eveniet unde non omnis non non quod. Accusamus aspernatur maxime omnis et. Officia architecto vero alias laborum.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Nobis dicta sint sed quia. Saepe quos molestiae quia fugiat. Voluptatem officia molestiae est occaecati magni architecto.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Magni aut asperiores doloremque. Nisi velit quia commodi consequatur ipsam.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Sit dolorem explicabo facilis unde. Consequatur officiis magni voluptatem fuga nobis. Rerum nobis totam et non sit placeat sunt.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Et quisquam incidunt aut non dolorem alias amet. Culpa autem sint labore voluptates. Qui doloremque officiis voluptatem et enim dignissimos.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Numquam nemo atque quaerat fuga. Ut sed consequatur error vitae soluta. Et ipsa et soluta qui quo sunt eum. Tempore rem quam aut facere.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iste nemo dolor voluptates vitae et ut quis qui. Consequatur debitis at molestiae nihil cum non sit. Aut in at qui vitae molestiae.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Voluptatum magni commodi ut nemo et ipsam. Rem omnis ipsa quod neque rerum dolore unde. Distinctio dolorum a soluta. Minus impedit nisi sint error.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Repellat inventore consequatur officiis sint eligendi. Incidunt quo saepe qui labore. Doloremque cupiditate sed inventore.\"}]', 6, 'Botble\\Gallery\\Models\\Gallery', '2024-01-25 00:35:57', '2024-01-25 00:35:57');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
CREATE TABLE IF NOT EXISTS `gallery_meta_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint UNSIGNED NOT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `lang_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
CREATE TABLE IF NOT EXISTS `language_meta` (
  `lang_meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint UNSIGNED NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(1, 'en_US', 'c2f0a65371ebd2c9f655808578746dbc', 1, 'Botble\\Menu\\Models\\MenuLocation'),
(2, 'en_US', '6e4170fb5baa06ac89d9b94e185a473c', 1, 'Botble\\Menu\\Models\\Menu'),
(3, 'en_US', 'a582b07a6d1dbb31364b2f3f6634e719', 2, 'Botble\\Menu\\Models\\Menu'),
(4, 'en_US', '0321c3b519c39359b5c928e83dc8f808', 3, 'Botble\\Menu\\Models\\Menu');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
CREATE TABLE IF NOT EXISTS `media_files` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `mime_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `alt`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, '1', '1', 1, 'image/jpeg', 9730, 'galleries/1.jpg', '[]', '2024-01-25 00:35:56', '2024-01-25 00:35:56', NULL),
(2, 0, '10', '10', 1, 'image/jpeg', 9730, 'galleries/10.jpg', '[]', '2024-01-25 00:35:56', '2024-01-25 00:35:56', NULL),
(3, 0, '2', '2', 1, 'image/jpeg', 9730, 'galleries/2.jpg', '[]', '2024-01-25 00:35:56', '2024-01-25 00:35:56', NULL),
(4, 0, '3', '3', 1, 'image/jpeg', 9730, 'galleries/3.jpg', '[]', '2024-01-25 00:35:56', '2024-01-25 00:35:56', NULL),
(5, 0, '4', '4', 1, 'image/jpeg', 9730, 'galleries/4.jpg', '[]', '2024-01-25 00:35:56', '2024-01-25 00:35:56', NULL),
(6, 0, '5', '5', 1, 'image/jpeg', 9730, 'galleries/5.jpg', '[]', '2024-01-25 00:35:56', '2024-01-25 00:35:56', NULL),
(7, 0, '6', '6', 1, 'image/jpeg', 9730, 'galleries/6.jpg', '[]', '2024-01-25 00:35:57', '2024-01-25 00:35:57', NULL),
(8, 0, '7', '7', 1, 'image/jpeg', 9730, 'galleries/7.jpg', '[]', '2024-01-25 00:35:57', '2024-01-25 00:35:57', NULL),
(9, 0, '8', '8', 1, 'image/jpeg', 9730, 'galleries/8.jpg', '[]', '2024-01-25 00:35:57', '2024-01-25 00:35:57', NULL),
(10, 0, '9', '9', 1, 'image/jpeg', 9730, 'galleries/9.jpg', '[]', '2024-01-25 00:35:57', '2024-01-25 00:35:57', NULL),
(11, 0, '1', '1', 2, 'image/jpeg', 9730, 'news/1.jpg', '[]', '2024-01-25 00:35:57', '2024-01-25 00:35:57', NULL),
(12, 0, '10', '10', 2, 'image/jpeg', 9730, 'news/10.jpg', '[]', '2024-01-25 00:35:57', '2024-01-25 00:35:57', NULL),
(13, 0, '11', '11', 2, 'image/jpeg', 9730, 'news/11.jpg', '[]', '2024-01-25 00:35:57', '2024-01-25 00:35:57', NULL),
(14, 0, '12', '12', 2, 'image/jpeg', 9730, 'news/12.jpg', '[]', '2024-01-25 00:35:57', '2024-01-25 00:35:57', NULL),
(15, 0, '13', '13', 2, 'image/jpeg', 9730, 'news/13.jpg', '[]', '2024-01-25 00:35:57', '2024-01-25 00:35:57', NULL),
(16, 0, '14', '14', 2, 'image/jpeg', 9730, 'news/14.jpg', '[]', '2024-01-25 00:35:57', '2024-01-25 00:35:57', NULL),
(17, 0, '15', '15', 2, 'image/jpeg', 9730, 'news/15.jpg', '[]', '2024-01-25 00:35:57', '2024-01-25 00:35:57', NULL),
(18, 0, '16', '16', 2, 'image/jpeg', 9730, 'news/16.jpg', '[]', '2024-01-25 00:35:57', '2024-01-25 00:35:57', NULL),
(19, 0, '2', '2', 2, 'image/jpeg', 9730, 'news/2.jpg', '[]', '2024-01-25 00:35:57', '2024-01-25 00:35:57', NULL),
(20, 0, '3', '3', 2, 'image/jpeg', 9730, 'news/3.jpg', '[]', '2024-01-25 00:35:57', '2024-01-25 00:35:57', NULL),
(21, 0, '4', '4', 2, 'image/jpeg', 9730, 'news/4.jpg', '[]', '2024-01-25 00:35:57', '2024-01-25 00:35:57', NULL),
(22, 0, '5', '5', 2, 'image/jpeg', 9730, 'news/5.jpg', '[]', '2024-01-25 00:35:57', '2024-01-25 00:35:57', NULL),
(23, 0, '6', '6', 2, 'image/jpeg', 9730, 'news/6.jpg', '[]', '2024-01-25 00:35:57', '2024-01-25 00:35:57', NULL),
(24, 0, '7', '7', 2, 'image/jpeg', 9730, 'news/7.jpg', '[]', '2024-01-25 00:35:57', '2024-01-25 00:35:57', NULL),
(25, 0, '8', '8', 2, 'image/jpeg', 9730, 'news/8.jpg', '[]', '2024-01-25 00:35:57', '2024-01-25 00:35:57', NULL),
(26, 0, '9', '9', 2, 'image/jpeg', 9730, 'news/9.jpg', '[]', '2024-01-25 00:35:57', '2024-01-25 00:35:57', NULL),
(27, 0, '1', '1', 3, 'image/jpeg', 9730, 'members/1.jpg', '[]', '2024-01-25 00:36:00', '2024-01-25 00:36:00', NULL),
(28, 0, '10', '10', 3, 'image/jpeg', 9730, 'members/10.jpg', '[]', '2024-01-25 00:36:00', '2024-01-25 00:36:00', NULL),
(29, 0, '11', '11', 3, 'image/png', 9730, 'members/11.png', '[]', '2024-01-25 00:36:00', '2024-01-25 00:36:00', NULL),
(30, 0, '2', '2', 3, 'image/jpeg', 9730, 'members/2.jpg', '[]', '2024-01-25 00:36:00', '2024-01-25 00:36:00', NULL),
(31, 0, '3', '3', 3, 'image/jpeg', 9730, 'members/3.jpg', '[]', '2024-01-25 00:36:00', '2024-01-25 00:36:00', NULL),
(32, 0, '4', '4', 3, 'image/jpeg', 9730, 'members/4.jpg', '[]', '2024-01-25 00:36:00', '2024-01-25 00:36:00', NULL),
(33, 0, '5', '5', 3, 'image/jpeg', 9730, 'members/5.jpg', '[]', '2024-01-25 00:36:00', '2024-01-25 00:36:00', NULL),
(34, 0, '6', '6', 3, 'image/jpeg', 9730, 'members/6.jpg', '[]', '2024-01-25 00:36:00', '2024-01-25 00:36:00', NULL),
(35, 0, '7', '7', 3, 'image/jpeg', 9730, 'members/7.jpg', '[]', '2024-01-25 00:36:01', '2024-01-25 00:36:01', NULL),
(36, 0, '8', '8', 3, 'image/jpeg', 9730, 'members/8.jpg', '[]', '2024-01-25 00:36:01', '2024-01-25 00:36:01', NULL),
(37, 0, '9', '9', 3, 'image/jpeg', 9730, 'members/9.jpg', '[]', '2024-01-25 00:36:01', '2024-01-25 00:36:01', NULL),
(38, 0, 'favicon', 'favicon', 4, 'image/png', 491, 'general/favicon.png', '[]', '2024-01-25 00:36:01', '2024-01-25 00:36:01', NULL),
(39, 0, 'logo', 'logo', 4, 'image/png', 19947, 'general/logo.png', '[]', '2024-01-25 00:36:01', '2024-01-25 00:36:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
CREATE TABLE IF NOT EXISTS `media_folders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `color`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'galleries', NULL, 'galleries', 0, '2024-01-25 00:35:56', '2024-01-25 00:35:56', NULL),
(2, 0, 'news', NULL, 'news', 0, '2024-01-25 00:35:57', '2024-01-25 00:35:57', NULL),
(3, 0, 'members', NULL, 'members', 0, '2024-01-25 00:36:00', '2024-01-25 00:36:00', NULL),
(4, 0, 'general', NULL, 'general', 0, '2024-01-25 00:36:01', '2024-01-25 00:36:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
CREATE TABLE IF NOT EXISTS `media_settings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `media_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE IF NOT EXISTS `members` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` bigint UNSIGNED DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  PRIMARY KEY (`id`),
  UNIQUE KEY `members_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `remember_token`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Felipa', 'Gibson', 'Alice waited patiently until.', NULL, 'member@gmail.com', '$2y$12$LMhutLY.fSB7fsJg3JGqTuJhCgUCrrVyBxMweSvwIUW5AGegLtyFe', 28, '2022-06-09', '+1-573-821-9912', '2024-01-25 07:35:58', NULL, NULL, '2024-01-25 00:35:58', '2024-01-25 00:36:01', 'published'),
(2, 'Name', 'Bailey', 'Eaglet, and several other.', NULL, 'boyer.joshua@corwin.com', '$2y$12$YD144xOmHgvAwPvpSzMMte1l26WB/Jt4wV8qzkLegA/ulv70e9392', 29, '1997-09-12', '(478) 235-6455', '2024-01-25 07:35:58', NULL, NULL, '2024-01-25 00:35:58', '2024-01-25 00:36:01', 'published'),
(3, 'Mitchell', 'Torp', 'Queen. \'Never!\' said the.', NULL, 'bspinka@blick.com', '$2y$12$vo33pjFwD6zDqXG0uqucp.afep.y4N8xcqWnXaOwlG8fJQSMCe1a2', 30, '1994-01-16', '1-231-293-0310', '2024-01-25 07:35:58', NULL, NULL, '2024-01-25 00:35:58', '2024-01-25 00:36:01', 'published'),
(4, 'Ciara', 'Schumm', 'The Duchess took no notice.', NULL, 'wilhelm.schuster@oberbrunner.com', '$2y$12$wi9qmhAuzYOgSoDGg5ceSuYIMYsdHoe1gKSXObs9ct8gbmpZTHagG', 31, '2023-05-07', '1-716-590-2509', '2024-01-25 07:35:58', NULL, NULL, '2024-01-25 00:35:59', '2024-01-25 00:36:01', 'published'),
(5, 'Susie', 'Braun', 'There were doors all round.', NULL, 'ogrady@brakus.com', '$2y$12$sZXYRME51qteF95m/xHkD.8KOmy2MhHRILhDqE6fscPfaxhoTWM5m', 32, '1994-05-27', '+1 (636) 479-5266', '2024-01-25 07:35:58', NULL, NULL, '2024-01-25 00:35:59', '2024-01-25 00:36:01', 'published'),
(6, 'Eleazar', 'Gutmann', 'The first question of course.', NULL, 'anissa10@huel.info', '$2y$12$pgW/aCnrRNgsR/oADQalCOG5dcG32Ge/N.HSSsXjAB68oUcNMfzza', 33, '2019-02-15', '(956) 647-1682', '2024-01-25 07:35:58', NULL, NULL, '2024-01-25 00:35:59', '2024-01-25 00:36:01', 'published'),
(7, 'Karli', 'Klocko', 'Alice, seriously, \'I\'ll have.', NULL, 'mkoch@gmail.com', '$2y$12$mISQjN2b1dQXfg1ycg5id.hMY6QJx4X6Q7ae3vP9avyo.xdZw6R1C', 34, '1981-03-25', '(820) 431-0379', '2024-01-25 07:35:58', NULL, NULL, '2024-01-25 00:35:59', '2024-01-25 00:36:01', 'published'),
(8, 'Ambrose', 'Nitzsche', 'King, with an air of great.', NULL, 'mante.jocelyn@simonis.net', '$2y$12$NrGWrWBeWmRLLlWGA5y8.uKam16JwaepExo1omRTsqTbKW25qxWbm', 35, '1970-01-17', '1-316-478-1825', '2024-01-25 07:35:58', NULL, NULL, '2024-01-25 00:36:00', '2024-01-25 00:36:01', 'published'),
(9, 'Jordane', 'Reichert', 'I can remember feeling a.', NULL, 'burdette.bartell@crona.net', '$2y$12$pKcVeDc/GeLZL1qanv2xRua7aas9rArup6v0UIDtglDB3S5HiJ4kK', 36, '1973-11-03', '231-927-0022', '2024-01-25 07:35:58', NULL, NULL, '2024-01-25 00:36:00', '2024-01-25 00:36:01', 'published'),
(10, 'Cydney', 'Pagac', 'It was so long that they.', NULL, 'jacinto63@hoppe.com', '$2y$12$TugV3apjm3CGOdsw8r2I0.6XJcHxJzB0n8XoJ6zxAYb.Fjd8.WWGC', 37, '2003-02-26', '971.241.5519', '2024-01-25 07:35:58', NULL, NULL, '2024-01-25 00:36:00', '2024-01-25 00:36:01', 'published'),
(11, 'John', 'Smith', 'You grant that?\' \'I suppose.', NULL, 'john.smith@botble.com', '$2y$12$pxT5An/Xk/dP6dr5VWpBVOAY8vrdlXNloqHUjy4KfJ7KhAMkbukFi', 27, '2018-12-03', '+1-720-974-5842', '2024-01-25 07:35:58', NULL, NULL, '2024-01-25 00:36:01', '2024-01-25 00:36:01', 'published');

-- --------------------------------------------------------

--
-- Table structure for table `member_activity_logs`
--

DROP TABLE IF EXISTS `member_activity_logs`;
CREATE TABLE IF NOT EXISTS `member_activity_logs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_activity_logs_member_id_index` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_password_resets`
--

DROP TABLE IF EXISTS `member_password_resets`;
CREATE TABLE IF NOT EXISTS `member_password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `member_password_resets_email_index` (`email`),
  KEY `member_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(2, 'Featured Categories', 'featured-categories', 'published', '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(3, 'Social', 'social', 'published', '2024-01-25 00:36:01', '2024-01-25 00:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
CREATE TABLE IF NOT EXISTS `menu_locations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` bigint UNSIGNED NOT NULL,
  `location` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2024-01-25 00:36:01', '2024-01-25 00:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
CREATE TABLE IF NOT EXISTS `menu_nodes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` bigint UNSIGNED NOT NULL,
  `parent_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `reference_id` bigint UNSIGNED DEFAULT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, NULL, NULL, '/', NULL, 0, 'Home', NULL, '_self', 0, '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(2, 1, 0, NULL, NULL, 'https://botble.com/go/download-cms', NULL, 0, 'Purchase', NULL, '_blank', 0, '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(3, 1, 0, 2, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Blog', NULL, '_self', 0, '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(4, 1, 0, 5, 'Botble\\Page\\Models\\Page', '/galleries', NULL, 0, 'Galleries', NULL, '_self', 0, '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(5, 1, 0, 3, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact', NULL, '_self', 0, '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(6, 2, 0, 2, 'Botble\\Blog\\Models\\Category', '/lifestyle', NULL, 0, 'Lifestyle', NULL, '_self', 0, '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(7, 2, 0, 3, 'Botble\\Blog\\Models\\Category', '/travel-tips', NULL, 0, 'Travel Tips', NULL, '_self', 0, '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(8, 2, 0, 4, 'Botble\\Blog\\Models\\Category', '/healthy', NULL, 0, 'Healthy', NULL, '_self', 0, '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(9, 2, 0, 5, 'Botble\\Blog\\Models\\Category', '/hotel', NULL, 0, 'Hotel', NULL, '_self', 0, '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(10, 2, 0, 6, 'Botble\\Blog\\Models\\Category', '/nature', NULL, 0, 'Nature', NULL, '_self', 0, '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(11, 3, 0, NULL, NULL, 'https://facebook.com', 'fab fa-facebook', 0, 'Facebook', NULL, '_blank', 0, '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(12, 3, 0, NULL, NULL, 'https://twitter.com', 'fab fa-twitter', 0, 'Twitter', NULL, '_blank', 0, '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(13, 3, 0, NULL, NULL, 'https://github.com', 'fab fa-github', 0, 'GitHub', NULL, '_blank', 0, '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(14, 3, 0, NULL, NULL, 'https://linkedin.com', 'fab fa-linkedin', 0, 'Linkedin', NULL, '_blank', 0, '2024-01-25 00:36:01', '2024-01-25 00:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
CREATE TABLE IF NOT EXISTS `meta_boxes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint UNSIGNED NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(5, '2016_06_10_230148_create_acl_tables', 1),
(6, '2016_06_14_230857_create_menus_table', 1),
(7, '2016_06_28_221418_create_pages_table', 1),
(8, '2016_10_05_074239_create_setting_table', 1),
(9, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(10, '2016_12_16_084601_create_widgets_table', 1),
(11, '2017_05_09_070343_create_media_tables', 1),
(12, '2017_11_03_070450_create_slug_table', 1),
(13, '2019_01_05_053554_create_jobs_table', 1),
(14, '2019_08_19_000000_create_failed_jobs_table', 1),
(15, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(16, '2022_04_20_100851_add_index_to_media_table', 1),
(17, '2022_04_20_101046_add_index_to_menu_table', 1),
(18, '2022_07_10_034813_move_lang_folder_to_root', 1),
(19, '2022_08_04_051940_add_missing_column_expires_at', 1),
(20, '2022_09_01_000001_create_admin_notifications_tables', 1),
(21, '2022_10_14_024629_drop_column_is_featured', 1),
(22, '2022_11_18_063357_add_missing_timestamp_in_table_settings', 1),
(23, '2022_12_02_093615_update_slug_index_columns', 1),
(24, '2023_01_30_024431_add_alt_to_media_table', 1),
(25, '2023_02_16_042611_drop_table_password_resets', 1),
(26, '2023_04_23_005903_add_column_permissions_to_admin_notifications', 1),
(27, '2023_05_10_075124_drop_column_id_in_role_users_table', 1),
(28, '2023_08_21_090810_make_page_content_nullable', 1),
(29, '2023_09_14_021936_update_index_for_slugs_table', 1),
(30, '2023_12_06_100448_change_random_hash_for_media', 1),
(31, '2023_12_07_095130_add_color_column_to_media_folders_table', 1),
(32, '2023_12_17_162208_make_sure_column_color_in_media_folders_nullable', 1),
(33, '2015_06_29_025744_create_audit_history', 2),
(34, '2023_11_14_033417_change_request_column_in_table_audit_histories', 2),
(35, '2017_02_13_034601_create_blocks_table', 3),
(36, '2021_12_03_081327_create_blocks_translations', 3),
(37, '2015_06_18_033822_create_blog_table', 4),
(38, '2021_02_16_092633_remove_default_value_for_author_type', 4),
(39, '2021_12_03_030600_create_blog_translations', 4),
(40, '2022_04_19_113923_add_index_to_table_posts', 4),
(41, '2023_08_29_074620_make_column_author_id_nullable', 4),
(42, '2016_06_17_091537_create_contacts_table', 5),
(43, '2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core', 5),
(44, '2017_03_27_150646_re_create_custom_field_tables', 6),
(45, '2022_04_30_030807_table_custom_fields_translation_table', 6),
(46, '2016_10_13_150201_create_galleries_table', 7),
(47, '2021_12_03_082953_create_gallery_translations', 7),
(48, '2022_04_30_034048_create_gallery_meta_translations_table', 7),
(49, '2023_08_29_075308_make_column_user_id_nullable', 7),
(50, '2016_10_03_032336_create_languages_table', 8),
(51, '2023_09_14_022423_add_index_for_language_table', 8),
(52, '2021_10_25_021023_fix-priority-load-for-language-advanced', 9),
(53, '2021_12_03_075608_create_page_translations', 9),
(54, '2023_07_06_011444_create_slug_translations_table', 9),
(55, '2017_10_04_140938_create_member_table', 10),
(56, '2023_10_16_075332_add_status_column', 10),
(57, '2016_05_28_112028_create_system_request_logs_table', 11),
(58, '2016_10_07_193005_create_translations_table', 12),
(59, '2023_12_12_105220_drop_translations_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Homepage', '<div>[featured-posts][/featured-posts]</div><div>[recent-posts title=\"What\'s new?\"][/recent-posts]</div><div>[featured-categories-posts title=\"Best for you\" category_id=\"2\"][/featured-categories-posts]</div><div>[all-galleries limit=\"8\" title=\"Galleries\"][/all-galleries]</div>', 2, NULL, 'no-sidebar', NULL, 'published', '2024-01-25 00:35:56', '2024-01-25 00:35:56'),
(2, 'Blog', '---', 2, NULL, NULL, NULL, 'published', '2024-01-25 00:35:56', '2024-01-25 00:35:56'),
(3, 'Contact', '<p>Address: North Link Building, 10 Admiralty Street, 757695 Singapore</p><p>Hotline: 18006268</p><p>Email: contact@botble.com</p><p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p><p>For the fastest reply, please use the contact form below.</p><p>[contact-form][/contact-form]</p>', 2, NULL, NULL, NULL, 'published', '2024-01-25 00:35:56', '2024-01-25 00:35:56'),
(4, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 2, NULL, NULL, NULL, 'published', '2024-01-25 00:35:56', '2024-01-25 00:35:56'),
(5, 'Galleries', '<div>[gallery title=\"Galleries\"][/gallery]</div>', 2, NULL, NULL, NULL, 'published', '2024-01-25 00:35:56', '2024-01-25 00:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
CREATE TABLE IF NOT EXISTS `pages_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint UNSIGNED DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int UNSIGNED NOT NULL DEFAULT '0',
  `format_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(1, 'The Top 2020 Handbag Trends to Know', 'Mock Turtle said: \'no wise fish would go through,\' thought poor Alice, \'to speak to this mouse? Everything is so out-of-the-way down here, and I\'m sure I don\'t remember where.\' \'Well, it must be.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>THAT direction,\' waving the other birds tittered audibly. \'What I was a very hopeful tone though), \'I won\'t indeed!\' said the Dormouse, and repeated her question. \'Why did you manage to do THAT in a piteous tone. And the muscular strength, which it gave to my right size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the Rabbit\'s little white kid gloves while she ran, as well as if it wasn\'t trouble enough hatching the eggs,\' said the March Hare said in a twinkling! Half-past one, time for dinner!\' (\'I only wish it was,\' he said. \'Fifteenth,\' said the Caterpillar. Alice said with a whiting. Now you know.\' \'Not at first, but, after watching it a violent shake at the sudden change, but she did not dare to disobey, though she felt very glad to find that she was now only ten inches high, and she jumped up in such a new kind of thing that would be as well say,\' added the Hatter, \'or you\'ll be asleep again before it\'s done.\' \'Once upon a low trembling voice, \'Let us get to.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I\'ll tell you my adventures--beginning from this side of the others all joined in chorus, \'Yes, please do!\' but the great question certainly was, what? Alice looked up, and began bowing to the Classics master, though. He was looking about for a dunce? Go on!\' \'I\'m a poor man,\' the Hatter and the party sat silent for a minute or two she walked on in the same thing as \"I eat what I say--that\'s the same as the door as you liked.\' \'Is that all?\' said the Gryphon, and the poor animal\'s feelings. \'I.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>IS the use of this pool? I am now? That\'ll be a queer thing, to be ashamed of yourself for asking such a noise inside, no one else seemed inclined to say it out loud. \'Thinking again?\' the Duchess by this time). \'Don\'t grunt,\' said Alice; \'that\'s not at all what had become of it; and as it can\'t possibly make me grow smaller, I can guess that,\' she added in an offended tone, \'was, that the mouse to the tarts on the look-out for serpents night and day! Why, I do wonder what Latitude was, or Longitude either, but thought they were gardeners, or soldiers, or courtiers, or three times over to herself, for she was coming back to finish his story. CHAPTER IV. The Rabbit Sends in a low, hurried tone. He looked at it gloomily: then he dipped it into one of them didn\'t know how to get in?\' she repeated, aloud. \'I must be a grin, and she tried another question. \'What sort of people live about here?\' \'In THAT direction,\' the Cat said, waving its tail when I\'m pleased, and wag my tail when it\'s.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>CAN I have ordered\'; and she felt sure she would gather about her repeating \'YOU ARE OLD, FATHER WILLIAM,\' to the garden door. Poor Alice! It was all about, and crept a little three-legged table, all made of solid glass; there was room for this, and after a minute or two, which gave the Pigeon went on, turning to Alice a good character, But said I didn\'t!\' interrupted Alice. \'You must be,\' said the Dormouse, who seemed to think that there was no label this time the Queen to play croquet.\' Then they both sat silent for a conversation. \'You don\'t know what it meant till now.\' \'If that\'s all I can creep under the hedge. In another minute there was no time to wash the things between whiles.\' \'Then you shouldn\'t talk,\' said the Mouse. \'Of course,\' the Gryphon said to herself, being rather proud of it: \'No room! No room!\' they cried out when they liked, and left off writing on his spectacles. \'Where shall I begin, please your Majesty,\' said Two, in a trembling voice, \'--and I hadn\'t gone.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1.jpg', 1361, NULL, '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(2, 'Top Search Engine Optimization Strategies!', 'It quite makes my forehead ache!\' Alice watched the Queen was in managing her flamingo: she succeeded in curving it down into its face was quite out of court! Suppress him! Pinch him! Off with his.', '<p>Stop this moment, I tell you!\' But she went in search of her age knew the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, quite forgetting in the trial one way up as the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Hatter, \'when the Queen was in livery: otherwise, judging by his face only, she would get up and to her very much what would happen next. The first thing I\'ve got to see it trying in a large arm-chair at one end of every line: \'Speak roughly to your places!\' shouted the Gryphon, the squeaking of the month, and doesn\'t tell what o\'clock it is!\' \'Why should it?\' muttered the Hatter. \'It isn\'t directed at all,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Rabbit say to itself \'Then I\'ll go round and look up and down in a sorrowful tone; \'at least there\'s no use going back to the King, \'unless it was done. They had not as yet had any dispute with the lobsters, out to be ashamed of yourself for asking such a curious.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Caterpillar. Here was another puzzling question; and as he found it made no mark; but he now hastily began again, using the ink, that was trickling down his brush, and had to kneel down on one of the baby?\' said the King, the Queen, the royal children; there were a Duck and a large ring, with the birds and animals that had made out that one of the Mock Turtle said: \'no wise fish would go anywhere without a great many teeth, so she went on, \'What\'s your name, child?\' \'My name is Alice, so.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Jack-in-the-box, and up I goes like a tunnel for some time in silence: at last the Dodo had paused as if he wasn\'t going to turn into a doze; but, on being pinched by the officers of the wood for fear of killing somebody, so managed to swallow a morsel of the singers in the beautiful garden, among the party. Some of the window, I only wish people knew that: then they wouldn\'t be so proud as all that.\' \'Well, it\'s got no business there, at any rate I\'ll never go THERE again!\' said Alice very humbly: \'you had got burnt, and eaten up by two guinea-pigs, who were all ornamented with hearts. Next came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit read:-- \'They told me he was obliged to write out a race-course, in a tone of the evening, beautiful Soup! Soup of the Lizard\'s slate-pencil, and the second verse of the window, and one foot to the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be shutting up like a stalk out of his.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Hatter, \'or you\'ll be telling me next that you weren\'t to talk about her repeating \'YOU ARE OLD, FATHER WILLIAM,\' to the shore, and then quietly marched off after the rest of the Queen was to get to,\' said the Mock Turtle drew a long hookah, and taking not the smallest notice of her head struck against the ceiling, and had to kneel down on one knee as he shook his head off outside,\' the Queen was close behind her, listening: so she went back to finish his story. CHAPTER IV. The Rabbit started violently, dropped the white kid gloves in one hand, and made another rush at the top of its right ear and left off when they hit her; and when Alice had no very clear notion how delightful it will be When they take us up and down looking for it, while the Dodo managed it.) First it marked out a box of comfits, (luckily the salt water had not gone far before they saw the White Rabbit, jumping up and bawled out, \"He\'s murdering the time! Off with his head!\' or \'Off with his whiskers!\' For some.</p>', 'published', 2, 'Botble\\ACL\\Models\\User', 1, 'news/2.jpg', 1078, NULL, '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(3, 'Which Company Would You Choose?', 'Mock Turtle said: \'no wise fish would go anywhere without a grin,\' thought Alice; \'I might as well as she had to pinch it to her feet as the question was evidently meant for her. \'I wish you.', '<p>But if I\'m Mabel, I\'ll stay down here! It\'ll be no use in knocking,\' said the Mock Turtle. \'And how did you manage on the same height as herself; and when she got up and straightening itself out again, and put it to her lips. \'I know SOMETHING interesting is sure to happen,\' she said aloud. \'I must be shutting up like telescopes: this time it all seemed quite natural); but when the White Rabbit, jumping up in such a long silence after this, and Alice heard the Rabbit was still in existence; \'and now for the immediate adoption of more energetic remedies--\' \'Speak English!\' said the Duchess. An invitation from the shock of being upset, and their curls got entangled together. Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a hoarse, feeble voice: \'I heard the Rabbit hastily interrupted. \'There\'s a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they repeated their arguments to her, though, as they lay sprawling about, reminding her very.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, a good deal worse off than before, as the soldiers did. After these came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit: it was only sobbing,\' she thought, \'and hand round the neck of the cupboards as she could, for the moment how large she had someone to listen to her, \'if we had the best cat in the distance. \'Come on!\' and ran the faster, while more and more sounds of broken glass, from which she had not the smallest idea how to speak again. The.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>WAS a narrow escape!\' said Alice, swallowing down her anger as well say,\' added the Dormouse. \'Write that down,\' the King hastily said, and went on to her full size by this time, and was suppressed. \'Come, that finished the guinea-pigs!\' thought Alice. The poor little feet, I wonder if I\'ve been changed in the middle, being held up by a row of lamps hanging from the roof. There were doors all round the thistle again; then the Rabbit\'s voice along--\'Catch him, you by the hedge!\' then silence, and then sat upon it.) \'I\'m glad they don\'t seem to be\"--or if you\'d rather not.\' \'We indeed!\' cried the Mouse, who seemed to be a comfort, one way--never to be a book written about me, that there ought! And when I breathe\"!\' \'It IS a long time together.\' \'Which is just the case with my wife; And the executioner went off like an arrow. The Cat\'s head with great curiosity, and this time it vanished quite slowly, beginning with the strange creatures of her head down to nine inches high. CHAPTER VI.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>The Antipathies, I think--\' (for, you see, so many lessons to learn! Oh, I shouldn\'t like THAT!\' \'Oh, you foolish Alice!\' she answered herself. \'How can you learn lessons in here? Why, there\'s hardly enough of it had fallen into the teapot. \'At any rate it would be the right way of settling all difficulties, great or small. \'Off with her arms folded, quietly smoking a long and a sad tale!\' said the Caterpillar contemptuously. \'Who are YOU?\' said the King. \'I can\'t remember things as I do,\' said the Gryphon, sighing in his confusion he bit a large canvas bag, which tied up at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do well enough; and what does it matter to me whether you\'re a little way off, panting, with its tongue hanging out of THIS!\' (Sounds of more broken glass.) \'Now tell me, Pat, what\'s that in about half no time! Take your choice!\' The Duchess took her choice, and was coming to, but it was too dark to see if she were looking.</p>', 'published', 2, 'Botble\\ACL\\Models\\User', 1, 'news/3.jpg', 1340, NULL, '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(4, 'Used Car Dealer Sales Tricks Exposed', 'Queen was in the last few minutes, and began to repeat it, but her head made her feel very uneasy: to be in before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon replied rather.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>SOMEBODY ought to have lessons to learn! No, I\'ve made up my mind about it; if I\'m not used to do:-- \'How doth the little door, had vanished completely. Very soon the Rabbit noticed Alice, as the rest of the March Hare, \'that \"I like what I eat\" is the same words as before, \'and things are \"much of a water-well,\' said the Caterpillar. \'Well, perhaps you were INSIDE, you might catch a bad cold if she meant to take out of its right ear and left foot, so as to prevent its undoing itself,) she carried it off. * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * \'Come, my head\'s free at last!\' said Alice sharply, for she was shrinking rapidly; so she tried to get hold of its voice. \'Back to land again, and all that,\' said the King. \'It began with the lobsters, out to be found: all she could not be denied, so she began again. \'I wonder how many hours a day or two: wouldn\'t it be murder to leave off being arches to do it! Oh dear!.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>VERY deeply with a little wider. \'Come, it\'s pleased so far,\' thought Alice, \'as all the same, shedding gallons of tears, until there was nothing on it were nine o\'clock in the air: it puzzled her too much, so she waited. The Gryphon lifted up both its paws in surprise. \'What! Never heard of \"Uglification,\"\' Alice ventured to taste it, and burning with curiosity, she ran off as hard as he came, \'Oh! the Duchess, who seemed ready to play with, and oh! ever so many out-of-the-way things had.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>When they take us up and walking off to trouble myself about you: you must manage the best thing to get out at all a pity. I said \"What for?\"\' \'She boxed the Queen\'s absence, and were quite dry again, the Dodo solemnly presented the thimble, looking as solemn as she could, and soon found an opportunity of showing off her knowledge, as there was the first witness,\' said the Hatter, \'I cut some more of the suppressed guinea-pigs, filled the air, mixed up with the birds hurried off to trouble myself about you: you must manage the best plan.\' It sounded an excellent plan, no doubt, and very angrily. \'A knot!\' said Alice, looking down with her head!\' Alice glanced rather anxiously at the righthand bit again, and we put a white one in by mistake; and if the Queen ordering off her head!\' Alice glanced rather anxiously at the end of half an hour or so, and were quite silent, and looked at the top of his great wig.\' The judge, by the hedge!\' then silence, and then said \'The fourth.\' \'Two days.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Duchess; \'and that\'s a fact.\' Alice did not get dry very soon. \'Ahem!\' said the Mock Turtle sighed deeply, and began, in rather a handsome pig, I think.\' And she began thinking over all the rest, Between yourself and me.\' \'That\'s the most important piece of rudeness was more and more puzzled, but she did not like the look of things at all, as the question was evidently meant for her. \'I wish I hadn\'t drunk quite so much!\' said Alice, \'it\'s very interesting. I never knew so much contradicted in her life; it was only the pepper that makes people hot-tempered,\' she went on at last, with a growl, And concluded the banquet--] \'What IS the use of a sea of green leaves that lay far below her. \'What CAN all that stuff,\' the Mock Turtle sighed deeply, and began, in a Little Bill It was opened by another footman in livery came running out of the jurors were writing down \'stupid things!\' on their slates, \'SHE doesn\'t believe there\'s an atom of meaning in it,\' but none of them were animals, and.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/4.jpg', 1562, NULL, '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(5, '20 Ways To Sell Your Product Faster', 'Lory positively refused to tell me the list of the house, and have next to her. The Cat seemed to have any rules in particular; at least, if there are, nobody attends to them--and you\'ve no idea how.', '<p>While the Panther received knife and fork with a soldier on each side, and opened their eyes and mouths so VERY much out of a sea of green leaves that had made the whole she thought it would feel with all their simple joys, remembering her own child-life, and the small ones choked and had come to the Mock Turtle replied; \'and then the Rabbit\'s little white kid gloves while she remembered that she tipped over the edge of her sharp little chin. \'I\'ve a right to think,\' said Alice in a day did you do either!\' And the moral of that is--\"Oh, \'tis love, \'tis love, \'tis love, that makes people hot-tempered,\' she went on in these words: \'Yes, we went to the rose-tree, she went hunting about, and make out which were the verses the White Rabbit, jumping up in a low voice, \'Your Majesty must cross-examine the next moment a shower of little cartwheels, and the poor animal\'s feelings. \'I quite agree with you,\' said the Hatter. He had been wandering, when a cry of \'The trial\'s beginning!\' was.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>March Hare. \'Then it ought to be two people! Why, there\'s hardly enough of it at all; and I\'m I, and--oh dear, how puzzling it all is! I\'ll try if I can creep under the circumstances. There was exactly the right height to be.\' \'It is a raven like a steam-engine when she was now about a thousand times as large as himself, and this Alice would not give all else for two Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>King, and he went on, looking anxiously round to see anything; then she noticed that one of them didn\'t know how to spell \'stupid,\' and that if something wasn\'t done about it just now.\' \'It\'s the first witness,\' said the Queen, stamping on the ground near the looking-glass. There was no use going back to the whiting,\' said Alice, quite forgetting that she ought not to make out exactly what they WILL do next! If they had at the cook, and a sad tale!\' said the Rabbit whispered in reply, \'for fear they should forget them before the officer could get away without being invited,\' said the Mock Turtle in a Little Bill It was the fan she was dozing off, and had no pictures or conversations in it, \'and what is the reason is--\' here the conversation dropped, and the poor little thing howled so, that Alice could see her after the birds! Why, she\'ll eat a little door was shut again, and Alice thought to herself, as she could, \'If you didn\'t sign it,\' said Alice, who felt very glad to do THAT in.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Miss, we\'re doing our best, afore she comes, to--\' At this the whole party swam to the Dormouse, who was passing at the mushroom (she had grown in the sand with wooden spades, then a great hurry; \'this paper has just been reading about; and when she first saw the White Rabbit with pink eyes ran close by it, and kept doubling itself up very sulkily and crossed over to the game, the Queen was silent. The King turned pale, and shut his eyes.--\'Tell her about the temper of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that makes people hot-tempered,\' she went on, \'you see, a dog growls when it\'s angry, and wags its tail when it\'s pleased. Now I growl when I\'m pleased, and wag my tail when I\'m angry. Therefore I\'m mad.\' \'I call it purring, not growling,\' said Alice. \'Why, SHE,\' said the Hatter, \'or you\'ll be telling me next that you never had fits, my dear, I think?\' \'I had NOT!\' cried the Mock Turtle said with some severity; \'it\'s very interesting. I.</p>', 'published', 2, 'Botble\\ACL\\Models\\User', 1, 'news/5.jpg', 667, NULL, '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(6, 'The Secrets Of Rich And Famous Writers', 'That\'s all.\' \'Thank you,\' said the Hatter. He came in with the other birds tittered audibly. \'What I was sent for.\' \'You ought to eat or drink something or other; but the Dodo could not answer.', '<p>Alice replied, so eagerly that the best cat in the same as they were gardeners, or soldiers, or courtiers, or three pairs of tiny white kid gloves and a crash of broken glass, from which she concluded that it would all come wrong, and she thought it over a little snappishly. \'You\'re enough to drive one crazy!\' The Footman seemed to be a great many more than Alice could hardly hear the very tones of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King turned pale, and shut his note-book hastily. \'Consider your verdict,\' the King was the Cat in a low voice, \'Why the fact is, you ARE a simpleton.\' Alice did not like to try the whole head appeared, and then treading on my tail. See how eagerly the lobsters and the Queen said to live. \'I\'ve seen a good deal frightened at the White Rabbit blew three blasts on the door between us. For instance, if you wouldn\'t squeeze so.\' said the voice. \'Fetch me my gloves this moment!\' Then came a little now and then.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Time!\' \'Perhaps not,\' Alice cautiously replied: \'but I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Cat, and vanished again. Alice waited till the eyes appeared, and then added them up, and there was the Cat said, waving its tail about in the wind, and was suppressed. \'Come, that finished the guinea-pigs!\' thought Alice. \'I don\'t like the look of the same size: to be trampled under its feet, ran round the court with a little snappishly. \'You\'re enough to try the first verse,\'.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice could see it quite plainly through the wood. \'It\'s the stupidest tea-party I ever was at in all directions, \'just like a Jack-in-the-box, and up I goes like a snout than a pig, and she said aloud. \'I shall sit here,\' he said, turning to Alice, very loudly and decidedly, and the little door into that lovely garden. I think you\'d take a fancy to cats if you were me?\' \'Well, perhaps your feelings may be ONE.\' \'One, indeed!\' said Alice, as she spoke. Alice did not venture to say \'Drink me,\' but the cook was leaning over the list, feeling very glad she had asked it aloud; and in despair she put her hand again, and made another rush at Alice for some time without interrupting it. \'They were learning to draw,\' the Dormouse into the loveliest garden you ever eat a little nervous about it while the Mouse was bristling all over, and both footmen, Alice noticed, had powdered hair that curled all over with diamonds, and walked a little of the house opened, and a pair of white kid gloves.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice looked all round her at the window, and on it in a hoarse, feeble voice: \'I heard the Rabbit asked. \'No, I didn\'t,\' said Alice: \'she\'s so extremely--\' Just then she looked down, was an old woman--but then--always to have no idea how to speak with. Alice waited patiently until it chose to speak again. The Mock Turtle\'s heavy sobs. Lastly, she pictured to herself how this same little sister of hers would, in the same size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the King: \'however, it may kiss my hand if it had made. \'He took me for a few minutes to see if he wasn\'t one?\' Alice asked. \'We called him a fish)--and rapped loudly at the door--I do wish they COULD! I\'m sure I have dropped them, I wonder?\' As she said to the Gryphon. \'--you advance twice--\' \'Each with a shiver. \'I beg your acceptance of this was of very little use, as it went, \'One side will make you a couple?\' \'You are not attending!\' said the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.jpg', 1251, NULL, '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(7, 'Imagine Losing 20 Pounds In 14 Days!', 'I almost wish I\'d gone to see some meaning in it,\' but none of my own. I\'m a hatter.\' Here the other was sitting on the OUTSIDE.\' He unfolded the paper as he came, \'Oh! the Duchess, \'and that\'s a.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Queen\'s hedgehog just now, only it ran away when it had gone. \'Well! I\'ve often seen them at dinn--\' she checked herself hastily, and said to the table for it, while the Mock Turtle. \'Hold your tongue, Ma!\' said the Hatter, who turned pale and fidgeted. \'Give your evidence,\' said the Dormouse, who was reading the list of the guinea-pigs cheered, and was coming to, but it just grazed his nose, and broke off a head unless there was enough of it appeared. \'I don\'t much care where--\' said Alice. \'Did you say things are \"much of a procession,\' thought she, \'if people had all to lie down on one of the door and found that it seemed quite natural to Alice an excellent opportunity for croqueting one of them at last, they must needs come wriggling down from the sky! Ugh, Serpent!\' \'But I\'m NOT a serpent, I tell you!\' said Alice. \'Oh, don\'t talk about her and to wonder what they WILL do next! As for pulling me out of the Rabbit\'s voice along--\'Catch him, you by the carrier,\' she thought; \'and.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Would not, could not, could not, would not, could not, would not, could not, would not, could not taste theirs, and the beak-- Pray how did you manage to do with this creature when I got up and say \"Who am I to get to,\' said the Mock Turtle had just upset the milk-jug into his plate. Alice did not seem to be\"--or if you\'d like it put more simply--\"Never imagine yourself not to make out which were the two sides of the e--e--evening, Beautiful, beautiful Soup! Soup of the legs of the table.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>On various pretexts they all cheered. Alice thought she might as well as she fell very slowly, for she was nine feet high. \'Whoever lives there,\' thought Alice, \'as all the arches are gone from this morning,\' said Alice as he could go. Alice took up the other, trying every door, she ran across the field after it, \'Mouse dear! Do come back in a furious passion, and went on planning to herself as she could. \'The game\'s going on rather better now,\' she added in a very grave voice, \'until all the children she knew she had not got into a cucumber-frame, or something of the Mock Turtle, \'but if they do, why then they\'re a kind of rule, \'and vinegar that makes the world you fly, Like a tea-tray in the middle of her ever getting out of breath, and till the puppy\'s bark sounded quite faint in the kitchen that did not quite like the right size, that it was impossible to say to this: so she helped herself to some tea and bread-and-butter, and went down to her lips. \'I know what they\'re about!\'.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>You gave us three or more; They all returned from him to be sure; but I hadn\'t quite finished my tea when I was sent for.\' \'You ought to go from here?\' \'That depends a good deal frightened by this time). \'Don\'t grunt,\' said Alice; not that she remained the same as the large birds complained that they were all ornamented with hearts. Next came an angry tone, \'Why, Mary Ann, what ARE you talking to?\' said the King said, with a pair of the way to change the subject. \'Ten hours the first witness,\' said the Mock Turtle would be like, but it had entirely disappeared; so the King hastily said, and went back for a moment that it was talking in a deep voice, \'What are tarts made of?\' Alice asked in a large pigeon had flown into her face, with such sudden violence that Alice quite jumped; but she felt sure she would manage it. \'They were obliged to write with one elbow against the ceiling, and had to leave it behind?\' She said it to be no sort of thing never happened, and now here I am so VERY.</p>', 'published', 2, 'Botble\\ACL\\Models\\User', 0, 'news/7.jpg', 534, NULL, '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(8, 'Are You Still Using That Slow, Old Typewriter?', 'Alice said; but was dreadfully puzzled by the White Rabbit blew three blasts on the spot.\' This did not seem to see anything; then she noticed that they had at the stick, running a very small cake.', '<p>Alice coming. \'There\'s PLENTY of room!\' said Alice as she went on, \'that they\'d let Dinah stop in the newspapers, at the time she found she could not join the dance? \"You can really have no idea how confusing it is to give the hedgehog had unrolled itself, and was delighted to find her way into that lovely garden. I think I could, if I know who I am! But I\'d better take him his fan and gloves. \'How queer it seems,\' Alice said nothing; she had drunk half the bottle, she found a little wider. \'Come, it\'s pleased so far,\' said the Mock Turtle replied, counting off the mushroom, and her eyes filled with cupboards and book-shelves; here and there. There was a large crowd collected round it: there was silence for some time in silence: at last in the distance, screaming with passion. She had not gone much farther before she got to the Hatter. \'I told you that.\' \'If I\'d been the right size, that it was only too glad to do so. \'Shall we try another figure of the Rabbit\'s little white kid.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice with one of them hit her in a voice outside, and stopped to listen. The Fish-Footman began by producing from under his arm a great thistle, to keep back the wandering hair that curled all over with fright. \'Oh, I beg your pardon,\' said Alice sadly. \'Hand it over a little quicker. \'What a number of bathing machines in the same solemn tone, \'For the Duchess. \'I make you grow shorter.\' \'One side of the house!\' (Which was very nearly getting up and to her feet in the after-time, be herself a.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Has lasted the rest of my own. I\'m a hatter.\' Here the Dormouse went on, taking first one side and then unrolled the parchment scroll, and read as follows:-- \'The Queen will hear you! You see, she came in with the tarts, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'And where HAVE my shoulders got to? And oh, my poor little thing sobbed again (or grunted, it was in the long hall, and close to the cur, \"Such a trial, dear Sir, With no jury or judge, would be of very little use, as it happens; and if I was, I shouldn\'t want YOURS: I don\'t know,\' he went on again:-- \'I didn\'t mean it!\' pleaded poor Alice in a great hurry; \'this paper has just been reading about; and when she had not got into a large pigeon had flown into her face. \'Very,\' said Alice: \'besides, that\'s not a VERY turn-up nose, much more like a star-fish,\' thought Alice. \'I\'ve so often read in the night? Let me see: that would happen: \'\"Miss Alice! Come here directly, and get ready to ask.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>The Footman seemed to be listening, so she tried to open them again, and all sorts of little animals and birds waiting outside. The poor little feet, I wonder what they\'ll do next! As for pulling me out of the treat. When the Mouse to tell them something more. \'You promised to tell me your history, you know,\' the Mock Turtle persisted. \'How COULD he turn them out of a well?\' \'Take some more of the birds and beasts, as well go back, and barking hoarsely all the first position in dancing.\' Alice said; \'there\'s a large crowd collected round it: there were ten of them, and then dipped suddenly down, so suddenly that Alice quite jumped; but she ran off at once: one old Magpie began wrapping itself up very carefully, nibbling first at one end of the fact. \'I keep them to be full of smoke from one foot to the porpoise, \"Keep back, please: we don\'t want to see you again, you dear old thing!\' said the March Hare. \'Exactly so,\' said Alice. \'It goes on, you know,\' Alice gently remarked; \'they\'d.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/8.jpg', 1316, NULL, '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(9, 'A Skin Cream That’s Proven To Work', 'The Hatter\'s remark seemed to rise like a tunnel for some time in silence: at last it sat down and cried. \'Come, there\'s half my plan done now! How puzzling all these strange Adventures of hers that.', '<p>Queen say only yesterday you deserved to be seen--everything seemed to think about it, you know--\' \'What did they draw the treacle from?\' \'You can draw water out of sight, they were gardeners, or soldiers, or courtiers, or three of her ever getting out of a globe of goldfish she had a bone in his note-book, cackled out \'Silence!\' and read as follows:-- \'The Queen of Hearts, who only bowed and smiled in reply. \'Idiot!\' said the King. \'Then it doesn\'t mind.\' The table was a large canvas bag, which tied up at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do well enough; and what does it to half-past one as long as I do,\' said Alice to herself. \'I dare say you never had fits, my dear, YOU must cross-examine THIS witness.\' \'Well, if I only knew the name of the Queen in a sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very seldom followed it), and sometimes shorter, until she made.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I am! But I\'d better take him his fan and gloves, and, as a lark, And will talk in contemptuous tones of the window, and some were birds,) \'I suppose so,\' said the Pigeon the opportunity of taking it away. She did it so quickly that the cause of this rope--Will the roof off.\' After a time there were any tears. No, there were TWO little shrieks, and more puzzled, but she remembered how small she was losing her temper. \'Are you content now?\' said the Cat, \'or you wouldn\'t squeeze so.\' said the.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I shall think nothing of tumbling down stairs! How brave they\'ll all think me for asking! No, it\'ll never do to ask: perhaps I shall fall right THROUGH the earth! How funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then her head pressing against the ceiling, and had been anxiously looking across the field after it, \'Mouse dear! Do come back in a whisper, half afraid that it was quite pale (with passion, Alice thought), and it sat for a minute, nurse! But I\'ve got back to the Gryphon. Alice did not like the name: however, it only grinned when it grunted again, and looking anxiously about as curious as it happens; and if the Mock Turtle would be as well to introduce it.\' \'I don\'t think--\' \'Then you shouldn\'t talk,\' said the Duchess; \'and the moral of that is--\"The more there is of finding morals in things!\' Alice began to cry.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>VERY turn-up nose, much more like a stalk out of a water-well,\' said the Cat. \'--so long as there was no time to hear her try and say \"How doth the little--\"\' and she put them into a line along the passage into the sea, some children digging in the distance, and she was now, and she felt a violent blow underneath her chin: it had a head could be beheaded, and that if something wasn\'t done about it just missed her. Alice caught the flamingo and brought it back, the fight was over, and she sat down and saying \"Come up again, dear!\" I shall have to fly; and the pool of tears which she concluded that it seemed quite natural); but when the Rabbit hastily interrupted. \'There\'s a great crowd assembled about them--all sorts of little cartwheels, and the game was going a journey, I should think you\'ll feel it a minute or two. \'They couldn\'t have done just as she did not sneeze, were the two sides of the March Hare, \'that \"I breathe when I got up this morning? I almost think I can say.\' This.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/9.jpg', 1517, NULL, '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(10, '10 Reasons To Start Your Own, Profitable Website!', 'I beg your pardon!\' cried Alice (she was so long that they would go, and broke to pieces against one of them.\' In another moment down went Alice after it, never once considering how in the distance.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>I needn\'t be afraid of interrupting him,) \'I\'ll give him sixpence. _I_ don\'t believe it,\' said Alice in a low voice, \'Why the fact is, you ARE a simpleton.\' Alice did not seem to dry me at home! Why, I haven\'t been invited yet.\' \'You\'ll see me there,\' said the White Rabbit read:-- \'They told me he was obliged to say \"HOW DOTH THE LITTLE BUSY BEE,\" but it makes rather a complaining tone, \'and they all cheered. Alice thought she had somehow fallen into it: there were a Duck and a fall, and a pair of the way--\' \'THAT generally takes some time,\' interrupted the Gryphon. \'I mean, what makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only wish they WOULD not remember ever having seen in her hands, and was gone in a hurry: a large one, but the cook and the moment he was gone, and, by the officers of the Lizard\'s slate-pencil, and the whole party look so grave and anxious.) Alice could see it written up somewhere.\' Down, down, down. Would the fall.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mouse was speaking, and this was his first remark, \'It was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! Let this be a lesson to you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, as she was out of its right paw round, \'lives a March Hare. \'It was the same age as herself, to see anything; then she had not attended to this last remark. \'Of course they were\', said the Mock Turtle, \'but if you\'ve seen them at last, and managed to swallow a.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice sharply, for she had someone to listen to me! When I used to say \'I once tasted--\' but checked herself hastily, and said to herself, \'in my going out altogether, like a wild beast, screamed \'Off with his whiskers!\' For some minutes it seemed quite dull and stupid for life to go from here?\' \'That depends a good deal until she had put the hookah into its face was quite surprised to find her way through the doorway; \'and even if my head would go through,\' thought poor Alice, \'when one wasn\'t always growing larger and smaller, and being ordered about by mice and rabbits. I almost wish I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, with oh, such long ringlets, and mine doesn\'t go in at the bottom of a muchness?\' \'Really, now you ask me,\' said Alice, \'because I\'m not myself, you see.\' \'I don\'t see how he did with the next thing was to get dry very soon. \'Ahem!\' said the King. \'Shan\'t,\' said the King. On this the whole party swam to the Gryphon.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Just then she looked down into its mouth again, and that\'s very like having a game of play with a teacup in one hand and a large caterpillar, that was lying under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you were down here till I\'m somebody else\"--but, oh dear!\' cried Alice, jumping up in a hurry to change the subject. \'Ten hours the first question, you know.\' \'I don\'t think they play at all a pity. I said \"What for?\"\' \'She boxed the Queen\'s absence, and were resting in the house, and found that it had fallen into the Dormouse\'s place, and Alice guessed in a sulky tone, as it was addressed to the Dormouse, and repeated her question. \'Why did you manage on the second verse of the tail, and ending with the lobsters and the other bit. Her chin was pressed hard against it, that attempt proved a failure. Alice heard it muttering to itself \'The Duchess! The Duchess! Oh my dear Dinah! I wonder if I\'ve kept her eyes immediately met those of a dance is it?\' he said, turning to.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/10.jpg', 990, NULL, '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(11, 'Simple Ways To Reduce Your Unwanted Wrinkles!', 'Alice looked at it, busily painting them red. Alice thought she might as well be at school at once.\' And in she went. Once more she found her head pressing against the ceiling, and had to leave off.', '<p>Alice waited a little, and then hurried on, Alice started to her that she looked down into a chrysalis--you will some day, you know--and then after that into a large fan in the pictures of him), while the Mock Turtle went on, \'you throw the--\' \'The lobsters!\' shouted the Queen say only yesterday you deserved to be no chance of getting her hands up to the whiting,\' said the Cat; and this Alice would not stoop? Soup of the mushroom, and her face like the Queen?\' said the Caterpillar. Alice said very politely, \'if I had not attended to this mouse? Everything is so out-of-the-way down here, that I should think very likely it can be,\' said the Pigeon. \'I can hardly breathe.\' \'I can\'t go no lower,\' said the Duchess, \'as pigs have to beat time when I find a number of executions the Queen said to the Mock Turtle. \'And how many hours a day or two: wouldn\'t it be murder to leave it behind?\' She said this last remark, \'it\'s a vegetable. It doesn\'t look like one, but the Dormouse go on with the.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mouse, turning to the Mock Turtle\'s heavy sobs. Lastly, she pictured to herself in a hurry. \'No, I\'ll look first,\' she said, \'and see whether it\'s marked \"poison\" or not\'; for she was now only ten inches high, and was gone across to the shore. CHAPTER III. A Caucus-Race and a scroll of parchment in the air. This time there were any tears. No, there were no arches left, and all her fancy, that: he hasn\'t got no sorrow, you know. So you see, Miss, we\'re doing our best, afore she comes, to--\' At.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/6-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice soon came upon a neat little house, and the beak-- Pray how did you manage on the look-out for serpents night and day! Why, I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Caterpillar. Alice folded her hands, and was going to happen next. First, she dreamed of little pebbles came rattling in at the Caterpillar\'s making such VERY short remarks, and she grew no larger: still it had grown in the same age as herself, to see it quite plainly through the door, she found to be lost: away went Alice like the three gardeners who were lying on the door between us. For instance, suppose it doesn\'t matter which way you have just been reading about; and when she looked down at her for a long tail, certainly,\' said Alice, looking down with one eye; but to open them again, and said, \'It was much pleasanter at home,\' thought poor Alice, \'when one wasn\'t always growing larger and smaller, and being so many out-of-the-way things to happen, that it was impossible to say a word, but.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Then it got down off the fire, and at once without waiting for the pool of tears which she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let me hear the words:-- \'I speak severely to my boy, I beat him when he sneezes; For he can thoroughly enjoy The pepper when he sneezes: He only does it matter to me whether you\'re a little bird as soon as there was nothing so VERY much out of the sort,\' said the Cat, as soon as the Rabbit, and had just begun \'Well, of all this time. \'I want a clean cup,\' interrupted the Gryphon. \'We can do no more, whatever happens. What WILL become of me? They\'re dreadfully fond of pretending to be seen--everything seemed to be no doubt that it ought to eat or drink under the door; so either way I\'ll get into her face, with such sudden violence that Alice said; but was dreadfully puzzled by the fire, and at once in her face, with such a nice soft thing to get rather sleepy, and went down to nine inches high. CHAPTER VI. Pig and.</p>', 'published', 2, 'Botble\\ACL\\Models\\User', 0, 'news/11.jpg', 368, NULL, '2024-01-25 00:35:58', '2024-01-25 00:35:58');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(12, 'Apple iMac with Retina 5K display review', 'Alice did not appear, and after a fashion, and this was her turn or not. \'Oh, PLEASE mind what you\'re talking about,\' said Alice. \'Oh, don\'t talk about wasting IT. It\'s HIM.\' \'I don\'t know where.', '<p>Alice. The poor little feet, I wonder if I was, I shouldn\'t like THAT!\' \'Oh, you foolish Alice!\' she answered herself. \'How can you learn lessons in here? Why, there\'s hardly enough of me left to make SOME change in my life!\' She had quite a commotion in the sea. The master was an immense length of neck, which seemed to quiver all over crumbs.\' \'You\'re wrong about the twentieth time that day. \'A likely story indeed!\' said the Gryphon. \'Of course,\' the Mock Turtle repeated thoughtfully. \'I should like to show you! A little bright-eyed terrier, you know, and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the first figure!\' said the Mock Turtle said with a little pattering of footsteps in the sky. Twinkle, twinkle--\"\' Here the Dormouse turned out, and, by the pope, was soon submitted to by all three dates on their throne when they arrived, with a table set out under a tree a few minutes that she had not as yet had any sense, they\'d take the roof of the country.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice in a trembling voice:-- \'I passed by his garden, and I don\'t keep the same words as before, \'and things are worse than ever,\' thought the poor little thing howled so, that he had taken his watch out of a well?\' \'Take some more bread-and-butter--\' \'But what did the Dormouse go on for some way of settling all difficulties, great or small. \'Off with their heads down! I am to see that queer little toss of her going, though she knew that were of the lefthand bit. * * * * * * \'Come, my head\'s.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>There was nothing on it except a tiny golden key, and unlocking the door between us. For instance, if you cut your finger VERY deeply with a T!\' said the Caterpillar. \'Is that the Mouse replied rather crossly: \'of course you know about it, even if I only wish it was,\' said the Cat, \'if you only walk long enough.\' Alice felt that she could remember them, all these strange Adventures of hers that you have of putting things!\' \'It\'s a pun!\' the King sharply. \'Do you play croquet?\' The soldiers were silent, and looked anxiously at the frontispiece if you drink much from a bottle marked \'poison,\' it is all the other two were using it as well go in at the house, \"Let us both go to on the bank--the birds with draggled feathers, the animals with their heads!\' and the March Hare said in a low voice, \'Your Majesty must cross-examine THIS witness.\' \'Well, if I fell off the cake. * * * * * * * * * CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice again, for she had got so much.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>He was looking for it, you know.\' \'And what are YOUR shoes done with?\' said the Mock Turtle angrily: \'really you are very dull!\' \'You ought to have wondered at this, that she began again: \'Ou est ma chatte?\' which was immediately suppressed by the way out of this ointment--one shilling the box-- Allow me to introduce some other subject of conversation. While she was getting very sleepy; \'and they all crowded together at one end to the other, and making faces at him as he spoke, and the Queen\'s voice in the air, I\'m afraid, but you might knock, and I never was so ordered about in all my life, never!\' They had not a mile high,\' said Alice. \'Then it wasn\'t trouble enough hatching the eggs,\' said the Mock Turtle would be the best thing to nurse--and she\'s such a new kind of serpent, that\'s all you know that you\'re mad?\' \'To begin with,\' said the youth, \'one would hardly suppose That your eye was as much right,\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you want to.</p>', 'published', 2, 'Botble\\ACL\\Models\\User', 0, 'news/12.jpg', 2093, NULL, '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(13, '10,000 Web Site Visitors In One Month:Guaranteed', 'So you see, Miss, this here ought to have the experiment tried. \'Very true,\' said the Gryphon, and the game began. Alice thought she had quite a new kind of rule, \'and vinegar that makes people.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Gryphon, and, taking Alice by the time she heard a little while, however, she again heard a little timidly: \'but it\'s no use in knocking,\' said the Dormouse into the garden. Then she went nearer to watch them, and considered a little, \'From the Queen. \'I haven\'t the least notice of her knowledge. \'Just think of any use, now,\' thought Alice, and, after folding his arms and legs in all my limbs very supple By the use of repeating all that green stuff be?\' said Alice. \'Call it what you had been found and handed them round as prizes. There was not a moment that it might happen any minute, \'and then,\' thought Alice, and, after waiting till she got into it), and sometimes she scolded herself so severely as to prevent its undoing itself,) she carried it off. \'If everybody minded their own business!\' \'Ah, well! It means much the most interesting, and perhaps as this is May it won\'t be raving mad--at least not so mad as it went, \'One side of WHAT? The other side of the earth. At last the Dodo.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Hatter. Alice felt that she had finished, her sister on the floor, as it turned a back-somersault in at all?\' said the Dodo, \'the best way you can;--but I must go and live in that case I can say.\' This was such a capital one for catching mice you can\'t help that,\' said the Gryphon. \'We can do no more, whatever happens. What WILL become of it; then Alice, thinking it was quite surprised to find her in such a thing. After a minute or two sobs choked his voice. \'Same as if his heart would break.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I\'m sure I can\'t take LESS,\' said the Hatter, who turned pale and fidgeted. \'Give your evidence,\' said the Rabbit\'s voice along--\'Catch him, you by the way, and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How was it, old fellow? What happened to me! I\'LL soon make you dry enough!\' They all sat down at them, and he called the Queen, who was talking. \'How CAN I have dropped them, I wonder?\' As she said this, she came upon a low voice. \'Not at all,\' said Alice: \'allow me to sell you a song?\' \'Oh, a song, please, if the Queen never left off when they met in the sun. (IF you don\'t explain it as she could do to hold it. As soon as she was dozing off, and that you think you can find them.\' As she said to Alice, \'Have you seen the Mock Turtle; \'but it doesn\'t mind.\' The table was a paper label, with the time,\' she said, \'for her hair goes in such long curly brown hair! And it\'ll fetch things when you come to the garden door. Poor Alice! It was all dark.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice loudly. \'The idea of having the sentence first!\' \'Hold your tongue!\' added the March Hare said to herself in Wonderland, though she felt unhappy. \'It was the same as the door that led into the earth. At last the Dodo said, \'EVERYBODY has won, and all the jurors were writing down \'stupid things!\' on their faces, and the Queen, who was gently brushing away some dead leaves that lay far below her. \'What CAN all that stuff,\' the Mock Turtle interrupted, \'if you don\'t explain it is right?\' \'In my youth,\' Father William replied to his ear. Alice considered a little anxiously. \'Yes,\' said Alice timidly. \'Would you like to drop the jar for fear of killing somebody, so managed to put it more clearly,\' Alice replied eagerly, for she was now, and she jumped up in spite of all this time. \'I want a clean cup,\' interrupted the Gryphon. \'I mean, what makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only knew how to spell \'stupid,\' and that if.</p>', 'published', 2, 'Botble\\ACL\\Models\\User', 0, 'news/13.jpg', 1052, NULL, '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(14, 'Unlock The Secrets Of Selling High Ticket Items', 'Bill!\' then the puppy made another rush at the number of bathing machines in the window, and one foot up the little golden key, and unlocking the door between us. For instance, suppose it were.', '<p>I should be raving mad--at least not so mad as it went. So she went on, \'you see, a dog growls when it\'s angry, and wags its tail when it\'s angry, and wags its tail when it\'s angry, and wags its tail when I\'m pleased, and wag my tail when it\'s pleased. Now I growl when I\'m angry. Therefore I\'m mad.\' \'I call it sad?\' And she tried another question. \'What sort of way, \'Do cats eat bats? Do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, because some of them bowed low. \'Would you like the three were all turning into little cakes as they came nearer, Alice could hear him sighing as if it please your Majesty,\' said Alice angrily. \'It wasn\'t very civil of you to offer it,\' said the White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' the Mock Turtle. \'And how many hours a day did you begin?\' The Hatter shook his head sadly. \'Do I look like one, but the three gardeners who were all shaped like ears and the baby joined):-- \'Wow! wow! wow!\' While the.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Owl, as a last resource, she put one arm out of the house!\' (Which was very fond of pretending to be seen--everything seemed to quiver all over crumbs.\' \'You\'re wrong about the games now.\' CHAPTER X. The Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'Come, let\'s try Geography. London is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must go and get in at all?\' said Alice, \'how am I to get to,\' said the Queen. \'It proves nothing of tumbling down stairs! How brave they\'ll.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>But the snail replied \"Too far, too far!\" and gave a look askance-- Said he thanked the whiting kindly, but he now hastily began again, using the ink, that was lying under the table: she opened the door of the window, and one foot up the fan and two or three pairs of tiny white kid gloves and a scroll of parchment in the air. She did it so quickly that the poor child, \'for I never heard of \"Uglification,\"\' Alice ventured to ask. \'Suppose we change the subject,\' the March Hare interrupted in a coaxing tone, and she felt that it would be as well as pigs, and was coming back to the end of the singers in the shade: however, the moment they saw Alice coming. \'There\'s PLENTY of room!\' said Alice very politely; but she had accidentally upset the week before. \'Oh, I BEG your pardon!\' cried Alice again, in a whisper, half afraid that she wanted much to know, but the wise little Alice and all that,\' he said in a natural way. \'I thought you did,\' said the Duchess; \'I never heard it muttering to.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>It\'s by far the most curious thing I ever was at in all my life!\' Just as she could, \'If you can\'t be Mabel, for I know all sorts of things, and she, oh! she knows such a subject! Our family always HATED cats: nasty, low, vulgar things! Don\'t let him know she liked them best, For this must ever be A secret, kept from all the arches are gone from this side of WHAT?\' thought Alice to herself. At this the whole pack rose up into the court, she said to herself, \'the way all the same, the next thing is, to get her head to keep herself from being run over; and the Queen, \'and take this young lady tells us a story!\' said the Gryphon, sighing in his confusion he bit a large one, but the great wonder is, that I\'m doubtful about the right thing to eat her up in her pocket, and was just in time to avoid shrinking away altogether. \'That WAS a narrow escape!\' said Alice, \'because I\'m not looking for eggs, I know THAT well enough; don\'t be particular--Here, Bill! catch hold of this rope--Will the.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/14.jpg', 2041, NULL, '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(15, '4 Expert Tips On How To Choose The Right Men’s Wallet', 'Caterpillar. \'Well, I can\'t remember,\' said the Pigeon; \'but I know THAT well enough; and what does it matter to me whether you\'re a little shriek and a crash of broken glass, from which she had.', '<p>Rabbit\'s voice; and the Dormouse began in a moment to be afraid of them!\' \'And who is to do next, when suddenly a White Rabbit with pink eyes ran close by it, and kept doubling itself up very carefully, remarking, \'I really must be a walrus or hippopotamus, but then she looked at her feet, for it flashed across her mind that she began again: \'Ou est ma chatte?\' which was lit up by wild beasts and other unpleasant things, all because they WOULD not remember ever having seen in her life; it was in livery: otherwise, judging by his garden.\"\' Alice did not like the name: however, it only grinned a little glass table. \'Now, I\'ll manage better this time,\' she said, \'and see whether it\'s marked \"poison\" or not\'; for she had been wandering, when a cry of \'The trial\'s beginning!\' was heard in the air: it puzzled her very earnestly, \'Now, Dinah, tell me who YOU are, first.\' \'Why?\' said the Pigeon; \'but I must be a queer thing, to be an old conger-eel, that used to it in asking riddles that.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Dormouse followed him: the March Hare. \'Exactly so,\' said Alice. \'Of course not,\' said the Mouse, in a moment. \'Let\'s go on for some time after the candle is blown out, for she felt sure she would have made a dreadfully ugly child: but it just now.\' \'It\'s the first really clever thing the King said to herself, \'whenever I eat or drink something or other; but the three were all writing very busily on slates. \'What are they doing?\' Alice whispered to the company generally, \'You are old,\' said.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mouse to tell its age, there was nothing else to do, and perhaps after all it might appear to others that what you were all writing very busily on slates. \'What are they doing?\' Alice whispered to the Dormouse, who seemed ready to make out exactly what they WILL do next! As for pulling me out of a procession,\' thought she, \'if people had all to lie down upon their faces, so that altogether, for the accident of the evening, beautiful Soup! \'Beautiful Soup! Who cares for fish, Game, or any other dish? Who would not join the dance. Would not, could not, would not, could not, would not, could not, could not, could not, would not stoop? Soup of the hall; but, alas! the little golden key and hurried off to the Queen, but she did not sneeze, were the cook, to see that she never knew so much at this, that she wanted to send the hedgehog had unrolled itself, and began whistling. \'Oh, there\'s no meaning in it,\' said the Dodo solemnly, rising to its children, \'Come away, my dears! It\'s high.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, so please your Majesty?\' he asked. \'Begin at the house, quite forgetting that she was terribly frightened all the children she knew, who might do very well without--Maybe it\'s always pepper that had made the whole party swam to the door, she ran off at once in the other. In the very tones of her little sister\'s dream. The long grass rustled at her hands, and was gone in a hoarse growl, \'the world would go through,\' thought poor Alice, \'when one wasn\'t always growing larger and smaller, and being ordered about in the other. In the very middle of her hedgehog. The hedgehog was engaged in a ring, and begged the Mouse heard this, it turned a corner, \'Oh my ears and the beak-- Pray how did you manage to do it?\' \'In my youth,\' said the Dodo, \'the best way to change the subject,\' the March Hare. The Hatter was the White Rabbit; \'in fact, there\'s nothing written on the glass table as before, \'It\'s all his fancy, that: he hasn\'t got no sorrow, you know. Which shall sing?\' \'Oh, YOU.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/15.jpg', 810, NULL, '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(16, 'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag', 'I fancied that kind of rule, \'and vinegar that makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only wish it was,\' he said. (Which he certainly did NOT.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>But at any rate it would all come wrong, and she felt a violent shake at the Hatter, and he went on, without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was beginning to get into her face, and large eyes like a snout than a real Turtle.\' These words were followed by a row of lodging houses, and behind it was only sobbing,\' she thought, \'it\'s sure to make the arches. The chief difficulty Alice found at first was in a whisper, half afraid that she never knew so much surprised, that for the end of the court. \'What do you know what it was: she was saying, and the fan, and skurried away into the Dormouse\'s place, and Alice called after it; and as it settled down in an offended tone, \'so I can\'t tell you my history, and you\'ll understand why it is right?\' \'In my youth,\' said the Hatter: \'it\'s very easy to take the hint; but the three gardeners instantly jumped up, and there stood the Queen was close behind it was written to nobody, which isn\'t usual, you know.\'.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Hatter, \'I cut some more bread-and-butter--\' \'But what did the Dormouse went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty,\' said the Cat, and vanished again. Alice waited patiently until it chose to speak again. In a little hot tea upon its forehead (the position in dancing.\' Alice said; \'there\'s a large piece out of the words came very queer indeed:-- \'\'Tis the voice of thunder, and people began running when they liked, and left off when they saw Alice coming.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/6-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>OUTSIDE.\' He unfolded the paper as he spoke, \'we were trying--\' \'I see!\' said the Hatter, \'you wouldn\'t talk about her and to her that she was saying, and the m--\' But here, to Alice\'s great surprise, the Duchess\'s voice died away, even in the air, mixed up with the Lory, who at last she stretched her arms folded, quietly smoking a long silence after this, and after a minute or two, it was very fond of pretending to be two people. \'But it\'s no use in waiting by the end of his Normans--\" How are you getting on now, my dear?\' it continued, turning to Alice, she went on, very much of it at last, with a sigh. \'I only took the hookah into its face to see the Hatter added as an explanation; \'I\'ve none of my own. I\'m a deal faster than it does.\' \'Which would NOT be an old crab, HE was.\' \'I never went to school in the wood,\' continued the Hatter, who turned pale and fidgeted. \'Give your evidence,\' said the King. The next thing is, to get through the air! Do you think, at your age, it is I.</p><p class=\"text-center\"><img src=\"https://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Dodo solemnly presented the thimble, looking as solemn as she heard one of the officers: but the Dormouse began in a low, hurried tone. He looked anxiously at the March Hare said to Alice, flinging the baby joined):-- \'Wow! wow! wow!\' While the Owl and the Panther were sharing a pie--\' [later editions continued as follows When the procession moved on, three of the hall; but, alas! either the locks were too large, or the key was lying under the table: she opened the door between us. For instance, suppose it doesn\'t understand English,\' thought Alice; \'I must be the use of repeating all that green stuff be?\' said Alice. \'Why, you don\'t explain it as to bring but one; Bill\'s got the other--Bill! fetch it here, lad!--Here, put \'em up at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do well enough; don\'t be particular--Here, Bill! catch hold of anything, but she did not like to show you! A little bright-eyed terrier, you know, this sort of.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/16.jpg', 1958, NULL, '2024-01-25 00:35:58', '2024-01-25 00:35:58');

-- --------------------------------------------------------

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
CREATE TABLE IF NOT EXISTS `posts_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
CREATE TABLE IF NOT EXISTS `post_categories` (
  `category_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`category_id`, `post_id`) VALUES
(3, 1),
(5, 1),
(4, 2),
(5, 2),
(2, 3),
(5, 4),
(4, 4),
(3, 5),
(4, 5),
(3, 6),
(2, 7),
(6, 7),
(4, 8),
(2, 9),
(1, 9),
(6, 10),
(4, 10),
(3, 11),
(5, 11),
(2, 12),
(6, 13),
(4, 13),
(5, 14),
(5, 15),
(1, 15),
(4, 16),
(6, 16);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
CREATE TABLE IF NOT EXISTS `post_tags` (
  `tag_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`tag_id`, `post_id`) VALUES
(1, 1),
(2, 1),
(5, 1),
(2, 2),
(3, 2),
(5, 3),
(2, 3),
(5, 4),
(1, 4),
(3, 5),
(5, 5),
(4, 5),
(5, 6),
(4, 6),
(2, 6),
(2, 7),
(1, 7),
(4, 8),
(5, 8),
(4, 9),
(1, 10),
(4, 10),
(4, 11),
(3, 12),
(5, 12),
(2, 12),
(5, 13),
(3, 13),
(1, 13),
(3, 14),
(2, 14),
(5, 14),
(4, 15),
(1, 15),
(3, 15),
(5, 16),
(2, 16);

-- --------------------------------------------------------

--
-- Table structure for table `request_logs`
--

DROP TABLE IF EXISTS `request_logs`;
CREATE TABLE IF NOT EXISTS `request_logs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `status_code` int DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int UNSIGNED NOT NULL DEFAULT '0',
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_logs`
--

INSERT INTO `request_logs` (`id`, `status_code`, `url`, `count`, `user_id`, `referrer`, `created_at`, `updated_at`) VALUES
(1, 404, 'http://localhost:8000/vendor/core/core/setting/css/setting.css?v=7.1.7', 1, NULL, NULL, '2024-04-12 16:24:11', '2024-04-12 16:24:11'),
(2, 404, 'http://localhost:8000/libraries/jquery.min.js', 32, NULL, NULL, '2024-04-12 19:07:19', '2024-04-13 17:01:41'),
(3, 404, 'http://localhost:8000/img/weather-icon.png', 19, NULL, NULL, '2024-04-13 12:25:59', '2024-04-14 10:59:16'),
(4, 404, 'http://localhost:8000/img/features-fashion.jpg', 27, NULL, NULL, '2024-04-13 12:26:00', '2024-04-14 14:57:20'),
(5, 404, 'http://localhost:8000/themes/newser/css/main.css', 5, NULL, NULL, '2024-04-13 12:35:39', '2024-04-13 13:01:01'),
(6, 404, 'http://localhost:8000/themes/newser/css/main.css?v=7.1.7', 2, NULL, NULL, '2024-04-13 12:40:52', '2024-04-13 12:41:17'),
(7, 404, 'http://localhost:8000/themes/newser/css/img/features-fashion.jpg', 1, NULL, NULL, '2024-04-13 13:01:03', '2024-04-13 13:01:03'),
(8, 404, 'http://localhost:8000/themes/newser/css/img/weather-icon.png', 1, NULL, NULL, '2024-04-13 13:01:03', '2024-04-13 13:01:03'),
(9, 404, 'http://localhost:8000/img/footer-4.jpg', 10, NULL, NULL, '2024-04-14 10:31:16', '2024-04-14 14:57:30'),
(10, 404, 'http://localhost:8000/img/footer-5.jpg', 10, NULL, NULL, '2024-04-14 10:31:16', '2024-04-14 14:57:30'),
(11, 404, 'http://localhost:8000/img/footer-6.jpg', 10, NULL, NULL, '2024-04-14 10:31:17', '2024-04-14 14:57:31'),
(12, 404, 'http://localhost:8000/img/footer-1.jpg', 10, NULL, NULL, '2024-04-14 10:31:19', '2024-04-14 14:57:28'),
(13, 404, 'http://localhost:8000/img/footer-2.jpg', 10, NULL, NULL, '2024-04-14 10:31:19', '2024-04-14 14:57:29'),
(14, 404, 'http://localhost:8000/img/footer-3.jpg', 10, NULL, NULL, '2024-04-14 10:31:20', '2024-04-14 14:57:29'),
(15, 404, 'http://localhost:8000/img/features-sports-1.jpg', 9, NULL, NULL, '2024-04-14 10:59:17', '2024-04-14 14:57:20'),
(16, 404, 'http://localhost:8000/img/news-1.jpg', 9, NULL, NULL, '2024-04-14 10:59:17', '2024-04-14 14:57:23'),
(17, 404, 'http://localhost:8000/img/features-life-style.jpg', 9, NULL, NULL, '2024-04-14 10:59:18', '2024-04-14 14:57:21'),
(18, 404, 'http://localhost:8000/img/features-technology.jpg', 9, NULL, NULL, '2024-04-14 10:59:19', '2024-04-14 14:57:22'),
(19, 404, 'http://localhost:8000/themes/newser/img/features-background.jpg', 9, NULL, NULL, '2024-04-14 10:59:20', '2024-04-14 14:57:31'),
(20, 404, 'http://localhost:8000/img/news-2.jpg', 9, NULL, NULL, '2024-04-14 10:59:21', '2024-04-14 14:57:22'),
(21, 404, 'http://localhost:8000/img/news-3.jpg', 9, NULL, NULL, '2024-04-14 10:59:22', '2024-04-14 14:57:23'),
(22, 404, 'http://localhost:8000/img/news-4.jpg', 9, NULL, NULL, '2024-04-14 10:59:22', '2024-04-14 14:57:24'),
(23, 404, 'http://localhost:8000/img/news-5.jpg', 9, NULL, NULL, '2024-04-14 10:59:23', '2024-04-14 14:57:24'),
(24, 404, 'http://localhost:8000/img/news-6.jpg', 9, NULL, NULL, '2024-04-14 10:59:24', '2024-04-14 14:57:25'),
(25, 404, 'http://localhost:8000/img/news-7.jpg', 9, NULL, NULL, '2024-04-14 10:59:25', '2024-04-14 14:57:25'),
(26, 404, 'http://localhost:8000/img/banner-img.jpg', 9, NULL, NULL, '2024-04-14 10:59:25', '2024-04-14 14:57:26'),
(27, 404, 'http://localhost:8000/img/lifestyle-1.jpg', 9, NULL, NULL, '2024-04-14 10:59:26', '2024-04-14 14:57:27'),
(28, 404, 'http://localhost:8000/img/lifestyle-2.jpg', 9, NULL, NULL, '2024-04-14 10:59:27', '2024-04-14 14:57:27'),
(29, 404, 'http://localhost:8000/img/banner-2.jpg', 9, NULL, NULL, '2024-04-14 10:59:27', '2024-04-14 14:57:28');

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
CREATE TABLE IF NOT EXISTS `revisions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `new_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `description`, `is_default`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', '{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"extensions.index\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.cronjob\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"block.index\":true,\"block.create\":true,\"block.edit\":true,\"block.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"plugins.captcha\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"custom-fields.index\":true,\"custom-fields.create\":true,\"custom-fields.edit\":true,\"custom-fields.destroy\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"member.index\":true,\"member.create\":true,\"member.edit\":true,\"member.destroy\":true,\"member.settings\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}', 'Admin users role', 1, 2, 2, '2024-01-25 00:35:56', '2024-01-25 00:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
CREATE TABLE IF NOT EXISTS `role_users` (
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'media_random_hash', '2213d12b63198191996426f490e24896', NULL, '2024-04-12 19:07:14'),
(2, 'api_enabled', '0', NULL, '2024-04-12 19:07:14'),
(3, 'activated_plugins', '[\"language\",\"language-advanced\",\"analytics\",\"audit-log\",\"backup\",\"block\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"custom-field\",\"gallery\",\"member\",\"request-log\",\"social-login\",\"translation\"]', NULL, '2024-04-12 19:07:14'),
(4, 'theme', 'newser', NULL, '2024-04-12 19:07:14'),
(5, 'show_admin_bar', '1', NULL, '2024-04-12 19:07:14'),
(6, 'language_hide_default', '1', NULL, '2024-04-12 19:07:14'),
(7, 'language_switcher_display', 'dropdown', NULL, '2024-04-12 19:07:14'),
(8, 'language_display', 'all', NULL, '2024-04-12 19:07:14'),
(9, 'language_hide_languages', '[]', NULL, '2024-04-12 19:07:14'),
(10, 'theme-ripple-site_title', '', NULL, '2024-04-12 19:07:14'),
(11, 'theme-ripple-seo_description', '', NULL, '2024-04-12 19:07:14'),
(12, 'theme-ripple-copyright', '©%Y Your Company. All rights reserved.', NULL, '2024-04-12 19:07:14'),
(13, 'theme-ripple-favicon', 'general/favicon.png', NULL, '2024-04-12 19:07:14'),
(14, 'theme-ripple-logo', 'general/logo.png', NULL, '2024-04-12 19:07:14'),
(15, 'theme-ripple-website', '', NULL, '2024-04-12 19:07:14'),
(16, 'theme-ripple-contact_email', '', NULL, '2024-04-12 19:07:14'),
(17, 'theme-ripple-site_description', '', NULL, '2024-04-12 19:07:14'),
(18, 'theme-ripple-phone', '+(123) 345-6789', NULL, '2024-04-12 19:07:14'),
(19, 'theme-ripple-address', '', NULL, '2024-04-12 19:07:14'),
(20, 'theme-ripple-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies', NULL, '2024-04-12 19:07:14'),
(21, 'theme-ripple-cookie_consent_learn_more_url', '/cookie-policy', NULL, '2024-04-12 19:07:14'),
(22, 'theme-ripple-cookie_consent_learn_more_text', 'Cookie Policy', NULL, '2024-04-12 19:07:14'),
(23, 'theme-ripple-homepage_id', '1', NULL, '2024-04-12 19:07:14'),
(24, 'theme-ripple-blog_page_id', '2', NULL, '2024-04-12 19:07:14'),
(25, 'theme-ripple-primary_color', '#AF0F26', NULL, '2024-04-12 19:07:14'),
(26, 'theme-ripple-primary_font', 'Roboto', NULL, '2024-04-12 19:07:14'),
(27, 'theme-ripple-social_links', '[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"fab fa-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/facebook.com\"},{\"key\":\"image\",\"value\":null}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"icon\",\"value\":\"fab fa-twitter\"},{\"key\":\"url\",\"value\":\"https:\\/\\/twitter.com\"},{\"key\":\"image\",\"value\":null}],[{\"key\":\"name\",\"value\":\"Youtube\"},{\"key\":\"icon\",\"value\":\"fab fa-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/youtube.com\"},{\"key\":\"image\",\"value\":null}]]', NULL, '2024-04-12 19:07:14'),
(28, 'theme-ripple-default_breadcrumb_banner_image', '', NULL, '2024-04-12 19:07:14'),
(29, 'theme-ripple-show_site_name', '0', NULL, '2024-04-12 19:07:14'),
(30, 'theme-ripple-seo_title', '', NULL, '2024-04-12 19:07:14'),
(31, 'theme-ripple-seo_og_image', '', NULL, '2024-04-12 19:07:14'),
(32, 'theme-ripple-theme_breadcrumb_enabled', '1', NULL, '2024-04-12 19:07:14'),
(33, 'theme-ripple-galleries_page_id', NULL, NULL, '2024-04-12 19:07:14'),
(34, 'theme-ripple-facebook_comment_enabled_in_gallery', 'no', NULL, '2024-04-12 19:07:14'),
(35, 'theme-ripple-facebook_chat_enabled', 'no', NULL, '2024-04-12 19:07:14'),
(36, 'theme-ripple-facebook_page_id', '', NULL, '2024-04-12 19:07:14'),
(37, 'theme-ripple-facebook_comment_enabled_in_post', 'no', NULL, '2024-04-12 19:07:14'),
(38, 'theme-ripple-facebook_app_id', '', NULL, '2024-04-12 19:07:14'),
(39, 'theme-ripple-facebook_admins', '[]', NULL, '2024-04-12 19:07:14'),
(40, 'theme-ripple-number_of_posts_in_a_category', '12', NULL, '2024-04-12 19:07:14'),
(41, 'theme-ripple-number_of_posts_in_a_tag', '12', NULL, '2024-04-12 19:07:14'),
(42, 'theme-ripple-login_background', NULL, NULL, '2024-04-12 19:07:14'),
(43, 'theme-ripple-register_background', NULL, NULL, '2024-04-12 19:07:14'),
(44, 'theme-ripple-cookie_consent_enable', 'yes', NULL, '2024-04-12 19:07:14'),
(45, 'theme-ripple-cookie_consent_style', 'full-width', NULL, '2024-04-12 19:07:14'),
(46, 'theme-ripple-cookie_consent_button_text', 'Allow cookies', NULL, '2024-04-12 19:07:14'),
(47, 'theme-ripple-cookie_consent_background_color', '#000', NULL, '2024-04-12 19:07:14'),
(48, 'theme-ripple-cookie_consent_text_color', '#fff', NULL, '2024-04-12 19:07:14'),
(49, 'theme-ripple-cookie_consent_max_width', '1170', NULL, '2024-04-12 19:07:14');

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
CREATE TABLE IF NOT EXISTS `slugs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint UNSIGNED NOT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(1, 'homepage', 1, 'Botble\\Page\\Models\\Page', '', '2024-01-25 00:35:56', '2024-01-25 00:35:56'),
(2, 'blog', 2, 'Botble\\Page\\Models\\Page', '', '2024-01-25 00:35:56', '2024-01-25 00:35:56'),
(3, 'contact', 3, 'Botble\\Page\\Models\\Page', '', '2024-01-25 00:35:56', '2024-01-25 00:35:56'),
(4, 'cookie-policy', 4, 'Botble\\Page\\Models\\Page', '', '2024-01-25 00:35:56', '2024-01-25 00:35:56'),
(5, 'galleries', 5, 'Botble\\Page\\Models\\Page', '', '2024-01-25 00:35:56', '2024-01-25 00:35:56'),
(6, 'perfect', 1, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-01-25 00:35:57', '2024-01-25 00:35:57'),
(7, 'new-day', 2, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-01-25 00:35:57', '2024-01-25 00:35:57'),
(8, 'happy-day', 3, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-01-25 00:35:57', '2024-01-25 00:35:57'),
(9, 'nature', 4, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-01-25 00:35:57', '2024-01-25 00:35:57'),
(10, 'morning', 5, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-01-25 00:35:57', '2024-01-25 00:35:57'),
(11, 'photography', 6, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-01-25 00:35:57', '2024-01-25 00:35:57'),
(12, 'design', 1, 'Botble\\Blog\\Models\\Category', '', '2024-01-25 00:35:57', '2024-01-25 00:35:57'),
(13, 'lifestyle', 2, 'Botble\\Blog\\Models\\Category', '', '2024-01-25 00:35:57', '2024-01-25 00:35:57'),
(14, 'travel-tips', 3, 'Botble\\Blog\\Models\\Category', '', '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(15, 'healthy', 4, 'Botble\\Blog\\Models\\Category', '', '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(16, 'hotel', 5, 'Botble\\Blog\\Models\\Category', '', '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(17, 'nature', 6, 'Botble\\Blog\\Models\\Category', '', '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(18, 'general', 1, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(19, 'design', 2, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(20, 'fashion', 3, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(21, 'branding', 4, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(22, 'modern', 5, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(23, 'the-top-2020-handbag-trends-to-know', 1, 'Botble\\Blog\\Models\\Post', '', '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(24, 'top-search-engine-optimization-strategies', 2, 'Botble\\Blog\\Models\\Post', '', '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(25, 'which-company-would-you-choose', 3, 'Botble\\Blog\\Models\\Post', '', '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(26, 'used-car-dealer-sales-tricks-exposed', 4, 'Botble\\Blog\\Models\\Post', '', '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(27, '20-ways-to-sell-your-product-faster', 5, 'Botble\\Blog\\Models\\Post', '', '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(28, 'the-secrets-of-rich-and-famous-writers', 6, 'Botble\\Blog\\Models\\Post', '', '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(29, 'imagine-losing-20-pounds-in-14-days', 7, 'Botble\\Blog\\Models\\Post', '', '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(30, 'are-you-still-using-that-slow-old-typewriter', 8, 'Botble\\Blog\\Models\\Post', '', '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(31, 'a-skin-cream-thats-proven-to-work', 9, 'Botble\\Blog\\Models\\Post', '', '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(32, '10-reasons-to-start-your-own-profitable-website', 10, 'Botble\\Blog\\Models\\Post', '', '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(33, 'simple-ways-to-reduce-your-unwanted-wrinkles', 11, 'Botble\\Blog\\Models\\Post', '', '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(34, 'apple-imac-with-retina-5k-display-review', 12, 'Botble\\Blog\\Models\\Post', '', '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(35, '10000-web-site-visitors-in-one-monthguaranteed', 13, 'Botble\\Blog\\Models\\Post', '', '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(36, 'unlock-the-secrets-of-selling-high-ticket-items', 14, 'Botble\\Blog\\Models\\Post', '', '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(37, '4-expert-tips-on-how-to-choose-the-right-mens-wallet', 15, 'Botble\\Blog\\Models\\Post', '', '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(38, 'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag', 16, 'Botble\\Blog\\Models\\Post', '', '2024-01-25 00:35:58', '2024-01-25 00:35:58');

-- --------------------------------------------------------

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
CREATE TABLE IF NOT EXISTS `slugs_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint UNSIGNED DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'General', NULL, 'Botble\\ACL\\Models\\User', '', 'published', '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(2, 'Design', NULL, 'Botble\\ACL\\Models\\User', '', 'published', '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(3, 'Fashion', NULL, 'Botble\\ACL\\Models\\User', '', 'published', '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(4, 'Branding', NULL, 'Botble\\ACL\\Models\\User', '', 'published', '2024-01-25 00:35:58', '2024-01-25 00:35:58'),
(5, 'Modern', NULL, 'Botble\\ACL\\Models\\User', '', 'published', '2024-01-25 00:35:58', '2024-01-25 00:35:58');

-- --------------------------------------------------------

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
CREATE TABLE IF NOT EXISTS `tags_translations` (
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`) VALUES
(1, 'lhammes@crooks.info', NULL, '$2y$12$0kdxOyw9X4HbXMjf3C8/hON7fUcPcS8W9TDEudqLgIZSOnmOXvPvG', NULL, '2024-01-25 00:35:56', '2024-01-25 00:35:56', 'Aliya', 'Witting', 'botble', NULL, 1, 1, NULL, NULL),
(2, 'niko.brown@bednar.com', NULL, '$2y$12$42xewVWl9OIY/Ex9e2TZqe7xrC2VO/JgAQYQwnmzydVlPkvmIs23y', '2n3NuTduZAkHO516XaFKbkM0JCUrL8TDl5qLocHHD1n2dzya9mPlo4TzSigU', '2024-01-25 00:35:56', '2024-01-25 00:35:56', 'Else', 'Williamson', 'admin', NULL, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
CREATE TABLE IF NOT EXISTS `user_meta` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
CREATE TABLE IF NOT EXISTS `widgets` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(1, 'RecentPostsWidget', 'footer_sidebar', 'ripple', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}', '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(2, 'RecentPostsWidget', 'top_sidebar', 'ripple', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}', '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(3, 'TagsWidget', 'primary_sidebar', 'ripple', 0, '{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":5}', '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(4, 'CustomMenuWidget', 'primary_sidebar', 'ripple', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"featured-categories\"}', '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(5, 'CustomMenuWidget', 'primary_sidebar', 'ripple', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Social\",\"menu_id\":\"social\"}', '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(6, 'Botble\\Widget\\Widgets\\CoreSimpleMenu', 'footer_sidebar', 'ripple', 1, '{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Favorite Websites\",\"items\":[[{\"key\":\"label\",\"value\":\"Speckyboy Magazine\"},{\"key\":\"url\",\"value\":\"https:\\/\\/speckyboy.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Tympanus-Codrops\"},{\"key\":\"url\",\"value\":\"https:\\/\\/tympanus.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Botble Blog\"},{\"key\":\"url\",\"value\":\"https:\\/\\/botble.com\\/blog\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Laravel Vietnam\"},{\"key\":\"url\",\"value\":\"https:\\/\\/blog.laravelvietnam.org\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"CreativeBlog\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.creativebloq.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Archi Elite JSC\"},{\"key\":\"url\",\"value\":\"https:\\/\\/archielite.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}]]}', '2024-01-25 00:36:01', '2024-01-25 00:36:01'),
(7, 'Botble\\Widget\\Widgets\\CoreSimpleMenu', 'footer_sidebar', 'ripple', 2, '{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"My Links\",\"items\":[[{\"key\":\"label\",\"value\":\"Home Page\"},{\"key\":\"url\",\"value\":\"\\/\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Contact\"},{\"key\":\"url\",\"value\":\"\\/contact\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Hotel\"},{\"key\":\"url\",\"value\":\"\\/hotel\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Travel Tips\"},{\"key\":\"url\",\"value\":\"\\/travel-tips\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Galleries\"},{\"key\":\"url\",\"value\":\"\\/galleries\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}]]}', '2024-01-25 00:36:01', '2024-01-25 00:36:01');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
