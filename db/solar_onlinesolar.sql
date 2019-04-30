-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 30, 2019 at 02:52 AM
-- Server version: 10.2.23-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `solar_onlinesolar`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2018-08-06 00:50:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-08-06 00:51:47', NULL),
(2, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'admin@crudbooster.com login with IP Address ::1', '', 1, '2018-08-06 02:44:15', NULL),
(3, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2018-08/final1.jpg</td></tr><tr><td>email</td><td>admin@crudbooster.com</td><td>flk-super@yopmail.com</td></tr><tr><td>password</td><td>$2y$10$I7VKVIlvT3wTqCsavkFgoOMEnR9Tdi9L.EyElRUtPh7RvhRKdt3zi</td><td>$2y$10$QD2/5t/Dr8m6d0gg1dT6Iul5P3BqzQpO0TnHbqaQ3q1DzEqc2FFn6</td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2018-08-06 04:03:25', NULL),
(4, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'flk-super@yopmail.com login with IP Address ::1', '', 1, '2018-08-07 02:03:22', NULL),
(5, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$QD2/5t/Dr8m6d0gg1dT6Iul5P3BqzQpO0TnHbqaQ3q1DzEqc2FFn6</td><td>$2y$10$vA1w8Wn87hEhyCfE34tdNe05zQR2V2IqG7m8NT2PvpA/Em83opZOi</td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2018-08-07 02:03:44', NULL),
(6, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/menu_management/edit-save/4', 'Update data Products at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2018-08-07 02:47:15', NULL),
(7, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/menu_management/edit-save/3', 'Update data Brands at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2018-08-07 02:47:26', NULL),
(8, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/menu_management/edit-save/2', 'Update data Customers at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2018-08-07 02:48:02', NULL),
(9, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/menu_management/edit-save/1', 'Update data Sizes at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2018-08-07 02:48:10', NULL),
(10, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/menu_management/edit-save/4', 'Update data Products at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2018-08-07 02:49:33', NULL),
(11, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/menu_management/edit-save/1', 'Update data Sizes at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2018-08-07 02:50:17', NULL),
(12, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'flk-super@yopmail.com login with IP Address ::1', '', 1, '2018-08-07 03:46:43', NULL),
(13, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/users/add-save', 'Add New Data Admin at Users Management', '', 1, '2018-08-07 03:54:51', NULL),
(14, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/logout', 'flk-super@yopmail.com logout', '', 1, '2018-08-07 03:54:59', NULL),
(15, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'admin@onlinesolar.com login with IP Address ::1', '', 2, '2018-08-07 03:55:04', NULL),
(16, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/logout', 'admin@onlinesolar.com logout', '', 2, '2018-08-07 03:56:46', NULL),
(17, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'flk-super@yopmail.com login with IP Address ::1', '', 1, '2018-08-07 03:56:58', NULL),
(18, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/module_generator/delete/5', 'Delete data Settings at Module Generator', '', 1, '2018-08-07 04:19:20', NULL),
(19, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/module_generator/delete/16', 'Delete data Settings at Module Generator', '', 1, '2018-08-07 04:19:33', NULL),
(20, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'flk-super@yopmail.com login with IP Address ::1', '', 1, '2018-08-07 04:40:57', NULL),
(21, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>email</td><td>flk-super@yopmail.com</td><td>flk-admin@yopmail.com</td></tr><tr><td>password</td><td>$2y$10$vA1w8Wn87hEhyCfE34tdNe05zQR2V2IqG7m8NT2PvpA/Em83opZOi</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2018-08-07 04:41:16', NULL),
(22, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/settings/add-save', 'Add New Data currency at Settings', '', 1, '2018-08-07 06:48:29', NULL),
(23, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/settings/delete/16', 'Delete data google_fcm_key at Settings', '', 1, '2018-08-07 06:53:03', NULL),
(24, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/settings/delete/15', 'Delete data google_api_key at Settings', '', 1, '2018-08-07 06:53:25', NULL),
(25, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/settings/delete/14', 'Delete data api_debug_mode at Settings', '', 1, '2018-08-07 06:54:51', NULL),
(26, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/settings/delete/11', 'Delete data default_paper_size at Settings', '', 1, '2018-08-07 06:54:57', NULL),
(27, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/settings/edit-save/17', 'Update data  at Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>currency</td><td></td></tr><tr><td>content</td><td></td><td></td></tr><tr><td>dataenum</td><td></td><td>change currency</td></tr></tbody></table>', 1, '2018-08-07 06:55:30', NULL),
(28, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/settings/edit-save/17', 'Update data  at Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>currency</td><td></td></tr><tr><td>content</td><td></td><td></td></tr><tr><td>dataenum</td><td>change currency</td><td></td></tr></tbody></table>', 1, '2018-08-07 06:56:03', NULL),
(29, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'admin@onlinesolar.com login with IP Address ::1', '', 2, '2018-08-07 07:33:07', NULL),
(30, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/menu_management/edit-save/7', 'Update data Survey Form at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2018-08-07 07:34:06', NULL),
(31, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/menu_management/edit-save/6', 'Update data Questions at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2018-08-07 07:34:18', NULL),
(32, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/menu_management/edit-save/8', 'Update data Testimonials at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2018-08-07 07:34:32', NULL),
(33, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:49', NULL),
(34, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:49', NULL),
(35, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:49', NULL),
(36, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:50', NULL),
(37, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:50', NULL),
(38, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:50', NULL),
(39, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:50', NULL),
(40, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:51', NULL),
(41, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:51', NULL),
(42, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:51', NULL),
(43, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:52', NULL),
(44, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:52', NULL),
(45, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:52', NULL),
(46, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:53', NULL),
(47, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:53', NULL),
(48, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:53', NULL),
(49, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:53', NULL),
(50, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:54', NULL),
(51, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:54', NULL),
(52, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:54', NULL),
(53, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:55', NULL),
(54, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:55', NULL),
(55, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:55', NULL),
(56, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:56', NULL),
(57, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:56', NULL),
(58, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:56', NULL),
(59, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:57', NULL),
(60, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:57', NULL),
(61, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:57', NULL),
(62, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:58', NULL),
(63, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:58', NULL),
(64, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:58', NULL),
(65, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:59', NULL),
(66, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:59', NULL),
(67, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:59', NULL),
(68, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:36:59', NULL),
(69, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:00', NULL),
(70, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:00', NULL),
(71, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:00', NULL),
(72, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:00', NULL),
(73, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:01', NULL),
(74, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:01', NULL),
(75, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:01', NULL),
(76, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:01', NULL),
(77, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:02', NULL),
(78, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:02', NULL),
(79, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:02', NULL),
(80, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:02', NULL),
(81, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:03', NULL),
(82, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:03', NULL),
(83, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:03', NULL),
(84, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:04', NULL),
(85, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:04', NULL),
(86, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:08', NULL),
(87, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:08', NULL),
(88, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:08', NULL),
(89, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:09', NULL),
(90, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:09', NULL),
(91, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:09', NULL),
(92, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:10', NULL),
(93, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:10', NULL),
(94, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:10', NULL),
(95, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:10', NULL),
(96, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:11', NULL),
(97, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:11', NULL),
(98, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:11', NULL),
(99, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:12', NULL),
(100, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:12', NULL),
(101, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:12', NULL),
(102, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:12', NULL),
(103, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:13', NULL),
(104, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:13', NULL),
(105, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:13', NULL),
(106, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:16', NULL),
(107, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:16', NULL),
(108, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:17', NULL),
(109, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:17', NULL),
(110, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:17', NULL),
(111, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:17', NULL),
(112, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:18', NULL),
(113, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:18', NULL),
(114, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:18', NULL),
(115, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:19', NULL),
(116, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:19', NULL),
(117, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:19', NULL),
(118, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:19', NULL),
(119, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:24', NULL),
(120, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:25', NULL),
(121, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:25', NULL),
(122, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:25', NULL),
(123, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:26', NULL),
(124, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:26', NULL),
(125, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:26', NULL),
(126, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:26', NULL),
(127, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:27', NULL),
(128, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:27', NULL),
(129, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:27', NULL),
(130, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:28', NULL),
(131, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:28', NULL),
(132, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:28', NULL),
(133, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:28', NULL),
(134, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:29', NULL),
(135, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:29', NULL),
(136, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:29', NULL),
(137, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:29', NULL),
(138, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:30', NULL),
(139, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:30', NULL),
(140, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:30', NULL),
(141, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:31', NULL),
(142, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:31', NULL),
(143, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:31', NULL),
(144, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:31', NULL),
(145, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:32', NULL),
(146, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:32', NULL),
(147, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:32', NULL),
(148, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:33', NULL),
(149, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:33', NULL),
(150, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:33', NULL),
(151, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:33', NULL),
(152, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:34', NULL),
(153, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:34', NULL),
(154, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:34', NULL),
(155, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:35', NULL),
(156, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:35', NULL),
(157, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:35', NULL),
(158, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:35', NULL),
(159, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:36', NULL),
(160, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:41', NULL),
(161, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:41', NULL),
(162, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:42', NULL),
(163, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:42', NULL),
(164, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:42', NULL),
(165, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:43', NULL),
(166, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:43', NULL),
(167, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:43', NULL),
(168, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:44', NULL),
(169, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:44', NULL),
(170, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:44', NULL),
(171, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:44', NULL),
(172, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:45', NULL),
(173, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:45', NULL),
(174, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:45', NULL),
(175, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:46', NULL),
(176, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:46', NULL),
(177, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:46', NULL),
(178, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:47', NULL),
(179, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:47', NULL),
(180, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:50', NULL),
(181, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:50', NULL),
(182, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:50', NULL),
(183, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:50', NULL),
(184, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:51', NULL),
(185, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:51', NULL),
(186, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:51', NULL),
(187, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:52', NULL),
(188, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:52', NULL),
(189, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:52', NULL),
(190, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:52', NULL),
(191, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:53', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(192, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:53', NULL),
(193, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:53', NULL),
(194, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:54', NULL),
(195, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:54', NULL),
(196, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:54', NULL),
(197, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:55', NULL),
(198, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:55', NULL),
(199, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:55', NULL),
(200, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:57', NULL),
(201, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:57', NULL),
(202, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:57', NULL),
(203, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:57', NULL),
(204, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:57', NULL),
(205, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:58', NULL),
(206, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:58', NULL),
(207, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:58', NULL),
(208, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:59', NULL),
(209, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:59', NULL),
(210, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:59', NULL),
(211, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:37:59', NULL),
(212, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:00', NULL),
(213, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:00', NULL),
(214, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:00', NULL),
(215, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:01', NULL),
(216, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:01', NULL),
(217, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:01', NULL),
(218, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:02', NULL),
(219, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/logout', 'flk-admin@yopmail.com logout', '', 1, '2018-08-07 07:38:02', NULL),
(220, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:02', NULL),
(221, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:02', NULL),
(222, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:03', NULL),
(223, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:03', NULL),
(224, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:03', NULL),
(225, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:03', NULL),
(226, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'admin@onlinesolar.com login with IP Address ::1', '', 2, '2018-08-07 07:38:10', NULL),
(227, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:10', NULL),
(228, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:11', NULL),
(229, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:11', NULL),
(230, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:11', NULL),
(231, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:12', NULL),
(232, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:12', NULL),
(233, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:12', NULL),
(234, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:13', NULL),
(235, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:13', NULL),
(236, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:13', NULL),
(237, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:13', NULL),
(238, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:14', NULL),
(239, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:14', NULL),
(240, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:14', NULL),
(241, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:14', NULL),
(242, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:15', NULL),
(243, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:15', NULL),
(244, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:15', NULL),
(245, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:16', NULL),
(246, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/logout', 'admin@onlinesolar.com logout', '', 2, '2018-08-07 07:38:26', NULL),
(247, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:34', NULL),
(248, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:34', NULL),
(249, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:34', NULL),
(250, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:35', NULL),
(251, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:35', NULL),
(252, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:35', NULL),
(253, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:36', NULL),
(254, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:36', NULL),
(255, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:36', NULL),
(256, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:37', NULL),
(257, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'flk-admin@yopmail.com login with IP Address ::1', '', 1, '2018-08-07 07:38:37', NULL),
(258, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:37', NULL),
(259, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:37', NULL),
(260, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:38', NULL),
(261, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:38', NULL),
(262, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:38', NULL),
(263, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:38', NULL),
(264, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:39', NULL),
(265, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:39', NULL),
(266, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:39', NULL),
(267, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:38:40', NULL),
(268, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:39:40', NULL),
(269, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:39:40', NULL),
(270, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:39:41', NULL),
(271, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:39:41', NULL),
(272, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:39:41', NULL),
(273, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:39:42', NULL),
(274, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:39:42', NULL),
(275, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:39:42', NULL),
(276, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:39:43', NULL),
(277, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:39:43', NULL),
(278, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:39:43', NULL),
(279, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:39:43', NULL),
(280, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:39:44', NULL),
(281, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:39:44', NULL),
(282, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:39:44', NULL),
(283, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:39:45', NULL),
(284, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:39:45', NULL),
(285, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:39:45', NULL),
(286, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:39:45', NULL),
(287, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:39:46', NULL),
(288, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/users/edit-save/2', 'Update data Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$FyQMXB9SKq8Sj0nR8vA.De7ASk094JqGCQ1Md2vNkiY2K8aa/uccq</td><td></td></tr><tr><td>id_cms_privileges</td><td>2</td><td>1</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2018-08-07 07:40:00', NULL),
(289, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:40:03', NULL),
(290, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:40:03', NULL),
(291, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:40:03', NULL),
(292, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:40:04', NULL),
(293, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:40:04', NULL),
(294, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:40:04', NULL),
(295, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:40:04', NULL),
(296, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:40:05', NULL),
(297, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:40:05', NULL),
(298, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:40:05', NULL),
(299, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:40:06', NULL),
(300, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:40:06', NULL),
(301, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:40:06', NULL),
(302, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:40:07', NULL),
(303, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:40:07', NULL),
(304, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:40:07', NULL),
(305, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:40:08', NULL),
(306, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:40:08', NULL),
(307, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:40:08', NULL),
(308, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-07 07:40:09', NULL),
(309, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/logout', 'admin@onlinesolar.com logout', '', 2, '2018-08-07 07:40:15', NULL),
(310, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'admin@onlinesolar.com login with IP Address ::1', '', 2, '2018-08-07 07:40:27', NULL),
(311, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/logout', 'admin@onlinesolar.com logout', '', 2, '2018-08-07 07:42:30', NULL),
(312, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'flk-admin@yopmail.com login with IP Address ::1', '', 1, '2018-08-07 07:42:39', NULL),
(313, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/menu_management/edit-save/8', 'Update data Testimonials at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2018-08-07 07:45:38', NULL),
(314, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/sizes/add-save', 'Add New Data dsadas at Sizes', '', 1, '2018-08-07 08:05:28', NULL),
(315, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/logout', 'flk-admin@yopmail.com logout', '', 1, '2018-08-07 08:05:57', NULL),
(316, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'flk-admin@yopmail.com login with IP Address ::1', '', 1, '2018-08-07 23:50:53', NULL),
(317, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/delete-image', 'Delete the image of Online Solar at Site Settings', '', 1, '2018-08-08 00:06:49', NULL),
(318, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/edit-save/1', 'Update data Online Solar at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>site_logo</td><td></td><td>uploads/1/2018-08/final1.jpg</td></tr><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 1, '2018-08-08 00:07:57', NULL),
(319, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/menu_management/edit-save/9', 'Update data Site Settings at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-cogs</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2018-08-08 00:11:37', NULL),
(320, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/logout', 'flk-admin@yopmail.com logout', '', 1, '2018-08-08 01:24:18', NULL),
(321, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'admin@onlinesolar.com login with IP Address ::1', '', 2, '2018-08-09 01:02:43', NULL),
(322, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/sizes/add-save', 'Add New Data das at Sizes', '', 2, '2018-08-09 01:09:47', NULL),
(323, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/module_generator/delete/14', 'Delete data Brands at Module Generator', '', 2, '2018-08-09 01:14:03', NULL),
(324, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/brands/add-save', 'Add New Data jjk at Brands', '', 2, '2018-08-09 01:16:03', NULL),
(325, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/brands/edit-save/1', 'Update data jjk at Brands', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td></td><td></td></tr><tr><td>status</td><td>1</td><td>0</td></tr></tbody></table>', 2, '2018-08-09 01:16:37', NULL),
(326, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/module_generator/delete/15', 'Delete data Products at Module Generator', '', 2, '2018-08-09 01:17:18', NULL),
(327, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/products/add-save', 'Add New Data sad at Products', '', 2, '2018-08-09 01:21:09', NULL),
(328, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/products/add-save', 'Add New Data ddsad at Products', '', 2, '2018-08-09 01:21:28', NULL),
(329, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/module_generator/delete/17', 'Delete data Questions at Module Generator', '', 2, '2018-08-09 01:22:10', NULL),
(330, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/questions/add-save', 'Add New Data tesaeas at Questions', '', 2, '2018-08-09 01:23:23', NULL),
(331, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/module_generator/delete/13', 'Delete data Customers at Module Generator', '', 2, '2018-08-09 01:23:38', NULL),
(332, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/customers/add-save', 'Add New Data test at Customers', '', 2, '2018-08-09 01:25:32', NULL),
(333, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/menu_management/edit-save/10', 'Update data Brands at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-tags</td><td>fa fa-gear</td></tr><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 2, '2018-08-09 01:26:54', NULL),
(334, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/menu_management/edit-save/10', 'Update data Brands at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-gear</td><td>fa fa-music</td></tr><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 2, '2018-08-09 01:27:18', NULL),
(335, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/menu_management/edit-save/10', 'Update data Brands at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-music</td><td>fa fa-flag</td></tr><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 2, '2018-08-09 01:27:45', NULL),
(336, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/module_generator/delete/19', 'Delete data Testimonials at Module Generator', '', 2, '2018-08-09 01:31:04', NULL),
(337, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/testimonials/add-save', 'Add New Data dasd at Testimonials', '', 2, '2018-08-09 01:34:12', NULL),
(338, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/module_generator/delete/22', 'Delete data Products at Module Generator', '', 2, '2018-08-09 01:58:32', NULL),
(339, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/products/add-save', 'Add New Data fdsf at Products', '', 2, '2018-08-09 02:00:57', NULL),
(340, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/products/delete/1', 'Delete data sad at Products', '', 2, '2018-08-09 02:01:08', NULL),
(341, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/edit-save/1', 'Update data Online Solar2 at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 2, '2018-08-09 02:15:15', NULL),
(342, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/edit-save/1', 'Update data Online Solar2 at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>currency</td><td>Rs.</td><td>$</td></tr><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 2, '2018-08-09 02:15:35', NULL),
(343, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/edit-save/1', 'Update data Online Solar at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>site_name</td><td>Online Solar2</td><td>Online Solar</td></tr><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 2, '2018-08-09 02:15:53', NULL),
(344, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/edit-save/1', 'Update data Online Solar at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 2, '2018-08-09 02:22:47', NULL),
(345, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/edit-save/1', 'Update data Online Solar2 at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>site_name</td><td>Online Solar</td><td>Online Solar2</td></tr><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 2, '2018-08-09 02:23:10', NULL),
(346, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/logout', 'admin@onlinesolar.com logout', '', 2, '2018-08-09 02:23:23', NULL),
(347, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'admin@onlinesolar.com login with IP Address ::1', '', 2, '2018-08-09 02:23:37', NULL),
(348, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/edit-save/1', 'Update data Online Solar2 at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 2, '2018-08-09 02:27:03', NULL),
(349, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/delete-image', 'Delete the image of Online Solar2 at Site Settings', '', 2, '2018-08-09 02:28:24', NULL),
(350, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/edit-save/1', 'Update data Online Solar2 at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>site_logo</td><td></td><td>uploads/2/2018-08/levis_logo.png</td></tr><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 2, '2018-08-09 02:28:35', NULL),
(351, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/logout', 'admin@onlinesolar.com logout', '', 2, '2018-08-09 02:28:39', NULL),
(352, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'flk-admin@yopmail.com login with IP Address ::1', '', 1, '2018-08-09 02:29:43', NULL),
(353, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/logout', 'flk-admin@yopmail.com logout', '', 1, '2018-08-09 02:30:06', NULL),
(354, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'flk-admin@yopmail.com login with IP Address ::1', '', 1, '2018-08-09 02:30:16', NULL),
(355, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/delete-image', 'Delete the image of Online Solar2 at Site Settings', '', 1, '2018-08-09 02:30:27', NULL),
(356, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/edit-save/1', 'Update data Online Solar2 at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>site_logo</td><td></td><td>uploads/1/2018-08/logo.png</td></tr><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 1, '2018-08-09 02:30:38', NULL),
(357, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/logout', 'flk-admin@yopmail.com logout', '', 1, '2018-08-09 02:30:55', NULL),
(358, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'flk-admin@yopmail.com login with IP Address ::1', '', 1, '2018-08-09 02:31:10', NULL),
(359, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/logout', 'flk-admin@yopmail.com logout', '', 1, '2018-08-09 02:31:18', NULL),
(360, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'flk-admin@yopmail.com login with IP Address ::1', '', 1, '2018-08-09 02:31:28', NULL),
(361, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/edit-save/1', 'Update data Online Solar2 at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 1, '2018-08-09 02:39:56', NULL),
(362, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/delete-image', 'Delete the image of Online Solar2 at Site Settings', '', 1, '2018-08-09 02:40:45', NULL),
(363, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'admin@onlinesolar.com login with IP Address ::1', '', 2, '2018-08-09 23:41:39', NULL),
(364, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/delete-image', 'Delete the image of Online Solar2 at Site Settings', '', 2, '2018-08-10 00:08:25', NULL),
(365, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/delete-image', 'Delete the image of Online Solar2 at Site Settings', '', 2, '2018-08-10 00:23:02', NULL),
(366, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/delete-image', 'Delete the image of Online Solar2 at Site Settings', '', 2, '2018-08-10 01:11:02', NULL),
(367, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/edit-save/1', 'Update data Online Solar2 at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 2, '2018-08-10 01:26:44', NULL),
(368, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/delete-image', 'Delete the image of Online Solar2 at Site Settings', '', 2, '2018-08-10 01:26:54', NULL),
(369, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/edit-save/1', 'Update data Online Solar2 at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>site_logo</td><td></td><td>uploads/2/2018-08/levis_logo.png</td></tr><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 2, '2018-08-10 01:27:04', NULL),
(370, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/delete-image', 'Delete the image of Online Solar2 at Site Settings', '', 2, '2018-08-10 01:29:28', NULL),
(371, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/delete-image', 'Delete the image of Online Solar2 at Site Settings', '', 2, '2018-08-10 01:36:55', NULL),
(372, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/edit-save/1', 'Update data Online Solar2 at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 2, '2018-08-10 01:44:18', NULL),
(373, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/delete-image', 'Delete the image of Online Solar2 at Site Settings', '', 2, '2018-08-10 01:44:26', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(374, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/edit-save/1', 'Update data Online Solar2 at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>site_logo</td><td></td><td>uploads/2/2018-08/levis_logo.png</td></tr><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 2, '2018-08-10 01:44:32', NULL),
(375, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/logout', 'admin@onlinesolar.com logout', '', 2, '2018-08-10 01:44:38', NULL),
(376, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'flk-admin@yopmail.com login with IP Address ::1', '', 1, '2018-08-10 01:44:48', NULL),
(377, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/delete-image', 'Delete the image of Online Solar2 at Site Settings', '', 1, '2018-08-10 01:45:02', NULL),
(378, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/edit-save/1', 'Update data Online Solar2 at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>site_logo</td><td></td><td>uploads/1/2018-08/logo.png</td></tr><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 1, '2018-08-10 01:45:10', NULL),
(379, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/logout', 'flk-admin@yopmail.com logout', '', 1, '2018-08-10 01:45:14', NULL),
(380, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/logout', ' logout', '', NULL, '2018-08-10 01:45:15', NULL),
(381, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'flk-admin@yopmail.com login with IP Address ::1', '', 1, '2018-08-10 01:45:43', NULL),
(382, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/edit-save/1', 'Update data Online Solar2 at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 1, '2018-08-10 01:46:04', NULL),
(383, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/delete-image', 'Delete the image of Online Solar2 at Site Settings', '', 1, '2018-08-10 01:46:10', NULL),
(384, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/edit-save/1', 'Update data Online Solar2 at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>site_logo</td><td></td><td>uploads/1/2018-08/desert_copy_copy_2.jpg</td></tr><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 1, '2018-08-10 01:46:30', NULL),
(385, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/logout', 'flk-admin@yopmail.com logout', '', 1, '2018-08-10 01:46:37', NULL),
(386, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'flk-admin@yopmail.com login with IP Address ::1', '', 1, '2018-08-10 01:47:53', NULL),
(387, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/delete-image', 'Delete the image of Online Solar2 at Site Settings', '', 1, '2018-08-10 01:49:59', NULL),
(388, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/edit-save/1', 'Update data Online Solar2 at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>site_logo</td><td></td><td>uploads/1/2018-08/desert_copy_copy_2_copy.jpg</td></tr><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 1, '2018-08-10 01:50:04', NULL),
(389, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/logout', 'flk-admin@yopmail.com logout', '', 1, '2018-08-10 01:50:11', NULL),
(390, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'flk-admin@yopmail.com login with IP Address ::1', '', 1, '2018-08-10 01:50:27', NULL),
(391, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/delete-image', 'Delete the image of Online Solar2 at Site Settings', '', 1, '2018-08-10 01:53:10', NULL),
(392, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/edit-save/1', 'Update data Online Solar2 at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>site_logo</td><td></td><td>uploads/1/2018-08/desert_copy_copy_3_copy_copy.jpg</td></tr><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 1, '2018-08-10 01:53:15', NULL),
(393, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/logout', 'flk-admin@yopmail.com logout', '', 1, '2018-08-10 01:53:19', NULL),
(394, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'flk-admin@yopmail.com login with IP Address ::1', '', 1, '2018-08-10 01:58:05', NULL),
(395, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/delete-image', 'Delete the image of Online Solar2 at Site Settings', '', 1, '2018-08-10 01:58:15', NULL),
(396, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/edit-save/1', 'Update data Online Solar2 at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>site_logo</td><td></td><td>uploads/1/2018-08/chrysanthemum.jpg</td></tr><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 1, '2018-08-10 01:58:20', NULL),
(397, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/logout', 'flk-admin@yopmail.com logout', '', 1, '2018-08-10 01:58:25', NULL),
(398, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'flk-admin@yopmail.com login with IP Address ::1', '', 1, '2018-08-10 02:00:35', NULL),
(399, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/delete-image', 'Delete the image of Online Solar2 at Site Settings', '', 1, '2018-08-10 02:00:42', NULL),
(400, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/edit-save/1', 'Update data Online Solar2 at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>site_logo</td><td></td><td>uploads/1/2018-08/desert_copy_copy_2.jpg</td></tr><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 1, '2018-08-10 02:00:46', NULL),
(401, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/delete-image', 'Delete the image of Online Solar2 at Site Settings', '', 1, '2018-08-10 02:03:16', NULL),
(402, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/edit-save/1', 'Update data Online Solar2 at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 1, '2018-08-10 02:03:40', NULL),
(403, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'admin@onlinesolar.com login with IP Address ::1', '', 2, '2018-08-30 02:29:13', NULL),
(404, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/logout', 'admin@onlinesolar.com logout', '', 2, '2018-08-30 02:30:03', NULL),
(405, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'flk-admin@yopmail.com login with IP Address ::1', '', 1, '2018-08-30 02:30:13', NULL),
(406, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'admin@onlinesolar.com login with IP Address ::1', '', 2, '2018-08-30 02:31:22', NULL),
(407, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/users/edit-save/2', 'Update data Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>email</td><td>admin@onlinesolar.com</td><td>test@test.com</td></tr><tr><td>password</td><td>$2y$10$FyQMXB9SKq8Sj0nR8vA.De7ASk094JqGCQ1Md2vNkiY2K8aa/uccq</td><td>$2y$10$x9S6a785BRKO6OnQsU7QUeEFdc8oY1VXvTKGuRCMPkcvzI8W3JpWu</td></tr><tr><td>id_cms_privileges</td><td>1</td><td>2</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2018-08-30 02:31:44', NULL),
(408, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/logout', 'test@test.com logout', '', 2, '2018-08-30 02:31:52', NULL),
(409, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/logout', 'flk-admin@yopmail.com logout', '', 1, '2018-08-30 02:32:32', NULL),
(410, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'flk-admin@yopmail.com login with IP Address ::1', '', 1, '2018-08-30 02:33:03', NULL),
(411, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/users/edit-save/2', 'Update data Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>email</td><td>test@test.com</td><td>admin@onlinesolar.com</td></tr><tr><td>password</td><td>$2y$10$x9S6a785BRKO6OnQsU7QUeEFdc8oY1VXvTKGuRCMPkcvzI8W3JpWu</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2018-08-30 02:33:38', NULL),
(412, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/users/edit-save/2', 'Update data Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$x9S6a785BRKO6OnQsU7QUeEFdc8oY1VXvTKGuRCMPkcvzI8W3JpWu</td><td>$2y$10$L8v/heE317bIDqNgwsmTo.5HKI0z5fl.mEVnB1yPP4ZeHXlFpEWKO</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2018-08-30 02:34:31', NULL),
(413, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'admin@onlinesolar.com login with IP Address ::1', '', 2, '2018-08-30 02:34:37', NULL),
(414, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/logout', 'admin@onlinesolar.com logout', '', 2, '2018-08-30 02:42:52', NULL),
(415, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/login', 'admin@onlinesolar.com login with IP Address ::1', '', 2, '2018-08-30 02:43:00', NULL),
(416, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/users/edit-save/2', 'Update data Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$L8v/heE317bIDqNgwsmTo.5HKI0z5fl.mEVnB1yPP4ZeHXlFpEWKO</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2018-08-30 02:43:26', NULL),
(417, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/menu_management/edit-save/15', 'Update data Products at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 1, '2018-08-30 02:44:25', NULL),
(418, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/menu_management/edit-save/14', 'Update data Testimonials at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2018-08-30 02:44:37', NULL),
(419, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/menu_management/edit-save/9', 'Update data Site Settings at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2018-08-30 02:44:49', NULL),
(420, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/menu_management/edit-save/12', 'Update data Questions at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2018-08-30 02:44:57', NULL),
(421, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/menu_management/edit-save/10', 'Update data Brands at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2018-08-30 02:45:10', NULL),
(422, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/menu_management/edit-save/13', 'Update data Customers at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr></tbody></table>', 1, '2018-08-30 02:45:15', NULL),
(423, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/menu_management/edit-save/13', 'Update data Customers at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2018-08-30 02:49:10', NULL),
(424, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:13', NULL),
(425, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:13', NULL),
(426, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:13', NULL),
(427, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:14', NULL),
(428, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:14', NULL),
(429, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:14', NULL),
(430, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:15', NULL),
(431, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:15', NULL),
(432, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:15', NULL),
(433, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:15', NULL),
(434, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:16', NULL),
(435, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:16', NULL),
(436, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:16', NULL),
(437, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:17', NULL),
(438, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:17', NULL),
(439, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:17', NULL),
(440, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:17', NULL),
(441, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:17', NULL),
(442, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:18', NULL),
(443, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:18', NULL),
(444, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:18', NULL),
(445, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:18', NULL),
(446, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:19', NULL),
(447, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:19', NULL),
(448, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:19', NULL),
(449, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:20', NULL),
(450, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:20', NULL),
(451, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:20', NULL),
(452, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:21', NULL),
(453, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:21', NULL),
(454, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:21', NULL),
(455, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:21', NULL),
(456, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:22', NULL),
(457, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:22', NULL),
(458, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:22', NULL),
(459, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:23', NULL),
(460, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:23', NULL),
(461, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:23', NULL),
(462, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:24', NULL),
(463, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:24', NULL),
(464, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:24', NULL),
(465, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:24', NULL),
(466, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:25', NULL),
(467, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:25', NULL),
(468, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:25', NULL),
(469, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:25', NULL),
(470, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:26', NULL),
(471, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:26', NULL),
(472, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:26', NULL),
(473, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:27', NULL),
(474, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:27', NULL),
(475, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:27', NULL),
(476, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:27', NULL),
(477, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:28', NULL),
(478, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:28', NULL),
(479, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:28', NULL),
(480, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:29', NULL),
(481, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:29', NULL),
(482, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:29', NULL),
(483, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:30', NULL),
(484, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:30', NULL),
(485, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:30', NULL),
(486, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:30', NULL),
(487, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:31', NULL),
(488, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:36', NULL),
(489, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:36', NULL),
(490, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:37', NULL),
(491, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:37', NULL),
(492, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:37', NULL),
(493, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:38', NULL),
(494, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:38', NULL),
(495, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:38', NULL),
(496, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:38', NULL),
(497, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:39', NULL),
(498, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:39', NULL),
(499, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:39', NULL),
(500, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:40', NULL),
(501, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:40', NULL),
(502, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:40', NULL),
(503, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:40', NULL),
(504, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:41', NULL),
(505, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:41', NULL),
(506, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:41', NULL),
(507, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:42', NULL),
(508, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:42', NULL),
(509, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:42', NULL),
(510, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:42', NULL),
(511, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:43', NULL),
(512, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:43', NULL),
(513, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:43', NULL),
(514, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:44', NULL),
(515, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:44', NULL),
(516, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:44', NULL),
(517, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:44', NULL),
(518, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:45', NULL),
(519, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:45', NULL),
(520, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:45', NULL),
(521, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:46', NULL),
(522, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:46', NULL),
(523, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:46', NULL),
(524, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:46', NULL),
(525, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:47', NULL),
(526, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:47', NULL),
(527, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:49:47', NULL),
(528, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/menu_management/edit-save/13', 'Update data Customers at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2018-08-30 02:49:53', NULL),
(529, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/menu_management/edit-save/15', 'Update data Products at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 1, '2018-08-30 02:50:16', NULL),
(530, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:20', NULL),
(531, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:21', NULL),
(532, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:21', NULL),
(533, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:21', NULL),
(534, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:22', NULL),
(535, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:22', NULL),
(536, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:22', NULL),
(537, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:22', NULL),
(538, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:23', NULL),
(539, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:23', NULL),
(540, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:23', NULL),
(541, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:24', NULL),
(542, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:24', NULL),
(543, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:24', NULL),
(544, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:24', NULL),
(545, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:25', NULL),
(546, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:25', NULL),
(547, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:25', NULL),
(548, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:26', NULL),
(549, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:26', NULL),
(550, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:26', NULL),
(551, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:27', NULL),
(552, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:27', NULL),
(553, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:27', NULL),
(554, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:28', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(555, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:28', NULL),
(556, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:29', NULL),
(557, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:29', NULL),
(558, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:29', NULL),
(559, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:29', NULL),
(560, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:30', NULL),
(561, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:30', NULL),
(562, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:30', NULL),
(563, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:31', NULL),
(564, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:31', NULL),
(565, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:31', NULL),
(566, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:31', NULL),
(567, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:32', NULL),
(568, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:32', NULL),
(569, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:50:32', NULL),
(570, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/menu_management/edit-save/15', 'Update data Products at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 1, '2018-08-30 02:50:37', NULL),
(571, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/menu_management/edit-save/13', 'Update data Customers at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2018-08-30 02:51:49', NULL),
(572, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:51:52', NULL),
(573, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:51:53', NULL),
(574, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:51:53', NULL),
(575, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:51:53', NULL),
(576, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:51:54', NULL),
(577, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:51:54', NULL),
(578, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:51:54', NULL),
(579, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:51:54', NULL),
(580, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:51:55', NULL),
(581, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:51:55', NULL),
(582, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:51:55', NULL),
(583, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:51:56', NULL),
(584, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:51:56', NULL),
(585, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:51:56', NULL),
(586, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:51:57', NULL),
(587, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:51:57', NULL),
(588, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:51:57', NULL),
(589, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:51:57', NULL),
(590, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:51:58', NULL),
(591, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:51:58', NULL),
(592, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:51:58', NULL),
(593, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:51:59', NULL),
(594, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:51:59', NULL),
(595, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:51:59', NULL),
(596, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:51:59', NULL),
(597, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:00', NULL),
(598, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:00', NULL),
(599, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:00', NULL),
(600, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:01', NULL),
(601, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:01', NULL),
(602, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:01', NULL),
(603, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:01', NULL),
(604, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:02', NULL),
(605, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:02', NULL),
(606, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:02', NULL),
(607, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:03', NULL),
(608, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:03', NULL),
(609, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:03', NULL),
(610, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:04', NULL),
(611, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:04', NULL),
(612, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:05', NULL),
(613, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:06', NULL),
(614, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:06', NULL),
(615, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:06', NULL),
(616, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:06', NULL),
(617, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:07', NULL),
(618, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:07', NULL),
(619, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:07', NULL),
(620, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:07', NULL),
(621, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:08', NULL),
(622, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:08', NULL),
(623, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:08', NULL),
(624, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:09', NULL),
(625, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:09', NULL),
(626, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:09', NULL),
(627, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:09', NULL),
(628, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:10', NULL),
(629, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:10', NULL),
(630, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:10', NULL),
(631, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin', 'Try view the data :name at ', '', 2, '2018-08-30 02:52:11', NULL),
(632, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/menu_management/edit-save/13', 'Update data Customers at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2018-08-30 02:52:32', NULL),
(633, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/statistic_builder/add-save', 'Add New Data Products at Statistic Builder', '', 1, '2018-08-30 02:52:45', NULL),
(634, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/statistic_builder/edit-save/1', 'Update data Counter at Statistic Builder', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Products</td><td>Counter</td></tr><tr><td>slug</td><td>products</td><td></td></tr></tbody></table>', 1, '2018-08-30 03:06:58', NULL),
(635, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/menu_management/add-save', 'Add New Data Counters at Menu Management', '', 1, '2018-08-30 03:08:22', NULL),
(636, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/edit-save/1', 'Update data Online Solar2 at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 2, '2018-08-30 03:09:33', NULL),
(637, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/delete-image', 'Delete the image of Online Solar2 at Site Settings', '', 2, '2018-08-30 03:09:42', NULL),
(638, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/site_settings/edit-save/1', 'Update data Online Solar at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>site_name</td><td>Online Solar2</td><td>Online Solar</td></tr><tr><td>site_logo</td><td></td><td>uploads/2/2018-08/logo_final.png</td></tr><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 2, '2018-08-30 03:10:30', NULL),
(639, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://localhost/onlinesolar/admin/logout', 'admin@onlinesolar.com logout', '', 2, '2018-08-30 03:10:38', NULL),
(640, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 110.38.25.58', '', 2, '2018-08-30 12:52:39', NULL),
(641, '172.94.95.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 172.94.95.46', '', 2, '2018-08-30 13:17:47', NULL),
(642, '104.152.45.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 104.152.45.45', '', 2, '2018-08-31 01:00:46', NULL),
(643, '172.94.95.78', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 172.94.95.78', '', 2, '2018-08-31 01:01:02', NULL),
(644, '96.67.194.203', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 96.67.194.203', '', 2, '2018-08-31 01:10:03', NULL),
(645, '173.199.120.251', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 173.199.120.251', '', 2, '2018-08-31 01:53:14', NULL),
(646, '96.67.194.203', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 96.67.194.203', '', 2, '2018-08-31 02:30:27', NULL),
(647, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 96.67.194.203', '', 2, '2018-08-31 02:36:29', NULL),
(648, '107.191.38.242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 107.191.38.242', '', 2, '2018-08-31 02:44:05', NULL),
(649, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/brands/edit-save/1', 'Update data test new image at Brands', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title</td><td>jjk</td><td>test new image</td></tr><tr><td>description</td><td></td><td>testing new image</td></tr></tbody></table>', 2, '2018-08-31 02:44:43', NULL),
(650, '141.101.154.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 141.101.154.37', '', 2, '2018-08-31 16:33:35', NULL),
(651, '141.101.168.89', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 141.101.168.89', '', 2, '2018-09-01 00:31:55', NULL),
(652, '104.152.45.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 104.152.45.45', '', 2, '2018-09-01 00:38:20', NULL),
(653, '96.67.194.203', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 96.67.194.203', '', 2, '2018-09-01 00:39:04', NULL),
(654, '141.101.168.85', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 141.101.168.85', '', 2, '2018-09-04 09:01:56', NULL),
(655, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 96.67.194.203', '', 2, '2018-09-13 02:48:03', NULL),
(656, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 110.38.25.58', '', 2, '2018-09-14 11:20:53', NULL),
(657, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 110.38.25.58', '', 2, '2018-09-14 12:16:38', NULL),
(658, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/action-selected', 'Delete data 105,48 at Customers', '', 2, '2018-09-14 12:17:01', NULL),
(659, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/edit-save/104', 'Update data Alex at Customers', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td></td><td></td></tr><tr><td>phone</td><td>(122) 345-6789</td><td>13456789</td></tr><tr><td>address</td><td></td><td>tests</td></tr><tr><td>confirm_code</td><td>SLP00104</td><td></td></tr><tr><td>status</td><td>0</td><td>1</td></tr><tr><td>remember_token</td><td></td><td></td></tr></tbody></table>', 2, '2018-09-14 12:30:35', NULL),
(660, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/106', 'Delete data test at Customers', '', 2, '2018-09-14 15:28:33', NULL),
(661, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/109', 'Delete data Willian at Customers', '', 2, '2018-09-14 16:05:49', NULL),
(662, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/110', 'Delete data William at Customers', '', 2, '2018-09-14 16:11:19', NULL),
(663, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/111', 'Delete data William at Customers', '', 2, '2018-09-14 16:26:00', NULL),
(664, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/112', 'Delete data William at Customers', '', 2, '2018-09-14 16:32:22', NULL),
(665, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/113', 'Delete data William at Customers', '', 2, '2018-09-14 16:45:59', NULL),
(666, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/114', 'Delete data William at Customers', '', 2, '2018-09-14 17:01:12', NULL),
(667, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/116', 'Delete data William at Customers', '', 2, '2018-09-14 17:10:32', NULL),
(668, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 110.38.25.58', '', 2, '2018-09-15 10:46:03', NULL),
(669, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/117', 'Delete data William at Customers', '', 2, '2018-09-15 10:46:24', NULL),
(670, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/121', 'Delete data William at Customers', '', 2, '2018-09-15 11:20:33', NULL),
(671, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/122', 'Delete data William at Customers', '', 2, '2018-09-15 11:43:09', NULL),
(672, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/123', 'Delete data William at Customers', '', 2, '2018-09-15 11:55:55', NULL),
(673, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/124', 'Delete data William at Customers', '', 2, '2018-09-15 11:58:39', NULL),
(674, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/125', 'Delete data William at Customers', '', 2, '2018-09-15 12:13:54', NULL),
(675, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/126', 'Delete data William at Customers', '', 2, '2018-09-15 12:17:07', NULL),
(676, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/127', 'Delete data William at Customers', '', 2, '2018-09-15 12:20:32', NULL),
(677, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/128', 'Delete data William at Customers', '', 2, '2018-09-15 12:29:03', NULL),
(678, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/129', 'Delete data William at Customers', '', 2, '2018-09-15 12:36:15', NULL),
(679, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/130', 'Delete data William at Customers', '', 2, '2018-09-15 12:38:20', NULL),
(680, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/131', 'Delete data William at Customers', '', 2, '2018-09-15 13:25:51', NULL),
(681, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/132', 'Delete data William at Customers', '', 2, '2018-09-15 13:34:26', NULL),
(682, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/132', 'Delete data William at Customers', '', 2, '2018-09-15 13:34:27', NULL),
(683, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/133', 'Delete data William at Customers', '', 2, '2018-09-15 13:40:18', NULL),
(684, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/134', 'Delete data William at Customers', '', 2, '2018-09-15 13:42:43', NULL),
(685, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/135', 'Delete data William at Customers', '', 2, '2018-09-15 13:53:14', NULL),
(686, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/136', 'Delete data William at Customers', '', 2, '2018-09-15 13:56:27', NULL),
(687, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/137', 'Delete data William at Customers', '', 2, '2018-09-15 14:36:53', NULL),
(688, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/139', 'Delete data William at Customers', '', 2, '2018-09-15 14:46:32', NULL),
(689, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/140', 'Delete data William at Customers', '', 2, '2018-09-15 14:53:59', NULL),
(690, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/141', 'Delete data William at Customers', '', 2, '2018-09-15 14:59:23', NULL),
(691, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/142', 'Delete data William at Customers', '', 2, '2018-09-15 15:04:09', NULL),
(692, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 110.38.25.58', '', 2, '2018-09-15 17:00:57', NULL),
(693, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/143', 'Delete data William at Customers', '', 2, '2018-09-15 17:01:39', NULL),
(694, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 110.38.25.58', '', 2, '2018-09-18 10:21:36', NULL),
(695, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://199.250.201.124/~solar/admin/logout', 'admin@onlinesolar.com logout', '', 2, '2018-09-18 10:23:08', NULL),
(696, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 110.38.25.58', '', 2, '2018-09-19 14:36:00', NULL),
(697, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'flk-admin@yopmail.com login with IP Address 110.38.25.58', '', 1, '2018-09-19 15:01:47', NULL),
(698, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/module_generator/delete/21', 'Delete data Colors at Module Generator', '', 1, '2018-09-19 15:15:12', NULL),
(699, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/menu_management/delete/12', 'Delete data Questions at Menu Management', '', 1, '2018-09-19 15:17:59', NULL),
(700, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/menu_management/delete/7', 'Delete data Survey Form at Menu Management', '', 1, '2018-09-19 15:18:04', NULL),
(701, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/menu_management/delete/14', 'Delete data Testimonials at Menu Management', '', 1, '2018-09-19 15:18:18', NULL),
(702, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/colors/add-save', 'Add New Data Grey at Colors', '', 1, '2018-09-19 15:23:26', NULL),
(703, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/colors/add-save', 'Add New Data Red at Colors', '', 1, '2018-09-19 15:23:34', NULL),
(704, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/colors/add-save', 'Add New Data Green at Colors', '', 1, '2018-09-19 15:23:46', NULL),
(705, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/colors/add-save', 'Add New Data Blue at Colors', '', 1, '2018-09-19 15:23:51', NULL),
(706, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/colors/add-save', 'Add New Data Yellow at Colors', '', 1, '2018-09-19 15:23:58', NULL),
(707, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/sizes/add-save', 'Add New Data 65 Inch at Sizes', '', 1, '2018-09-19 15:25:03', NULL),
(708, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/sizes/add-save', 'Add New Data 70 Inch at Sizes', '', 1, '2018-09-19 15:25:10', NULL),
(709, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/sizes/add-save', 'Add New Data 75 Inch at Sizes', '', 1, '2018-09-19 15:25:17', NULL),
(710, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/sizes/add-save', 'Add New Data 80 Inch at Sizes', '', 1, '2018-09-19 15:25:24', NULL),
(711, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/sizes/add-save', 'Add New Data 85 Inch at Sizes', '', 1, '2018-09-19 15:25:31', NULL),
(712, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/products/add-save', 'Add New Data Power System 01 at Products', '', 1, '2018-09-19 15:32:21', NULL),
(713, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/products/edit-save/1', 'Update data Power System 01 at Products', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sizes</td><td></td><td>65 Inch;70 Inch;75 Inch;80 Inch;85 Inch</td></tr><tr><td>colors</td><td></td><td>Grey;Red;Green;Blue;Yellow</td></tr></tbody></table>', 1, '2018-09-19 15:32:39', NULL),
(714, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/products/add-save', 'Add New Data Power System 02 at Products', '', 1, '2018-09-19 15:33:17', NULL),
(715, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/products/add-save', 'Add New Data Power System 03 at Products', '', 1, '2018-09-19 15:33:44', NULL),
(716, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/products/add-save', 'Add New Data Power System 04 at Products', '', 1, '2018-09-19 15:44:27', NULL),
(717, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/products/edit-save/3', 'Update data Power System 03 at Products', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>1</td><td>0</td></tr></tbody></table>', 1, '2018-09-19 15:45:04', NULL),
(718, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/menu_management/edit-save/17', 'Update data Colors at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2018-09-19 17:33:58', NULL),
(719, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 110.38.25.58', '', 2, '2018-09-19 17:39:53', NULL),
(720, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/menu_management/edit-save/18', 'Update data Orders at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>10</td><td></td></tr></tbody></table>', 1, '2018-09-19 17:40:35', NULL),
(721, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/logout', 'flk-admin@yopmail.com logout', '', 1, '2018-09-19 17:42:55', NULL),
(722, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 110.38.25.58', '', 2, '2018-09-19 17:43:08', NULL),
(723, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 110.38.25.58', '', 2, '2018-09-19 17:45:24', NULL),
(724, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://199.250.201.124/~solar/admin/orders/delete/2', 'Delete data 2 at Orders', '', 2, '2018-09-19 17:58:10', NULL),
(725, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://199.250.201.124/~solar/admin/logout', 'admin@onlinesolar.com logout', '', 2, '2018-09-19 18:09:25', NULL),
(726, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 110.38.25.58', '', 2, '2018-09-19 18:31:29', NULL),
(727, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://199.250.201.124/~solar/admin/logout', 'admin@onlinesolar.com logout', '', 2, '2018-09-19 18:32:13', NULL),
(728, '172.94.42.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 172.94.42.88', '', 2, '2018-09-19 21:34:42', NULL),
(729, '172.94.42.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 172.94.42.88', '', 2, '2018-09-19 23:52:47', NULL),
(730, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 96.67.194.203', '', 2, '2018-09-20 00:31:40', NULL),
(731, '141.101.168.63', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 141.101.168.63', '', 2, '2018-10-04 01:35:37', NULL),
(732, '111.88.201.113', 'Mozilla/5.0 (Linux; Android 7.1.1; E6533 Build/32.4.A.1.54) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Mobile Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 111.88.201.113', '', 2, '2018-10-04 22:30:02', NULL),
(733, '111.88.201.113', 'Mozilla/5.0 (Linux; Android 7.1.1; E6533 Build/32.4.A.1.54) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Mobile Safari/537.36', 'http://199.250.201.124/~solar/admin/logout', 'admin@onlinesolar.com logout', '', 2, '2018-10-04 22:30:32', NULL),
(734, '111.88.201.113', 'Mozilla/5.0 (Linux; Android 7.1.1; E6533 Build/32.4.A.1.54) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Mobile Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 111.88.201.113', '', 2, '2018-10-04 22:33:09', NULL),
(735, '111.88.201.113', 'Mozilla/5.0 (Linux; Android 7.1.1; E6533 Build/32.4.A.1.54) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Mobile Safari/537.36', 'http://199.250.201.124/~solar/admin/logout', 'admin@onlinesolar.com logout', '', 2, '2018-10-04 22:33:55', NULL),
(736, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 96.67.194.203', '', 2, '2018-10-04 23:48:17', NULL),
(737, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 96.67.194.203', '', 2, '2018-10-05 01:39:21', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(738, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/action-selected', 'Delete data 233,219,215 at Customers', '', 2, '2018-10-05 01:39:54', NULL),
(739, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 96.67.194.203', '', 2, '2018-10-05 22:36:02', NULL),
(740, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/action-selected', 'Delete data 213,203,185,183,182,181 at Customers', '', 2, '2018-10-05 22:36:26', NULL),
(741, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 96.67.194.203', '', 2, '2018-10-09 00:05:09', NULL),
(742, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/action-selected', 'Delete data 234,227 at Customers', '', 2, '2018-10-09 00:05:49', NULL),
(743, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 96.67.194.203', '', 2, '2018-10-09 02:18:09', NULL),
(744, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/action-selected', 'Delete data 236 at Customers', '', 2, '2018-10-09 02:19:36', NULL),
(745, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/action-selected', 'Delete data 184 at Customers', '', 2, '2018-10-09 02:21:55', NULL),
(746, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 96.67.194.203', '', 2, '2018-10-09 02:37:25', NULL),
(747, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 96.67.194.203', '', 2, '2018-10-09 02:37:37', NULL),
(748, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://onlinesolar.tk/admin/login', 'admin@onlinesolar.com login with IP Address 110.38.25.58', '', 2, '2018-10-10 12:03:51', NULL),
(749, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://onlinesolar.tk/admin/logout', 'admin@onlinesolar.com logout', '', 2, '2018-10-10 12:05:20', NULL),
(750, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://onlinesolar.tk/admin/logout', ' logout', '', NULL, '2018-10-10 12:05:20', NULL),
(751, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://onlinesolar.tk/admin/login', 'flk-admin@yopmail.com login with IP Address 110.38.25.58', '', 1, '2018-10-10 12:05:37', NULL),
(752, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://onlinesolar.tk/admin/settings/add-save', 'Add New Data slider_min_value at Settings', '', 1, '2018-10-10 12:06:17', NULL),
(753, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://onlinesolar.tk/admin/settings/add-save', 'Add New Data slider_max_value at Settings', '', 1, '2018-10-10 12:06:30', NULL),
(754, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://onlinesolar.tk/admin/settings/add-save', 'Add New Data slider_increments at Settings', '', 1, '2018-10-10 12:06:55', NULL),
(755, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://onlinesolar.tk/admin/settings/edit-save/19', 'Update data  at Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>slider_max_value</td><td></td></tr><tr><td>content</td><td></td><td></td></tr><tr><td>content_input_type</td><td>text</td><td>number</td></tr><tr><td>dataenum</td><td></td><td></td></tr><tr><td>helper</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-10 12:07:15', NULL),
(756, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://onlinesolar.tk/admin/settings/edit-save/18', 'Update data  at Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>slider_min_value</td><td></td></tr><tr><td>content</td><td></td><td></td></tr><tr><td>content_input_type</td><td>text</td><td>number</td></tr><tr><td>dataenum</td><td></td><td></td></tr><tr><td>helper</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-10 12:07:25', NULL),
(757, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://onlinesolar.tk/admin/products/edit-save/4', 'Update data Power System 04 at Products', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>price</td><td>99.99</td><td>22</td></tr></tbody></table>', 1, '2018-10-10 12:36:55', NULL),
(758, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://onlinesolar.tk/admin/menu_management/edit-save/15', 'Update data One Time Offers at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Products</td><td>One Time Offers</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2018-10-10 12:39:15', NULL),
(759, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://onlinesolar.tk/admin/logout', 'flk-admin@yopmail.com logout', '', 1, '2018-10-10 12:42:03', NULL),
(760, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://onlinesolar.tk/admin/login', 'admin@onlinesolar.com login with IP Address 110.38.25.58', '', 2, '2018-10-10 12:42:29', NULL),
(761, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://onlinesolar.tk/admin/products/edit-save/4', 'Update data Power System 04 at Products', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>price</td><td>22</td><td>23</td></tr></tbody></table>', 2, '2018-10-10 12:42:46', NULL),
(762, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/login', 'flk-admin@yopmail.com login with IP Address 110.38.25.58', '', 1, '2018-10-11 16:12:42', NULL),
(763, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates/add-save', 'Add New Data 1 at Rates', '', 1, '2018-10-11 16:20:29', NULL),
(764, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates/add-save', 'Add New Data 2 at Rates', '', 1, '2018-10-11 16:20:44', NULL),
(765, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates/add-save', 'Add New Data 3 at Rates', '', 1, '2018-10-11 16:21:00', NULL),
(766, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates/add-save', 'Add New Data 4 at Rates', '', 1, '2018-10-11 16:21:10', NULL),
(767, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates/add-save', 'Add New Data 5 at Rates', '', 1, '2018-10-11 16:21:20', NULL),
(768, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates/add-save', 'Add New Data 6 at Rates', '', 1, '2018-10-11 16:21:44', NULL),
(769, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/settings/add-save', 'Add New Data system_size_constant at Settings', '', 1, '2018-10-11 16:22:58', NULL),
(770, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/settings/edit-save/21', 'Update data  at Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>system_size_constant</td><td></td></tr><tr><td>content</td><td></td><td></td></tr><tr><td>content_input_type</td><td>number</td><td>text</td></tr><tr><td>dataenum</td><td></td><td></td></tr><tr><td>helper</td><td></td><td></td></tr></tbody></table>', 1, '2018-10-11 16:23:28', NULL),
(771, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates/edit-save/6', 'Update data  at Rates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2018-10-11 16:27:13', NULL),
(772, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates/edit-save/5', 'Update data  at Rates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2018-10-11 16:27:19', NULL),
(773, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates/edit-save/4', 'Update data  at Rates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2018-10-11 16:27:32', NULL),
(774, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates/edit-save/2', 'Update data  at Rates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2018-10-11 16:28:47', NULL),
(775, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates/edit-save/1', 'Update data  at Rates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2018-10-11 16:29:06', NULL),
(776, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates/edit-save/3', 'Update data  at Rates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2018-10-11 16:29:12', NULL),
(777, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates/add-save', 'Add New Data 7 at Rates', '', 1, '2018-10-11 16:32:12', NULL),
(778, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates/add-save', 'Add New Data 8 at Rates', '', 1, '2018-10-11 16:32:29', NULL),
(779, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates/add-save', 'Add New Data 9 at Rates', '', 1, '2018-10-11 16:32:46', NULL),
(780, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates/add-save', 'Add New Data 10 at Rates', '', 1, '2018-10-11 16:33:05', NULL),
(781, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates/add-save', 'Add New Data 11 at Rates', '', 1, '2018-10-11 16:33:26', NULL),
(782, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates/add-save', 'Add New Data 12 at Rates', '', 1, '2018-10-11 16:33:44', NULL),
(783, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates/add-save', 'Add New Data 13 at Rates', '', 1, '2018-10-11 16:40:11', NULL),
(784, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates/add-save', 'Add New Data 14 at Rates', '', 1, '2018-10-11 16:40:27', NULL),
(785, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates/add-save', 'Add New Data 15 at Rates', '', 1, '2018-10-11 16:40:41', NULL),
(786, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates/add-save', 'Add New Data 16 at Rates', '', 1, '2018-10-11 16:41:00', NULL),
(787, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates/add-save', 'Add New Data 17 at Rates', '', 1, '2018-10-11 16:41:19', NULL),
(788, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates/add-save', 'Add New Data 18 at Rates', '', 1, '2018-10-11 16:41:30', NULL),
(789, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates/add-save', 'Add New Data 19 at Rates', '', 1, '2018-10-11 16:41:44', NULL),
(790, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates/add-save', 'Add New Data 20 at Rates', '', 1, '2018-10-11 16:41:57', NULL),
(791, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates/add-save', 'Add New Data 21 at Rates', '', 1, '2018-10-11 16:42:13', NULL),
(792, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/login', 'admin@onlinesolar.com login with IP Address 110.38.25.58', '', 2, '2018-10-11 17:57:00', NULL),
(793, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/menu_management/edit-save/19', 'Update data Rates at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>11</td><td></td></tr></tbody></table>', 1, '2018-10-11 17:57:48', NULL),
(794, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/settings/show', 'Try view the data Setting at Setting', '', 2, '2018-10-11 18:00:14', NULL),
(795, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates', 'Try view the data :name at Rates', '', 2, '2018-10-11 18:02:31', NULL),
(796, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/rates', 'Try view the data :name at Rates', '', 2, '2018-10-11 18:02:35', NULL),
(797, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/logout', 'admin@onlinesolar.com logout', '', 2, '2018-10-11 18:02:55', NULL),
(798, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://onlinesolar.tk/admin/login', 'admin@onlinesolar.com login with IP Address 110.38.25.58', '', 2, '2018-10-11 18:03:09', NULL),
(799, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 110.38.25.58', '', 2, '2018-10-12 15:59:42', NULL),
(800, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'flk-admin@yopmail.com login with IP Address 110.38.25.58', '', 1, '2018-10-12 16:00:34', NULL),
(801, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/menu_management/edit-save/15', 'Update data All Offers at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>One Time Offers</td><td>All Offers</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2018-10-12 16:15:09', NULL),
(802, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/menu_management/add-save', 'Add New Data One Time Offers at Menu Management', '', 1, '2018-10-12 16:15:42', NULL),
(803, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/logout', 'admin@onlinesolar.com logout', '', 2, '2018-10-12 16:16:54', NULL),
(804, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 110.38.25.58', '', 2, '2018-10-12 16:17:05', NULL),
(805, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 110.38.25.58', '', 2, '2018-10-12 16:37:01', NULL),
(806, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/site_settings/edit-save/1', 'Update data Online Solar at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>slider_min_value</td><td>0</td><td>50</td></tr><tr><td>slider_max_value</td><td>0</td><td>2000</td></tr><tr><td>slider_increments</td><td>0</td><td>10</td></tr><tr><td>system_size_constant</td><td>0</td><td>1.5</td></tr><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 2, '2018-10-12 16:43:01', NULL),
(807, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/site_settings/edit-save/1', 'Update data Online Solar at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>panel_make</td><td></td><td>Canadian Solar</td></tr><tr><td>panel_model</td><td></td><td>CS6K-300</td></tr><tr><td>inverter_make</td><td></td><td>SE6000H-US</td></tr><tr><td>no_of_inverters</td><td></td><td>X</td></tr><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 2, '2018-10-12 17:09:23', NULL),
(808, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/site_settings/edit-save/1', 'Update data Online Solar at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>inverter_make</td><td>SE6000H-US</td><td>SE6000H-USs</td></tr><tr><td>no_of_inverters</td><td>X</td><td>Xs</td></tr><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 2, '2018-10-12 17:10:05', NULL),
(809, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/site_settings/edit-save/1', 'Update data Online Solar at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>panel_make</td><td>Canadian Solar</td><td>Canadian Solars</td></tr><tr><td>panel_model</td><td>CS6K-300</td><td>CS6K-300s</td></tr><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 2, '2018-10-12 17:14:01', NULL),
(810, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'flk-admin@yopmail.com login with IP Address 110.38.25.58', '', 1, '2018-10-12 18:31:06', NULL),
(811, '110.38.25.58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/site_settings/edit-save/1', 'Update data Online Solar at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>disclaimer</td><td></td><td>Content Goes here...</td></tr><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 2, '2018-10-12 18:37:47', NULL),
(812, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 96.67.194.203', '', 2, '2018-10-12 21:42:39', NULL),
(813, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 110.38.25.58', '', 2, '2018-10-15 09:38:51', NULL),
(814, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 110.38.25.58', '', 2, '2018-10-15 11:49:55', NULL),
(815, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://199.250.201.124/~solar/admin/customers/edit-save/242', 'Update data Cathy at Customers', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$bxq9Tn/D8zioMi0Z2Q80a.d7PI0xF8NuSlwDar6LoOrsSzED6x8Ni</td><td></td></tr><tr><td>text_pass</td><td>92sBTNXp</td><td></td></tr><tr><td>phone</td><td>(731) 617-4489</td><td>123456789</td></tr><tr><td>address</td><td></td><td>fdgdfg</td></tr><tr><td>confirm_code</td><td>SLP2423062</td><td></td></tr><tr><td>status</td><td>0</td><td>1</td></tr><tr><td>remember_token</td><td></td><td></td></tr></tbody></table>', 2, '2018-10-15 11:50:38', NULL),
(816, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://199.250.201.124/~solar/admin/customers/edit-save/242', 'Update data Cathy at Customers', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$bxq9Tn/D8zioMi0Z2Q80a.d7PI0xF8NuSlwDar6LoOrsSzED6x8Ni</td><td>$2y$10$wdiQcEUqx71dIMO6TaXvh.WZJL6OtNFBfdv1n6T/i5QLesAXBlnui</td></tr><tr><td>text_pass</td><td>92sBTNXp</td><td></td></tr><tr><td>confirm_code</td><td>SLP2423062</td><td></td></tr><tr><td>remember_token</td><td></td><td></td></tr></tbody></table>', 2, '2018-10-15 11:51:55', NULL),
(817, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://199.250.201.124/~solar/admin/rates/add-save', 'Add New Data 22 at Rates', '', 2, '2018-10-15 13:55:37', NULL),
(818, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://199.250.201.124/~solar/admin/rates/delete/22', 'Delete data 22 at Rates', '', 2, '2018-10-15 13:55:49', NULL),
(819, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://199.250.201.124/~solar/admin/rates/add-save', 'Add New Data 22 at Rates', '', 2, '2018-10-15 14:02:16', NULL),
(820, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://199.250.201.124/~solar/admin/rates/delete/22', 'Delete data 22 at Rates', '', 2, '2018-10-15 14:02:27', NULL),
(821, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://199.250.201.124/~solar/admin/rates/add-save', 'Add New Data 22 at Rates', '', 2, '2018-10-15 14:02:39', NULL),
(822, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://199.250.201.124/~solar/admin/rates/delete/22', 'Delete data 22 at Rates', '', 2, '2018-10-15 14:02:58', NULL),
(823, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://199.250.201.124/~solar/admin/customers/add-save', 'Add New Data Sarah at Customers', '', 2, '2018-10-15 14:04:13', NULL),
(824, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://199.250.201.124/~solar/admin/customers/edit-save/243', 'Update data Sarah at Customers', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$qrBOvyEmzh7yMHS.6JXXvOx2Syb0vSC2iKz98JcSH8x3/RhUz7QIS</td><td></td></tr><tr><td>text_pass</td><td></td><td></td></tr><tr><td>confirm_code</td><td></td><td></td></tr><tr><td>status</td><td>1</td><td>0</td></tr><tr><td>remember_token</td><td>3jOzUXLUXnpAvZ11cxoiRtIktvdM6hxUgTpCISCYXLhtdcUMb1yGWAv5EvsH</td><td></td></tr></tbody></table>', 2, '2018-10-15 14:04:59', NULL),
(825, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://199.250.201.124/~solar/admin/customers/delete/243', 'Delete data Sarah at Customers', '', 2, '2018-10-15 14:08:35', NULL),
(826, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://199.250.201.124/~solar/admin/customers/delete/243', 'Delete data Sarah at Customers', '', 2, '2018-10-15 14:08:35', NULL),
(827, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://199.250.201.124/~solar/admin/products/add-save', 'Add New Data testing at Products', '', 2, '2018-10-15 14:09:36', NULL),
(828, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://199.250.201.124/~solar/admin/products/delete/5', 'Delete data testing at Products', '', 2, '2018-10-15 14:15:12', NULL),
(829, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://199.250.201.124/~solar/admin/site_settings/edit-save/1', 'Update data Online Solar at Site Settings', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>slider_min_value</td><td>50</td><td>51</td></tr><tr><td>slider_increments</td><td>10</td><td>5</td></tr><tr><td>last_updated</td><td>2018-08-08 00:00:00</td><td></td></tr></tbody></table>', 2, '2018-10-15 14:16:09', NULL),
(830, '110.38.25.58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://199.250.201.124/~solar/admin/customers/delete/242', 'Delete data Cathy at Customers', '', 2, '2018-10-15 14:30:35', NULL),
(831, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 96.67.194.203', '', 2, '2018-10-16 22:50:02', NULL),
(832, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/action-selected', 'Delete data 237 at Customers', '', 2, '2018-10-16 22:52:33', NULL),
(833, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/delete/244', 'Delete data Vince at Customers', '', 2, '2018-10-16 22:54:49', NULL),
(834, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/action-selected', 'Delete data 241,240,239,238,235,232,231,230,229,228,226,225,224,223,222,221,220,218,217,216 at Customers', '', 2, '2018-10-16 23:02:40', NULL),
(835, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/action-selected', 'Delete data 245,214,212,211,210,209,208,207,206,205,204,202,201,200,199,198,197,196,195,194 at Customers', '', 2, '2018-10-16 23:02:47', NULL),
(836, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/action-selected', 'Delete data 193,192,191,190,189,188,187,186,180,179,178,177,173,172,170,169,166,165,164,163 at Customers', '', 2, '2018-10-16 23:02:51', NULL),
(837, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'http://199.250.201.124/~solar/admin/customers/action-selected', 'Delete data 157,156,154,153,152,151,150,147,145,120,115,107,104,101,52,51,50,49,1 at Customers', '', 2, '2018-10-16 23:02:56', NULL),
(838, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://www.onlinesolar.tk/admin/login', 'admin@onlinesolar.com login with IP Address 96.67.194.203', '', 2, '2018-10-18 00:21:43', NULL),
(839, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://www.onlinesolar.tk/admin/customers/delete/246', 'Delete data Vince at Customers', '', 2, '2018-10-18 00:22:07', NULL),
(840, '141.101.168.21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://www.onlinesolar.tk/admin/login', 'admin@onlinesolar.com login with IP Address 141.101.168.21', '', 2, '2018-10-18 22:44:43', NULL),
(841, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://www.onlinesolar.tk/admin/login', 'admin@onlinesolar.com login with IP Address 96.67.194.203', '', 2, '2018-10-18 23:02:35', NULL),
(842, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://www.onlinesolar.tk/admin/customers/delete/247', 'Delete data Vince at Customers', '', 2, '2018-10-18 23:04:49', NULL),
(843, '96.67.194.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'https://www.onlinesolar.tk/admin/login', 'admin@onlinesolar.com login with IP Address 96.67.194.203', '', 2, '2018-10-19 01:20:23', NULL),
(844, '182.176.178.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'flk-admin@yopmail.com login with IP Address 182.176.178.18', '', 1, '2018-12-15 13:03:14', NULL),
(845, '104.236.195.147', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 104.236.195.147', '', 2, '2018-12-21 18:34:22', NULL),
(846, '104.236.74.212', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'http://199.250.201.124/~solar/admin/login', 'admin@onlinesolar.com login with IP Address 104.236.74.212', '', 2, '2018-12-22 12:50:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Sizes', 'Route', 'AdminSizesControllerGetIndex', 'normal', 'fa fa-tags', 20, 1, 0, 1, 3, '2018-08-07 02:13:03', '2018-08-07 02:50:17'),
(9, 'Site Settings', 'Route', 'AdminSiteSettingsControllerGetIndex', 'normal', 'fa fa-cogs', 0, 1, 0, 1, 5, '2018-08-08 00:02:07', '2018-08-30 02:44:48'),
(13, 'Customers', 'Route', 'AdminCustomersControllerGetIndex', 'normal', 'fa fa-user-plus', 0, 1, 0, 1, 2, '2018-08-09 01:24:19', '2018-08-30 02:52:32'),
(15, 'All Offers', 'Route', 'AdminProductsControllerGetIndex', 'normal', 'fa fa-barcode', 20, 1, 0, 1, 1, '2018-08-09 01:58:54', '2018-10-12 16:15:09'),
(16, 'Counters', 'Statistic', 'statistic_builder/show/products', 'normal', 'fa fa-music', 0, 1, 1, 1, 1, '2018-08-30 03:08:22', NULL),
(17, 'Colors', 'Route', 'AdminColorsControllerGetIndex', 'normal', 'fa fa-tags', 20, 1, 0, 1, 2, '2018-09-19 15:15:37', '2018-09-19 17:33:58'),
(18, 'Orders', 'Route', 'AdminOrdersControllerGetIndex', 'normal', 'fa fa-cubes', 0, 1, 0, 1, 3, '2018-09-19 15:52:01', '2018-09-19 17:40:35'),
(19, 'Rates', 'Route', 'AdminRatesControllerGetIndex', 'normal', 'fa fa-dollar', 0, 1, 0, 1, 6, '2018-10-11 16:18:41', '2018-10-11 17:57:48'),
(20, 'One Time Offers', 'Module', 'products', 'normal', 'fa fa-barcode', 0, 1, 0, 1, 4, '2018-10-12 16:15:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(6, 3, 2),
(7, 3, 1),
(8, 2, 1),
(10, 4, 2),
(11, 4, 1),
(12, 1, 2),
(13, 1, 1),
(14, 5, 1),
(18, 7, 2),
(19, 7, 1),
(20, 6, 2),
(21, 6, 1),
(22, 8, 2),
(23, 8, 1),
(26, 11, 1),
(33, 14, 2),
(34, 14, 1),
(35, 9, 2),
(36, 9, 1),
(37, 12, 2),
(38, 12, 1),
(39, 10, 2),
(40, 10, 1),
(45, 13, 2),
(46, 13, 1),
(47, 16, 2),
(48, 16, 1),
(51, 17, 2),
(52, 17, 1),
(53, 18, 2),
(54, 18, 1),
(57, 19, 2),
(58, 19, 1),
(59, 15, 2),
(60, 15, 1),
(61, 20, 2),
(62, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2018-08-06 00:50:35', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2018-08-06 00:50:35', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2018-08-06 00:50:35', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2018-08-06 00:50:35', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 0, 1, '2018-08-06 00:50:35', NULL, '2018-08-07 04:19:20'),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2018-08-06 00:50:35', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2018-08-06 00:50:35', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2018-08-06 00:50:35', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2018-08-06 00:50:35', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2018-08-06 00:50:35', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2018-08-06 00:50:35', NULL, NULL),
(12, 'Sizes', 'fa fa-tags', 'sizes', 'sizes', 'AdminSizesController', 0, 0, '2018-08-07 02:13:03', NULL, NULL),
(13, 'Customers', 'fa fa-user', 'customers', 'users', 'AdminCustomersController', 0, 0, '2018-08-07 02:21:39', NULL, '2018-08-09 01:23:38'),
(14, 'Brands', 'fa fa-tags', 'brands', 'brands', 'AdminBrandsController', 0, 0, '2018-08-07 02:32:41', NULL, '2018-08-09 01:14:03'),
(15, 'Products', 'fa fa-barcode', 'products', 'products', 'AdminProductsController', 0, 0, '2018-08-07 02:39:38', NULL, '2018-08-09 01:17:18'),
(16, 'Settings', 'fa fa-cogs', 'settings', 'brands', 'AdminBrands16Controller', 0, 0, '2018-08-07 04:09:38', NULL, '2018-08-07 04:19:33'),
(17, 'Questions', 'fa fa-search', 'questions', 'questions', 'AdminQuestionsController', 0, 0, '2018-08-07 06:00:47', NULL, '2018-08-09 01:22:10'),
(18, 'Survey Form', 'fa fa-envelope-o', 'survey_form', 'survey_form', 'AdminSurveyFormController', 0, 0, '2018-08-07 06:03:12', NULL, NULL),
(19, 'Testimonials', 'fa fa-inbox', 'testimonials', 'testimonials', 'AdminTestimonialsController', 0, 0, '2018-08-07 06:11:02', NULL, '2018-08-09 01:31:04'),
(20, 'Site Settings', 'fa fa-cogs', 'site_settings', 'settings', 'AdminSiteSettingsController', 0, 0, '2018-08-08 00:02:06', NULL, NULL),
(21, 'Colors', 'fa fa-tags', 'colors', 'colors', 'AdminBrandsController', 0, 0, '2018-08-09 01:14:17', NULL, '2018-09-19 15:15:12'),
(22, 'Products', 'fa fa-barcode', 'products', 'products', 'AdminProductsController', 0, 0, '2018-08-09 01:18:11', NULL, '2018-08-09 01:58:32'),
(23, 'Questions', 'fa fa-search', 'questions', 'questions', 'AdminQuestionsController', 0, 0, '2018-08-09 01:22:28', NULL, NULL),
(24, 'Customers', 'fa fa-user-plus', 'customers', 'users', 'AdminCustomersController', 0, 0, '2018-08-09 01:24:19', NULL, NULL),
(25, 'Testimonials', 'fa fa-flag', 'testimonials', 'testimonials', 'AdminTestimonialsController', 0, 0, '2018-08-09 01:31:34', NULL, NULL),
(26, 'One Time Offers', 'fa fa-clock-o', 'products', 'products', 'AdminProductsController', 0, 0, '2018-08-09 01:58:54', NULL, NULL),
(27, 'Colors', 'fa fa-tags', 'colors', 'colors', 'AdminColorsController', 0, 0, '2018-09-19 15:15:37', NULL, NULL),
(28, 'Orders', 'fa fa-cubes', 'orders', 'orders', 'AdminOrdersController', 0, 0, '2018-09-19 15:52:01', NULL, NULL),
(29, 'Rates', 'fa fa-dollar', 'rates', 'rates', 'AdminRatesController', 0, 0, '2018-10-11 16:18:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2018-08-06 00:50:35', NULL),
(2, 'Admin', 0, 'skin-purple', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2018-08-06 00:50:35', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2018-08-06 00:50:35', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2018-08-06 00:50:35', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2018-08-06 00:50:36', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2018-08-06 00:50:36', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2018-08-06 00:50:36', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2018-08-06 00:50:36', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2018-08-06 00:50:36', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2018-08-06 00:50:36', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2018-08-06 00:50:36', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2018-08-06 00:50:36', NULL),
(13, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(22, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(23, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(24, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(25, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(34, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(35, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(36, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(37, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(38, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
(39, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
(40, 1, 1, 1, 1, 1, 1, 26, NULL, NULL),
(58, 1, 1, 1, 1, 1, 1, 27, NULL, NULL),
(59, 1, 1, 1, 1, 1, 1, 28, NULL, NULL),
(79, 1, 1, 1, 1, 1, 1, 29, NULL, NULL),
(80, 1, 1, 1, 1, 1, 2, 14, NULL, NULL),
(81, 1, 1, 1, 1, 1, 2, 21, NULL, NULL),
(82, 1, 1, 1, 1, 1, 2, 27, NULL, NULL),
(83, 1, 1, 1, 1, 1, 2, 13, NULL, NULL),
(84, 1, 1, 1, 1, 1, 2, 24, NULL, NULL),
(85, 1, 1, 1, 1, 1, 2, 26, NULL, NULL),
(86, 1, 1, 1, 1, 1, 2, 28, NULL, NULL),
(87, 1, 1, 1, 1, 1, 2, 15, NULL, NULL),
(88, 1, 1, 1, 1, 1, 2, 22, NULL, NULL),
(89, 1, 1, 1, 1, 1, 2, 17, NULL, NULL),
(90, 1, 1, 1, 1, 1, 2, 23, NULL, NULL),
(91, 1, 1, 1, 1, 1, 2, 29, NULL, NULL),
(92, 1, 1, 1, 1, 1, 2, 5, NULL, NULL),
(93, 1, 1, 1, 1, 1, 2, 16, NULL, NULL),
(94, 1, 1, 1, 1, 1, 2, 20, NULL, NULL),
(95, 1, 1, 1, 1, 1, 2, 12, NULL, NULL),
(96, 1, 1, 1, 1, 1, 2, 18, NULL, NULL),
(97, 1, 1, 1, 1, 1, 2, 19, NULL, NULL),
(98, 1, 1, 1, 1, 1, 2, 25, NULL, NULL),
(99, 1, 1, 1, 1, 1, 2, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2018-08-06 00:50:36', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2018-08-06 00:50:36', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2018-08-06 00:50:36', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2018-08-06 00:50:36', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2018-08-06 00:50:36', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2018-08-06 00:50:36', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2018-08-06 00:50:36', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2018-08-06 00:50:36', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2018-08-06 00:50:36', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'Online Solar', 'text', NULL, NULL, '2018-08-06 00:50:36', '2018-10-15 14:16:09', 'Application Setting', 'Application Name'),
(12, 'logo', 'uploads/2018-08/94912edcd3fd81442f9a1cf4845bd1af.png', 'upload_image', NULL, NULL, '2018-08-06 00:50:36', '2018-08-30 03:10:30', 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2018-08/4bf8cf7b7d60f36a4c03c91ba9881a57.jpg', 'upload_image', NULL, NULL, '2018-08-06 00:50:36', NULL, 'Application Setting', 'Favicon'),
(17, 'currency', '$', 'text', 'change currency', '$', '2018-08-07 06:48:29', '2018-08-07 06:56:03', 'Application Setting', 'Currency'),
(18, 'slider_min_value', '50', 'number', NULL, NULL, '2018-10-10 12:06:17', '2018-10-12 16:43:01', 'General Setting', 'Slider Min Value'),
(19, 'slider_max_value', '2000', 'number', NULL, NULL, '2018-10-10 12:06:30', '2018-10-12 16:43:01', 'General Setting', 'Slider Max Value'),
(20, 'slider_increments', '10', 'number', NULL, NULL, '2018-10-10 12:06:55', '2018-10-12 16:43:01', 'General Setting', 'Slider Increments'),
(21, 'system_size_constant', '1.5', 'text', NULL, NULL, '2018-10-11 16:22:58', '2018-10-12 16:43:01', 'General Setting', 'System Size Constant');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Counter', 'products', '2018-08-30 02:52:45', '2018-08-30 03:06:58');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(1, 1, 'c364835ac3feca1f03fa26ce6220afd1', 'smallbox', NULL, 0, 'Untitled', NULL, '2018-08-30 02:53:22', NULL),
(2, 1, '910fa6683d735864e8a75a34079de48e', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Total Customers\",\"icon\":\"ion-ios-people\",\"color\":\"bg-aqua\",\"link\":\"admin\\/customers\",\"sql\":\"select count(id) from users\"}', '2018-08-30 02:53:29', NULL),
(3, 1, 'dcf96552b2662eb7cf6041f5ee5ceb87', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Total Colors\",\"icon\":\"ion-ios-pricetag\",\"color\":\"bg-yellow\",\"link\":\"admin\\/colors\",\"sql\":\"select count(\'id\') From colors\"}', '2018-08-30 02:53:34', NULL),
(4, 1, 'c6bdbe6563f8a35d4982c7cd9cc766f7', 'smallbox', 'area4', 0, NULL, '{\"name\":\"Total Sizes\",\"icon\":\"ion-ios-pricetag\",\"color\":\"bg-red\",\"link\":\"admin\\/sizes\",\"sql\":\"Select count(id) from sizes\"}', '2018-08-30 02:53:37', NULL),
(5, 1, '6303c6d1fc61e5503d71d41f9196858b', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Orders\",\"icon\":\"ion-cube\",\"color\":\"bg-green\",\"link\":\"admin\\/orders\",\"sql\":\"Select count(id) from orders\"}', '2018-08-30 02:53:49', NULL),
(6, 1, '90d5d391d7a4ef74fa30ff24df888133', 'chartarea', NULL, 0, 'Untitled', NULL, '2018-12-15 13:06:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', 'uploads/1/2018-08/final1.jpg', 'flk-admin@yopmail.com', '$2y$10$vA1w8Wn87hEhyCfE34tdNe05zQR2V2IqG7m8NT2PvpA/Em83opZOi', 1, '2018-08-06 00:50:35', '2018-08-07 04:41:16', 'Active'),
(2, 'Admin', 'uploads/1/2018-08/chrysanthemum.jpg', 'admin@onlinesolar.com', '$2y$10$L8v/heE317bIDqNgwsmTo.5HKI0z5fl.mEVnB1yPP4ZeHXlFpEWKO', 2, '2018-08-07 03:54:51', '2018-08-30 02:43:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Grey', 1, '2018-09-19 11:23:26', NULL),
(2, 'Red', 1, '2018-09-19 11:23:34', NULL),
(3, 'Green', 1, '2018-09-19 11:23:45', NULL),
(4, 'Blue', 1, '2018-09-19 11:23:51', NULL),
(5, 'Yellow', 1, '2018-09-19 11:23:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_151211_add_details_cms_logs', 1),
(5, '2016_08_07_152014_add_table_cms_privileges', 1),
(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(7, '2016_08_07_152320_add_table_cms_settings', 1),
(8, '2016_08_07_152421_add_table_cms_users', 1),
(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1),
(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `electric_bill` varchar(255) NOT NULL,
  `electric_killowatt` varchar(255) NOT NULL,
  `electric_yrs` varchar(255) NOT NULL,
  `incentives` varchar(255) NOT NULL,
  `taxes` varchar(255) DEFAULT NULL,
  `sys_size` varchar(255) NOT NULL,
  `panel_make` varchar(255) NOT NULL,
  `panel_modle` varchar(255) NOT NULL,
  `number_of_panel` varchar(255) NOT NULL,
  `invertor` varchar(255) NOT NULL,
  `number_of_invertor` varchar(255) NOT NULL,
  `discounts` varchar(255) NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  `schedul_time` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `utility_bill` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_id`, `payment_method`, `electric_bill`, `electric_killowatt`, `electric_yrs`, `incentives`, `taxes`, `sys_size`, `panel_make`, `panel_modle`, `number_of_panel`, `invertor`, `number_of_invertor`, `discounts`, `total_amount`, `schedul_time`, `size`, `color`, `utility_bill`, `status`, `created_at`, `updated_at`) VALUES
(1, 173, 'SLP001', 'stripe', '19890', '5000', '98756', '13923', NULL, '5.1', 'Canadian Solar', 'CS6K-300', '17', 'SE6000H-US', '2', '0', '0', NULL, '', '', 'property-20180404001112.png', 0, '2018-09-19 12:16:03', '2018-09-19 12:35:23'),
(3, 173, 'SLP002', 'stripe', '99.99', '', '', '', NULL, '', 'Power System 04', '', '', '', '', '0', '0', NULL, NULL, NULL, NULL, 0, '2018-09-19 12:31:04', '2018-09-19 12:31:04'),
(4, 173, 'SLP002', 'stripe', '98', '', '', '', NULL, '', 'Power System 02', '', '', '', '', '0', '0', NULL, '75 Inch', 'Green', NULL, 0, '2018-09-19 12:31:04', '2018-09-19 12:31:04'),
(5, 178, 'SLP003', 'stripe', '76680', '21250', '559618', '53676', NULL, '21.3', 'Canadian Solar', 'CS6K-300', '71', 'SE6000H-US', '2', '0', '0', NULL, '', '', 'Desert.jpg', 0, '2018-09-19 13:33:37', '2018-09-19 13:34:43'),
(6, 178, 'SLP005', 'stripe', '99.99', '', '', '', NULL, '', 'Power System 04', '', '', '', '', '0', '0', NULL, '80 Inch', 'Yellow', 'Lighthouse.jpg', 0, '2018-09-19 13:35:26', '2018-09-19 13:36:05'),
(7, 179, 'SLP006', 'stripe', '75600', '21000', '553034', '52920', NULL, '21', 'Canadian Solar', 'CS6K-300', '70', 'SE6000H-US', '2', '0', '0', NULL, '', '', 'Hydrangeas.jpg', 0, '2018-09-19 13:51:35', '2018-09-19 13:52:24'),
(8, 179, 'SLP007', 'stripe', '75600', '20750', '546451', '52920', NULL, '21', 'Canadian Solar', 'CS6K-300', '70', 'SE6000H-US', '2', '0', '0', NULL, '', '', NULL, 0, '2018-09-19 14:02:22', '2018-09-19 14:02:22'),
(9, 179, 'SLP008', 'stripe', '81000', '22500', '592537', '56700', NULL, '22.5', 'Canadian Solar', 'CS6K-300', '75', 'SE6000H-US', '2', '0', '0', NULL, '', '', 'Tulips.jpg', 0, '2018-09-19 14:04:16', '2018-09-19 14:05:06'),
(10, 179, 'SLP009', 'stripe', '98', '', '', '', NULL, '', 'Power System 02', '', '', '', '', '0', '0', NULL, '70 Inch', 'Red', 'Jellyfish.jpg', 0, '2018-09-19 14:05:52', '2018-09-19 14:06:26'),
(11, 189, 'SLP0010', 'paypal', '61050', '16500', '434527', '42735', NULL, '16.5', 'Canadian Solar', 'CS6K-300', '55', 'SE6000H-US', '2', '0', '0', NULL, '', '', NULL, 0, '2018-09-22 06:59:00', '2018-09-22 06:59:00'),
(12, 191, 'SLP0011', 'paypal', '55500', '14750', '388441', '38850', NULL, '15', 'Canadian Solar', 'CS6K-300', '50', 'SE6000H-US', '2', '0', '0', NULL, '', '', NULL, 0, '2018-09-22 07:06:58', '2018-09-22 07:06:58'),
(13, 191, 'SLP0012', 'paypal', '22230', '5429', '125091', '15561', NULL, '5.7', 'Canadian Solar', 'CS6K-300', '19', 'SE6000H-US', '2', '0', '0', NULL, '', '', NULL, 0, '2018-09-22 07:09:21', '2018-09-22 07:09:21'),
(14, 191, 'SLP0013', 'paypal', '16758', '4000', '79005', '11730', NULL, '4.2', 'Canadian Solar', 'CS6K-300', '14', 'SE6000H-US', '2', '0', '0', NULL, '', '', NULL, 0, '2018-09-22 07:10:45', '2018-09-22 07:10:45'),
(15, 196, 'SLP0014', 'paypal', '84240', '23250', '612288', '58968', NULL, '23.4', 'Canadian Solar', 'CS6K-300', '78', 'SE6000H-US', '2', '0', '0', NULL, '', '', 'Jellyfish.jpg', 0, '2018-09-22 08:04:29', '2018-09-22 08:04:44'),
(16, 150, 'SLP0015', 'stripe', '14364', '3334', '65837', '10054', NULL, '3.6', 'Canadian Solar', 'CS6K-300', '12', 'SE6000H-US', '2', '0', '0', NULL, '', '', 'color_logo_transparent.png', 0, '2018-09-22 08:15:10', '2018-09-22 08:15:34'),
(17, 197, 'SLP0016', 'stripe', '33060', '8500', '223847', '23142', NULL, '8.7', 'Canadian Solar', 'CS6K-300', '29', 'SE6000H-US', '2', '0', '0', NULL, '', '', 'Desert.jpg', 0, '2018-09-22 09:57:29', '2018-09-22 09:57:42'),
(18, 198, 'SLP0017', 'paypal', '37620', '9750', '256766', '26334', NULL, '9.9', 'Canadian Solar', 'CS6K-300', '33', 'SE6000H-US', '2', '0', '0', NULL, '', '', 'Tulips.jpg', 0, '2018-09-22 10:03:08', '2018-09-22 10:03:26'),
(19, 197, 'SLP0018', 'stripe', '99.99', '', '', '', NULL, '', 'Power System 04', '', '', '', '', '0', '0', NULL, '70 Inch', 'Grey', 'Jellyfish.jpg', 0, '2018-09-22 10:17:11', '2018-09-22 10:17:23'),
(20, 197, 'SLP0018', 'stripe', '49950', '13250', '348938', '34965', NULL, '13.5', 'Canadian Solar', 'CS6K-300', '45', 'SE6000H-US', '2', '0', '0', NULL, '', '', 'Jellyfish.jpg', 0, '2018-09-22 10:17:12', '2018-09-22 10:17:23'),
(21, 147, 'SLP0020', 'stripe', '35340', '9250', '243598', '24738', NULL, '9.3', 'Canadian Solar', 'CS6K-300', '31', 'SE6000H-US', '2', '0', '0', NULL, '', '', 'ice.jpg', 0, '2018-09-22 10:21:38', '2018-09-22 10:21:53'),
(22, 199, 'SLP0021', 'stripe', '52170', '14000', '368690', '36519', NULL, '14.1', 'Canadian Solar', 'CS6K-300', '47', 'SE6000H-US', '2', '0', '0', NULL, '', '', 'Desert.jpg', 0, '2018-09-22 12:27:51', '2018-09-22 12:28:11'),
(23, 211, 'SLP0022', 'stripe', '51060', '13750', '362106', '35742', NULL, '13.8', 'Canadian Solar', 'CS6K-300', '46', 'SE6000H-US', '2', '0', '0', NULL, '', '', NULL, 0, '2018-09-26 10:18:49', '2018-09-26 10:18:49'),
(24, 169, 'SLP0023', 'stripe', '19890', '5000', '98756', '13923', NULL, '5.1', 'Canadian Solar', 'CS6K-300', '17', 'SE6000H-US', '2', '0', '0', NULL, '', '', 'pirates-of-the-caribbean-skull-2048x1152.jpg', 0, '2018-09-26 12:16:04', '2018-09-26 12:24:46'),
(25, 217, 'SLP0024', 'paypal', '35340', '9232', '197512', '24738', NULL, '9.3', 'Canadian Solar', 'CS6K-300', '31', 'SE6000H-US', '2', '0', '0', NULL, '', '', 'Tulips.jpg', 0, '2018-09-29 11:42:39', '2018-09-29 11:42:52'),
(26, 218, 'SLP0025', 'paypal', '16758', '4051', '79005', '11730', NULL, '4.2', 'Canadian Solar', 'CS6K-300', '14', 'SE6000H-US', '2', '0', '0', NULL, '', '', NULL, 0, '2018-09-29 11:55:48', '2018-09-29 11:55:48'),
(27, 223, 'SLP0026', 'stripe', '67890', '18462', '395024', '47523', NULL, '18.6', 'Canadian Solar', 'CS6K-300', '62', 'SE6000H-US', '2', '0', '0', NULL, '', '', 'Desert.jpg', 0, '2018-10-01 05:52:51', '2018-10-01 05:53:03'),
(28, 226, 'SLP0027', 'stripe', '25410', '6334', '125091', '17787', NULL, '6.6', 'Canadian Solar', 'CS6K-300', '22', 'SE6000H-US', '2', '0', '0', NULL, '', '', 'Chrysanthemum.jpg', 0, '2018-10-01 13:17:02', '2018-10-01 13:17:23'),
(29, 226, 'SLP0027', 'stripe', '33060', '8616', '184345', '23142', NULL, '8.7', 'Canadian Solar', 'CS6K-300', '29', 'SE6000H-US', '2', '0', '0', NULL, '', '', 'Chrysanthemum.jpg', 0, '2018-10-01 13:17:02', '2018-10-01 13:17:23'),
(30, 226, 'SLP0028', 'stripe', '27720', '7082', '146159', '19404', NULL, '7.2', 'Canadian Solar', 'CS6K-300', '24', 'SE6000H-US', '2', '0', '0', NULL, '', '', 'Desert - Copy - Copy (2) - Copy.jpg', 0, '2018-10-01 13:23:48', '2018-10-01 13:24:19'),
(31, 229, 'SLP0030', 'paypal', '25410', '6334', '125091', '17787', NULL, '6.6', 'Canadian Solar', 'CS6K-300', '22', 'SE6000H-US', '2', '0', '0', NULL, '', '', NULL, 0, '2018-10-02 06:21:50', '2018-10-02 06:21:50'),
(32, 235, 'SLP0031', 'stripe', '17955', '4389', '85589', '12568', NULL, '4.5', 'Canadian Solar', 'CS6K-300', '15', 'SE6000H-US', '2', '0', '0', NULL, '', '', 'Chrysanthemum.jpg', 0, '2018-10-08 10:46:34', '2018-10-08 10:47:19'),
(33, 235, 'SLP0032', 'paypal', '98', '', '', '', NULL, '', 'Power System 02', '', '', '', '', '0', '0', NULL, '65 Inch', 'Grey', NULL, 0, '2018-10-08 11:05:09', '2018-10-08 11:05:09'),
(34, 169, 'SLP0033', 'stripe', '21060', '5334', '105340.00', '14742', NULL, '5.4', 'Canadian Solar', 'CS6K-300', '18', 'SE6000H-US', '2', '0', '0', NULL, '', '', 'blog-1.png', 0, '2018-10-10 08:37:59', '2018-10-10 08:38:30'),
(35, 169, 'SLP0034', 'stripe', '11475', '2667', '46086.00', '8032', NULL, '2.7', 'Canadian Solar', 'CS6K-300', '9', 'SE6000H-US', '2', '0', '0', NULL, '', '', 'blog-1.png', 0, '2018-10-10 08:44:09', '2018-10-10 08:44:19'),
(36, 240, 'SLP0035', 'stripe', '67890', '18462', '395024', '47523', NULL, '18.6', 'Canadian Solar', 'CS6K-300', '62', 'SE6000H-US', '2', '0', '0', NULL, '', '', 'blog-2.png', 0, '2018-10-12 12:47:46', '2018-10-12 12:48:25'),
(37, 252, 'SLP0036', 'stripe', '21060', '5367', '105998', '14742', NULL, '5.4', 'Canadian Solars', 'CS6K-300s', '18', 'SE6000H-USs', 'Xs', '0', '0', NULL, '', '', NULL, 0, '2018-11-13 12:19:46', '2018-11-13 12:19:46'),
(38, 252, 'SLP0036', 'stripe', '22230', '5700', '112582', '15561', NULL, '5.7', 'Canadian Solars', 'CS6K-300s', '19', 'SE6000H-USs', 'Xs', '0', '0', NULL, '', '', NULL, 0, '2018-11-13 12:19:46', '2018-11-13 12:19:46');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` float(11,2) NOT NULL,
  `description` text DEFAULT NULL,
  `sizes` text NOT NULL,
  `colors` text NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `description`, `sizes`, `colors`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Power System 01', 99.00, 'Lorem ipsum dolor sit amet.', '65 Inch;70 Inch;75 Inch;80 Inch;85 Inch', 'Grey;Red;Green;Blue;Yellow', 'uploads/1/2018-09/pro_1.jpg', 1, '2018-09-19 11:32:21', '2018-09-19 11:32:39'),
(2, 'Power System 02', 98.00, 'Lorem ipsum dolor sit amet.', '65 Inch;70 Inch;75 Inch;80 Inch;85 Inch', 'Grey;Red;Green;Blue;Yellow', 'uploads/1/2018-09/pro_1.jpg', 1, '2018-09-19 11:33:17', NULL),
(3, 'Power System 03', 89.00, 'Lorem ipsum dolor sit amet.', '65 Inch;70 Inch;75 Inch', 'Grey;Green;Blue;Yellow', 'uploads/1/2018-09/pro_1.jpg', 0, '2018-09-19 11:33:44', '2018-09-19 11:45:04'),
(4, 'Power System 04', 23.00, 'Lorem ipsum dolor sit amet.', '70 Inch;80 Inch;85 Inch', 'Grey;Green;Yellow', 'uploads/1/2018-09/pro_1.jpg', 1, '2018-09-19 11:44:27', '2018-10-10 08:42:46');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'tesaeas', 1, '2018-08-09 06:23:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `min_fac` int(11) NOT NULL,
  `max_fac` int(11) NOT NULL,
  `rate` float NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `type`, `min_fac`, `max_fac`, `rate`, `status`, `created_at`, `updated_at`) VALUES
(1, 'On Bill Selection', 51, 80, 0.21, 1, '2018-10-11 12:20:29', '2018-10-11 12:29:06'),
(2, 'On Bill Selection', 90, 100, 0.217, 1, '2018-10-11 12:20:44', '2018-10-11 12:28:45'),
(3, 'On Bill Selection', 110, 150, 0.237, 1, '2018-10-11 12:21:00', '2018-10-11 12:29:12'),
(4, 'On Bill Selection', 160, 200, 0.24, 1, '2018-10-11 12:21:10', '2018-10-11 12:27:32'),
(5, 'On Bill Selection', 210, 250, 0.25, 1, '2018-10-11 12:21:20', '2018-10-11 12:27:19'),
(6, 'On Bill Selection', 250, 2000, 0.26, 1, '2018-10-11 12:21:44', '2018-10-11 12:27:13'),
(7, 'On Size Selection', 1905, 3048, 0.21, 1, '2018-10-11 12:32:12', NULL),
(8, 'On Size Selection', 3317, 3687, 0.217, 1, '2018-10-11 12:32:29', NULL),
(9, 'On Size Selection', 3713, 5063, 0.237, 1, '2018-10-11 12:32:46', NULL),
(10, 'On Size Selection', 5333, 6667, 0.24, 1, '2018-10-11 12:33:05', NULL),
(11, 'On Size Selection', 6702, 8000, 0.25, 1, '2018-10-11 12:33:26', NULL),
(12, 'On Size Selection', 8000, 50000, 0.26, 1, '2018-10-11 12:33:43', NULL),
(13, 'For System Price', 0, 3, 4.25, 1, '2018-10-11 12:40:11', NULL),
(14, 'For System Price', 3, 5, 3.99, 1, '2018-10-11 12:40:27', NULL),
(15, 'For System Price', 5, 6, 3.9, 1, '2018-10-11 12:40:41', NULL),
(16, 'For System Price', 6, 8, 3.85, 1, '2018-10-11 12:41:00', NULL),
(17, 'For System Price', 8, 10, 3.8, 1, '2018-10-11 12:41:19', NULL),
(18, 'For System Price', 10, 12, 3.77, 1, '2018-10-11 12:41:30', NULL),
(19, 'For System Price', 12, 17, 3.7, 1, '2018-10-11 12:41:44', NULL),
(20, 'For System Price', 17, 20, 3.65, 1, '2018-10-11 12:41:57', NULL),
(21, 'For System Price', 20, 100, 3.6, 1, '2018-10-11 12:42:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `site_logo` text DEFAULT NULL,
  `currency` text NOT NULL,
  `slider_min_value` float NOT NULL,
  `slider_max_value` float NOT NULL,
  `slider_increments` float NOT NULL,
  `system_size_constant` float NOT NULL,
  `panel_make` varchar(255) NOT NULL,
  `panel_model` varchar(255) NOT NULL,
  `inverter_make` varchar(255) NOT NULL,
  `no_of_inverters` varchar(255) NOT NULL,
  `disclaimer` text NOT NULL,
  `last_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `site_logo`, `currency`, `slider_min_value`, `slider_max_value`, `slider_increments`, `system_size_constant`, `panel_make`, `panel_model`, `inverter_make`, `no_of_inverters`, `disclaimer`, `last_updated`) VALUES
(1, 'Online Solar', 'uploads/2/2018-08/logo_final.png', '$', 51, 2000, 5, 1.5, 'Canadian Solars', 'CS6K-300s', 'SE6000H-USs', 'Xs', 'Content Goes here...', '2018-08-08 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, '65 Inch', 1, '2018-09-19 11:25:03', NULL),
(2, '70 Inch', 1, '2018-09-19 11:25:10', NULL),
(3, '75 Inch', 1, '2018-09-19 11:25:17', NULL),
(4, '80 Inch', 1, '2018-09-19 11:25:24', NULL),
(5, '85 Inch', 1, '2018-09-19 11:25:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `survey_form`
--

CREATE TABLE `survey_form` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `questions_id` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `client_name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'dasd', 'saddasdadadada', 1, '2018-08-09 06:34:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `text_pass` text DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text CHARACTER SET utf8 DEFAULT NULL,
  `confirm_code` text DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `f_name`, `l_name`, `email`, `password`, `text_pass`, `phone`, `address`, `confirm_code`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(248, 'qq', 'qq', 'qmerchant22@yopmail.com', '$2y$10$gclJLMq7pVu9K/3p6zwtleKUl0Canwdepta7naVu04sWdu7wyUyxu', 'ZzXJgsqs', '(678) 829-5207', '5773 North Lincoln Avenue, Chicago, IL, USA', 'SLP2487514', 1, NULL, '2018-10-18 05:32:24', '2018-10-18 05:34:41'),
(249, 'vince', 'test', 'vince.giomi@gmail.com', '$2y$10$Rm7H8CWxyNENx33hXE3Yx.9KIbjQR5QvLye70kUSzQjDQWQKG/eK.', 'ZPemvC5g', '(303) 775-7389', NULL, 'SLP2495116', 1, NULL, '2018-10-18 21:21:07', '2018-10-18 22:40:41'),
(250, 'Q', 'Merchant', 'qmerchant@yopmail.com', '$2y$10$NhHqqH5PROCzVweTxK8Cm.1UP6dsc7N3Ekg/f1/ZWhY1iXeM2Xdsm', '111111', '(817) 370-5630', 'NY', 'SLP2505313', 1, NULL, '2018-11-07 06:47:31', '2018-12-04 12:56:51'),
(251, 'asdas', 'das', 'test12test@yopmail.com', '$2y$10$Fb6bwsK.hYFJ5LIvzAuEc.QPMbyd/GbxZ0I.wsRb9Q3Ffl1vafzGy', 'naFB8ZHf', '(343) 242-3423', NULL, 'SLP2512586', 1, NULL, '2018-11-08 10:30:04', '2018-11-08 10:30:32'),
(252, 'Aaron', 'Huey', 'aaron@yopmail.com', '$2y$10$YsFpLo/OD41SWUvuZew7Qet.1PpETnnTPdOeACOlo7Df07YYLmFUu', 'G5wFjTNm', '(111) 111-1111', '5773 Poppy Tree Lane, Tucker, GA, USA', 'SLP2528232', 1, NULL, '2018-11-13 11:15:13', '2018-11-13 11:19:15'),
(253, 'Jimmy', 'Cliene', 'jimmycliene@yopmail.com', '$2y$10$fciGpEVT70r7XpHr9TW7ceJmZ6vIxTKnegJWxHaRMW2APgqq99gAO', '1uSdVO9O', '(863) 624-3505', NULL, 'SLP2533649', 0, NULL, '2018-11-28 07:21:52', '2018-11-28 07:21:52'),
(254, 'James', 'Cane', 'jamescane@yopmail.com', '$2y$10$KTYptFsrhZFzXJNm24DMu.Z.EBTncnW8wBKRiw0QW4b03/pSPXof6', 'v5juARMA', '(863) 624-3506', NULL, 'SLP2541868', 1, NULL, '2018-11-28 07:23:47', '2018-11-28 07:25:41'),
(255, 'Alex', 'James', 'jamescane1@yopmail.com', '$2y$10$s8ZsAdD7DYGX6UMAz8pXkOLZDNG8UQL231ndnalZx.xIGe/oI1LBi', 'blsQ3vRN', '(863) 624-3545', NULL, 'SLP2558106', 0, NULL, '2018-11-28 07:28:23', '2018-11-28 07:28:23'),
(256, 'Jimmy', 'Karthiks', 'jimmykarthiks@yopmail.com', '$2y$10$FLTGRvWyc38/T9GME.NqI.2DTlyQIR5XncRBdzkI0vCqY6K/z0Usu', 'yNd3nY8W', '(231) 231-3212', NULL, 'SLP2563738', 0, NULL, '2018-11-28 07:31:15', '2018-11-28 07:31:17'),
(257, 'qq', 'qq', 'qmerchant94@yopmail.com', '$2y$10$1rphSIJehrQW4UXCDzf1MOU8tYopYEjGzI1XtWb/kGQpTJzq6e8d6', 'BsmjwPiw', '(555) 555-5555', NULL, 'SLP2577094', 0, NULL, '2018-12-03 06:41:17', '2018-12-03 06:41:18'),
(258, 'Jim', 'Morris', 'jim.morris159@yopmail.com', '$2y$10$Z2mTxuNl10bDWV4mVTetMODr/BYX3/s.3nVkn9uM36ouFLR5gnxly', 'U5kFayXY', '(321) 131-1333', NULL, 'SLP2581985', 0, NULL, '2018-12-04 12:48:01', '2018-12-04 12:48:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_form`
--
ALTER TABLE `survey_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=847;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `survey_form`
--
ALTER TABLE `survey_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
