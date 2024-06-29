-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2023 at 11:18 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cat5`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_menus`
--

CREATE TABLE `access_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `access_menus`
--

INSERT INTO `access_menus` (`id`, `menu_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 1, 3, NULL, NULL),
(7, 6, 3, NULL, NULL),
(8, 9, 2, NULL, NULL),
(9, 1, 2, NULL, NULL),
(10, 8, 2, NULL, NULL),
(11, 7, 3, NULL, NULL),
(12, 1, 4, NULL, NULL),
(13, 10, 4, NULL, NULL),
(14, 11, 4, NULL, NULL),
(15, 12, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `access_sub_menus`
--

CREATE TABLE `access_sub_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_menu_id` int(11) NOT NULL,
  `sub_role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `access_sub_menus`
--

INSERT INTO `access_sub_menus` (`id`, `sub_menu_id`, `sub_role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 8, 1, NULL, NULL),
(9, 9, 1, NULL, NULL),
(10, 10, 1, NULL, NULL),
(11, 11, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_kursus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remaining_time_minute` int(11) NOT NULL,
  `remaining_time_second` int(11) NOT NULL,
  `question_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_question` int(11) NOT NULL,
  `current_answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `answers_copy1`
--

CREATE TABLE `answers_copy1` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_kursus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remaining_time_minute` int(11) NOT NULL,
  `remaining_time_second` int(11) NOT NULL,
  `question_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_question` int(11) NOT NULL,
  `current_answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `answers_copy2`
--

CREATE TABLE `answers_copy2` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_kursus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remaining_time_minute` int(11) NOT NULL,
  `remaining_time_second` int(11) NOT NULL,
  `question_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_question` int(11) NOT NULL,
  `current_answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `answers_hari_1`
--

CREATE TABLE `answers_hari_1` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_kursus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remaining_time_minute` int(11) NOT NULL,
  `remaining_time_second` int(11) NOT NULL,
  `question_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_question` int(11) NOT NULL,
  `current_answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `category_courses`
--

CREATE TABLE `category_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` int(11) NOT NULL,
  `kode_kursus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_question` int(11) NOT NULL,
  `working_time` int(11) NOT NULL,
  `random` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_kursus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kursus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kep` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `kode_kursus`, `nama_kursus`, `kep`, `created_at`, `updated_at`) VALUES
(1, '101', 'Kemampuan Verbal', 0, '2021-07-04 20:24:55', '2022-07-30 04:14:41'),
(2, '102', 'Kemampuan Numerik', 0, '2021-07-04 20:25:05', '2022-07-30 04:14:41'),
(3, '103', 'Kemampuan Penalaran Logis', 0, '2021-07-04 20:25:16', '2022-07-30 04:14:41'),
(4, '201', 'Kemampuan Verbal', 0, '2021-07-04 20:29:29', '2022-07-30 04:14:41'),
(5, '202', 'Kemampuan Numerik', 0, '2021-07-04 20:29:41', '2022-07-30 04:14:41'),
(6, '203', 'Kemampuan Penalaran Logis', 0, '2021-07-04 20:37:07', '2022-07-30 04:14:41'),
(7, '301', 'Kemampuan Verbal', 0, '2021-07-04 20:37:19', '2022-07-30 04:14:41'),
(8, '302', 'Kemampuan Numerik', 0, '2021-07-04 20:37:33', '2022-07-30 04:14:41'),
(9, '303', 'Kemampuan Penalaran Logis', 0, '2021-07-04 20:37:41', '2022-07-30 04:14:41'),
(10, '401', 'Kemampuan Verbal', 0, '2021-07-04 20:38:28', '2022-07-30 04:14:41'),
(11, '402', 'Kemampuan Numerik', 0, '2021-07-04 20:38:38', '2022-07-30 04:14:41'),
(12, '403', 'Kemampuan Penalaran Logis', 0, '2021-07-04 20:38:46', '2022-07-30 04:14:41'),
(13, '601', 'Kemampuan Verbal', 0, '2022-07-11 01:30:11', '2022-07-30 04:14:41'),
(14, '602', 'Kemampuan Numerik', 0, '2022-07-11 01:30:11', '2022-07-30 04:14:41'),
(15, '603', 'Kemampuan Penalaran Logis', 0, '2022-07-11 01:30:11', '2022-07-30 04:14:41'),
(16, '501', 'Kemampuan Verbal', 0, '2022-07-11 01:30:11', '2022-07-30 04:14:41'),
(17, '502', 'Kemampuan Numerik', 0, '2022-07-11 01:30:11', '2022-07-30 04:14:41'),
(18, '503', 'Kemampuan Penalaran Logis', 0, '2022-07-11 01:30:11', '2022-07-30 04:14:41');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_kategori` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'TPA',
  `ujian_mulai` datetime DEFAULT NULL,
  `ujian_selesai` datetime DEFAULT NULL,
  `token` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_ruangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_sesi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_time` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_fakultas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_fakultas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_kampus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `kode_fakultas`, `nama_fakultas`, `kode_kampus`, `created_at`, `updated_at`) VALUES
(1, '02', 'Fakultas MIPA', NULL, NULL, NULL),
(2, '03', 'Fakultas Teknik', NULL, NULL, NULL),
(3, '04', 'Fakultas Ilmu Keolahragaan', NULL, NULL, NULL),
(4, '05', 'Fakultas Ilmu Pendidika', NULL, NULL, NULL),
(5, '06', 'Fakultas Bahasa Dan Sastra', NULL, NULL, NULL),
(6, '07', 'Fakultas Ilmu Sosial', NULL, NULL, NULL),
(7, '08', 'Fakultas Psikologi', NULL, NULL, NULL),
(8, '09', 'Fakultas Seni dan Desain', NULL, NULL, NULL),
(9, '10', 'Fakultas Ekonomi', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `hasils`
--

CREATE TABLE `hasils` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_kursus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `1` int(11) DEFAULT NULL,
  `2` int(11) DEFAULT NULL,
  `3` int(11) DEFAULT NULL,
  `4` int(11) DEFAULT NULL,
  `5` int(11) DEFAULT NULL,
  `6` int(11) DEFAULT NULL,
  `7` int(11) DEFAULT NULL,
  `8` int(11) DEFAULT NULL,
  `9` int(11) DEFAULT NULL,
  `10` int(11) DEFAULT NULL,
  `11` int(11) DEFAULT NULL,
  `12` int(11) DEFAULT NULL,
  `13` int(11) DEFAULT NULL,
  `14` int(11) DEFAULT NULL,
  `15` int(11) DEFAULT NULL,
  `16` int(11) DEFAULT NULL,
  `17` int(11) DEFAULT NULL,
  `18` int(11) DEFAULT NULL,
  `19` int(11) DEFAULT NULL,
  `20` int(11) DEFAULT NULL,
  `21` int(11) DEFAULT NULL,
  `22` int(11) DEFAULT NULL,
  `23` int(11) DEFAULT NULL,
  `24` int(11) DEFAULT NULL,
  `25` int(11) DEFAULT NULL,
  `26` int(11) DEFAULT NULL,
  `27` int(11) DEFAULT NULL,
  `28` int(11) DEFAULT NULL,
  `29` int(11) DEFAULT NULL,
  `30` int(11) DEFAULT NULL,
  `31` int(11) DEFAULT NULL,
  `32` int(11) DEFAULT NULL,
  `33` int(11) DEFAULT NULL,
  `34` int(11) DEFAULT NULL,
  `35` int(11) DEFAULT NULL,
  `36` int(11) DEFAULT NULL,
  `37` int(11) DEFAULT NULL,
  `38` int(11) DEFAULT NULL,
  `39` int(11) DEFAULT NULL,
  `40` int(11) DEFAULT NULL,
  `41` int(11) DEFAULT NULL,
  `42` int(11) DEFAULT NULL,
  `43` int(11) DEFAULT NULL,
  `44` int(11) DEFAULT NULL,
  `45` int(11) DEFAULT NULL,
  `46` int(11) DEFAULT NULL,
  `47` int(11) DEFAULT NULL,
  `48` int(11) DEFAULT NULL,
  `49` int(11) DEFAULT NULL,
  `50` int(11) DEFAULT NULL,
  `51` int(11) DEFAULT NULL,
  `52` int(11) DEFAULT NULL,
  `53` int(11) DEFAULT NULL,
  `54` int(11) DEFAULT NULL,
  `55` int(11) DEFAULT NULL,
  `56` int(11) DEFAULT NULL,
  `57` int(11) DEFAULT NULL,
  `58` int(11) DEFAULT NULL,
  `59` int(11) DEFAULT NULL,
  `60` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hasils_copy1`
--

CREATE TABLE `hasils_copy1` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_kursus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `1` int(11) DEFAULT NULL,
  `2` int(11) DEFAULT NULL,
  `3` int(11) DEFAULT NULL,
  `4` int(11) DEFAULT NULL,
  `5` int(11) DEFAULT NULL,
  `6` int(11) DEFAULT NULL,
  `7` int(11) DEFAULT NULL,
  `8` int(11) DEFAULT NULL,
  `9` int(11) DEFAULT NULL,
  `10` int(11) DEFAULT NULL,
  `11` int(11) DEFAULT NULL,
  `12` int(11) DEFAULT NULL,
  `13` int(11) DEFAULT NULL,
  `14` int(11) DEFAULT NULL,
  `15` int(11) DEFAULT NULL,
  `16` int(11) DEFAULT NULL,
  `17` int(11) DEFAULT NULL,
  `18` int(11) DEFAULT NULL,
  `19` int(11) DEFAULT NULL,
  `20` int(11) DEFAULT NULL,
  `21` int(11) DEFAULT NULL,
  `22` int(11) DEFAULT NULL,
  `23` int(11) DEFAULT NULL,
  `24` int(11) DEFAULT NULL,
  `25` int(11) DEFAULT NULL,
  `26` int(11) DEFAULT NULL,
  `27` int(11) DEFAULT NULL,
  `28` int(11) DEFAULT NULL,
  `29` int(11) DEFAULT NULL,
  `30` int(11) DEFAULT NULL,
  `31` int(11) DEFAULT NULL,
  `32` int(11) DEFAULT NULL,
  `33` int(11) DEFAULT NULL,
  `34` int(11) DEFAULT NULL,
  `35` int(11) DEFAULT NULL,
  `36` int(11) DEFAULT NULL,
  `37` int(11) DEFAULT NULL,
  `38` int(11) DEFAULT NULL,
  `39` int(11) DEFAULT NULL,
  `40` int(11) DEFAULT NULL,
  `41` int(11) DEFAULT NULL,
  `42` int(11) DEFAULT NULL,
  `43` int(11) DEFAULT NULL,
  `44` int(11) DEFAULT NULL,
  `45` int(11) DEFAULT NULL,
  `46` int(11) DEFAULT NULL,
  `47` int(11) DEFAULT NULL,
  `48` int(11) DEFAULT NULL,
  `49` int(11) DEFAULT NULL,
  `50` int(11) DEFAULT NULL,
  `51` int(11) DEFAULT NULL,
  `52` int(11) DEFAULT NULL,
  `53` int(11) DEFAULT NULL,
  `54` int(11) DEFAULT NULL,
  `55` int(11) DEFAULT NULL,
  `56` int(11) DEFAULT NULL,
  `57` int(11) DEFAULT NULL,
  `58` int(11) DEFAULT NULL,
  `59` int(11) DEFAULT NULL,
  `60` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `kirim_jawaban`
-- (See below for the actual view)
--
CREATE TABLE `kirim_jawaban` (
`id` bigint(20) unsigned
,`exam_id` int(11)
,`username` varchar(255)
,`kode_kategori` varchar(255)
,`kode_kursus` varchar(255)
,`remaining_time_minute` int(11)
,`remaining_time_second` int(11)
,`question_id` text
,`total_question` int(11)
,`current_answer` text
,`score` int(11)
,`kode_ruangan` varchar(255)
,`kode_sesi` varchar(255)
,`ujian_mulai` datetime
);

-- --------------------------------------------------------

--
-- Table structure for table `majors`
--

CREATE TABLE `majors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_fakultas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `majors`
--

INSERT INTO `majors` (`id`, `kode_fakultas`, `kode_jurusan`, `nama_jurusan`, `created_at`, `updated_at`) VALUES
(1, '02', '7121016', 'PENDIDIKAN MATEMATIKA', NULL, NULL),
(2, '02', '7121024', 'PENDIDIKAN FISIKA', NULL, NULL),
(3, '02', '7121032', 'PENDIDIKAN KIMIA', NULL, NULL),
(4, '02', '7121047', 'PENDIDIKAN BIOLOGI', NULL, NULL),
(5, '02', '7122012', 'PENDIDIKAN GEOGRAFI', NULL, NULL),
(6, '02', '7121241', 'PENDIDIKAN IPA', NULL, NULL),
(7, '02', '7121183', 'PENDIDIKAN MATEMATIKA ICP BILINGUAL', NULL, NULL),
(8, '02', '7121217', 'PENDIDIKAN FISIKA ICP BILINGUAL', NULL, NULL),
(9, '02', '7121175', 'PENDIDIKAN KIMIA ICP BILINGUAL', NULL, NULL),
(10, '02', '7121202', 'PENDIDIKAN BIOLOGI ICP BILINGUAL', NULL, NULL),
(11, '02', '7122333', 'PENDIDIKAN GEOGRAFI ICP BILINGUAL', NULL, NULL),
(12, '02', '7121256', 'PENDIDIKAN IPA ICP BILINGUAL', NULL, NULL),
(13, '02', '7129016', 'PENDIDIKAN MATEMATIKA KELAS PARE-PARE', NULL, NULL),
(14, '02', '7121055', 'MATEMATIKA', NULL, NULL),
(15, '02', '7121063', 'FISIKA', NULL, NULL),
(16, '02', '7121071', 'KIMIA', NULL, NULL),
(17, '02', '7121086', 'BIOLOGI', NULL, NULL),
(18, '02', '7121094', 'GEOGRAFI', NULL, NULL),
(19, '02', '7121264', 'STATISTIKA', NULL, NULL),
(20, '03', '7121144', 'PENDIDIKAN TEKNIK BANGUNAN', NULL, NULL),
(21, '03', '7121105', 'PENDIDIKAN TEKNIK ELEKTRO', NULL, NULL),
(22, '03', '7121113', 'PENDIDIKAN TEKNIK ELEKTRONIKA', NULL, NULL),
(23, '03', '7121121', 'PENDIDIKAN TEKNIK MESIN', NULL, NULL),
(24, '03', '7121167', 'PENDIDIKAN TEKNIK INFORMATIKA DAN KOMPUTER', NULL, NULL),
(25, '03', '7121225', 'PENDIDIKAN TEKNOLOGI PERTANIAN', NULL, NULL),
(26, '03', '7121136', 'PENDIDIKAN TEKNIK OTOMOTIF', NULL, NULL),
(27, '03', '7122027', 'PENDIDIKAN KESEJAHTERAAN KELUARGA', NULL, NULL),
(28, '03', '7129167', 'PENDIDIKAN TEK INFORMATIKA DAN KOMPUTER KELAS PARE-PARE', NULL, NULL),
(29, '03', '7121272', 'PENDIDIKAN VOKASIONAL MEKATRONIKA', NULL, NULL),
(30, '03', '7121287', 'TEKNIK KOMPUTER', NULL, NULL),
(31, '03', '7121361', 'TEKNIK SIPIL BANGUNAN GEDUNG', NULL, NULL),
(32, '03', '7121345', 'TEKNIK MESIN', NULL, NULL),
(33, '03', '7121322', 'TEKNIK OTOMOTIF', NULL, NULL),
(34, '03', '7121353', 'TEKNIK ELEKTRO', NULL, NULL),
(35, '03', '7121337', 'TEKNIK ELEKTRONIKA', NULL, NULL),
(36, '03', '7122503', 'TATA BOGA', NULL, NULL),
(37, '03', '7123027', 'TATA BUSANA', NULL, NULL),
(38, '04', '7122035', 'PENDIDIKAN JASMANI KESEHATAN DAN REKREASI', NULL, NULL),
(39, '04', '7122043', 'PENDIDIKAN KEPELATIHAN OLAHRAGA', NULL, NULL),
(40, '04', '7129035', 'PENDIDIKAN JASMANI DAN REKREASI KELAS PARE-PARE', NULL, NULL),
(41, '04', '7121152', 'ILMU KEOLAHRAGAAN', NULL, NULL),
(42, '04', '7123035', 'PENDIDIKAN JASMANI KESEHATAN DAN REKREASI KE-SD-AN', NULL, NULL),
(43, '04', '7121295', 'ADMINISTRASI KESEHATAN', NULL, NULL),
(44, '05', '7122066', 'TEKNOLOGI PENDIDIKAN', NULL, NULL),
(45, '05', '7122051', 'ADMINISTRASI PENDIDIKAN', NULL, NULL),
(46, '05', '7122082', 'PENDIDIKAN LUAR SEKOLAH', NULL, NULL),
(47, '05', '7122074', 'BIMBINGAN DAN KONSELING', NULL, NULL),
(48, '05', '7122252', 'PENDIDIKAN GURU SD (KAMPUS MAKASSAR)', NULL, NULL),
(49, '05', '7122097', 'PENDIDIKAN LUAR BIASA', NULL, NULL),
(50, '05', '7122387', 'PENDIDIKAN GURU SD ICP BILINGUAL', NULL, NULL),
(51, '05', '7122283', 'PENDIDIKAN GURU SD (KAMPUS PARE-PARE)', NULL, NULL),
(52, '05', '7122275', 'PENDIDIKAN GURU SD (KAMPUS BONE)', NULL, NULL),
(53, '05', '7122267', 'PENDIDIKAN GURU PAUD', NULL, NULL),
(54, '06', '7122101', 'PENDIDIKAN BAHASA DAN SASTRA INDONESIA', NULL, NULL),
(55, '06', '7122116', 'PENDIDIKAN BAHASA INGGRIS', NULL, NULL),
(56, '06', '7129116', 'PENDIDIKAN BAHASA INGGRIS KELAS PARE-PARE', NULL, NULL),
(57, '06', '7122147', 'PENDIDIKAN BAHASA JERMAN', NULL, NULL),
(58, '06', '7122445', 'PENDIDIKAN BAHASA DAN SASTRA DAERAH', NULL, NULL),
(59, '06', '7122453', 'PENDIDIKAN BAHASA ARAB', NULL, NULL),
(60, '06', '7122476', 'PENDIDIKAN BAHASA MANDARIN', NULL, NULL),
(61, '06', '7122124', 'SASTRA INDONESIA', NULL, NULL),
(62, '06', '7122132', 'SASTRA INGGRIS', NULL, NULL),
(63, '06', '7122526', 'BUSINESS ENGLISH COMMUNICATION', NULL, NULL),
(64, '07', '7122171', 'PENDIDIKAN PANCASILA DAN KEWARGANEGARAAN', NULL, NULL),
(65, '07', '7122213', 'PENDIDIKAN SEJARAH', NULL, NULL),
(66, '07', '7122406', 'PENDIDIKAN ADMINISTRASI PERKANTORAN', NULL, NULL),
(67, '07', '7122186', 'PENDIDIKAN SOSIOLOGI', NULL, NULL),
(68, '07', '7122437', 'PENDIDIKAN ANTROPOLOGI', NULL, NULL),
(69, '07', '7122291', 'PENDIDIKAN IPS', NULL, NULL),
(70, '07', '7122302', 'ILMU ADMINISTRASI NEGARA', NULL, NULL),
(71, '07', '7122236', 'SOSIOLOGI', NULL, NULL),
(72, '07', '7122461', 'ILMU ADMINISTRASI BISNIS', NULL, NULL),
(73, '07', '7129302', 'ILMU ADMINISTRASI NEGARA KELAS PARE-PARE', NULL, NULL),
(74, '08', '7122244', 'PSIKOLOGI', NULL, NULL),
(75, '08', '7129244', 'PSIKOLOGI KELAS PARE-PARE', NULL, NULL),
(76, '10', '7122317', 'PENDIDIKAN EKONOMI', NULL, NULL),
(77, '10', '7122422', 'PENDIDIKAN AKUNTANSI', NULL, NULL),
(78, '10', '7122356', 'AKUNTANSI', NULL, NULL),
(79, '10', '7122341', 'EKONOMI PEMBANGUNAN', NULL, NULL),
(80, '10', '7122221', 'MANAJEMEN', NULL, NULL),
(81, '10', '7129317', 'PENDIDIKAN EKONOMI KELAS PARE-PARE', NULL, NULL),
(82, '10', '7122511', 'AKUNTANSI', NULL, NULL),
(83, '09', '7122372', 'PENDIDIKAN SENI RUPA', NULL, NULL),
(84, '09', '7122364', 'PENDIDIKAN SENI DRAMA TARI DAN MUSIK', NULL, NULL),
(85, '09', '7121191', 'DESAIN KOMUNIKASI VISUAL', NULL, NULL),
(86, '09', '7122395', 'SENI TARI', NULL, NULL),
(87, '09', '7129364', 'PENDIDIKAN SENI DRAMA TARI DAN MUSIK KELAS PARE-PARE', NULL, NULL),
(88, '03', '7121314', 'ARSITEKTUR', NULL, NULL),
(89, '04', '7121306', 'GIZI', NULL, NULL),
(90, '04', '7121376', 'FISIOTERAPI', NULL, NULL),
(91, '10', '7122484', 'KEWIRAUSAHAAN', NULL, NULL),
(92, '10', '7122492', 'BISNIS DIGITAL', NULL, NULL),
(93, '03', '7125115', 'TEKNIK ELEKTRO KONSENTRASI SOFTWARE ENGINEERING GCS SINGAPURA', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urut` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `menu`, `url`, `icon`, `urut`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Beranda', 'beranda', 'fas fa-home', '1', 1, NULL, NULL),
(2, 'Master', '', 'fas fa-layer-group', '2', 1, NULL, NULL),
(3, 'Soal', 'kursus-soal', 'fas fa-book', '3', 1, NULL, NULL),
(4, 'Jadwal Ujian', 'jadwal-ujian', 'fas fa-calendar-day', '4', 1, NULL, NULL),
(5, 'Hasil Ujian', '', 'fas fa-file-alt', '5', 1, NULL, NULL),
(6, 'Petunjuk & Tata Tertib', 'petunjuk', 'fas fa-pen', '6', 1, NULL, NULL),
(7, 'Mulai Ujian', 'mulai-ujian', 'fas fa-user-check', '7', 1, NULL, NULL),
(8, 'Kehadiran', 'kehadiran', 'fas fa-user-check', '8', 1, NULL, NULL),
(9, 'Token', 'token-ujian', 'fas fa-edit', '9', 1, NULL, NULL),
(10, 'Sinkronisasi', 'sinkronisasi', 'fas fa-edit', '10', 1, NULL, NULL),
(11, 'User Pengawas', 'pengawas-user', 'fas fa-pen', '2', 1, NULL, NULL),
(12, 'Status', 'status-server', 'fas fa-server', '8', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_28_000317_create_roles_table', 1),
(5, '2020_09_28_000429_create_menus_table', 1),
(6, '2020_09_28_000510_create_sub_menus_table', 1),
(7, '2020_09_28_000603_create_access_menus_table', 1),
(8, '2020_09_28_000649_create_access_sub_menus_table', 1),
(9, '2021_01_07_004155_create_sesis_table', 2),
(10, '2021_01_07_004235_create_rooms_table', 2),
(11, '2021_01_07_011012_create_categories_table', 3),
(12, '2021_01_07_011829_create_courses_table', 3),
(16, '2021_01_07_020955_create_students_table', 4),
(17, '2021_01_07_021302_create_majors_table', 4),
(18, '2021_01_07_021333_create_faculties_table', 4),
(19, '2021_01_07_054159_create_teachers_table', 5),
(20, '2021_01_07_100905_create_questions_table', 6),
(21, '2021_01_07_112924_create_exams_table', 7),
(22, '2021_01_07_123549_create_category_courses_table', 8),
(23, '2021_01_07_141352_create_answers_table', 9),
(25, '2021_03_20_230216_create_results_table', 10),
(26, '2021_06_23_125917_create_servers_table', 11),
(27, '2021_06_28_090807_create_server_details_table', 11),
(28, '2016_06_01_000001_create_oauth_auth_codes_table', 12),
(29, '2016_06_01_000002_create_oauth_access_tokens_table', 12),
(30, '2016_06_01_000003_create_oauth_refresh_tokens_table', 12),
(31, '2016_06_01_000004_create_oauth_clients_table', 12),
(32, '2016_06_01_000005_create_oauth_personal_access_clients_table', 12),
(34, '2021_06_30_090049_create_status_servers_table', 13),
(39, '2021_09_09_132624_create_hasils_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('06d14caadf69898554e40eaa7e13aa87ae4c27188af7e72ee3b88b98d366ccb26ccf2c20b1d9edd8', 8804, 3, 'Personal Access Token', '[]', 0, '2022-07-30 08:08:05', '2022-07-30 08:08:05', '2023-07-30 08:08:05'),
('1a8bfc9fbd6f62f6e27394fab9e293e806c2242788fe15ff58be1e29444f64ab6611ee71f47b69eb', 8806, 3, 'Personal Access Token', '[]', 0, '2022-07-30 08:01:14', '2022-07-30 08:01:14', '2023-07-30 08:01:14'),
('281a7a7b24335443727fb372ea5b1bdf9273927428c4b6bd12e50a22f4460b721bbebc0c4ba7ab79', 8807, 3, 'Personal Access Token', '[]', 0, '2022-07-30 08:06:12', '2022-07-30 08:06:12', '2023-07-30 08:06:12'),
('3382e769aa577a1e1f69e2e05e686e21b4a966e5e0ec774e84f17b07253137bbab77d814361f42d7', 8804, 3, 'Personal Access Token', '[]', 0, '2023-07-05 23:30:52', '2023-07-05 23:30:52', '2024-07-05 23:30:52'),
('4bb1fa9ca4658331269c6f5f6e65b47bd58f93730cb0b9614f3e0f035a7c185c9e07b7e8c8bfea0f', 8806, 3, 'Personal Access Token', '[]', 0, '2022-07-30 08:00:34', '2022-07-30 08:00:34', '2023-07-30 08:00:34'),
('56116d4a95ebd2b8002faaa106ed630220c742197ddf465066098e19eb9692e9360d86a704ff510d', 8804, 3, 'Personal Access Token', '[]', 0, '2022-07-30 07:40:08', '2022-07-30 07:40:08', '2023-07-30 07:40:08'),
('59176c8c6bc313f0beea8d7e68bd589a4009013da6b453aa230074d6fc772ef5b96cc104b5f195fd', 8805, 3, 'Personal Access Token', '[]', 0, '2022-07-30 07:56:45', '2022-07-30 07:56:45', '2023-07-30 07:56:45'),
('6acf471967dbc5498713bd7d9e3ab6c594e31fc1157ac2fc3507e068d14ac445eeb030a5a6f71559', 8807, 3, 'Personal Access Token', '[]', 0, '2022-07-30 08:01:32', '2022-07-30 08:01:32', '2023-07-30 08:01:32'),
('6c21a6f9a215c6bd97e71fc7f162599ff9d148fc860596ee8744e9dc88c10469f4b19b29590f9820', 8806, 5, 'Personal Access Token', '[]', 0, '2023-07-08 16:41:14', '2023-07-08 16:41:14', '2024-07-08 16:41:14'),
('6d6699d8b4a8041498b9e57ea2f3c61036374da67ac9e9d26cae6b9eb5325d2c8a644c2eb39dbf5d', 8804, 3, 'Personal Access Token', '[]', 0, '2022-07-30 09:45:05', '2022-07-30 09:45:05', '2023-07-30 09:45:05'),
('6fa2a546e39f271862e5363b6993ee67624b9bd83851fff89a85dd2e8b1986eacaf532f99d639ef2', 1, 3, 'Personal Access Token', '[]', 0, '2022-07-30 04:22:03', '2022-07-30 04:22:03', '2023-07-30 04:22:03'),
('7c70e5e36deba8e25e69b2a984a420a1801f94f459f3d5f14e944f37f8815ce311d4486059dfe55e', 8804, 3, 'Personal Access Token', '[]', 0, '2022-07-30 08:03:51', '2022-07-30 08:03:51', '2023-07-30 08:03:51'),
('86c146ff77ba0196aa697566ee7e102e6b16f6f57b3866c77e286549b9d5ce0b94e980a1cefa906c', 8809, 3, 'Personal Access Token', '[]', 0, '2022-07-30 04:12:41', '2022-07-30 04:12:41', '2023-07-30 04:12:41'),
('9fde70865ce9224631a6e72bf3e90fa109e54b61a5c8b69452a6a9b3ad03cd433a48e6699ef8ac17', 8806, 3, 'Personal Access Token', '[]', 0, '2022-07-30 08:09:25', '2022-07-30 08:09:25', '2023-07-30 08:09:25'),
('a09e7c8a979c997b04f211b8f44d9c19191ee4c4eddf1b428e96273d279f25602685b26aa314974f', 8804, 3, 'Personal Access Token', '[]', 0, '2022-07-30 08:04:36', '2022-07-30 08:04:36', '2023-07-30 08:04:36'),
('aaa3dc19971afd1865fc90e4bd29604d2c8ca169b1f3adc19aab3c6496e3b8747d9716a1e1625995', 8809, 3, 'Personal Access Token', '[]', 0, '2022-07-30 04:47:59', '2022-07-30 04:47:59', '2023-07-30 04:47:59'),
('b29d27b9e704e212d8c8acc9ce48aada94148367efd511f95d50bbdcb336cf5d0411e2646b59a9e8', 2, 3, 'Personal Access Token', '[]', 0, '2022-07-29 17:19:16', '2022-07-29 17:19:16', '2023-07-29 17:19:16'),
('b3dfb2b7a41018d93834c164e8d3732f869456440cd411f421626928a9417c9f9e68eac977a96fd4', 8804, 3, 'Personal Access Token', '[]', 0, '2022-07-30 07:58:53', '2022-07-30 07:58:53', '2023-07-30 07:58:53'),
('baf6010d4d84b1075394083a7854655a9a9cb2a9884626de0916e1f28d9458174e7aece76fa1f0d6', 8806, 3, 'Personal Access Token', '[]', 0, '2022-07-30 08:02:55', '2022-07-30 08:02:55', '2023-07-30 08:02:55'),
('c5e673b0ad92fb6a4f148c87111a9b54e6648b77da3161906df542548f633f2c14b7ff9e07da011d', 8804, 3, 'Personal Access Token', '[]', 0, '2023-07-05 12:12:31', '2023-07-05 12:12:31', '2024-07-05 12:12:31'),
('c73df0afadadd9f1e9fddd328a9d43a136ea47e27f0c7a10a8de27354e8a984cacca530f26051cf2', 10, 3, 'Personal Access Token', '[]', 0, '2022-07-30 03:36:40', '2022-07-30 03:36:40', '2023-07-30 03:36:40'),
('d754e6cfa8ae70d23d4e5c3519f1b36637d01b1da907558b3d2e131436b16b5a4c27b1d1ed874083', 8806, 3, 'Personal Access Token', '[]', 0, '2022-07-30 08:10:28', '2022-07-30 08:10:28', '2023-07-30 08:10:28'),
('da708786f9efb4f033d893f386f8a78095f70eaf8a80a33d81d5e9a0660be86c5b8a523617b7b3b7', 8806, 3, 'Personal Access Token', '[]', 0, '2022-07-30 08:03:25', '2022-07-30 08:03:25', '2023-07-30 08:03:25'),
('da8779a75132761553cce8e8f22cc2647f59b529d1cae72dc490fa8298f5b6974f5528828292a4bc', 5, 3, 'Personal Access Token', '[]', 0, '2022-07-29 16:31:43', '2022-07-29 16:31:43', '2023-07-29 16:31:43'),
('daa5d5560f1cd29b9cf8b4730211a327fb506f3d5da6e081c4d7d21661cfba20e267908bd1e63632', 4, 3, 'Personal Access Token', '[]', 0, '2022-07-29 16:44:10', '2022-07-29 16:44:10', '2023-07-29 16:44:10'),
('dc28ff26ada87d0ee30ed54d27164f7bea03f1fc851d2091baf1bd02cb294c1b5842d62fde2a7294', 8804, 3, 'Personal Access Token', '[]', 0, '2023-07-06 00:15:37', '2023-07-06 00:15:37', '2024-07-06 00:15:37'),
('e1a13479a9f435a569786bdd1dc3cba5019f18b69414aa6dad539c5d2453d954a5f271f1e6de4872', 1, 3, 'Personal Access Token', '[]', 0, '2022-09-14 10:16:06', '2022-09-14 10:16:06', '2023-09-14 10:16:06'),
('e2d10fd94df007f3063f1d53642fa5f39a74c4584ab204c9ccb7a80e6d17497fd905c9d9b5a26410', 8804, 5, 'Personal Access Token', '[]', 0, '2023-07-08 16:41:51', '2023-07-08 16:41:51', '2024-07-08 16:41:51'),
('e788bcfccd8d564775c27880a69cc683228dea904137b17f467e826779a7f87d16eda91f16e76429', 8804, 3, 'Personal Access Token', '[]', 0, '2023-07-06 00:34:32', '2023-07-06 00:34:32', '2024-07-06 00:34:32'),
('f217bceef26c48db0815e029f42f992791c14bf9ed0f298f71ffdeeffd01ea6a157aa1fd771d5359', 8807, 3, 'Personal Access Token', '[]', 0, '2022-07-30 07:48:44', '2022-07-30 07:48:44', '2023-07-30 07:48:44'),
('f958126c2838aecd4368d90a9eeac4949e6f2e0d0a7955b64121dcfb19b8283e8a2e15c006650cab', 8804, 3, 'Personal Access Token', '[]', 0, '2023-07-05 11:56:19', '2023-07-05 11:56:19', '2024-07-05 11:56:19'),
('ffebc4db1e3ab3f5537bff2435f9a6c87644ea976285ddc4ae83c44dd72c08f137e1a80de32d02ae', 8804, 3, 'Personal Access Token', '[]', 0, '2022-07-30 07:57:56', '2022-07-30 07:57:56', '2023-07-30 07:57:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'CAT-UNM Personal Access Client', 'nXzZfwHvnhY39HUw2mz7RvOtzndP6RfSI56374pf', NULL, 'http://localhost', 1, 0, 0, '2021-06-28 09:50:07', '2021-06-28 09:50:07'),
(2, NULL, 'CAT-UNM Password Grant Client', 'nt4emAOcMBhUUE31MUF5hlmvzKnaz2r6HqdbzbbP', 'users', 'http://localhost', 0, 1, 0, '2021-06-28 09:50:08', '2021-06-28 09:50:08'),
(3, NULL, 'CAT Personal Access Client', '5HTGjRFI6EArPqybWPxFXgtwZMFucvonsxSyVFfY', NULL, 'http://localhost', 1, 0, 0, '2021-06-30 18:05:29', '2021-06-30 18:05:29'),
(4, NULL, 'CAT Password Grant Client', 'ROXrlrgCsCBS4iQT8f5Cvm25WOPQh19WcZCvUPTj', 'users', 'http://localhost', 0, 1, 0, '2021-06-30 18:05:29', '2021-06-30 18:05:29'),
(5, NULL, 'Laravel Personal Access Client', 'hAX9iT3FLQ4FPERsxFIoVPiEtlEsS4WUBHjovrqw', NULL, 'http://localhost', 1, 0, 0, '2023-07-08 16:40:35', '2023-07-08 16:40:35'),
(6, NULL, 'Laravel Password Grant Client', 'LSQ1BKGcn3bd0hx50EXXWKairxiFanKrJdjHPI1K', 'users', 'http://localhost', 0, 1, 0, '2023-07-08 16:40:35', '2023-07-08 16:40:35');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-06-28 09:50:08', '2021-06-28 09:50:08'),
(2, 3, '2021-06-30 18:05:29', '2021-06-30 18:05:29'),
(3, 5, '2023-07-08 16:40:35', '2023-07-08 16:40:35');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_kursus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soal` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_soal` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opsi_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poin_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opsi_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poin_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opsi_3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poin_3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opsi_4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poin_4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opsi_5` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_5` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poin_5` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `questions_b`
--

CREATE TABLE `questions_b` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_kursus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soal` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_soal` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opsi_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poin_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opsi_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poin_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opsi_3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poin_3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opsi_4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poin_4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opsi_5` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_5` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poin_5` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_role` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name_role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Pengawas', NULL, NULL),
(3, 'Peserta', NULL, NULL),
(4, 'Server', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_ruangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ruangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `servers`
--

CREATE TABLE `servers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_petugas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `servers`
--

INSERT INTO `servers` (`id`, `nama`, `username`, `nama_petugas`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Gedung Pinisi Lt. 2&3 UNM Gunungsari', 'L01UNMC4T11', 'Zulkiplih', '1', NULL, '2022-07-30 03:44:19'),
(2, 'FMIPA I Gedung UNM Parangtambung', 'L02UNMC4T12', 'Asdar', '1', NULL, '2022-07-30 07:58:08'),
(3, 'Gedung Pinisi Lt. 4 UNM Gunungsari', 'L03UNMC4T13', 'Ali Hasan', '1', NULL, '2023-07-08 15:25:40'),
(4, 'Gedung Pinisi Lt. 9 UNM Gunungsari', 'L04UNMC4T14', 'Zulfuadi Barsah', '1', NULL, '2022-07-11 19:13:38'),
(5, 'Fakultas Psikologi UNM Gunungsari', 'L06UNMC4T15', 'Syahid', '1', NULL, '2022-07-30 07:58:14'),
(6, 'Fakultas Ekonomi UNM Gunungsari', 'L07UNMC4T16', 'Taufik', '1', NULL, '2022-07-30 04:11:16'),
(7, 'Fakultas Teknik UNM Parangtambung', 'L08UNMC4T17', 'Abu Rizal', '1', NULL, '2023-07-08 00:38:52'),
(8, 'FMIPA Gedung Fisika UNM Parangtambung', 'L10UNMC4T18', 'Muh Rizal', '1', NULL, '2023-07-08 00:38:56'),
(9, 'Fakultas Ilmu Pendidikan UNM Tidung', 'L13UNMC4T19', 'Mahdinul', '1', NULL, '2023-07-08 00:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `server_details`
--

CREATE TABLE `server_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username_server` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username_pengawas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `server_details`
--

INSERT INTO `server_details` (`id`, `username_server`, `username_pengawas`, `created_at`, `updated_at`) VALUES
(14, 'L03UNMC4T13', '1010461', '2023-07-08 14:27:16', '2023-07-08 14:27:16'),
(15, 'L03UNMC4T13', '1010521', '2023-07-08 14:27:19', '2023-07-08 14:27:19'),
(16, 'L03UNMC4T13', '1010371', '2023-07-08 14:27:32', '2023-07-08 14:27:32'),
(17, 'L03UNMC4T13', '1010491', '2023-07-08 14:27:33', '2023-07-08 14:27:33'),
(18, 'L03UNMC4T13', '1010311', '2023-07-08 14:27:35', '2023-07-08 14:27:35'),
(19, 'L03UNMC4T13', '1010312', '2023-07-08 14:27:36', '2023-07-08 14:27:36'),
(20, 'L03UNMC4T13', '1010372', '2023-07-08 14:27:38', '2023-07-08 14:27:38'),
(21, 'L03UNMC4T13', '1010432', '2023-07-08 14:27:40', '2023-07-08 14:27:40'),
(22, 'L03UNMC4T13', '1010492', '2023-07-08 14:28:31', '2023-07-08 14:28:31'),
(23, 'L03UNMC4T13', '1010493', '2023-07-08 14:28:34', '2023-07-08 14:28:34'),
(24, 'L03UNMC4T13', '1010283', '2023-07-08 14:28:37', '2023-07-08 14:28:37'),
(25, 'L03UNMC4T13', '1010313', '2023-07-08 14:28:45', '2023-07-08 14:28:45'),
(26, 'L03UNMC4T13', '1010403', '2023-07-08 14:28:47', '2023-07-08 14:28:47'),
(27, 'L03UNMC4T13', '1010401', '2023-07-08 14:29:15', '2023-07-08 14:29:15'),
(28, 'L03UNMC4T13', '1010281', '2023-07-08 14:29:17', '2023-07-08 14:29:17'),
(29, 'L03UNMC4T13', '1010341', '2023-07-08 14:29:20', '2023-07-08 14:29:20'),
(30, 'L03UNMC4T13', '1010431', '2023-07-08 14:29:23', '2023-07-08 14:29:23'),
(31, 'L03UNMC4T13', '1010522', '2023-07-08 14:29:25', '2023-07-08 14:29:25'),
(32, 'L03UNMC4T13', '1010462', '2023-07-08 14:29:27', '2023-07-08 14:29:27'),
(33, 'L03UNMC4T13', '1010402', '2023-07-08 14:29:28', '2023-07-08 14:29:28'),
(34, 'L03UNMC4T13', '1010282', '2023-07-08 14:29:29', '2023-07-08 14:29:29'),
(35, 'L03UNMC4T13', '1010342', '2023-07-08 14:29:30', '2023-07-08 14:29:30'),
(36, 'L03UNMC4T13', '1010523', '2023-07-08 14:29:31', '2023-07-08 14:29:31'),
(37, 'L03UNMC4T13', '1010463', '2023-07-08 14:29:32', '2023-07-08 14:29:32'),
(38, 'L03UNMC4T13', '1010433', '2023-07-08 14:29:33', '2023-07-08 14:29:33'),
(39, 'L03UNMC4T13', '1010343', '2023-07-08 14:29:34', '2023-07-08 14:29:34'),
(40, 'L03UNMC4T13', '1010373', '2023-07-08 14:29:35', '2023-07-08 14:29:35');

-- --------------------------------------------------------

--
-- Table structure for table `sesis`
--

CREATE TABLE `sesis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_sesi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_sesi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sesis`
--

INSERT INTO `sesis` (`id`, `kode_sesi`, `nama_sesi`, `created_at`, `updated_at`) VALUES
(1, '11', 'SESI-11', '2023-04-10 11:26:29', '2023-07-05 16:37:38'),
(2, '12', 'SESI-12', '2023-07-03 11:54:37', '2023-07-05 16:37:38'),
(3, '13', 'SESI-13', '2023-07-03 11:54:52', '2023-07-05 16:37:38'),
(4, '14', 'SESI-14', '2023-07-03 11:55:00', '2023-07-05 16:37:38'),
(5, '15', 'SESI-15', '2023-07-03 11:55:06', '2023-07-05 16:37:38'),
(6, '16', 'SESI-16', '2023-07-03 11:55:18', '2023-07-05 16:37:38'),
(7, '21', 'SESI-21', '2023-07-03 11:55:47', '2023-07-05 16:37:38'),
(8, '22', 'SESI-22', '2023-07-03 11:55:57', '2023-07-05 16:37:38'),
(9, '23', 'SESI-23', '2023-07-03 11:56:07', '2023-07-05 16:37:38'),
(10, '24', 'SESI-24', '2023-07-03 11:56:16', '2023-07-05 16:37:38'),
(11, '25', 'SESI-25', '2023-07-03 11:56:30', '2023-07-05 16:37:38'),
(12, '26', 'SESI-26', '2023-07-03 11:56:51', '2023-07-05 16:37:38'),
(13, '31', 'SESI-31', '2023-07-03 11:57:01', '2023-07-05 16:37:38'),
(14, '32', 'SESI 32', '2023-07-03 11:57:12', '2023-07-03 11:57:12'),
(15, '33', 'SESI 33', '2023-07-03 11:57:20', '2023-07-03 11:57:20'),
(16, '34', 'SESI 34', '2023-07-03 11:57:27', '2023-07-03 11:57:27'),
(17, '35', 'SESI 35', '2023-07-03 11:57:33', '2023-07-03 11:57:33'),
(18, '36', 'SESI 36', '2023-07-03 11:57:45', '2023-07-03 11:57:45');

-- --------------------------------------------------------

--
-- Table structure for table `status_servers`
--

CREATE TABLE `status_servers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_ruangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_sesi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jml_jwb_lokal` int(11) DEFAULT NULL,
  `jml_jwb_pusat` int(11) DEFAULT NULL,
  `total_peserta` int(255) DEFAULT NULL,
  `jmh_kehadiran` int(11) DEFAULT NULL,
  `tgl_ujian` datetime DEFAULT NULL,
  `status_memenuhi` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `status_servers`
--

INSERT INTO `status_servers` (`id`, `username`, `kode_ruangan`, `kode_sesi`, `jml_jwb_lokal`, `jml_jwb_pusat`, `total_peserta`, `jmh_kehadiran`, `tgl_ujian`, `status_memenuhi`, `created_at`, `updated_at`) VALUES
(1, 'L07UNMC4T16', '0512', '31', 3, 3, 1, 1, '2022-07-30 04:00:00', '1', '2022-07-30 04:12:54', '2022-07-30 04:48:11'),
(2, 'L04UNMC4T14', '0411', '31', 66, 66, 28, 22, '2022-07-30 07:30:00', '1', '2022-07-30 09:19:13', '2022-07-30 09:19:13'),
(3, 'L04UNMC4T14', '0409', '31', 42, 42, 15, 14, '2022-07-30 07:30:00', '1', '2022-07-30 09:20:54', '2022-07-30 09:20:54'),
(4, 'L04UNMC4T14', '0408', '31', 126, 126, 48, 42, '2022-07-30 07:30:00', '1', '2022-07-30 09:25:31', '2022-07-30 09:25:31'),
(5, 'L04UNMC4T14', '0410', '31', 24, 24, 12, 8, '2022-07-30 07:30:00', '1', '2022-07-30 09:30:03', '2022-07-30 09:30:03'),
(6, 'L03UNMC4T13', '0305', '31', 75, 75, 30, 25, '2022-07-30 07:30:00', '1', '2022-07-30 09:38:26', '2022-07-30 09:38:26'),
(7, 'L03UNMC4T13', '0306', '31', 81, 81, 30, 27, '2022-07-30 07:30:00', '1', '2022-07-30 09:38:30', '2022-07-30 09:38:30'),
(8, 'L03UNMC4T13', '0307', '31', 87, 87, 30, 29, '2022-07-30 07:30:00', '1', '2022-07-30 09:38:34', '2022-07-30 09:38:34'),
(9, 'L01UNMC4T11', '0101', '31', 51, 51, 20, 17, '2022-07-30 07:30:00', '1', '2022-07-30 09:45:10', '2022-07-30 09:45:10'),
(10, 'L01UNMC4T11', '0102', '31', 51, 51, 20, 17, '2022-07-30 07:30:00', '1', '2022-07-30 09:45:21', '2022-07-30 09:47:01'),
(11, 'L01UNMC4T11', '0203', '31', 57, 57, 20, 19, '2022-07-30 07:30:00', '1', '2022-07-30 09:45:25', '2022-07-30 09:47:31'),
(12, 'L01UNMC4T11', '0204', '31', 48, 48, 20, 16, '2022-07-30 07:30:00', '1', '2022-07-30 09:45:30', '2022-07-30 09:45:30');

-- --------------------------------------------------------

--
-- Table structure for table `status_servers_copy1`
--

CREATE TABLE `status_servers_copy1` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_ruangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_sesi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jml_jwb_lokal` int(11) DEFAULT NULL,
  `jml_jwb_pusat` int(11) DEFAULT NULL,
  `total_peserta` int(255) DEFAULT NULL,
  `jmh_kehadiran` int(11) DEFAULT NULL,
  `tgl_ujian` datetime DEFAULT NULL,
  `status_memenuhi` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `status_servers_copy1`
--

INSERT INTO `status_servers_copy1` (`id`, `username`, `kode_ruangan`, `kode_sesi`, `jml_jwb_lokal`, `jml_jwb_pusat`, `total_peserta`, `jmh_kehadiran`, `tgl_ujian`, `status_memenuhi`, `created_at`, `updated_at`) VALUES
(1, 'L08UNMC4T17', '0821', '11', 54, 54, 20, 18, '2021-07-05 07:30:00', '1', '2021-07-05 09:09:07', '2021-07-05 09:16:49'),
(2, 'L08UNMC4T17', '0819', '11', 90, 90, 30, 30, '2021-07-05 07:30:00', '1', '2021-07-05 09:09:33', '2021-07-05 09:16:42'),
(3, 'L08UNMC4T17', '0820', '11', 39, 39, 15, 13, '2021-07-05 07:30:00', '1', '2021-07-05 09:09:48', '2021-07-05 09:16:46'),
(4, 'L10UNMC4T18', '1023', '11', 60, 60, 20, 20, '2021-07-05 07:30:00', '1', '2021-07-05 09:20:11', '2021-07-05 09:20:11'),
(5, 'L06UNMC4T15', '0614', '11', 39, 39, 15, 13, '2021-07-05 07:30:00', '1', '2021-07-05 09:25:57', '2021-07-05 09:25:57'),
(6, 'L06UNMC4T15', '0512', '11', 57, 57, 20, 19, '2021-07-05 07:30:00', '1', '2021-07-05 09:26:18', '2021-07-05 09:26:18'),
(7, 'L06UNMC4T15', '0513', '11', 60, 60, 20, 20, '2021-07-05 07:30:00', '1', '2021-07-05 09:26:24', '2021-07-05 09:26:24'),
(8, 'L10UNMC4T18', '1024', '11', 54, 54, 20, 18, '2021-07-05 07:30:00', '1', '2021-07-05 09:30:24', '2021-07-05 09:30:24'),
(9, 'L10UNMC4T18', '1025', '11', 54, 54, 20, 18, '2021-07-05 07:30:00', '1', '2021-07-05 09:31:20', '2021-07-05 09:31:20'),
(10, 'L10UNMC4T18', '1026', '11', 69, 69, 25, 23, '2021-07-05 07:30:00', '1', '2021-07-05 09:31:52', '2021-07-05 09:31:52'),
(11, 'L04UNMC4T14', '0409', '11', 39, 39, 15, 13, '2021-07-05 07:30:00', '1', '2021-07-05 09:33:01', '2021-07-05 09:33:01'),
(12, 'L04UNMC4T14', '0410', '11', 60, 60, 20, 20, '2021-07-05 07:30:00', '1', '2021-07-05 09:34:07', '2021-07-05 09:34:07'),
(13, 'L04UNMC4T14', '0411', '11', 69, 69, 25, 23, '2021-07-05 07:30:00', '1', '2021-07-05 09:34:15', '2021-07-05 09:34:15'),
(14, 'L01UNMC4T11', '0101', '11', 0, 39, 15, 15, '2022-07-07 07:30:00', '0', '2021-07-05 09:34:58', '2022-07-07 16:28:59'),
(15, 'L07UNMC4T16', '0716', '11', 30, 30, 10, 10, '2021-07-05 07:30:00', '1', '2021-07-05 09:35:24', '2021-07-05 09:35:24'),
(16, 'L07UNMC4T16', '0715', '11', 27, 27, 12, 9, '2021-07-05 07:30:00', '1', '2021-07-05 09:35:52', '2021-07-05 09:35:52'),
(17, 'L03UNMC4T13', '0306', '11', 63, 63, 25, 21, '2021-07-05 07:30:00', '1', '2021-07-05 09:35:56', '2021-07-05 09:35:56'),
(18, 'L03UNMC4T13', '0307', '11', 51, 51, 20, 17, '2021-07-05 07:30:00', '1', '2021-07-05 09:36:02', '2021-07-05 09:36:02'),
(19, 'L07UNMC4T16', '0718', '11', 21, 21, 10, 7, '2021-07-05 07:30:00', '1', '2021-07-05 09:36:10', '2021-07-05 09:36:10'),
(20, 'L01UNMC4T11', '0102', '11', 36, 36, 15, 12, '2021-07-05 07:30:00', '1', '2021-07-05 09:36:21', '2021-07-05 09:36:21'),
(21, 'L07UNMC4T16', '0717', '11', 30, 30, 10, 10, '2021-07-05 07:30:00', '1', '2021-07-05 09:36:23', '2021-07-05 09:36:23'),
(22, 'L04UNMC4T14', '0408', '11', 81, 81, 30, 27, '2021-07-05 07:30:00', '1', '2021-07-05 09:37:39', '2021-07-05 09:37:39'),
(23, 'L03UNMC4T13', '0305', '11', 51, 51, 20, 17, '2021-07-05 07:30:00', '1', '2021-07-05 09:38:38', '2021-07-05 09:38:38'),
(24, 'L10UNMC4T18', '1023', '12', 60, 60, 20, 20, '2021-07-05 07:30:00', '1', '2021-07-05 11:17:39', '2021-07-05 11:17:39'),
(25, 'L10UNMC4T18', '1024', '12', 60, 60, 20, 20, '2021-07-05 07:30:00', '1', '2021-07-05 11:25:29', '2021-07-05 11:25:29'),
(26, 'L10UNMC4T18', '1025', '12', 60, 60, 20, 20, '2021-07-05 07:30:00', '1', '2021-07-05 11:26:42', '2021-07-05 11:26:42'),
(27, 'L10UNMC4T18', '1026', '12', 69, 69, 25, 23, '2021-07-05 07:30:00', '1', '2021-07-05 11:26:57', '2021-07-05 11:26:57'),
(28, 'L06UNMC4T15', '0614', '12', 36, 36, 15, 12, '2021-07-05 07:30:00', '1', '2021-07-05 11:32:29', '2021-07-05 11:32:29'),
(29, 'L06UNMC4T15', '0513', '12', 54, 54, 20, 18, '2021-07-05 07:30:00', '1', '2021-07-05 11:33:07', '2021-07-05 11:33:07'),
(30, 'L04UNMC4T14', '0410', '12', 51, 51, 20, 17, '2021-07-05 07:30:00', '1', '2021-07-05 11:36:20', '2021-07-05 11:36:20'),
(31, 'L04UNMC4T14', '0409', '12', 39, 39, 15, 13, '2021-07-05 07:30:00', '1', '2021-07-05 11:38:03', '2021-07-05 11:38:03'),
(32, 'L06UNMC4T15', '0512', '12', 54, 54, 20, 18, '2021-07-05 07:30:00', '1', '2021-07-05 11:40:22', '2021-07-05 11:40:22'),
(33, 'L03UNMC4T13', '0305', '12', 45, 45, 20, 15, '2021-07-05 07:30:00', '1', '2021-07-05 11:53:49', '2021-07-05 11:53:49'),
(34, 'L03UNMC4T13', '0306', '12', 57, 57, 25, 19, '2021-07-05 07:30:00', '1', '2021-07-05 11:53:54', '2021-07-05 11:53:54'),
(35, 'L03UNMC4T13', '0307', '12', 57, 57, 20, 19, '2021-07-05 07:30:00', '1', '2021-07-05 11:53:59', '2021-07-05 11:53:59'),
(36, 'L04UNMC4T14', '0408', '12', 75, 75, 30, 25, '2021-07-05 07:30:00', '1', '2021-07-05 11:59:31', '2021-07-05 11:59:31'),
(37, 'L04UNMC4T14', '0411', '12', 69, 69, 25, 23, '2021-07-05 07:30:00', '1', '2021-07-05 12:11:22', '2021-07-05 12:11:24'),
(38, 'L08UNMC4T17', '0821', '12', 54, 54, 20, 18, '2021-07-05 07:30:00', '1', '2021-07-05 12:51:43', '2021-07-05 12:51:43'),
(39, 'L08UNMC4T17', '0820', '12', 39, 39, 15, 13, '2021-07-05 07:30:00', '1', '2021-07-05 12:51:48', '2021-07-05 12:51:48'),
(40, 'L08UNMC4T17', '0819', '12', 84, 84, 30, 28, '2021-07-05 07:30:00', '1', '2021-07-05 12:51:51', '2021-07-05 12:51:51'),
(41, 'L07UNMC4T16', '0715', '12', 33, 33, 12, 11, '2021-07-05 07:30:00', '1', '2021-07-05 13:05:31', '2021-07-05 13:05:31'),
(42, 'L07UNMC4T16', '0716', '12', 30, 30, 10, 10, '2021-07-05 07:30:00', '1', '2021-07-05 13:05:47', '2021-07-05 13:05:47'),
(43, 'L07UNMC4T16', '0717', '12', 24, 24, 10, 8, '2021-07-05 07:30:00', '1', '2021-07-05 13:05:55', '2021-07-05 13:05:55'),
(44, 'L07UNMC4T16', '0718', '12', 30, 30, 10, 10, '2021-07-05 07:30:00', '1', '2021-07-05 13:06:01', '2021-07-05 13:06:01'),
(45, 'L10UNMC4T18', '1023', '13', 54, 54, 20, 18, '2021-07-05 07:30:00', '1', '2021-07-05 14:23:15', '2021-07-05 14:23:15'),
(46, 'L06UNMC4T15', '0512', '13', 51, 51, 20, 17, '2021-07-05 07:30:00', '1', '2021-07-05 14:24:11', '2021-07-05 14:24:11'),
(47, 'L06UNMC4T15', '0513', '13', 54, 54, 20, 18, '2021-07-05 07:30:00', '1', '2021-07-05 14:24:18', '2021-07-05 14:24:18'),
(48, 'L10UNMC4T18', '1026', '13', 72, 72, 25, 24, '2021-07-05 07:30:00', '1', '2021-07-05 14:24:24', '2021-07-05 14:24:24'),
(49, 'L06UNMC4T15', '0614', '13', 36, 36, 15, 12, '2021-07-05 07:30:00', '1', '2021-07-05 14:25:38', '2021-07-05 14:25:38'),
(50, 'L10UNMC4T18', '1025', '13', 60, 60, 20, 20, '2021-07-05 07:30:00', '1', '2021-07-05 14:26:47', '2021-07-05 14:26:47'),
(51, 'L04UNMC4T14', '0411', '13', 66, 66, 25, 22, '2021-07-05 07:30:00', '1', '2021-07-05 14:31:09', '2021-07-05 14:31:09'),
(52, 'L04UNMC4T14', '0409', '13', 42, 42, 15, 14, '2021-07-05 07:30:00', '1', '2021-07-05 14:31:19', '2021-07-05 14:31:19'),
(53, 'L10UNMC4T18', '1024', '13', 54, 54, 20, 18, '2021-07-05 07:30:00', '1', '2021-07-05 14:32:58', '2021-07-05 14:32:58'),
(54, 'L04UNMC4T14', '0408', '13', 78, 78, 30, 26, '2021-07-05 07:30:00', '1', '2021-07-05 14:33:54', '2021-07-05 14:33:54'),
(55, 'L04UNMC4T14', '0410', '13', 45, 45, 20, 15, '2021-07-05 07:30:00', '1', '2021-07-05 14:34:14', '2021-07-05 14:34:14'),
(56, 'L08UNMC4T17', '0819', '13', 87, 87, 30, 29, '2021-07-05 07:30:00', '1', '2021-07-05 14:43:55', '2021-07-05 14:43:55'),
(57, 'L08UNMC4T17', '0820', '13', 45, 45, 15, 15, '2021-07-05 07:30:00', '1', '2021-07-05 14:44:10', '2021-07-05 14:44:10'),
(58, 'L08UNMC4T17', '0821', '13', 57, 57, 20, 19, '2021-07-05 07:30:00', '1', '2021-07-05 14:44:19', '2021-07-05 14:44:19'),
(59, 'L07UNMC4T16', '0715', '13', 33, 33, 12, 11, '2021-07-05 07:30:00', '1', '2021-07-05 14:56:42', '2021-07-05 14:56:42'),
(60, 'L07UNMC4T16', '0716', '13', 27, 27, 10, 9, '2021-07-05 07:30:00', '1', '2021-07-05 14:56:48', '2021-07-05 14:56:48'),
(61, 'L07UNMC4T16', '0717', '13', 24, 24, 10, 8, '2021-07-05 07:30:00', '1', '2021-07-05 14:56:53', '2021-07-05 14:56:53'),
(62, 'L07UNMC4T16', '0718', '13', 24, 24, 10, 8, '2021-07-05 07:30:00', '1', '2021-07-05 14:57:06', '2021-07-05 14:57:06'),
(63, 'L03UNMC4T13', '0305', '13', 51, 51, 20, 17, '2021-07-05 07:30:00', '1', '2021-07-05 15:08:42', '2021-07-05 15:08:42'),
(64, 'L03UNMC4T13', '0306', '13', 72, 72, 25, 24, '2021-07-05 07:30:00', '1', '2021-07-05 15:08:45', '2021-07-05 15:08:45'),
(65, 'L03UNMC4T13', '0307', '13', 54, 54, 20, 18, '2021-07-05 07:30:00', '1', '2021-07-05 15:08:49', '2021-07-05 15:08:49'),
(66, 'L13UNMC4T19', '1329', '11', 45, 45, 15, 15, '2021-07-05 07:30:00', '1', '2021-07-05 16:16:30', '2021-07-05 16:16:30'),
(67, 'L13UNMC4T19', '1329', '12', 45, 45, 15, 15, '2021-07-05 07:30:00', '1', '2021-07-05 16:16:32', '2021-07-05 16:16:32'),
(68, 'L13UNMC4T19', '1329', '13', 45, 45, 15, 15, '2021-07-05 07:30:00', '1', '2021-07-05 16:16:35', '2021-07-05 16:16:35'),
(69, 'L13UNMC4T19', '1329', '14', 45, 45, 15, 15, '2021-07-05 07:30:00', '1', '2021-07-05 16:16:38', '2021-07-05 16:16:38'),
(70, 'L13UNMC4T19', '1330', '11', 45, 45, 15, 15, '2021-07-05 07:30:00', '1', '2021-07-05 16:17:00', '2021-07-05 16:17:00'),
(71, 'L13UNMC4T19', '1330', '12', 45, 45, 15, 15, '2021-07-05 07:30:00', '1', '2021-07-05 16:17:02', '2021-07-05 16:17:02'),
(72, 'L13UNMC4T19', '1330', '13', 45, 45, 15, 15, '2021-07-05 07:30:00', '1', '2021-07-05 16:17:04', '2021-07-05 16:17:04'),
(73, 'L13UNMC4T19', '1331', '11', 39, 39, 15, 13, '2021-07-05 07:30:00', '1', '2021-07-05 16:17:08', '2021-07-05 16:17:08'),
(74, 'L13UNMC4T19', '1331', '12', 42, 42, 15, 14, '2021-07-05 07:30:00', '1', '2021-07-05 16:17:10', '2021-07-05 16:17:10'),
(75, 'L13UNMC4T19', '1331', '13', 45, 45, 15, 15, '2021-07-05 07:30:00', '1', '2021-07-05 16:17:12', '2021-07-05 16:17:12'),
(76, 'L13UNMC4T19', '1331', '14', 39, 39, 15, 13, '2021-07-05 07:30:00', '1', '2021-07-05 16:21:05', '2021-07-05 16:21:05'),
(77, 'L04UNMC4T14', '0408', '14', 78, 78, 30, 26, '2021-07-05 07:30:00', '1', '2021-07-05 16:27:11', '2021-07-05 16:27:11'),
(78, 'L01UNMC4T11', '0101', '12', 0, 42, 15, 0, '2022-06-24 07:30:00', '0', '2021-07-05 16:27:19', '2022-06-24 15:15:36'),
(79, 'L01UNMC4T11', '0101', '13', 42, 42, 15, 14, '2021-07-05 07:30:00', '1', '2021-07-05 16:27:22', '2021-07-05 16:27:22'),
(80, 'L04UNMC4T14', '0411', '14', 69, 69, 25, 23, '2021-07-05 07:30:00', '1', '2021-07-05 16:27:23', '2021-07-05 16:27:23'),
(81, 'L01UNMC4T11', '0101', '14', 30, 30, 15, 10, '2021-07-05 07:30:00', '1', '2021-07-05 16:27:24', '2021-07-05 16:27:24'),
(82, 'L01UNMC4T11', '0102', '12', 36, 36, 15, 12, '2021-07-05 07:30:00', '1', '2021-07-05 16:27:27', '2021-07-05 16:27:27'),
(83, 'L01UNMC4T11', '0102', '13', 45, 45, 15, 15, '2021-07-05 07:30:00', '1', '2021-07-05 16:27:30', '2021-07-05 16:27:30'),
(84, 'L01UNMC4T11', '0102', '14', 39, 39, 15, 13, '2021-07-05 07:30:00', '1', '2021-07-05 16:27:32', '2021-07-05 16:27:32'),
(85, 'L04UNMC4T14', '0410', '14', 48, 48, 20, 16, '2021-07-05 07:30:00', '1', '2021-07-05 16:30:15', '2021-07-05 16:30:15'),
(86, 'L04UNMC4T14', '0409', '14', 42, 42, 15, 14, '2021-07-05 07:30:00', '1', '2021-07-05 16:31:26', '2021-07-05 16:31:26'),
(87, 'L02UNMC4T12', '0203', '11', 3, 51, 20, 1, '2022-06-30 07:30:00', '0', '2021-07-05 16:33:20', '2022-06-30 15:58:47'),
(88, 'L02UNMC4T12', '0203', '12', 45, 45, 20, 15, '2021-07-05 07:30:00', '1', '2021-07-05 16:33:27', '2021-07-05 16:33:27'),
(89, 'L02UNMC4T12', '0203', '13', 51, 51, 20, 17, '2021-07-05 07:30:00', '1', '2021-07-05 16:33:32', '2021-07-05 16:33:32'),
(90, 'L10UNMC4T18', '1023', '14', 57, 57, 20, 19, '2021-07-05 07:30:00', '1', '2021-07-05 16:33:38', '2021-07-05 16:33:38'),
(91, 'L02UNMC4T12', '0203', '14', 54, 54, 20, 18, '2021-07-05 07:30:00', '1', '2021-07-05 16:33:41', '2021-07-05 16:33:41'),
(92, 'L02UNMC4T12', '0204', '14', 54, 54, 20, 18, '2021-07-05 07:30:00', '1', '2021-07-05 16:33:54', '2021-07-05 16:34:13'),
(93, 'L02UNMC4T12', '0204', '12', 54, 54, 20, 18, '2021-07-05 07:30:00', '1', '2021-07-05 16:34:01', '2021-07-05 16:34:01'),
(94, 'L02UNMC4T12', '0204', '13', 51, 51, 20, 17, '2021-07-05 07:30:00', '1', '2021-07-05 16:34:08', '2021-07-05 16:34:08'),
(95, 'L06UNMC4T15', '0614', '14', 36, 36, 15, 12, '2021-07-05 07:30:00', '1', '2021-07-05 16:34:22', '2021-07-05 16:34:22'),
(96, 'L06UNMC4T15', '0513', '14', 57, 57, 20, 19, '2021-07-05 07:30:00', '1', '2021-07-05 16:34:29', '2021-07-05 17:01:36'),
(97, 'L07UNMC4T16', '0715', '14', 27, 27, 12, 9, '2021-07-05 07:30:00', '1', '2021-07-05 16:35:35', '2021-07-05 16:35:35'),
(98, 'L07UNMC4T16', '0716', '14', 24, 24, 10, 8, '2021-07-05 07:30:00', '1', '2021-07-05 16:35:57', '2021-07-05 16:35:57'),
(99, 'L07UNMC4T16', '0717', '14', 27, 27, 10, 9, '2021-07-05 07:30:00', '1', '2021-07-05 16:36:05', '2021-07-05 16:36:05'),
(100, 'L10UNMC4T18', '1026', '14', 72, 72, 25, 24, '2021-07-05 07:30:00', '1', '2021-07-05 16:36:06', '2021-07-05 16:36:06'),
(101, 'L07UNMC4T16', '0718', '14', 30, 30, 10, 10, '2021-07-05 07:30:00', '1', '2021-07-05 16:36:11', '2021-07-05 16:36:11'),
(102, 'L10UNMC4T18', '1024', '14', 57, 57, 20, 19, '2021-07-05 07:30:00', '1', '2021-07-05 16:36:23', '2021-07-05 16:36:23'),
(103, 'L13UNMC4T19', '1330', '14', 39, 39, 15, 13, '2021-07-05 07:30:00', '1', '2021-07-05 16:36:48', '2021-07-05 16:36:48'),
(104, 'L06UNMC4T15', '0512', '14', 57, 57, 19, 20, '2021-07-05 07:30:00', '1', '2021-07-05 16:37:28', '2021-07-05 16:37:28'),
(105, 'L10UNMC4T18', '1025', '14', 51, 51, 20, 17, '2021-07-05 07:30:00', '1', '2021-07-05 16:39:33', '2021-07-05 16:39:33'),
(106, 'L08UNMC4T17', '0819', '14', 87, 87, 30, 29, '2021-07-05 07:30:00', '1', '2021-07-05 16:44:36', '2021-07-05 16:44:36'),
(107, 'L08UNMC4T17', '0820', '14', 42, 42, 15, 14, '2021-07-05 07:30:00', '1', '2021-07-05 16:44:42', '2021-07-05 16:44:42'),
(108, 'L08UNMC4T17', '0821', '14', 54, 54, 20, 18, '2021-07-05 07:30:00', '1', '2021-07-05 16:44:46', '2021-07-05 16:44:46'),
(109, 'L03UNMC4T13', '0305', '14', 48, 48, 20, 16, '2021-07-05 07:30:00', '1', '2021-07-05 16:56:47', '2021-07-05 16:56:47'),
(110, 'L03UNMC4T13', '0306', '14', 72, 72, 25, 24, '2021-07-05 07:30:00', '1', '2021-07-05 16:56:54', '2021-07-05 16:56:54'),
(111, 'L03UNMC4T13', '0307', '14', 51, 51, 20, 17, '2021-07-05 07:30:00', '1', '2021-07-05 16:56:57', '2021-07-05 16:56:57'),
(112, 'L02UNMC4T12', '0204', '11', 48, 48, 20, 16, '2021-07-05 07:30:00', '1', '2021-07-05 16:57:36', '2021-07-05 16:57:36'),
(113, 'L04UNMC4T14', '0408', '21', 78, 78, 30, 26, '2021-07-06 07:30:00', '1', '2021-07-06 09:07:35', '2021-07-06 09:07:35'),
(114, 'L04UNMC4T14', '0409', '21', 45, 45, 15, 15, '2021-07-06 07:30:00', '1', '2021-07-06 09:09:33', '2021-07-06 09:09:35'),
(115, 'L04UNMC4T14', '0411', '24', 69, 69, 25, 23, '2021-07-06 07:30:00', '1', '2021-07-06 09:18:52', '2021-07-06 16:28:56'),
(116, 'L04UNMC4T14', '0411', '21', 69, 69, 25, 23, '2021-07-06 07:30:00', '1', '2021-07-06 09:18:57', '2021-07-06 09:18:57'),
(117, 'L04UNMC4T14', '0410', '21', 51, 51, 20, 17, '2021-07-06 07:30:00', '1', '2021-07-06 09:19:05', '2021-07-06 09:19:05'),
(118, 'L07UNMC4T16', '0715', '21', 36, 36, 12, 12, '2021-07-06 07:30:00', '1', '2021-07-06 09:19:12', '2021-07-06 09:19:12'),
(119, 'L07UNMC4T16', '0716', '21', 30, 30, 10, 10, '2021-07-06 07:30:00', '1', '2021-07-06 09:19:19', '2021-07-06 09:19:19'),
(120, 'L07UNMC4T16', '0717', '21', 27, 27, 10, 9, '2021-07-06 07:30:00', '1', '2021-07-06 09:19:29', '2021-07-06 09:19:29'),
(121, 'L07UNMC4T16', '0718', '21', 27, 27, 10, 9, '2021-07-06 07:30:00', '1', '2021-07-06 09:19:33', '2021-07-06 09:19:33'),
(122, 'L10UNMC4T18', '1023', '21', 57, 57, 20, 19, '2021-07-06 07:30:00', '1', '2021-07-06 09:20:40', '2021-07-06 09:20:40'),
(123, 'L10UNMC4T18', '1024', '21', 60, 60, 20, 20, '2021-07-06 07:30:00', '1', '2021-07-06 09:20:46', '2021-07-06 09:20:46'),
(124, 'L10UNMC4T18', '1025', '21', 60, 60, 20, 20, '2021-07-06 07:30:00', '1', '2021-07-06 09:20:51', '2021-07-06 09:20:51'),
(125, 'L10UNMC4T18', '1026', '21', 72, 72, 25, 24, '2021-07-06 07:30:00', '1', '2021-07-06 09:20:56', '2021-07-06 09:20:56'),
(126, 'L06UNMC4T15', '0512', '21', 54, 54, 20, 18, '2021-07-06 07:30:00', '1', '2021-07-06 09:25:24', '2021-07-06 09:25:24'),
(127, 'L06UNMC4T15', '0513', '21', 60, 60, 20, 20, '2021-07-06 07:30:00', '1', '2021-07-06 09:25:36', '2021-07-06 09:25:36'),
(128, 'L06UNMC4T15', '0614', '21', 42, 42, 15, 14, '2021-07-06 07:30:00', '1', '2021-07-06 09:28:44', '2021-07-06 09:28:44'),
(129, 'L03UNMC4T13', '0305', '21', 60, 60, 20, 20, '2021-07-06 07:30:00', '1', '2021-07-06 09:39:34', '2021-07-06 09:39:56'),
(130, 'L03UNMC4T13', '0306', '21', 72, 72, 25, 24, '2021-07-06 07:30:00', '1', '2021-07-06 09:39:37', '2021-07-06 09:39:53'),
(131, 'L03UNMC4T13', '0306', '24', 66, 66, 25, 22, '2021-07-06 07:30:00', '1', '2021-07-06 09:39:38', '2021-07-06 16:19:15'),
(132, 'L03UNMC4T13', '0307', '21', 60, 60, 20, 20, '2021-07-06 07:30:00', '1', '2021-07-06 09:39:43', '2021-07-06 09:39:48'),
(133, 'L08UNMC4T17', '0819', '21', 84, 84, 30, 28, '2021-07-06 07:30:00', '1', '2021-07-06 10:27:40', '2021-07-06 10:27:40'),
(134, 'L08UNMC4T17', '0820', '21', 42, 42, 15, 14, '2021-07-06 07:30:00', '1', '2021-07-06 10:27:51', '2021-07-06 10:27:51'),
(135, 'L08UNMC4T17', '0821', '21', 57, 57, 20, 19, '2021-07-06 07:30:00', '1', '2021-07-06 10:27:55', '2021-07-06 10:27:55'),
(136, 'L01UNMC4T11', '0101', '21', 42, 42, 15, 14, '2021-07-06 07:30:00', '1', '2021-07-06 11:15:13', '2021-07-06 11:22:22'),
(137, 'L01UNMC4T11', '0101', '22', 42, 42, 15, 14, '2021-07-06 07:30:00', '1', '2021-07-06 11:15:15', '2021-07-06 11:22:06'),
(138, 'L01UNMC4T11', '0102', '21', 45, 45, 15, 15, '2021-07-06 07:30:00', '1', '2021-07-06 11:15:18', '2021-07-06 11:22:10'),
(139, 'L01UNMC4T11', '0102', '22', 45, 45, 15, 15, '2021-07-06 07:30:00', '1', '2021-07-06 11:15:20', '2021-07-06 11:22:14'),
(140, 'L04UNMC4T14', '0409', '22', 39, 39, 15, 13, '2021-07-06 07:30:00', '1', '2021-07-06 11:17:58', '2021-07-06 11:18:03'),
(141, 'L06UNMC4T15', '0513', '22', 54, 54, 20, 18, '2021-07-06 07:30:00', '1', '2021-07-06 11:20:09', '2021-07-06 11:20:09'),
(142, 'L06UNMC4T15', '0614', '22', 45, 45, 15, 15, '2021-07-06 07:30:00', '1', '2021-07-06 11:20:38', '2021-07-06 11:20:38'),
(143, 'L04UNMC4T14', '0408', '22', 84, 84, 30, 28, '2021-07-06 07:30:00', '1', '2021-07-06 11:22:55', '2021-07-06 11:22:55'),
(144, 'L04UNMC4T14', '0410', '22', 57, 57, 20, 19, '2021-07-06 07:30:00', '1', '2021-07-06 11:23:04', '2021-07-06 11:23:04'),
(145, 'L04UNMC4T14', '0411', '22', 72, 72, 25, 24, '2021-07-06 07:30:00', '1', '2021-07-06 11:23:16', '2021-07-06 11:23:20'),
(146, 'L10UNMC4T18', '1023', '22', 57, 57, 20, 19, '2021-07-06 07:30:00', '1', '2021-07-06 11:24:17', '2021-07-06 11:24:17'),
(147, 'L10UNMC4T18', '1025', '22', 60, 60, 20, 20, '2021-07-06 07:30:00', '1', '2021-07-06 11:24:34', '2021-07-06 11:24:34'),
(148, 'L06UNMC4T15', '0512', '22', 60, 60, 20, 20, '2021-07-06 07:30:00', '1', '2021-07-06 11:24:48', '2021-07-06 11:24:48'),
(149, 'L10UNMC4T18', '1026', '22', 72, 72, 25, 24, '2021-07-06 07:30:00', '1', '2021-07-06 11:24:59', '2021-07-06 11:24:59'),
(150, 'L10UNMC4T18', '1024', '22', 57, 57, 20, 19, '2021-07-06 07:30:00', '1', '2021-07-06 11:30:42', '2021-07-06 11:30:42'),
(151, 'L03UNMC4T13', '0305', '22', 57, 57, 20, 19, '2021-07-06 07:30:00', '1', '2021-07-06 11:44:04', '2021-07-06 11:44:04'),
(152, 'L03UNMC4T13', '0306', '22', 69, 69, 25, 23, '2021-07-06 07:30:00', '1', '2021-07-06 11:44:08', '2021-07-06 11:44:08'),
(153, 'L03UNMC4T13', '0307', '22', 57, 57, 20, 19, '2021-07-06 07:30:00', '1', '2021-07-06 11:44:12', '2021-07-06 11:44:12'),
(154, 'L08UNMC4T17', '0819', '22', 84, 84, 30, 28, '2021-07-06 07:30:00', '1', '2021-07-06 11:50:16', '2021-07-06 11:50:16'),
(155, 'L08UNMC4T17', '0820', '22', 45, 45, 15, 15, '2021-07-06 07:30:00', '1', '2021-07-06 11:50:19', '2021-07-06 11:50:19'),
(156, 'L08UNMC4T17', '0821', '22', 60, 60, 20, 20, '2021-07-06 07:30:00', '1', '2021-07-06 11:50:23', '2021-07-06 11:50:23'),
(157, 'L07UNMC4T16', '0715', '22', 36, 36, 12, 12, '2021-07-06 07:30:00', '1', '2021-07-06 12:11:06', '2021-07-06 12:11:06'),
(158, 'L07UNMC4T16', '0716', '22', 27, 27, 10, 9, '2021-07-06 07:30:00', '1', '2021-07-06 12:11:14', '2021-07-06 12:11:14'),
(159, 'L07UNMC4T16', '0717', '22', 27, 27, 10, 9, '2021-07-06 07:30:00', '1', '2021-07-06 12:11:20', '2021-07-06 12:11:20'),
(160, 'L07UNMC4T16', '0718', '22', 27, 27, 10, 9, '2021-07-06 07:30:00', '1', '2021-07-06 12:11:24', '2021-07-06 12:11:24'),
(161, 'L04UNMC4T14', '0408', '23', 84, 84, 30, 28, '2021-07-06 07:30:00', '1', '2021-07-06 14:17:39', '2021-07-06 14:17:39'),
(162, 'L04UNMC4T14', '0409', '23', 42, 42, 15, 14, '2021-07-06 07:30:00', '1', '2021-07-06 14:17:44', '2021-07-06 14:17:44'),
(163, 'L04UNMC4T14', '0410', '23', 60, 60, 20, 20, '2021-07-06 07:30:00', '1', '2021-07-06 14:17:48', '2021-07-06 14:17:48'),
(164, 'L04UNMC4T14', '0411', '23', 75, 75, 25, 25, '2021-07-06 07:30:00', '1', '2021-07-06 14:17:58', '2021-07-06 14:18:04'),
(165, 'L06UNMC4T15', '0614', '23', 45, 45, 15, 15, '2021-07-06 07:30:00', '1', '2021-07-06 14:20:41', '2021-07-06 14:20:41'),
(166, 'L06UNMC4T15', '0513', '23', 54, 54, 20, 18, '2021-07-06 07:30:00', '1', '2021-07-06 14:20:53', '2021-07-06 14:20:53'),
(167, 'L08UNMC4T17', '0819', '23', 81, 81, 30, 27, '2021-07-06 07:30:00', '1', '2021-07-06 14:23:43', '2021-07-06 14:23:43'),
(168, 'L08UNMC4T17', '0820', '23', 45, 45, 15, 15, '2021-07-06 07:30:00', '1', '2021-07-06 14:23:49', '2021-07-06 14:23:49'),
(169, 'L08UNMC4T17', '0821', '23', 57, 57, 20, 19, '2021-07-06 07:30:00', '1', '2021-07-06 14:23:52', '2021-07-06 14:23:52'),
(170, 'L07UNMC4T16', '0715', '23', 36, 36, 12, 12, '2021-07-06 07:30:00', '1', '2021-07-06 14:31:53', '2021-07-06 14:31:53'),
(171, 'L07UNMC4T16', '0716', '23', 30, 30, 10, 10, '2021-07-06 07:30:00', '1', '2021-07-06 14:31:58', '2021-07-06 14:31:58'),
(172, 'L07UNMC4T16', '0717', '23', 24, 24, 10, 8, '2021-07-06 07:30:00', '1', '2021-07-06 14:32:04', '2021-07-06 14:32:04'),
(173, 'L07UNMC4T16', '0718', '23', 27, 27, 10, 9, '2021-07-06 07:30:00', '1', '2021-07-06 14:32:10', '2021-07-06 14:32:10'),
(174, 'L10UNMC4T18', '1023', '23', 60, 60, 20, 20, '2021-07-06 07:30:00', '1', '2021-07-06 14:33:16', '2021-07-06 14:33:16'),
(175, 'L10UNMC4T18', '1024', '23', 51, 51, 20, 17, '2021-07-06 07:30:00', '1', '2021-07-06 14:33:30', '2021-07-06 14:33:30'),
(176, 'L10UNMC4T18', '1026', '23', 69, 69, 25, 23, '2021-07-06 07:30:00', '1', '2021-07-06 14:33:48', '2021-07-06 14:33:48'),
(177, 'L06UNMC4T15', '0512', '23', 51, 51, 20, 17, '2021-07-06 07:30:00', '1', '2021-07-06 14:35:19', '2021-07-06 14:35:19'),
(178, 'L10UNMC4T18', '1025', '23', 54, 54, 20, 18, '2021-07-06 07:30:00', '1', '2021-07-06 14:41:08', '2021-07-06 14:41:08'),
(179, 'L03UNMC4T13', '0305', '23', 57, 57, 20, 19, '2021-07-06 07:30:00', '1', '2021-07-06 14:45:07', '2021-07-06 14:45:07'),
(180, 'L03UNMC4T13', '0306', '23', 72, 72, 25, 24, '2021-07-06 07:30:00', '1', '2021-07-06 14:45:13', '2021-07-06 14:45:13'),
(181, 'L03UNMC4T13', '0307', '23', 57, 57, 20, 19, '2021-07-06 07:30:00', '1', '2021-07-06 14:45:19', '2021-07-06 14:45:19'),
(182, 'L02UNMC4T12', '0203', '21', 54, 54, 20, 18, '2021-07-06 07:30:00', '1', '2021-07-06 15:05:47', '2021-07-06 15:05:47'),
(183, 'L02UNMC4T12', '0203', '22', 54, 54, 20, 18, '2021-07-06 07:30:00', '1', '2021-07-06 15:05:51', '2021-07-06 15:05:51'),
(184, 'L02UNMC4T12', '0203', '23', 57, 57, 20, 19, '2021-07-06 07:30:00', '1', '2021-07-06 15:05:54', '2021-07-06 15:05:54'),
(185, 'L02UNMC4T12', '0204', '21', 54, 54, 20, 18, '2021-07-06 07:30:00', '1', '2021-07-06 15:06:00', '2021-07-06 15:06:00'),
(186, 'L02UNMC4T12', '0204', '22', 54, 54, 20, 18, '2021-07-06 07:30:00', '1', '2021-07-06 15:06:03', '2021-07-06 15:06:03'),
(187, 'L02UNMC4T12', '0204', '23', 57, 57, 20, 19, '2021-07-06 07:30:00', '1', '2021-07-06 15:06:06', '2021-07-06 15:06:06'),
(188, 'L03UNMC4T13', '0307', '24', 54, 54, 20, 18, '2021-07-06 07:30:00', '1', '2021-07-06 16:19:10', '2021-07-06 16:19:10'),
(189, 'L03UNMC4T13', '0305', '24', 57, 57, 20, 19, '2021-07-06 07:30:00', '1', '2021-07-06 16:19:20', '2021-07-06 16:19:20'),
(190, 'L04UNMC4T14', '0409', '24', 45, 45, 15, 15, '2021-07-06 07:30:00', '1', '2021-07-06 16:19:23', '2021-07-06 16:19:23'),
(191, 'L10UNMC4T18', '1026', '24', 75, 75, 25, 25, '2021-07-06 07:30:00', '1', '2021-07-06 16:26:09', '2021-07-06 16:26:09'),
(192, 'L07UNMC4T16', '0715', '24', 36, 36, 12, 12, '2021-07-06 07:30:00', '1', '2021-07-06 16:26:18', '2021-07-06 16:26:18'),
(193, 'L07UNMC4T16', '0716', '24', 30, 30, 10, 10, '2021-07-06 07:30:00', '1', '2021-07-06 16:26:22', '2021-07-06 16:26:22'),
(194, 'L07UNMC4T16', '0717', '24', 30, 30, 10, 10, '2021-07-06 07:30:00', '1', '2021-07-06 16:26:29', '2021-07-06 16:26:29'),
(195, 'L07UNMC4T16', '0718', '24', 30, 30, 10, 10, '2021-07-06 07:30:00', '1', '2021-07-06 16:26:38', '2021-07-06 16:26:38'),
(196, 'L04UNMC4T14', '0408', '24', 84, 84, 30, 28, '2021-07-06 07:30:00', '1', '2021-07-06 16:27:03', '2021-07-06 16:38:34'),
(197, 'L06UNMC4T15', '0614', '24', 39, 39, 15, 13, '2021-07-06 07:30:00', '1', '2021-07-06 16:27:18', '2021-07-06 16:27:18'),
(198, 'L06UNMC4T15', '0513', '24', 51, 51, 20, 17, '2021-07-06 07:30:00', '1', '2021-07-06 16:27:27', '2021-07-06 16:27:27'),
(199, 'L10UNMC4T18', '1023', '24', 54, 54, 20, 18, '2021-07-06 07:30:00', '1', '2021-07-06 16:27:45', '2021-07-06 16:27:45'),
(200, 'L02UNMC4T12', '0203', '24', 60, 60, 20, 20, '2021-07-06 07:30:00', '1', '2021-07-06 16:31:36', '2021-07-06 16:31:36'),
(201, 'L02UNMC4T12', '0204', '24', 57, 57, 20, 19, '2021-07-06 07:30:00', '1', '2021-07-06 16:31:40', '2021-07-06 16:31:40'),
(202, 'L06UNMC4T15', '0512', '24', 57, 57, 20, 19, '2021-07-06 07:30:00', '1', '2021-07-06 16:32:04', '2021-07-06 16:32:04'),
(203, 'L08UNMC4T17', '0819', '24', 81, 81, 30, 27, '2021-07-06 07:30:00', '1', '2021-07-06 16:34:43', '2021-07-06 16:34:43'),
(204, 'L08UNMC4T17', '0821', '24', 51, 51, 20, 17, '2021-07-06 07:30:00', '1', '2021-07-06 16:34:47', '2021-07-06 16:34:47'),
(205, 'L10UNMC4T18', '1024', '24', 57, 57, 20, 19, '2021-07-06 07:30:00', '1', '2021-07-06 16:36:25', '2021-07-06 16:36:25'),
(206, 'L10UNMC4T18', '1025', '24', 60, 60, 20, 20, '2021-07-06 07:30:00', '1', '2021-07-06 16:36:32', '2021-07-06 16:36:32'),
(207, 'L04UNMC4T14', '0410', '24', 57, 57, 20, 19, '2021-07-06 07:30:00', '1', '2021-07-06 16:38:43', '2021-07-06 16:38:43'),
(208, 'L01UNMC4T11', '0101', '23', 45, 45, 15, 15, '2021-07-06 07:30:00', '1', '2021-07-06 16:42:04', '2021-07-06 16:42:04'),
(209, 'L01UNMC4T11', '0101', '24', 45, 45, 15, 15, '2021-07-06 07:30:00', '1', '2021-07-06 16:42:07', '2021-07-06 16:42:07'),
(210, 'L01UNMC4T11', '0102', '23', 42, 42, 15, 14, '2021-07-06 07:30:00', '1', '2021-07-06 16:42:11', '2021-07-06 16:42:11'),
(212, 'L01UNMC4T11', '0102', '24', 42, 42, 15, 14, '2021-07-06 07:30:00', '1', '2021-07-06 16:47:34', '2021-07-06 16:49:27'),
(213, 'L13UNMC4T19', '1329', '21', 45, 45, 15, 15, '2021-07-06 07:30:00', '1', '2021-07-06 16:54:54', '2021-07-06 16:54:54'),
(214, 'L13UNMC4T19', '1329', '22', 42, 42, 15, 14, '2021-07-06 07:30:00', '1', '2021-07-06 16:54:57', '2021-07-06 16:54:57'),
(215, 'L13UNMC4T19', '1329', '23', 42, 42, 15, 14, '2021-07-06 07:30:00', '1', '2021-07-06 16:55:00', '2021-07-06 16:55:00'),
(216, 'L13UNMC4T19', '1329', '24', 36, 36, 15, 12, '2021-07-06 07:30:00', '1', '2021-07-06 16:55:03', '2021-07-06 16:55:03'),
(217, 'L13UNMC4T19', '1330', '21', 45, 45, 15, 15, '2021-07-06 07:30:00', '1', '2021-07-06 16:55:09', '2021-07-06 16:55:09'),
(218, 'L13UNMC4T19', '1330', '22', 42, 42, 15, 14, '2021-07-06 07:30:00', '1', '2021-07-06 16:55:11', '2021-07-06 16:55:11'),
(219, 'L13UNMC4T19', '1330', '23', 45, 45, 15, 15, '2021-07-06 07:30:00', '1', '2021-07-06 16:55:13', '2021-07-06 16:55:13'),
(220, 'L13UNMC4T19', '1330', '24', 45, 45, 15, 15, '2021-07-06 07:30:00', '1', '2021-07-06 16:55:17', '2021-07-06 16:55:17'),
(221, 'L13UNMC4T19', '1331', '21', 45, 45, 15, 15, '2021-07-06 07:30:00', '1', '2021-07-06 16:55:21', '2021-07-06 16:55:21'),
(222, 'L13UNMC4T19', '1331', '22', 42, 42, 15, 14, '2021-07-06 07:30:00', '1', '2021-07-06 16:55:24', '2021-07-06 16:55:24'),
(223, 'L13UNMC4T19', '1331', '23', 39, 39, 15, 13, '2021-07-06 07:30:00', '1', '2021-07-06 16:55:26', '2021-07-06 16:55:26'),
(224, 'L13UNMC4T19', '1331', '24', 45, 45, 15, 15, '2021-07-06 07:30:00', '1', '2021-07-06 16:55:30', '2021-07-06 16:55:30'),
(225, 'L08UNMC4T17', '0820', '24', 42, 42, 15, 14, '2021-07-06 07:30:00', '1', '2021-07-06 16:58:30', '2021-07-06 16:58:30'),
(226, 'L04UNMC4T14', '0410', '31', 54, 54, 20, 18, '2021-07-07 07:30:00', '1', '2021-07-07 09:13:03', '2021-07-07 09:27:09'),
(227, 'L04UNMC4T14', '0409', '31', 45, 45, 15, 15, '2021-07-07 07:30:00', '1', '2021-07-07 09:18:09', '2021-07-07 09:18:09'),
(228, 'L06UNMC4T15', '0512', '31', 54, 54, 20, 18, '2021-07-07 07:30:00', '1', '2021-07-07 09:21:07', '2021-07-07 09:21:07'),
(229, 'L06UNMC4T15', '0614', '31', 42, 42, 15, 14, '2021-07-07 07:30:00', '1', '2021-07-07 09:21:17', '2021-07-07 09:21:17'),
(230, 'L06UNMC4T15', '0513', '31', 54, 54, 20, 18, '2021-07-07 07:30:00', '1', '2021-07-07 09:21:56', '2021-07-07 09:21:56'),
(231, 'L10UNMC4T18', '1023', '34', 60, 60, 20, 20, '2021-07-07 07:30:00', '1', '2021-07-07 09:22:20', '2021-07-07 16:26:54'),
(232, 'L10UNMC4T18', '1023', '31', 57, 57, 20, 19, '2021-07-07 07:30:00', '1', '2021-07-07 09:22:51', '2021-07-07 09:22:51'),
(233, 'L10UNMC4T18', '1024', '31', 51, 51, 20, 17, '2021-07-07 07:30:00', '1', '2021-07-07 09:23:05', '2021-07-07 09:23:05'),
(234, 'L10UNMC4T18', '1025', '31', 60, 60, 20, 20, '2021-07-07 07:30:00', '1', '2021-07-07 09:23:13', '2021-07-07 09:23:13'),
(235, 'L10UNMC4T18', '1026', '31', 63, 63, 25, 21, '2021-07-07 07:30:00', '1', '2021-07-07 09:23:23', '2021-07-07 09:23:23'),
(236, 'L07UNMC4T16', '0715', '31', 33, 33, 12, 11, '2021-07-07 07:30:00', '1', '2021-07-07 09:23:55', '2021-07-07 09:23:55'),
(237, 'L07UNMC4T16', '0716', '31', 30, 30, 10, 10, '2021-07-07 07:30:00', '1', '2021-07-07 09:24:02', '2021-07-07 09:24:02'),
(238, 'L07UNMC4T16', '0717', '31', 30, 30, 10, 10, '2021-07-07 07:30:00', '1', '2021-07-07 09:24:13', '2021-07-07 09:24:13'),
(239, 'L07UNMC4T16', '0718', '31', 24, 24, 10, 8, '2021-07-07 07:30:00', '1', '2021-07-07 09:24:19', '2021-07-07 09:24:19'),
(240, 'L04UNMC4T14', '0411', '31', 69, 69, 25, 23, '2021-07-07 07:30:00', '1', '2021-07-07 09:27:16', '2021-07-07 09:27:16'),
(241, 'L04UNMC4T14', '0408', '31', 90, 90, 30, 30, '2021-07-07 07:30:00', '1', '2021-07-07 09:28:20', '2021-07-07 09:28:23'),
(242, 'L08UNMC4T17', '0819', '31', 78, 78, 30, 26, '2021-07-07 07:30:00', '1', '2021-07-07 09:43:41', '2021-07-07 09:43:41'),
(243, 'L08UNMC4T17', '0820', '31', 42, 42, 15, 14, '2021-07-07 07:30:00', '1', '2021-07-07 09:43:46', '2021-07-07 09:43:46'),
(244, 'L08UNMC4T17', '0821', '31', 54, 54, 20, 18, '2021-07-07 07:30:00', '1', '2021-07-07 09:43:51', '2021-07-07 09:43:51'),
(245, 'L03UNMC4T13', '0305', '31', 60, 60, 20, 20, '2021-07-07 07:30:00', '1', '2021-07-07 09:54:31', '2021-07-07 09:54:31'),
(246, 'L03UNMC4T13', '0306', '31', 69, 69, 25, 23, '2021-07-07 07:30:00', '1', '2021-07-07 09:54:36', '2021-07-07 09:54:36'),
(247, 'L03UNMC4T13', '0307', '31', 60, 60, 20, 20, '2021-07-07 07:30:00', '1', '2021-07-07 09:54:41', '2021-07-07 09:54:41'),
(248, 'L04UNMC4T14', '0409', '32', 45, 45, 15, 15, '2021-07-07 07:30:00', '1', '2021-07-07 11:20:45', '2021-07-07 11:20:45'),
(249, 'L04UNMC4T14', '0410', '32', 60, 60, 20, 20, '2021-07-07 07:30:00', '1', '2021-07-07 11:25:05', '2021-07-07 11:25:05'),
(250, 'L10UNMC4T18', '1023', '32', 57, 57, 20, 19, '2021-07-07 07:30:00', '1', '2021-07-07 11:25:49', '2021-07-07 11:25:49'),
(251, 'L10UNMC4T18', '1024', '32', 54, 54, 20, 18, '2021-07-07 07:30:00', '1', '2021-07-07 11:25:53', '2021-07-07 11:25:53'),
(252, 'L10UNMC4T18', '1026', '32', 72, 72, 25, 24, '2021-07-07 07:30:00', '1', '2021-07-07 11:26:03', '2021-07-07 11:28:10'),
(253, 'L10UNMC4T18', '1025', '32', 57, 57, 20, 19, '2021-07-07 07:30:00', '1', '2021-07-07 11:27:49', '2021-07-07 12:53:17'),
(254, 'L06UNMC4T15', '0513', '32', 57, 57, 20, 19, '2021-07-07 07:30:00', '1', '2021-07-07 11:29:57', '2021-07-07 11:29:57'),
(255, 'L06UNMC4T15', '0512', '32', 54, 54, 20, 18, '2021-07-07 07:30:00', '1', '2021-07-07 11:30:55', '2021-07-07 11:30:55'),
(256, 'L06UNMC4T15', '0614', '32', 45, 45, 15, 15, '2021-07-07 07:30:00', '1', '2021-07-07 11:31:47', '2021-07-07 11:31:47'),
(257, 'L04UNMC4T14', '0411', '32', 63, 63, 25, 21, '2021-07-07 07:30:00', '1', '2021-07-07 11:32:53', '2021-07-07 11:32:53'),
(258, 'L04UNMC4T14', '0408', '32', 84, 84, 30, 28, '2021-07-07 07:30:00', '1', '2021-07-07 11:33:11', '2021-07-07 11:33:15'),
(259, 'L03UNMC4T13', '0305', '32', 57, 57, 20, 19, '2021-07-07 07:30:00', '1', '2021-07-07 11:37:44', '2021-07-07 11:37:44'),
(260, 'L03UNMC4T13', '0306', '32', 72, 72, 25, 24, '2021-07-07 07:30:00', '1', '2021-07-07 11:37:48', '2021-07-07 11:37:48'),
(261, 'L03UNMC4T13', '0307', '32', 57, 57, 20, 19, '2021-07-07 07:30:00', '1', '2021-07-07 11:37:54', '2021-07-07 11:37:54'),
(262, 'L07UNMC4T16', '0715', '32', 30, 30, 12, 10, '2021-07-07 07:30:00', '1', '2021-07-07 12:00:50', '2021-07-07 12:00:50'),
(263, 'L07UNMC4T16', '0716', '32', 30, 30, 10, 10, '2021-07-07 07:30:00', '1', '2021-07-07 12:00:55', '2021-07-07 12:00:55'),
(264, 'L07UNMC4T16', '0717', '32', 30, 30, 10, 10, '2021-07-07 07:30:00', '1', '2021-07-07 12:01:00', '2021-07-07 12:01:00'),
(265, 'L07UNMC4T16', '0718', '32', 24, 24, 10, 8, '2021-07-07 07:30:00', '1', '2021-07-07 12:01:05', '2021-07-07 12:01:05'),
(266, 'L08UNMC4T17', '0819', '32', 87, 87, 30, 29, '2021-07-07 07:30:00', '1', '2021-07-07 12:04:19', '2021-07-07 12:04:19'),
(267, 'L08UNMC4T17', '0820', '32', 36, 36, 15, 12, '2021-07-07 07:30:00', '1', '2021-07-07 12:04:27', '2021-07-07 12:04:27'),
(268, 'L08UNMC4T17', '0821', '32', 48, 48, 20, 16, '2021-07-07 07:30:00', '1', '2021-07-07 12:04:30', '2021-07-07 15:50:49'),
(269, 'L10UNMC4T18', '1023', '33', 57, 57, 20, 19, '2021-07-07 07:30:00', '1', '2021-07-07 14:09:12', '2021-07-07 14:09:12'),
(270, 'L06UNMC4T15', '0513', '33', 57, 57, 20, 19, '2021-07-07 07:30:00', '1', '2021-07-07 14:20:12', '2021-07-07 16:34:42'),
(271, 'L06UNMC4T15', '0614', '33', 42, 42, 15, 14, '2021-07-07 07:30:00', '1', '2021-07-07 14:31:10', '2021-07-07 14:31:10'),
(272, 'L04UNMC4T14', '0408', '33', 87, 87, 30, 29, '2021-07-07 07:30:00', '1', '2021-07-07 14:31:31', '2021-07-07 14:31:31'),
(273, 'L04UNMC4T14', '0410', '33', 57, 57, 20, 19, '2021-07-07 07:30:00', '1', '2021-07-07 14:31:45', '2021-07-07 14:31:45'),
(274, 'L04UNMC4T14', '0411', '33', 69, 69, 25, 23, '2021-07-07 07:30:00', '1', '2021-07-07 14:31:52', '2021-07-07 14:31:52'),
(275, 'L06UNMC4T15', '0512', '33', 57, 57, 20, 19, '2021-07-07 07:30:00', '1', '2021-07-07 14:38:33', '2021-07-07 14:38:33'),
(276, 'L10UNMC4T18', '1024', '33', 54, 54, 20, 18, '2021-07-07 07:30:00', '1', '2021-07-07 15:02:26', '2021-07-07 15:02:26'),
(277, 'L10UNMC4T18', '1025', '33', 60, 60, 20, 20, '2021-07-07 07:30:00', '1', '2021-07-07 15:02:35', '2021-07-07 15:02:35'),
(278, 'L10UNMC4T18', '1026', '33', 72, 72, 25, 24, '2021-07-07 07:30:00', '1', '2021-07-07 15:02:41', '2021-07-07 15:02:41'),
(279, 'L08UNMC4T17', '0819', '33', 84, 84, 30, 28, '2021-07-07 07:30:00', '1', '2021-07-07 15:12:44', '2021-07-07 15:12:44'),
(280, 'L08UNMC4T17', '0820', '33', 39, 39, 15, 13, '2021-07-07 07:30:00', '1', '2021-07-07 15:12:49', '2021-07-07 15:12:49'),
(281, 'L08UNMC4T17', '0821', '33', 57, 57, 20, 19, '2021-07-07 07:30:00', '1', '2021-07-07 15:12:57', '2021-07-07 15:12:57'),
(282, 'L04UNMC4T14', '0409', '33', 42, 42, 15, 14, '2021-07-07 07:30:00', '1', '2021-07-07 15:16:29', '2021-07-07 15:16:29'),
(283, 'L01UNMC4T11', '0101', '31', 42, 42, 15, 14, '2021-07-07 07:30:00', '1', '2021-07-07 16:16:11', '2021-07-07 16:16:11'),
(284, 'L01UNMC4T11', '0101', '32', 45, 45, 15, 15, '2021-07-07 07:30:00', '1', '2021-07-07 16:16:20', '2021-07-07 16:16:20'),
(285, 'L01UNMC4T11', '0101', '33', 39, 39, 15, 13, '2021-07-07 07:30:00', '1', '2021-07-07 16:16:23', '2021-07-07 16:16:23'),
(286, 'L01UNMC4T11', '0101', '34', 39, 39, 15, 13, '2021-07-07 07:30:00', '1', '2021-07-07 16:16:31', '2021-07-07 16:16:31'),
(287, 'L01UNMC4T11', '0102', '31', 45, 45, 15, 15, '2021-07-07 07:30:00', '1', '2021-07-07 16:16:36', '2021-07-07 16:16:36'),
(288, 'L01UNMC4T11', '0102', '32', 45, 45, 15, 15, '2021-07-07 07:30:00', '1', '2021-07-07 16:16:40', '2021-07-07 16:16:40'),
(289, 'L01UNMC4T11', '0102', '33', 39, 39, 15, 13, '2021-07-07 07:30:00', '1', '2021-07-07 16:16:43', '2021-07-07 16:16:43'),
(290, 'L01UNMC4T11', '0102', '34', 39, 39, 15, 13, '2021-07-07 07:30:00', '1', '2021-07-07 16:16:48', '2021-07-07 16:16:48'),
(291, 'L04UNMC4T14', '0410', '34', 57, 57, 20, 19, '2021-07-07 07:30:00', '1', '2021-07-07 16:17:28', '2021-07-07 16:17:28'),
(292, 'L04UNMC4T14', '0409', '34', 45, 45, 15, 15, '2021-07-07 07:30:00', '1', '2021-07-07 16:26:45', '2021-07-07 16:26:45'),
(293, 'L10UNMC4T18', '1025', '34', 57, 57, 20, 19, '2021-07-07 07:30:00', '1', '2021-07-07 16:27:06', '2021-07-07 16:27:06'),
(294, 'L10UNMC4T18', '1026', '34', 69, 69, 25, 23, '2021-07-07 07:30:00', '1', '2021-07-07 16:27:14', '2021-07-07 16:27:14'),
(295, 'L02UNMC4T12', '0204', '34', 60, 60, 20, 20, '2021-07-07 07:30:00', '1', '2021-07-07 16:33:03', '2021-07-07 16:33:03'),
(296, 'L02UNMC4T12', '0204', '31', 60, 60, 20, 20, '2021-07-07 07:30:00', '1', '2021-07-07 16:33:06', '2021-07-07 16:33:06'),
(297, 'L02UNMC4T12', '0204', '32', 57, 57, 20, 19, '2021-07-07 07:30:00', '1', '2021-07-07 16:33:11', '2021-07-07 16:33:11'),
(298, 'L02UNMC4T12', '0204', '33', 60, 60, 20, 20, '2021-07-07 07:30:00', '1', '2021-07-07 16:33:15', '2021-07-07 16:33:15'),
(299, 'L02UNMC4T12', '0203', '34', 60, 60, 20, 20, '2021-07-07 07:30:00', '1', '2021-07-07 16:33:18', '2021-07-07 16:33:18'),
(300, 'L02UNMC4T12', '0203', '31', 57, 57, 20, 19, '2021-07-07 07:30:00', '1', '2021-07-07 16:33:22', '2021-07-07 16:33:22'),
(301, 'L02UNMC4T12', '0203', '32', 54, 54, 20, 18, '2021-07-07 07:30:00', '1', '2021-07-07 16:33:25', '2021-07-07 16:33:25'),
(302, 'L02UNMC4T12', '0203', '33', 60, 60, 20, 20, '2021-07-07 07:30:00', '1', '2021-07-07 16:33:28', '2021-07-07 16:33:28'),
(303, 'L04UNMC4T14', '0411', '34', 66, 66, 25, 22, '2021-07-07 07:30:00', '1', '2021-07-07 16:34:27', '2021-07-07 16:34:31'),
(304, 'L08UNMC4T17', '0821', '34', 51, 51, 20, 17, '2021-07-07 07:30:00', '1', '2021-07-07 16:36:32', '2021-07-07 16:36:32'),
(305, 'L08UNMC4T17', '0819', '34', 78, 78, 30, 26, '2021-07-07 07:30:00', '1', '2021-07-07 16:36:38', '2021-07-07 16:36:38'),
(306, 'L06UNMC4T15', '0513', '34', 60, 60, 20, 20, '2021-07-07 07:30:00', '1', '2021-07-07 16:37:15', '2021-07-07 16:37:15'),
(307, 'L06UNMC4T15', '0512', '34', 60, 60, 20, 20, '2021-07-07 07:30:00', '1', '2021-07-07 16:37:19', '2021-07-07 16:37:19'),
(308, 'L08UNMC4T17', '0820', '34', 45, 45, 15, 15, '2021-07-07 07:30:00', '1', '2021-07-07 16:38:20', '2021-07-07 16:38:20'),
(309, 'L06UNMC4T15', '0614', '34', 45, 45, 15, 15, '2021-07-07 07:30:00', '1', '2021-07-07 16:38:55', '2021-07-07 16:39:02'),
(310, 'L03UNMC4T13', '0305', '34', 57, 57, 20, 19, '2021-07-07 07:30:00', '1', '2021-07-07 16:40:10', '2021-07-07 16:40:10'),
(311, 'L03UNMC4T13', '0306', '34', 66, 66, 25, 22, '2021-07-07 07:30:00', '1', '2021-07-07 16:40:14', '2021-07-07 16:40:14'),
(312, 'L03UNMC4T13', '0307', '34', 57, 57, 20, 19, '2021-07-07 07:30:00', '1', '2021-07-07 16:40:17', '2021-07-07 16:40:17'),
(313, 'L10UNMC4T18', '1024', '34', 57, 57, 20, 19, '2021-07-07 07:30:00', '1', '2021-07-07 16:42:34', '2021-07-07 16:42:34'),
(314, 'L07UNMC4T16', '0715', '33', 36, 36, 12, 12, '2021-07-07 07:30:00', '1', '2021-07-07 16:42:58', '2021-07-07 16:42:58'),
(315, 'L07UNMC4T16', '0716', '33', 30, 30, 10, 10, '2021-07-07 07:30:00', '1', '2021-07-07 16:43:04', '2021-07-07 16:43:04'),
(316, 'L07UNMC4T16', '0717', '33', 30, 30, 10, 10, '2021-07-07 07:30:00', '1', '2021-07-07 16:43:07', '2021-07-07 16:43:07'),
(317, 'L07UNMC4T16', '0718', '33', 27, 27, 10, 9, '2021-07-07 07:30:00', '1', '2021-07-07 16:43:12', '2021-07-07 16:43:12'),
(318, 'L04UNMC4T14', '0408', '34', 87, 87, 30, 29, '2021-07-07 07:30:00', '1', '2021-07-07 16:47:29', '2021-07-07 16:47:35'),
(319, 'L07UNMC4T16', '0715', '34', 33, 33, 12, 11, '2021-07-07 07:30:00', '1', '2021-07-07 16:54:27', '2021-07-07 16:54:27'),
(320, 'L07UNMC4T16', '0716', '34', 27, 27, 10, 9, '2021-07-07 07:30:00', '1', '2021-07-07 16:54:55', '2021-07-07 16:54:55'),
(321, 'L07UNMC4T16', '0717', '34', 21, 21, 10, 7, '2021-07-07 07:30:00', '1', '2021-07-07 16:55:07', '2021-07-07 16:55:07'),
(322, 'L07UNMC4T16', '0718', '34', 30, 30, 10, 10, '2021-07-07 07:30:00', '1', '2021-07-07 16:55:27', '2021-07-07 16:55:27'),
(323, 'L13UNMC4T19', '1331', '34', 42, 42, 15, 14, '2021-07-07 07:30:00', '1', '2021-07-07 17:00:59', '2021-07-07 17:00:59'),
(324, 'L13UNMC4T19', '1331', '33', 39, 39, 15, 13, '2021-07-07 07:30:00', '1', '2021-07-07 17:01:02', '2021-07-07 17:01:02'),
(325, 'L13UNMC4T19', '1331', '32', 42, 42, 15, 14, '2021-07-07 07:30:00', '1', '2021-07-07 17:01:05', '2021-07-07 17:01:05'),
(326, 'L13UNMC4T19', '1331', '31', 36, 36, 15, 12, '2021-07-07 07:30:00', '1', '2021-07-07 17:01:07', '2021-07-07 17:01:07'),
(327, 'L13UNMC4T19', '1330', '34', 39, 39, 15, 13, '2021-07-07 07:30:00', '1', '2021-07-07 17:01:13', '2021-07-07 17:01:13'),
(328, 'L13UNMC4T19', '1330', '33', 42, 42, 15, 14, '2021-07-07 07:30:00', '1', '2021-07-07 17:01:16', '2021-07-07 17:01:16'),
(329, 'L13UNMC4T19', '1330', '32', 45, 45, 15, 15, '2021-07-07 07:30:00', '1', '2021-07-07 17:01:19', '2021-07-07 17:01:19'),
(330, 'L13UNMC4T19', '1330', '31', 42, 42, 15, 14, '2021-07-07 07:30:00', '1', '2021-07-07 17:01:22', '2021-07-07 17:01:22'),
(331, 'L13UNMC4T19', '1329', '34', 39, 39, 15, 13, '2021-07-07 07:30:00', '1', '2021-07-07 17:01:28', '2021-07-07 17:01:28'),
(332, 'L13UNMC4T19', '1329', '33', 45, 45, 15, 15, '2021-07-07 07:30:00', '1', '2021-07-07 17:01:32', '2021-07-07 17:01:32'),
(333, 'L13UNMC4T19', '1329', '32', 45, 45, 15, 15, '2021-07-07 07:30:00', '1', '2021-07-07 17:01:35', '2021-07-07 17:01:35'),
(334, 'L13UNMC4T19', '1329', '31', 45, 45, 15, 15, '2021-07-07 07:30:00', '1', '2021-07-07 17:01:38', '2021-07-07 17:01:38'),
(335, 'L03UNMC4T13', '0305', '33', 57, 57, 20, 19, '2021-07-07 07:30:00', '1', '2021-07-07 17:03:54', '2021-07-07 17:03:54'),
(336, 'L03UNMC4T13', '0306', '33', 75, 75, 25, 25, '2021-07-07 07:30:00', '1', '2021-07-07 17:04:01', '2021-07-07 17:04:01'),
(337, 'L03UNMC4T13', '0307', '33', 54, 54, 20, 18, '2021-07-07 07:30:00', '1', '2021-07-07 17:04:05', '2021-07-07 17:04:05'),
(338, 'L04UNMC4T14', '0411', '41', 63, 63, 25, 21, '2021-07-08 07:30:00', '1', '2021-07-08 09:22:54', '2021-07-08 09:22:54'),
(339, 'L04UNMC4T14', '0409', '41', 45, 45, 15, 15, '2021-07-08 07:30:00', '1', '2021-07-08 09:32:41', '2021-07-08 09:32:41'),
(340, 'L04UNMC4T14', '0408', '41', 84, 84, 30, 28, '2021-07-08 07:30:00', '1', '2021-07-08 09:35:06', '2021-07-08 09:35:06'),
(341, 'L04UNMC4T14', '0410', '41', 54, 54, 20, 18, '2021-07-08 07:30:00', '1', '2021-07-08 09:36:16', '2021-07-08 09:36:16'),
(342, 'L03UNMC4T13', '0305', '41', 54, 54, 20, 18, '2021-07-08 07:30:00', '1', '2021-07-08 09:47:11', '2021-07-08 09:47:11'),
(343, 'L03UNMC4T13', '0306', '41', 60, 60, 25, 20, '2021-07-08 07:30:00', '1', '2021-07-08 09:47:16', '2021-07-08 09:47:16'),
(344, 'L03UNMC4T13', '0307', '41', 60, 60, 20, 20, '2021-07-08 07:30:00', '1', '2021-07-08 09:47:19', '2021-07-08 09:47:19'),
(345, 'L04UNMC4T14', '0409', '42', 45, 45, 15, 15, '2021-07-08 07:30:00', '1', '2021-07-08 11:29:24', '2021-07-08 11:29:24'),
(346, 'L04UNMC4T14', '0408', '42', 81, 81, 30, 27, '2021-07-08 07:30:00', '1', '2021-07-08 11:31:53', '2021-07-08 11:31:53'),
(347, 'L04UNMC4T14', '0411', '42', 69, 69, 25, 23, '2021-07-08 07:30:00', '1', '2021-07-08 11:32:49', '2021-07-08 11:32:49'),
(348, 'L04UNMC4T14', '0410', '42', 51, 51, 20, 17, '2021-07-08 07:30:00', '1', '2021-07-08 11:33:02', '2021-07-08 11:33:02'),
(349, 'L03UNMC4T13', '0305', '42', 60, 60, 20, 20, '2021-07-08 07:30:00', '1', '2021-07-08 13:19:50', '2021-07-08 13:19:50'),
(350, 'L03UNMC4T13', '0306', '42', 63, 63, 25, 21, '2021-07-08 07:30:00', '1', '2021-07-08 13:19:53', '2021-07-08 13:19:53'),
(351, 'L03UNMC4T13', '0307', '42', 42, 42, 20, 14, '2021-07-08 07:30:00', '1', '2021-07-08 13:19:56', '2021-07-08 13:19:56'),
(352, 'L04UNMC4T14', '0409', '43', 39, 39, 14, 13, '2021-07-08 07:30:00', '1', '2021-07-08 14:25:59', '2021-07-08 14:25:59'),
(353, 'L04UNMC4T14', '0408', '43', 69, 69, 26, 23, '2021-07-08 07:30:00', '1', '2021-07-08 14:27:41', '2021-07-08 14:27:41'),
(354, 'L03UNMC4T13', '0305', '43', 54, 54, 20, 18, '2021-07-08 07:30:00', '1', '2021-07-08 14:35:17', '2021-07-08 14:41:48'),
(355, 'L03UNMC4T13', '0306', '43', 63, 63, 25, 21, '2021-07-08 07:30:00', '1', '2021-07-08 14:35:20', '2021-07-08 14:41:44'),
(356, 'L03UNMC4T13', '0307', '43', 51, 51, 20, 17, '2021-07-08 07:30:00', '1', '2021-07-08 14:35:27', '2021-07-08 14:41:40'),
(357, 'L04UNMC4T14', '0410', '43', 54, 54, 19, 18, '2021-07-08 07:30:00', '1', '2021-07-08 14:36:21', '2021-07-08 14:36:36'),
(358, 'L04UNMC4T14', '0411', '43', 51, 51, 19, 17, '2021-07-08 07:30:00', '1', '2021-07-08 14:52:55', '2021-07-08 14:52:59'),
(359, 'L02UNMC4T12', '0203', '41', 54, 54, 20, 18, '2021-07-08 07:30:00', '1', '2021-07-08 15:14:40', '2021-07-08 15:14:40'),
(360, 'L02UNMC4T12', '0203', '42', 57, 57, 20, 19, '2021-07-08 07:30:00', '1', '2021-07-08 15:14:45', '2021-07-08 15:14:45'),
(361, 'L02UNMC4T12', '0203', '43', 54, 54, 20, 19, '2021-07-08 07:30:00', '0', '2021-07-08 15:14:48', '2021-07-08 15:14:48'),
(362, 'L02UNMC4T12', '0204', '41', 54, 54, 20, 18, '2021-07-08 07:30:00', '1', '2021-07-08 15:14:51', '2021-07-08 15:14:51'),
(363, 'L02UNMC4T12', '0204', '42', 57, 57, 20, 19, '2021-07-08 07:30:00', '1', '2021-07-08 15:14:54', '2021-07-08 15:16:24'),
(364, 'L02UNMC4T12', '0204', '43', 51, 54, 20, 17, '2021-07-08 07:30:00', '0', '2021-07-08 15:14:56', '2021-07-08 15:14:56'),
(365, 'L01UNMC4T11', '0101', '15', 3, 3, 1, 1, '2022-07-07 07:31:00', '1', '2022-07-07 17:38:21', '2022-07-07 17:58:46'),
(366, 'L01UNMC4T11', '0101', '20', 3, 3, 1, 1, '2022-07-08 14:00:00', '1', '2022-07-08 14:10:19', '2022-07-08 14:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `status_servers_copy2022_gel1`
--

CREATE TABLE `status_servers_copy2022_gel1` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_ruangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_sesi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jml_jwb_lokal` int(11) DEFAULT NULL,
  `jml_jwb_pusat` int(11) DEFAULT NULL,
  `total_peserta` int(255) DEFAULT NULL,
  `jmh_kehadiran` int(11) DEFAULT NULL,
  `tgl_ujian` datetime DEFAULT NULL,
  `status_memenuhi` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `status_servers_copy2022_gel1`
--

INSERT INTO `status_servers_copy2022_gel1` (`id`, `username`, `kode_ruangan`, `kode_sesi`, `jml_jwb_lokal`, `jml_jwb_pusat`, `total_peserta`, `jmh_kehadiran`, `tgl_ujian`, `status_memenuhi`, `created_at`, `updated_at`) VALUES
(1, 'L13UNMC4T19', '1329', '11', 57, 57, 20, 19, '2022-07-12 07:30:00', '1', '2022-07-12 14:23:29', '2022-07-12 15:27:21'),
(2, 'L13UNMC4T19', '1329', '12', 51, 51, 20, 17, '2022-07-12 07:30:00', '1', '2022-07-12 14:23:33', '2022-07-12 15:27:23'),
(3, 'L13UNMC4T19', '1329', '13', 57, 57, 20, 19, '2022-07-12 07:30:00', '1', '2022-07-12 14:23:44', '2022-07-12 15:27:25'),
(4, 'L13UNMC4T19', '1329', '14', 51, 51, 20, 17, '2022-07-12 07:30:00', '1', '2022-07-12 14:23:47', '2022-07-12 15:27:19'),
(5, 'L13UNMC4T19', '1330', '11', 54, 54, 20, 18, '2022-07-12 07:30:00', '1', '2022-07-12 14:23:59', '2022-07-12 15:27:41'),
(6, 'L13UNMC4T19', '1330', '12', 57, 57, 20, 19, '2022-07-12 07:30:00', '1', '2022-07-12 14:24:02', '2022-07-12 15:27:44'),
(7, 'L13UNMC4T19', '1330', '13', 57, 57, 20, 19, '2022-07-12 07:30:00', '1', '2022-07-12 14:24:03', '2022-07-12 15:27:47'),
(8, 'L13UNMC4T19', '1330', '14', 51, 51, 20, 17, '2022-07-12 07:30:00', '1', '2022-07-12 14:24:06', '2022-07-12 15:27:48'),
(9, 'L03UNMC4T13', '0305', '11', 78, 78, 30, 26, '2022-07-12 07:30:00', '1', '2022-07-12 16:23:26', '2022-07-12 16:23:26'),
(10, 'L03UNMC4T13', '0305', '12', 78, 78, 30, 26, '2022-07-12 07:30:00', '1', '2022-07-12 16:23:42', '2022-07-12 16:23:42'),
(11, 'L03UNMC4T13', '0305', '13', 72, 72, 30, 24, '2022-07-12 07:30:00', '1', '2022-07-12 16:23:49', '2022-07-12 16:23:49'),
(12, 'L03UNMC4T13', '0306', '11', 81, 81, 30, 27, '2022-07-12 07:30:00', '1', '2022-07-12 16:24:07', '2022-07-12 16:24:07'),
(13, 'L03UNMC4T13', '0306', '12', 84, 84, 30, 28, '2022-07-12 07:30:00', '1', '2022-07-12 16:24:13', '2022-07-12 16:24:13'),
(14, 'L03UNMC4T13', '0306', '13', 72, 72, 30, 24, '2022-07-12 07:30:00', '1', '2022-07-12 16:24:21', '2022-07-12 16:24:21'),
(15, 'L03UNMC4T13', '0307', '11', 81, 81, 30, 27, '2022-07-12 07:30:00', '1', '2022-07-12 16:24:32', '2022-07-12 16:24:32'),
(16, 'L03UNMC4T13', '0307', '12', 84, 84, 30, 28, '2022-07-12 07:30:00', '1', '2022-07-12 16:24:36', '2022-07-12 16:24:36'),
(17, 'L03UNMC4T13', '0307', '13', 78, 78, 30, 26, '2022-07-12 07:30:00', '1', '2022-07-12 16:24:40', '2022-07-12 16:24:40'),
(18, 'L03UNMC4T13', '0305', '14', 78, 78, 30, 26, '2022-07-12 07:30:00', '1', '2022-07-12 16:25:15', '2022-07-12 16:25:15'),
(19, 'L03UNMC4T13', '0305', '15', 75, 75, 30, 25, '2022-07-12 07:30:00', '1', '2022-07-12 16:25:21', '2022-07-12 16:25:21'),
(20, 'L03UNMC4T13', '0306', '14', 84, 84, 30, 28, '2022-07-12 07:30:00', '1', '2022-07-12 16:25:31', '2022-07-12 16:25:31'),
(21, 'L03UNMC4T13', '0306', '15', 78, 78, 30, 26, '2022-07-12 07:30:00', '1', '2022-07-12 16:25:43', '2022-07-12 16:25:43'),
(22, 'L03UNMC4T13', '0307', '14', 72, 72, 30, 24, '2022-07-12 07:30:00', '1', '2022-07-12 16:25:58', '2022-07-12 16:25:58'),
(23, 'L03UNMC4T13', '0307', '15', 78, 78, 30, 26, '2022-07-12 07:30:00', '1', '2022-07-12 16:26:03', '2022-07-12 16:26:03'),
(24, 'L06UNMC4T15', '0614', '11', 39, 39, 15, 13, '2022-07-12 07:30:00', '1', '2022-07-12 16:56:48', '2022-07-12 16:56:48'),
(25, 'L06UNMC4T15', '0614', '12', 45, 45, 15, 15, '2022-07-12 07:30:00', '1', '2022-07-12 16:56:51', '2022-07-12 16:56:51'),
(26, 'L06UNMC4T15', '0614', '13', 39, 39, 15, 13, '2022-07-12 07:30:00', '1', '2022-07-12 16:56:55', '2022-07-12 16:56:55'),
(27, 'L06UNMC4T15', '0614', '14', 42, 42, 15, 14, '2022-07-12 07:30:00', '1', '2022-07-12 16:56:58', '2022-07-12 16:56:58'),
(28, 'L06UNMC4T15', '0614', '15', 42, 42, 15, 14, '2022-07-12 07:30:00', '1', '2022-07-12 16:57:01', '2022-07-12 16:57:01'),
(29, 'L06UNMC4T15', '0614', '16', 42, 42, 15, 14, '2022-07-12 07:30:00', '1', '2022-07-12 16:57:05', '2022-07-12 16:57:05'),
(30, 'L04UNMC4T14', '0408', '11', 126, 126, 48, 42, '2022-07-12 07:30:00', '1', '2022-07-12 16:57:08', '2022-07-12 16:57:08'),
(31, 'L04UNMC4T14', '0408', '12', 120, 120, 48, 40, '2022-07-12 07:30:00', '1', '2022-07-12 16:57:13', '2022-07-12 16:57:13'),
(32, 'L04UNMC4T14', '0408', '13', 132, 132, 48, 44, '2022-07-12 07:30:00', '1', '2022-07-12 16:57:17', '2022-07-12 17:33:42'),
(33, 'L04UNMC4T14', '0408', '14', 132, 132, 48, 44, '2022-07-12 07:30:00', '1', '2022-07-12 16:57:24', '2022-07-12 16:57:24'),
(34, 'L04UNMC4T14', '0408', '15', 120, 120, 48, 40, '2022-07-12 07:30:00', '1', '2022-07-12 16:57:28', '2022-07-12 16:57:28'),
(35, 'L04UNMC4T14', '0409', '11', 39, 39, 15, 13, '2022-07-12 07:30:00', '1', '2022-07-12 16:57:33', '2022-07-12 16:57:33'),
(36, 'L04UNMC4T14', '0409', '12', 36, 36, 15, 12, '2022-07-12 07:30:00', '1', '2022-07-12 16:57:35', '2022-07-12 16:57:35'),
(37, 'L04UNMC4T14', '0409', '13', 36, 36, 15, 12, '2022-07-12 07:30:00', '1', '2022-07-12 16:57:36', '2022-07-12 16:57:36'),
(38, 'L04UNMC4T14', '0409', '14', 42, 42, 15, 14, '2022-07-12 07:30:00', '1', '2022-07-12 16:57:42', '2022-07-12 16:57:42'),
(39, 'L04UNMC4T14', '0409', '15', 42, 42, 15, 14, '2022-07-12 07:30:00', '1', '2022-07-12 16:57:44', '2022-07-12 16:57:44'),
(40, 'L04UNMC4T14', '0410', '11', 45, 45, 20, 15, '2022-07-12 07:30:00', '1', '2022-07-12 16:57:47', '2022-07-12 16:57:47'),
(41, 'L04UNMC4T14', '0410', '12', 51, 51, 20, 17, '2022-07-12 07:30:00', '1', '2022-07-12 16:57:49', '2022-07-12 16:57:49'),
(42, 'L04UNMC4T14', '0410', '13', 51, 51, 20, 17, '2022-07-12 07:30:00', '1', '2022-07-12 16:57:51', '2022-07-12 16:57:51'),
(43, 'L04UNMC4T14', '0410', '14', 54, 54, 20, 18, '2022-07-12 07:30:00', '1', '2022-07-12 16:57:55', '2022-07-12 16:57:55'),
(44, 'L04UNMC4T14', '0410', '15', 57, 57, 20, 19, '2022-07-12 07:30:00', '1', '2022-07-12 16:57:57', '2022-07-12 16:57:57'),
(45, 'L04UNMC4T14', '0411', '11', 93, 93, 35, 31, '2022-07-12 07:30:00', '1', '2022-07-12 16:58:02', '2022-07-12 16:58:02'),
(46, 'L04UNMC4T14', '0411', '12', 93, 93, 35, 31, '2022-07-12 07:30:00', '1', '2022-07-12 16:58:05', '2022-07-12 16:58:05'),
(47, 'L04UNMC4T14', '0411', '13', 102, 102, 35, 34, '2022-07-12 07:30:00', '1', '2022-07-12 16:58:09', '2022-07-12 16:58:09'),
(48, 'L04UNMC4T14', '0411', '14', 87, 87, 35, 29, '2022-07-12 07:30:00', '1', '2022-07-12 16:58:22', '2022-07-12 16:58:22'),
(49, 'L04UNMC4T14', '0411', '15', 105, 105, 35, 35, '2022-07-12 07:30:00', '1', '2022-07-12 16:58:26', '2022-07-12 16:58:26'),
(50, 'L06UNMC4T15', '0613', '11', 45, 45, 15, 15, '2022-07-12 07:30:00', '1', '2022-07-12 16:58:28', '2022-07-12 16:58:28'),
(51, 'L06UNMC4T15', '0613', '12', 45, 45, 15, 15, '2022-07-12 07:30:00', '1', '2022-07-12 16:58:31', '2022-07-12 16:58:31'),
(52, 'L06UNMC4T15', '0613', '13', 39, 39, 15, 13, '2022-07-12 07:30:00', '1', '2022-07-12 16:58:33', '2022-07-12 16:58:33'),
(53, 'L06UNMC4T15', '0613', '14', 45, 45, 15, 15, '2022-07-12 07:30:00', '1', '2022-07-12 16:58:36', '2022-07-12 16:58:36'),
(54, 'L06UNMC4T15', '0613', '15', 42, 42, 15, 14, '2022-07-12 07:30:00', '1', '2022-07-12 16:58:38', '2022-07-12 16:58:38'),
(55, 'L06UNMC4T15', '0613', '16', 39, 39, 15, 13, '2022-07-12 07:30:00', '1', '2022-07-12 16:58:41', '2022-07-12 16:58:41'),
(56, 'L04UNMC4T14', '0408', '16', 138, 138, 48, 46, '2022-07-12 07:30:00', '1', '2022-07-12 16:58:58', '2022-07-12 16:58:58'),
(57, 'L06UNMC4T15', '0512', '11', 54, 54, 20, 18, '2022-07-12 07:30:00', '1', '2022-07-12 16:59:54', '2022-07-12 16:59:54'),
(58, 'L06UNMC4T15', '0512', '12', 54, 54, 20, 18, '2022-07-12 07:30:00', '1', '2022-07-12 16:59:56', '2022-07-12 16:59:56'),
(59, 'L06UNMC4T15', '0512', '13', 60, 60, 20, 20, '2022-07-12 07:30:00', '1', '2022-07-12 17:00:00', '2022-07-12 17:00:00'),
(60, 'L06UNMC4T15', '0512', '14', 51, 51, 20, 17, '2022-07-12 07:30:00', '1', '2022-07-12 17:00:10', '2022-07-12 17:00:10'),
(61, 'L06UNMC4T15', '0512', '15', 54, 54, 20, 18, '2022-07-12 07:30:00', '1', '2022-07-12 17:00:14', '2022-07-12 17:00:14'),
(62, 'L06UNMC4T15', '0512', '16', 60, 60, 20, 20, '2022-07-12 07:30:00', '1', '2022-07-12 17:05:48', '2022-07-12 17:10:45'),
(63, 'L01UNMC4T11', '0101', '11', 57, 57, 20, 19, '2022-07-12 07:30:00', '1', '2022-07-12 17:06:38', '2022-07-12 17:16:37'),
(64, 'L01UNMC4T11', '0101', '12', 48, 48, 20, 16, '2022-07-12 07:30:00', '1', '2022-07-12 17:06:44', '2022-07-12 17:16:40'),
(65, 'L01UNMC4T11', '0101', '13', 60, 60, 20, 20, '2022-07-12 07:30:00', '1', '2022-07-12 17:06:48', '2022-07-12 17:16:43'),
(66, 'L01UNMC4T11', '0101', '14', 48, 48, 20, 16, '2022-07-12 07:30:00', '1', '2022-07-12 17:06:55', '2022-07-12 17:15:11'),
(67, 'L08UNMC4T17', '0819', '11', 72, 72, 25, 24, '2022-07-12 07:30:00', '1', '2022-07-12 17:09:11', '2022-07-12 18:08:23'),
(68, 'L08UNMC4T17', '0819', '12', 66, 66, 25, 22, '2022-07-12 07:30:00', '1', '2022-07-12 17:09:17', '2022-07-12 18:08:32'),
(69, 'L08UNMC4T17', '0819', '13', 66, 66, 25, 22, '2022-07-12 07:30:00', '1', '2022-07-12 17:09:20', '2022-07-12 18:08:34'),
(70, 'L08UNMC4T17', '0819', '14', 69, 69, 25, 23, '2022-07-12 07:30:00', '1', '2022-07-12 17:09:26', '2022-07-12 18:08:37'),
(71, 'L08UNMC4T17', '0819', '15', 72, 72, 25, 24, '2022-07-12 07:30:00', '1', '2022-07-12 17:09:29', '2022-07-12 18:08:39'),
(72, 'L08UNMC4T17', '0819', '16', 66, 66, 25, 22, '2022-07-12 07:30:00', '1', '2022-07-12 17:09:31', '2022-07-12 18:08:41'),
(73, 'L04UNMC4T14', '0409', '16', 42, 42, 15, 14, '2022-07-12 07:30:00', '1', '2022-07-12 17:10:16', '2022-07-12 17:10:16'),
(74, 'L04UNMC4T14', '0410', '16', 57, 57, 20, 19, '2022-07-12 07:30:00', '1', '2022-07-12 17:10:33', '2022-07-12 17:10:33'),
(75, 'L04UNMC4T14', '0411', '16', 93, 93, 35, 31, '2022-07-12 07:30:00', '1', '2022-07-12 17:10:52', '2022-07-12 17:10:52'),
(76, 'L10UNMC4T18', '1026', '11', 102, 102, 36, 34, '2022-07-12 07:30:00', '1', '2022-07-12 17:11:19', '2022-07-12 17:11:19'),
(77, 'L10UNMC4T18', '1026', '12', 99, 99, 36, 33, '2022-07-12 07:30:00', '1', '2022-07-12 17:11:27', '2022-07-12 17:11:27'),
(78, 'L10UNMC4T18', '1026', '13', 96, 96, 36, 32, '2022-07-12 07:30:00', '1', '2022-07-12 17:11:34', '2022-07-12 17:11:34'),
(79, 'L10UNMC4T18', '1026', '14', 105, 105, 36, 35, '2022-07-12 07:30:00', '1', '2022-07-12 17:11:40', '2022-07-12 17:11:40'),
(80, 'L10UNMC4T18', '1026', '15', 96, 96, 36, 32, '2022-07-12 07:30:00', '1', '2022-07-12 17:11:44', '2022-07-12 17:11:44'),
(81, 'L10UNMC4T18', '1026', '16', 108, 108, 36, 36, '2022-07-12 07:30:00', '1', '2022-07-12 17:11:49', '2022-07-12 17:11:49'),
(82, 'L03UNMC4T13', '0307', '16', 87, 87, 30, 29, '2022-07-12 07:30:00', '1', '2022-07-12 17:14:49', '2022-07-12 17:29:14'),
(83, 'L03UNMC4T13', '0305', '16', 84, 84, 30, 28, '2022-07-12 07:30:00', '1', '2022-07-12 17:15:06', '2022-07-12 17:15:06'),
(84, 'L01UNMC4T11', '0101', '15', 57, 57, 20, 19, '2022-07-12 07:30:00', '1', '2022-07-12 17:16:50', '2022-07-12 17:16:50'),
(85, 'L01UNMC4T11', '0101', '16', 57, 57, 20, 19, '2022-07-12 07:30:00', '1', '2022-07-12 17:16:55', '2022-07-12 17:16:55'),
(86, 'L01UNMC4T11', '0102', '11', 54, 54, 20, 18, '2022-07-12 07:30:00', '1', '2022-07-12 17:17:06', '2022-07-12 17:17:06'),
(87, 'L01UNMC4T11', '0102', '12', 51, 51, 20, 17, '2022-07-12 07:30:00', '1', '2022-07-12 17:17:11', '2022-07-12 17:17:11'),
(88, 'L01UNMC4T11', '0102', '13', 48, 48, 20, 16, '2022-07-12 07:30:00', '1', '2022-07-12 17:17:14', '2022-07-12 17:17:14'),
(89, 'L01UNMC4T11', '0102', '16', 60, 60, 20, 20, '2022-07-12 07:30:00', '1', '2022-07-12 17:17:19', '2022-07-12 17:17:19'),
(90, 'L01UNMC4T11', '0102', '15', 57, 57, 20, 19, '2022-07-12 07:30:00', '1', '2022-07-12 17:17:22', '2022-07-12 17:17:22'),
(91, 'L01UNMC4T11', '0102', '14', 48, 48, 20, 16, '2022-07-12 07:30:00', '1', '2022-07-12 17:17:29', '2022-07-12 17:17:29'),
(92, 'L01UNMC4T11', '0203', '11', 54, 54, 20, 18, '2022-07-12 07:30:00', '1', '2022-07-12 17:17:33', '2022-07-12 17:17:33'),
(93, 'L01UNMC4T11', '0203', '12', 54, 54, 20, 18, '2022-07-12 07:30:00', '1', '2022-07-12 17:17:43', '2022-07-12 17:17:43'),
(94, 'L01UNMC4T11', '0203', '13', 51, 51, 20, 17, '2022-07-12 07:30:00', '1', '2022-07-12 17:17:48', '2022-07-12 17:17:48'),
(95, 'L01UNMC4T11', '0203', '16', 48, 48, 20, 16, '2022-07-12 07:30:00', '1', '2022-07-12 17:17:55', '2022-07-12 17:17:55'),
(96, 'L01UNMC4T11', '0203', '15', 57, 57, 20, 19, '2022-07-12 07:30:00', '1', '2022-07-12 17:17:59', '2022-07-12 17:17:59'),
(97, 'L01UNMC4T11', '0203', '14', 60, 60, 20, 20, '2022-07-12 07:30:00', '1', '2022-07-12 17:18:05', '2022-07-12 17:18:05'),
(98, 'L01UNMC4T11', '0204', '11', 48, 48, 20, 16, '2022-07-12 07:30:00', '1', '2022-07-12 17:18:12', '2022-07-12 17:18:12'),
(99, 'L01UNMC4T11', '0204', '12', 57, 57, 20, 19, '2022-07-12 07:30:00', '1', '2022-07-12 17:18:15', '2022-07-12 17:18:15'),
(100, 'L01UNMC4T11', '0204', '13', 51, 51, 20, 17, '2022-07-12 07:30:00', '1', '2022-07-12 17:18:33', '2022-07-12 17:18:33'),
(101, 'L03UNMC4T13', '0306', '16', 87, 87, 30, 29, '2022-07-12 07:30:00', '1', '2022-07-12 17:18:46', '2022-07-12 17:18:46'),
(102, 'L01UNMC4T11', '0204', '16', 57, 57, 20, 19, '2022-07-12 07:30:00', '1', '2022-07-12 17:18:54', '2022-07-12 17:18:54'),
(103, 'L01UNMC4T11', '0204', '15', 57, 57, 20, 19, '2022-07-12 07:30:00', '1', '2022-07-12 17:18:58', '2022-07-12 17:18:58'),
(104, 'L01UNMC4T11', '0204', '14', 57, 57, 20, 19, '2022-07-12 07:30:00', '1', '2022-07-12 17:19:05', '2022-07-12 17:19:05'),
(105, 'L07UNMC4T16', '0715', '11', 42, 42, 15, 14, '2022-07-12 07:30:00', '1', '2022-07-12 17:21:05', '2022-07-12 17:21:05'),
(106, 'L07UNMC4T16', '0715', '12', 45, 45, 15, 15, '2022-07-12 07:30:00', '1', '2022-07-12 17:21:10', '2022-07-12 17:21:10'),
(107, 'L07UNMC4T16', '0715', '13', 42, 42, 15, 14, '2022-07-12 07:30:00', '1', '2022-07-12 17:21:14', '2022-07-12 17:21:14'),
(108, 'L07UNMC4T16', '0715', '14', 42, 42, 15, 14, '2022-07-12 07:30:00', '1', '2022-07-12 17:21:18', '2022-07-12 17:21:18'),
(109, 'L07UNMC4T16', '0715', '15', 45, 45, 15, 15, '2022-07-12 07:30:00', '1', '2022-07-12 17:21:20', '2022-07-12 17:21:20'),
(110, 'L07UNMC4T16', '0715', '16', 45, 45, 15, 15, '2022-07-12 07:30:00', '1', '2022-07-12 17:21:24', '2022-07-12 17:21:24'),
(111, 'L07UNMC4T16', '0716', '11', 30, 30, 10, 10, '2022-07-12 07:30:00', '1', '2022-07-12 17:21:28', '2022-07-12 17:21:28'),
(112, 'L07UNMC4T16', '0716', '12', 30, 30, 10, 10, '2022-07-12 07:30:00', '1', '2022-07-12 17:21:31', '2022-07-12 17:21:31'),
(113, 'L07UNMC4T16', '0716', '13', 30, 30, 10, 10, '2022-07-12 07:30:00', '1', '2022-07-12 17:21:33', '2022-07-12 17:21:33'),
(114, 'L07UNMC4T16', '0716', '14', 27, 27, 10, 9, '2022-07-12 07:30:00', '1', '2022-07-12 17:21:36', '2022-07-12 17:21:36'),
(115, 'L07UNMC4T16', '0716', '15', 30, 30, 10, 10, '2022-07-12 07:30:00', '1', '2022-07-12 17:21:39', '2022-07-12 17:21:39'),
(116, 'L07UNMC4T16', '0716', '16', 27, 27, 10, 9, '2022-07-12 07:30:00', '1', '2022-07-12 17:21:42', '2022-07-12 17:21:42'),
(117, 'L07UNMC4T16', '0717', '11', 27, 27, 10, 9, '2022-07-12 07:30:00', '1', '2022-07-12 17:21:50', '2022-07-12 17:21:50'),
(118, 'L07UNMC4T16', '0717', '12', 27, 27, 10, 9, '2022-07-12 07:30:00', '1', '2022-07-12 17:21:53', '2022-07-12 17:21:53'),
(119, 'L07UNMC4T16', '0717', '13', 30, 30, 10, 10, '2022-07-12 07:30:00', '1', '2022-07-12 17:21:55', '2022-07-12 17:21:55'),
(120, 'L07UNMC4T16', '0717', '14', 30, 30, 10, 10, '2022-07-12 07:30:00', '1', '2022-07-12 17:21:58', '2022-07-12 17:21:58'),
(121, 'L02UNMC4T12', '0922', '11', 39, 39, 15, 13, '2022-07-12 07:30:00', '1', '2022-07-12 17:22:04', '2022-07-12 17:22:04'),
(122, 'L02UNMC4T12', '0922', '12', 45, 45, 15, 15, '2022-07-12 07:30:00', '1', '2022-07-12 17:22:06', '2022-07-12 17:22:06'),
(123, 'L02UNMC4T12', '0922', '13', 45, 45, 15, 15, '2022-07-12 07:30:00', '1', '2022-07-12 17:22:09', '2022-07-12 17:22:09'),
(124, 'L07UNMC4T16', '0717', '15', 30, 30, 10, 10, '2022-07-12 07:30:00', '1', '2022-07-12 17:22:11', '2022-07-12 17:22:11'),
(125, 'L02UNMC4T12', '0922', '14', 39, 39, 15, 13, '2022-07-12 07:30:00', '1', '2022-07-12 17:22:14', '2022-07-12 17:22:14'),
(126, 'L02UNMC4T12', '0922', '15', 42, 42, 15, 14, '2022-07-12 07:30:00', '1', '2022-07-12 17:22:17', '2022-07-12 17:22:17'),
(127, 'L02UNMC4T12', '0922', '16', 42, 42, 15, 14, '2022-07-12 07:30:00', '1', '2022-07-12 17:22:19', '2022-07-12 17:22:19'),
(128, 'L07UNMC4T16', '0717', '16', 27, 27, 10, 9, '2022-07-12 07:30:00', '1', '2022-07-12 17:22:23', '2022-07-12 17:22:23'),
(129, 'L02UNMC4T12', '0923', '11', 24, 24, 10, 8, '2022-07-12 07:30:00', '1', '2022-07-12 17:22:24', '2022-07-12 17:22:24'),
(130, 'L07UNMC4T16', '0718', '11', 27, 27, 10, 9, '2022-07-12 07:30:00', '1', '2022-07-12 17:22:27', '2022-07-12 17:22:27'),
(131, 'L02UNMC4T12', '0923', '12', 30, 30, 10, 10, '2022-07-12 07:30:00', '1', '2022-07-12 17:22:27', '2022-07-12 17:22:27'),
(132, 'L07UNMC4T16', '0718', '12', 27, 27, 10, 9, '2022-07-12 07:30:00', '1', '2022-07-12 17:22:29', '2022-07-12 17:22:29'),
(133, 'L02UNMC4T12', '0923', '13', 27, 27, 10, 9, '2022-07-12 07:30:00', '1', '2022-07-12 17:22:29', '2022-07-12 17:22:29'),
(134, 'L07UNMC4T16', '0718', '13', 30, 30, 10, 10, '2022-07-12 07:30:00', '1', '2022-07-12 17:22:31', '2022-07-12 17:22:31'),
(135, 'L02UNMC4T12', '0923', '14', 30, 30, 10, 10, '2022-07-12 07:30:00', '1', '2022-07-12 17:22:33', '2022-07-12 17:22:33'),
(136, 'L02UNMC4T12', '0923', '15', 30, 30, 10, 10, '2022-07-12 07:30:00', '1', '2022-07-12 17:22:35', '2022-07-12 17:22:35'),
(137, 'L07UNMC4T16', '0718', '14', 27, 27, 10, 9, '2022-07-12 07:30:00', '1', '2022-07-12 17:22:35', '2022-07-12 17:22:35'),
(138, 'L02UNMC4T12', '0923', '16', 30, 30, 10, 10, '2022-07-12 07:30:00', '1', '2022-07-12 17:22:38', '2022-07-12 17:22:38'),
(139, 'L07UNMC4T16', '0718', '15', 27, 27, 10, 9, '2022-07-12 07:30:00', '1', '2022-07-12 17:22:38', '2022-07-12 17:22:38'),
(140, 'L07UNMC4T16', '0718', '16', 27, 27, 10, 9, '2022-07-12 07:30:00', '1', '2022-07-12 17:22:41', '2022-07-12 17:22:41'),
(141, 'L02UNMC4T12', '0924', '11', 48, 48, 18, 16, '2022-07-12 07:30:00', '1', '2022-07-12 17:22:42', '2022-07-12 17:22:42'),
(142, 'L02UNMC4T12', '0924', '12', 54, 54, 18, 18, '2022-07-12 07:30:00', '1', '2022-07-12 17:22:45', '2022-07-12 17:22:45'),
(143, 'L02UNMC4T12', '0924', '13', 51, 51, 18, 17, '2022-07-12 07:30:00', '1', '2022-07-12 17:22:48', '2022-07-12 17:22:48'),
(144, 'L02UNMC4T12', '0924', '14', 54, 54, 18, 18, '2022-07-12 07:30:00', '1', '2022-07-12 17:22:51', '2022-07-12 17:22:51'),
(145, 'L02UNMC4T12', '0924', '15', 51, 51, 18, 17, '2022-07-12 07:30:00', '1', '2022-07-12 17:22:54', '2022-07-12 17:22:54'),
(146, 'L02UNMC4T12', '0924', '16', 54, 54, 18, 18, '2022-07-12 07:30:00', '1', '2022-07-12 17:22:57', '2022-07-12 17:22:57'),
(147, 'L02UNMC4T12', '0925', '11', 51, 51, 18, 17, '2022-07-12 07:30:00', '1', '2022-07-12 17:23:03', '2022-07-12 17:23:03'),
(148, 'L02UNMC4T12', '0925', '12', 54, 54, 18, 18, '2022-07-12 07:30:00', '1', '2022-07-12 17:23:06', '2022-07-12 17:23:06'),
(149, 'L02UNMC4T12', '0925', '13', 42, 42, 18, 14, '2022-07-12 07:30:00', '1', '2022-07-12 17:23:09', '2022-07-12 17:23:09'),
(150, 'L02UNMC4T12', '0925', '14', 51, 51, 18, 17, '2022-07-12 07:30:00', '1', '2022-07-12 17:23:13', '2022-07-12 17:23:13'),
(151, 'L02UNMC4T12', '0925', '15', 51, 51, 18, 17, '2022-07-12 07:30:00', '1', '2022-07-12 17:23:17', '2022-07-12 17:23:17'),
(152, 'L02UNMC4T12', '0925', '16', 51, 51, 18, 17, '2022-07-12 07:30:00', '1', '2022-07-12 17:23:21', '2022-07-12 17:23:21'),
(153, 'L08UNMC4T17', '0820', '11', 39, 39, 15, 13, '2022-07-12 07:30:00', '1', '2022-07-12 18:08:46', '2022-07-12 18:08:46'),
(154, 'L08UNMC4T17', '0820', '12', 39, 39, 15, 13, '2022-07-12 07:30:00', '1', '2022-07-12 18:08:47', '2022-07-12 18:08:47'),
(155, 'L08UNMC4T17', '0820', '13', 45, 45, 15, 15, '2022-07-12 07:30:00', '1', '2022-07-12 18:08:49', '2022-07-12 18:08:49'),
(156, 'L08UNMC4T17', '0820', '14', 45, 45, 15, 15, '2022-07-12 07:30:00', '1', '2022-07-12 18:08:52', '2022-07-12 18:08:52'),
(157, 'L08UNMC4T17', '0820', '15', 42, 42, 15, 14, '2022-07-12 07:30:00', '1', '2022-07-12 18:08:55', '2022-07-12 18:08:55'),
(158, 'L08UNMC4T17', '0820', '16', 45, 45, 15, 15, '2022-07-12 07:30:00', '1', '2022-07-12 18:08:58', '2022-07-12 18:08:58'),
(159, 'L08UNMC4T17', '0821', '11', 48, 48, 20, 16, '2022-07-12 07:30:00', '1', '2022-07-12 18:09:06', '2022-07-12 18:09:06'),
(160, 'L08UNMC4T17', '0821', '12', 60, 60, 20, 20, '2022-07-12 07:30:00', '1', '2022-07-12 18:09:08', '2022-07-12 18:09:08'),
(161, 'L08UNMC4T17', '0821', '13', 57, 57, 20, 19, '2022-07-12 07:30:00', '1', '2022-07-12 18:09:12', '2022-07-12 18:09:28'),
(162, 'L08UNMC4T17', '0821', '14', 60, 60, 20, 20, '2022-07-12 07:30:00', '1', '2022-07-12 18:09:14', '2022-07-12 18:09:21'),
(163, 'L08UNMC4T17', '0821', '15', 60, 60, 20, 20, '2022-07-12 07:30:00', '1', '2022-07-12 18:09:23', '2022-07-12 18:09:23'),
(164, 'L08UNMC4T17', '0821', '16', 54, 54, 20, 18, '2022-07-12 07:30:00', '1', '2022-07-12 18:09:25', '2022-07-12 18:09:25'),
(165, 'L03UNMC4T13', '0305', '24', 87, 87, 30, 29, '2022-07-13 07:30:00', '1', '2022-07-13 16:50:06', '2022-07-13 16:50:06'),
(166, 'L03UNMC4T13', '0305', '21', 75, 75, 30, 25, '2022-07-13 07:30:00', '1', '2022-07-13 16:50:26', '2022-07-13 16:50:26'),
(167, 'L03UNMC4T13', '0305', '22', 84, 84, 30, 28, '2022-07-13 07:30:00', '1', '2022-07-13 16:50:31', '2022-07-13 16:50:31'),
(168, 'L03UNMC4T13', '0305', '23', 90, 90, 30, 30, '2022-07-13 07:30:00', '1', '2022-07-13 16:50:35', '2022-07-13 16:50:35'),
(169, 'L03UNMC4T13', '0305', '25', 87, 87, 30, 29, '2022-07-13 07:30:00', '1', '2022-07-13 16:50:53', '2022-07-13 16:50:53'),
(170, 'L03UNMC4T13', '0306', '21', 84, 84, 30, 28, '2022-07-13 07:30:00', '1', '2022-07-13 16:51:00', '2022-07-13 16:51:00'),
(171, 'L03UNMC4T13', '0306', '22', 81, 81, 30, 27, '2022-07-13 07:30:00', '1', '2022-07-13 16:51:05', '2022-07-13 16:51:05'),
(172, 'L03UNMC4T13', '0306', '23', 81, 81, 30, 27, '2022-07-13 07:30:00', '1', '2022-07-13 16:51:20', '2022-07-13 16:51:20'),
(173, 'L03UNMC4T13', '0306', '25', 87, 87, 30, 29, '2022-07-13 07:30:00', '1', '2022-07-13 16:51:26', '2022-07-13 17:13:10'),
(174, 'L03UNMC4T13', '0306', '24', 78, 78, 30, 26, '2022-07-13 07:30:00', '1', '2022-07-13 16:51:29', '2022-07-13 16:51:29'),
(175, 'L03UNMC4T13', '0307', '21', 90, 90, 30, 30, '2022-07-13 07:30:00', '1', '2022-07-13 16:51:34', '2022-07-13 16:51:34'),
(176, 'L03UNMC4T13', '0307', '22', 87, 87, 30, 29, '2022-07-13 07:30:00', '1', '2022-07-13 16:51:40', '2022-07-13 16:51:40'),
(177, 'L03UNMC4T13', '0307', '23', 90, 90, 30, 30, '2022-07-13 07:30:00', '1', '2022-07-13 16:51:45', '2022-07-13 16:51:45'),
(178, 'L03UNMC4T13', '0307', '24', 90, 90, 30, 30, '2022-07-13 07:30:00', '1', '2022-07-13 16:51:53', '2022-07-13 16:51:53'),
(179, 'L03UNMC4T13', '0307', '25', 90, 90, 30, 30, '2022-07-13 07:30:00', '1', '2022-07-13 16:52:02', '2022-07-13 16:52:02'),
(180, 'L04UNMC4T14', '0408', '21', 138, 138, 48, 46, '2022-07-13 07:30:00', '1', '2022-07-13 16:52:37', '2022-07-13 16:52:37'),
(181, 'L04UNMC4T14', '0408', '22', 141, 141, 48, 47, '2022-07-13 07:30:00', '1', '2022-07-13 16:52:42', '2022-07-13 16:52:42'),
(182, 'L04UNMC4T14', '0408', '23', 138, 138, 48, 46, '2022-07-13 07:30:00', '1', '2022-07-13 16:52:50', '2022-07-13 16:52:50'),
(183, 'L04UNMC4T14', '0409', '21', 45, 45, 15, 15, '2022-07-13 07:30:00', '1', '2022-07-13 16:53:05', '2022-07-13 16:53:05'),
(184, 'L04UNMC4T14', '0409', '22', 45, 45, 15, 15, '2022-07-13 07:30:00', '1', '2022-07-13 16:53:08', '2022-07-13 16:53:08'),
(185, 'L04UNMC4T14', '0409', '23', 42, 42, 15, 14, '2022-07-13 07:30:00', '1', '2022-07-13 16:53:10', '2022-07-13 16:53:10'),
(186, 'L04UNMC4T14', '0409', '26', 36, 36, 15, 12, '2022-07-13 07:30:00', '1', '2022-07-13 16:53:21', '2022-07-13 16:53:21'),
(187, 'L04UNMC4T14', '0409', '25', 39, 39, 15, 13, '2022-07-13 07:30:00', '1', '2022-07-13 16:53:24', '2022-07-13 16:53:24'),
(188, 'L04UNMC4T14', '0409', '24', 45, 45, 15, 15, '2022-07-13 07:30:00', '1', '2022-07-13 16:53:27', '2022-07-13 16:53:27'),
(189, 'L04UNMC4T14', '0408', '24', 123, 123, 48, 41, '2022-07-13 07:30:00', '1', '2022-07-13 16:54:08', '2022-07-13 16:54:08'),
(190, 'L04UNMC4T14', '0408', '25', 138, 138, 48, 46, '2022-07-13 07:30:00', '1', '2022-07-13 16:54:12', '2022-07-13 16:54:12'),
(191, 'L04UNMC4T14', '0410', '21', 57, 57, 20, 19, '2022-07-13 07:30:00', '1', '2022-07-13 16:54:27', '2022-07-13 16:54:27'),
(192, 'L04UNMC4T14', '0410', '22', 54, 54, 20, 18, '2022-07-13 07:30:00', '1', '2022-07-13 16:54:30', '2022-07-13 16:54:30'),
(193, 'L04UNMC4T14', '0410', '23', 57, 57, 20, 19, '2022-07-13 07:30:00', '1', '2022-07-13 16:54:33', '2022-07-13 16:54:33'),
(194, 'L04UNMC4T14', '0410', '24', 57, 57, 20, 19, '2022-07-13 07:30:00', '1', '2022-07-13 16:54:37', '2022-07-13 16:54:37'),
(195, 'L04UNMC4T14', '0410', '25', 54, 54, 20, 18, '2022-07-13 07:30:00', '1', '2022-07-13 16:54:41', '2022-07-13 16:54:41'),
(196, 'L04UNMC4T14', '0411', '23', 99, 99, 35, 33, '2022-07-13 07:30:00', '1', '2022-07-13 16:55:05', '2022-07-13 16:55:05'),
(197, 'L04UNMC4T14', '0411', '22', 90, 90, 35, 30, '2022-07-13 07:30:00', '1', '2022-07-13 16:55:08', '2022-07-13 16:55:08'),
(198, 'L04UNMC4T14', '0411', '21', 102, 102, 35, 34, '2022-07-13 07:30:00', '1', '2022-07-13 16:55:10', '2022-07-13 16:55:10'),
(199, 'L04UNMC4T14', '0411', '24', 99, 99, 35, 33, '2022-07-13 07:30:00', '1', '2022-07-13 16:55:14', '2022-07-13 16:55:14'),
(200, 'L04UNMC4T14', '0411', '25', 93, 93, 35, 31, '2022-07-13 07:30:00', '1', '2022-07-13 16:55:17', '2022-07-13 16:55:17'),
(201, 'L04UNMC4T14', '0408', '26', 135, 135, 48, 45, '2022-07-13 07:30:00', '1', '2022-07-13 17:00:05', '2022-07-13 17:00:05'),
(202, 'L06UNMC4T15', '0512', '21', 54, 54, 20, 18, '2022-07-13 07:30:00', '1', '2022-07-13 17:00:32', '2022-07-13 17:00:32'),
(203, 'L06UNMC4T15', '0512', '22', 60, 60, 20, 20, '2022-07-13 07:30:00', '1', '2022-07-13 17:00:37', '2022-07-13 17:00:37'),
(204, 'L06UNMC4T15', '0512', '23', 51, 51, 20, 17, '2022-07-13 07:30:00', '1', '2022-07-13 17:01:30', '2022-07-13 17:01:30'),
(205, 'L06UNMC4T15', '0512', '24', 57, 57, 20, 19, '2022-07-13 07:30:00', '1', '2022-07-13 17:01:34', '2022-07-13 17:01:55'),
(206, 'L06UNMC4T15', '0512', '25', 60, 60, 20, 20, '2022-07-13 07:30:00', '1', '2022-07-13 17:01:36', '2022-07-13 17:01:36'),
(207, 'L06UNMC4T15', '0613', '21', 36, 36, 15, 12, '2022-07-13 07:30:00', '1', '2022-07-13 17:01:44', '2022-07-13 17:01:44'),
(208, 'L06UNMC4T15', '0613', '22', 42, 42, 15, 14, '2022-07-13 07:30:00', '1', '2022-07-13 17:01:46', '2022-07-13 17:01:46'),
(209, 'L06UNMC4T15', '0613', '23', 42, 42, 15, 14, '2022-07-13 07:30:00', '1', '2022-07-13 17:01:49', '2022-07-13 17:01:49'),
(210, 'L04UNMC4T14', '0411', '26', 102, 102, 35, 34, '2022-07-13 07:30:00', '1', '2022-07-13 17:01:50', '2022-07-13 17:01:50'),
(211, 'L06UNMC4T15', '0613', '24', 42, 42, 15, 14, '2022-07-13 07:30:00', '1', '2022-07-13 17:02:04', '2022-07-13 17:02:04'),
(212, 'L06UNMC4T15', '0613', '25', 39, 39, 15, 13, '2022-07-13 07:30:00', '1', '2022-07-13 17:02:07', '2022-07-13 17:02:07'),
(213, 'L06UNMC4T15', '0614', '21', 42, 42, 15, 14, '2022-07-13 07:30:00', '1', '2022-07-13 17:02:14', '2022-07-13 17:02:14'),
(214, 'L06UNMC4T15', '0614', '22', 42, 42, 15, 14, '2022-07-13 07:30:00', '1', '2022-07-13 17:02:17', '2022-07-13 17:02:17'),
(215, 'L06UNMC4T15', '0614', '23', 42, 42, 15, 14, '2022-07-13 07:30:00', '1', '2022-07-13 17:02:21', '2022-07-13 17:02:21'),
(216, 'L06UNMC4T15', '0614', '24', 42, 42, 15, 14, '2022-07-13 07:30:00', '1', '2022-07-13 17:02:30', '2022-07-13 17:07:29'),
(217, 'L06UNMC4T15', '0614', '25', 45, 45, 15, 15, '2022-07-13 07:30:00', '1', '2022-07-13 17:02:34', '2022-07-13 17:07:25'),
(218, 'L03UNMC4T13', '0306', '26', 90, 90, 30, 30, '2022-07-13 07:30:00', '1', '2022-07-13 17:04:50', '2022-07-13 17:04:50'),
(219, 'L03UNMC4T13', '0307', '26', 87, 87, 30, 29, '2022-07-13 07:30:00', '1', '2022-07-13 17:05:15', '2022-07-13 17:05:26'),
(220, 'L02UNMC4T12', '0924', '21', 54, 54, 18, 18, '2022-07-13 07:30:00', '1', '2022-07-13 17:05:23', '2022-07-13 17:05:23'),
(221, 'L02UNMC4T12', '0924', '22', 54, 54, 18, 18, '2022-07-13 07:30:00', '1', '2022-07-13 17:05:29', '2022-07-13 17:05:29'),
(222, 'L02UNMC4T12', '0924', '23', 54, 54, 18, 18, '2022-07-13 07:30:00', '1', '2022-07-13 17:05:34', '2022-07-13 17:05:34'),
(223, 'L02UNMC4T12', '0924', '24', 54, 54, 18, 18, '2022-07-13 07:30:00', '1', '2022-07-13 17:05:40', '2022-07-13 17:05:40'),
(224, 'L02UNMC4T12', '0924', '25', 51, 51, 18, 17, '2022-07-13 07:30:00', '1', '2022-07-13 17:05:43', '2022-07-13 17:05:43'),
(225, 'L02UNMC4T12', '0924', '26', 54, 54, 18, 18, '2022-07-13 07:30:00', '1', '2022-07-13 17:05:47', '2022-07-13 17:05:47'),
(226, 'L06UNMC4T15', '0512', '26', 48, 48, 20, 16, '2022-07-13 07:30:00', '1', '2022-07-13 17:06:45', '2022-07-13 17:06:45'),
(227, 'L03UNMC4T13', '0305', '26', 87, 87, 30, 29, '2022-07-13 07:30:00', '1', '2022-07-13 17:06:46', '2022-07-13 17:17:04'),
(228, 'L02UNMC4T12', '0923', '21', 30, 30, 10, 10, '2022-07-13 07:30:00', '1', '2022-07-13 17:06:47', '2022-07-13 17:06:47'),
(229, 'L02UNMC4T12', '0923', '22', 30, 30, 10, 10, '2022-07-13 07:30:00', '1', '2022-07-13 17:06:51', '2022-07-13 17:06:51'),
(230, 'L02UNMC4T12', '0923', '23', 24, 24, 10, 8, '2022-07-13 07:30:00', '1', '2022-07-13 17:06:55', '2022-07-13 17:06:55'),
(231, 'L02UNMC4T12', '0923', '24', 30, 30, 10, 10, '2022-07-13 07:30:00', '1', '2022-07-13 17:06:59', '2022-07-13 17:06:59'),
(232, 'L02UNMC4T12', '0923', '25', 27, 27, 10, 9, '2022-07-13 07:30:00', '1', '2022-07-13 17:07:02', '2022-07-13 17:07:02'),
(233, 'L02UNMC4T12', '0923', '26', 27, 27, 10, 9, '2022-07-13 07:30:00', '1', '2022-07-13 17:07:05', '2022-07-13 17:07:05'),
(234, 'L06UNMC4T15', '0614', '26', 42, 42, 15, 14, '2022-07-13 07:30:00', '1', '2022-07-13 17:07:20', '2022-07-13 17:07:20'),
(235, 'L10UNMC4T18', '1026', '21', 102, 102, 36, 34, '2022-07-13 07:30:00', '1', '2022-07-13 17:07:23', '2022-07-13 17:07:23'),
(236, 'L10UNMC4T18', '1026', '22', 105, 105, 36, 35, '2022-07-13 07:30:00', '1', '2022-07-13 17:07:29', '2022-07-13 17:07:29'),
(237, 'L10UNMC4T18', '1026', '23', 105, 105, 36, 35, '2022-07-13 07:30:00', '1', '2022-07-13 17:07:34', '2022-07-13 17:07:34'),
(238, 'L10UNMC4T18', '1026', '24', 99, 99, 36, 33, '2022-07-13 07:30:00', '1', '2022-07-13 17:07:45', '2022-07-13 17:07:45'),
(239, 'L10UNMC4T18', '1026', '25', 102, 102, 36, 34, '2022-07-13 07:30:00', '1', '2022-07-13 17:07:50', '2022-07-13 17:07:50'),
(240, 'L10UNMC4T18', '1026', '26', 93, 93, 36, 31, '2022-07-13 07:30:00', '1', '2022-07-13 17:07:56', '2022-07-13 17:07:56'),
(241, 'L02UNMC4T12', '0922', '21', 42, 42, 15, 14, '2022-07-13 07:30:00', '1', '2022-07-13 17:07:57', '2022-07-13 17:07:57'),
(242, 'L02UNMC4T12', '0922', '22', 42, 42, 15, 14, '2022-07-13 07:30:00', '1', '2022-07-13 17:08:01', '2022-07-13 17:08:01'),
(243, 'L02UNMC4T12', '0922', '23', 42, 42, 15, 14, '2022-07-13 07:30:00', '1', '2022-07-13 17:08:04', '2022-07-13 17:08:04'),
(244, 'L02UNMC4T12', '0922', '24', 45, 45, 15, 15, '2022-07-13 07:30:00', '1', '2022-07-13 17:08:09', '2022-07-13 17:08:09'),
(245, 'L02UNMC4T12', '0922', '25', 42, 42, 15, 14, '2022-07-13 07:30:00', '1', '2022-07-13 17:08:12', '2022-07-13 17:08:12'),
(246, 'L02UNMC4T12', '0922', '26', 42, 42, 15, 14, '2022-07-13 07:30:00', '1', '2022-07-13 17:08:16', '2022-07-13 17:08:16'),
(247, 'L06UNMC4T15', '0613', '26', 42, 42, 15, 14, '2022-07-13 07:30:00', '1', '2022-07-13 17:08:17', '2022-07-13 17:08:17'),
(248, 'L02UNMC4T12', '0925', '21', 51, 51, 18, 17, '2022-07-13 07:30:00', '1', '2022-07-13 17:09:53', '2022-07-13 17:09:53'),
(249, 'L04UNMC4T14', '0410', '26', 57, 57, 20, 19, '2022-07-13 07:30:00', '1', '2022-07-13 17:09:56', '2022-07-13 17:09:56'),
(250, 'L02UNMC4T12', '0925', '22', 54, 54, 18, 18, '2022-07-13 07:30:00', '1', '2022-07-13 17:09:58', '2022-07-13 17:09:58'),
(251, 'L02UNMC4T12', '0925', '23', 54, 54, 18, 18, '2022-07-13 07:30:00', '1', '2022-07-13 17:10:01', '2022-07-13 17:10:01'),
(252, 'L02UNMC4T12', '0925', '24', 48, 48, 18, 16, '2022-07-13 07:30:00', '1', '2022-07-13 17:10:06', '2022-07-13 17:10:06'),
(253, 'L08UNMC4T17', '0819', '21', 63, 63, 25, 21, '2022-07-13 07:30:00', '1', '2022-07-13 17:10:06', '2022-07-13 17:10:06'),
(254, 'L08UNMC4T17', '0819', '22', 72, 72, 25, 24, '2022-07-13 07:30:00', '1', '2022-07-13 17:10:08', '2022-07-13 17:10:08'),
(255, 'L02UNMC4T12', '0925', '25', 45, 45, 18, 15, '2022-07-13 07:30:00', '1', '2022-07-13 17:10:10', '2022-07-13 17:10:10'),
(256, 'L08UNMC4T17', '0819', '23', 69, 69, 25, 23, '2022-07-13 07:30:00', '1', '2022-07-13 17:10:11', '2022-07-13 17:10:11'),
(257, 'L02UNMC4T12', '0925', '26', 54, 54, 18, 18, '2022-07-13 07:30:00', '1', '2022-07-13 17:10:14', '2022-07-13 17:10:14'),
(258, 'L08UNMC4T17', '0819', '24', 72, 72, 25, 24, '2022-07-13 07:30:00', '1', '2022-07-13 17:10:15', '2022-07-13 17:10:15'),
(259, 'L08UNMC4T17', '0819', '25', 69, 69, 25, 23, '2022-07-13 07:30:00', '1', '2022-07-13 17:10:18', '2022-07-13 17:10:18'),
(260, 'L08UNMC4T17', '0819', '26', 75, 75, 25, 25, '2022-07-13 07:30:00', '1', '2022-07-13 17:10:21', '2022-07-13 17:10:21'),
(261, 'L08UNMC4T17', '0820', '21', 45, 45, 15, 15, '2022-07-13 07:30:00', '1', '2022-07-13 17:10:25', '2022-07-13 17:10:25'),
(262, 'L08UNMC4T17', '0820', '22', 45, 45, 15, 15, '2022-07-13 07:30:00', '1', '2022-07-13 17:10:28', '2022-07-13 17:10:28'),
(263, 'L08UNMC4T17', '0820', '23', 39, 39, 15, 13, '2022-07-13 07:30:00', '1', '2022-07-13 17:10:30', '2022-07-13 17:10:30'),
(264, 'L08UNMC4T17', '0820', '24', 45, 45, 15, 15, '2022-07-13 07:30:00', '1', '2022-07-13 17:10:32', '2022-07-13 17:10:32'),
(265, 'L08UNMC4T17', '0820', '25', 39, 39, 15, 13, '2022-07-13 07:30:00', '1', '2022-07-13 17:10:34', '2022-07-13 17:10:34'),
(266, 'L08UNMC4T17', '0820', '26', 45, 45, 15, 15, '2022-07-13 07:30:00', '1', '2022-07-13 17:10:36', '2022-07-13 17:10:36'),
(267, 'L08UNMC4T17', '0821', '21', 60, 60, 20, 20, '2022-07-13 07:30:00', '1', '2022-07-13 17:10:40', '2022-07-13 17:10:40'),
(268, 'L08UNMC4T17', '0821', '22', 54, 54, 20, 18, '2022-07-13 07:30:00', '1', '2022-07-13 17:10:43', '2022-07-13 17:10:43'),
(269, 'L08UNMC4T17', '0821', '23', 57, 57, 20, 19, '2022-07-13 07:30:00', '1', '2022-07-13 17:10:45', '2022-07-13 17:10:45'),
(270, 'L08UNMC4T17', '0821', '24', 57, 57, 20, 19, '2022-07-13 07:30:00', '1', '2022-07-13 17:10:48', '2022-07-13 17:10:48'),
(271, 'L08UNMC4T17', '0821', '25', 57, 57, 20, 19, '2022-07-13 07:30:00', '1', '2022-07-13 17:10:52', '2022-07-13 17:10:52'),
(272, 'L08UNMC4T17', '0821', '26', 60, 60, 20, 20, '2022-07-13 07:30:00', '1', '2022-07-13 17:10:55', '2022-07-13 17:10:55'),
(273, 'L07UNMC4T16', '0715', '21', 39, 39, 15, 13, '2022-07-13 07:30:00', '1', '2022-07-13 17:19:41', '2022-07-13 17:19:41'),
(274, 'L07UNMC4T16', '0715', '22', 42, 42, 15, 14, '2022-07-13 07:30:00', '1', '2022-07-13 17:19:49', '2022-07-13 17:19:49'),
(275, 'L07UNMC4T16', '0715', '23', 42, 42, 15, 14, '2022-07-13 07:30:00', '1', '2022-07-13 17:19:54', '2022-07-13 17:19:54'),
(276, 'L07UNMC4T16', '0715', '24', 36, 36, 15, 12, '2022-07-13 07:30:00', '1', '2022-07-13 17:20:02', '2022-07-13 17:20:02'),
(277, 'L07UNMC4T16', '0715', '25', 45, 45, 15, 15, '2022-07-13 07:30:00', '1', '2022-07-13 17:20:15', '2022-07-13 17:20:15'),
(278, 'L07UNMC4T16', '0715', '26', 45, 45, 15, 15, '2022-07-13 07:30:00', '1', '2022-07-13 17:20:20', '2022-07-13 17:20:20'),
(279, 'L07UNMC4T16', '0716', '21', 24, 24, 10, 8, '2022-07-13 07:30:00', '1', '2022-07-13 17:20:26', '2022-07-13 17:20:26'),
(280, 'L07UNMC4T16', '0716', '22', 27, 27, 10, 9, '2022-07-13 07:30:00', '1', '2022-07-13 17:20:31', '2022-07-13 17:20:31'),
(281, 'L07UNMC4T16', '0716', '23', 30, 30, 10, 10, '2022-07-13 07:30:00', '1', '2022-07-13 17:20:36', '2022-07-13 17:20:36'),
(282, 'L07UNMC4T16', '0716', '24', 30, 30, 10, 10, '2022-07-13 07:30:00', '1', '2022-07-13 17:20:43', '2022-07-13 17:20:43'),
(283, 'L07UNMC4T16', '0716', '25', 30, 30, 10, 10, '2022-07-13 07:30:00', '1', '2022-07-13 17:20:47', '2022-07-13 17:20:47'),
(284, 'L07UNMC4T16', '0716', '26', 27, 27, 10, 9, '2022-07-13 07:30:00', '1', '2022-07-13 17:20:51', '2022-07-13 17:20:51'),
(285, 'L07UNMC4T16', '0717', '21', 30, 30, 10, 10, '2022-07-13 07:30:00', '1', '2022-07-13 17:20:55', '2022-07-13 17:20:55'),
(286, 'L07UNMC4T16', '0717', '22', 30, 30, 10, 10, '2022-07-13 07:30:00', '1', '2022-07-13 17:21:00', '2022-07-13 17:21:00'),
(287, 'L07UNMC4T16', '0717', '23', 30, 30, 10, 10, '2022-07-13 07:30:00', '1', '2022-07-13 17:21:03', '2022-07-13 17:21:03'),
(288, 'L07UNMC4T16', '0717', '26', 30, 30, 10, 10, '2022-07-13 07:30:00', '1', '2022-07-13 17:21:08', '2022-07-13 17:21:08'),
(289, 'L07UNMC4T16', '0717', '25', 24, 24, 10, 8, '2022-07-13 07:30:00', '1', '2022-07-13 17:21:11', '2022-07-13 17:21:11'),
(290, 'L07UNMC4T16', '0717', '24', 30, 30, 10, 10, '2022-07-13 07:30:00', '1', '2022-07-13 17:21:14', '2022-07-13 17:21:14'),
(291, 'L07UNMC4T16', '0718', '21', 30, 30, 10, 10, '2022-07-13 07:30:00', '1', '2022-07-13 17:21:20', '2022-07-13 17:21:20'),
(292, 'L07UNMC4T16', '0718', '22', 24, 24, 10, 8, '2022-07-13 07:30:00', '1', '2022-07-13 17:21:25', '2022-07-13 17:21:25'),
(293, 'L07UNMC4T16', '0718', '23', 27, 27, 10, 9, '2022-07-13 07:30:00', '1', '2022-07-13 17:21:31', '2022-07-13 17:21:31'),
(294, 'L07UNMC4T16', '0718', '24', 30, 30, 10, 10, '2022-07-13 07:30:00', '1', '2022-07-13 17:21:37', '2022-07-13 17:21:37'),
(295, 'L07UNMC4T16', '0718', '25', 27, 27, 10, 9, '2022-07-13 07:30:00', '1', '2022-07-13 17:21:40', '2022-07-13 17:21:40'),
(296, 'L07UNMC4T16', '0718', '26', 30, 30, 10, 10, '2022-07-13 07:30:00', '1', '2022-07-13 17:21:43', '2022-07-13 17:21:43'),
(297, 'L01UNMC4T11', '0101', '21', 54, 54, 20, 18, '2022-07-13 07:30:00', '1', '2022-07-13 17:28:19', '2022-07-13 17:28:19'),
(298, 'L01UNMC4T11', '0101', '22', 54, 54, 20, 18, '2022-07-13 07:30:00', '1', '2022-07-13 17:28:22', '2022-07-13 17:28:22'),
(299, 'L01UNMC4T11', '0101', '23', 57, 57, 20, 19, '2022-07-13 07:30:00', '1', '2022-07-13 17:28:24', '2022-07-13 17:28:24'),
(300, 'L01UNMC4T11', '0101', '24', 54, 54, 20, 18, '2022-07-13 07:30:00', '1', '2022-07-13 17:28:29', '2022-07-13 17:28:29'),
(301, 'L01UNMC4T11', '0101', '25', 57, 57, 20, 19, '2022-07-13 07:30:00', '1', '2022-07-13 17:28:32', '2022-07-13 17:28:32'),
(302, 'L01UNMC4T11', '0101', '26', 60, 60, 20, 20, '2022-07-13 07:30:00', '1', '2022-07-13 17:28:36', '2022-07-13 17:28:36'),
(303, 'L01UNMC4T11', '0102', '21', 54, 54, 20, 18, '2022-07-13 07:30:00', '1', '2022-07-13 17:28:45', '2022-07-13 17:28:45'),
(304, 'L01UNMC4T11', '0102', '22', 54, 54, 20, 18, '2022-07-13 07:30:00', '1', '2022-07-13 17:28:48', '2022-07-13 17:28:48'),
(305, 'L01UNMC4T11', '0102', '23', 54, 54, 20, 18, '2022-07-13 07:30:00', '1', '2022-07-13 17:28:51', '2022-07-13 17:28:51'),
(306, 'L01UNMC4T11', '0102', '26', 57, 57, 20, 19, '2022-07-13 07:30:00', '1', '2022-07-13 17:28:55', '2022-07-13 17:28:55'),
(307, 'L01UNMC4T11', '0102', '25', 60, 60, 20, 20, '2022-07-13 07:30:00', '1', '2022-07-13 17:28:59', '2022-07-13 17:28:59'),
(308, 'L01UNMC4T11', '0102', '24', 54, 54, 20, 18, '2022-07-13 07:30:00', '1', '2022-07-13 17:29:02', '2022-07-13 17:29:02'),
(309, 'L01UNMC4T11', '0203', '21', 54, 54, 20, 18, '2022-07-13 07:30:00', '1', '2022-07-13 17:29:07', '2022-07-13 17:29:07'),
(310, 'L01UNMC4T11', '0203', '22', 60, 60, 20, 20, '2022-07-13 07:30:00', '1', '2022-07-13 17:29:11', '2022-07-13 17:29:11'),
(311, 'L01UNMC4T11', '0203', '23', 54, 54, 20, 18, '2022-07-13 07:30:00', '1', '2022-07-13 17:29:14', '2022-07-13 17:29:14'),
(312, 'L01UNMC4T11', '0203', '25', 60, 60, 20, 20, '2022-07-13 07:30:00', '1', '2022-07-13 17:29:19', '2022-07-13 17:29:19'),
(313, 'L01UNMC4T11', '0203', '24', 57, 57, 20, 19, '2022-07-13 07:30:00', '1', '2022-07-13 17:29:22', '2022-07-13 17:29:22'),
(314, 'L01UNMC4T11', '0203', '26', 54, 54, 20, 18, '2022-07-13 07:30:00', '1', '2022-07-13 17:29:25', '2022-07-13 17:29:25'),
(315, 'L01UNMC4T11', '0204', '21', 57, 57, 20, 19, '2022-07-13 07:30:00', '1', '2022-07-13 17:39:52', '2022-07-13 17:39:52'),
(316, 'L01UNMC4T11', '0204', '22', 60, 60, 20, 20, '2022-07-13 07:30:00', '1', '2022-07-13 17:39:56', '2022-07-13 17:39:56'),
(317, 'L01UNMC4T11', '0204', '23', 57, 57, 20, 19, '2022-07-13 07:30:00', '1', '2022-07-13 17:40:00', '2022-07-13 17:40:00'),
(318, 'L01UNMC4T11', '0204', '26', 54, 54, 20, 18, '2022-07-13 07:30:00', '1', '2022-07-13 17:40:05', '2022-07-13 17:40:05'),
(319, 'L01UNMC4T11', '0204', '25', 60, 60, 20, 20, '2022-07-13 07:30:00', '1', '2022-07-13 17:40:09', '2022-07-13 17:40:09'),
(320, 'L01UNMC4T11', '0204', '24', 57, 57, 20, 19, '2022-07-13 07:30:00', '1', '2022-07-13 17:40:14', '2022-07-13 17:40:14');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_ruangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_sesi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `sub_menus`
--

CREATE TABLE `sub_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `sub` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `urut_sub` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sub_menus`
--

INSERT INTO `sub_menus` (`id`, `menu_id`, `sub`, `sub_url`, `is_active`, `urut_sub`, `created_at`, `updated_at`) VALUES
(1, 2, 'Sesi', 'sesi', 1, 1, NULL, NULL),
(2, 2, 'Ruangan', 'ruangan', 1, 2, NULL, NULL),
(3, 2, 'Peserta', 'siswa', 1, 3, NULL, NULL),
(4, 2, 'Pengawas', 'pengawas', 1, 4, NULL, NULL),
(5, 2, 'kategori', 'kategori', 0, 5, NULL, NULL),
(6, 2, 'Kursus', 'kursus', 1, 6, NULL, NULL),
(7, 2, 'User', 'user', 1, 7, NULL, NULL),
(8, 5, 'Minat', 'minat', 1, 1, NULL, NULL),
(9, 5, 'Akademik', 'akademik', 1, 2, NULL, NULL),
(10, 5, 'Kepribadian', 'kepribadian', 1, 3, NULL, NULL),
(11, 2, 'Server Lokal', 'server', 1, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_ruangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_sesi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 1, 'Muhammad Asdar', 'admin', NULL, NULL, '$2y$10$2j4N/u8044lPGS36on7EM.r17rLdhw9hFjJYN/g74HHxsSB72BxBm', NULL, '103.76.50.149', NULL, '2023-07-08 10:18:55'),
(8804, 4, 'Gedung Pinisi Lt. 2&3 UNM Gunungsari', 'L01UNMC4T11', NULL, NULL, '$2y$10$7HPTbkEXpFxGzwsb.9J4CeDVR2xrFYMd5hgku1lCXIHrfZHVXLkXe', NULL, '103.76.50.149', '2022-07-30 03:43:28', '2023-07-08 16:41:51'),
(8805, 4, 'FMIPA I Gedung UNM Parangtambung', 'L02UNMC4T12', NULL, NULL, '$2y$10$J/D0U0s/fzxM6LQrWwcVlOb1igBi34hrkgpBD07lgqc.xlj9I6.ii', NULL, NULL, '2022-07-30 03:43:28', '2023-07-08 16:32:49'),
(8806, 4, 'Gedung Pinisi Lt. 4 UNM Gunungsari', 'L03UNMC4T13', NULL, NULL, '$2y$10$l.Ch/9Bq7K7rvhQDGL7J3emQAD4kDWbBaRgVXL8p46qnoJ/5BkxXi', NULL, '103.76.50.149', '2022-07-30 03:43:28', '2023-07-08 16:41:14'),
(8807, 4, 'Gedung Pinisi Lt. 9 UNM Gunungsari', 'L04UNMC4T14', NULL, NULL, '$2y$10$evz2piSRJD8AvxoYXP1IJ.3AwExiwndJFd/VxccNS.RMWyAmtOYAe', NULL, NULL, '2022-07-30 03:43:28', '2023-07-08 16:32:56'),
(8808, 4, 'Fakultas Psikologi UNM Gunungsari', 'L06UNMC4T15', NULL, NULL, '$2y$10$t6QtM38UL9BZhoAfAxXsxuKTkNLK3Os7unT09As1ChqqmtDoINhxG', NULL, NULL, '2022-07-30 03:43:28', '2022-07-30 03:43:28'),
(8809, 4, 'Fakultas Ekonomi UNM Gunungsari', 'L07UNMC4T16', NULL, NULL, '$2y$10$Po3pPUioaDq7Btw7dLQzj.3ImwAIxlBvoNoRZRUUV2V9jnpW4LKWe', NULL, '172.16.37.45', '2022-07-30 03:43:28', '2022-07-30 04:48:00'),
(8810, 4, 'Fakultas Teknik UNM Parangtambung', 'L08UNMC4T17', NULL, NULL, '$2y$10$Fk5Jv1UptuDiB8Mv0Alz2exTTQ6SXbJzOBI/sGbwSDRbzl7gLqZ0W', NULL, NULL, '2022-07-30 03:43:28', '2022-07-30 03:43:28'),
(8811, 4, 'FMIPA Gedung Fisika UNM Parangtambung', 'L10UNMC4T18', NULL, NULL, '$2y$10$4VKDr7OoKSF4rIA3OItIj.8Z.FpbnzyeM09spGrF4ThgstiiiDSCq', NULL, NULL, '2022-07-30 03:43:28', '2022-07-30 03:43:28'),
(8812, 4, 'Fakultas Ilmu Pendidikan UNM Tidung', 'L13UNMC4T19', NULL, NULL, '$2y$10$VTUEwn.tdpWLTrgtFR103edY/XtcI93dFaD1yf4VkfqS.i4Y6TG9y', NULL, NULL, '2022-07-30 03:43:28', '2022-07-30 03:43:28'),
(8813, 2, 'ICT Center Lantai 2 Labkom 10', '1010281', NULL, NULL, '$2y$10$p5L07jWTvU7QHgmeBKuhouor006t6.HPxSMjY0SL1qGUc2Gq/hp1e', NULL, '103.76.50.149', '2022-07-30 04:07:28', '2023-07-07 13:06:43'),
(8814, 2, 'ICT Center Lantai 2 Labkom 11', '1010282', NULL, NULL, '$2y$10$O8jY.840ivrmbuTOmgn8ce8goHOZkj2SGlNsFhEXGUIk3YLnNr/ty', NULL, NULL, '2022-07-30 04:07:28', '2022-07-30 04:07:28'),
(8815, 2, 'ICT Center Lantai 3 Labkom 4', '1010283', NULL, NULL, '$2y$10$RNQ4svNKo8cC98oYYrFa3usaJYt2/iXj1MtdBkuWpg.n0QGeYY2u2', NULL, NULL, '2022-07-30 04:07:28', '2022-07-30 04:07:28'),
(8816, 2, 'ICT Center Lantai 3 Labkom 5', '1010284', NULL, NULL, '$2y$10$KgCzZOR3iHplNYEUbS1VNOInBO8PrVmFfIGdvR1qnsWj16pnP7qvG', NULL, NULL, '2022-07-30 04:07:28', '2022-07-30 04:07:28'),
(8817, 2, 'ICT Center Lantai 4 Labkom 1', '1010285', NULL, NULL, '$2y$10$N453TCTVe5/2BVrRq3HfN.rIkWcW.ldj03oE4Vv2AYQigHPSJy5BO', NULL, NULL, '2022-07-30 04:07:28', '2022-07-30 04:07:28'),
(8818, 2, 'ICT Center Lantai 4 Labkom 2', '1010286', NULL, NULL, '$2y$10$QjnbqEZBMp.ueISZ9WzTjuT6/GXyDnqyZjvJ71uJd.tvkjtfUQeza', NULL, NULL, '2022-07-30 04:07:28', '2022-07-30 04:07:28'),
(8819, 2, 'ICT Center Lantai 4 Labkom 3', '1010287', NULL, NULL, '$2y$10$v8PtZsE0DpSyUea/a.7OceW6bzdCFDDza6.PbgmA8ePmp7vjgwlOi', NULL, NULL, '2022-07-30 04:07:28', '2022-07-30 04:07:28'),
(8820, 2, 'ICT Center Lantai 9 Labkom 6', '1010288', NULL, NULL, '$2y$10$N66TdfKxVJ6Q14OPk1/je.Z09v.Nt/0oUuji/PxL16jOtQ1t3mrqi', NULL, NULL, '2022-07-30 04:07:28', '2022-07-30 04:07:28'),
(8821, 2, 'ICT Center Lantai 9 Labkom 7', '1010289', NULL, NULL, '$2y$10$TS2HW8F9loLUSGSdhE23dOxV0/6qhnQu2YlEdIIEbPsgOw4WwGMRa', NULL, NULL, '2022-07-30 04:07:28', '2022-07-30 04:07:28'),
(8822, 2, 'ICT Center Lantai 9 Labkom 8', '1010290', NULL, NULL, '$2y$10$EbsZbAZDq4QVVq6poZIiN.jgwsfB86JA1IrDZcw.EnV.Q0g29sqTa', NULL, NULL, '2022-07-30 04:07:28', '2022-07-30 04:07:28'),
(8823, 2, 'ICT Center Lantai 9 Labkom 9', '1010291', NULL, NULL, '$2y$10$WSuSAESelaPTiljYL9mk0OnJm7JX9QYgLj4iUJXRB2uB1gv/EmFFG', NULL, NULL, '2022-07-30 04:07:28', '2022-07-30 04:07:28'),
(9099, 3, 'KHAIRIL AZWAR', '822030631012', NULL, NULL, '$2y$10$i65g0jC85xLKQyFQM1lPU.Mka.UKdu4/MkAWa4QyyMXRNd3PKPnTi', NULL, NULL, '2022-07-30 06:30:30', '2022-07-30 06:30:30'),
(9100, 3, 'ADRIAN JAYA', '822010231019', NULL, NULL, '$2y$10$5JNM.duIK3upCVZhqQJb9.xlcq9.S8yNcY/fnA.4w9Hcm.jnvDCRy', NULL, NULL, '2022-07-30 06:30:30', '2022-07-30 06:30:30'),
(9101, 3, 'ARIEL NAUFAL TSANIZAKY', '822030531027', NULL, NULL, '$2y$10$ETmjkpbUc.f6st6pBE5IGOK5G5WAnsdK3uPkDwimuG0Tif6l0RWc6', NULL, NULL, '2022-07-30 06:30:30', '2022-07-30 06:30:30'),
(9102, 3, 'IRFAN', '822020331002', NULL, NULL, '$2y$10$aTBMVeyWIWyHagRpkYKxAejn5QybX4vSCGr1..eyEbGE8JhUTsHUK', NULL, NULL, '2022-07-30 06:30:30', '2022-07-30 06:30:30'),
(9103, 3, 'ANDINI NURHUSNA', '822010131014', NULL, NULL, '$2y$10$JsKivOv2XY2UCqoIG0kHNuKhcgigINc4GvTSQ1ag8MWsZbALj.zIW', NULL, NULL, '2022-07-30 06:30:30', '2022-07-30 06:30:30'),
(9104, 3, 'MUHAMMAD ALIF QADRI', '822020331003', NULL, NULL, '$2y$10$Wvx2uC4aa3J2AdZ4rKLeTu3cTrDydzhYhTCP78eOWBfPZp.KksrRO', NULL, NULL, '2022-07-30 06:30:31', '2022-07-30 06:30:31'),
(9105, 3, 'PUTRA DEMMANGGASA', '822010231016', NULL, NULL, '$2y$10$TsykCFaLmYCp1TQyEGUY8eTCTudB8TqTKQJCoUPflJUot7prvyWjm', NULL, NULL, '2022-07-30 06:30:31', '2022-07-30 06:30:31'),
(9106, 3, 'ANDI TIARA SIKMA TANJUNG ', '822010131010', NULL, NULL, '$2y$10$7zvsKKSvEFPk0jnv7eUdMeT0xvLFco9J82btMwr59rwen81XtzAoy', NULL, NULL, '2022-07-30 06:30:31', '2022-07-30 06:30:31'),
(9107, 3, 'MUH LUKMAN ', '822010231010', NULL, NULL, '$2y$10$ZvfLY430cx11OCeY8OdjGeIA3yuPEnrPUOaWTCvcYP6TC5CAID./q', NULL, NULL, '2022-07-30 06:30:31', '2022-07-30 06:30:31'),
(9108, 3, 'REGINA DWI NURSAKNA', '822010131006', NULL, NULL, '$2y$10$ahOJftjV.HVAXd8qMRetYuEJelrcgPhtBoprVtbdM9YlHpUbf5Vtq', NULL, NULL, '2022-07-30 06:30:31', '2022-07-30 06:30:31'),
(9109, 3, 'MUH HARSYAD HASIR', '822010231011', NULL, NULL, '$2y$10$X0TlnDUPorA3DiAIcLPPku62FxI46Dw7E2VkA52Gmaj0daDR7D4Aq', NULL, NULL, '2022-07-30 06:30:31', '2022-07-30 06:30:31'),
(9110, 3, 'RAJAS WIJAYA', '822010231005', NULL, NULL, '$2y$10$GZg4xbmvJhKHQRS8XPTAR.8AKpqeFaCF/iWYV4b2.FVvrU2GJDjO2', NULL, NULL, '2022-07-30 06:30:31', '2022-07-30 06:30:31'),
(9111, 3, 'SONIA', '822010231009', NULL, NULL, '$2y$10$qZN5jdnDAc3NjJIlOzXsoOspN62b7r3r1XuXTwh/jkiBw3joK/R8a', NULL, NULL, '2022-07-30 06:30:31', '2022-07-30 06:30:31'),
(9112, 3, 'RISMA HANDAYANI', '822010231018', NULL, NULL, '$2y$10$PYc4PqcUqv8KNxJRt8lNfe4jEosX8uG15942e2jOhcyStqI.KL8f2', NULL, NULL, '2022-07-30 06:30:31', '2022-07-30 06:30:31'),
(9113, 3, 'AGIB AMMAR KAHAR BELLA', '822010131005', NULL, NULL, '$2y$10$g8fqhvj4leRe1xO6XdfqSuV5POgosdUL20ASRal/h6YUGXjKSXGMG', NULL, NULL, '2022-07-30 06:30:31', '2022-07-30 06:30:31'),
(9114, 3, 'AHMAD HAIKAL', '822020431005', NULL, NULL, '$2y$10$CH8631hZ79xq4tz2Uvpf3O9M3QPasCGCUD8pe7VzXWTD2AOCX2.6S', NULL, NULL, '2022-07-30 06:30:31', '2022-07-30 06:30:31'),
(9115, 3, 'MUTMAINNAH S', '822010231007', NULL, NULL, '$2y$10$pc3W1yfgylaQefpGNUUyReZtF/VRb6vA61UZrqz89uNVwppgFrY8C', NULL, NULL, '2022-07-30 06:30:31', '2022-07-30 06:30:31'),
(9116, 3, 'ASRIATI ', '822010131003', NULL, NULL, '$2y$10$k3/y0qs95x3ntXboVqYZU.cSDaaozSaKVlSzchdKnDYg.dBFiixeu', NULL, NULL, '2022-07-30 06:30:31', '2022-07-30 06:30:31'),
(9117, 3, 'AHMAD AZZAM ', '822010131018', NULL, NULL, '$2y$10$CKHx04K9vfNAHkRuqbSrX.LHCgKcYf9tryj4e5Po7ir.38A3pTN/S', NULL, NULL, '2022-07-30 06:30:31', '2022-07-30 06:30:31'),
(9118, 3, 'ANDI FITHRIYYAH', '822010131001', NULL, NULL, '$2y$10$6.Bp.bbQeBC2ASb0v.nnzeyfVQKHkZXtYGltiybcYhkqtQl34FEXe', NULL, NULL, '2022-07-30 06:30:32', '2022-07-30 06:30:32'),
(9119, 3, 'PUTRI LUTVIAH RIDWAN', '822010131008', NULL, NULL, '$2y$10$qg7VLA.YNR.ZRXkhJoahJubr7.ThvnBMf1BBljC/FiHoy/F2RcoEq', NULL, NULL, '2022-07-30 06:30:32', '2022-07-30 06:30:32'),
(9120, 3, 'VIONISA GASSA LANGAN', '822010231017', NULL, NULL, '$2y$10$HKZS7p4Zr5Cpo/mMtYi3pOle11L000wfqLC5YKi3onRMpJjPgbwG2', NULL, NULL, '2022-07-30 06:30:32', '2022-07-30 06:30:32'),
(9121, 3, 'SYARMILA', '822010231001', NULL, NULL, '$2y$10$VqmGjw5KxJN2snYDaRAiuOd6zvMsbyZx6iyia9FkD8zSS1h6aIgWy', NULL, NULL, '2022-07-30 06:30:32', '2022-07-30 06:30:32'),
(9122, 3, 'MUH RAIHAN RAMANDA', '822010231008', NULL, NULL, '$2y$10$xJxzsviNVGep/UrZqddDY.qJB1U0ACiNzB0xyb.lxg6X1tvoumDy6', NULL, NULL, '2022-07-30 06:30:32', '2022-07-30 06:30:32'),
(9123, 3, 'DITA DWI SASKIA', '822010131020', NULL, NULL, '$2y$10$wB7ZVq3LAOOdoEasyLOwzeLCe1Nd11xvIekOcqJidfweOAz58y02.', NULL, NULL, '2022-07-30 06:30:32', '2022-07-30 06:30:32'),
(9124, 3, 'MUH ASDAR', '822010131013', NULL, NULL, '$2y$10$54.Xsldklgqt7Sc5yV7bD.eUxREwx82DJ/8lczT5kNoqEwETrgS/i', NULL, NULL, '2022-07-30 06:30:32', '2022-07-30 06:30:32'),
(9125, 3, 'IMELSIA INDAH PATAWANG', '822030631025', NULL, NULL, '$2y$10$wwOTzTC3IYD67fw0YciVf.j6ri8OAWdEly8XJb0S9mYVpUYn5.XHC', NULL, NULL, '2022-07-30 06:30:32', '2022-07-30 06:30:32'),
(9126, 3, 'PUTRI', '822010231012', NULL, NULL, '$2y$10$Byy8t8esazmpN4KjTw76AeiKUQojxA4UnVhAaRHHYwQVynN8oXqR2', NULL, NULL, '2022-07-30 06:30:32', '2022-07-30 06:30:32'),
(9127, 3, 'MUH FIQRAH', '822010131002', NULL, NULL, '$2y$10$80/RC1D26jtMZB/8vkk9uO/5LONgVUjCMebNOZmzANqnKL/2xitMC', NULL, NULL, '2022-07-30 06:30:32', '2022-07-30 06:30:32'),
(9128, 3, 'SRI WAHYUNI ', '822010131012', NULL, NULL, '$2y$10$XHfxwbrega/umsMJkAlHmuOFEimdk4a7btnPgmaADdj82erAeW/ri', NULL, NULL, '2022-07-30 06:30:32', '2022-07-30 06:30:32'),
(9129, 3, 'RAIHAN AFIF HASYIM PUTRA RAKHMAT', '822010131016', NULL, NULL, '$2y$10$9DLc8OuNv1CbRxA.9wyGiOBnnHheTtz3wXYZtNbzfJVzirNluXg/O', NULL, NULL, '2022-07-30 06:30:32', '2022-07-30 06:30:32'),
(9130, 3, 'NUR EIFFELIA FARID', '822010131017', NULL, NULL, '$2y$10$d/LPYp3wpFk.QzO3AS69xeX1UB8/dTOiqxGtmaAbkQd0maS3t11Xa', NULL, NULL, '2022-07-30 06:30:32', '2022-07-30 06:30:32'),
(9131, 3, 'SULIS NABILA FAZRI', '822020331006', NULL, NULL, '$2y$10$x65b.Vi/9E3lsMfECPuT6eLFtLOAF.X7ImwHa7DmH37Wb4ie.iqHO', NULL, NULL, '2022-07-30 06:30:32', '2022-07-30 06:30:32'),
(9132, 3, 'AGPRIALMES', '822020431013', NULL, NULL, '$2y$10$gk7sDXJkevigI6MQ1sS3fONMCNIfxI19mH1.ZrBbubRB3G.qIcnwq', NULL, NULL, '2022-07-30 06:30:32', '2022-07-30 06:30:32'),
(9133, 3, 'ANDI MUHAMMAD GIBRAN SUBHAN ', '822020431020', NULL, NULL, '$2y$10$IxyyaagGAaTsMjQy0OCVb.2Fn5N2WAq6i45Kj2VL3ooLKMoUUht3q', NULL, NULL, '2022-07-30 06:30:33', '2022-07-30 06:30:33'),
(9134, 3, 'MUH JUMADIL ARIF', '822010231015', NULL, NULL, '$2y$10$.V9o4rJLxPTV85DA8bpunOyxLkFf5zLR.tcv/osl33.p7wjcgkJYG', NULL, NULL, '2022-07-30 06:30:33', '2022-07-30 06:30:33'),
(9135, 3, 'REZKYAWAN DWIPUTRA ', '822010131009', NULL, NULL, '$2y$10$H/t/JZ43j3llISd7TJ85d.wbVv0hPQ3dREvclHsLT35O6GEVpGDZq', NULL, NULL, '2022-07-30 06:30:33', '2022-07-30 06:30:33'),
(9136, 3, 'ANUGRAH MARIANI PIRADE', '822010231002', NULL, NULL, '$2y$10$5RcvrmwfUpHHEYnvEze.RunIxfXKbYFLmEW1l8Fgc78yjvk9V/56e', NULL, NULL, '2022-07-30 06:30:33', '2022-07-30 06:30:33'),
(9137, 3, 'ZABRINA PUTRI HALIMA', '822010231004', NULL, NULL, '$2y$10$KWYBZuCjN1bItJVXU0R09uNd./qWsmfVl5jzl78FxUwBCQZ3kpfkS', NULL, NULL, '2022-07-30 06:30:33', '2022-07-30 06:30:33'),
(9138, 3, 'NUR AULIA PUTRI HALIM', '822010131011', NULL, NULL, '$2y$10$FQqqBjqCYarYnqyS6bjJde7.KX6LSsoZqyvRYsx8ab2sYZuZuTF5W', NULL, NULL, '2022-07-30 06:30:33', '2022-07-30 06:30:33'),
(9139, 3, 'FARHAN ANDIKA NUR', '822010231020', NULL, NULL, '$2y$10$OvjX83j54RujdF.520lvNuZBsdOdKn.aQEVYRKVo2USJyjVc7P/Ru', NULL, NULL, '2022-07-30 06:30:33', '2022-07-30 06:30:33'),
(9140, 3, 'ANDI MAHARAJA SANRE', '822010231014', NULL, NULL, '$2y$10$4x2wsLpGM0lKLGjOo8305.mEUKcdk04Ue3b9AE7Zf.3pKMX2hbnaO', NULL, NULL, '2022-07-30 06:30:33', '2022-07-30 06:30:33'),
(9141, 3, 'NURWISDA MUHAJRAH', '822020331019', NULL, NULL, '$2y$10$wWYzJRMM4GDI2CJYkr7Hh.G16qOQaK9EW6XtT7X8cMEWb15QWU2MO', NULL, NULL, '2022-07-30 06:30:33', '2022-07-30 06:30:33'),
(9142, 3, 'QASTURI ARBA\'A RAMADANI', '822010131004', NULL, NULL, '$2y$10$Evw.7H71HJ23BSHq/yBjcuWJsctVzHnQvbN.YlfwKWW.etEC6IRba', NULL, NULL, '2022-07-30 06:30:33', '2022-07-30 06:30:33'),
(9143, 3, 'MUH IRSYAD ADONG', '822010231006', NULL, NULL, '$2y$10$MqOHaHsoDPluxKWCrH.lkeUdB8WUz82xGCN8wUQ8m9oiptD0fiZCy', NULL, NULL, '2022-07-30 06:30:33', '2022-07-30 06:30:33'),
(9144, 3, 'ADITYA PRATAMA PUTRA ALAM ', '822020331015', NULL, NULL, '$2y$10$ysDP6r8fnHLUpHTuJCn4X.7rTNhfcoB4xW5fQuqzeiFrkyVeTv4gO', NULL, NULL, '2022-07-30 06:30:33', '2022-07-30 06:30:33'),
(9145, 3, 'SELVITASARI ', '822010131015', NULL, NULL, '$2y$10$G673mUuxnAsAZ7y9d6bsl.VDP56AR1sGYX06wAXQR.umSOYmnipPG', NULL, NULL, '2022-07-30 06:30:33', '2022-07-30 06:30:33'),
(9146, 3, 'SERLI LESTARI T', '822010131019', NULL, NULL, '$2y$10$/SHKoI1y6lqv9432U9VjKO6a8A1EyFSP5DezQ5vhNRwsIOR2HhSLe', NULL, NULL, '2022-07-30 06:30:33', '2022-07-30 06:30:33'),
(9147, 3, 'M HIRZAL ATHFAL', '822020431015', NULL, NULL, '$2y$10$4o985iJHdfpxB4lajcY9FeUGpjNO7N.OE/zYOM2El4JBChUCaINri', NULL, NULL, '2022-07-30 06:30:34', '2022-07-30 06:30:34'),
(9148, 3, 'RESKI NUR IHSAN ', '822010131007', NULL, NULL, '$2y$10$u9XXOY.hUYJlY4vdWUToRORMaT.R2UQ0Zmyl7sP0DMvSGNeEcgH5S', NULL, NULL, '2022-07-30 06:30:34', '2022-07-30 06:30:34'),
(9149, 3, 'RISNAYANTI', '822010231013', NULL, NULL, '$2y$10$VHGRXDb3kzvIK8q.Vdh.OuzOciQpjJhCFLG8YS16nAiZjJw4rKN0a', NULL, NULL, '2022-07-30 06:30:34', '2022-07-30 06:30:34'),
(9150, 3, 'DIAN RESTU AMALIA', '822030631008', NULL, NULL, '$2y$10$fXV4LVk6Cs5X/HyZ1SG63.q7.7/yg2OvAoCgtNBG3s21ZQs7B1viK', NULL, NULL, '2022-07-30 06:30:34', '2022-07-30 06:30:34'),
(9151, 3, 'ST ARDILLAH INAYAH NASIR', '822020331005', NULL, NULL, '$2y$10$IFMFrniopN.XHDQYJs9izOA.wJhprbFtGobe8.RxpHCL8mYvKgguS', NULL, NULL, '2022-07-30 06:30:34', '2022-07-30 06:30:34'),
(9152, 3, 'SALSABILA AURELIA', '822010231003', NULL, NULL, '$2y$10$AYTYpQfcqRGlj0MNvoZaUu3TL/rVGODGuExOZXysjgUYBiBCeDwxm', NULL, NULL, '2022-07-30 06:30:34', '2022-07-30 06:30:34'),
(9153, 3, 'MUHAMMAD FAIZ ATHAILLAH HAIDAR', '822020331016', NULL, NULL, '$2y$10$p2jKLcyubQHvC7iLqaA0Xu1nvMMyc/12w.JHau6jqVrjiVRf4Bc2m', NULL, NULL, '2022-07-30 06:30:34', '2022-07-30 06:30:34'),
(9154, 3, 'RESKI DEWI ASTIKA', '822020431008', NULL, NULL, '$2y$10$NJ9ZcxL9Ss8TNsG.I6oIfua1jsjkQjdrBWNJXiSMaOM/cwOMbwUWK', NULL, NULL, '2022-07-30 06:30:34', '2022-07-30 06:30:34'),
(9155, 3, 'MUHAMMAD NAWFAL ATSAR IRFAN ', '822020431004', NULL, NULL, '$2y$10$x18NZQ2ZHJpU6LkobLDFmu230638ASRUhwmbqjzVd65uvAdg1BE/S', NULL, NULL, '2022-07-30 06:30:34', '2022-07-30 06:30:34'),
(9156, 3, 'MUH SYAHIBUL W M', '822030531023', NULL, NULL, '$2y$10$e1uJ/tkfFYrntkILr17Q3euK2TetDf4e57AnsJLv1T8bRTfq2e8VC', NULL, NULL, '2022-07-30 06:30:34', '2022-07-30 06:30:34'),
(9157, 3, 'DINI PALAMBA ', '822020331008', NULL, NULL, '$2y$10$CDgMZuHdYezvQh3bcAiIo.EsXQAWkzpgToHLd3ICNtTvItj0AJoo.', NULL, NULL, '2022-07-30 06:30:34', '2022-07-30 06:30:34'),
(9158, 3, 'BARNABAS BARNA', '822020431001', NULL, NULL, '$2y$10$OuEkLAcIul101vXUF8YoOeZaIKAQbt2bPDaISJdD1vT825qS.o.sO', NULL, NULL, '2022-07-30 06:30:34', '2022-07-30 06:30:34'),
(9159, 3, 'MUH AKBAR', '822020331007', NULL, NULL, '$2y$10$BlAn5iB/Me/8vF5d6hEXeejq4kqDW8.q1.qyBC0IU97KrBJFOKWDe', NULL, NULL, '2022-07-30 06:30:34', '2022-07-30 06:30:34'),
(9160, 3, 'DHEA ANNISA PUTRI', '822030731017', NULL, NULL, '$2y$10$/0yX/4uH0oHVUzJ2omqUH.LhnkhjdGEbpXlFR4yDYGcklOuOUXMW2', NULL, NULL, '2022-07-30 06:30:34', '2022-07-30 06:30:34'),
(9161, 3, 'RIFDA TUL ADAWIYAH ', '822030731014', NULL, NULL, '$2y$10$taCasJP23HeZWKAWWQfJNeQH.2xlRv56RPIMfzSpVpLJU2gCsHcSe', NULL, NULL, '2022-07-30 06:30:34', '2022-07-30 06:30:34'),
(9162, 3, 'KURNIAWAN ', '822020431007', NULL, NULL, '$2y$10$S7OuKtXy/eCQ2AAkYSsKQOLICimzCSlvUmlyRh8HMjpgRGcz4Np16', NULL, NULL, '2022-07-30 06:30:35', '2022-07-30 06:30:35'),
(9163, 3, 'HUSNUL KHATIMAH', '822030631014', NULL, NULL, '$2y$10$UvvGDkC2AqhCzatPGpyTyuMLuYNpqEKQGbFhhh7SwtWy02H3mDorC', NULL, NULL, '2022-07-30 06:30:35', '2022-07-30 06:30:35'),
(9164, 3, 'MUHAMMAD DIMAS NURFALAQ', '822020431009', NULL, NULL, '$2y$10$1lGjqYBtPZZ1ZMs.1FDn1O/5NUGAHC7u0G5euImDjHUzxO3vD0cKq', NULL, NULL, '2022-07-30 06:30:35', '2022-07-30 06:30:35'),
(9165, 3, 'GHIYA ZAHIRA AMALIA', '822030631030', NULL, NULL, '$2y$10$m12ZqM/6uih41gFTCRUUKeUBciN.L5cLu2T8tZ4s4r309oA.nDbd6', NULL, NULL, '2022-07-30 06:30:35', '2022-07-30 06:30:35'),
(9166, 3, 'RAZHAQ', '822020431003', NULL, NULL, '$2y$10$.uhFDsvwICNkcV598lYMFuV6AYzRcrs1DcUDooEzCWQUc9CpbxLdy', NULL, NULL, '2022-07-30 06:30:35', '2022-07-30 06:30:35'),
(9167, 3, 'HELMIATI ', '822030731024', NULL, NULL, '$2y$10$RXQcB8ehhGQLRM5bwOG.y.pE7FbLfmtlihojtiLlBfIEufgM8.mGy', NULL, NULL, '2022-07-30 06:30:35', '2022-07-30 06:30:35'),
(9168, 3, 'ABDULLAH BIN MUHAMMAD ALI', '822020431012', NULL, NULL, '$2y$10$r8YNkN2JokGl3LquMl3/RO.FaYV3/CRbH4QtGna3Mt1kTnxG0H/9u', NULL, NULL, '2022-07-30 06:30:35', '2022-07-30 06:30:35'),
(9169, 3, 'DEWI HANDAYANI ', '822020331014', NULL, NULL, '$2y$10$wncCmdVOFHgDq/gT1iNFJ.TRcliXX4z30rJ.Pf4RsU1R6Sd49.5Wa', NULL, NULL, '2022-07-30 06:30:35', '2022-07-30 06:30:35'),
(9170, 3, 'ABD RAHMAT', '822030731013', NULL, NULL, '$2y$10$NgvleYNh416Bvpk2LjqP8OWYWamAHcebJORl6WPDASbdrpafi9Xmy', NULL, NULL, '2022-07-30 06:30:35', '2022-07-30 06:30:35'),
(9171, 3, 'WINNIE AMELIA MAHARANI', '822040931005', NULL, NULL, '$2y$10$9zhnwE7jAWwS8DPTx6RH1.934aAtbZ46i93mz36zfq/nvcC1wigvq', NULL, NULL, '2022-07-30 06:30:35', '2022-07-30 06:30:35'),
(9172, 3, 'MUH RIFKY ARDIANSYAH SYAM', '822020431011', NULL, NULL, '$2y$10$oC04AH4NMugYTPUY4b7nweogOwRYA4I755oXUcMAUlWcKQJNBvnUq', NULL, NULL, '2022-07-30 06:30:35', '2022-07-30 06:30:35'),
(9173, 3, 'SITI ZAKIAH SYACHRANI', '822020331020', NULL, NULL, '$2y$10$SAs37dZh.19Bfh6BbczXFuYCQphAeXWTBNb3tcKQutfHZ47Y84mVK', NULL, NULL, '2022-07-30 06:30:35', '2022-07-30 06:30:35'),
(9174, 3, 'REZKI RAMADAN', '822020431016', NULL, NULL, '$2y$10$4b8O.hBHjTKZt44xUDONBebD8PC2LU.vqMTfhrOfh0eNeknVg2kDm', NULL, NULL, '2022-07-30 06:30:35', '2022-07-30 06:30:35'),
(9175, 3, 'PRISKILYA GREYS', '822020431002', NULL, NULL, '$2y$10$RjqlsmrBD1oJS3fk99F7tO71e604gKlzu2ahgUv3MbUX5t.xL9B6G', NULL, NULL, '2022-07-30 06:30:35', '2022-07-30 06:30:35'),
(9176, 3, 'HENNY MASIKU', '822020331009', NULL, NULL, '$2y$10$0yLgqcrkHVzz.8UckoKrkOO3awcPgCtBZku/sLep..a9cVq/8bk1.', NULL, NULL, '2022-07-30 06:30:36', '2022-07-30 06:30:36'),
(9177, 3, 'MUHAMMAD ALFHISYAHRI ROSADY', '822020431010', NULL, NULL, '$2y$10$BNeGlwZyYf0UDCbIM.XoN.bt94pzagqSUMQF.WAsSVouJDlwfN1hC', NULL, NULL, '2022-07-30 06:30:36', '2022-07-30 06:30:36'),
(9178, 3, 'ANDI MUHAMMAD ISHLAH PRAHARA', '822020331004', NULL, NULL, '$2y$10$xwPyanVyyYPZp.l.zhj2k.2ZAYvP/76el54ECP8JgvtLsDQlnx71S', NULL, NULL, '2022-07-30 06:30:36', '2022-07-30 06:30:36'),
(9179, 3, 'NADYA NUR AFIIFAH', '822020331018', NULL, NULL, '$2y$10$ibwkBCeoFpXzfLTsdNNujeyb1g5ojPdCgg8FACtXcHG3tqPfxRZuy', NULL, NULL, '2022-07-30 06:30:36', '2022-07-30 06:30:36'),
(9180, 3, 'DARMAWATI ', '822020431018', NULL, NULL, '$2y$10$21FHf7sl6G72sgPK4Iz4hOua.s7mZV7grwF2zUjpPS7XiZ.xG3avK', NULL, NULL, '2022-07-30 06:30:36', '2022-07-30 06:30:36'),
(9181, 3, 'NURHALIJAH', '822030731018', NULL, NULL, '$2y$10$UYcMKgITd6F1ya/y2CZmQ.3Ebafd/VUaiHurqsHK9lSGIClZnIUD2', NULL, NULL, '2022-07-30 06:30:36', '2022-07-30 06:30:36'),
(9182, 3, 'GITA PUTRI ANGGELINA GANI', '822030731010', NULL, NULL, '$2y$10$wQ60tltvSiARQ3ab.RclUuyo6nGfoEdSAc93Gz8stDCf6xFTAAvlG', NULL, NULL, '2022-07-30 06:30:36', '2022-07-30 06:30:36'),
(9183, 3, 'MUHAMMAD ANUGRAH', '822020331017', NULL, NULL, '$2y$10$EBcqnN7OSD9ktNXJOcGJBuyFA2pZqPCGfbU5zHCtDPIaTUzN/jDsq', NULL, NULL, '2022-07-30 06:30:36', '2022-07-30 06:30:36'),
(9184, 3, 'HANI FADENSI TEMBANG', '822030531024', NULL, NULL, '$2y$10$8AE87bAX1vG/m8xpmBCf8.Dd6X8wVk7TJ9GGm1xuD8rj/zAkEoAsu', NULL, NULL, '2022-07-30 06:30:36', '2022-07-30 06:30:36'),
(9185, 3, 'NORIO A PANGGALO', '822030731026', NULL, NULL, '$2y$10$LH7C7RzjM7fq.H5s/00cU.puQAjl.sDZQR/aEV/P1x5AkP0s3HR6.', NULL, NULL, '2022-07-30 06:30:36', '2022-07-30 06:30:36'),
(9186, 3, 'GRECYNTHIA OKTAPUTRI RUMENGAN KHAIBAR', '822030531029', NULL, NULL, '$2y$10$alXdPr/GoL0EMNEI4dHq/O8qnFH1eimaHglHzDl7rgo6cLUbskz32', NULL, NULL, '2022-07-30 06:30:36', '2022-07-30 06:30:36'),
(9187, 3, 'ASTRIANI', '822040831029', NULL, NULL, '$2y$10$JaUclbyUvxl80Xei8rbAVeKmYLYhnW.IKjHUjhteyVfIq8S5zylQa', NULL, NULL, '2022-07-30 06:30:36', '2022-07-30 06:30:36'),
(9188, 3, 'MUH RIFALDI ', '822030731019', NULL, NULL, '$2y$10$.P2mnVOffaejGe7cXiHuouhnldW6SN3vmnOB0iBj2gvydatYxtEt6', NULL, NULL, '2022-07-30 06:30:36', '2022-07-30 06:30:36'),
(9189, 3, 'IRIANA', '822020331012', NULL, NULL, '$2y$10$PVGMkJvNsU0H5WNyJiunse.QzVHKrB1NK/928Dxe6s3.5u4E45nj.', NULL, NULL, '2022-07-30 06:30:36', '2022-07-30 06:30:36'),
(9190, 3, 'REDYTHA FEBY IRAWAN', '822040831037', NULL, NULL, '$2y$10$x.xnYUEM8FNhRNymEcaSEeSOVB5/VQWwIvNqatuU/SV/86XrQ3qwu', NULL, NULL, '2022-07-30 06:30:37', '2022-07-30 06:30:37'),
(9191, 3, 'NUR HIKMA HARDIANTI', '822020431006', NULL, NULL, '$2y$10$WBw6mHjHBRZUMDntS2XIsexY.X84bficV/qwUQ6f913g4XcCxn8ce', NULL, NULL, '2022-07-30 06:30:37', '2022-07-30 06:30:37'),
(9192, 3, 'NASRUL ANDRIAN A', '822030531006', NULL, NULL, '$2y$10$Gbt4eTzaM6PY2KNQiPUgwuy4SDyDlTxOP9uFn7EpXFUUJ9pelyNOS', NULL, NULL, '2022-07-30 06:30:37', '2022-07-30 06:30:37'),
(9193, 3, 'RIYADH MIZARD AL ANSHARI', '822030531019', NULL, NULL, '$2y$10$nVwzgbb05lShes8mQVVpe.i3VHJB1DtG2HAxzMzQRjliDWpt1nExy', NULL, NULL, '2022-07-30 06:30:37', '2022-07-30 06:30:37'),
(9194, 3, 'WANDI', '822020431017', NULL, NULL, '$2y$10$Sr7pM6PmojknNissFsEObu3UTyF82iPY0MeGqgt7oKBfUSr7DDlTW', NULL, NULL, '2022-07-30 06:30:37', '2022-07-30 06:30:37'),
(9195, 3, 'GRACIA PALILI\' PATIUNG', '822030531028', NULL, NULL, '$2y$10$NEOBO.N/ngxhRDdG7NWsleqY4c113LFMLPfQh6jivNnblYYqk7qnm', NULL, NULL, '2022-07-30 06:30:37', '2022-07-30 06:30:37'),
(9196, 3, 'MARZANDA T ASMANY', '822020331011', NULL, NULL, '$2y$10$vcFI14plPgfGnnsxP0ugiuZuC6mouk8t0NOyDlfWiJQglnqDs5uuq', NULL, NULL, '2022-07-30 06:30:37', '2022-07-30 06:30:37'),
(9197, 3, 'MUHAMMAD FA\'IZ RAHMAN', '822030531015', NULL, NULL, '$2y$10$NXrVZ6ZqFl3S0I97v.Wr1umyi7fpdxxf4N.69JmfdCryYBW4Ld8hy', NULL, NULL, '2022-07-30 06:30:37', '2022-07-30 06:30:37'),
(9198, 3, 'M SUHAEMIL', '822030631022', NULL, NULL, '$2y$10$sb4EIcFBFvYFYVa9dGFJ9uC3rJxEXggkPOZ18Q0h.qL03zNSa4nZm', NULL, NULL, '2022-07-30 06:30:37', '2022-07-30 06:30:37'),
(9199, 3, 'WIWIN SYAKIRA', '822030631003', NULL, NULL, '$2y$10$fJAy/ju2yRXuDnXYU.WiV.7VNysdgkyY6Rkj.2vhU2X09N.ZFFAFW', NULL, NULL, '2022-07-30 06:30:37', '2022-07-30 06:30:37'),
(9200, 3, 'RIJAL IMAMUL HAQ SYAMSU ALAM', '822030531022', NULL, NULL, '$2y$10$B5I0kgB3i5pd3Kf1uz8R1.cbkYpwcrc18qOKUadxQql4BqSdjrtCe', NULL, NULL, '2022-07-30 06:30:37', '2022-07-30 06:30:37'),
(9201, 3, 'NUR AFIA ASTIKA ', '822020331010', NULL, NULL, '$2y$10$qZ4DPw5AufPYhy0x7qu5Y.3Bd04PnUKV6vK84EpM5XqLF6Q7VPOxC', NULL, NULL, '2022-07-30 06:30:37', '2022-07-30 06:30:37'),
(9202, 3, 'RAFIEF QABIL MULYANA', '822030531030', NULL, NULL, '$2y$10$uH9kT5TvkxkVEN37Ay1w0OptNxocFsXCRkpcIY0.1v8TEpcBkl4qi', NULL, NULL, '2022-07-30 06:30:37', '2022-07-30 06:30:37'),
(9203, 3, 'AZYAN AUNI AMALINA FASHA', '822020431014', NULL, NULL, '$2y$10$Ox82vNIFRFLuSfRq1o5u2.e1FvwA9UtcCIIlVAOsYa3o2pYL0GLpK', NULL, NULL, '2022-07-30 06:30:37', '2022-07-30 06:30:37'),
(9204, 3, 'BALA PUTRA HF BARANGAN', '822020431019', NULL, NULL, '$2y$10$sZZi2p7YnhwgBdPnd1LnB.CVAkOkqKz.8i/R3CbzzfmBQ7aNN0BhS', NULL, NULL, '2022-07-30 06:30:37', '2022-07-30 06:30:37'),
(9205, 3, 'MUH ALFARABI TAMRI', '822020331013', NULL, NULL, '$2y$10$c3pNThfzId39GhK0PF7JxOk9SAtcuw7/xwolm1kf258AC/MRI1RBC', NULL, NULL, '2022-07-30 06:30:38', '2022-07-30 06:30:38'),
(9206, 3, 'MUH ANIL HAKIM', '822030631010', NULL, NULL, '$2y$10$J4keDbC47m337BWXDn/wC.bLkAlc1ABN9dsCrM86gmIV4aOHxKEpi', NULL, NULL, '2022-07-30 06:30:38', '2022-07-30 06:30:38'),
(9207, 3, 'SRI WULANDARI', '822030631015', NULL, NULL, '$2y$10$fFwVr84.CwfS3raI7KfKc.gCwraEz8EyIcIcOmLff2hS1l6faT7Ce', NULL, NULL, '2022-07-30 06:30:38', '2022-07-30 06:30:38'),
(9208, 3, 'SRI NADIRA GANDHI', '822030731008', NULL, NULL, '$2y$10$j0B9pF3dv4XlbvkdykS3Yusxnz7PID3P49GC1LJozk59XnhqP8PzC', NULL, NULL, '2022-07-30 06:30:38', '2022-07-30 06:30:38'),
(9209, 3, 'DATMEN TIKA KANGGA', '822020331001', NULL, NULL, '$2y$10$xX4Tt0.mjabKN5vU6aPOL.uKMULb1JbC91Dc5/w5n0NfHBsrt0dVa', NULL, NULL, '2022-07-30 06:30:38', '2022-07-30 06:30:38'),
(9210, 3, 'ALFRIDA RURA', '822030531026', NULL, NULL, '$2y$10$8FQlngSxuN92Wj4pZ5SC5ex10BBPMcqWj2iBYc/xgemoz8Zcrz.oS', NULL, NULL, '2022-07-30 06:30:38', '2022-07-30 06:30:38'),
(9211, 3, 'DESTYNA AULIANY', '822040831027', NULL, NULL, '$2y$10$KunNmzeADvc9RDWwUKPWkO/I4hEMrdIzArg0uFvnPstEwLEKkVPwu', NULL, NULL, '2022-07-30 06:30:38', '2022-07-30 06:30:38'),
(9212, 3, 'ROSITA QUIN YONES', '822030631006', NULL, NULL, '$2y$10$CciBI7m2KoXR11wM/atvh.1E1nNfIuk7DjzZcDNkxPD2VRKloMSMK', NULL, NULL, '2022-07-30 06:30:38', '2022-07-30 06:30:38'),
(9213, 3, 'TAUFIQURRAHMAN JAYADI', '822030631020', NULL, NULL, '$2y$10$7lUDzpTKvgzo7o6UPCPSTe8dbhBcd28hO2Q4okcYAKUeRBXST48ii', NULL, NULL, '2022-07-30 06:30:38', '2022-07-30 06:30:38'),
(9214, 3, 'ALFIA KESHA SEFTIRA', '822030731022', NULL, NULL, '$2y$10$CINgIfDlAsnGQWiyb149T.Jv6eltEvxTJio3eNFFLiCEf0rZUPu9O', NULL, NULL, '2022-07-30 06:30:38', '2022-07-30 06:30:38'),
(9215, 3, 'MUSDALIFAH', '822030731028', NULL, NULL, '$2y$10$92IBunRc7dfet9kgi4ka1OQcOncVyRB5vTVh7wZkelPKO54XiNMSS', NULL, NULL, '2022-07-30 06:30:38', '2022-07-30 06:30:38'),
(9216, 3, 'AHMAD FAUZI LAMAJAU', '822030631024', NULL, NULL, '$2y$10$ttWkqTxAIPjF9x6knhwtQeEa0WM8vKFqQARcrVV4sNCuOz/QHQtS6', NULL, NULL, '2022-07-30 06:30:38', '2022-07-30 06:30:38'),
(9217, 3, 'ACHMAD FIQHRI AQSA NOER', '822030531013', NULL, NULL, '$2y$10$9znIS35CSKL2ruBc1ORWUu81Y90SbwHlNMF3vAn83ePRKpI.dff6C', NULL, NULL, '2022-07-30 06:30:38', '2022-07-30 06:30:38'),
(9218, 3, 'ALFIAN SAPUTRA', '822030531008', NULL, NULL, '$2y$10$OJfG1GUEyDDw1Hpe0LEWq.BfDX9t1qE/3KBSC47J5en8DX5OaRzZu', NULL, NULL, '2022-07-30 06:30:38', '2022-07-30 06:30:38'),
(9219, 3, 'FRIGIA ARMADA PUTRI', '822030731001', NULL, NULL, '$2y$10$oAw7jJtcSXMmhEzuD4G2J.6ywbyIYHN/9xDL9gcpWT4lHhLh6L0/e', NULL, NULL, '2022-07-30 06:30:39', '2022-07-30 06:30:39'),
(9220, 3, 'RAHMA TIARA', '822030631018', NULL, NULL, '$2y$10$qXNrznoZl2W/JtU77x8/3uGITGlA0Tx8oGNtLbsGDx/Z5k4yq2Hy.', NULL, NULL, '2022-07-30 06:30:39', '2022-07-30 06:30:39'),
(9221, 3, 'ELISABETH SINTIAYUN LEWOKEDA', '822030531011', NULL, NULL, '$2y$10$j6Aa5H7fbMqjqurdywGJMucFNw8R4RIjlOl0eK35IFZn6Z8zEEjuW', NULL, NULL, '2022-07-30 06:30:39', '2022-07-30 06:30:39'),
(9222, 3, 'ST ANDINIH ROFIQAH ', '822030631027', NULL, NULL, '$2y$10$QbeFlTD8DRQar47rc0YlXOQJoYHRwalrET0XFbxWDkLgo71eVUgrK', NULL, NULL, '2022-07-30 06:30:39', '2022-07-30 06:30:39'),
(9223, 3, 'ANNISA ZAHRA RAMADHANI', '822040831007', NULL, NULL, '$2y$10$cxCSBVNJGHydSwO99sfEAeh2f0GYuULi7CTBwwYQcXRrE/mqLGe0W', NULL, NULL, '2022-07-30 06:30:39', '2022-07-30 06:30:39'),
(9224, 3, 'AHMAD ARGA NAGARAWAN MJ', '822030531021', NULL, NULL, '$2y$10$R8fbNlNe8x2D/a97AcVXW.DD.H1jcEl67eejCmkrh0Q87.XcJmPC2', NULL, NULL, '2022-07-30 06:30:39', '2022-07-30 06:30:39'),
(9225, 3, 'DIO ANUGRAH THIMOTY', '822030531007', NULL, NULL, '$2y$10$f6iwKSkSmYUleD3HcE3mVuNSXj6XDmgS0cezPHU27SwjZKkv8RtPu', NULL, NULL, '2022-07-30 06:30:39', '2022-07-30 06:30:39'),
(9226, 3, 'REZKY AMALIA HAKIM ', '822030731012', NULL, NULL, '$2y$10$5gXQsKUTblzDMytWRQJx5u7JrE3FawJHULNHfogNG5n8dcBVvxOzG', NULL, NULL, '2022-07-30 06:30:39', '2022-07-30 06:30:39'),
(9227, 3, 'NURUL IWI CAHYANI PRATAMA PUTRI ', '822030531009', NULL, NULL, '$2y$10$ZP2/jawsfOusveOIcQITf.Njt89LvcGDmq.s5KjnDKClgodjZGv7i', NULL, NULL, '2022-07-30 06:30:39', '2022-07-30 06:30:39'),
(9228, 3, 'MOH SHAHRIZAN', '822030731002', NULL, NULL, '$2y$10$JDuEzfQRzuuhueFPn1xkhu6X3h/zyuHPQakZlWs.7gO.eWehstSni', NULL, NULL, '2022-07-30 06:30:39', '2022-07-30 06:30:39'),
(9229, 3, 'RENDY KAU\'', '822030731023', NULL, NULL, '$2y$10$KtHLTQjeKLCrWOQxzlGSduXssdz2qEde1pLGt/QnPnpPomwqirKXy', NULL, NULL, '2022-07-30 06:30:39', '2022-07-30 06:30:39'),
(9230, 3, 'MUH RAIHAN FADILLAH', '822030531010', NULL, NULL, '$2y$10$oYy6np1/KHrEuueLQmzRL.q3ZaCS/EzISP5Zo9pbJcztqS23qKxny', NULL, NULL, '2022-07-30 06:30:39', '2022-07-30 06:30:39'),
(9231, 3, 'A AGNES ALTA MIRANDA', '822030531020', NULL, NULL, '$2y$10$dPqhTmA05JcS1fCkP2C9muLCh4ZJn9gGL.LMhFeUXj1ivcdqBZAoe', NULL, '172.16.37.45', '2022-07-30 06:30:39', '2022-09-14 10:20:05'),
(9232, 3, 'DENDI TANGKELANGI\'', '822030531014', NULL, NULL, '$2y$10$airZrxnCUvXhixdt50WriuXZ3Y4MPYz/ftR2MouzJAWgX9KXHt4sS', NULL, NULL, '2022-07-30 06:30:39', '2022-07-30 06:30:39'),
(9233, 3, 'RESKIZA ALYA AINUR', '822030631017', NULL, NULL, '$2y$10$2NDyLVNpb13kjmh7TcBVB.Cq45qV7Sb1W27X9TFOuoy6baR/vIoii', NULL, NULL, '2022-07-30 06:30:39', '2022-07-30 06:30:39'),
(9234, 3, 'WILLIAM PRANANTA PATOLIDING', '822030731020', NULL, NULL, '$2y$10$Ry5Kllwe9OxQBy0FaP3REO0q/gwvKtNjGzkxFpMjjyBJuJHbmMmum', NULL, NULL, '2022-07-30 06:30:40', '2022-07-30 06:30:40'),
(9235, 3, 'ELSHINTA LOMMA TANDIERA ', '822030631002', NULL, NULL, '$2y$10$FSz3PoJ0XflSUvJ/v7XabOEVTGNju4Z0QyVo.mCNanx6OhyPfCcgG', NULL, NULL, '2022-07-30 06:30:40', '2022-07-30 06:30:40'),
(9236, 3, 'NUR SYAHRANI RAMADHANI', '822040831034', NULL, NULL, '$2y$10$I3LxHaiCne76MmOghXIDiuB/ZeBwUYlU8jSgZSkH6nydfPDDkmtcq', NULL, NULL, '2022-07-30 06:30:40', '2022-07-30 06:30:40'),
(9237, 3, 'NUR HIKMA HARDIANTI', '822030631026', NULL, NULL, '$2y$10$xXXBNmKh9vAoCWSyxGUC7uE7IzxrxhyOMgxBHTBqlSQmrgrcl1RdW', NULL, NULL, '2022-07-30 06:30:40', '2022-07-30 06:30:40'),
(9238, 3, 'FITRI RAMADHANI', '822030731025', NULL, NULL, '$2y$10$ciZ3M7ad7cK44VzhUhw2QO2V0BuhTyfUvjPo2zu7PYWbi2.QaLpmG', NULL, NULL, '2022-07-30 06:30:40', '2022-07-30 06:30:40'),
(9239, 3, 'REZTY JUNIATI RAPA', '822030631005', NULL, NULL, '$2y$10$pxTBuCAQmK5yFnUQnwzmxuPLmINA25xZZ.gc9kZFbM0b47/HN/vVe', NULL, NULL, '2022-07-30 06:30:40', '2022-07-30 06:30:40'),
(9240, 3, 'JUMANA', '822030731030', NULL, NULL, '$2y$10$a8ejmCh5mJcb.a3aB1Up4epkADpIOWSgFWkYiwYjR329xRc3nUpFW', NULL, NULL, '2022-07-30 06:30:40', '2022-07-30 06:30:40'),
(9241, 3, 'A M HIDAYATULLAH GYM', '822030631023', NULL, NULL, '$2y$10$Q1XxvXcj284.Uo4x1Q71Qu8LhfFJLoU152KQoWd0xYur8NfzB1gxq', NULL, NULL, '2022-07-30 06:30:40', '2022-07-30 06:30:40'),
(9242, 3, 'YULVI', '822030531012', NULL, NULL, '$2y$10$SDxGLaz7q7OgPHlgV9Ldt.fuIWLCkKDOPAtyLJNGj8IajWDaGCjkO', NULL, NULL, '2022-07-30 06:30:40', '2022-07-30 06:30:40'),
(9243, 3, 'REZKA', '822030731011', NULL, NULL, '$2y$10$XEM3nUUFXmP2VbZCmLKwGeVX3fXMGCz7rh2cAuFb6E/2Jb4owyYNm', NULL, NULL, '2022-07-30 06:30:40', '2022-07-30 06:30:40'),
(9244, 3, 'RIDHA YUNI AULIA', '822030531003', NULL, NULL, '$2y$10$0IcrUuLZQCl6f2lgv49jfOD1IjHroVAe0zCXXJqNbe5jGo4/02Qze', NULL, NULL, '2022-07-30 06:30:40', '2022-07-30 06:30:40'),
(9245, 3, 'DESI LIMBONG GOA', '822030631019', NULL, NULL, '$2y$10$6hlD.v5340V4cXg938RUb.51X6HkpmrhvKYAa57yYyGH0S0s0Ngau', NULL, NULL, '2022-07-30 06:30:40', '2022-07-30 06:30:40'),
(9246, 3, 'ERNAYANTI AMELIA ', '822030531005', NULL, NULL, '$2y$10$ET2Jq/aZsszYBZAaB/3BuOIJBcyPe116o5RX15FirhxesKd8SMNry', NULL, NULL, '2022-07-30 06:30:40', '2022-07-30 06:30:40'),
(9247, 3, 'MUH TAUFIK RACHMAT', '822030731021', NULL, NULL, '$2y$10$T/a0tSxJzilMMOhrHyW4De4NJLbvdZACIr9yRJKpzhkVZO3gXsiLy', NULL, NULL, '2022-07-30 06:30:40', '2022-07-30 06:30:40'),
(9248, 3, 'FIRMANSYAH ', '822040831026', NULL, NULL, '$2y$10$6qyt2c/OH1pu8Ni4tzi7ZeZ0n8Ys6Xmez/qml3i9kGtOVz43Ifw/O', NULL, NULL, '2022-07-30 06:30:41', '2022-07-30 06:30:41'),
(9249, 3, 'MUHAMMAD DEWANGGA USMAN', '822030731003', NULL, NULL, '$2y$10$jo6ZRdPnxll9DKnsZhLh2OLDr3I6mjpsbAF4UGmyvW6aMYYvREJD.', NULL, NULL, '2022-07-30 06:30:41', '2022-07-30 06:30:41'),
(9250, 3, 'DAMRI', '822030731007', NULL, NULL, '$2y$10$OOkKxy0jg5uQJKCoFfJyC.bKEPFn9jHGSYqkkLp8xk7vEMzwqlxdO', NULL, NULL, '2022-07-30 06:30:41', '2022-07-30 06:30:41'),
(9251, 3, 'NURUL AHKMAD ADAM SYAH', '822040931004', NULL, NULL, '$2y$10$3WL0C3xVHTHrb04BysisGuIgWfF4ALk2UHiW1m/9di1B/vF6dCLEy', NULL, NULL, '2022-07-30 06:30:41', '2022-07-30 06:30:41'),
(9252, 3, 'ANUGRAH ARAFAH', '822030631011', NULL, NULL, '$2y$10$zZN.1Gj2PEFElwz2nRMKaebnYilvsu72EEwB1NshWSx/W9im2Y.pm', NULL, NULL, '2022-07-30 06:30:41', '2022-07-30 06:30:41'),
(9253, 3, 'JATRI SABLING', '822030531004', NULL, NULL, '$2y$10$qBZvHljMJEuzuNSJrdUKve8KggIOfFqgge2Sj2irpVp53i4HLYSnK', NULL, NULL, '2022-07-30 06:30:41', '2022-07-30 06:30:41'),
(9254, 3, 'MUHAMMAD FIKRI ZAKY', '822030631007', NULL, NULL, '$2y$10$YItwW3ohMzaI8nkxGpPXSODUS69x/J7OnF6RQCGKM/mJbUo.SJyKm', NULL, NULL, '2022-07-30 06:30:41', '2022-07-30 06:30:41'),
(9255, 3, 'NUR ASHILAH SALWA', '822030631009', NULL, NULL, '$2y$10$iJ9ag6nFTjJoyvye6kU9.eViaCyoBZ2Zv0nDsUObZul0l8QqaKndG', NULL, NULL, '2022-07-30 06:30:41', '2022-07-30 06:30:41'),
(9256, 3, 'ANDI BINTANG WIJAYA', '822030631021', NULL, NULL, '$2y$10$SyPZVyRWiW1rjPnmtQwdRO5XD34rvOEYLX8xf80QZwoMe9YYkgwdS', NULL, NULL, '2022-07-30 06:30:41', '2022-07-30 06:30:41'),
(9257, 3, 'NUR ISNAENI OSEANI', '822030631004', NULL, NULL, '$2y$10$WBsLHnFobNPk3VJzEZU3ZuzqmNjEsid5.LEZgy31Vb9Xl1npl5t42', NULL, NULL, '2022-07-30 06:30:41', '2022-07-30 06:30:41'),
(9258, 3, 'ANDI YAHYA DAENG PAREWU', '822030631013', NULL, NULL, '$2y$10$Fl4W/dtkC7zjm6.xLvzpMOe3Sy9moTSLyqk7EjRzlV3/NJs2BFnye', NULL, NULL, '2022-07-30 06:30:41', '2022-07-30 06:30:41'),
(9259, 3, 'ANGGI AULIA ZASKIA ', '822030731005', NULL, NULL, '$2y$10$Jf8cswQGjGP/zo4Cde9w6eKIvJtbCb7aNseDVf5C0GbgsE1Q7gkXy', NULL, NULL, '2022-07-30 06:30:41', '2022-07-30 06:30:41'),
(9260, 3, 'GIUSEPHINA MEILANY SIMON', '822041131034', NULL, NULL, '$2y$10$3/0DOYulWyHd9Fhr/7BEOuZqKKNBj4yEjtavOF3gbGyNxcfGPb8kC', NULL, NULL, '2022-07-30 06:30:41', '2022-07-30 06:30:41'),
(9261, 3, 'FITRIA EKAWATI SANDI PUTRI', '822030531017', NULL, NULL, '$2y$10$bf92HUaCxIsG0xCnhO0eHOsIcVQFPEHAAt7zFbCG1k8uOTZTOsr2C', NULL, NULL, '2022-07-30 06:30:41', '2022-07-30 06:30:41'),
(9262, 3, 'UMMU KALSUM', '822030731027', NULL, NULL, '$2y$10$sfLiiBAvP9USklA9.3i8NO1REsCC4HlTG.C.mAIJsfPYKIMy08SBu', NULL, NULL, '2022-07-30 06:30:41', '2022-07-30 06:30:41'),
(9263, 3, 'NURUL AINI ', '822030631016', NULL, NULL, '$2y$10$H6fiSC1l266KFzloKbp1yOPQKN4s4dlZ7kot6BUWGES1tf/Jm1FiW', NULL, NULL, '2022-07-30 06:30:42', '2022-07-30 06:30:42'),
(9264, 3, 'RAISA AMELIA', '822040831048', NULL, NULL, '$2y$10$1dAnqov.mL8.mHZRmJ3UfOgYwTJA.XgdW5GCd.y4HpSHB/KchEhey', NULL, NULL, '2022-07-30 06:30:42', '2022-07-30 06:30:42'),
(9265, 3, 'PATRINA TUMBA\'', '822030731029', NULL, NULL, '$2y$10$WcTOor1UvFtEkFXQUzFvXOEy6.1uuysg1C4eT9Bq3V3zW1tKIMaW2', NULL, NULL, '2022-07-30 06:30:42', '2022-07-30 06:30:42'),
(9266, 3, 'NURUL DELLA', '822030731004', NULL, NULL, '$2y$10$wLoGokoCizu6Ml..UmKqh.oYOiJI9Up3RLggD/Wkfa9NRHE0bRR5.', NULL, NULL, '2022-07-30 06:30:42', '2022-07-30 06:30:42'),
(9267, 3, 'NUR HIKMAH ', '822030531001', NULL, NULL, '$2y$10$tpQmYh93LH5zIKMohB1.neW/mFdOZKzM62vHtvS.D1UwkdWC3PwdK', NULL, NULL, '2022-07-30 06:30:42', '2022-07-30 06:30:42'),
(9268, 3, 'JULIANA', '822030631001', NULL, NULL, '$2y$10$7hNDJPPFgvQqLv1LVFR3f.L6N78WeHRbD9LrTOddjxZAX/dzWZQxa', NULL, NULL, '2022-07-30 06:30:42', '2022-07-30 06:30:42'),
(9269, 3, 'MUHAMMAD ISMAIL', '822030631029', NULL, NULL, '$2y$10$JlO/BIO69oRSajSMPVojwesdWH4nXVU1yAKEAU8XBQfefaVWvgq4K', NULL, NULL, '2022-07-30 06:30:42', '2022-07-30 06:30:42'),
(9270, 3, 'SYAMSURYAINDAH', '822041131022', NULL, NULL, '$2y$10$6HmQ1qO0Et0aYZIki2kguueihoJpuTUz9Jw1aSe.cTn0o9CVa7Ds6', NULL, NULL, '2022-07-30 06:30:42', '2022-07-30 06:30:42'),
(9271, 3, 'RESKI PUTRI AMALIA ', '822041131035', NULL, NULL, '$2y$10$gqf2T1VwSNdTQ730b2OF9uvwAVBzn67c2eRqIqAtQHBlrIgKQo6DW', NULL, NULL, '2022-07-30 06:30:42', '2022-07-30 06:30:42'),
(9272, 3, 'JERI', '822030531016', NULL, NULL, '$2y$10$YdVSHza241hl9AkZfi4dXeBWYiLjNvcmZRm7LXwC3eHoUEdG57jcW', NULL, NULL, '2022-07-30 06:30:42', '2022-07-30 06:30:42'),
(9273, 3, 'NUR AQILAH', '822030531025', NULL, NULL, '$2y$10$DMtzKGf67weChu57PYk6i.k7sTsFqnPAwXxeWCrt5y2o8PT0NTGDS', NULL, NULL, '2022-07-30 06:30:42', '2022-07-30 06:30:42'),
(9274, 3, 'NUR ALIM SYAMSUDDIN', '822030631028', NULL, NULL, '$2y$10$xSgyw6vOor1ueZipfuUQX.ksYTCsZBD1f2IQUq8SrU5VQtGDd0JMq', NULL, NULL, '2022-07-30 06:30:42', '2022-07-30 06:30:42'),
(9275, 3, 'NUR REZKY AMALIAH LESTARI', '822040831047', NULL, NULL, '$2y$10$.EDlbRv5zm57PSnBN3trj.NbrP6TSDBhTwkLfGAy5.BOjrjgI/wF6', NULL, NULL, '2022-07-30 06:30:42', '2022-07-30 06:30:42'),
(9276, 3, 'NANDAYANI', '822030731009', NULL, NULL, '$2y$10$pgnOeo7rE1xSvsUbqs.Nmuww77LqO0Knu/AWBFg/MFxwN54tcBld2', NULL, NULL, '2022-07-30 06:30:42', '2022-07-30 06:30:42'),
(9277, 3, 'LUSIANA', '822040831031', NULL, NULL, '$2y$10$28pb9AbFdTuCSmyv.AFP6ucB/rMhHRqX8w0QcVaR7/FuKnAtqKmsO', NULL, NULL, '2022-07-30 06:30:43', '2022-07-30 06:30:43'),
(9278, 3, 'DHIAS PRASETYO ', '822040831035', NULL, NULL, '$2y$10$iNMKFpfWEI4HbhiMmC12SOJhscNKHy9ttsCTzlfWUOoN1dmPpXQCG', NULL, NULL, '2022-07-30 06:30:43', '2022-07-30 06:30:43'),
(9279, 3, 'ABDUL HALIM AMIRUDDIN ', '822030731006', NULL, NULL, '$2y$10$QqEfZiLDKYwwN9..skq5a.DKctalChZ3m7D5czk1P7Dp15FS8JeoK', NULL, NULL, '2022-07-30 06:30:43', '2022-07-30 06:30:43'),
(9280, 3, 'ANDI IDHAM KHADAFI', '822040831032', NULL, NULL, '$2y$10$tr8Vhm/AveMo/BhaOlm0luRaUPkS4HQTPqjjGTGxI9fYIL/Vcvt/6', NULL, NULL, '2022-07-30 06:30:43', '2022-07-30 06:30:43'),
(9281, 3, 'MUH AHKSAN', '822030531018', NULL, NULL, '$2y$10$NEjdibGC/UtKGeBgoL0Rp.PK2hqDBuhh20zu1cZifQ.teynTYQdP.', NULL, NULL, '2022-07-30 06:30:43', '2022-07-30 06:30:43'),
(9282, 3, 'ZULKIFLI MUKSIN', '822040931002', NULL, NULL, '$2y$10$v5EUdZH13AGhbliBRChBgejMknzplYsWYO1Z30R7tvCJXb/nsco5m', NULL, NULL, '2022-07-30 06:30:43', '2022-07-30 06:30:43'),
(9283, 3, 'KHADILA HAMID', '822030531002', NULL, NULL, '$2y$10$WyED5cOPEnELbdv.dlhY5ercVCiZ3gEl8cyxlfrIh6T5qiovsjTMO', NULL, NULL, '2022-07-30 06:30:43', '2022-07-30 06:30:43'),
(9284, 3, 'SITI AZIZAH AZZAHRAH SAM', '822040831039', NULL, NULL, '$2y$10$V/5tJJW9M2xtGCFj/OGXZeGh/1i5EOMKhJ.2aWCe6tbbNNRZ3gN6a', NULL, NULL, '2022-07-30 06:30:43', '2022-07-30 06:30:43'),
(9285, 3, 'DIMAS ADI SAPUTRA', '822030731015', NULL, NULL, '$2y$10$M3HyCDjxyWZN9RZb2CQwEuNJ/aVQJHeCTGdh6CYBVBxDYsMEhreKG', NULL, NULL, '2022-07-30 06:30:43', '2022-07-30 06:30:43'),
(9286, 3, 'MUH FIRMANULLAH ASHARI', '822030731016', NULL, NULL, '$2y$10$aV7NWS66WFy.AAZz5q7VdOnCoLbNZbL6naTHqh26fzcOB9G24ZK06', NULL, NULL, '2022-07-30 06:30:43', '2022-07-30 06:30:43'),
(9287, 3, 'RAIHAN FAIRU RUSTAM', '822040831002', NULL, NULL, '$2y$10$MjMasD1KFvoH2AcYR8mX4.JcbJ6oe20H3qqQ/5WHc10MBbtympYFm', NULL, NULL, '2022-07-30 06:30:43', '2022-07-30 06:30:43'),
(9288, 3, 'M NAUFAL NUR IHSAN', '822040831030', NULL, NULL, '$2y$10$1qSau/NvWPgsyN2uR5xste6SNoxIkrc71EG7H5EciJpZhdO5G184q', NULL, NULL, '2022-07-30 06:30:43', '2022-07-30 06:30:43'),
(9289, 3, 'FADLI', '822040831043', NULL, NULL, '$2y$10$riFRI5KV0wkDS7XiK7yg7.PQQ3V4ATpVwQdsXwSultHnRVJJINBay', NULL, NULL, '2022-07-30 06:30:43', '2022-07-30 06:30:43'),
(9290, 3, 'HUSNUL FATIHAH BURHANUDDIN', '822041031005', NULL, NULL, '$2y$10$HpQmNGsxMSs0TXZuxDVL0O2yoo7vHgRoc5lyqMt4t8tELaY47NJqS', NULL, NULL, '2022-07-30 06:30:43', '2022-07-30 06:30:43'),
(9291, 3, 'NUR ANISA ', '822040831020', NULL, NULL, '$2y$10$Nk/OiAiozVvwUBKF9llHPuKV09VvMfqUuauRZ9lBXiRjX/kDs3psK', NULL, NULL, '2022-07-30 06:30:43', '2022-07-30 06:30:43'),
(9292, 3, 'NURMAYA FATHANAH RAZAK', '822040931001', NULL, NULL, '$2y$10$MRj1GKWz12KzVG8AIops7OZPnNYYA2GFwId9XY9gPdevrptM/pdq.', NULL, NULL, '2022-07-30 06:30:44', '2022-07-30 06:30:44'),
(9293, 3, 'MAURITZIO ALEXANDER TAHAPARY', '822040831045', NULL, NULL, '$2y$10$4pYpRHhwkCvJIFItnSNpseRq3s7whNBw1dtzg/Ig16c12r6MwFCDG', NULL, NULL, '2022-07-30 06:30:44', '2022-07-30 06:30:44'),
(9294, 3, 'HIDAYAT MAULANA', '822040831040', NULL, NULL, '$2y$10$ftTvlHeW1TFF8bXX5LBUHuHYP1bMEUYLlVpNoaMFW7spIambzJ0za', NULL, NULL, '2022-07-30 06:30:44', '2022-07-30 06:30:44'),
(9295, 3, 'ATIKA SALSABILA RIZKI', '822040831009', NULL, NULL, '$2y$10$iTL2wsJgv1ooq04IuMUZr.z6amXyc651icDcix5qEPkIip4JnPI6O', NULL, NULL, '2022-07-30 06:30:44', '2022-07-30 06:30:44'),
(9296, 3, 'MUHAMMAD NURUL ILMI', '822040831028', NULL, NULL, '$2y$10$zflTB/9pHUkmF2UfAJ0E5.nRCcKMh56Zeg5rJZuonTMfqJKUcOdfa', NULL, NULL, '2022-07-30 06:30:44', '2022-07-30 06:30:44'),
(9297, 3, 'NUR EVA AZIZAH', '822040831005', NULL, NULL, '$2y$10$Opvo5NSXRYRYW3M5N5Hf7.l4xy5m/sbbZWaR870vU6YdmJASUZfDG', NULL, NULL, '2022-07-30 06:30:44', '2022-07-30 06:30:44'),
(9298, 3, 'HAMRI', '822040831008', NULL, NULL, '$2y$10$7yL751RSagvxn2Oa.a0v0O9Rj35MqUXNmIs75GiIYM4XKRpt3fesK', NULL, NULL, '2022-07-30 06:30:44', '2022-07-30 06:30:44'),
(9299, 3, 'SHELOMITHA', '822040931015', NULL, NULL, '$2y$10$nMg1CtT7du01sSqU5Gm3vuq0hvNWAvTTdm135o2gIKxenOGkd.kkO', NULL, NULL, '2022-07-30 06:30:44', '2022-07-30 06:30:44'),
(9300, 3, 'NUR HOLIS BAHAR', '822040831021', NULL, NULL, '$2y$10$xo9yhHyGNc1t6ow8oyRzLeS4n4ojfX2Ut7iUUfEek1e4HB8JcYEHu', NULL, NULL, '2022-07-30 06:30:44', '2022-07-30 06:30:44'),
(9301, 3, 'HILMAN', '822040831018', NULL, NULL, '$2y$10$BHCjxKQ0KYRM4lphsR4ASOQSXrvWa09e/BYfGcHMnhFk5HvkV8AAy', NULL, NULL, '2022-07-30 06:30:44', '2022-07-30 06:30:44'),
(9302, 3, 'SULVIKRAM ', '822040931011', NULL, NULL, '$2y$10$8vT5rXx6MMe4ayLi0izVxe0S3XR3ZnJg03gS6bafwvG03JUo9rzY.', NULL, NULL, '2022-07-30 06:30:44', '2022-07-30 06:30:44'),
(9303, 3, 'RAFLI RAMADHAN HAFID', '822040831016', NULL, NULL, '$2y$10$ZXVqIGlCl2PjP4lfqauBvuqTQGrNz71Hb1lP5dpOiVemUexO8fdDi', NULL, NULL, '2022-07-30 06:30:44', '2022-07-30 06:30:44'),
(9304, 3, 'MUSDALIFAH ', '822040831014', NULL, NULL, '$2y$10$xIxsmlWhbFOVvuMgT9KRZuWosZcENfpz6Ow4e/j9eK2pc9aNIVdYK', NULL, NULL, '2022-07-30 06:30:44', '2022-07-30 06:30:44'),
(9305, 3, 'MAYNARDI TANDIALA', '822040931013', NULL, NULL, '$2y$10$MkQ5psSQNIwDdMcyTLXjeu/UL0u7jW0tgzZwsSjs4sM3CHn5nXirq', NULL, NULL, '2022-07-30 06:30:44', '2022-07-30 06:30:44'),
(9306, 3, 'ANDI UMMAHERA', '822040831010', NULL, NULL, '$2y$10$u5u6rIYmmGcYWNQWTb8xceR0eq2klufv42D5sJHLbyMqEkqGuroDW', NULL, NULL, '2022-07-30 06:30:44', '2022-07-30 06:30:44'),
(9307, 3, 'MIFTAHUL JANNAH', '822040831042', NULL, NULL, '$2y$10$Pi2BcUGudENTpSXldpsJ6uGijsM.MLtb9628lKrcFfcMnljym6drS', NULL, NULL, '2022-07-30 06:30:45', '2022-07-30 06:30:45'),
(9308, 3, 'FARDA TOATUBUN', '822040831046', NULL, NULL, '$2y$10$gXlCXOUQCYdyazvmRvwGCuiF.czTI7Go/2pq8t5rB4DIczUbuVAa.', NULL, NULL, '2022-07-30 06:30:45', '2022-07-30 06:30:45'),
(9309, 3, 'ALDA DWI YANTI', '822040831019', NULL, NULL, '$2y$10$d3hH/sdEh3uTRjGm7/mjaus5GtPH9ez/SDbUI/IfxQChnipoxuKQq', NULL, NULL, '2022-07-30 06:30:45', '2022-07-30 06:30:45'),
(9310, 3, 'WARDA TOATUBUN', '822040931010', NULL, NULL, '$2y$10$jRxm4RLVGnmF5Ssx54OhhetLS2FSIRGMRmzkV0K0No8sLRcK7Owb6', NULL, NULL, '2022-07-30 06:30:45', '2022-07-30 06:30:45'),
(9311, 3, 'HAMIDA WOKAS', '822040831004', NULL, NULL, '$2y$10$mQalPwExFSx3WeXwUksVculPGadKtRQgdVBeNF.Q1IrOcB800JQva', NULL, NULL, '2022-07-30 06:30:45', '2022-07-30 06:30:45'),
(9312, 3, 'DAHRI THALIB', '822040931012', NULL, NULL, '$2y$10$yLIV42cjM7ulBPGq.PEvJuOpwnOLSIyYMVeQ9ogyZzvlmZyvF7EJ2', NULL, NULL, '2022-07-30 06:30:45', '2022-07-30 06:30:45'),
(9313, 3, 'MUH RYAS', '822040831012', NULL, NULL, '$2y$10$9ilNNH8xWiIhKne/K6Y/9.YMsIBhmNz.q/tClHO4iM5nrw0gnJD8e', NULL, NULL, '2022-07-30 06:30:45', '2022-07-30 06:30:45'),
(9314, 3, 'ANDI MUH FACHRI', '822040931006', NULL, NULL, '$2y$10$zx687F6DaIlDoQC0YaFdKusFTwqA6rJI0XAYVomVGyZ8LeEBQA6c2', NULL, NULL, '2022-07-30 06:30:45', '2022-07-30 06:30:45'),
(9315, 3, 'JUNIARTI MIRNA SAMPE BU\'TU', '822040831011', NULL, NULL, '$2y$10$C/AGO3F1oeo.WNqT.0/uRuUAZW2b4MDZRMMBj/Xm6u5JoTBhujeUG', NULL, NULL, '2022-07-30 06:30:45', '2022-07-30 06:30:45'),
(9316, 3, 'SAWAL', '822040931008', NULL, NULL, '$2y$10$wyRLBfMmaUQLVvbNMx1pN.NQnzmDppVJjdA7bbA7G5gAHRliOaIve', NULL, NULL, '2022-07-30 06:30:45', '2022-07-30 06:30:45'),
(9317, 3, 'MUHAMMAD MAULANA ASTAMAN', '822041131006', NULL, NULL, '$2y$10$eVDBC/W48TxTVohUAa0qjuI/1fkJ2NrCmNDFMqeUQKmqXU67TaHky', NULL, NULL, '2022-07-30 06:30:45', '2022-07-30 06:30:45'),
(9318, 3, 'MUH AGIL ZAKARIA', '822040831036', NULL, NULL, '$2y$10$yP944xIFDZkzE7EYYR.Ooe19iwd31j9derzFm5NGtJunuQQ/6XYmC', NULL, NULL, '2022-07-30 06:30:45', '2022-07-30 06:30:45'),
(9319, 3, 'TESA ADIAKSA', '822041131017', NULL, NULL, '$2y$10$pJVLe15dXOLgHPmJ0/iRFOfL5V3pRONAXm.a.2htkIAWtfYdnWldO', NULL, NULL, '2022-07-30 06:30:45', '2022-07-30 06:30:45'),
(9320, 3, 'AQILLA AMALIYAH PUTRI', '822040831015', NULL, NULL, '$2y$10$S0Df7toUCy44.ujrkSTMW.LQiDimdJt2lZZcLZUCk45P/EvClaWlK', NULL, NULL, '2022-07-30 06:30:45', '2022-07-30 06:30:45'),
(9321, 3, 'NURHIKMA SYAM', '822040831033', NULL, NULL, '$2y$10$uV1xYIrr7gzSg30ZDceOleQz9HkbC80Y572YkRCCkv9frpNqMwgI2', NULL, NULL, '2022-07-30 06:30:46', '2022-07-30 06:30:46'),
(9322, 3, 'ANDI YUSNIZAR AMRI MAPPASORO', '822040831038', NULL, NULL, '$2y$10$sQ1bbeBT3gpNVuAx/o1FWe1fI0g/5Z2jTc1jpE3f.3pxEPm7N6oMG', NULL, NULL, '2022-07-30 06:30:46', '2022-07-30 06:30:46'),
(9323, 3, 'NUR SAFIKA', '822040831041', NULL, NULL, '$2y$10$3sY7ILM/0Fk1ZEo1FZDT3eK3cU5sjHH7dC7FZzaD0ajpAxgSpk/c.', NULL, NULL, '2022-07-30 06:30:46', '2022-07-30 06:30:46'),
(9324, 3, 'MUHAMMAD FADHIL ASSHIDDIQ', '822040931003', NULL, NULL, '$2y$10$UHcRzbm/CwMIqYVWoA4cWOnCK.5HaXxFE2Y927Edr5CBa1tpNoL3a', NULL, NULL, '2022-07-30 06:30:46', '2022-07-30 06:30:46'),
(9325, 3, 'MUH DZAKY RISQ SYAHDILAN MAJID', '822040831024', NULL, NULL, '$2y$10$A2C5tcrhA4AbyJPyO4Bi/Oncjzzt3j4sRuAwrvTwzj0eFMk7IcR3O', NULL, NULL, '2022-07-30 06:30:46', '2022-07-30 06:30:46'),
(9326, 3, 'MELANI INDAH CAHYANI', '822040831022', NULL, NULL, '$2y$10$FSJufWlqgc44WnCdZRE6R.UXAKG0sgME41Dj1M.8aFAg6evH.TY9q', NULL, NULL, '2022-07-30 06:30:46', '2022-07-30 06:30:46'),
(9327, 3, 'JOAN ANANDA', '822041031015', NULL, NULL, '$2y$10$aMFw5ffH2BCYUcCgfwgf2uMElGB9TMtFCUmhSxWATaKdt1zNy878.', NULL, NULL, '2022-07-30 06:30:46', '2022-07-30 06:30:46'),
(9328, 3, 'NURMAWADDAH ', '822040931007', NULL, NULL, '$2y$10$CLmLsCnT.UDbBt5LvymgqOc8sYoEmeuXZ/ApGHkxZZuwt.6UDAFkS', NULL, NULL, '2022-07-30 06:30:46', '2022-07-30 06:30:46'),
(9329, 3, 'NUR CAHYANI', '822041131033', NULL, NULL, '$2y$10$5g51/BHoOw2.n.VwrX49SeCXNkj1mGLXnWe4lFkmxmbZ09HwhCDp2', NULL, NULL, '2022-07-30 06:30:46', '2022-07-30 06:30:46'),
(9330, 3, 'UMRAH ARMADANI', '822040831023', NULL, NULL, '$2y$10$oZ/DKDrnL9m7xWgps6pYleU8AOCX.eph734VP3Evocv94RG414582', NULL, NULL, '2022-07-30 06:30:46', '2022-07-30 06:30:46'),
(9331, 3, 'HASRINA', '822041131005', NULL, NULL, '$2y$10$MGiUFGWUNOnG1zXPlH/huugcv4uujrovxWeSLYS9N6n/YlHgrRnTq', NULL, NULL, '2022-07-30 06:30:46', '2022-07-30 06:30:46'),
(9332, 3, 'NUR MAULIDIYAH MUJTAHID', '822040831006', NULL, NULL, '$2y$10$2UxkZz48PABjKb4TTOY8iOheUG9.IzgPPbZbajlrwFCbFh4eRutny', NULL, NULL, '2022-07-30 06:30:46', '2022-07-30 06:30:46'),
(9333, 3, 'A SITTI NURHALIZAH', '822040831025', NULL, NULL, '$2y$10$o4c6Q5orATvo4uG0PuaAleY.1a2ABRNIB51ELEUwl8gaBlWmtxCHi', NULL, NULL, '2022-07-30 06:30:46', '2022-07-30 06:30:46'),
(9334, 3, 'MELANI SEPTIA', '822040931014', NULL, NULL, '$2y$10$/2aqlVBMsT809L36UZ9B8Oqn49hfOJRX22SkyVd70xpjqMPMeg7yC', NULL, NULL, '2022-07-30 06:30:46', '2022-07-30 06:30:46'),
(9335, 3, 'ANDIRA', '822040831001', NULL, NULL, '$2y$10$K3KL8bCxJtBgXV2xwplbm.cBxgHFrgm81yGPgfP49HB3hNA8gKlOS', NULL, NULL, '2022-07-30 06:30:46', '2022-07-30 06:30:46'),
(9336, 3, 'SABRINA MAILA', '822041131021', NULL, NULL, '$2y$10$wWwtk4LvYepX6bqohOKNVOv8qpaLRH8IP0jg8y1OqdJCGj8p7D112', NULL, NULL, '2022-07-30 06:30:47', '2022-07-30 06:30:47'),
(9337, 3, 'ANNISA PUTRI PRATAMA', '822040831017', NULL, NULL, '$2y$10$ikLk82z11iVpv9Kio2elteFVoPQzuM8vsDadEdtGVyoCtwULofnb2', NULL, NULL, '2022-07-30 06:30:47', '2022-07-30 06:30:47'),
(9338, 3, 'SHEILA MONICA', '822040831013', NULL, NULL, '$2y$10$C9VOlFg7IT5myHDECIipyup9fqqxBm72nVmtaSpdVvLHd4oSOFnvC', NULL, NULL, '2022-07-30 06:30:47', '2022-07-30 06:30:47'),
(9339, 3, 'MUHAMMAD FARIK', '822041031007', NULL, NULL, '$2y$10$SAL3lTi.fLSAvJPesNzkiOG9FuwNMYXAPgJK6yrJ0QSR2AnFlhFK.', NULL, NULL, '2022-07-30 06:30:47', '2022-07-30 06:30:47'),
(9340, 3, 'ANY CHIN SU LEE', '822040831044', NULL, NULL, '$2y$10$aHyuVa3oeri9fO4kWBUq7.mLvyo5fHJyFV.FhBsQGLyrqRuVS65bm', NULL, NULL, '2022-07-30 06:30:47', '2022-07-30 06:30:47'),
(9341, 3, 'JUMANSYAH', '822041031020', NULL, NULL, '$2y$10$uNxQFGT5uLgIDRFdLbG0mu/X7fx.QcIsvz7T2hSutK085z3jkO93q', NULL, NULL, '2022-07-30 06:30:47', '2022-07-30 06:30:47'),
(9342, 3, 'MARSHANDA ANASTASYA REGINA', '822040831003', NULL, NULL, '$2y$10$PiG.a/QO6ifSSjH7r6QFAeAc4.qoBHLgyQTQaZhhb3n66qps3h76O', NULL, NULL, '2022-07-30 06:30:47', '2022-07-30 06:30:47'),
(9343, 3, 'ERMAWATI ABDUL SALAM', '822041031017', NULL, NULL, '$2y$10$f8Ro.Jjub4TpWMrsqNQR2u2EYo0/9FdM7RBN1TX1t9v.ToulCGZfS', NULL, NULL, '2022-07-30 06:30:47', '2022-07-30 06:30:47'),
(9344, 3, 'MUSAWAL MAJID MUSTAFA', '822040931009', NULL, NULL, '$2y$10$F29k0lYM/QSWqoLv1kQ3z.tm4AF0RDCjmGJvFa3Iz0LvpDhfiauaW', NULL, NULL, '2022-07-30 06:30:47', '2022-07-30 06:30:47'),
(9345, 3, 'MUH SHAFWAN ', '822041031001', NULL, NULL, '$2y$10$pCfi.TB6K9uYSmK.C6nASOhKrnpY6XOe3KVjn3Ldtp.RT/x2FxC5K', NULL, NULL, '2022-07-30 06:30:47', '2022-07-30 06:30:47'),
(9346, 3, 'INTAN JULYA SAPUTRI', '822041131004', NULL, NULL, '$2y$10$rzxuqRk92UK/xrBj1XeZ4OvJC.kXWeqi9HzrZDjP/6IA4lo.EiKKa', NULL, NULL, '2022-07-30 06:30:47', '2022-07-30 06:30:47'),
(9347, 3, 'INTAN', '822041031002', NULL, NULL, '$2y$10$x/LlAdjEuzZ/CaaUjRrlSOht1oKFOCg.J/IjlBAsTqLL6b1GME6X2', NULL, NULL, '2022-07-30 06:30:47', '2022-07-30 06:30:47'),
(9348, 3, 'ELSA ARISTI', '822041131002', NULL, NULL, '$2y$10$v/dWkWMUs0/YUafl7mOPdOchkAn6xwJrVMT5rDh4O0xtNsExgC0Ku', NULL, NULL, '2022-07-30 06:30:47', '2022-07-30 06:30:47'),
(9349, 3, 'MASSANGKA KARLIN KATI', '822041131032', NULL, NULL, '$2y$10$FyUrrPpGqHC9PaVaqXBYeevw6kyJRKVTpX3M.h68rk5DkUlQOQaNW', NULL, NULL, '2022-07-30 06:30:47', '2022-07-30 06:30:47'),
(9350, 3, 'RISKA', '822041131029', NULL, NULL, '$2y$10$JblFRDAwUUFtbUfeesEiw.BUCeFbwUr9.sKTq1VpBhxgNCx9i1ddq', NULL, NULL, '2022-07-30 06:30:48', '2022-07-30 06:30:48'),
(9351, 3, 'IKRAM PAGORAI', '822041131025', NULL, NULL, '$2y$10$Csy1TWfKZjGR5H9ChtzBlugt.d85pi51fbzKooJTj.ySibCn41F.i', NULL, NULL, '2022-07-30 06:30:48', '2022-07-30 06:30:48'),
(9352, 3, 'HUSNUL HATIMAH', '822041131023', NULL, NULL, '$2y$10$QTJeQ9m8UxCOQUkr3Rcdz.Bgq.SzsqlodN5Ux86Eg4k8NqFe1zWTi', NULL, NULL, '2022-07-30 06:30:48', '2022-07-30 06:30:48'),
(9353, 3, 'FAKHUL HABIBIE', '822041131008', NULL, NULL, '$2y$10$SN4C1VYggaavipMxWT0UKODz0/fnf2/Mvy/bdSgoNP4PJebesGB7u', NULL, NULL, '2022-07-30 06:30:48', '2022-07-30 06:30:48');
INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `ip_address`, `created_at`, `updated_at`) VALUES
(9354, 3, 'HUSNA WATI PUTRI', '822041131003', NULL, NULL, '$2y$10$fK6UGyCLH8zPc/uB8O.IyudyGObtZLHZf6LAQbiKAk/QnwAm3I4zy', NULL, NULL, '2022-07-30 06:30:48', '2022-07-30 06:30:48'),
(9355, 3, 'NUR SUCY AFIVAH ZULFAH RAHIM', '822041131009', NULL, NULL, '$2y$10$Tk33/uikxw/bTTJDYzT09eUwP7XNrsB6yHz3J3EkaU7SmoDVrV9wm', NULL, NULL, '2022-07-30 06:30:48', '2022-07-30 06:30:48'),
(9356, 3, 'ALIYA PUTRI TONANG', '822041131031', NULL, NULL, '$2y$10$syDHgkr6SmRLGOSKX9eysu9jkAq9uV3pbjSbRGV69l1LEk5xvGw7O', NULL, NULL, '2022-07-30 06:30:48', '2022-07-30 06:30:48'),
(9357, 3, 'RESKI AMELIA', '822041131016', NULL, NULL, '$2y$10$Ybf.dmbZ2XK7qWCI144YDO1HYl/iC8Nhl6/vQk46qAt9GZjuZW4kO', NULL, NULL, '2022-07-30 06:30:48', '2022-07-30 06:30:48'),
(9358, 3, 'DIMAS PRAMUDYA ', '822041131026', NULL, NULL, '$2y$10$9qpNQKLYM5b1IOSI9PO6p.aho3QJIjTlcvZXnG0vCcaNSeIyZqVVm', NULL, NULL, '2022-07-30 06:30:48', '2022-07-30 06:30:48'),
(9359, 3, 'MUHAMMAD DIHYAN SUDIRMAN', '822041031019', NULL, NULL, '$2y$10$PoqXQB9G/2fMc78ZT4fMl.PrwJptAcWc/ix14yeNtPW.YW9KcC5ja', NULL, NULL, '2022-07-30 06:30:48', '2022-07-30 06:30:48'),
(9360, 3, 'PUTRI SHEILA AMALIA', '822041131012', NULL, NULL, '$2y$10$V132xQR/Nyc8GMh6FpoaJ.Ou.q9u1lOMpVVOdBvK1Icf5.1bWsWJW', NULL, NULL, '2022-07-30 06:30:48', '2022-07-30 06:30:48'),
(9361, 3, 'NURHUDAYAH AHMAD', '822041131027', NULL, NULL, '$2y$10$bmQlmiPXCk2XaprGsqbkROuJgGuBLam3g0PJcq3/2b0cMvDZ/ozte', NULL, NULL, '2022-07-30 06:30:48', '2022-07-30 06:30:48'),
(9362, 3, 'NURUL FAHIRA HAERUNNISA', '822041131028', NULL, NULL, '$2y$10$DFKqgMAhCfHnBfXJ/T42FubApmsjMRm5VpSgSrBiQnIiWOPX3.6pe', NULL, NULL, '2022-07-30 06:30:48', '2022-07-30 06:30:48'),
(9363, 3, 'AGUSRANDI', '822041031003', NULL, NULL, '$2y$10$Qp4hvHExhiZklTRf9Eh3GuBEMP4Hs1mQpB8aZRvqRND1KfJe7anxS', NULL, NULL, '2022-07-30 06:30:48', '2022-07-30 06:30:48'),
(9364, 3, 'DESIYANA SALSABILLAH', '822041031006', NULL, NULL, '$2y$10$0SAU3cmj0G.C9DFwhLwqg./OMV9.Xry1aHoPDuycxM9mnujgrSwt2', NULL, NULL, '2022-07-30 06:30:48', '2022-07-30 06:30:48'),
(9365, 3, 'AISYAH PUTRI TONANG', '822041131001', NULL, NULL, '$2y$10$UgbmvRrAG9RvAJtQs6eOz.2G0GGNBN7ZASYOo4EN/mMM9mKeLqfCG', NULL, NULL, '2022-07-30 06:30:49', '2022-07-30 06:30:49'),
(9366, 3, 'MUH SAID', '822041131018', NULL, NULL, '$2y$10$N0C7CGrLe.M0.4HTk69Zced4taMSgS86VmCTB95ZlItmB81ACQtbC', NULL, NULL, '2022-07-30 06:30:49', '2022-07-30 06:30:49'),
(9367, 3, 'A NUR FATIMAH ZAHRA', '822041131015', NULL, NULL, '$2y$10$UR4EAr/fxrd9DWWmXZ5YoOQM7o8cbtAB1Wa/oGMY4WhTTEPjfig0W', NULL, NULL, '2022-07-30 06:30:49', '2022-07-30 06:30:49'),
(9368, 3, 'YORIZCHY MANGAPE', '822041031013', NULL, NULL, '$2y$10$eHySO3MK68MT2eBhoxGc3.RCzogh3gQWaMVcRi/X4hZZdv66ibPEK', NULL, NULL, '2022-07-30 06:30:49', '2022-07-30 06:30:49'),
(9369, 3, 'AMAR JAYA ADRIAN', '822041131014', NULL, NULL, '$2y$10$iOAMrhKAYULM.rTX9bJ3K.e/N7myh3RUn4hfDMUctBhoa8hWTgsyu', NULL, NULL, '2022-07-30 06:30:49', '2022-07-30 06:30:49'),
(9370, 3, 'ISMAIL SYAM', '822041131011', NULL, NULL, '$2y$10$PwYMEKvsLz5MjTk4Wi5Z5OG5Q8d7QBOWG9NB.LKR7Cl/gZREe7ydq', NULL, NULL, '2022-07-30 06:30:49', '2022-07-30 06:30:49'),
(9371, 3, 'NUR ALAMSYAH', '822041131007', NULL, NULL, '$2y$10$bkGsCcKerMg8DfHJL0keWeSOgFYRFSywrdIRltyO2Wa37HrERCimy', NULL, NULL, '2022-07-30 06:30:49', '2022-07-30 06:30:49'),
(9372, 3, 'testing', '123456789123', NULL, NULL, '$2y$10$kyZDxbpWLRmRb1h4Z/rqjuRqlJdu5iOchm8jcCr33wGIJBWkvRaze', NULL, NULL, '2022-07-30 06:30:49', '2022-07-30 06:30:49'),
(9373, 3, 'riyan', 'riyan', NULL, NULL, '$2y$10$q417wybvxGyCyFWfZDm/Teo0A9nsBRNSOXsYBPy68P7AZwnPi8ooq', NULL, NULL, '2023-07-07 13:58:24', '2023-07-07 13:58:24'),
(9374, 3, 'Fadel', 'adminasd', NULL, NULL, '$2y$10$xtqr8fOw2zwyAParZfEYD.easXb0vkkIJ2m4dtAaXVa8UrY5TaQ/a', NULL, NULL, '2023-07-07 14:26:20', '2023-07-07 14:26:20'),
(9375, 2, 'Fadel', 'fad', NULL, NULL, '$2y$10$nKpmSTVTnioiuDe9ULrPwehJckPpMw459nrr9hjUsn7IyxlpEoALa', NULL, NULL, '2023-07-07 14:37:44', '2023-07-07 14:37:44');

-- --------------------------------------------------------

--
-- Table structure for table `users_bcp`
--

CREATE TABLE `users_bcp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users_bcp`
--

INSERT INTO `users_bcp` (`id`, `role_id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `ip_address`, `created_at`, `updated_at`) VALUES
(2, 4, 'Gedung Pinisi Lt. 2&3 UNM Gunungsari', 'L01UNMC4T11', NULL, NULL, '$2y$10$Ng.u.KyG9XB7V4mLPC9XfOI2sJXsvITfeluuRLU7h5Y1uuWpVSkBW', NULL, '172.16.37.45', '2021-07-02 08:53:34', '2022-07-21 14:10:41'),
(3, 4, 'FMIPA I Gedung UNM Parangtambung', 'L02UNMC4T12', NULL, NULL, '$2y$10$DNzVCJlXPy2.ZQ6EBrM1Tu8HejniZojXpGgYfFAsNZtg4rXjB7AVG', NULL, '172.16.37.45', '2021-07-02 08:53:34', '2022-07-12 17:52:54'),
(4, 4, 'Gedung Pinisi Lt. 4 UNM Gunungsari', 'L03UNMC4T13', NULL, NULL, '$2y$10$UeJUfmu9NblkRzXxcNNauuPUz9qkE0hYos7wZoytYrskJiSC/vTcu', NULL, '172.16.37.45', '2021-07-02 08:53:34', '2022-07-12 17:53:24'),
(5, 4, 'Gedung Pinisi Lt. 9 UNM Gunungsari', 'L04UNMC4T14', NULL, NULL, '$2y$10$NQGurG416KjJfMwx35OmsulDAUhON/rfErfUtmazwTcYEDQzWkKtG', NULL, '172.16.37.45', '2021-07-02 08:53:34', '2022-07-13 17:11:31'),
(6, 4, 'Fakultas Psikologi UNM Gunungsari', 'L06UNMC4T15', NULL, NULL, '$2y$10$YUPj8HCd8N7PlDAd/N17uuIOH0TPxSbWWuV.e9SgtQRhh241mjLZS', NULL, '172.16.37.45', '2021-07-02 08:53:34', '2022-07-12 17:56:38'),
(7, 4, 'Fakultas Ekonomi UNM Gunungsari', 'L07UNMC4T16', NULL, NULL, '$2y$10$Ogzfx3a7zPLRaYbF.apue.aUyOLcRKNgMnuFTgwTFVTLC4SQlm.1m', NULL, '172.16.37.45', '2021-07-02 08:53:35', '2022-07-13 07:27:55'),
(8, 4, 'Fakultas Teknik UNM Parangtambung', 'L08UNMC4T17', NULL, NULL, '$2y$10$K/djPt14yOvBmn0KGnTju.W3WiMuSb9bcnBTer0U9pwubVjUq9OHu', NULL, '172.16.37.45', '2021-07-02 08:53:35', '2022-07-12 17:58:22'),
(9, 4, 'FMIPA Gedung Fisika UNM Parangtambung', 'L10UNMC4T18', NULL, NULL, '$2y$10$KjIGgTuX7dvL2uuMdBEBNeV5EkSA8fIjJmhNb3hSrKA2ov7N18HAW', NULL, '172.16.37.45', '2021-07-02 08:53:35', '2022-07-12 17:55:47'),
(10, 4, 'Fakultas Ilmu Pendidikan UNM Tidung', 'L13UNMC4T19', NULL, NULL, '$2y$10$vMLjNnR3W.EeuJDXauw8mexINbdNGCFPCa95.Cfhr.N9O0r2HLqPm', NULL, '172.16.37.45', '2021-07-02 08:53:35', '2022-07-30 03:36:40');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_calon`
-- (See below for the actual view)
--
CREATE TABLE `view_calon` (
`id` bigint(20) unsigned
,`username` varchar(255)
,`kode_kursus` varchar(255)
,`1` int(11)
,`2` int(11)
,`3` int(11)
,`4` int(11)
,`5` int(11)
,`6` int(11)
,`7` int(11)
,`8` int(11)
,`9` int(11)
,`10` int(11)
,`11` int(11)
,`12` int(11)
,`13` int(11)
,`14` int(11)
,`15` int(11)
,`16` int(11)
,`17` int(11)
,`18` int(11)
,`19` int(11)
,`20` int(11)
,`21` int(11)
,`22` int(11)
,`23` int(11)
,`24` int(11)
,`25` int(11)
,`26` int(11)
,`27` int(11)
,`28` int(11)
,`29` int(11)
,`30` int(11)
,`31` int(11)
,`32` int(11)
,`33` int(11)
,`34` int(11)
,`35` int(11)
,`36` int(11)
,`37` int(11)
,`38` int(11)
,`39` int(11)
,`40` int(11)
,`41` int(11)
,`42` int(11)
,`43` int(11)
,`44` int(11)
,`45` int(11)
,`46` int(11)
,`47` int(11)
,`48` int(11)
,`49` int(11)
,`50` int(11)
,`51` int(11)
,`52` int(11)
,`53` int(11)
,`54` int(11)
,`55` int(11)
,`56` int(11)
,`57` int(11)
,`58` int(11)
,`59` int(11)
,`60` int(11)
,`created_at` timestamp
,`updated_at` timestamp
,`nama` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_hasil`
-- (See below for the actual view)
--
CREATE TABLE `view_hasil` (
`nama` varchar(255)
,`username` varchar(255)
,`skor` decimal(32,0)
,`kode_jurusan` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_pengawas`
-- (See below for the actual view)
--
CREATE TABLE `view_pengawas` (
`id` bigint(20) unsigned
,`kode_ruangan` varchar(255)
,`kode_sesi` varchar(255)
,`nama` varchar(255)
,`username` varchar(255)
,`username_server` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `view_pengawas_peserta`
--

CREATE TABLE `view_pengawas_peserta` (
  `id` bigint(20) UNSIGNED DEFAULT NULL,
  `kode_ruangan` varchar(255) DEFAULT NULL,
  `kode_sesi` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `kode_jurusan` varchar(255) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username_server` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `view_pengawas_user`
--

CREATE TABLE `view_pengawas_user` (
  `id` bigint(20) UNSIGNED DEFAULT NULL,
  `kode_ruangan` varchar(255) DEFAULT NULL,
  `kode_sesi` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username_server` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `view_pengawas_user_hari`
--

CREATE TABLE `view_pengawas_user_hari` (
  `id` bigint(20) UNSIGNED DEFAULT NULL,
  `kode_ruangan` varchar(255) DEFAULT NULL,
  `kode_sesi` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `username_server` varchar(255) DEFAULT NULL,
  `nama_sesi` varchar(255) DEFAULT NULL,
  `nama_ruangan` varchar(255) DEFAULT NULL,
  `ujian_mulai` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure for view `kirim_jawaban`
--
DROP TABLE IF EXISTS `kirim_jawaban`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sql_cat_mandiri_`@`localhost` SQL SECURITY DEFINER VIEW `kirim_jawaban`  AS  select `answers`.`id` AS `id`,`answers`.`exam_id` AS `exam_id`,`answers`.`username` AS `username`,`answers`.`kode_kategori` AS `kode_kategori`,`answers`.`kode_kursus` AS `kode_kursus`,`answers`.`remaining_time_minute` AS `remaining_time_minute`,`answers`.`remaining_time_second` AS `remaining_time_second`,`answers`.`question_id` AS `question_id`,`answers`.`total_question` AS `total_question`,`answers`.`current_answer` AS `current_answer`,`answers`.`score` AS `score`,`exams`.`kode_ruangan` AS `kode_ruangan`,`exams`.`kode_sesi` AS `kode_sesi`,`exams`.`ujian_mulai` AS `ujian_mulai` from (`answers` join `exams` on(`answers`.`exam_id` = `exams`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_calon`
--
DROP TABLE IF EXISTS `view_calon`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sql_cat_mandiri_`@`localhost` SQL SECURITY DEFINER VIEW `view_calon`  AS  select `hasils`.`id` AS `id`,`hasils`.`username` AS `username`,`hasils`.`kode_kursus` AS `kode_kursus`,`hasils`.`1` AS `1`,`hasils`.`2` AS `2`,`hasils`.`3` AS `3`,`hasils`.`4` AS `4`,`hasils`.`5` AS `5`,`hasils`.`6` AS `6`,`hasils`.`7` AS `7`,`hasils`.`8` AS `8`,`hasils`.`9` AS `9`,`hasils`.`10` AS `10`,`hasils`.`11` AS `11`,`hasils`.`12` AS `12`,`hasils`.`13` AS `13`,`hasils`.`14` AS `14`,`hasils`.`15` AS `15`,`hasils`.`16` AS `16`,`hasils`.`17` AS `17`,`hasils`.`18` AS `18`,`hasils`.`19` AS `19`,`hasils`.`20` AS `20`,`hasils`.`21` AS `21`,`hasils`.`22` AS `22`,`hasils`.`23` AS `23`,`hasils`.`24` AS `24`,`hasils`.`25` AS `25`,`hasils`.`26` AS `26`,`hasils`.`27` AS `27`,`hasils`.`28` AS `28`,`hasils`.`29` AS `29`,`hasils`.`30` AS `30`,`hasils`.`31` AS `31`,`hasils`.`32` AS `32`,`hasils`.`33` AS `33`,`hasils`.`34` AS `34`,`hasils`.`35` AS `35`,`hasils`.`36` AS `36`,`hasils`.`37` AS `37`,`hasils`.`38` AS `38`,`hasils`.`39` AS `39`,`hasils`.`40` AS `40`,`hasils`.`41` AS `41`,`hasils`.`42` AS `42`,`hasils`.`43` AS `43`,`hasils`.`44` AS `44`,`hasils`.`45` AS `45`,`hasils`.`46` AS `46`,`hasils`.`47` AS `47`,`hasils`.`48` AS `48`,`hasils`.`49` AS `49`,`hasils`.`50` AS `50`,`hasils`.`51` AS `51`,`hasils`.`52` AS `52`,`hasils`.`53` AS `53`,`hasils`.`54` AS `54`,`hasils`.`55` AS `55`,`hasils`.`56` AS `56`,`hasils`.`57` AS `57`,`hasils`.`58` AS `58`,`hasils`.`59` AS `59`,`hasils`.`60` AS `60`,`hasils`.`created_at` AS `created_at`,`hasils`.`updated_at` AS `updated_at`,`students`.`nama` AS `nama` from (`students` join `hasils` on(`students`.`username` = `hasils`.`username`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_hasil`
--
DROP TABLE IF EXISTS `view_hasil`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sql_cat_mandiri_`@`localhost` SQL SECURITY DEFINER VIEW `view_hasil`  AS  select `students`.`nama` AS `nama`,`answers`.`username` AS `username`,sum(`answers`.`score`) AS `skor`,`students`.`kode_jurusan` AS `kode_jurusan` from (`answers` join `students` on(`answers`.`username` = `students`.`username`)) group by `answers`.`username` ;

-- --------------------------------------------------------

--
-- Structure for view `view_pengawas`
--
DROP TABLE IF EXISTS `view_pengawas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`sql_cat_mandiri_`@`localhost` SQL SECURITY DEFINER VIEW `view_pengawas`  AS  select `teachers`.`id` AS `id`,`teachers`.`kode_ruangan` AS `kode_ruangan`,`teachers`.`kode_sesi` AS `kode_sesi`,`teachers`.`nama` AS `nama`,`teachers`.`username` AS `username`,`server_details`.`username_server` AS `username_server` from (`server_details` join `teachers` on(`server_details`.`username_pengawas` = `teachers`.`username`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_courses`
--
ALTER TABLE `category_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_courses`
--
ALTER TABLE `category_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
