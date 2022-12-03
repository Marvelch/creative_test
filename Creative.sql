-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for creative
CREATE DATABASE IF NOT EXISTS `creative` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `creative`;

-- Dumping structure for table creative.candidates
CREATE TABLE IF NOT EXISTS `candidates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `education` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_skill` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path_resume` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table creative.candidates: ~3 rows (approximately)
/*!40000 ALTER TABLE `candidates` DISABLE KEYS */;
REPLACE INTO `candidates` (`id`, `name`, `education`, `birthday`, `experience`, `last_position`, `applied_position`, `top_skill`, `email`, `phone`, `path_resume`, `created_at`, `updated_at`) VALUES
	(1, 'Mr. Woodrow Hackett DDS', 'UGM', '1993-12-25', '5 Years', 'PHP', 'PHP', 'Test', 'murazik.conner@heathcote.net', '59674630954', 'public/638b7d7ae6649.pdf', '2022-12-02 04:53:10', '2022-12-03 16:46:50'),
	(9, 'Gratsia', 'UDKSW', '2000-03-03', '1 Years', 'Admin', 'Admin', 'Excel', 'Jilioada@gmail.com', '082217796123', 'public/638aff628e011.pdf', '2022-12-03 07:48:50', '2022-12-03 07:48:50'),
	(10, 'Tes', 'UGM', '1995-03-03', '5 Years', 'PHP', 'PHP', 'Test', 'mr.marvel.christevan@gmail.com', '082217797091', NULL, '2022-12-03 16:05:36', '2022-12-03 16:05:36'),
	(11, 'Prof. Reece Toy Jr.', 'UGM', '1995-03-03', '5 Years', 'PHP', 'PHP', 'Test', 'mr.marvel.christevan@gmail.com', '082217797091', NULL, '2022-12-03 16:06:21', '2022-12-03 16:06:21'),
	(12, 'Emmet McLaughlin', 'UGM', '1995-03-03', '5 Years', 'PHP', 'PHP', 'Test', 'mr.marvel.christevan@gmail.com', '082217797091', NULL, '2022-12-03 16:06:52', '2022-12-03 16:06:52'),
	(13, 'Mozelle Schumm', 'UGM', '1995-03-03', '5 Years', 'PHP', 'PHP', 'Test', 'mr.marvel.christevan@gmail.com', '082217797091', NULL, '2022-12-03 16:07:15', '2022-12-03 16:07:15'),
	(14, 'Mrs. Alia Kassulke DDS', 'UGM', '1995-03-03', '5 Years', 'PHP', 'PHP', 'Test', 'mr.marvel.christevan@gmail.com', '082217797091', 'public/638b75ea8ddba.jpg', '2022-12-03 16:14:34', '2022-12-03 16:14:34'),
	(15, 'Waino Stamm', 'UGM', '1995-03-03', '5 Years', 'PHP', 'PHP', 'Test', 'mr.marvel.christevan@gmail.com', '082217797091', 'public/638b76776b188.jpg', '2022-12-03 16:16:55', '2022-12-03 16:16:55'),
	(16, 'Sonya Kihn IV', 'UGM', '1995-03-03', '5 Years', 'PHP', 'PHP', 'Test', 'mr.marvel.christevan@gmail.com', '082217797091', 'public/638b76c90fb13.pdf', '2022-12-03 16:18:17', '2022-12-03 16:18:17'),
	(17, 'Dr. Laverne Lemke MD', 'UGM', '1971-05-01', '5 Years', 'PHP', 'PHP', 'Test', 'abdullah38@parisian.com', '323-370-8009', 'public/638b7802b0583.pdf', '2022-12-03 16:23:30', '2022-12-03 16:23:30'),
	(18, 'Hugh Schuppe', 'UGM', '1975-09-25', '5 Years', 'PHP', 'PHP', 'Test', 'vergie10@deckow.com', '308.632.0846', 'public/638b782a49a9c.pdf', '2022-12-03 16:24:10', '2022-12-03 16:24:10'),
	(19, 'Izabella Ritchie', 'UGM', '1985-04-07', '5 Years', 'PHP', 'PHP', 'Test', 'jaycee.beier@rau.org', '614.910.6158', 'public/638b79aab0c00.pdf', '2022-12-03 16:30:34', '2022-12-03 16:30:34'),
	(20, 'Ryan Langosh', 'UGM', '1994-10-08', '5 Years', 'PHP', 'PHP', 'Test', 'xkulas@hotmail.com', '551-439-2789', 'public/638b7af207561.pdf', '2022-12-03 16:36:02', '2022-12-03 16:36:02'),
	(21, 'Nicolas Tremblay', 'UGM', '1990-03-18', '5 Years', 'PHP', 'PHP', 'Test', 'devyn21@rippin.com', '30886725711', 'public/638b7d02e6512.pdf', '2022-12-03 16:44:50', '2022-12-03 16:44:50'),
	(22, 'Ewald Brown', 'UGM', '1980-07-26', '5 Years', 'PHP', 'PHP', 'Test', 'bogan.bell@yahoo.com', '59860290567', 'public/638b7d215ab4a.pdf', '2022-12-03 16:45:21', '2022-12-03 16:45:21'),
	(23, 'Mr. Sammy Bins V', 'UGM', '1977-02-19', '5 Years', 'PHP', 'PHP', 'Test', 'boyer.easton@yahoo.com', '35058847427', 'public/638b7d3c32cd4.pdf', '2022-12-03 16:45:48', '2022-12-03 16:45:48'),
	(24, 'Mr. Johnathan Becker Jr.', 'UGM', '1985-08-26', '5 Years', 'PHP', 'PHP', 'Test', 'mferry@pouros.net', '07381469161', 'public/638b7d63a6384.pdf', '2022-12-03 16:46:27', '2022-12-03 16:46:27'),
	(25, 'Mrs. Asa Lebsack', 'UGM', '1979-08-14', '5 Years', 'PHP', 'PHP', 'Test', 'kschinner@yahoo.com', '38449285787', 'public/638b7d7a9cc2f.pdf', '2022-12-03 16:46:50', '2022-12-03 16:46:50');
/*!40000 ALTER TABLE `candidates` ENABLE KEYS */;

-- Dumping structure for table creative.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table creative.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table creative.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table creative.migrations: ~10 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
	(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
	(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
	(6, '2016_06_01_000004_create_oauth_clients_table', 1),
	(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
	(8, '2019_08_19_000000_create_failed_jobs_table', 1),
	(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(10, '2022_11_28_040054_create_candidates_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table creative.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table creative.oauth_access_tokens: ~2 rows (approximately)
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
REPLACE INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('133ffe01c892fbe78dbbd765b13693938a577169867591d65708e4e8cbcfc0b846b77c0b5656640e', 1, 1, 'API Token', '[]', 0, '2022-12-02 05:27:15', '2022-12-02 05:27:15', '2023-12-02 05:27:15'),
	('36adc98aa1203c6bb693ca84cf526f31e69e9ebba07b77dc5363b1315604b5ef2607a5def5738e99', 1, 1, 'API Token', '[]', 0, '2022-12-02 04:50:46', '2022-12-02 04:50:46', '2023-12-02 04:50:46'),
	('72dc5a42ea1d827c31cc88bdc76db689ce122c68045fdb94254cf0bf2cf90aa982588ed6da7361ac', 1, 1, 'API Token', '[]', 0, '2022-12-03 05:27:17', '2022-12-03 05:27:17', '2023-12-03 05:27:17'),
	('a7176a6d8b200960362f5c7d03d954ee69b45fb82ff922475466986e4b6387b8b3128363efc03da5', 1, 1, 'API Token', '[]', 0, '2022-12-02 06:18:21', '2022-12-02 06:18:21', '2023-12-02 06:18:21');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

-- Dumping structure for table creative.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table creative.oauth_auth_codes: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;

-- Dumping structure for table creative.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table creative.oauth_clients: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
REPLACE INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'indomie', 'AesseAIAV4VMc6E8fqPc4K03H9vxh87500wis8gg', NULL, 'http://localhost', 1, 0, 0, '2022-12-02 04:49:29', '2022-12-02 04:49:29');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Dumping structure for table creative.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table creative.oauth_personal_access_clients: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
REPLACE INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2022-12-02 04:49:29', '2022-12-02 04:49:29');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

-- Dumping structure for table creative.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table creative.oauth_refresh_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

-- Dumping structure for table creative.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table creative.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table creative.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table creative.personal_access_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Dumping structure for table creative.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` enum('senior_hrd','hrd') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'hrd',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table creative.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `name`, `email`, `email_verified_at`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Marvel C', 'ssc.network.marvel@gmail.com', NULL, 'senior_hrd', '$2y$10$41IWq3RdH31d2mNbxkXzj.H/JSNlXHqyjEdUopYXoy2fjW9SV/va2', NULL, '2022-12-02 04:48:00', '2022-12-02 04:48:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
