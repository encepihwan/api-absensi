-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 16 Bulan Mei 2024 pada 20.20
-- Versi server: 8.0.36-cll-lve
-- Versi PHP: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simbgpup_absensi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint UNSIGNED NOT NULL,
  `userId` bigint UNSIGNED NOT NULL,
  `mediaAttendaceId` bigint UNSIGNED NOT NULL,
  `mediaOfWorkId` bigint UNSIGNED NOT NULL,
  `projectId` bigint UNSIGNED NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longtitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_address` text COLLATE utf8mb4_unicode_ci,
  `shift_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `attendances`
--

INSERT INTO `attendances` (`id`, `userId`, `mediaAttendaceId`, `mediaOfWorkId`, `projectId`, `latitude`, `longtitude`, `date`, `time`, `type`, `created_at`, `updated_at`, `status`, `full_address`, `shift_id`) VALUES
(1, 2, 3, 2, 1, '-6.7031406', '108.5285072', '2024-02-05', '20:38:40', 'clockin', '2024-02-05 06:38:42', '2024-02-05 06:38:42', 'late', 'Kemlakagede, Kabupaten Cirebon, Jawa Barat, Jawa, 45174, Indonesia', 2),
(2, 2, 5, 4, 1, '-6.7031406', '108.5285072', '2024-02-05', '20:41:59', 'clockout', '2024-02-05 06:42:00', '2024-02-05 06:42:00', 'on-time', 'Kemlakagede, Kabupaten Cirebon, Jawa Barat, Jawa, 45174, Indonesia', 2),
(3, 2, 7, 6, 1, '-6.7031406', '108.5285072', '2024-02-05', '21:22:45', 'clockin', '2024-02-05 07:22:46', '2024-02-05 07:22:46', 'late', 'Kemlakagede, Kabupaten Cirebon, Jawa Barat, Jawa, 45174, Indonesia', 2),
(4, 3, 14, 13, 2, '52.4665153', '-1.9008165', '2024-04-07', '08:13:34', 'clockin', '2024-04-07 00:13:35', '2024-04-07 00:13:35', 'late', 'St Lawrence Close, Edgbaston, Attwood Green, Birmingham, West Midlands Combined Authority, England, B5 7NP, Britania Raya', 5),
(5, 3, 16, 15, 2, '52.4665082', '-1.9008149', '2024-04-07', '08:16:11', 'clockout', '2024-04-07 00:16:12', '2024-04-07 00:16:12', 'on-time', 'St Lawrence Close, Edgbaston, Attwood Green, Birmingham, West Midlands Combined Authority, England, B5 7NP, Britania Raya', 5),
(6, 3, 25, 24, 1, '52.4639439', '-1.8920101', '2024-04-28', '15:28:50', 'clockin', '2024-04-28 07:28:50', '2024-04-28 07:28:50', 'late', 'Percy Shurmer Academy, Longmore Street, Digbeth, Highgate, Birmingham, West Midlands Combined Authority, England, B12 9ED, Britania Raya', 2),
(7, 3, 27, 26, 1, '52.4639439', '-1.8920101', '2024-04-28', '15:31:32', 'clockout', '2024-04-28 07:31:33', '2024-04-28 07:31:33', 'on-time', 'Percy Shurmer Academy, Longmore Street, Digbeth, Highgate, Birmingham, West Midlands Combined Authority, England, B12 9ED, Britania Raya', 2),
(8, 33, 40, 41, 11, '-7.0336087', '107.5430619', '2024-04-29', '12:59:57', 'clockin', '2024-04-28 22:59:58', '2024-04-28 22:59:58', 'late', 'Jalan Raya Soreang - Banjaran, Cingcin, Bandung, West Java, Java, 40311, Indonesia', 10),
(9, 34, 43, 42, 11, '-7.0330134', '107.5440432', '2024-04-29', '13:00:26', 'clockin', '2024-04-28 23:00:28', '2024-04-28 23:00:28', 'late', 'Jalan Raya Soreang - Banjaran, Cingcin, Bandung, Jawa Barat, Jawa, 40311, Indonesia', 10),
(10, 34, 46, 45, 11, '-7.0193256', '107.5278052', '2024-04-29', '16:02:18', 'clockout', '2024-04-29 02:02:20', '2024-04-29 02:02:20', 'on-time', 'Padasuka, Bandung, Jawa Barat, Jawa, 40912, Indonesia', 10),
(11, 33, 48, 47, 11, '-7.019237', '107.5278037', '2024-04-29', '16:16:34', 'clockout', '2024-04-29 02:16:35', '2024-04-29 02:16:35', 'on-time', 'Padasuka, Bandung, West Java, Java, 40912, Indonesia', 10),
(12, 33, 51, 50, 11, '-7.0192254', '107.5277793', '2024-04-30', '11:00:01', 'clockin', '2024-04-29 21:00:03', '2024-04-29 21:00:03', 'late', 'Padasuka, Bandung, West Java, Java, 40912, Indonesia', 10),
(13, 34, 54, 53, 11, '-6.8723117', '107.5727462', '2024-04-30', '13:11:00', 'clockin', '2024-04-29 23:11:02', '2024-04-29 23:11:02', 'late', 'Politeknik Negeri Bandung (POLBAN), Jalan Teknik Elektro, Bandung Barat, Jawa Barat, Jawa, 40515, Indonesia', 10),
(14, 33, 58, 57, 11, '-6.9493056', '107.5753971', '2024-04-30', '18:03:51', 'clockout', '2024-04-30 04:03:52', '2024-04-30 04:03:52', 'on-time', 'Jalan Margajaya III, Margahayu Utara, Babakan Ciparay, Bandung, West Java, Java, 40223, Indonesia', 10),
(15, 34, 60, 59, 11, '-6.8917012', '107.5392405', '2024-04-30', '18:07:23', 'clockout', '2024-04-30 04:07:25', '2024-04-30 04:07:25', 'on-time', 'Setiamanah, Cimahi, Jawa Barat, Jawa, 40534, Indonesia', 10),
(16, 34, 64, 63, 11, '-7.0193682', '107.5276899', '2024-05-01', '10:34:21', 'clockin', '2024-04-30 20:34:23', '2024-04-30 20:34:23', 'late', 'Padasuka, Bandung, Jawa Barat, Jawa, 40912, Indonesia', 10),
(17, 34, 66, 65, 11, '-7.0498833', '107.5386615', '2024-05-01', '17:46:31', 'clockout', '2024-05-01 03:46:33', '2024-05-01 03:46:33', 'on-time', 'Nagrak, Bandung, Jawa Barat, Jawa, 40912, Indonesia', 10),
(18, 34, 69, 68, 11, '-7.0192509', '107.527657', '2024-05-02', '12:04:16', 'clockin', '2024-05-01 22:04:18', '2024-05-01 22:04:18', 'late', 'Padasuka, Bandung, Jawa Barat, Jawa, 40912, Indonesia', 10),
(19, 34, 73, 72, 11, '-7.0191538346904', '107.52748328452', '2024-05-02', '16:53:59', 'clockout', '2024-05-02 02:54:00', '2024-05-02 02:54:00', 'on-time', 'Padasuka, Bandung, Jawa Barat, Jawa, 40912, Indonesia', 10),
(20, 33, 78, 77, 11, '-6.4323584', '106.8302336', '2024-05-02', '17:14:55', 'clockout', '2024-05-02 03:14:56', '2024-05-02 03:14:56', 'on-time', 'Jatimulya, Depok, Bogor, West Java, Java, 16413, Indonesia', 10),
(21, 34, 81, 80, 11, '-7.0194768', '107.5278302', '2024-05-03', '11:14:45', 'clockin', '2024-05-02 21:14:47', '2024-05-02 21:14:47', 'late', 'Padasuka, Bandung, Jawa Barat, Jawa, 40912, Indonesia', 10),
(22, 33, 83, 82, 11, '-7.0190259', '107.5279491', '2024-05-03', '13:06:14', 'clockout', '2024-05-02 23:06:15', '2024-05-02 23:06:15', 'on-time', 'Padasuka, Bandung, West Java, Java, 40912, Indonesia', 10),
(23, 34, 91, 90, 11, '-7.0194049', '107.5276769', '2024-05-03', '19:30:40', 'clockout', '2024-05-03 05:30:41', '2024-05-03 05:30:41', 'on-time', 'Padasuka, Bandung, Jawa Barat, Jawa, 40912, Indonesia', 10),
(24, 34, 101, 100, 11, '-7.0193801', '107.5278199', '2024-05-04', '12:58:27', 'clockout', '2024-05-03 22:58:28', '2024-05-03 22:58:28', 'on-time', 'Padasuka, Bandung, Jawa Barat, Jawa, 40912, Indonesia', 10),
(25, 33, 104, 103, 11, '-6.9493066', '107.5753783', '2024-05-04', '20:05:54', 'clockin', '2024-05-04 06:05:54', '2024-05-04 06:05:54', 'late', 'Jalan Margajaya III, Margahayu Utara, Babakan Ciparay, Bandung, West Java, Java, 40223, Indonesia', 10),
(26, 33, 108, 107, 11, '-7.0192395', '107.5279531', '2024-05-06', '12:29:26', 'clockin', '2024-05-05 22:29:27', '2024-05-05 22:29:27', 'late', 'Padasuka, Bandung, West Java, Java, 40912, Indonesia', 10),
(27, 33, 110, 109, 11, '-7.0192427', '107.5278676', '2024-05-06', '15:23:27', 'clockout', '2024-05-06 01:23:28', '2024-05-06 01:23:28', 'on-time', 'Padasuka, Bandung, West Java, Java, 40912, Indonesia', 10),
(28, 34, 117, 116, 11, '-7.0192746', '107.5277333', '2024-05-06', '16:02:23', 'clockout', '2024-05-06 02:02:25', '2024-05-06 02:02:25', 'on-time', 'Padasuka, Bandung, Jawa Barat, Jawa, 40912, Indonesia', 10),
(29, 33, 119, 118, 11, '-7.017501', '107.5281414', '2024-05-07', '10:46:51', 'clockin', '2024-05-06 20:46:52', '2024-05-06 20:46:52', 'late', 'Padasuka, Bandung, Jawa Barat, Jawa, 40912, Indonesia', 10),
(30, 34, 121, 120, 11, '-7.0193247', '107.5276992', '2024-05-07', '10:49:51', 'clockin', '2024-05-06 20:49:53', '2024-05-06 20:49:53', 'late', 'Padasuka, Bandung, Jawa Barat, Jawa, 40912, Indonesia', 10),
(31, 33, 122, 123, 11, '-7.0192410804968', '107.52774573863', '2024-05-07', '16:24:24', 'clockout', '2024-05-07 02:24:24', '2024-05-07 02:24:24', 'on-time', 'Padasuka, Bandung, West Java, Java, 40912, Indonesia', 10),
(32, 33, 128, 127, 11, '-7.0192410804968', '107.52774573863', '2024-05-08', '10:18:44', 'clockin', '2024-05-07 20:18:45', '2024-05-07 20:18:45', 'late', 'Padasuka, Bandung, West Java, Java, 40912, Indonesia', 10),
(33, 34, 132, 129, 11, '-6.9331067', '107.5506504', '2024-05-08', '13:52:21', 'clockin', '2024-05-07 23:52:28', '2024-05-07 23:52:28', 'late', NULL, 10),
(34, 33, 136, 135, 11, '-7.0192410804968', '107.52774573863', '2024-05-08', '17:23:16', 'clockout', '2024-05-08 03:23:16', '2024-05-08 03:23:16', 'on-time', 'Padasuka, Bandung, West Java, Java, 40912, Indonesia', 10),
(35, 34, 139, 138, 11, '-7.0500055', '107.538513', '2024-05-08', '19:32:24', 'clockout', '2024-05-08 05:32:28', '2024-05-08 05:32:28', 'on-time', NULL, 10),
(36, 33, 150, 149, 11, '-7.0192767', '107.5277486', '2024-05-09', '13:40:11', 'clockin', '2024-05-08 23:40:12', '2024-05-08 23:40:12', 'late', 'Padasuka, Bandung, West Java, Java, 40912, Indonesia', 10),
(37, 33, 154, 153, 11, '-7.0192410804968', '107.52774573863', '2024-05-10', '10:07:10', 'clockin', '2024-05-09 20:07:11', '2024-05-09 20:07:11', 'late', 'Padasuka, Bandung, West Java, Java, 40912, Indonesia', 10),
(38, 34, 156, 155, 11, '-7.0498954', '107.5387084', '2024-05-10', '14:18:46', 'clockin', '2024-05-10 00:18:47', '2024-05-10 00:18:47', 'late', 'Nagrak, Bandung, Jawa Barat, Jawa, 40912, Indonesia', 10),
(39, 34, 158, 157, 11, '-7.0192257733853', '107.52747818828', '2024-05-10', '14:23:38', 'clockin', '2024-05-10 00:23:40', '2024-05-10 00:23:40', 'late', 'Padasuka, Bandung, Jawa Barat, Jawa, 40912, Indonesia', 10),
(40, 33, 160, 159, 11, '-7.0192410804968', '107.52774573863', '2024-05-10', '16:37:49', 'clockout', '2024-05-10 02:37:50', '2024-05-10 02:37:50', 'on-time', 'Padasuka, Bandung, West Java, Java, 40912, Indonesia', 10),
(41, 34, 162, 161, 11, '-7.0192375', '107.5274844', '2024-05-10', '16:39:51', 'clockout', '2024-05-10 02:39:52', '2024-05-10 02:39:52', 'on-time', 'Padasuka, Bandung, Jawa Barat, Jawa, 40912, Indonesia', 10),
(42, 34, 164, 163, 11, '-7.0192375', '107.5274844', '2024-05-11', '16:26:23', 'clockout', '2024-05-11 02:26:26', '2024-05-11 02:26:26', 'on-time', 'Padasuka, Bandung, Jawa Barat, Jawa, 40912, Indonesia', 10),
(43, 33, 166, 165, 11, '-6.9874557', '107.6351396', '2024-05-11', '19:28:06', 'clockin', '2024-05-11 05:28:07', '2024-05-11 05:28:07', 'late', 'Bojongsoang, Bandung, West Java, Java, 40288, Indonesia', 10),
(44, 33, 168, 167, 11, '-6.9874557', '107.6351396', '2024-05-11', '19:29:12', 'clockout', '2024-05-11 05:29:13', '2024-05-11 05:29:13', 'on-time', NULL, 10),
(45, 33, 170, 169, 11, '-7.0192410804968', '107.52774573863', '2024-05-12', '16:56:21', 'clockin', '2024-05-12 02:56:22', '2024-05-12 02:56:22', 'late', 'Padasuka, Bandung, West Java, Java, 40912, Indonesia', 10),
(46, 33, 173, 172, 11, '-7.0192410804968', '107.52774573863', '2024-05-12', '16:57:11', 'clockout', '2024-05-12 02:57:11', '2024-05-12 02:57:11', 'on-time', 'Padasuka, Bandung, West Java, Java, 40912, Indonesia', 10),
(47, 33, 175, 174, 11, '-7.0192410804968', '107.52774573863', '2024-05-13', '10:29:54', 'clockin', '2024-05-12 20:29:54', '2024-05-12 20:29:54', 'late', 'Padasuka, Bandung, West Java, Java, 40912, Indonesia', 10),
(48, 34, 177, 176, 11, '-7.0193441', '107.5279347', '2024-05-13', '11:22:05', 'clockin', '2024-05-12 21:22:07', '2024-05-12 21:22:07', 'late', 'Padasuka, Bandung, Jawa Barat, Jawa, 40912, Indonesia', 10),
(49, 34, 179, 178, 11, '-7.0192375', '107.5274844', '2024-05-13', '16:07:42', 'clockout', '2024-05-13 02:07:45', '2024-05-13 02:07:45', 'on-time', 'Padasuka, Bandung, Jawa Barat, Jawa, 40912, Indonesia', 10),
(50, 33, 182, 180, 11, '-6.9621874', '107.6354084', '2024-05-13', '19:15:56', 'clockout', '2024-05-13 05:15:57', '2024-05-13 05:15:57', 'on-time', 'Batununggal Mulia, Mengger, Bandung Kidul, Bandung, West Java, Java, 40257, Indonesia', 10),
(51, 33, 187, 186, 11, '-7.0192410804968', '107.52774573863', '2024-05-14', '11:15:48', 'clockin', '2024-05-13 21:15:48', '2024-05-13 21:15:48', 'late', 'Padasuka, Bandung, West Java, Java, 40912, Indonesia', 10),
(52, 33, 190, 188, 11, '-7.019241', '107.527745', '2024-05-15', '17:16:29', 'clockin', '2024-05-15 03:16:29', '2024-05-15 03:16:29', 'late', 'Padasuka, Bandung, West Java, Java, 40912, Indonesia', 10),
(53, 33, 192, 191, 11, '-7.019241', '107.527745', '2024-05-15', '17:17:27', 'clockout', '2024-05-15 03:17:28', '2024-05-15 03:17:28', 'on-time', 'Padasuka, Bandung, West Java, Java, 40912, Indonesia', 10),
(54, 34, 194, 193, 11, '-7.0192969', '107.5278897', '2024-05-16', '10:38:15', 'clockin', '2024-05-15 20:38:16', '2024-05-15 20:38:16', 'late', 'Padasuka, Bandung, Jawa Barat, Jawa, 40912, Indonesia', 10),
(55, 9, 196, 195, 1, '-6.2062592', '106.807296', '2024-05-16', '10:59:30', 'clockin', '2024-05-15 20:59:31', '2024-05-15 20:59:31', 'late', 'Soto Sedaap Boyolali Hj. Widodo, 23, Jalan Pejompongan Baru, RW 05, Bendungan Hilir, Tanah Abang, Jakarta Pusat, Daerah Khusus Jakarta, Jawa, 10210, Indonesia', 11),
(56, 33, 198, 197, 11, '-7.019241', '107.527745', '2024-05-16', '11:03:55', 'clockin', '2024-05-15 21:03:56', '2024-05-15 21:03:56', 'late', 'Padasuka, Bandung, West Java, Java, 40912, Indonesia', 10),
(57, 34, 201, 200, 11, '-7.0192935', '107.5277282', '2024-05-16', '16:17:06', 'clockout', '2024-05-16 02:17:07', '2024-05-16 02:17:07', 'on-time', 'Padasuka, Bandung, Jawa Barat, Jawa, 40912, Indonesia', 10),
(58, 33, 203, 202, 11, '-7.0193659', '107.5277784', '2024-05-16', '16:19:44', 'clockout', '2024-05-16 02:19:45', '2024-05-16 02:19:45', 'on-time', 'Padasuka, Bandung, West Java, Java, 40912, Indonesia', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `devisions`
--

CREATE TABLE `devisions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `devisions`
--

INSERT INTO `devisions` (`id`, `name`, `created_at`, `updated_at`, `slug`, `description`, `status`) VALUES
(1, 'Jalan', '2024-01-13 08:34:11', '2024-04-27 23:50:24', '-1', 'jalan', 'publish'),
(2, 'Bangunan', '2024-01-14 08:10:03', '2024-01-14 08:10:03', 'bangunan', 'test', 'draft'),
(3, 'Gedung', '2024-01-15 08:20:48', '2024-04-18 21:01:41', '', 'hhhhh', 'draft'),
(4, 'Irigasi', '2024-01-23 16:46:30', '2024-01-23 16:46:30', 'irigasi', '-', 'publish'),
(5, 'Drainase', '2024-01-23 16:46:30', '2024-01-23 16:46:30', 'drainase', '-', 'publish'),
(6, 'Jalan', '2024-01-23 16:46:30', '2024-01-23 16:46:30', 'jalan', '-', 'publish'),
(7, 'PPJ dan Jakon', '2024-01-23 16:46:30', '2024-01-23 16:46:30', 'ppj-dan-jakon', '-', 'publish'),
(8, 'Bangunan dan Gedung', '2024-01-23 16:46:30', '2024-04-21 20:07:20', '-1', '-', 'publish'),
(9, 'Penataan Ruang', '2024-01-23 16:46:30', '2024-01-23 16:46:30', 'penataan-ruang', '-', 'publish'),
(10, 'Jalan', '2024-04-06 23:52:06', '2024-04-27 19:41:15', '-1', 'Pengawas', 'draft'),
(11, 'test', '2024-04-27 19:39:44', '2024-04-27 19:39:44', 'test', 'test', 'draft');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `files`
--

CREATE TABLE `files` (
  `id` bigint UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `files`
--

INSERT INTO `files` (`id`, `file_name`, `deleted_at`, `created_at`, `updated_at`, `type`) VALUES
(1, 'attendance_1714924169.xlsx', NULL, '2024-05-05 08:49:29', '2024-05-05 08:49:29', 'attendance'),
(2, 'attendance_1714924935.xlsx', NULL, '2024-05-05 09:02:15', '2024-05-05 09:02:15', 'attendance'),
(3, 'attendance_1715832408.xlsx', NULL, '2024-05-15 21:06:49', '2024-05-15 21:06:49', 'attendance'),
(4, 'attendance_1715832531.xlsx', NULL, '2024-05-15 21:08:51', '2024-05-15 21:08:51', 'attendance');

-- --------------------------------------------------------

--
-- Struktur dari tabel `medias`
--

CREATE TABLE `medias` (
  `id` bigint UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `medias`
--

INSERT INTO `medias` (`id`, `url`, `type`, `created_at`, `updated_at`) VALUES
(1, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1707135816.', 'attendance', '2024-02-05 05:23:36', '2024-02-05 05:23:36'),
(2, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1707140297.jpg', 'workOfProof', '2024-02-05 06:38:17', '2024-02-05 06:38:17'),
(3, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1707140318.', 'attendance', '2024-02-05 06:38:38', '2024-02-05 06:38:38'),
(4, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1707140493.jpg', 'workOfProof', '2024-02-05 06:41:33', '2024-02-05 06:41:33'),
(5, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1707140505.', 'attendance', '2024-02-05 06:41:45', '2024-02-05 06:41:45'),
(6, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1707142946.jpg', 'workOfProof', '2024-02-05 07:22:26', '2024-02-05 07:22:26'),
(7, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1707142962.', 'attendance', '2024-02-05 07:22:42', '2024-02-05 07:22:42'),
(8, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1707146109.jpg', 'profile', '2024-02-05 08:15:09', '2024-02-05 08:15:09'),
(9, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1707173960.jpg', 'profile', '2024-02-05 15:59:20', '2024-02-05 15:59:20'),
(10, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1707175204.png', 'profile', '2024-02-05 16:20:04', '2024-02-05 16:20:04'),
(11, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1707190701.', 'attendance', '2024-02-05 20:38:21', '2024-02-05 20:38:21'),
(12, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1712473249.jfif', 'profile', '2024-04-07 00:00:49', '2024-04-07 00:00:49'),
(13, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1712473947.jpeg', 'workOfProof', '2024-04-07 00:12:27', '2024-04-07 00:12:27'),
(14, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1712474009.', 'attendance', '2024-04-07 00:13:29', '2024-04-07 00:13:29'),
(15, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1712474104.jpeg', 'workOfProof', '2024-04-07 00:15:04', '2024-04-07 00:15:04'),
(16, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1712474128.', 'attendance', '2024-04-07 00:15:28', '2024-04-07 00:15:28'),
(17, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1713674491.png', 'workOfProof', '2024-04-20 21:41:31', '2024-04-20 21:41:31'),
(18, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1713675731.', 'attendance', '2024-04-20 22:02:11', '2024-04-20 22:02:11'),
(19, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1713681495.', 'attendance', '2024-04-20 23:38:15', '2024-04-20 23:38:15'),
(20, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1713932766.webp', 'profile', '2024-04-23 21:26:06', '2024-04-23 21:26:06'),
(21, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1713932809.webp', 'profile', '2024-04-23 21:26:49', '2024-04-23 21:26:49'),
(22, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1713932870.webp', 'profile', '2024-04-23 21:27:50', '2024-04-23 21:27:50'),
(23, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1713941730.jpg', 'profile', '2024-04-23 23:55:30', '2024-04-23 23:55:30'),
(24, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714314447.svg', 'workOfProof', '2024-04-28 07:27:27', '2024-04-28 07:27:27'),
(25, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714314519.', 'attendance', '2024-04-28 07:28:39', '2024-04-28 07:28:39'),
(26, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714314674.svg', 'workOfProof', '2024-04-28 07:31:14', '2024-04-28 07:31:14'),
(27, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714314684.', 'attendance', '2024-04-28 07:31:24', '2024-04-28 07:31:24'),
(28, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714355949.jpeg', 'profile', '2024-04-28 18:59:09', '2024-04-28 18:59:09'),
(29, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714363908.png', 'profile', '2024-04-28 21:11:48', '2024-04-28 21:11:48'),
(30, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714364013.jpg', 'workOfProof', '2024-04-28 21:13:33', '2024-04-28 21:13:33'),
(31, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714364044.', 'attendance', '2024-04-28 21:14:04', '2024-04-28 21:14:04'),
(32, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714365399.jpg', 'profile', '2024-04-28 21:36:39', '2024-04-28 21:36:39'),
(33, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714365440.jpg', 'profile', '2024-04-28 21:37:20', '2024-04-28 21:37:20'),
(34, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714365636.jpg', 'profile', '2024-04-28 21:40:36', '2024-04-28 21:40:36'),
(35, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714365742.jpg', 'profile', '2024-04-28 21:42:22', '2024-04-28 21:42:22'),
(36, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714367107.jpg', 'profile', '2024-04-28 22:05:07', '2024-04-28 22:05:07'),
(37, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714367201.jpg', 'profile', '2024-04-28 22:06:41', '2024-04-28 22:06:41'),
(38, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714369739.jpg', 'workOfProof', '2024-04-28 22:48:59', '2024-04-28 22:48:59'),
(39, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714370249.jpg', 'workOfProof', '2024-04-28 22:57:29', '2024-04-28 22:57:29'),
(40, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714370343.', 'attendance', '2024-04-28 22:59:03', '2024-04-28 22:59:03'),
(41, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714370360.jpg', 'workOfProof', '2024-04-28 22:59:20', '2024-04-28 22:59:20'),
(42, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714370413.jpg', 'workOfProof', '2024-04-28 23:00:13', '2024-04-28 23:00:13'),
(43, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714370423.', 'attendance', '2024-04-28 23:00:23', '2024-04-28 23:00:23'),
(44, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714380478.jpg', 'workOfProof', '2024-04-29 01:47:58', '2024-04-29 01:47:58'),
(45, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714381323.jpg', 'workOfProof', '2024-04-29 02:02:03', '2024-04-29 02:02:03'),
(46, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714381336.', 'attendance', '2024-04-29 02:02:16', '2024-04-29 02:02:16'),
(47, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714382174.jpg', 'workOfProof', '2024-04-29 02:16:14', '2024-04-29 02:16:14'),
(48, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714382190.', 'attendance', '2024-04-29 02:16:30', '2024-04-29 02:16:30'),
(49, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714449555.jpg', 'workOfProof', '2024-04-29 20:59:15', '2024-04-29 20:59:15'),
(50, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714449585.jpg', 'workOfProof', '2024-04-29 20:59:45', '2024-04-29 20:59:45'),
(51, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714449599.', 'attendance', '2024-04-29 20:59:59', '2024-04-29 20:59:59'),
(52, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714453433.jpg', 'workOfProof', '2024-04-29 22:03:53', '2024-04-29 22:03:53'),
(53, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714457440.jpg', 'workOfProof', '2024-04-29 23:10:40', '2024-04-29 23:10:40'),
(54, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714457455.', 'attendance', '2024-04-29 23:10:55', '2024-04-29 23:10:55'),
(55, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714460804.jpg', 'workOfProof', '2024-04-30 00:06:44', '2024-04-30 00:06:44'),
(56, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714474917.jpg', 'workOfProof', '2024-04-30 04:01:57', '2024-04-30 04:01:57'),
(57, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714474996.jpg', 'workOfProof', '2024-04-30 04:03:16', '2024-04-30 04:03:16'),
(58, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714475027.', 'attendance', '2024-04-30 04:03:47', '2024-04-30 04:03:47'),
(59, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714475222.jpg', 'workOfProof', '2024-04-30 04:07:02', '2024-04-30 04:07:02'),
(60, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714475242.', 'attendance', '2024-04-30 04:07:22', '2024-04-30 04:07:22'),
(61, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714524434.jpg', 'workOfProof', '2024-04-30 17:47:14', '2024-04-30 17:47:14'),
(62, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714524748.jpg', 'workOfProof', '2024-04-30 17:52:28', '2024-04-30 17:52:28'),
(63, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714534442.jpg', 'workOfProof', '2024-04-30 20:34:02', '2024-04-30 20:34:02'),
(64, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714534460.', 'attendance', '2024-04-30 20:34:20', '2024-04-30 20:34:20'),
(65, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714560376.jpg', 'workOfProof', '2024-05-01 03:46:16', '2024-05-01 03:46:16'),
(66, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714560390.', 'attendance', '2024-05-01 03:46:30', '2024-05-01 03:46:30'),
(67, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714616518.jpg', 'workOfProof', '2024-05-01 19:21:58', '2024-05-01 19:21:58'),
(68, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714626238.jpg', 'workOfProof', '2024-05-01 22:03:58', '2024-05-01 22:03:58'),
(69, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714626254.', 'attendance', '2024-05-01 22:04:14', '2024-05-01 22:04:14'),
(70, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714631281.jpg', 'profile', '2024-05-01 23:28:01', '2024-05-01 23:28:01'),
(71, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714643464.jpg', 'workOfProof', '2024-05-02 02:51:04', '2024-05-02 02:51:04'),
(72, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714643594.jpg', 'workOfProof', '2024-05-02 02:53:14', '2024-05-02 02:53:14'),
(73, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714643632.', 'attendance', '2024-05-02 02:53:52', '2024-05-02 02:53:52'),
(74, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714644787.', 'attendance', '2024-05-02 03:13:07', '2024-05-02 03:13:07'),
(75, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714644787.', 'attendance', '2024-05-02 03:13:07', '2024-05-02 03:13:07'),
(76, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714644816.', 'attendance', '2024-05-02 03:13:36', '2024-05-02 03:13:36'),
(77, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714644873.jpeg', 'workOfProof', '2024-05-02 03:14:33', '2024-05-02 03:14:33'),
(78, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714644892.', 'attendance', '2024-05-02 03:14:52', '2024-05-02 03:14:52'),
(79, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714708097.', 'attendance', '2024-05-02 20:48:17', '2024-05-02 20:48:17'),
(80, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714709659.jpg', 'workOfProof', '2024-05-02 21:14:19', '2024-05-02 21:14:19'),
(81, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714709683.', 'attendance', '2024-05-02 21:14:43', '2024-05-02 21:14:43'),
(82, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714716363.jpg', 'workOfProof', '2024-05-02 23:06:03', '2024-05-02 23:06:03'),
(83, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714716372.', 'attendance', '2024-05-02 23:06:12', '2024-05-02 23:06:12'),
(84, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714716377.jpg', 'profile', '2024-05-02 23:06:17', '2024-05-02 23:06:17'),
(85, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714716702.jpg', 'profile', '2024-05-02 23:11:42', '2024-05-02 23:11:42'),
(86, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714717655.jpg', 'profile', '2024-05-02 23:27:35', '2024-05-02 23:27:35'),
(87, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714717706.jpg', 'workOfProof', '2024-05-02 23:28:26', '2024-05-02 23:28:26'),
(88, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714717793.jpg', 'workOfProof', '2024-05-02 23:29:53', '2024-05-02 23:29:53'),
(89, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714720843.', 'attendance', '2024-05-03 00:20:43', '2024-05-03 00:20:43'),
(90, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714739412.jpg', 'workOfProof', '2024-05-03 05:30:12', '2024-05-03 05:30:12'),
(91, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714739434.', 'attendance', '2024-05-03 05:30:34', '2024-05-03 05:30:34'),
(92, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714790306.jpg', 'workOfProof', '2024-05-03 19:38:26', '2024-05-03 19:38:26'),
(93, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714790348.jpg', 'workOfProof', '2024-05-03 19:39:08', '2024-05-03 19:39:08'),
(94, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714790392.jpg', 'profile', '2024-05-03 19:39:52', '2024-05-03 19:39:52'),
(95, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714790524.jpg', 'workOfProof', '2024-05-03 19:42:04', '2024-05-03 19:42:04'),
(96, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714790598.jpg', 'profile', '2024-05-03 19:43:18', '2024-05-03 19:43:18'),
(97, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714791128.jpg', 'workOfProof', '2024-05-03 19:52:08', '2024-05-03 19:52:08'),
(98, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714791174.jpg', 'profile', '2024-05-03 19:52:54', '2024-05-03 19:52:54'),
(99, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714796092.jpg', 'profile', '2024-05-03 21:14:52', '2024-05-03 21:14:52'),
(100, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714802288.jpg', 'workOfProof', '2024-05-03 22:58:08', '2024-05-03 22:58:08'),
(101, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714802306.', 'attendance', '2024-05-03 22:58:26', '2024-05-03 22:58:26'),
(102, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714827895.', 'attendance', '2024-05-04 06:04:55', '2024-05-04 06:04:55'),
(103, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714827939.jpg', 'workOfProof', '2024-05-04 06:05:39', '2024-05-04 06:05:39'),
(104, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714827951.', 'attendance', '2024-05-04 06:05:51', '2024-05-04 06:05:51'),
(105, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714967560.jpg', 'workOfProof', '2024-05-05 20:52:40', '2024-05-05 20:52:40'),
(106, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714967652.jpg', 'workOfProof', '2024-05-05 20:54:12', '2024-05-05 20:54:12'),
(107, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714973347.jpg', 'workOfProof', '2024-05-05 22:29:07', '2024-05-05 22:29:07'),
(108, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714973355.', 'attendance', '2024-05-05 22:29:15', '2024-05-05 22:29:15'),
(109, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714983795.jpg', 'workOfProof', '2024-05-06 01:23:16', '2024-05-06 01:23:16'),
(110, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714983805.', 'attendance', '2024-05-06 01:23:25', '2024-05-06 01:23:25'),
(111, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714984512.jpeg', 'profile', '2024-05-06 01:35:12', '2024-05-06 01:35:12'),
(112, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714985105.jpg', 'profile', '2024-05-06 01:45:05', '2024-05-06 01:45:05'),
(113, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714985132.jpg', 'profile', '2024-05-06 01:45:32', '2024-05-06 01:45:32'),
(114, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714985344.jpg', 'workOfProof', '2024-05-06 01:49:04', '2024-05-06 01:49:04'),
(115, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714985569.', 'attendance', '2024-05-06 01:52:49', '2024-05-06 01:52:49'),
(116, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714986132.jpg', 'workOfProof', '2024-05-06 02:02:12', '2024-05-06 02:02:12'),
(117, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1714986142.', 'attendance', '2024-05-06 02:02:22', '2024-05-06 02:02:22'),
(118, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715053592.jpg', 'workOfProof', '2024-05-06 20:46:32', '2024-05-06 20:46:32'),
(119, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715053609.', 'attendance', '2024-05-06 20:46:49', '2024-05-06 20:46:49'),
(120, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715053777.jpg', 'workOfProof', '2024-05-06 20:49:37', '2024-05-06 20:49:37'),
(121, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715053789.', 'attendance', '2024-05-06 20:49:49', '2024-05-06 20:49:49'),
(122, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715073759.', 'attendance', '2024-05-07 02:22:39', '2024-05-07 02:22:39'),
(123, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715073845.jpg', 'workOfProof', '2024-05-07 02:24:05', '2024-05-07 02:24:05'),
(124, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715075181.jpg', 'workOfProof', '2024-05-07 02:46:21', '2024-05-07 02:46:21'),
(125, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715075270.jpg', 'workOfProof', '2024-05-07 02:47:50', '2024-05-07 02:47:50'),
(126, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715075451.', 'attendance', '2024-05-07 02:50:51', '2024-05-07 02:50:51'),
(127, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715138229.jpg', 'workOfProof', '2024-05-07 20:17:09', '2024-05-07 20:17:09'),
(128, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715138305.', 'attendance', '2024-05-07 20:18:25', '2024-05-07 20:18:25'),
(129, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715150980.jpg', 'workOfProof', '2024-05-07 23:49:40', '2024-05-07 23:49:40'),
(130, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715151128.', 'attendance', '2024-05-07 23:52:08', '2024-05-07 23:52:08'),
(131, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715151134.', 'attendance', '2024-05-07 23:52:14', '2024-05-07 23:52:14'),
(132, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715151135.', 'attendance', '2024-05-07 23:52:15', '2024-05-07 23:52:15'),
(133, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715162181.jpg', 'workOfProof', '2024-05-08 02:56:21', '2024-05-08 02:56:21'),
(134, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715163624.jpg', 'workOfProof', '2024-05-08 03:20:24', '2024-05-08 03:20:24'),
(135, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715163769.jpg', 'workOfProof', '2024-05-08 03:22:49', '2024-05-08 03:22:49'),
(136, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715163793.', 'attendance', '2024-05-08 03:23:13', '2024-05-08 03:23:13'),
(137, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715171371.jpg', 'workOfProof', '2024-05-08 05:29:31', '2024-05-08 05:29:31'),
(138, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715171528.jpg', 'workOfProof', '2024-05-08 05:32:08', '2024-05-08 05:32:08'),
(139, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715171541.', 'attendance', '2024-05-08 05:32:21', '2024-05-08 05:32:21'),
(140, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715171988.png', 'profile', '2024-05-08 05:39:48', '2024-05-08 05:39:48'),
(141, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715173161.png', 'profile', '2024-05-08 05:59:21', '2024-05-08 05:59:21'),
(142, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715176677.png', 'profile', '2024-05-08 06:57:57', '2024-05-08 06:57:57'),
(143, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715176796.png', 'profile', '2024-05-08 06:59:56', '2024-05-08 06:59:56'),
(144, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715176931.png', 'profile', '2024-05-08 07:02:11', '2024-05-08 07:02:11'),
(145, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715176985.png', 'profile', '2024-05-08 07:03:05', '2024-05-08 07:03:05'),
(146, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715177029.png', 'profile', '2024-05-08 07:03:49', '2024-05-08 07:03:49'),
(147, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715177583.png', 'profile', '2024-05-08 07:13:03', '2024-05-08 07:13:03'),
(148, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715177636.png', 'profile', '2024-05-08 07:13:56', '2024-05-08 07:13:56'),
(149, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715236799.jpg', 'workOfProof', '2024-05-08 23:39:59', '2024-05-08 23:39:59'),
(150, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715236807.', 'attendance', '2024-05-08 23:40:07', '2024-05-08 23:40:07'),
(151, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715244180.jpg', 'workOfProof', '2024-05-09 01:43:00', '2024-05-09 01:43:00'),
(152, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715244201.', 'attendance', '2024-05-09 01:43:21', '2024-05-09 01:43:21'),
(153, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715310337.jpg', 'workOfProof', '2024-05-09 20:05:37', '2024-05-09 20:05:37'),
(154, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715310407.', 'attendance', '2024-05-09 20:06:47', '2024-05-09 20:06:47'),
(155, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715325513.jpg', 'workOfProof', '2024-05-10 00:18:33', '2024-05-10 00:18:33'),
(156, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715325524.', 'attendance', '2024-05-10 00:18:44', '2024-05-10 00:18:44'),
(157, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715325809.jpg', 'workOfProof', '2024-05-10 00:23:29', '2024-05-10 00:23:29'),
(158, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715325818.', 'attendance', '2024-05-10 00:23:38', '2024-05-10 00:23:38'),
(159, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715333731.jpg', 'workOfProof', '2024-05-10 02:35:31', '2024-05-10 02:35:31'),
(160, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715333843.', 'attendance', '2024-05-10 02:37:23', '2024-05-10 02:37:23'),
(161, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715333973.jpg', 'workOfProof', '2024-05-10 02:39:33', '2024-05-10 02:39:33'),
(162, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715333990.', 'attendance', '2024-05-10 02:39:50', '2024-05-10 02:39:50'),
(163, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715418998.jpg', 'workOfProof', '2024-05-11 02:16:38', '2024-05-11 02:16:38'),
(164, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715419075.', 'attendance', '2024-05-11 02:17:55', '2024-05-11 02:17:55'),
(165, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715430472.jpg', 'workOfProof', '2024-05-11 05:27:52', '2024-05-11 05:27:52'),
(166, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715430484.', 'attendance', '2024-05-11 05:28:04', '2024-05-11 05:28:04'),
(167, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715430531.jpg', 'workOfProof', '2024-05-11 05:28:51', '2024-05-11 05:28:51'),
(168, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715430550.', 'attendance', '2024-05-11 05:29:10', '2024-05-11 05:29:10'),
(169, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715507744.jpg', 'workOfProof', '2024-05-12 02:55:44', '2024-05-12 02:55:44'),
(170, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715507775.', 'attendance', '2024-05-12 02:56:15', '2024-05-12 02:56:15'),
(171, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715507796.jpg', 'workOfProof', '2024-05-12 02:56:36', '2024-05-12 02:56:36'),
(172, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715507812.jpg', 'workOfProof', '2024-05-12 02:56:52', '2024-05-12 02:56:52'),
(173, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715507827.', 'attendance', '2024-05-12 02:57:07', '2024-05-12 02:57:07'),
(174, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715570960.jpg', 'workOfProof', '2024-05-12 20:29:20', '2024-05-12 20:29:20'),
(175, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715570982.', 'attendance', '2024-05-12 20:29:42', '2024-05-12 20:29:42'),
(176, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715574108.jpg', 'workOfProof', '2024-05-12 21:21:48', '2024-05-12 21:21:48'),
(177, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715574124.', 'attendance', '2024-05-12 21:22:04', '2024-05-12 21:22:04'),
(178, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715591249.jpg', 'workOfProof', '2024-05-13 02:07:29', '2024-05-13 02:07:29'),
(179, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715591261.', 'attendance', '2024-05-13 02:07:41', '2024-05-13 02:07:41'),
(180, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715602519.jpg', 'workOfProof', '2024-05-13 05:15:19', '2024-05-13 05:15:19'),
(181, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715602545.', 'attendance', '2024-05-13 05:15:45', '2024-05-13 05:15:45'),
(182, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715602547.', 'attendance', '2024-05-13 05:15:47', '2024-05-13 05:15:47'),
(183, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715602557.', 'attendance', '2024-05-13 05:15:57', '2024-05-13 05:15:57'),
(184, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715651431.jpg', 'profile', '2024-05-13 18:50:31', '2024-05-13 18:50:31'),
(185, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715651479.jpg', 'profile', '2024-05-13 18:51:19', '2024-05-13 18:51:19'),
(186, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715660056.jpg', 'workOfProof', '2024-05-13 21:14:16', '2024-05-13 21:14:16'),
(187, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715660124.', 'attendance', '2024-05-13 21:15:24', '2024-05-13 21:15:24'),
(188, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715768135.jpg', 'workOfProof', '2024-05-15 03:15:35', '2024-05-15 03:15:35'),
(189, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715768163.', 'attendance', '2024-05-15 03:16:03', '2024-05-15 03:16:03'),
(190, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715768187.', 'attendance', '2024-05-15 03:16:27', '2024-05-15 03:16:27'),
(191, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715768220.jpg', 'workOfProof', '2024-05-15 03:17:00', '2024-05-15 03:17:00'),
(192, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715768245.', 'attendance', '2024-05-15 03:17:25', '2024-05-15 03:17:25'),
(193, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715830677.jpg', 'workOfProof', '2024-05-15 20:37:57', '2024-05-15 20:37:57'),
(194, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715830694.', 'attendance', '2024-05-15 20:38:14', '2024-05-15 20:38:14'),
(195, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715831948.jpg', 'workOfProof', '2024-05-15 20:59:08', '2024-05-15 20:59:08'),
(196, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715831965.', 'attendance', '2024-05-15 20:59:25', '2024-05-15 20:59:25'),
(197, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715832213.jpg', 'workOfProof', '2024-05-15 21:03:33', '2024-05-15 21:03:33'),
(198, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715832229.', 'attendance', '2024-05-15 21:03:49', '2024-05-15 21:03:49'),
(199, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715850353.jpg', 'workOfProof', '2024-05-16 02:05:53', '2024-05-16 02:05:53'),
(200, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715851011.jpg', 'workOfProof', '2024-05-16 02:16:51', '2024-05-16 02:16:51'),
(201, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715851025.', 'attendance', '2024-05-16 02:17:05', '2024-05-16 02:17:05'),
(202, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715851170.jpg', 'workOfProof', '2024-05-16 02:19:30', '2024-05-16 02:19:30'),
(203, 'https://api-atds.sibedaspbgbdgkab.my.id/media/1715851181.', 'attendance', '2024-05-16 02:19:41', '2024-05-16 02:19:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_09_04_025011_create_roles_table', 1),
(5, '2023_10_12_000000_create_users_table', 1),
(6, '2023_11_03_230225_create_medias_table', 1),
(7, '2023_11_04_030224_create_profiles_table', 1),
(8, '2023_11_04_030238_create_devisions_table', 1),
(9, '2023_11_04_030300_create_projects_table', 1),
(10, '2023_11_04_030321_create_progres_table', 1),
(11, '2023_11_23_230144_create_role_has_users_table', 1),
(12, '2023_11_25_153830_create_attendances_table', 1),
(13, '2023_11_30_162546_create_table_user_have_division', 1),
(14, '2023_12_04_092815_alter_table_projects_add_name_field', 1),
(15, '2023_12_08_140411_alter_table_attendances_add_table_status', 1),
(16, '2023_12_09_103642_alter_table_projects_add_coloumn_slug', 1),
(17, '2023_12_09_104938_alter_table_devision_add_coloumn_slug', 1),
(18, '2023_12_10_015030_alter_table_devisions_add_description', 1),
(19, '2023_12_10_043809_alter_table_projects_add_column_message', 1),
(20, '2023_12_11_091826_create_table_user_have_roles', 1),
(21, '2023_12_17_070855_alter_table_user_add_record_sytatus', 1),
(22, '2023_12_22_075319_create_table_user_have_project', 1),
(23, '2023_12_23_023634_alter_table_user_add_record_profile_nik', 1),
(24, '2023_12_23_032702_alter_table_devisions_add_status', 1),
(25, '2024_01_17_133142_create_shifts_table', 2),
(26, '2024_01_17_041341_alter_table_attendance_add_fulladdreess', 3),
(27, '2024_01_18_181757_remove_user_and_project_ids_from_shifts_table', 3),
(28, '2024_01_18_182401_create_shift_have_users_table', 4),
(29, '2024_01_18_182704_create_shift_have_projects_table', 5),
(30, '2024_01_26_113416_alter_table_products_pisik_and_cair', 6),
(31, '2024_01_27_131837_alter_table_projects_add_schedule', 6),
(32, '2024_01_30_005537_add_colom_from_shifts_table', 7),
(33, '2024_02_01_155118_add_colom_documentid_table', 7),
(34, '2024_02_04_074151_alter_table_attendance_add_shift_id', 8),
(35, '2024_05_04_031834_create_files', 9),
(36, '2024_05_05_090327_alter_files', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `userId` bigint UNSIGNED NOT NULL,
  `mediaId` bigint UNSIGNED DEFAULT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `profiles`
--

INSERT INTO `profiles` (`id`, `userId`, `mediaId`, `jabatan`, `name`, `gender`, `address`, `phoneNumber`, `created_at`, `updated_at`) VALUES
(1, 1, 148, NULL, 'admin', NULL, 'test buah batu', '089', '2024-01-08 09:26:26', '2024-05-09 06:18:15'),
(2, 3, NULL, NULL, 'nauval', NULL, 'Jln. in dulu aja', '082125672264', '2024-01-29 06:16:28', '2024-01-29 06:16:28'),
(3, 8, NULL, NULL, 'test', NULL, NULL, NULL, '2024-01-29 17:34:54', '2024-01-29 17:34:54'),
(4, 2, NULL, NULL, 'encep', NULL, 'jkhkjhj', '0896875765765', '2024-01-30 05:15:49', '2024-01-30 05:15:49'),
(5, 6, NULL, NULL, 'maman', NULL, 'maman', '08987978', '2024-02-05 05:22:10', '2024-02-05 05:22:10'),
(6, 9, NULL, NULL, 'dika', NULL, 'asd', '09856789', '2024-02-05 07:33:27', '2024-02-05 07:33:27'),
(7, 13, NULL, NULL, 'mina2', NULL, NULL, NULL, '2024-02-05 08:14:53', '2024-02-05 08:15:07'),
(8, 14, 9, NULL, 'User', NULL, 'jl hjgjgghj', '907987', '2024-02-05 15:59:22', '2024-02-05 15:59:22'),
(9, 15, 10, NULL, 'useradmin', NULL, 'jl hghg', '09789687', '2024-02-05 16:20:06', '2024-02-05 16:20:06'),
(10, 19, NULL, NULL, 'dikaaaa', NULL, NULL, NULL, '2024-02-15 08:42:50', '2024-02-15 08:43:00'),
(11, 20, 12, NULL, 'zulfikar', NULL, 'Jln. Dian Indah II no. 2', '082125672264', '2024-04-07 00:00:14', '2024-04-07 00:01:02'),
(12, 26, NULL, NULL, 'Firman Prasetyo, ST', NULL, NULL, NULL, '2024-04-23 21:03:03', '2024-04-23 21:03:03'),
(13, 23, NULL, NULL, 'Budi Witjaksana, ST.MT', NULL, NULL, NULL, '2024-04-23 21:15:17', '2024-04-23 21:15:17'),
(14, 25, NULL, NULL, 'Ir. Juliastono, IAI', NULL, NULL, NULL, '2024-04-23 21:18:11', '2024-04-23 21:18:11'),
(15, 27, NULL, NULL, 'Moerjani, ST', NULL, NULL, '085103586643', '2024-04-23 21:21:48', '2024-04-30 00:26:46'),
(16, 32, 22, NULL, 'Lutfi Arisandi,S.Ars', NULL, NULL, NULL, '2024-04-23 21:26:10', '2024-04-28 19:05:30'),
(17, 36, 113, NULL, 'Riri Amelia, ST', NULL, 'Kp. Margahurip RT.01 RW.04 Desa Ciheulang KecamatanCiparay Kabupaten Bandung', '081214781274', '2024-04-23 23:53:19', '2024-05-06 01:45:34'),
(18, 46, NULL, NULL, 'Ir. Agus Hartono, ST.MT', NULL, NULL, NULL, '2024-04-28 18:37:20', '2024-04-28 18:37:20'),
(19, 28, NULL, NULL, 'Syahril Baidillah, ST', NULL, NULL, NULL, '2024-04-28 18:52:30', '2024-04-28 18:52:30'),
(20, 47, NULL, NULL, 'Johan Dika Aswan, ST', NULL, NULL, NULL, '2024-04-28 18:53:09', '2024-04-28 18:53:09'),
(21, 30, NULL, NULL, 'Carolin Monica Sitompul, ST', NULL, NULL, NULL, '2024-04-28 18:53:43', '2024-04-28 18:53:43'),
(22, 38, NULL, NULL, 'Gentli Siti Kodariah, ST', NULL, 'Kp. Hegarmanah RT 01 RW 20 Desa Sukamanah Kecamatan Pangalengan Kabupaten Bandung', '081320261346', '2024-04-28 18:59:10', '2024-04-28 18:59:10'),
(23, 31, 86, NULL, 'Ade Chandra, ST', NULL, NULL, NULL, '2024-04-28 20:04:57', '2024-05-02 23:27:37'),
(24, 33, 37, NULL, 'Muhammad Danu Abdul Aziz, ST', NULL, 'Kabupaten Bandung', '082320264512', '2024-04-28 21:11:51', '2024-04-28 22:06:43'),
(25, 34, 32, NULL, 'Yuniyanto priyambodo, ST', NULL, 'Kabupaten Bandung', '0817210609', '2024-04-28 21:36:50', '2024-04-28 21:36:50'),
(26, 49, 99, NULL, 'Moh.Hazis,ST', NULL, 'Kawi Raya No. 75, RT. 4, RW. 6, Kel. Wates, Kec. Semampir, Kota Mojokerto', '085103586643', '2024-05-01 23:29:06', '2024-05-03 21:14:58'),
(27, 50, 98, NULL, 'Imam Baihaqi Krisna Bayu, ST', NULL, 'DUSUN KRAJAN, DESA SABRANG, KEC. AMBULU, KABUPATEN JEMBER, JAWA TIMUR', '085607536882', '2024-05-03 19:43:25', '2024-05-03 19:53:01'),
(28, 48, 111, NULL, 'Agung', NULL, 'ledeng', '081321100050', '2024-05-06 01:35:21', '2024-05-06 01:35:21'),
(29, 52, 185, NULL, 'Adit Bagus Prasetyo', NULL, NULL, '081216823474', '2024-05-13 18:50:35', '2024-05-13 18:51:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `progres`
--

CREATE TABLE `progres` (
  `id` bigint UNSIGNED NOT NULL,
  `projectId` int NOT NULL,
  `fisik` int NOT NULL,
  `pencairan` int NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `projects`
--

CREATE TABLE `projects` (
  `id` bigint UNSIGNED NOT NULL,
  `devisionId` bigint UNSIGNED NOT NULL,
  `userId` int NOT NULL,
  `projectNo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `startdate` date NOT NULL,
  `targetdate` date NOT NULL,
  `cost` bigint NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rowStatus` tinyint(1) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longtitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `physical_process` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disbursement_of_funds` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeIn` time DEFAULT NULL,
  `timeOut` time DEFAULT NULL,
  `documentId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `projects`
--

INSERT INTO `projects` (`id`, `devisionId`, `userId`, `projectNo`, `startdate`, `targetdate`, `cost`, `status`, `rowStatus`, `address`, `latitude`, `longtitude`, `created_at`, `updated_at`, `name`, `slug`, `description`, `physical_process`, `disbursement_of_funds`, `timeIn`, `timeOut`, `documentId`) VALUES
(1, 1, 1, 'B9797', '2024-01-01', '2024-01-20', 9000000, 'publish', 0, 'Buah Batu, Kujangsari, Bandung Kidul, Bandung, Jawa Barat, Jawa, 40257, Indonesia', '-6.9655493', '107.6379256', '2024-01-15 08:25:22', '2024-04-27 23:48:53', 'Jalan Bubat', 'jalan-bubat', 'test', NULL, NULL, NULL, NULL, NULL),
(2, 3, 1, 'GD09808', '2024-01-01', '2024-01-31', 900000000, 'publish', 0, 'Buah Batu, Kujangsari, Bandung Kidul, Bandung, Jawa Barat, Jawa, 40257, Indonesia', '-6.9655493', '107.6379256', '2024-01-15 08:34:00', '2024-01-29 09:47:14', 'Gedung Dinas', '-1', 'test', NULL, NULL, '12:00:00', '17:00:00', NULL),
(3, 1, 2, 'JLN01', '2024-01-01', '2024-01-31', 40000000, 'publish', 0, 'jl buah batu', '-6.9655493', '107.6379256', '2024-01-23 16:46:45', '2024-01-30 05:17:45', 'Jalan Bubat', '-1', '-', NULL, NULL, '08:00:00', '16:00:00', NULL),
(4, 1, 1, 'JC-0866', '2024-02-07', '2024-02-06', 9000000, 'publish', 0, 'Cibiru, Kota Bandung, Jawa Barat, Jawa, Indonesia', '-6.915058950000001', '107.72119143769423', '2024-02-05 16:21:56', '2024-02-05 16:22:06', 'Jl Cibiru', '', 'jlan', NULL, NULL, NULL, NULL, NULL),
(5, 2, 1, '12345', '2024-04-07', '2024-05-07', 90000000, 'publish', 0, 'Soreang, Bandung, Jawa Barat, Jawa, 40912, Indonesia', '-7.0268685', '107.5167964', '2024-04-07 00:06:05', '2024-04-23 14:11:45', 'Pembangunan Gedung', 'pembangunan-gedung-1', 'Membangun Gedung', NULL, NULL, NULL, NULL, NULL),
(6, 2, 1, '46456780', '2024-04-15', '2024-04-22', 30000000, 'publish', 0, 'Bandung, Jawa Barat, Jawa, Indonesia', '-7.06134235', '107.6342883447783', '2024-04-14 20:51:12', '2024-04-23 14:35:57', 'Bangunan 2 LANTAI (TEST)', 'bangunan-2-lantai-test-1', 'test', NULL, NULL, NULL, NULL, NULL),
(7, 1, 1, '1234', '2024-04-19', '2024-04-19', 90000, 'draft', 0, 'Jalan, Bhawanigarh Tahsil, Sangrur District, Punjab, India', '30.2917932', '75.9656095', '2024-04-18 21:25:31', '2024-04-18 21:25:31', 'Test', 'test', 'test', NULL, NULL, NULL, NULL, NULL),
(8, 8, 1, '602.1/8/KTR/MK.RSUD.PACIRA/DPUTR/2024', '2024-02-01', '2024-11-26', 989513940, 'publish', 0, 'Cilame, Bandung, Jawa Barat, Jawa, 40912, Indonesia', '-7.0367693', '117.8902853', '2024-04-22 19:21:53', '2024-04-29 21:13:40', 'KONSULTAN MK PEMBANGUNAN RSUD PACIRA', 'konsultan-mk-pembangunan-rsud-pacira', 'PEMBANGUNAN RSUD PACIRA', NULL, NULL, NULL, NULL, NULL),
(9, 1, 1, '1234', '2024-04-22', '2024-04-22', 123456789, 'draft', 0, 'jln, RT 01, RW 06, Cigadung, Pandeglang, Banten, Jawa, 42211, Indonesia', '-6.2804701', '106.1106861', '2024-04-22 19:22:24', '2024-04-22 19:22:24', 'Test', 'test-1', 'test', NULL, NULL, NULL, NULL, NULL),
(10, 8, 1, '602.1/09/KTR/PWS.ALUN-ALUN PASEH/DPUTR/2024', '2024-03-05', '2024-09-01', 385947000, 'draft', 0, 'Ibun, Bandung, Jawa Barat, Jawa, Indonesia', '-7.1321639', '107.5167964', '2024-04-22 19:44:30', '2024-04-29 21:18:53', 'PENGAWASAN PENATAAN ALUN-ALUN PASEH', 'pengawasan-penataan-alun-alun-paseh', 'PENATAAN ALUN-ALUN', NULL, NULL, NULL, NULL, NULL),
(11, 8, 1, '602.1/8/SPK/Pws.Rhb.Gd.BKAD/DPUTR/2024', '2024-03-08', '2024-07-06', 98179500, 'publish', 0, 'Soreang, Bandung, Jawa Barat, Jawa, 40912, Indonesia', '-7.0268685', '107.5167964', '2024-04-22 19:44:30', '2024-04-29 21:09:30', 'PENGAWASAN REHAB GEDUNG BKAD', 'pengawasan-rehab-gedung-bkad', 'REHAB GEDUNG BKAD', NULL, NULL, NULL, NULL, NULL),
(12, 6, 36, '1', '2024-04-29', '2024-06-28', 275000000, 'publish', 0, 'Soreang, Bandung, Jawa Barat, Jawa, 40912, Indonesia', '-7.0268685', '107.5167964', '2024-04-28 18:25:44', '2024-05-13 01:27:48', 'Pengawasan Kegiatan DAK Bidang Jalan Wilayah 1', '-1', 'Pengawasan Kegiatan DAK Bidang Jalan Wilayah 1', NULL, NULL, NULL, NULL, NULL),
(13, 6, 36, '2', '2024-04-29', '2024-06-28', 350000000, 'publish', 0, 'Majalaya, Bandung, Jawa Barat, Jawa, 40382, Indonesia', '-7.0495197', '107.7615982', '2024-04-28 18:28:39', '2024-05-13 01:27:57', 'Pengawasan Kegiatan DAK Bidang Jalan Wilayah 2', '-1', 'Pengawasan Kegiatan DAK Bidang Jalan Wilayah 2', NULL, NULL, NULL, NULL, NULL),
(14, 6, 36, '3', '2024-04-29', '2024-06-28', 2450000000, 'publish', 0, 'Majalaya, Bandung, Jawa Barat, Jawa, 40382, Indonesia', '-7.0495197', '107.6030197', '2024-04-28 18:39:38', '2024-05-13 01:27:30', 'Pengawasan Kegiatan DAK Bidang Jalan Wilayah 3', '-1', 'Pengawasan Kegiatan DAK Bidang Jalan Wilayah 3', NULL, NULL, NULL, NULL, NULL),
(15, 6, 36, '4', '2024-05-09', '2024-07-27', 100000000, 'publish', 0, 'Bandung, Jawa Barat, Jawa, Indonesia', '-6.9215529', '107.6110212', '2024-05-05 19:10:56', '2024-05-13 01:28:04', 'Pengawasan Penyelenggaraan Jalan/Jembatan Wilayah 9', '-1', 'Pengawasan Penyelenggaraan Jalan/Jembatan Wilayah 9', NULL, NULL, NULL, NULL, NULL),
(16, 6, 36, '5', '2024-05-09', '2024-07-27', 50000000, 'publish', 0, 'Bandung, Jawa Barat, Jawa, Indonesia', '-6.9215529', '107.6110212', '2024-05-05 19:11:56', '2024-05-13 01:28:12', 'Pengawasan Teknis Jalan dan Jembatan kegiatan Mendesak wilayah 5', '-1', 'Pengawasan Teknis Jalan dan Jembatan kegiatan Mendesak wilayah 5', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', '2024-01-08 09:26:26', '2024-01-08 09:26:26'),
(2, 'user', '2024-01-08 09:26:26', '2024-01-08 09:26:26'),
(3, 'admin', '2024-01-08 09:26:26', '2024-01-08 09:26:26'),
(4, 'user_admin', '2024-01-08 09:26:26', '2024-01-08 09:26:26'),
(5, 'superadmin', '2024-01-23 16:43:55', '2024-01-23 16:43:55'),
(6, 'user', '2024-01-23 16:43:55', '2024-01-23 16:43:55'),
(7, 'admin', '2024-01-23 16:43:55', '2024-01-23 16:43:55'),
(8, 'user_admin', '2024-01-23 16:43:55', '2024-01-23 16:43:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_users`
--

CREATE TABLE `role_has_users` (
  `id` bigint UNSIGNED NOT NULL,
  `userId` bigint UNSIGNED NOT NULL,
  `roleId` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_users`
--

INSERT INTO `role_has_users` (`id`, `userId`, `roleId`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-01-08 09:26:26', '2024-01-08 09:26:26'),
(2, 2, 1, '2024-01-08 09:26:59', '2024-01-08 09:26:59'),
(3, 2, 2, '2024-01-08 09:26:59', '2024-01-08 09:26:59'),
(4, 3, 2, '2024-01-15 08:28:52', '2024-01-15 08:28:52'),
(5, 6, 4, '2024-01-15 09:23:04', '2024-01-15 09:23:04'),
(6, 8, 1, '2024-01-29 17:34:54', '2024-01-29 17:34:54'),
(7, 8, 2, '2024-01-29 17:34:54', '2024-01-29 17:34:54'),
(8, 9, 1, '2024-02-05 07:28:47', '2024-02-05 07:28:47'),
(9, 9, 2, '2024-02-05 07:28:47', '2024-02-05 07:28:47'),
(10, 10, 1, '2024-02-05 07:35:03', '2024-02-05 07:35:03'),
(11, 10, 2, '2024-02-05 07:35:03', '2024-02-05 07:35:03'),
(12, 11, 2, '2024-02-05 07:58:45', '2024-02-05 07:58:45'),
(13, 12, 2, '2024-02-05 08:02:01', '2024-02-05 08:02:01'),
(14, 13, 4, '2024-02-05 08:03:01', '2024-02-05 08:03:01'),
(15, 14, 2, '2024-02-05 15:57:49', '2024-02-05 15:57:49'),
(16, 15, 4, '2024-02-05 16:01:53', '2024-02-05 16:01:53'),
(17, 16, 1, '2024-02-05 16:31:40', '2024-02-05 16:31:40'),
(18, 17, 3, '2024-02-05 16:38:27', '2024-02-05 16:38:27'),
(19, 18, 2, '2024-02-15 08:39:52', '2024-02-15 08:39:52'),
(20, 19, 2, '2024-02-15 08:41:28', '2024-02-15 08:41:28'),
(21, 20, 2, '2024-04-06 23:57:33', '2024-04-06 23:57:33'),
(22, 23, 2, '2024-04-23 18:43:47', '2024-04-23 18:43:47'),
(23, 24, 2, '2024-04-23 19:12:36', '2024-04-23 19:12:36'),
(24, 25, 2, '2024-04-23 20:57:05', '2024-04-23 20:57:05'),
(25, 26, 2, '2024-04-23 20:58:00', '2024-04-23 20:58:00'),
(26, 27, 2, '2024-04-23 20:58:45', '2024-04-23 20:58:45'),
(27, 28, 2, '2024-04-23 21:01:12', '2024-04-23 21:01:12'),
(28, 29, 2, '2024-04-23 21:07:24', '2024-04-23 21:07:24'),
(29, 30, 2, '2024-04-23 21:08:53', '2024-04-23 21:08:53'),
(30, 31, 2, '2024-04-23 21:12:35', '2024-04-23 21:12:35'),
(31, 32, 2, '2024-04-23 21:13:54', '2024-04-23 21:13:54'),
(32, 33, 2, '2024-04-23 21:16:27', '2024-04-23 21:16:27'),
(33, 34, 2, '2024-04-23 21:17:14', '2024-04-23 21:17:14'),
(34, 35, 3, '2024-04-23 22:08:07', '2024-04-23 22:08:07'),
(35, 36, 3, '2024-04-23 23:44:52', '2024-04-23 23:44:52'),
(36, 37, 3, '2024-04-23 23:46:58', '2024-04-23 23:46:58'),
(37, 38, 3, '2024-04-23 23:48:47', '2024-04-23 23:48:47'),
(38, 46, 2, '2024-04-28 18:25:10', '2024-04-28 18:25:10'),
(39, 47, 2, '2024-04-28 18:29:34', '2024-04-28 18:29:34'),
(40, 48, 3, '2024-04-28 22:42:08', '2024-04-28 22:42:08'),
(41, 49, 2, '2024-04-30 00:29:46', '2024-04-30 00:29:46'),
(42, 50, 2, '2024-04-30 00:33:00', '2024-04-30 00:33:00'),
(43, 51, 2, '2024-04-30 00:34:06', '2024-04-30 00:34:06'),
(44, 52, 2, '2024-04-30 00:35:23', '2024-04-30 00:35:23'),
(45, 53, 2, '2024-05-02 18:25:17', '2024-05-02 18:25:17'),
(46, 56, 2, '2024-05-06 01:38:39', '2024-05-06 01:38:39'),
(47, 58, 2, '2024-05-06 01:40:47', '2024-05-06 01:40:47'),
(48, 59, 2, '2024-05-06 01:41:08', '2024-05-06 01:41:08'),
(49, 60, 2, '2024-05-06 01:41:32', '2024-05-06 01:41:32'),
(50, 64, 2, '2024-05-13 00:25:55', '2024-05-13 00:25:55'),
(51, 65, 2, '2024-05-13 00:26:27', '2024-05-13 00:26:27'),
(52, 66, 2, '2024-05-13 00:26:56', '2024-05-13 00:26:56'),
(53, 67, 2, '2024-05-13 00:27:27', '2024-05-13 00:27:27'),
(54, 68, 2, '2024-05-13 00:27:58', '2024-05-13 00:27:58'),
(55, 69, 2, '2024-05-13 00:28:30', '2024-05-13 00:28:30'),
(56, 72, 6, '2024-05-13 00:56:40', '2024-05-13 00:56:40'),
(57, 80, 2, '2024-05-14 21:53:46', '2024-05-14 21:53:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shifts`
--

CREATE TABLE `shifts` (
  `id` bigint UNSIGNED NOT NULL,
  `timeIn` time NOT NULL,
  `timeOut` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `targetdate` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shifts`
--

INSERT INTO `shifts` (`id`, `timeIn`, `timeOut`, `created_at`, `updated_at`, `type`, `startdate`, `targetdate`, `status`) VALUES
(2, '08:00:00', '17:00:00', '2024-01-18 12:07:41', '2024-01-18 12:07:41', NULL, NULL, NULL, NULL),
(3, '12:00:00', '15:10:00', '2024-02-04 00:48:48', '2024-02-04 00:48:48', 'Lembur', '2024-02-05', '2024-02-06', ''),
(4, '12:00:00', '15:10:00', '2024-02-04 00:49:06', '2024-02-04 00:49:06', 'Lembur', '2024-02-05', '2024-02-06', ''),
(5, '00:00:00', '00:00:00', '2024-02-05 06:11:04', '2024-02-05 06:11:04', 'Lembur', '2024-02-06', '2024-02-24', ''),
(6, '08:00:00', '17:00:00', '2024-02-05 16:24:46', '2024-02-05 16:24:46', 'Reguler', NULL, NULL, ''),
(9, '08:00:00', '16:00:00', '2024-04-28 22:09:57', '2024-04-28 22:09:57', 'Reguler', NULL, NULL, ''),
(10, '08:00:00', '16:00:00', '2024-04-28 22:14:06', '2024-04-28 22:14:06', 'Reguler', NULL, NULL, ''),
(11, '00:00:00', '00:00:00', '2024-05-15 20:57:19', '2024-05-15 20:57:19', 'Reguler', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shift_have_projects`
--

CREATE TABLE `shift_have_projects` (
  `id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `shift_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shift_have_projects`
--

INSERT INTO `shift_have_projects` (`id`, `project_id`, `shift_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2024-01-18 12:07:41', '2024-01-18 12:07:41'),
(2, 3, 3, '2024-02-04 00:48:48', '2024-02-04 00:48:48'),
(3, 3, 4, '2024-02-04 00:49:06', '2024-02-04 00:49:06'),
(4, 2, 5, '2024-02-05 06:11:04', '2024-02-05 06:11:04'),
(5, 4, 6, '2024-02-05 16:24:46', '2024-02-05 16:24:46'),
(8, 8, 9, '2024-04-28 22:09:57', '2024-04-28 22:09:57'),
(9, 11, 10, '2024-04-28 22:14:06', '2024-04-28 22:14:06'),
(10, 1, 11, '2024-05-15 20:57:19', '2024-05-15 20:57:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shift_have_users`
--

CREATE TABLE `shift_have_users` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `shift_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shift_have_users`
--

INSERT INTO `shift_have_users` (`id`, `user_id`, `shift_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2024-01-18 12:07:41', '2024-01-18 12:07:41'),
(2, 3, 2, '2024-02-05 05:15:05', '2024-02-05 05:15:05'),
(3, 3, 2, '2024-02-05 05:15:05', '2024-02-05 05:15:05'),
(4, 2, 2, '2024-02-05 05:15:17', '2024-02-05 05:15:17'),
(5, 2, 2, '2024-02-05 05:15:17', '2024-02-05 05:15:17'),
(6, 3, 5, '2024-02-05 06:11:13', '2024-02-05 06:11:13'),
(7, 3, 5, '2024-02-05 06:11:13', '2024-02-05 06:11:13'),
(8, 14, 6, '2024-02-05 16:25:03', '2024-02-05 16:25:03'),
(9, 15, 6, '2024-02-05 16:25:06', '2024-02-05 16:25:06'),
(20, 23, 9, '2024-04-28 22:10:33', '2024-04-28 22:10:33'),
(21, 47, 9, '2024-04-28 22:10:49', '2024-04-28 22:10:49'),
(22, 46, 9, '2024-04-28 22:11:01', '2024-04-28 22:11:01'),
(23, 25, 9, '2024-04-28 22:11:21', '2024-04-28 22:11:21'),
(24, 26, 9, '2024-04-28 22:11:33', '2024-04-28 22:11:33'),
(25, 27, 9, '2024-04-28 22:11:46', '2024-04-28 22:11:46'),
(26, 28, 9, '2024-04-28 22:12:00', '2024-04-28 22:12:00'),
(27, 30, 9, '2024-04-28 22:12:16', '2024-04-28 22:12:16'),
(28, 31, 9, '2024-04-28 22:12:31', '2024-04-28 22:12:31'),
(29, 32, 9, '2024-04-28 22:12:44', '2024-04-28 22:12:44'),
(30, 33, 10, '2024-04-28 22:14:20', '2024-04-28 22:14:20'),
(31, 34, 10, '2024-04-28 22:14:33', '2024-04-28 22:14:33'),
(32, 9, 11, '2024-05-15 20:57:30', '2024-05-15 20:57:30'),
(33, 80, 9, '2024-05-15 21:08:50', '2024-05-15 21:08:50'),
(34, 52, 9, '2024-05-15 21:09:02', '2024-05-15 21:09:02'),
(35, 51, 9, '2024-05-15 21:09:20', '2024-05-15 21:09:20'),
(36, 49, 9, '2024-05-15 21:11:16', '2024-05-15 21:11:16'),
(37, 50, 9, '2024-05-15 21:11:41', '2024-05-15 21:11:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_nik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `userName`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `status`, `profile_nik`) VALUES
(1, 'admin', 'admin', 'admin@mail.com', NULL, '$2y$10$SW6dg25SRpguHgf2lPyG2uer2vEojCZNbHhlB9IEAlFE6MOWD2AmC', NULL, '2024-01-08 09:26:26', '2024-05-09 06:18:15', 'active', NULL),
(2, 'encep', 'test_encep', 'ihwanencep@gmail.com', NULL, '$2y$10$K1F1bfy0h2bTtO4BvAig/..nl1kIXnenoXruWs2k5z41ybCpJqfHm', NULL, '2024-01-08 09:26:59', '2024-01-30 05:15:49', 'active', NULL),
(3, 'nauval', 'nauval', 'nauval.saga@gmail.com', NULL, '$2y$10$GFV9W8NT/nqXL4vDvq8EuOODv6tnBpKmxnnlcO1.PhHRAJkzHFwoe', NULL, '2024-01-15 08:28:52', '2024-01-29 06:16:28', 'active', NULL),
(6, 'maman', 'maman', 'encepihwan98@gmail.com', NULL, '$2y$10$00FRsP5KjQVXJxOGZABnZulTMUIPRcf.hodGUaTL/x8GWer7Oh.XC', NULL, '2024-01-15 09:23:04', '2024-02-05 05:22:10', 'active', NULL),
(8, 'test', 'mina', 'minaeljiharkah@gmail.com', NULL, '$2y$10$RJdPVjHkNclr0EdDU0oOFu6Zzn3Au3lKsNR//9u1hmqntWl9.Jwy6', NULL, '2024-01-29 17:34:54', '2024-01-29 17:34:54', NULL, NULL),
(9, 'dika', 'dika', 'dikamahar884@gmail.com', NULL, '$2y$10$n9k/UP28.xk0jZMi/FCm/eYbJTHtoevkPiPpaS97uFSjKFJya7Q0u', NULL, '2024-02-05 07:28:47', '2024-02-05 07:33:50', 'active', NULL),
(10, 'dika2', 'dika2', 'dika@orderonline.id', NULL, '$2y$10$RZxxS.X.bq.1AUJmIw.gbuTdFu72uYZpGJjCyzKyfwcid.i7cLVVO', NULL, '2024-02-05 07:35:03', '2024-02-05 07:35:03', 'not_active', NULL),
(11, 'test', 'test@ts', 'test@test.co', NULL, '$2y$10$W2oPCYZnQXuEx1Z9P0USoOngkU19gD04UtBQPhDJH4hxq4hCXEQNK', NULL, '2024-02-05 07:58:45', '2024-02-05 07:58:45', 'not_active', NULL),
(12, 'test2', 'tst', 'test2@tst.co', NULL, '$2y$10$gOE6z.dauU9q8VUJP1EvkOYdOGD0.FCsSWJMjHNMT8SstCT8eH9cW', NULL, '2024-02-05 08:02:01', '2024-02-05 08:02:01', 'not_active', NULL),
(13, 'mina2', 'mina2', 'minanurhalimahh@gmail.com', NULL, '$2y$10$bdOe7xXDxgIebM403DL9HOKKimhMgxM82iQB6WU1WiZ7cJwApHOvK', NULL, '2024-02-05 08:03:01', '2024-02-05 08:15:58', 'active', NULL),
(14, 'User', 'User', 'user@mail.com', NULL, '$2y$10$SW6dg25SRpguHgf2lPyG2uer2vEojCZNbHhlB9IEAlFE6MOWD2AmC', NULL, '2024-02-05 15:57:49', '2024-02-05 15:59:22', 'active', NULL),
(15, 'useradmin', 'useradmin', 'useradmin@mail.com', NULL, '$2y$10$SW6dg25SRpguHgf2lPyG2uer2vEojCZNbHhlB9IEAlFE6MOWD2AmC', NULL, '2024-02-05 16:01:53', '2024-02-05 16:20:06', 'active', NULL),
(16, 'superadmin', 'superadmin', 'superadmin@mail.com', NULL, '$2y$10$SW6dg25SRpguHgf2lPyG2uer2vEojCZNbHhlB9IEAlFE6MOWD2AmC', NULL, '2024-02-05 16:31:40', '2024-02-05 16:31:40', 'not_active', NULL),
(17, 'admin2', 'admin2', 'admin2@mail.com', NULL, '$2y$10$SW6dg25SRpguHgf2lPyG2uer2vEojCZNbHhlB9IEAlFE6MOWD2AmC', NULL, '2024-02-05 16:38:27', '2024-02-05 16:38:27', 'not_active', NULL),
(18, 'dika - kampus', 'dikas', '1721011@ars.ac.id', NULL, '$2y$10$LYJ6m1Rl6JlJ35TcbzgKce.1P3E/JjwOPB6vcfsOKvbYCTv3FlMDC', NULL, '2024-02-15 08:39:52', '2024-02-15 08:39:52', 'not_active', NULL),
(19, 'dikaaaa', 'dikkk', '17201011@ars.ac.id', NULL, '$2y$10$VQgTtG1vw27TRjGE5hGU0OL0edcRXLhJZuXqdOdt95ydTYbbSYEsu', NULL, '2024-02-15 08:41:28', '2024-02-15 08:42:50', 'active', NULL),
(20, 'zulfikar', 'zulfikar', 'zulfikar.nauval1998@gmail.com', NULL, '$2y$10$bBxdl1EGYDEcFRIJPaG/ium7/gZUNq4wtH1beUVVtUq5foYSaVYQS', NULL, '2024-04-06 23:57:33', '2024-04-07 00:00:13', 'active', NULL),
(23, 'Budi Witjaksana, ST.MT', 'Budi Witjaksana', 'budiwitjaksana044@gmail.com', NULL, '$2y$10$nvepa2QgQ2SeOSWiIQ6kNO5FWkdTk8WHicikTvzTO8iVzpyRIo9tS', NULL, '2024-04-23 18:43:47', '2024-04-23 21:15:17', 'active', NULL),
(24, 'Ir. Agus Hartono, ST.MT', 'Agus Hartono', 'ahartono542@gmail.com', NULL, '$2y$10$D0A28eaQC8taCWxceqrIgOAFqynuUMuiYpE6B7/rffJMsEjWDIIRm', NULL, '2024-04-23 19:12:36', '2024-04-23 19:12:36', 'not_active', NULL),
(25, 'Ir. Juliastono, IAI', 'Juliastono', 'juliastono584@gmail.com', NULL, '$2y$10$wILMxsCTsQ.hEtUyD5JEKuGIsIEyAFXIPD2SPnS/oPw14oaq10gRe', NULL, '2024-04-23 20:57:05', '2024-04-23 21:18:11', 'active', NULL),
(26, 'Firman Prasetyo, ST', 'Firman Prasetyo', 'firmanprasetyo092@gmail.com', NULL, '$2y$10$BYAciZFqH8G1UpNqiin/9eL6//xsS0j1q79FGoDtLmQIV9C04JMaW', NULL, '2024-04-23 20:58:00', '2024-04-23 21:03:02', 'active', NULL),
(27, 'Moerjani, ST', 'Moerjani', 'moerjani7@gmail.com', NULL, '$2y$10$xL461nOiD6pbhQm3DLjlqeXMQvlEZAtNRxTr8iN0NGdV6QG0lkr/6', NULL, '2024-04-23 20:58:45', '2024-04-23 21:21:48', 'active', NULL),
(28, 'Syahril Baidillah, ST', 'Syahril Baidillah', 'syahrilbaidillah169@gmail.com', NULL, '$2y$10$/fG6SZmGyJGuB5okj5OUNOMC.iRzLgZgfvenGTMeSJX0TF83h9yfG', NULL, '2024-04-23 21:01:12', '2024-04-28 18:52:30', 'active', NULL),
(29, 'Johan Dika Aswan, ST', 'Johan Dika Aswan', 'johandikaaswan571@gmail.com', NULL, '$2y$10$Bok6.22Sil7Ogiubwzw50.G6RGxX00DJFE9uVhqEbvji0To6FDJHS', NULL, '2024-04-23 21:07:24', '2024-04-23 21:07:24', 'not_active', NULL),
(30, 'Carolin Monica Sitompul, ST', 'Carolin Monica Sitompul', 'carolinmonicasitompul@gmail.com', NULL, '$2y$10$vQkcgyhWi9q5Hf7lvDDSaergtDEQ9kegHXCu.CkcuO8GnwVmyPe3S', NULL, '2024-04-23 21:08:53', '2024-04-28 18:53:43', 'active', NULL),
(31, 'Ade Chandra, ST', 'Ade Chandra', 'chandraade656@gmail.com', NULL, '$2y$10$8r7TOCLWvGTNQw6B6.XgcOfySr.oT601oKRvd5q.r10uGA.shjcpi', NULL, '2024-04-23 21:12:35', '2024-04-28 20:04:57', 'active', NULL),
(32, 'Lutfi Arisandi,S.Ars', 'Lutfi Arisandi', 'lutfiarisandi808@gmail.com', NULL, '$2y$10$q2HFlmkfJxdVQGsLv5/D5eissqrQQHLwa8I5UcFzqBXlr80wNT4PS', NULL, '2024-04-23 21:13:54', '2024-04-23 21:26:10', 'active', NULL),
(33, 'Muhammad Danu Abdul Aziz, ST', 'Muhammad Danu Abdul Aziz', 'mdanuabdulaziz@gmail.com', NULL, '$2y$10$7jdazvaqaAJa1ZjdEbUVj.YoHWECxs/CkvgLc7SBk9G2.MHhb7Gd2', NULL, '2024-04-23 21:16:27', '2024-04-28 21:43:52', 'active', NULL),
(34, 'Yuniyanto priyambodo, ST', 'Yuniyanto priyambodo', 'yuniantopriyambodo@gmail.com', NULL, '$2y$10$EbV4NVyFuwef60hfh3F9jeGYAZxZzYtmmC3p0XUDVtoKcwiPkWOxC', NULL, '2024-04-23 21:17:14', '2024-04-28 22:02:10', 'active', NULL),
(35, 'Dirgantara', 'dirgantarapm', 'dirgantaraaapm@gmail.com', NULL, '$2y$10$Tc3wh.0d0J3zgav3iaH1HuzT0nEumtjROza8TgQI68hvKDxy/ljLy', NULL, '2024-04-23 22:08:07', '2024-04-23 22:08:07', 'not_active', NULL),
(36, 'Riri Amelia, ST', 'Riri Amelia', 'ririamelia85@gmail.com', NULL, '$2y$10$y6Ju/rqzG/.HssZVcP39iuCibhUBHPXNps7AVSwiRckGgqaZi.TWG', NULL, '2024-04-23 23:44:52', '2024-04-23 23:53:19', 'active', NULL),
(37, 'Zaprulloh', 'Zaprulloh (Bid.Drainase)', 'zaprullohahmad88@gmail.com', NULL, '$2y$10$/wYOgUT9Ul36VIwEW6I5d.jRMlGfPvgAHNy7ucvDKyIOtpQRFJQ9.', NULL, '2024-04-23 23:46:58', '2024-04-23 23:46:58', 'not_active', NULL),
(38, 'Gentli Siti Kodariah, ST', 'Gentli (Bid.Gedung)', 'gentlisitikodariah19@gmail.com', NULL, '$2y$10$BjzQn1GWi9wBahpC0Spi7uWHzyumnqNupSEG6kawajKWbkxxdAEBu', NULL, '2024-04-23 23:48:47', '2024-04-28 18:59:10', 'active', NULL),
(46, 'Ir. Agus Hartono, ST.MT', 'Agus Hartono', 'hagus0826@gmail.com', NULL, '$2y$10$/OP0SctbfyPEQSqE3Av4UuJ94Cz7Xo2rf/7em2PcQV7PZ3xv7wUBe', NULL, '2024-04-28 18:25:10', '2024-04-28 18:37:20', 'active', NULL),
(47, 'Johan Dika Aswan, ST', 'Johan Dika Aswan', 'johandikaaswan134@gmail.com', NULL, '$2y$10$UJoX6HlwDjWdEU5IHKdPJeqvZrD.xey/pkLDen6FWLL1slfrn1Eku', NULL, '2024-04-28 18:29:34', '2024-04-28 18:53:09', 'active', NULL),
(48, 'Agung', 'Agung', 'artracingagung@gmail.com', NULL, '$2y$10$Q5KUuDPrEekmmcnUkfbSeug5hCP/VzRQ8XD77htEVl37q/CxTAHKi', NULL, '2024-04-28 22:42:08', '2024-05-06 01:35:21', 'active', NULL),
(49, 'Moh.Hazis,ST', 'Moh Hazis', 'mhazis15@gmail.com', NULL, '$2y$10$4TVii47KOFlocnlk4uGWNueaDnXbY8m6/GL4QDqKO83zaNwbwF6FS', NULL, '2024-04-30 00:29:46', '2024-05-01 23:29:06', 'active', NULL),
(50, 'Imam Baihaqi Krisna Bayu, ST', 'Imam Baihaqi Krisna Bayu', 'imamb7189@gmail.com', NULL, '$2y$10$Ew.0p2bRZeYXWVBbVxNJ0.ORJmttb7Mvt187SCMmLClxJD93B8Eq6', NULL, '2024-04-30 00:33:00', '2024-05-03 19:43:25', 'active', NULL),
(51, 'Vinco Pratikto, ST', 'Vinco Pratikto', 'vincopratikto@gmail.com', NULL, '$2y$10$kuAx2Qljsc3yuB5uHI.Ns.NmT3VUG7184kwjGvA14Qj/U42Sa0qUG', NULL, '2024-04-30 00:34:06', '2024-04-30 00:34:06', 'not_active', NULL),
(52, 'Adit Bagus Prasetyo', 'Adit Bagus Prasetyo', 'aditbagus230@gmail.com', NULL, '$2y$10$ARLsqKQ9iJVtyYpYlskTnOxg91TGT6iZIWpKuBlsEsm4EUk54.Bha', NULL, '2024-04-30 00:35:23', '2024-05-13 18:50:35', 'active', NULL),
(53, 'Kinkin Sosikin, ST', 'Kinkin Sosikin, ST', 'kinkinpanumbangan@gmail.com', NULL, '$2y$10$jpR5uPddawngRQCx8KniXeIweN28/.zMuxp0TXwh6BGfGC5fyHceO', NULL, '2024-05-02 18:25:17', '2024-05-02 18:25:17', 'not_active', NULL),
(56, 'Asep Sumirat', 'Asep Sumirat', 'asepsumirat30@gmail.com', NULL, '$2y$10$qmDzVybqRPSCQlk9ckMqXeGObrQunUKOWGjyiQy5VUjaQHjIu4Zw6', NULL, '2024-05-06 01:38:39', '2024-05-06 01:38:39', 'not_active', NULL),
(58, 'Desrina Syawitri', 'Desrina Syawitri', 'desrinasyawitri30@gmail.com', NULL, '$2y$10$bN6cyfMVB3YVGAhQXMKv/ukE5WwEnMc0WuxSSTNiDNapWFw3HkJYm', NULL, '2024-05-06 01:40:47', '2024-05-06 01:40:47', 'not_active', NULL),
(59, 'Lucky Ginanjar Kusumah, ST', 'Lucky Ginanjar Kusumah, ST', 'luckyginanjarkusumah@yahoo.com', NULL, '$2y$10$fKWMtI.pk.U9v3M/1M1ZNuSfpc9k3sidw1NxRf8N3Z0b4/1jJPTYW', NULL, '2024-05-06 01:41:08', '2024-05-06 01:41:08', 'not_active', NULL),
(60, 'Arif Faizal', 'Arif Faizal', 'apik.suci@gmail.com', NULL, '$2y$10$/5nneKFgpC4/Tb9GkaxIm.NQteYz0CPFvpCBJ1k.mpjR1arzcra92', NULL, '2024-05-06 01:41:32', '2024-05-06 01:41:32', 'not_active', NULL),
(64, 'Abdul Azis Hermawan, ST.', 'Abdul Azis Hermawan, ST.', 'abdulazis041295@gmail.com', NULL, '$2y$10$XwzGnC7z.LbBA28xvkYl.OkCt.7kHGN3brkZ2LaqSZMzNNu6R0CVS', NULL, '2024-05-13 00:25:55', '2024-05-13 00:25:55', 'not_active', NULL),
(65, 'Fahrudin Fuad Yahya, ST', 'Fahrudin Fuad Yahya, ST', 'fahrudinfuadyahya86@gmail.com', NULL, '$2y$10$jbt/ve3wqUSkxoTdq0S/QOn5/jgHnd4jYkpr7KCHyWok25ftf72eW', NULL, '2024-05-13 00:26:27', '2024-05-13 00:26:27', 'not_active', NULL),
(66, 'Hadi Prasetyo Nurkolis, ST', 'Hadi Prasetyo Nurkolis, ST', 'Hadiprsty@yahoo.com', NULL, '$2y$10$bW3U2KG5qdgp1yQSYPs2hetuEVOrtZOXtVFPIoTSaZAWdcmATlPKe', NULL, '2024-05-13 00:26:56', '2024-05-13 00:26:56', 'not_active', NULL),
(67, 'Ida Bagus Setiawan, ST', 'Ida Bagus Setiawan, ST', 'idabagussetiawan2@gmail.com', NULL, '$2y$10$2oInPoC1Q5VzU2sxuShzV.X3rJ7BgSlxHd2WCbdsIOfZQfKdSucI.', NULL, '2024-05-13 00:27:27', '2024-05-13 00:27:27', 'not_active', NULL),
(68, 'A. Farris Aditya', 'A. Farris Aditya', 'Farris7571@gmail.com', NULL, '$2y$10$Tw2WNjGetyAuaUTw/gNt3uaXonC39fBEQbTbGFwLzZ8j8RZrKULVi', NULL, '2024-05-13 00:27:58', '2024-05-13 00:27:58', 'not_active', NULL),
(69, 'Aris Maulana', 'Aris Maulana', 'aris2004maulana12@gmail.com', NULL, '$2y$10$bzgx9/fAORYEiT14YvUzp.BWXFwCy4Pn5v5xVzr12JEtgMFscSE8a', NULL, '2024-05-13 00:28:30', '2024-05-13 00:28:30', 'not_active', NULL),
(72, 'Asep Tata', 'Asep Tata', 'aseptata_mpmn@yahoo.co.id', NULL, '$2y$10$MVIw0pHPL/oUD1HPGNSbf.mvsqMpUIqbdPEhJ2s8Nzgy7cabolRla', NULL, '2024-05-13 00:56:40', '2024-05-13 00:56:40', 'not_active', NULL),
(80, 'Andri Ardiansyah', 'Andri Ardiansyah', 'andry.ar75@gmail.com', NULL, '$2y$10$nkFZD42PZmb9WqCjqCGCXey/oFMbsPsezj/1wCGt9u2JMAgne5jUS', NULL, '2024-05-14 21:53:46', '2024-05-14 21:53:46', 'not_active', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_have_division`
--

CREATE TABLE `user_have_division` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `devision_id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user_have_division`
--

INSERT INTO `user_have_division` (`id`, `user_id`, `devision_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'owner', '2024-01-13 08:34:11', '2024-01-13 08:34:11'),
(2, 2, 1, 'assign', '2024-01-13 08:34:11', '2024-01-13 08:34:11'),
(3, 1, 2, 'owner', '2024-01-14 08:10:03', '2024-01-14 08:10:03'),
(4, 2, 2, 'assign', '2024-01-14 08:10:03', '2024-01-14 08:10:03'),
(5, 1, 3, 'owner', '2024-01-15 08:20:48', '2024-01-15 08:20:48'),
(6, 2, 3, 'assign', '2024-01-15 08:20:48', '2024-01-15 08:20:48'),
(7, 3, 3, 'assign', '2024-01-15 08:34:55', '2024-01-15 08:34:55'),
(8, 3, 1, 'assign', '2024-02-05 05:12:21', '2024-02-05 05:12:21'),
(9, 6, 1, 'assign', '2024-02-05 18:34:15', '2024-02-05 18:34:15'),
(10, 9, 1, 'assign', '2024-02-05 18:36:26', '2024-02-05 18:36:26'),
(11, 1, 10, 'owner', '2024-04-06 23:52:06', '2024-04-06 23:52:06'),
(12, 3, 10, 'assign', '2024-04-06 23:52:06', '2024-04-06 23:52:06'),
(13, 17, 8, 'assign', '2024-04-22 02:01:56', '2024-04-22 02:01:56'),
(14, 36, 6, 'assign', '2024-04-23 23:52:06', '2024-04-23 23:52:06'),
(15, 37, 5, 'assign', '2024-04-23 23:52:38', '2024-04-23 23:52:38'),
(16, 38, 8, 'assign', '2024-04-23 23:52:56', '2024-04-23 23:52:56'),
(17, 1, 11, 'owner', '2024-04-27 19:39:44', '2024-04-27 19:39:44'),
(18, 3, 11, 'assign', '2024-04-27 19:39:44', '2024-04-27 19:39:44'),
(19, 19, 1, 'assign', '2024-04-27 23:50:42', '2024-04-27 23:50:42'),
(20, 15, 1, 'assign', '2024-04-27 23:54:06', '2024-04-27 23:54:06'),
(21, 48, 6, 'assign', '2024-04-28 22:43:37', '2024-04-28 22:43:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_have_project`
--

CREATE TABLE `user_have_project` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user_have_project`
--

INSERT INTO `user_have_project` (`id`, `user_id`, `project_id`, `type`, `created_at`, `updated_at`) VALUES
(2, 3, 2, 'assign', '2024-01-15 08:38:22', '2024-01-15 08:38:22'),
(3, 2, 1, 'assign', '2024-01-29 09:00:12', '2024-01-29 09:00:12'),
(4, 2, 3, 'assign', '2024-01-29 09:00:35', '2024-01-29 09:00:35'),
(5, 2, 2, 'assign', '2024-02-04 00:51:44', '2024-02-04 00:51:44'),
(7, 6, 3, 'assign', '2024-02-04 01:12:23', '2024-02-04 01:12:23'),
(8, 3, 1, 'assign', '2024-02-05 05:14:39', '2024-02-05 05:14:39'),
(9, 6, 1, 'assign', '2024-02-05 06:13:09', '2024-02-05 06:13:09'),
(10, 14, 4, 'assign', '2024-02-05 16:22:39', '2024-02-05 16:22:39'),
(11, 15, 4, 'assign', '2024-02-05 16:22:48', '2024-02-05 16:22:48'),
(13, 23, 8, 'assign', '2024-04-23 19:04:09', '2024-04-23 19:04:09'),
(16, 26, 8, 'assign', '2024-04-23 21:19:55', '2024-04-23 21:19:55'),
(22, 32, 8, 'assign', '2024-04-23 21:24:22', '2024-04-23 21:24:22'),
(23, 33, 11, 'assign', '2024-04-23 21:26:07', '2024-04-23 21:26:07'),
(24, 34, 11, 'assign', '2024-04-23 21:26:50', '2024-04-23 21:26:50'),
(25, 46, 8, 'assign', '2024-04-28 18:43:30', '2024-04-28 18:43:30'),
(26, 47, 8, 'assign', '2024-04-28 18:43:40', '2024-04-28 18:43:40'),
(27, 52, 8, 'assign', '2024-04-30 00:38:32', '2024-04-30 00:38:32'),
(28, 51, 8, 'assign', '2024-04-30 00:38:43', '2024-04-30 00:38:43'),
(29, 50, 8, 'assign', '2024-04-30 00:39:00', '2024-04-30 00:39:00'),
(30, 49, 8, 'assign', '2024-04-30 00:39:12', '2024-04-30 00:39:12'),
(31, 53, 12, 'assign', '2024-05-13 01:30:28', '2024-05-13 01:30:28'),
(32, 56, 12, 'assign', '2024-05-13 01:30:40', '2024-05-13 01:30:40'),
(33, 60, 12, 'assign', '2024-05-13 01:31:06', '2024-05-13 01:31:06'),
(34, 59, 12, 'assign', '2024-05-13 01:31:23', '2024-05-13 01:31:23'),
(35, 58, 12, 'assign', '2024-05-13 01:31:39', '2024-05-13 01:31:39'),
(36, 64, 13, 'assign', '2024-05-13 01:32:53', '2024-05-13 01:32:53'),
(37, 65, 13, 'assign', '2024-05-13 01:33:20', '2024-05-13 01:33:20'),
(38, 66, 13, 'assign', '2024-05-13 01:33:37', '2024-05-13 01:33:37'),
(39, 67, 13, 'assign', '2024-05-13 01:33:57', '2024-05-13 01:33:57'),
(40, 68, 13, 'assign', '2024-05-13 01:34:10', '2024-05-13 01:34:10'),
(41, 69, 13, 'assign', '2024-05-13 01:35:15', '2024-05-13 01:35:15'),
(42, 80, 8, 'assign', '2024-05-14 21:54:32', '2024-05-14 21:54:32'),
(43, 9, 1, 'assign', '2024-05-15 07:24:09', '2024-05-15 07:24:09'),
(44, 19, 1, 'assign', '2024-05-15 07:24:09', '2024-05-15 07:24:09'),
(45, 10, 1, 'assign', '2024-05-15 07:24:09', '2024-05-15 07:24:09'),
(46, 9, 3, 'assign', '2024-05-15 20:55:37', '2024-05-15 20:55:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_have_roles`
--

CREATE TABLE `user_have_roles` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_userid_foreign` (`userId`),
  ADD KEY `attendances_mediaattendaceid_foreign` (`mediaAttendaceId`),
  ADD KEY `attendances_mediaofworkid_foreign` (`mediaOfWorkId`),
  ADD KEY `attendances_projectid_foreign` (`projectId`),
  ADD KEY `attendances_shift_id_foreign` (`shift_id`);

--
-- Indeks untuk tabel `devisions`
--
ALTER TABLE `devisions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `medias`
--
ALTER TABLE `medias`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_userid_foreign` (`userId`),
  ADD KEY `profiles_mediaid_foreign` (`mediaId`);

--
-- Indeks untuk tabel `progres`
--
ALTER TABLE `progres`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role_has_users`
--
ALTER TABLE `role_has_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_has_users_userid_foreign` (`userId`),
  ADD KEY `role_has_users_roleid_foreign` (`roleId`);

--
-- Indeks untuk tabel `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `shift_have_projects`
--
ALTER TABLE `shift_have_projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shift_have_projects_project_id_foreign` (`project_id`),
  ADD KEY `shift_have_projects_shift_id_foreign` (`shift_id`);

--
-- Indeks untuk tabel `shift_have_users`
--
ALTER TABLE `shift_have_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shift_have_users_user_id_foreign` (`user_id`),
  ADD KEY `shift_have_users_shift_id_foreign` (`shift_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `user_have_division`
--
ALTER TABLE `user_have_division`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_have_division_user_id_foreign` (`user_id`),
  ADD KEY `user_have_division_devision_id_foreign` (`devision_id`);

--
-- Indeks untuk tabel `user_have_project`
--
ALTER TABLE `user_have_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_have_project_user_id_foreign` (`user_id`),
  ADD KEY `user_have_project_project_id_foreign` (`project_id`);

--
-- Indeks untuk tabel `user_have_roles`
--
ALTER TABLE `user_have_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_have_roles_user_id_foreign` (`user_id`),
  ADD KEY `user_have_roles_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `devisions`
--
ALTER TABLE `devisions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `medias`
--
ALTER TABLE `medias`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `progres`
--
ALTER TABLE `progres`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `role_has_users`
--
ALTER TABLE `role_has_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `shift_have_projects`
--
ALTER TABLE `shift_have_projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `shift_have_users`
--
ALTER TABLE `shift_have_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT untuk tabel `user_have_division`
--
ALTER TABLE `user_have_division`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `user_have_project`
--
ALTER TABLE `user_have_project`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `user_have_roles`
--
ALTER TABLE `user_have_roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_mediaattendaceid_foreign` FOREIGN KEY (`mediaAttendaceId`) REFERENCES `medias` (`id`),
  ADD CONSTRAINT `attendances_mediaofworkid_foreign` FOREIGN KEY (`mediaOfWorkId`) REFERENCES `medias` (`id`),
  ADD CONSTRAINT `attendances_projectid_foreign` FOREIGN KEY (`projectId`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `attendances_shift_id_foreign` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`),
  ADD CONSTRAINT `attendances_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_mediaid_foreign` FOREIGN KEY (`mediaId`) REFERENCES `medias` (`id`),
  ADD CONSTRAINT `profiles_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `role_has_users`
--
ALTER TABLE `role_has_users`
  ADD CONSTRAINT `role_has_users_roleid_foreign` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `role_has_users_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `shift_have_projects`
--
ALTER TABLE `shift_have_projects`
  ADD CONSTRAINT `shift_have_projects_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `shift_have_projects_shift_id_foreign` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`);

--
-- Ketidakleluasaan untuk tabel `shift_have_users`
--
ALTER TABLE `shift_have_users`
  ADD CONSTRAINT `shift_have_users_shift_id_foreign` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`),
  ADD CONSTRAINT `shift_have_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `user_have_division`
--
ALTER TABLE `user_have_division`
  ADD CONSTRAINT `user_have_division_devision_id_foreign` FOREIGN KEY (`devision_id`) REFERENCES `devisions` (`id`),
  ADD CONSTRAINT `user_have_division_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `user_have_project`
--
ALTER TABLE `user_have_project`
  ADD CONSTRAINT `user_have_project_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `user_have_project_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `user_have_roles`
--
ALTER TABLE `user_have_roles`
  ADD CONSTRAINT `user_have_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `user_have_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
