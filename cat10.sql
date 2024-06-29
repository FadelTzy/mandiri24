-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2023 at 12:47 PM
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
-- Database: `cat`
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
(1, '101', 'Kemampuan Verbal', 0, '2023-07-08 10:37:41', '2023-07-08 10:37:41'),
(2, '102', 'Kemampuan Numerik', 0, '2023-07-08 10:37:41', '2023-07-08 10:37:41'),
(3, '103', 'Kemampuan Penalaran Logis', 0, '2023-07-08 10:37:41', '2023-07-08 10:37:41'),
(4, '201', 'Kemampuan Verbal', 0, '2023-07-08 10:37:42', '2023-07-08 10:37:42'),
(5, '202', 'Kemampuan Numerik', 0, '2023-07-08 10:37:42', '2023-07-08 10:37:42'),
(6, '203', 'Kemampuan Penalaran Logis', 0, '2023-07-08 10:37:42', '2023-07-08 10:37:42'),
(7, '301', 'Kemampuan Verbal', 0, '2023-07-08 10:37:42', '2023-07-08 10:37:42'),
(8, '302', 'Kemampuan Numerik', 0, '2023-07-08 10:37:42', '2023-07-08 10:37:42'),
(9, '303', 'Kemampuan Penalaran Logis', 0, '2023-07-08 10:37:42', '2023-07-08 10:37:42'),
(10, '401', 'Kemampuan Verbal', 0, '2023-07-08 10:37:42', '2023-07-08 10:37:42'),
(11, '402', 'Kemampuan Numerik', 0, '2023-07-08 10:37:42', '2023-07-08 10:37:42'),
(12, '403', 'Kemampuan Penalaran Logis', 0, '2023-07-08 10:37:42', '2023-07-08 10:37:42'),
(13, '601', 'Kemampuan Verbal', 0, '2023-07-08 10:37:42', '2023-07-08 10:37:42'),
(14, '602', 'Kemampuan Numerik', 0, '2023-07-08 10:37:42', '2023-07-08 10:37:42'),
(15, '603', 'Kemampuan Penalaran Logis', 0, '2023-07-08 10:37:42', '2023-07-08 10:37:42'),
(16, '501', 'Kemampuan Verbal', 0, '2023-07-08 10:37:42', '2023-07-08 10:37:42'),
(17, '502', 'Kemampuan Numerik', 0, '2023-07-08 10:37:42', '2023-07-08 10:37:42'),
(18, '503', 'Kemampuan Penalaran Logis', 0, '2023-07-08 10:37:42', '2023-07-08 10:37:42');

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

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `kode_ruangan`, `nama_ruangan`, `kode`, `created_at`, `updated_at`) VALUES
(1, '0101', 'ICT Center Lantai 4 Labkom 1', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(2, '0102', 'ICT Center Lantai 4 Labkom 2', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(3, '0103', 'ICT Center Lantai 4 Labkom 3', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(4, '0204', 'ICT Center Lantai 3 Labkom 4', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(5, '0205', 'ICT Center Lantai 3 Labkom 5', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(6, '0306', 'ICT Center Lantai 2 Labkom 10', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(7, '0307', 'ICT Center Lantai 2 Labkom 11', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(8, '0408', 'ICT Center Lantai 9 Labkom 6', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(9, '0409', 'ICT Center Lantai 9 Labkom 7', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(10, '0410', 'ICT Center Lantai 9 Labkom 8', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(11, '0411', 'ICT Center Lantai 9 Labkom 9', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(12, '0512', 'FIS Lab Terpadu', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(13, '0613', 'FPsi Labkom', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(14, '0614', 'FPsi Rg. Psikodiagnostik', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(15, '0715', 'FE Lab Pend. Ekonomi', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(16, '0716', 'FE Lab Manajemen', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(17, '0717', 'FE Lab Ekonomi Pembangunan', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(18, '0718', 'FE Lab Akuntansi', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(19, '0819', 'FT Studio Multimedia', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(20, '0820', 'FT Lab Jarkom JTIK', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(21, '0821', 'FT Lab Embended JTIK', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(22, '0822', 'FT Lab Mesin', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(23, '0923', 'FMIPA Lab Statistik lt. 9', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(24, '0924', 'FMIPA Lab Matematika lt. 4', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(25, '0925', 'FMIPA Lab Geografi lt. 8', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(26, '0926', 'FMIPA Lab Kimia lt. 6', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(27, '1027', 'FMIPA Labkom Fisika 1', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(28, '1028', 'FMIPA Labkom Fisika 2', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(29, '1331', 'FIP Labkom 1', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(30, '1332', 'FIP Labkom PLS', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47');

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
(1, '11', 'SESI-11', '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(2, '12', 'SESI-12', '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(3, '13', 'SESI-13', '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(4, '14', 'SESI-14', '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(5, '15', 'SESI-15', '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(6, '16', 'SESI-16', '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(7, '21', 'SESI-21', '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(8, '22', 'SESI-22', '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(9, '23', 'SESI-23', '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(10, '24', 'SESI-24', '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(11, '25', 'SESI-25', '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(12, '26', 'SESI-26', '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(13, '31', 'SESI-31', '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(14, '32', 'SESI 32', '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(15, '33', 'SESI 33', '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(16, '34', 'SESI 34', '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(17, '35', 'SESI 35', '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(18, '36', 'SESI 36', '2023-07-08 10:37:47', '2023-07-08 10:37:47');

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

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `kode_ruangan`, `kode_sesi`, `nama`, `username`, `kode`, `created_at`, `updated_at`) VALUES
(1, '0101', '11', 'ICT Center Lantai 4 Labkom 1', '1010281', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(2, '0102', '11', 'ICT Center Lantai 4 Labkom 2', '1010282', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(3, '0103', '11', 'ICT Center Lantai 4 Labkom 3', '1010283', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(4, '0101', '12', 'ICT Center Lantai 4 Labkom 1', '1010311', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(5, '0102', '12', 'ICT Center Lantai 4 Labkom 2', '1010312', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(6, '0103', '12', 'ICT Center Lantai 4 Labkom 3', '1010313', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(7, '0101', '13', 'ICT Center Lantai 4 Labkom 1', '1010341', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(8, '0102', '13', 'ICT Center Lantai 4 Labkom 2', '1010342', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(9, '0103', '13', 'ICT Center Lantai 4 Labkom 3', '1010343', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(10, '0101', '14', 'ICT Center Lantai 4 Labkom 1', '1010371', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(11, '0102', '14', 'ICT Center Lantai 4 Labkom 2', '1010372', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(12, '0103', '14', 'ICT Center Lantai 4 Labkom 3', '1010373', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(13, '0101', '15', 'ICT Center Lantai 4 Labkom 1', '1010401', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(14, '0102', '15', 'ICT Center Lantai 4 Labkom 2', '1010402', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(15, '0103', '15', 'ICT Center Lantai 4 Labkom 3', '1010403', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(16, '0101', '16', 'ICT Center Lantai 4 Labkom 1', '1010431', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(17, '0102', '16', 'ICT Center Lantai 4 Labkom 2', '1010432', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(18, '0103', '16', 'ICT Center Lantai 4 Labkom 3', '1010433', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(19, '0101', '21', 'ICT Center Lantai 4 Labkom 1', '1010461', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(20, '0102', '21', 'ICT Center Lantai 4 Labkom 2', '1010462', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(21, '0103', '21', 'ICT Center Lantai 4 Labkom 3', '1010463', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(22, '0101', '22', 'ICT Center Lantai 4 Labkom 1', '1010491', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(23, '0102', '22', 'ICT Center Lantai 4 Labkom 2', '1010492', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(24, '0103', '22', 'ICT Center Lantai 4 Labkom 3', '1010493', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(25, '0101', '23', 'ICT Center Lantai 4 Labkom 1', '1010521', NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(26, '0102', '23', 'ICT Center Lantai 4 Labkom 2', '1010522', NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(27, '0103', '23', 'ICT Center Lantai 4 Labkom 3', '1010523', NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48');

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
(8804, 4, 'Gedung Pinisi Lt. 2&3 UNM Gunungsari', 'L01UNMC4T11', NULL, NULL, '$2y$10$7HPTbkEXpFxGzwsb.9J4CeDVR2xrFYMd5hgku1lCXIHrfZHVXLkXe', NULL, '103.76.50.149', '2022-07-30 03:43:28', '2023-07-08 16:41:51'),
(8805, 4, 'FMIPA I Gedung UNM Parangtambung', 'L02UNMC4T12', NULL, NULL, '$2y$10$J/D0U0s/fzxM6LQrWwcVlOb1igBi34hrkgpBD07lgqc.xlj9I6.ii', NULL, NULL, '2022-07-30 03:43:28', '2023-07-08 16:32:49'),
(8806, 4, 'Gedung Pinisi Lt. 4 UNM Gunungsari', 'L03UNMC4T13', NULL, NULL, '$2y$10$l.Ch/9Bq7K7rvhQDGL7J3emQAD4kDWbBaRgVXL8p46qnoJ/5BkxXi', NULL, '127.0.0.1', '2022-07-30 03:43:28', '2023-07-08 10:32:54'),
(8807, 4, 'Gedung Pinisi Lt. 9 UNM Gunungsari', 'L04UNMC4T14', NULL, NULL, '$2y$10$evz2piSRJD8AvxoYXP1IJ.3AwExiwndJFd/VxccNS.RMWyAmtOYAe', NULL, NULL, '2022-07-30 03:43:28', '2023-07-08 16:32:56'),
(8808, 4, 'Fakultas Psikologi UNM Gunungsari', 'L06UNMC4T15', NULL, NULL, '$2y$10$t6QtM38UL9BZhoAfAxXsxuKTkNLK3Os7unT09As1ChqqmtDoINhxG', NULL, NULL, '2022-07-30 03:43:28', '2022-07-30 03:43:28'),
(8809, 4, 'Fakultas Ekonomi UNM Gunungsari', 'L07UNMC4T16', NULL, NULL, '$2y$10$Po3pPUioaDq7Btw7dLQzj.3ImwAIxlBvoNoRZRUUV2V9jnpW4LKWe', NULL, '172.16.37.45', '2022-07-30 03:43:28', '2022-07-30 04:48:00'),
(8810, 4, 'Fakultas Teknik UNM Parangtambung', 'L08UNMC4T17', NULL, NULL, '$2y$10$Fk5Jv1UptuDiB8Mv0Alz2exTTQ6SXbJzOBI/sGbwSDRbzl7gLqZ0W', NULL, NULL, '2022-07-30 03:43:28', '2022-07-30 03:43:28'),
(8811, 4, 'FMIPA Gedung Fisika UNM Parangtambung', 'L10UNMC4T18', NULL, NULL, '$2y$10$4VKDr7OoKSF4rIA3OItIj.8Z.FpbnzyeM09spGrF4ThgstiiiDSCq', NULL, NULL, '2022-07-30 03:43:28', '2022-07-30 03:43:28'),
(8812, 4, 'Fakultas Ilmu Pendidikan UNM Tidung', 'L13UNMC4T19', NULL, NULL, '$2y$10$VTUEwn.tdpWLTrgtFR103edY/XtcI93dFaD1yf4VkfqS.i4Y6TG9y', NULL, NULL, '2022-07-30 03:43:28', '2022-07-30 03:43:28'),
(11845, 2, 'ICT Center Lantai 4 Labkom 1', '1010281', NULL, NULL, '$2y$10$p5L07jWTvU7QHgmeBKuhouor006t6.HPxSMjY0SL1qGUc2Gq/hp1e', NULL, NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(11846, 2, 'ICT Center Lantai 4 Labkom 2', '1010282', NULL, NULL, '$2y$10$O8jY.840ivrmbuTOmgn8ce8goHOZkj2SGlNsFhEXGUIk3YLnNr/ty', NULL, NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(11847, 2, 'ICT Center Lantai 4 Labkom 3', '1010283', NULL, NULL, '$2y$10$RNQ4svNKo8cC98oYYrFa3usaJYt2/iXj1MtdBkuWpg.n0QGeYY2u2', NULL, NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(11848, 2, 'ICT Center Lantai 4 Labkom 1', '1010311', NULL, NULL, '$2y$10$X9oaqFqyyJ4dGHjD5MONDubFJICD9sK8UvWwlI1q5OT0tXY8k4viW', NULL, NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(11849, 2, 'ICT Center Lantai 4 Labkom 2', '1010312', NULL, NULL, '$2y$10$aOfv5AcKGEU2k15bku4.neqa9cDkn4Eh9/wOX7DEVESxMYJGY5.4C', NULL, NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(11850, 2, 'ICT Center Lantai 4 Labkom 3', '1010313', NULL, NULL, '$2y$10$g92t.f1Th7u/Re1qqQoX.udemakiv/baaXZa2zMQjkBDt8FVHgjWW', NULL, NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(11851, 2, 'ICT Center Lantai 4 Labkom 1', '1010341', NULL, NULL, '$2y$10$bG/AQGE5xe7ZuQxtGxj7hOT8Xv6K099Lf.kdY2kXrzrzRm4S2qflK', NULL, NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(11852, 2, 'ICT Center Lantai 4 Labkom 2', '1010342', NULL, NULL, '$2y$10$h4ZuRaD6PVGlnbh/pQSmCeXG/bMmrHxYFGg5VdBAF5AF49hC9UmsW', NULL, NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(11853, 2, 'ICT Center Lantai 4 Labkom 3', '1010343', NULL, NULL, '$2y$10$7g1S16GLj5nUrhBOHn8xZOHvwVTtgJHrWSZutv4L2s/bSfhazUfhC', NULL, NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(11854, 2, 'ICT Center Lantai 4 Labkom 1', '1010371', NULL, NULL, '$2y$10$jj0iw51rfAE7uyM4..iP9O6y7r46TKbpRbMFzzKuQWoIWaKCd4May', NULL, NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(11855, 2, 'ICT Center Lantai 4 Labkom 2', '1010372', NULL, NULL, '$2y$10$xN29l0yYy3Z7kdWFN0gnpe5/8xPnfBigt.ZHoFoHWGLr6ml/pDlPe', NULL, NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(11856, 2, 'ICT Center Lantai 4 Labkom 3', '1010373', NULL, NULL, '$2y$10$8xeiBoPGZxdgHSy0LiGu8eDcEojbcNQqKWsXfbfw2CDi0Xv7y8hLO', NULL, NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(11857, 2, 'ICT Center Lantai 4 Labkom 1', '1010401', NULL, NULL, '$2y$10$ExWXV9muU/uO5iqChBuIAuXTRkG3LbSaeM9BYkwUfAxDCnpUmopNa', NULL, NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(11858, 2, 'ICT Center Lantai 4 Labkom 2', '1010402', NULL, NULL, '$2y$10$qaIy.Zqztg.PEAn8SIaIE.JuabQ0x/eb17dEVDSs5xBeMRnnSkuPW', NULL, NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(11859, 2, 'ICT Center Lantai 4 Labkom 3', '1010403', NULL, NULL, '$2y$10$b3zFTIVCziwHJWR.D0CPpeVzojYtTTIV/TlE26vjSG58hMvcsOdMW', NULL, NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(11860, 2, 'ICT Center Lantai 4 Labkom 1', '1010431', NULL, NULL, '$2y$10$5OlXXh53IY.hVTWb1j3IO.aP.VnWF/i8tObRyti2bEkMgRr/H55ZS', NULL, NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(11861, 2, 'ICT Center Lantai 4 Labkom 2', '1010432', NULL, NULL, '$2y$10$yPQbwvyjrDCWi25KW2qbhuRxye7GCRagA85lePu8wfxWlhJ93rtVy', NULL, NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(11862, 2, 'ICT Center Lantai 4 Labkom 3', '1010433', NULL, NULL, '$2y$10$CCuvgzYXEGiezK7YKSi99ufwCoC3Jb8LxXpc2a9PiustJTLU83GTi', NULL, NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(11863, 2, 'ICT Center Lantai 4 Labkom 1', '1010461', NULL, NULL, '$2y$10$x5lWLQFrW..E1ZQnYzrdZO.7yRTP0DVhct0lWBehpmE5x/dYuiou.', NULL, NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(11864, 2, 'ICT Center Lantai 4 Labkom 2', '1010462', NULL, NULL, '$2y$10$/OVKZgq4oMu7cvBNoRsvee2yMzrsQQxZWFPyenWf4eYLTkZdray6O', NULL, NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(11865, 2, 'ICT Center Lantai 4 Labkom 3', '1010463', NULL, NULL, '$2y$10$GtaAvV4bfN94/D6PvW9A1uwzKxR4RwB.unZ.Dr.fhi3v8ERMs7G2m', NULL, NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(11866, 2, 'ICT Center Lantai 4 Labkom 1', '1010491', NULL, NULL, '$2y$10$c3AwW9xwynQ9Yc9w9P7jZeSc99fSv8W4lBt4syLaqW.vioO6wpWN6', NULL, NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(11867, 2, 'ICT Center Lantai 4 Labkom 2', '1010492', NULL, NULL, '$2y$10$WgkbieASWqyjFSpqd.Nab.i/hOTItzP6mCF6Q.EbzFQ7udn4.5m02', NULL, NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(11868, 2, 'ICT Center Lantai 4 Labkom 3', '1010493', NULL, NULL, '$2y$10$n4xgIwgEtgucdIm/KpceXeoYZ30fSaFXb3Q44rbc6JcmTKrHkDY6O', NULL, NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(11869, 2, 'ICT Center Lantai 4 Labkom 1', '1010521', NULL, NULL, '$2y$10$rTDMRR.XZ2e.JJSgKU8A7OdVUuhLvBhyeBbwUjDIXgz5Dd08jpQvm', NULL, NULL, '2023-07-08 10:37:47', '2023-07-08 10:37:47'),
(11870, 2, 'ICT Center Lantai 4 Labkom 2', '1010522', NULL, NULL, '$2y$10$BfJYfTDdrcSgiXwElfDLBON8knaTfZ1aeEwIDjwkpobKA3kHy5YUW', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11871, 2, 'ICT Center Lantai 4 Labkom 3', '1010523', NULL, NULL, '$2y$10$pMVUDncHpujd9xvZZjK8Gehr6/tNVdbBlR1oMYTFZKf6OlB056bzu', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11872, 3, 'SANDRINA NABIHAH', '823010111001', NULL, NULL, '$2y$10$yw0Evgkj/SM.UaOOVaVCS.R6.jefTt0KPONQ6uSLTOL9kyHQuSqm.', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11873, 3, 'VINGKI SUBUR', '823010111002', NULL, NULL, '$2y$10$Jh5wtM3LFf.rtQd62tqKe.DfnOlX5ZPgPXkT6qe2AWcGON8ezXxxm', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11874, 3, 'MARWAH FITRIAH', '823010111003', NULL, NULL, '$2y$10$eLFAYUUG3W4OSTmdtr35JOo0C3G.xutSwKf1AERfTdATE6Cdp35UG', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11875, 3, 'NURATIKA JAMHUR', '823010111004', NULL, NULL, '$2y$10$G2TlS7cNtQFsaKMOdiJ7k.DOy3zNLWnHzbhlN1jUjaoIvAJEPLI22', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11876, 3, 'STEVAN REZKI ALVIANAR', '823010111005', NULL, NULL, '$2y$10$mIKEfQrmL.qTDTdJ8PYKaO1u7dV/LZ8WW7VpO3yRZSUtjNd0kJ98O', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11877, 3, 'SABIR', '823010111006', NULL, NULL, '$2y$10$YLq3HXOWBUZruGJRHIelyO2zDRp40t.KSqPkCp7S4nvQ3bYqncT3O', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11878, 3, 'MUHAMMAD FAUZAN', '823010111007', NULL, NULL, '$2y$10$fmEK.xLUjanpvuXtLgtz9OyTgDUHDsfOix30eHxby34ZCd13ilcvK', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11879, 3, 'FITRI ALIFIA AFRILYTA ', '823010111008', NULL, NULL, '$2y$10$FlxDvjJDMrWtPvehhJPt3uU9DZ.zU27w9ffojBmDsTyrijbXBDXQG', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11880, 3, 'NURUL AULIA', '823010111009', NULL, NULL, '$2y$10$aKOBrgBBJJehICfeTKwosuZTyBymyOX2PrUUaVkv8qw1WXQOXuy6W', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11881, 3, 'NILAM AYU SAPUTRI', '823010111010', NULL, NULL, '$2y$10$UnYEv6STP811wMbSnMOdzO8A2VMjBsVwligrx8fcMmf9Ns1WREtwO', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11882, 3, 'AHMAD FARHAN MISBAHUL', '823010111011', NULL, NULL, '$2y$10$Q/eM621qvPmiPx/SAiw1XuQrK4WlbTeV5R981yVcuAqDGAdovgNlO', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11883, 3, 'MUHAMMAD NUR NASRULLAH RAMADHAN', '823010111012', NULL, NULL, '$2y$10$/z0Z5Pbfc18d0VZVD7DK.uhvGKmWfhdy7skI1/pMnMzBHnpPQvn/O', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11884, 3, 'FITRIANA FEBRIANDINI ', '823010111013', NULL, NULL, '$2y$10$VViEKeLeWZt6yZO3smjnkOkae1l2WfPriE26FARZPvV7pCY5eQUiO', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11885, 3, 'MUH YASIR', '823010111014', NULL, NULL, '$2y$10$2Vkm.r27apdRy4Jn3/MKIe0EGThx6cNXatzc4LuCGzPIO7ErNLG/i', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11886, 3, 'ANDI MUHAMMAD ICHSAN SYAHAB', '823010111015', NULL, NULL, '$2y$10$ZciTLM2rPrY2tyVg0OQVBOLtDI9gDbfLcVzHVFi6l7KQ/UqajXQui', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11887, 3, 'MUHRIFQI', '823010111016', NULL, NULL, '$2y$10$jZNpxmCNBxhnIyfF1FNo3eXMAFYEbE4TfBBo1X3FSEaJ9bKmZ53Oa', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11888, 3, 'RISMALA', '823010111017', NULL, NULL, '$2y$10$MRr9RYXvWb7IqsXCeonWU.mQ6hM0iZuZCwNw8EAPpqHrRysNVCGF6', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11889, 3, 'SYAHREZA PAHLEVI EKA PUTRA', '823010111018', NULL, NULL, '$2y$10$4GRF2.lqTY1aKzeYfwb5ReKLoNVz0u.lMYocZoufRqcV9QfQMrDGK', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11890, 3, 'NABILA DWI ANUGRA', '823010111019', NULL, NULL, '$2y$10$RlTrD.uiHWHHD5vVMp7OY.lleSkse.1VEYKVxWZ3U7yHkmkBUIuSG', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11891, 3, 'ARVANITA AWALIA RAMADANI', '823010111020', NULL, NULL, '$2y$10$1Xq7ST/hi6RrFbukjvAgduFoUoX6olvblQHocun7dKhcLKdQCybHi', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11892, 3, 'SYAQIRAH NADIYAH NURKHOLIZA ', '823010111021', NULL, NULL, '$2y$10$pjSPN6UJOlwG1ePRCuGEfuZYGyfd0FtEp2l8hWA0ny5z6I8BqagzG', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11893, 3, 'JHOHAN BASTIAN', '823010111022', NULL, NULL, '$2y$10$yYXsfdFwb9VOtX25oa6rBOcu2zD3BvLbHetqoBq9wZroFSlU0E/7e', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11894, 3, 'ANDI MUH WAHYU EFFENDY', '823010111023', NULL, NULL, '$2y$10$2ktG0NR6/mBAT/rRFlTU4.4AN9LdNnxyyYEuFJbp3TiolILNCkd4K', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11895, 3, 'FITRI ASTIKA SARI', '823010111024', NULL, NULL, '$2y$10$dWU1tywx4pZpons4gmVkR.1FR/u3fddUfqiYkDoN35TNGZmZBsc7e', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11896, 3, 'NADIYAH AMIRACH M', '823010111025', NULL, NULL, '$2y$10$ipQFjs/skesDJkXibSZF7uhDfMd/Z6N.nYPBZ24Ox0rOgnvp7XQtu', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11897, 3, 'MUHAMMAD IDHAM ZUL HAQ\'UL', '823010111026', NULL, NULL, '$2y$10$B3sNS5bBSTSAtgHFRaCkguCIrAPSeiCGOoGPOBkQ1q0RvG6m./K6i', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11898, 3, 'SURAHMI', '823010111027', NULL, NULL, '$2y$10$evBdBLS9LBXXuAJh4UysE.lJkcJKxYYfLcza2TRXTg4dmS19bsdAW', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11899, 3, 'NILNA ALFIYATUM NIKMAH', '823010111028', NULL, NULL, '$2y$10$N703lh4usGs4cd3B.hTN4O5j05nIsvnHMcDri1pmu6WIajmrAo/N2', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11900, 3, 'BONITO KRISTIAN PARETTA', '823010111029', NULL, NULL, '$2y$10$ol1LvT3y0/7iIwFhgdloh.4LDIU7rEysVqGSEcIXj6HRB4iQWkCj.', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11901, 3, 'INDRA FARMI', '823010111030', NULL, NULL, '$2y$10$BqzQNYpC9UQPCE/FzNyPPu/6KhoSsoQpPFFyrWh/IiCvETSjpC3Dq', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11902, 3, 'SYAKIRA', '823010111031', NULL, NULL, '$2y$10$Vdoco3KCzC2TtHNGX5P/POfKLulxz.3h8gVcfH1MvX6UqviRZfz.K', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11903, 3, 'KURNIAWAN DWILIANTO D ', '823010111032', NULL, NULL, '$2y$10$1JssWRYETDsWor1m.QWeZOyGsLcThVr8bZHUbzBpPmxPR9FBiNp7K', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11904, 3, 'FIRMANSYAH OSI', '823010111033', NULL, NULL, '$2y$10$ypVOvvtkQh5SKyGWMsT82egoIBdquFxqYH4TOq4rVD.tK.KQKN826', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11905, 3, 'MIFTAHUL KHAERI ', '823010111034', NULL, NULL, '$2y$10$DtU0Je8h1R4U5HQxCAFsxumNEjMwXpo5mV6RZZmDIw9gE91w6sjfC', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11906, 3, 'ANDI RASYIIQAH SHAABIRAH ', '823010111035', NULL, NULL, '$2y$10$EdkSKFMQh18WhDBzLyKkr./Peb8dDYQKKxJ8DENo7Z.QxxudifhWu', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11907, 3, 'RESTI WULANDARI', '823010111036', NULL, NULL, '$2y$10$O5LlL2mgVwYmU96MVfwFPe5b/YdS00OsOLzNsVzwq7ni21wyP5uFK', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11908, 3, 'ANGGRENI SULTRIANA', '823010111037', NULL, NULL, '$2y$10$kDIP.egmE61H8gKnH07BFeRsidktlkrppCV0izqL4CMkQo/4sbeZu', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11909, 3, 'MUH ALANTRI', '823010111038', NULL, NULL, '$2y$10$bn80mUfyYa05vM4LpUycX.Wdmr2F4UMh3o3bKVqa9T8GBC3IqF.WG', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11910, 3, 'NURTIN DWI PUTRI', '823010111039', NULL, NULL, '$2y$10$CRCkBsep77jdchlyxrWtmODLXjjy.fne0lJtf4U4mFRta45Yxby3u', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11911, 3, 'BAGAS NOPRIYANTO', '823010111040', NULL, NULL, '$2y$10$raPi5ZmOCHB25wyYGv77DOEdBZXCUOSwr5g3jtKhjYFvSY.qzWHe2', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11912, 3, 'HELVIANA', '823010111041', NULL, NULL, '$2y$10$jXCBmp7QvrJdeVOUqRf7BeJ2fk9q/4ZplS2nTHGCUDGqT/Ilvs9kK', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11913, 3, 'ANDIMUHAKSAAKBAR', '823010111042', NULL, NULL, '$2y$10$Mwb94of6tmjazcQ1JVwwoOro7SJ/L5YGZb7zY9jzZYsqGKikQ0g2y', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11914, 3, 'AFIQAH IDRIS', '823010112001', NULL, NULL, '$2y$10$z4laaJ1eBW.v1bBMd2.fSeZthYCtCa02aZuyJVtS3qCfQBFDPo8G.', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11915, 3, 'M NURRAHMAN ', '823010112002', NULL, NULL, '$2y$10$jxRJGYHcHSDlFh4tPPQ9VOD/KnsBBQT5AtGnnPtWtxq6irf.fAbGi', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11916, 3, 'MUH NUR FEBRIANSYAH AKHMAD', '823010112003', NULL, NULL, '$2y$10$oSq9wu3SdL7Xs3bUHOncK.M4IUYb9XBKDqFmP9sXh6YTC60zsMqxu', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11917, 3, 'GARNETA SEKAR ARILIA PUTRI', '823010112004', NULL, NULL, '$2y$10$mWcsHL7eKL.jLYYlTKGgUOEhkzsib1OtQZHCPsBjgeKuYNZ7n9po2', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11918, 3, 'ABD KHAIRUL AZKA', '823010112005', NULL, NULL, '$2y$10$GUpmy5rVYesBjmZ30oacheYPaNa7U/ZisS9f2u7VElI6Y2F/fbZSy', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11919, 3, 'KHALIMATU SADDIYAH', '823010112006', NULL, NULL, '$2y$10$jTFDrUjeFZrTw6kOrpbNHeZNOs3467VaBF1a42.3d1iBv/e5y1h8C', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11920, 3, 'NAURA RESKI AMALIA ', '823010112007', NULL, NULL, '$2y$10$Pkk.jS5SY0poE9Y60qkQZu5d8bH7J8iuVuiirWyAASg3EgyDwiwWO', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11921, 3, 'ANDINI', '823010112008', NULL, NULL, '$2y$10$sh.nJR.l/hWC9KfqiT6teeQJcY7FHO1.CwVt7bmDvJaq4WqcSriNW', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11922, 3, 'ANDI NABILA NASYIFAH HASBI', '823010112009', NULL, NULL, '$2y$10$mU4ivHdYIvS5kz8dw.DURORaXCRbIL8iGVckkVNqB2LJTl5HXQLby', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11923, 3, 'RIFDAH SUCI NURAHMA', '823010112010', NULL, NULL, '$2y$10$MP5O55d8MR/dqxUTvVPJaehWONmOEH2ULxuvjDQuB77fT3f37Q0/G', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11924, 3, 'SITI NUR ALIYAH PABICARA', '823010112011', NULL, NULL, '$2y$10$g9ere1RewLC1k1swz.Di.uciyQVf5FHRarUTxOVktGzcsQ6MyOk/W', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11925, 3, 'OSVALDO FRENDY TANGKE DATU', '823010112012', NULL, NULL, '$2y$10$wctDGbUKIpuy4ngBZk5IS.hx0xnHCME/hBPAtEDfXVnk/JGkLDiCe', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11926, 3, 'NURAFNY PUTRY SOFYAN', '823010112013', NULL, NULL, '$2y$10$zCnM7BZlKGHbcffpyKP4gOBOG5K.j5z3vWsiQ52NtPcvGwF2/QQLW', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11927, 3, 'RESKI AMELIANTI', '823010112014', NULL, NULL, '$2y$10$CaZPOzb8lo1HxjNHRvpgHORQoz6W0BRzG2o4xv51SiOI2l7OV7Egi', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11928, 3, 'RIFKA NURPADILA', '823010112015', NULL, NULL, '$2y$10$sGY3yuW2CpCiIMV9s3j2GOdwY0KoVNwBakOQFgC7u4WNk4ltVobsC', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11929, 3, 'ELTA TAMPANG', '823010112016', NULL, NULL, '$2y$10$.3MXHfZgK5SJBNUy3Mj7aOXZ.B1C51umUzj45mBkNbN9EZrpF765.', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11930, 3, 'AGUNG', '823010112017', NULL, NULL, '$2y$10$bUYtdqXdZ7Oyjrtb2zC3VOleN8/ZeYw3/jYakFkJEZVDP24FH60dm', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11931, 3, 'MEILINN AMALIAH PUTRI', '823010112018', NULL, NULL, '$2y$10$0GYA16ZZCsb75g5mYrOanOxnR6sm0pnJY5skZuDDCWQffv1U9t9JK', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11932, 3, 'MUH IKRAM SAPUTRA', '823010112019', NULL, NULL, '$2y$10$rR2eq8HV3AlPC1OrTGPekOn4WBu5ySRuXn3T/m5v.0naQzYCTClqa', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11933, 3, 'KHAIRUN NISA ANNABILA MAKKARUDDIN', '823010112020', NULL, NULL, '$2y$10$MbptjuCFCkdSSh4I8A8UBuKoClsPWuvta0rywxhtmmu1EuOyUhizq', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11934, 3, 'ADITIYA SAPUTRA', '823010112021', NULL, NULL, '$2y$10$mC7g25uMuUiV3tumEWZn7..QsLKHw1k44l5QUOVJzvXMl2afJLuNG', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11935, 3, 'MUH FAHRIL S', '823010112022', NULL, NULL, '$2y$10$KnU4PEpX7DnFJ9B.jDDiX.N4OhoLwn86M0YEws0ntv5KHllNWDH8y', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11936, 3, 'MUH AQIL RISQULLAH', '823010112023', NULL, NULL, '$2y$10$1rF.hWbylqKUU8SFPdYZIOhj4KAxfU/qJCyUN1Z8w17XZ3E4Yzhl.', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11937, 3, 'NURUL WANDA AZAT ', '823010112024', NULL, NULL, '$2y$10$KMl9Gjd9G8VNODcSGDB3b.NQC7wc37kkv9DyeSjluFwbbD6WMBW4W', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11938, 3, 'RIVALDO JUNIOR SITURU', '823010112025', NULL, NULL, '$2y$10$RrW2XG9MdNSLqPQgCTQ2uelFFlw7LK1zeplQ/lnQH9PTDhogbCfny', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11939, 3, 'GLADIS RATU FALISHA', '823010112026', NULL, NULL, '$2y$10$DejEXsUQtCfSbFZq/6zz0Ocme6bHR90TP.LGs75O6dvUCMORc7jj2', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11940, 3, 'NADYA NUR FARISMA', '823010112027', NULL, NULL, '$2y$10$d5IBG1UFaJjSrRgr8N/8Ue1consp5svxYnb5kn2LnbTLn5xNtLPMC', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11941, 3, 'DEDY FAUZY EL HAKIM', '823010112028', NULL, NULL, '$2y$10$hIN3SoWD9P/e4X8CdfMXcOMy89yNgTiGNyrXZUCtITxUV3Osk1oES', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11942, 3, 'SYERLI ALISMAN ', '823010112029', NULL, NULL, '$2y$10$1RMQUgRK0GTfZbtutqVld.JB8J7gkWScElfcp9hF8Fv5TSW7cQe62', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11943, 3, 'TRIDESPIANTO NDP', '823010112030', NULL, NULL, '$2y$10$IEDbyl.W4L4uENTrkfv7ZO0xURH1cXILWB2puDgKTNu6AXkZIHT1S', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11944, 3, 'ANDI DZIKRA ZHAFIRAH AZZAHRA', '823010112031', NULL, NULL, '$2y$10$X0AuUzEEv/QnQSEOtffVCu3gVHcA2eJkdJ1BOnDqb7imm7moNTHna', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11945, 3, 'NURUL AISYAH ARIYANTI', '823010112032', NULL, NULL, '$2y$10$EUHhMuSz6j66qyBXK.9HBuB6X/Ng4QvEcwOYtup8d4A5oGI/jKweG', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11946, 3, 'MUH FADHIL EKY FAHREZI', '823010112033', NULL, NULL, '$2y$10$rohUofHruVQZrB9mebjlz.4/PTS4o98wesbCFELmilxkcd/LPaZVy', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11947, 3, 'NUR ISMIATI', '823010112034', NULL, NULL, '$2y$10$mgelf4H3XRZQOn6s1KzaJOG70zuWt8/pPYFqN8M0G3YFsbUJZsr5K', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11948, 3, 'SAFA RHIYANDA ISKANDAR', '823010112035', NULL, NULL, '$2y$10$3fdVeANV7BWXGKJdfzNFA.51QK5iPbAh8BYsb9JJ/7qaovMLthdEa', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11949, 3, 'MUHAMMAD SHURAIM', '823010112036', NULL, NULL, '$2y$10$jh43PiXnrmOKSPz/jL0JW.ZxRAmqVKeu3EOnuQLJFTHNBbN/RM6eO', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11950, 3, 'DISA PURNAMA', '823010112037', NULL, NULL, '$2y$10$5RMALSfYmvruxKvkQbxTBu49CbV9zQanJB7ZVfFmAjV2dqGZzQV5e', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11951, 3, 'NURASYIFA RAMADHANI ', '823010112038', NULL, NULL, '$2y$10$BqonIqHavFcWhSYYiY1sgeuiYSI30vfDlYB8fm3Sc5rvpm0oc4vEa', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11952, 3, 'KEFIN SAMADARA ', '823010112039', NULL, NULL, '$2y$10$LuG8gq9UHY3KyR1maB0LruMZGexN2cW7CiuRF981OlT8u2XPa2VIC', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11953, 3, 'NUR MUTASYA', '823010112040', NULL, NULL, '$2y$10$uowu/2TG0OSncduVtc0qH.JeT5ib4mtoxT.ilxnDK2BvsIgR2FA52', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11954, 3, 'SHAFIQA ARASHIFA RAMADHANI', '823010112041', NULL, NULL, '$2y$10$5D6FjfZLulI.E7Oocz6OweLsA3LK8V2IrGX0MfbRtCsNjJTJFteRS', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11955, 3, 'MUHAMMAD IKHSAN AMIN', '823010112042', NULL, NULL, '$2y$10$XAIUZO/5ZEkGyxCRdUy.Gu3y9r1.0mUwPV.9bYJPoSm3.HoWZzm8O', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11956, 3, 'FAIZAH HUSNI', '823010113001', NULL, NULL, '$2y$10$20oHINHHHFPDj/xi0Z106OOJKkVSxaC1UqepTXZl8VZkZB31YtlCm', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11957, 3, 'SRI HERAWATI', '823010113002', NULL, NULL, '$2y$10$v.x9cUKq5QDqv.QYzj1Ol.3abQkfLb2s8m.IKZgieDgqUJTHOZMj2', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11958, 3, 'MUHAMMAD AIDIL MUHAJIR ', '823010113003', NULL, NULL, '$2y$10$ozMYxwXJ9q7SOnlXLFDodeb0GL3rnuQTlUqRfOEqzRIXA.AjYt9VC', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11959, 3, 'ZULFADLI ', '823010113004', NULL, NULL, '$2y$10$zHZAO6CQtTNY3d2HC95aQeHgxXWQaA0HoHkaPmmaYcM33sb7H/VS6', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11960, 3, 'WAHDANIYAH', '823010113005', NULL, NULL, '$2y$10$Kgim1by5XFW44Oj1rtWk/ugT/y0AsPjUomh4nggisn1b/nuujmr.y', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11961, 3, 'M IKRAM', '823010113006', NULL, NULL, '$2y$10$fqXZMz34WcqS.v3g4/wzE.LPHaFsTMkA1Ws8P5bYsRTH2/7D3ZBeu', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11962, 3, 'AURA MUTHIARA RAMADHANI NAZWA ', '823010113007', NULL, NULL, '$2y$10$MFXM9EFfsw0JPkErYPUcO.5rOB/W4/llUxYaO7ESgx4WptBvpmobi', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11963, 3, 'NURUL FITRI RAMADIANTI ', '823010113008', NULL, NULL, '$2y$10$p2HeAX9JsWArlYpOOcdsYO/TdhSuB1bV1WgpeKaQI6VVHNVJ/oqBK', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11964, 3, 'SITI JENAR ', '823010113009', NULL, NULL, '$2y$10$pehOdEpbar/1qvbV2svpDO112.AD2Gp5/12eVLMUPoCWgc7JaCkr6', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11965, 3, 'KEISHA SAVANYA ANUGRAH ', '823010113010', NULL, NULL, '$2y$10$2JU6vLSX7sSBDv8t5OlU/eIU6gvjp/FLCrQcJGczwGy2lYqFfIYqa', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11966, 3, 'TASYA REZKY BAY UTAMI', '823010113011', NULL, NULL, '$2y$10$qtTD6rYXda8dRA9ESdvCs.AN9UiRYYGnSBXlza2BzlRU3Tfry8jzG', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11967, 3, 'NUR AINUN SAFITRI FACHRI', '823010113012', NULL, NULL, '$2y$10$0TFxm.qid7nTpNjQpcJXc.2zHVc3KL9ootfgB1taarMOlyehIi/kq', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11968, 3, 'RIRIN ARIANI ', '823010113013', NULL, NULL, '$2y$10$yrzu5phkdvRTH99xFyjCheXUG0pk0DfMQNyB0lTCRH.M3gbaCXcZS', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11969, 3, 'FATMA SARI ', '823010113014', NULL, NULL, '$2y$10$jLvfYjkL8JdUGcamFxQBmOHMRLJTOtt3VPVGxGQJ536SU5nkt9rdG', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11970, 3, 'IRYANA KAMARUDDIN', '823010113015', NULL, NULL, '$2y$10$yrnUUm6tHNTuKBkQ/Uj34OdrEumslmEQTmpCH42UtYJGxoe/iDMo6', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11971, 3, 'IRA RAHAYU ', '823010113016', NULL, NULL, '$2y$10$59uXfYHeTs7CciI06daUS.z8uPmRMJWqDTaxfYio9iG1nebsASfUS', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11972, 3, 'MINDASARI', '823010113017', NULL, NULL, '$2y$10$SehXheuiBzuI.MIgZ6Fyz.Tmglp41Z5Y.8JoI7qnCsF7a/DgYxGlS', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11973, 3, 'KAUZAKI', '823010113018', NULL, NULL, '$2y$10$CsiUeq0eKKPQIKmm/q3EsOIgUqIQwPncGYm4EH8nrbgDq1UanNIki', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11974, 3, 'ANNIS IFFAH K', '823010113019', NULL, NULL, '$2y$10$bOalWvKmSNV5S4nFcShQuunpPM0qz24uWClmfH4xCaJcFePVyRQXq', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11975, 3, 'SITI FATMAWATI S RIJAL', '823010113020', NULL, NULL, '$2y$10$79hWMPAYg2cDl.Bgkye4cOkGTAbrlLOGqW9QcDQQUUDdVtJRT67Ta', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11976, 3, 'DHIAN PEBRIANI RAMLI', '823010113021', NULL, NULL, '$2y$10$COJBR5EM.sgYi0j1OgUxqedY2FajzqY.9WCLF4bWyZIHd.LSipU2i', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11977, 3, 'AYU WIRDA NENGSI', '823010113022', NULL, NULL, '$2y$10$xss1WxEdJZm/3DzmKCfr6.OAhmuv5jrJAM4O4SIxA.Rh6pN/mBUxK', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11978, 3, 'ASWANDI ', '823010113023', NULL, NULL, '$2y$10$vcB6xPEim40jIYDewkArVu7dpPbDdtue0eeLMlXEje/9./j9v.1.y', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11979, 3, 'NURUL AZIRAH', '823010113024', NULL, NULL, '$2y$10$tcGfcOiMjiLChQCJuXGkVOUuMsGxapjGEbrdOME1O7tuKU3Gs2oZu', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11980, 3, 'MUH FAJRIN', '823010113025', NULL, NULL, '$2y$10$0AqyBXFVPy7e6YLJkOYCUuCHLAnxqyM4tpqOgbNuRZSwuifFozrf2', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11981, 3, 'RIFDAH NUR SALSABILAH', '823010113026', NULL, NULL, '$2y$10$oUK52Ld8tb2dkWjGpvsGueQj/PKql30NLKyi9PZMlDcQ.apTaLQ1W', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11982, 3, 'FIRYAL AMATULLAH ADZIBA KIRANA', '823010113027', NULL, NULL, '$2y$10$p8FLO8uMZMw18nJCOpa3Ue2TAyAh6w79SF34lAzEsPM1hqw35TFvK', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11983, 3, 'FATIMA AZZAHRAH', '823010113028', NULL, NULL, '$2y$10$fVLvUpYYhrh50P66I60tFeqBNYW31Qx/CZPghdlP8lRhAcgFIA0Q6', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11984, 3, 'LIRA SAPUTRI', '823010113029', NULL, NULL, '$2y$10$J5O2vwHdsztdBj/Ls1q6Eu.2fPnYYIAW/2wbXlW23lxnnwAbzCSmO', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11985, 3, 'ALIFIA AZ ZAHRA M MAPANDIN', '823010113030', NULL, NULL, '$2y$10$OlwX1nh01oLXNcGP2ka8TOeB4HTmHJsd5oHWLPHkZQ0je/SJ17Iy2', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11986, 3, 'NURUL AMELIA S', '823010113031', NULL, NULL, '$2y$10$fST.2GmpYe84Cx0pkO0vn.VVuspwC88zA5rNWpKoWHy48w7ItnakC', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11987, 3, 'MUHAMMAD REZKI KADIR', '823010113032', NULL, NULL, '$2y$10$/.YFmpj3/NkloUW2sOP0ZOziJz796Y1ujBHZpPQz.zJIHml/0nQTu', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11988, 3, 'SUCI RAMADHANI', '823010113033', NULL, NULL, '$2y$10$YYMb2IU2yunBT2XUvmP/feuRgnOOi74mUeWC729Y23HtE7rdfNSTy', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11989, 3, 'ANISA FAJRIANTI FARU', '823010113034', NULL, NULL, '$2y$10$2.T3kY7mvwGm5pNrMyX0heHW7TMn2B4RysZZu9RFPVbnUHWUYtvqC', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11990, 3, 'AMANDA DWI PUTRI MARCELLA', '823010113035', NULL, NULL, '$2y$10$ZoQcBdxHrkkaRju9c8ZHcuxzRTUCSoCidlwf2nXG6sPMncW4W0JC.', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11991, 3, 'WAHYU SABRINAS', '823010113036', NULL, NULL, '$2y$10$BQoLDOjkhLjnZhElJQbsSO8CtVBZMW2yp.uUJLZaC2uT383g7mBKa', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11992, 3, 'ATIFA MUHIDIN', '823010113037', NULL, NULL, '$2y$10$yPW5avtbZaCnrqzrYZuGHuLUT0mr0kMDstOV4fE2j1VJCNkloah6O', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11993, 3, 'MUTHIAH NOVIYANTI AMIN', '823010113038', NULL, NULL, '$2y$10$pagRXuXc1m0UAY2Pc7NmieaSlV0/ruPd17hey6xUPBtSJsMEH51D6', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11994, 3, 'RIA PUSPITASARI', '823010113039', NULL, NULL, '$2y$10$5rjluJ0T2Kj2jHNGUy1n2eukz9l.bVDXC0yVqzSxrxmCIHKmuJR2G', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11995, 3, 'ARFAN', '823010113040', NULL, NULL, '$2y$10$BMv7kHDNNJIrfF2sZqueeOyoyF4u0BvzJ0rJSgb9H.mTNQVUygZfK', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11996, 3, 'AFRIANI N', '823010113041', NULL, NULL, '$2y$10$zV92uylcv2hfCnA4XwDvXuL1drwj3tCB5SOfLJv1FlQNLT4HfXRIO', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11997, 3, 'GLENDY SAPUTRA', '823010113042', NULL, NULL, '$2y$10$EmvU/Vxm7zOkF6fjUBa8uOHhOrgY24dvWJAKvH9r9KVBvcxN2HouC', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11998, 3, 'ZUKHRUF AINUNQALBINA', '823010114001', NULL, NULL, '$2y$10$eXL/0xGzf0H36YMy7zWz5.BWU9uREjgcA9.vsUbZSisCO/CFP2IWq', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(11999, 3, 'AISYAH AMIRAH', '823010114002', NULL, NULL, '$2y$10$j9C/h.XzyV25bUO8g8Rha.w40E0iM6oiGi5SlO4/fb0.vNU/CevB6', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(12000, 3, 'AL FIRA DAMAYANTI', '823010114003', NULL, NULL, '$2y$10$nW/v0uvd6G.G0XwwAoIJ8eQscUwVzrA4aEdEBVPST7YgBM6FcsJS2', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(12001, 3, 'WIRANDA SAPUTRA', '823010114004', NULL, NULL, '$2y$10$nCEXWFcPS0PV3IXvmUcLduSKLw3Y0l9VuDPZvypxSiLONS477cTKq', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(12002, 3, 'MUHAMMAD FILKY ', '823010114005', NULL, NULL, '$2y$10$QWoHyitt7XhbnWr3mLezbeByRNfAllcoq7qUxJfo2UCTlHHUc66dK', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(12003, 3, 'OLIVIA CHINTYA TANDI SAU', '823010114006', NULL, NULL, '$2y$10$T6n15HO0ZqgNKYWBnsX3f.uFNzTu6sAnyDhpqtcKd7kCLnhYmdZxq', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(12004, 3, 'MIFTAHUL JANNAH', '823010114007', NULL, NULL, '$2y$10$/PzfKlzpik2d5O/lJlIlGelLy/bvwIxo0JXXnZSaVnxAGI2j58K2e', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(12005, 3, 'ANDI ADIBA SAEHA M SURA', '823010114008', NULL, NULL, '$2y$10$IRpQqy9JV4A87wciJJbnLOepwMZSZC4fg/k3jRlUf8QlVlVGvGxwy', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(12006, 3, 'MUHAMMAD ADHAM NURIL', '823010114009', NULL, NULL, '$2y$10$PNL3h74eQm6x.twEnKfn5uEbBtQU.0Rhspz8o5gXexjmha7QQHCrW', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(12007, 3, 'NURUL IFTITAH', '823010114010', NULL, NULL, '$2y$10$LuXu5MYtTBMKaOMasNcIZu3THjGxpQo87PxJD2pEXgAfVXOO3nmGm', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(12008, 3, 'NAZWA JIHAN MASIKA', '823010114011', NULL, NULL, '$2y$10$SEJTpPpacN1rDfuK0HnNt.6LvDgwHnbqvQYtyRlHylh7j9nZ1BSQW', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(12009, 3, 'MEYLANI S', '823010114012', NULL, NULL, '$2y$10$oj5fTer4yK34CedXYZFFV.616opH3ZkWQqrd7CAdHZn6xOH0i4vk.', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(12010, 3, 'PUANG ANNISA SRI REZKYANI AGUNG', '823010114013', NULL, NULL, '$2y$10$n3PQl/f4rYiJu0fXvFZePOKmz3R0OY.CdtlDqfZwPeq4onqjDWoLC', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(12011, 3, 'ZALWA ZALFA HAZIFAH', '823010114014', NULL, NULL, '$2y$10$ReoYc7RHU1ZUV/2CxFSv3eRYM7uxcAlDhzg1bHBSMymbq7fGm7ZWG', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(12012, 3, 'HAZMAH HAMZAH MS', '823010114015', NULL, NULL, '$2y$10$4NGhYuGCbLrq2.9zPzvOLeScU7KXRbbPmQDc7eaE6irF5GHSTaDn6', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(12013, 3, 'RISKA', '823010114016', NULL, NULL, '$2y$10$aFhk5umD6EaqEDLFnJnB7O33Z876gXLWiT.Cs6Qa9lZPwJexn91U6', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(12014, 3, 'ANDI MUTIA PRETY SYAFIYAH ', '823010114017', NULL, NULL, '$2y$10$.jct198alCtlviBpj16yxu7YbjH/fZOiuYGJZOGux.UfCwI1WKU4.', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(12015, 3, 'NABILA JUHARDI', '823010114018', NULL, NULL, '$2y$10$6OsflFEl/PqrjBxrVUUqFOlVLUej6XzNLkzTlsBec2Sj1iM7OVUnO', NULL, NULL, '2023-07-08 10:37:48', '2023-07-08 10:37:48'),
(12016, 3, 'SYARIF SILA AL HIDAYAT ', '823010114019', NULL, NULL, '$2y$10$9cCjxljgOUNX7.Gjfuz8KODppp/tkvyXWnd80qvhmhLbbHVprAR0q', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12017, 3, 'ANDI MUHAMMAD NUR ILHAM', '823010114020', NULL, NULL, '$2y$10$n4m1gHtcHo7yw2HpPhe4jOOSTlEydXfxA66R/9J9dmzhVugn9tzR6', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12018, 3, 'ANANDA PASHIA DWI ZAHRA', '823010114021', NULL, NULL, '$2y$10$81psDI1FYQZzj1WqVh/i0uDYI1RGsinYHpLonNfZR84/NY1qEl0bu', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12019, 3, 'MUHAMMAD NUR HIDAYAT ', '823010114022', NULL, NULL, '$2y$10$h7Mt4L7hTotj9ihffHcfSuCAYPAo/8jJZ.p3CZ1lF54Qdbor0oGBq', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12020, 3, 'ANDI SRY WAHYUNI R', '823010114023', NULL, NULL, '$2y$10$yo56QLhl1frNyc//z3bDMOfRL0i.g4xV9kw.2.uaq42DTkQf/z2dO', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12021, 3, 'MAGFIRATUL JANNAH', '823010114024', NULL, NULL, '$2y$10$CSoGvESCGxZiYHJ7uREgJ.ivcRI.78jiHvk1lA52Bse9otfpZuorG', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12022, 3, 'NUR AFNI M', '823010114025', NULL, NULL, '$2y$10$8z..MAtsYxzbeElIkSUD2OUKvz251c8CaO2mPngSWaqGFnZpmKc7S', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12023, 3, 'TASYA ANUGRAH FUTRI', '823010114026', NULL, NULL, '$2y$10$PJKZeWVEGJXLJCPyPdrSOeM94WM9Ic0T4JQMlxSbtYmqgO/.Gsuaq', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12024, 3, 'MUH FADHIL ALRIFA SAPUTRA', '823010114027', NULL, NULL, '$2y$10$Esh7hW3jvscYB7CFfJfkue.apNCO3vS9lODqE0fgIZKxUgJUHT39.', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12025, 3, 'ASHABUL KAHFI ISKANDAR', '823010114028', NULL, NULL, '$2y$10$mZXfzeKnx57RBRIozFMhZu/5ZMdPgnYY27ToNPyxRUTQsgX44aZZO', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12026, 3, 'MUTHIA RAMADHANI HASBI', '823010114029', NULL, NULL, '$2y$10$VSJwCAX0vHtudRLSMElcueoOOCgvB62B4ldhOvLnq2noQVPynrxxq', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12027, 3, 'WAWAN', '823010114030', NULL, NULL, '$2y$10$EXqNYMWWLOD3aQnZ/jy4eueleS4ZgzDY6WcqqdY/D5L.YdWzU2zY6', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12028, 3, 'MUH SYAHID B', '823010114031', NULL, NULL, '$2y$10$t6T78MUsXg9ID3.52UC3recdZGg.tv0i3Nlp06EIMVZI1jVLt7y8C', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12029, 3, 'NUR ALIFKAH TSANIYAH PUTRI', '823010114032', NULL, NULL, '$2y$10$xIywtwrjN/./HBIwzE2H9.Xep.DHhmldCihZpkHqJfJhel.BygalK', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12030, 3, 'ANDI AQIL MAHMUD', '823010114033', NULL, NULL, '$2y$10$1Ta0aBNHBbMizcGlefb79.5YE.jNFUkiM.Vxc7lv.NPTFpqZ2NHci', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12031, 3, 'NURJAFINAH', '823010114034', NULL, NULL, '$2y$10$wj2SRctKM9VFtWfqFeH8Au/W6GFbigxxOD/tZ8Uljci47951ozjAC', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12032, 3, 'ANNAS WIRAYUDA SAFRI', '823010114035', NULL, NULL, '$2y$10$EFE6JbSkJU0/T5AwYg0WVOUYi8am9yiq1HRSfAtK0JuNnhJ/DZb2S', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12033, 3, 'MUHAMMAD AFRIZA NURDIN ', '823010114036', NULL, NULL, '$2y$10$AVOFtggCCFXxHfEf1oel7.8h69x39jwhRDIZABrI3yTOOBSRk8Bf2', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12034, 3, 'AULIYA SELVIANA SAPAR', '823010114037', NULL, NULL, '$2y$10$G5PKFmb8yOgX5HhQPGejqOZDPd1z3lTMXL36kxWR/EK2fu24Tbay2', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12035, 3, 'ANGGI PANDRAP', '823010114038', NULL, NULL, '$2y$10$m8whVsmHjorVBPb6XLBWgesPy6T32qxB288DazQlaAeXcmB8nq4ue', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12036, 3, 'NURILMI AULIAH SYAMSI', '823010114039', NULL, NULL, '$2y$10$1n5sflNwHrM/fYpyxeOsaOTJvN/.ZKeFHRxHznh1HUK5kuDiIqt5m', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12037, 3, 'EKA NANDA PUTRI', '823010114040', NULL, NULL, '$2y$10$G2SYZXY/CWJTdM1r8wErceIAA9HN3GYp9WLAdzp.90//WfRQRX69u', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12038, 3, 'MUTHIA AZMIRA', '823010114041', NULL, NULL, '$2y$10$/UARhMA33fgtrSL1P9jfbOD2H92UcNSURp8rM89RrAoouqrkBOrKK', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12039, 3, 'MUHAMMAD ALBI CHAIRA', '823010114042', NULL, NULL, '$2y$10$O2sYtcq0eynWVqtV.3nLfeWd700KonZJwP.j6g.sVVKvBYvfEup1a', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12040, 3, 'A RATU PATTALOLO ', '823010115001', NULL, NULL, '$2y$10$o4wDOOVyMg.pJ2SlqAETVumRVBody5EpTQb23zDz6lwXgG/ziMel6', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12041, 3, 'ANDI NUR FATIHA NOVITA SARI', '823010115002', NULL, NULL, '$2y$10$SJn4dWhXfAYFlH5ylN5b6eZ7cC47FhUnbUpe8Q/lT/YgyYgBvmE5i', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12042, 3, 'TIARA MULQI ', '823010115003', NULL, NULL, '$2y$10$Xm.TlzOmHTwt/8PCpfg6pe/Ph9WIySfI6o0uPHLPpcxCGFs8qYPbW', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12043, 3, 'NURUL HIKMAH ', '823010115004', NULL, NULL, '$2y$10$M70xtl5fzrF/GedHtrnwZeJPCwqCd1sIdmGAorWZUZnJyaCFFAbf.', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12044, 3, 'SRI WAHYUNI ', '823010115005', NULL, NULL, '$2y$10$p9VEybQnBxwZnqfF88lTw.CUEOLHhx5VGP/kEBYDQG0q7C9jnfhDu', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12045, 3, 'NURSYIFA RIFDAH SHAFIQAH', '823010115006', NULL, NULL, '$2y$10$pJfRfjJ5N4pL87SoS5biYedCiU26kztp5algJ/jr5ueX/xKkluUK.', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12046, 3, 'NUR AISYAH', '823010115007', NULL, NULL, '$2y$10$vDcD1pzfOMi8PfXGrzG/eeLw42krCao99LocQOEcIFOS1kT06KAR.', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12047, 3, 'NURHILAL ANUGRAH SYAM', '823010115008', NULL, NULL, '$2y$10$xEqUu6qPV4Px0pHkvdlsDuOIpa.5Vhn0XPk5E0eX7hRhncTjX.SLK', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12048, 3, 'GITA RESKI ', '823010115009', NULL, NULL, '$2y$10$z1EqroovCycdkRhmJ4bZ8utI3myqkiIduGS6RoUMd3wBHTcWlC7AS', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12049, 3, 'MUHAMMAD AHSYAD ARSYAD ARIFIN', '823010115010', NULL, NULL, '$2y$10$sYE0y5S5C8dPBGahIohcOehiR1TkNje4RN4.isWbR6MhAlOfcdF.O', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12050, 3, 'NURUL HIDAYAH', '823010115011', NULL, NULL, '$2y$10$rs/GKRBHHwRskoXZyrNW2O7N4I1epGNEziB.zZIkdHe5ZJh/fSmda', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12051, 3, 'AMANDA SAGITA PUTRI', '823010115012', NULL, NULL, '$2y$10$aEJgxaOKSVwg7rX/gTN.fuIBJ2ZQykcqXHpjPExbTdVO97tKSd/oy', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12052, 3, 'NIRMA NASIR ', '823010115013', NULL, NULL, '$2y$10$jZ3yahPOe/tCD3sWUqluqeLHxPYgXnKPK6jcYRQBjQF4ufzBjX4oi', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12053, 3, 'NUR FEBRIANTI', '823010115014', NULL, NULL, '$2y$10$f7wWkm/BWD1Uq7vRl597x.GMqrgdQ5.ekdP4UVJQejNgAFHY2wFzi', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12054, 3, 'IQBAL', '823010115015', NULL, NULL, '$2y$10$7VaUpMmc0lOm5HmOcAcr5eJMmntxvPfohFj2gjvBSSYp7gqJW6RUS', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12055, 3, 'NURLAILA', '823010115016', NULL, NULL, '$2y$10$QtyBDwZWafQK.rirRAI4vOwPAtLQ20i0yHBDyeUKZT2z9FiSLgOEG', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12056, 3, 'EMA NIRWANA', '823010115017', NULL, NULL, '$2y$10$BMMjDBF5kocG8WZ00OnBqeJeCSPRRZjweRMQsGmq9S61aA6WD5nFy', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12057, 3, 'AFINA CAHYANI', '823010115018', NULL, NULL, '$2y$10$VKnTgR7EESAtPyL0gxPe6uTfVPirCIBJ97Y5oVLx.e2tzSUJaSowa', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12058, 3, 'ADINDA GHAITSA TSURAYA SHOFA', '823010115019', NULL, NULL, '$2y$10$ppPohAtrjfzylql/YcJvP.WYt98gtQMU3iuTlHpunWmAI2OiAbh12', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12059, 3, 'AKIR', '823010115020', NULL, NULL, '$2y$10$VsFGhxZKeYRSO5iNSnWB7uPAQ4OWTyCOJdyTKkeM6iRkwJDkDcVi2', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12060, 3, 'NUR AULHIA REZKY', '823010115021', NULL, NULL, '$2y$10$UcZg6jYSrqqTrZTSk9YXzes5Ez7jB1slM1QpNYJyuphSBB0F23Ap.', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12061, 3, 'NAYLA PUTRI SALSABILAH', '823010115022', NULL, NULL, '$2y$10$7YN4bBsuDjZRrS/Af9iIq.8iGMHmFEPUqw08l9nZ.H6HxKVKKNxDy', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12062, 3, 'FIRMAN AGUNG THEOSOFI SANDALE ', '823010115023', NULL, NULL, '$2y$10$zmhakN/t8embrCoPMC1k4OBNvvk5DwFk1/rgnqRCr/JdzQMS9NJ.G', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12063, 3, 'NURUL FATIHAH ASYIKIN', '823010115024', NULL, NULL, '$2y$10$8s3TATpnbxuto/qpJbGMJePmk3mJC3PD0951rIIvOaPJCJtZ1EBua', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12064, 3, 'MUH ARIFIN BASO', '823010115025', NULL, NULL, '$2y$10$ilxIZrHzYoKnItWIwm7s0efONUx4XEU.KX3YooijG2X5YOIQyvKeq', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12065, 3, 'MUH SAID CHAERIL', '823010115026', NULL, NULL, '$2y$10$oE.U.5vkw2ymJCb049UAke96GaLSQzGHErbpQwa5okNCLXzhXcm.i', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12066, 3, 'ASMI WALI', '823010115027', NULL, NULL, '$2y$10$eJ/7nJxgCndxTnT3hyTl2eMoelq1llJ2ipZWgelck.gMQqs1oHgw.', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12067, 3, 'ASTRI', '823010115028', NULL, NULL, '$2y$10$X4BKeTONkfymaFYGM4mnjeooBACkORAUKW2OMMdQ4LqLevgCCS0ea', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12068, 3, 'NURHIKMAH', '823010115029', NULL, NULL, '$2y$10$dKki9bMbYzkph8K4TdcLKe26UU2A30rMh5qHgwjGELMC5zwsRj9Rm', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12069, 3, 'SHTRYO ZAFNAT', '823010115030', NULL, NULL, '$2y$10$gUYBtPBl50qdNzPdPCdqr.5xjrRGZ5/f7db9J5fMp5MRJB9s6UU26', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12070, 3, 'FADLI MAULANA', '823010115031', NULL, NULL, '$2y$10$j5q1pV9Ka3yAKYh.zd2WqOM5VpTWKkDc/uKwcv/Xw4aZ7nxsktkH6', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12071, 3, 'NUR AFIFAH', '823010115032', NULL, NULL, '$2y$10$tP.woB74qHYYkU4ojO3fDurPNSCO.7xsCn5KsBbg2imG.46lAGch2', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12072, 3, 'AIDIL FADLI JAMALUDDIN', '823010115033', NULL, NULL, '$2y$10$auRM6467QBHqUwbo.WsALeTONlyGTpCwhF9bQrklFvJhW4Tdw1..e', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12073, 3, 'NABILA RAMADHANI ANWAR', '823010115034', NULL, NULL, '$2y$10$uZDs43RKJKN8u7y4q87TWuV1z6EO1ebPsMLpRlCQUyD/sfxZRRZo.', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12074, 3, 'MUH TAUFIK H', '823010115035', NULL, NULL, '$2y$10$xvXgrsuthpPGflBPjOu6v./VuFnN4hhnb.uNCg8EUU5piCmygCW/W', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12075, 3, 'RAHMAWATI', '823010115036', NULL, NULL, '$2y$10$7eY09oCczAmi6YM8C2h5cu/Sv3qnRp2T1/Ecms6tO/H16vkl51Wuq', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12076, 3, 'PUTRI FATIMAH AZ ZAHRA', '823010115037', NULL, NULL, '$2y$10$dLIIAj/SMhJENSLwcgactOG5z4DJ/QKaEyqvYouVCG3esMhTdHY3y', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12077, 3, 'LIDYA WULANDARI', '823010115038', NULL, NULL, '$2y$10$IXJRlgj8biD3eKA5uqg7ne03LXPDkob0W73osZGBCvfoozi6b/7X.', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12078, 3, 'IRVAN SALEO', '823010115039', NULL, NULL, '$2y$10$9iBngDu/maA1yR1hccbokOPJJfzUcprJ7pS/0UjuU.YgfkrfT/98O', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12079, 3, 'FATIMAH AZZAHRA', '823010115040', NULL, NULL, '$2y$10$3aEAp4VDaHBRPFCvaPtjLeLmmm09Qjcl8JxR.RWVWz5Z..gcdLN8W', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12080, 3, 'NURUL MUSTATIA', '823010115041', NULL, NULL, '$2y$10$hgSKNdNUw6ENgLAi9t148.rjGW/woK/Cgoa3Du3LTw0Z59Joz.Qva', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12081, 3, 'RIRIN DWIANTIKA', '823010115042', NULL, NULL, '$2y$10$xNUc0Y77EgILQEKd06oN/OK1eTyDjv/synLxkiWgkpZIOTFFI4Y3u', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12082, 3, 'NUR IFRAH DHAYAN TOAHA', '823010116001', NULL, NULL, '$2y$10$B9UNqMP0Ua0SDU42RT6PP.yrPbhUtHhtnX94JQgPe.61pnnmUW6TO', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12083, 3, 'ALDA MELANI', '823010116002', NULL, NULL, '$2y$10$/gL1pshEmnhKfYEZWfDs0O4ZVdJEA3begR2ChFev2yQk6erY1W0jC', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12084, 3, 'IIS MURSIDAWATI ', '823010116003', NULL, NULL, '$2y$10$F/tn2ziXbU97L3WGXjHiZO2dPwGr0MVcPcUbyWDIUHsb2tQpcec76', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12085, 3, 'SRI SUKMAWATI IBRAHIM', '823010116004', NULL, NULL, '$2y$10$Os7AJVjGzXL6iKlPbTT5IOoJOBvSHUUm.wRo9eK8v1liBOQzmgHHa', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12086, 3, 'MUHAMMAD FAHREZI DWI ANUGRAH', '823010116005', NULL, NULL, '$2y$10$rsJl7Fiw561vOzZ/DhAHxuPVrMjgbMA2mChaEfoRJkhs7h3pZXtXm', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12087, 3, 'ASMIATI', '823010116006', NULL, NULL, '$2y$10$JglBGrRH9t24dqDrveLu5eSuth9kEA9lf7B/2m7uRptIV2QBM1Jp.', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12088, 3, 'HANIFAH DEWI ATIKA ', '823010116007', NULL, NULL, '$2y$10$TGRSaTXmw5PtgkWpx1chx.zJfmNHubAKeRjUc5.uSxZMrxvhWOQaK', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12089, 3, 'RISKA', '823010116008', NULL, NULL, '$2y$10$hajWcrbVZiAdrN66HDD/AePxEO5/ji5JB/y2Ea5aA9G1zkvwkbnri', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12090, 3, 'MUHRI', '823010116009', NULL, NULL, '$2y$10$aa2Rypb1khN5m75G2oOOUuX6eyw4rI4I5B106u70x89dYzkByG8RC', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12091, 3, 'FATMAWATI ', '823010116010', NULL, NULL, '$2y$10$dFCZxpw2EJyopg283YtygutLCA0c5FrjbaFfLx24Vi7v5IbmKh9I.', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12092, 3, 'MUHAMMAD RAFLI PUTRA HENDRI', '823010116011', NULL, NULL, '$2y$10$9txaIwyVAw0aKbKAV3JDjenk/61dwZbIgm9TXgJeo5k5SG3m8pTQG', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12093, 3, 'CLARISA PARUNG ALLO SOMBA', '823010116012', NULL, NULL, '$2y$10$dxBPx1vGv8bduzAjhg9RTeoy2CV5itSmvqoOByw6nv27WAdLWxuIG', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12094, 3, 'MUH IRHAM RIYADI', '823010116013', NULL, NULL, '$2y$10$b/wnZ7/Bs9SKhQQ6gth5mOb/niUsNoxzMJowEHOFg1ee38teNs9cW', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12095, 3, 'HERAWATI', '823010116014', NULL, NULL, '$2y$10$tMdG1szZJvn4NztKSMWK/eNsiIPnymtUMNnS21lfSYJ.ZBgQxPWXm', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12096, 3, 'ANDI SYAHRATUL AWALIA DG SANGGING ', '823010116015', NULL, NULL, '$2y$10$AGFPaBGiEnXWdkSWDmw/o.jmJx/.i4pAQiOJ5dGMHt3XxO6Rr1qH6', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12097, 3, 'RISMA HUDAINI', '823010116016', NULL, NULL, '$2y$10$1AVocDYldFczk8sjE1wVAu0.Qd4UoVtxh8hj6vvCIMnccWlCAUzc2', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12098, 3, 'NURUL MAGFIRA', '823010116017', NULL, NULL, '$2y$10$yvQkXc4VVH/wu7DSxN.7QOiTofn52Yyg1OBRAkr0S/Pf.g7fOLpTu', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12099, 3, 'NUR FAHIRA', '823010116018', NULL, NULL, '$2y$10$GeSkWcdxSrN4fr3CZ56OQu91EeoQPx1NPrcI/7EvJs0JMx4.FwyyK', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12100, 3, 'AZISAH RAHMAWATI YUSUF', '823010116019', NULL, NULL, '$2y$10$ytZ5UxVuYfpOghqDT6HC0uFNnEM/kol8dCmd.xBDmbUUmmVsvWokO', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12101, 3, 'RANI AMALYA PUTRI', '823010116020', NULL, NULL, '$2y$10$uikXKUBl4.VhBcSVhJbCQOiVH.OHm53VA8isLmfH6jiveafgx6Nii', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12102, 3, 'ZAKY RAIHAN', '823010116021', NULL, NULL, '$2y$10$FXnqrGqsrd22zb8iYxqWe.1WyXjonVLcZ/2/si5N3OP5f7M6wNjhu', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12103, 3, 'ZILFA AYU RAHMAN', '823010116022', NULL, NULL, '$2y$10$tFWF8Dk8BuKsJkklTwrZg.xGq5ABY0qHby8KjkYNzkje7UOSlir46', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12104, 3, 'ANALTA IDAM MAGRIBI', '823010116023', NULL, NULL, '$2y$10$rkW.Wkg9ZrD4SpID84rlS.41fPVpbkcuvRcBpdQyQNk.oKlUCzRBe', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12105, 3, 'MUKADDANG IDY', '823010116024', NULL, NULL, '$2y$10$yg5.qg27w5xxA5c/VUj.dOZat6hPmrVbamSLEe12Z8d4TU9AmV/h2', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12106, 3, 'A MUH RAMADHAN MAPPAWEKKE', '823010116025', NULL, NULL, '$2y$10$0G65nz.hCb1e8vDTRLR7te3ob7DKrkOzdk3TPDmoRVVxDGgXABbqa', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12107, 3, 'L M  ARISYAFAR UDIN', '823010116026', NULL, NULL, '$2y$10$nhkaM9DuqyKeAka2t3oLq.qVImMWJbPw.MJLfKCQq61eI7Xa8B7eq', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12108, 3, 'MANDA KAIDA\'', '823010116027', NULL, NULL, '$2y$10$aDmoB.d9xFUIFRkQVL.q0.DxbbXQI2ma7bXw71qytI3XM86UwuOHW', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49');
INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `ip_address`, `created_at`, `updated_at`) VALUES
(12109, 3, 'GLEDIS TARRAPA ', '823010116028', NULL, NULL, '$2y$10$p/gIEvzWlOx7dMn4KczPledVJ4ECKCrLhv.gppPAF4oHOFCKM0RZO', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12110, 3, 'USWATUN HASANA ', '823010116029', NULL, NULL, '$2y$10$WwgUtgzKWx3/V.q.v/haguGUG0DHd6FiaBY7Lc1DKDuCEqZBnC5E6', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12111, 3, 'LIDIANA BENU', '823010116030', NULL, NULL, '$2y$10$.dktM3sy37i/Wir1yTQcx.x859MOxAsWJQZpxrk9.6pjOdbXnpOCS', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12112, 3, 'MUH FARHAN', '823010116031', NULL, NULL, '$2y$10$tlZ2VFNrAntfwnqOmjZhj.xNdXwV7NxzobJ.jjy/jcbcrLy0iHMru', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12113, 3, 'JUNEDY', '823010116032', NULL, NULL, '$2y$10$Q967eK1psNjshCfyVylhjuXIX18alcqejIzirDrB30BSlH2SAi4dm', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12114, 3, 'TRI UTAMI', '823010116033', NULL, NULL, '$2y$10$dWy/K5mWiN2krSrr7HSao.ZHH1dMvP4HEp/Our41rsjlKREI..RVy', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12115, 3, 'FIRDAUS T', '823010116034', NULL, NULL, '$2y$10$Q89ki/pg.uwCvuBZJhuHzedeFqbvp8HYMI8vjFowrwxkcRy/dwuom', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12116, 3, 'ANDI AZILA INAYAH MADRIKA', '823010116035', NULL, NULL, '$2y$10$.FaTLPwHOqhI2hZzBu8wTOljfk/Fla9DzL7/ZtH0poOsG9iT8mEta', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12117, 3, 'SELPINA PETRUS', '823010116036', NULL, NULL, '$2y$10$r3ZUK67kXZazEm6FAEnqseWN5WBG1Tia3EySEWBBXF94.RB/G3GYG', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12118, 3, 'AZZAHRAH SALSABILA', '823010116037', NULL, NULL, '$2y$10$AnPu7rS1sPiLVG5RaQrokeAzCce4edQf.pcSadrFPAiSRNjpbX2Hy', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12119, 3, 'MUH IMRAN KADIR', '823010116038', NULL, NULL, '$2y$10$5xdsmr1T/8XLVCVOlBqjdetLQwNt8/i1BeN2i7JhypEtuBA/fnkUi', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12120, 3, 'NUR SYAFITRA RAMADHANI', '823010116039', NULL, NULL, '$2y$10$GFKmYKbb8pJWmw00H1OV9.JeLKyyisn6MTZPJN643AdqvwnNOWW3G', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12121, 3, 'RENI AMALIA ', '823010116040', NULL, NULL, '$2y$10$RC/5QZ1V/39m0JYzBqaaIOs9PeQSa0ZYC/7AhRU3AVkjcHrQGs3um', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12122, 3, 'LALU LYWA ZUHUDDIN ALBAYANI', '823010116041', NULL, NULL, '$2y$10$NFfLSLk8tNNVtZCfm6b15ekM.ELtlJLwYIIBco99zOnqR4Mq05pKy', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12123, 3, 'AURELIA ZAHWA PUTRI IRIKA', '823010116042', NULL, NULL, '$2y$10$V8mdcovEE3dvijko4oCOa.9Rn.Rx44ej9hEDod9rEAss2i3FiWwzq', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12124, 3, 'DON GILBERT RANTETANDUNG', '823010121001', NULL, NULL, '$2y$10$LPSDULbMiysgR/IYk3HZUOgEl.cT81HdmPff/PTakbky5.uJ1Zu9.', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12125, 3, 'MUHAMMAD ADNAN RAMADHAN P', '823010121002', NULL, NULL, '$2y$10$GeGm.U0geUddyK7o/ve.RuGsvzSlHUYG8Pc7JlGdJUhGNigKlWN16', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12126, 3, 'MUH RAMADHAN', '823010121003', NULL, NULL, '$2y$10$24zXUrYb7lZPFyfPmZpSOeATC9g91/TKmttb9Qa/VkU8.bdgs9rN2', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12127, 3, 'MUH NUR IKMAL', '823010121004', NULL, NULL, '$2y$10$6NgRLnTYLcJWHwbt9t5dgOP0mnGuprZwSf13z487sa5MlqTTko8em', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12128, 3, 'NASYWA AFIFAH KHAERUNNISA', '823010121005', NULL, NULL, '$2y$10$uyUuqPSSiqY7tttuvHfIBOZCxzzNHFeuERSdO0dZw2lwZo9lMSSsm', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12129, 3, 'MUH WAHYU WIRANEGARA ', '823010121006', NULL, NULL, '$2y$10$pZ8zJ9z9LAvoR1/oqnggGu4Fnun0Ql.uNdk4pbATyjdA2Bdkzq66q', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12130, 3, 'ANNISA FEBRIYANTI ', '823010121007', NULL, NULL, '$2y$10$Z2opVMG7MTdpHIlrobBnfevAlrH6j8Erzhgi1wojBR0gI3VPMT2KW', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12131, 3, 'ARYA TRIANGGARA DINATA ANAS', '823010121008', NULL, NULL, '$2y$10$L/9x3KAw94onvDlkgGqusem9D9d1z20na3Fy7b5xgAU3fZvtpppbu', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12132, 3, 'MUH ARIEL REZA PERDANA', '823010121009', NULL, NULL, '$2y$10$pAYV9P7UWgHOErdxdMUKgeywDZmk2AzEd.vSBVx.B/xnUXWzypANS', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12133, 3, 'RESKA DWI APRIYANTI ', '823010121010', NULL, NULL, '$2y$10$WWh1JS7EjQK6bXnQe.3c5u0jJG52753ni.jHDW9/EBso15sSqADjO', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12134, 3, 'USTIN', '823010121011', NULL, NULL, '$2y$10$NIdqSIcfbBNxINOyfn4sf.S6MWFYhtLGrXfUrzzDyF.maXSA0XQf6', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12135, 3, 'ADITYA WIRAKRAMA', '823010121012', NULL, NULL, '$2y$10$GMFn3GAItjf3HJboaxCjYOkxtQtotQtmHI0MkjuTXsPR6gkxCxz8i', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12136, 3, 'AGNETA VERONIAR MARLUTE', '823010121013', NULL, NULL, '$2y$10$MoF9lu/QTTNd7ROqyZx8POe8yksOD0hY.50p.Xl4t3c9mpJF79rh2', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12137, 3, 'NURINSYIRAH', '823010121014', NULL, NULL, '$2y$10$te7sYqd2lj8ZRtXy7o/n8eMbKCHwWrfUL5WsABjXCBdI9IrO5KUpu', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12138, 3, 'MALIFBILISLAM', '823010121015', NULL, NULL, '$2y$10$r19D6qwoOjlcXr9y9xycpelrw4KW8jSkk0gEXbu0H0VZl.PeUumcW', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12139, 3, 'PRASINTA KAMBUNO', '823010121016', NULL, NULL, '$2y$10$6jRAUWNK0RkVpQbLUvsie.STCNE6FjtMqKw4Pu740BHS1c4IsBCAS', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12140, 3, 'CRISNA SADEWA ', '823010121017', NULL, NULL, '$2y$10$YN3B96klrjhW1Kq3PktRg.b1pyz40Gvbnw.jKm4NZNTVXqdQTFtO2', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12141, 3, 'AGNESYA ATRIVYA SAPUTRI SAREONG ', '823010121018', NULL, NULL, '$2y$10$.XRkZGAjU4py2Cu17Mg3cusBE0TB8XHZ3EIShUr6yT4rDwcWYPJ..', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12142, 3, 'MUTMAINNAH WULANDARI', '823010121019', NULL, NULL, '$2y$10$v/7oqgFihfYNNX.O1WHpCuOLS2p89u6zYN8AgfQYgvTPoCh0r8guO', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12143, 3, 'MULIA BONTONG ', '823010121020', NULL, NULL, '$2y$10$bchRlo8OSQ4.8dWp8OWY1Od/WR7RywZf6iIGuVgAdApjxWizQ.XTa', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12144, 3, 'MUH ROMAN RAMADHAN EDWYN', '823010121021', NULL, NULL, '$2y$10$.BhjwTUz8V57P8D8PSwsXuq12I9ldUTYllfdzmhFOs9dRU5wBEk6e', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12145, 3, 'NURMUSLIANA', '823010121022', NULL, NULL, '$2y$10$xbEGPnYpP2rSSAQEAKQ62uKsBRghjUYjhxbdMFs01uclr5CiM6xGW', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12146, 3, 'MUHAMMAD FAIKAL ', '823010121023', NULL, NULL, '$2y$10$fx/zTfOWzeYWWx0hA0GUD.gNXMg5.wWtIv8mtvcMCc0Vzgbywmyjy', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12147, 3, 'NUR SYAMSI WARDANA ', '823010121024', NULL, NULL, '$2y$10$lb8EE6/WP3tMSVUXPs39leTyfuGTaQP0itlfmkubLA9kt3LS7aCp6', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12148, 3, 'MADE WIDI PRAWIKAN ', '823010121025', NULL, NULL, '$2y$10$WVX4GqmaJez8uE3cVuICF.4IYgnWOtT.ObHfaL1JvjmkdMrzKkyny', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12149, 3, 'ANDI MUH AKBAR AMANULLAH TAUFIK', '823010121026', NULL, NULL, '$2y$10$LsRuWZfliTCEerFNJT6Wc.cjE9DT19ApMgQmhsTF02fxbVMYlLQU6', NULL, NULL, '2023-07-08 10:37:49', '2023-07-08 10:37:49'),
(12150, 3, 'RAMA ADITIA PURNAMA', '823010121027', NULL, NULL, '$2y$10$SO9iHN97y8mliRZo9uZkPeAMtl5l.Yc/5D.R.F9gXfaf0K3t0MqHa', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12151, 3, 'NURFADILLAH AGUNG', '823010121028', NULL, NULL, '$2y$10$MQJxIKDMYqZhXU/lYGdzh.L6YlMb9kbrZhC7VaYd1l7fm.nYvnbCS', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12152, 3, 'NANDA AULIA ', '823010121029', NULL, NULL, '$2y$10$JYPhMeq3d6Zp.l573Q5g0evVp/QDNH6pPuQh.GvESEJ8IHDiH3/T2', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12153, 3, 'NADYA IRAWAN ', '823010121030', NULL, NULL, '$2y$10$IgfCvo5Z38BsYXCRHFclaO1DnT7AKRAV3cysgWMNF9yB0kU9zfpgO', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12154, 3, 'KIARA PUTRI', '823010121031', NULL, NULL, '$2y$10$75WZ7ISPpFcapu9GamRsE.2edB1aoVYIC9M.Hf71Pnq0hORKQiQh2', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12155, 3, 'YULIA AZAHRA', '823010121032', NULL, NULL, '$2y$10$yroo59znsKIoxpYtDbwFGOefc0ugyNUAqfpQtsArIpo5TeHnkZYoa', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12156, 3, 'NUR AFIFAH ARIS ', '823010121033', NULL, NULL, '$2y$10$pKYotEPgCcMDPL8HunzO/uC9iLY1h/wXIwmMZgcA2EFSAJYCIvJVi', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12157, 3, 'MUH HILMIY SAHARUDDIN ', '823010121034', NULL, NULL, '$2y$10$kSEF5eEyBvPMfCRmy9NfXORAkRL0yoDyrn3yLUTK6ZiUshYl6wFPW', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12158, 3, 'AIYNUN MEYLANI', '823010121035', NULL, NULL, '$2y$10$pVNioGm0cKowTamWEh1vd.lH4nbyVhkAliv2WBF7vFfLPCKoOv29a', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12159, 3, 'MUH SALDI', '823010121036', NULL, NULL, '$2y$10$XfeJdPcDkEZnvfDTMt.I7.zUtlaqA39W4puIV.CW8U20Ojf2tXYNS', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12160, 3, 'NATASYA SYALWA SYAHRANI', '823010121037', NULL, NULL, '$2y$10$OYIBo3ftuM.fzbeeVkQXkOoWzlqpJCo.fcsyYnnkeDVJjdJ3e35eC', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12161, 3, 'SELVI', '823010121038', NULL, NULL, '$2y$10$tXOJbg7kzb1aZSzEJUlWT.dn6ncXexjonBDcmxHlcrh7dMcKdRac6', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12162, 3, 'MARSHANDA PUTRI PRATAMA HM', '823010121039', NULL, NULL, '$2y$10$6wOCA5T59Std6sz0wj7w8.PWKIxEcyR618m3KIi2MOftiOVsQ.Fhm', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12163, 3, 'SEPRIAN TANGA KADA\'DI', '823010121040', NULL, NULL, '$2y$10$PTzKMZ6PIqFuIQksJOP49OU1Daz1Kj9zJxQKpyUOtf9glFq6dxDqq', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12164, 3, 'DELLA VIONA MANI', '823010121041', NULL, NULL, '$2y$10$IMq2l0p/6wypbLjRNaR8/uVfxtRFWFR9/2I8Tb6kngRYMVRJ1FRNS', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12165, 3, 'MUH ALQADRI ', '823010121042', NULL, NULL, '$2y$10$BHaur8eAHSRn5mejwZ6foesh2iSu0CyoBddtd5apH3/haE7RfxGeK', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12166, 3, 'MUHAMMAD NURSIDIK', '823010122001', NULL, NULL, '$2y$10$x4y6X350Xksc/ZF13j8/muxc53IV2Dfagt17.LxBaiBif/hAts8Eu', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12167, 3, 'MUHAMMAD FUAD NAUFAL ANAS', '823010122002', NULL, NULL, '$2y$10$YJOTpz3U6gn7E5zFnMxYVOJ/rFvPG06n/MO6iQFiFk9sDiPXeJa6e', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12168, 3, 'RINTO OKTOVIANUS ', '823010122003', NULL, NULL, '$2y$10$ga3n5iPlqhu6A/eoygtxQ.E3nZLsAG8n/x7tprl4Rr/Qw5EzQsUJm', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12169, 3, 'A FAHRUL AR', '823010122004', NULL, NULL, '$2y$10$AnUTVf6yXXwarTTAfvZ6guHKv15V6xYTuPPhSpKkA/WGUu1zw7s/6', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12170, 3, 'MUH RIFQI PERDANA PUTRA ', '823010122005', NULL, NULL, '$2y$10$AJRVwNIVO.TQG6u0BqozvORWCqLuPDfiLTjx.lNqO2N.M47TfAncm', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12171, 3, 'M AKRAM MUBARAK', '823010122006', NULL, NULL, '$2y$10$fKUUuZFjkRxG6WrYltSOp.ilsVqGP2f6OiHTHcV8XAmsW.Bw0nMsi', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12172, 3, 'ASRIANINUR NAWAWI', '823010122007', NULL, NULL, '$2y$10$vztf4v7P5RjVR5FUSLACUeOQZuzdN98FKipNz7I0Hzc/EVwDfqBtm', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12173, 3, 'NUR RESKY RAHMAN', '823010122008', NULL, NULL, '$2y$10$eXMKvyre8r1Xi5ypoDuKruKAyJqk1jiBEQzf9uqbup.P6PAZQ8A/i', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12174, 3, 'ILHAMUDDIN', '823010122009', NULL, NULL, '$2y$10$dnOWPNRv2beS/DIxuSVVdOfsWj8D0zwgBXIddzEhH2chQYki9OXvO', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12175, 3, 'MUHAMMAD RANDEY GIFFARY LAUPE', '823010122010', NULL, NULL, '$2y$10$Of5CW14biVHgDTsHJACn8eIS.Xr8dN4VH3voDPwvdU/Q2o8xizfBq', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12176, 3, 'FIKRA MAWAR DANI', '823010122011', NULL, NULL, '$2y$10$4ukBDw1e96PTvEHPYYZyDOhWdRocE9ek1jUcn6U/NZgPzwwzYAuh2', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12177, 3, 'RAFIN ERPYNO KEZIA RAPANG', '823010122012', NULL, NULL, '$2y$10$cpNflhx/1mdQ4Ktco.t4ouqJHoEiTjgoQIhWfw9fzIHXexq6APJ7K', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12178, 3, 'NURUL KHATIFA', '823010122013', NULL, NULL, '$2y$10$wm7mzH1fLrIGxIGWcSSjx.SGx0PDVDsXiXjFg03XIg0AlwQ4j8NkC', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12179, 3, 'AULIA PERMATA SARI', '823010122014', NULL, NULL, '$2y$10$2jZiYPeLvTPs/wRptgW4JObASNK/QYDvoUClHWY80nZb8beVJWtiq', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12180, 3, 'MUH AKMAL', '823010122015', NULL, NULL, '$2y$10$qT5a7vkbzgZQ3ty2BY8SwuGcDruzInbW2RZA1GhTWfFtHVi/7NMv2', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12181, 3, 'MUHAMMAD ARDIANSYAH SAPUTRA ', '823010122016', NULL, NULL, '$2y$10$BfGPH0KIlZc8vTj0lpJX.u2lPuH1E.v2gyQmi9wHwXYPTGnCZHIJq', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12182, 3, 'MUH TAJUDDIN NUR', '823010122017', NULL, NULL, '$2y$10$HIWRsTrqPsZSfUGALXSNnu7ggHpHGblxET6Dm88.yBWz4fUSQofP2', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12183, 3, 'YENI', '823010122018', NULL, NULL, '$2y$10$DORaHus4EZyHuqVpzLfoOuwBrvonoI/Zy4KZjG2kpyZ4rg/Jqsbim', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12184, 3, 'HARASHTA BANI\' AZKA', '823010122019', NULL, NULL, '$2y$10$x.Cls7t3n8rJWasTV.Ni4OjL2bk5PUa/PHyV4wgh8dLrnlxxWXDx6', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12185, 3, 'ZAHRATUNNISA PUTRI', '823010122020', NULL, NULL, '$2y$10$9TF3Gsg60CG0QQDYCPHO8udR712QI23RNdCCJSPnrm41SPEbKTDam', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12186, 3, 'WA ODE RAHMAYANI', '823010122021', NULL, NULL, '$2y$10$I80WZV/8afj4kgzjcy1L9.U89SJrbQnZHDzqzPdnluuDY6/RMQQLy', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12187, 3, 'AHLIN', '823010122022', NULL, NULL, '$2y$10$TrMrY4nCmruxrrTPOjvyk.xewLO56YTkJeoHfNkpGrTbmdu3UYINC', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12188, 3, 'MASWAN', '823010122023', NULL, NULL, '$2y$10$zmVC9VVChpnwttUpuP14xOFxYWTwVPy98HhDvf3rggdaw2EZJ9pWu', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12189, 3, 'ZIDNYFAHMA KAFABILLAH', '823010122024', NULL, NULL, '$2y$10$p2zecxQcmhBz1Cjdv.BfhOSqeQVITxhoMa3LML765CNrknBlNIs1W', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12190, 3, 'MUH FAUZAN MAHENDRA', '823010122025', NULL, NULL, '$2y$10$EVyTYgM7xKIu5UjdldwbNuwba8WiSHsZBtTHg8OGPS64BZ/azGqs6', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12191, 3, 'NIA RAMADHANI', '823010122026', NULL, NULL, '$2y$10$TxQ/LgPUOhPne0vhf0TPWuEquMIqAv4JlX6qjbyaLWunf/bdaYPzu', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12192, 3, 'RINDA GEMITA PATANA', '823010122027', NULL, NULL, '$2y$10$/2DWoHbRFeezBcukJnaNjOS6zDy/e0ORqVJ3nWOCFJ7NqjClzQFrW', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12193, 3, 'ANDI NURLITA WIDYA MAKMUR ', '823010122028', NULL, NULL, '$2y$10$.IpW9IRh0iPzQxhVhXrRWeBGF7821H059SCBozoi/Km7qENLpdyLK', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12194, 3, 'LULU SARKINA ANSAR ', '823010122029', NULL, NULL, '$2y$10$LmbOTJ/nle/y6eTaMQGPU.wzfN4J7glH5bKOPmLmbLwjwJzREJAgi', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12195, 3, 'MARLINA ANGRIYANI ', '823010122030', NULL, NULL, '$2y$10$rTU5.yRlBGeJM4CbrsfgOuPdzHVkdr1T3JY4tooF3yDS1eNYCHYGS', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12196, 3, 'MUH IKHSAN FADIL ', '823010122031', NULL, NULL, '$2y$10$Hn/R9I46lI0YNGy/W6YAt.wDLxHRoQqxEM4KCkcADB0yBhZU560uy', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12197, 3, 'JUNEWIN', '823010122032', NULL, NULL, '$2y$10$2Hrmk1c3yRs2spfSD.y9iOHZnVR2UBPVoI8a7sJcAUmU5VgY0n5WK', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12198, 3, 'KARMILA', '823010122033', NULL, NULL, '$2y$10$vNV7.k7b9Ro6pmWTIGjYh.ehd5a1y4Y6n0r5yh1ioCTCuzIANyBVa', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12199, 3, 'DISHA CANJANI', '823010122034', NULL, NULL, '$2y$10$NiTuqyMXrom.KqiCO0sfYu4sKsO6H0kxBypb77jx9rcrYXVi/A7Ry', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12200, 3, 'ANGEL KRISTI PALINATA', '823010122035', NULL, NULL, '$2y$10$mdFGzJy1DrNL0Yp8KiwYEOxssCOYL/2AqmIbSpC1/VkfOpF/HdF8e', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12201, 3, 'SYAUQI AHMAD RAMADHAN', '823010122036', NULL, NULL, '$2y$10$/Fp1Sn1LbxgSpb.IvTd9AOzyXsnCaAOfXWB3V5sli5zdITBGbQemS', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12202, 3, 'ALHAM', '823010122037', NULL, NULL, '$2y$10$VjKgjhR.5b9IQboFFB0wc.BoVqbl92HfUCkbzYf7hNc5.oLN2M7f6', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12203, 3, 'MUH KAHLIL GIBRAN', '823010122038', NULL, NULL, '$2y$10$EB3AgGB9Ko6Ew9SImkcXoeVkC.XkqPvhJKL2g4IDqVz1z4UltgLSm', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12204, 3, 'FANY ARFADILA ', '823010122039', NULL, NULL, '$2y$10$JoUReba/faTAhAtJShMkG.1CLeketlpK2IHmXpOI82eBDP78DI0QG', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12205, 3, 'MUH ADITYA ANUGRAH RAMADHAN', '823010122040', NULL, NULL, '$2y$10$0kx9F09OvFd4borzUDlF2ORQl7qmefJrtv4PysjUxj5Gt3idihBvC', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12206, 3, 'NURISMA DIAN ANGRAENI', '823010122041', NULL, NULL, '$2y$10$4rbo//Dw7.Oozu5K9pv5pO8.8jcqKdA06pHar78aUK.Z0TG6aVo3q', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12207, 3, 'WIDYA AULIA KIRANA', '823010122042', NULL, NULL, '$2y$10$j2Ex0VvzQsPR150Bbq5gX.kS8yI1WGeTZwYTQIOWh16549ZEjN876', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12208, 3, 'NOVIANTI PARUBAK', '823010123001', NULL, NULL, '$2y$10$Hr1nhvYFNMzhVIH7rLm4LuduRhOi4d89/tf79UaVWvmHmGb/9/Oo6', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12209, 3, 'ANDI AENUN MUTHAHHARAH ', '823010123002', NULL, NULL, '$2y$10$dZhEbje1lKAmTlVefXyIr.bxxUVZ.aCKOfzwCA7La0m9KMdp5d9aq', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12210, 3, 'DZAKI LUTFI ', '823010123003', NULL, NULL, '$2y$10$/eZQF0jmrlJAMK6bW.BipOrR8zKqI2W54zsLBY6ej2r5iDBUEaH7y', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12211, 3, 'LUTFIAH', '823010123004', NULL, NULL, '$2y$10$O4aQ9zhZRLqiH.eMG5juXOjB9emnFzoYQKKxzYu.XPkeVcvQ83LZS', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12212, 3, 'MUHAMMAD RAUL FAJR GIBRAN AIROS ', '823010123005', NULL, NULL, '$2y$10$9xQBuSJZeyIOw9rruFPNkuKvOdC2wYwUXHoMsgF62o0DvUGFq4/BW', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12213, 3, 'MUHAMMAD HUSAIN RIZKAN ', '823010123006', NULL, NULL, '$2y$10$JiGGqxXlqFFpiYYKWxnwOOto3UmB18iXqhORIHfpVz9NgPjzbXg7.', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12214, 3, 'ANIZAH NURFADILLAH P', '823010123007', NULL, NULL, '$2y$10$hoA54YSS0A2rXBBNRUnwM.czZmqlR2oHsDJc7cS0aWBME4bXQF786', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12215, 3, 'YAFET HENDRICO TAMARINDANG', '823010123008', NULL, NULL, '$2y$10$ajHpe/tYG3p1iIdw68bc8eH3RHCAFNtSLdQAdVDyVQcZDP928sg0a', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12216, 3, 'FILIA SINDI', '823010123009', NULL, NULL, '$2y$10$M.ANw/iyFGA19KHyHOSgdOM.Zl0pDWT9EL7vWUKmz9K6tHBOZydYa', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12217, 3, 'AISYAH NURHIDAYATI AZ  ZAHRAH', '823010123010', NULL, NULL, '$2y$10$ikBL6Bl8vMzRehF3dTfZ8ejJs/fFNnJNGRa3U7uQXc/dXZXyaLYxS', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12218, 3, 'NATASYA FARAH ZAHIRAH', '823010123011', NULL, NULL, '$2y$10$oMyGzEFimeKxYZZEPQQjOOTrQgHDgaMriCM1iYpx3QbD53y63XdEm', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12219, 3, 'ULFA FEBRYANTI', '823010123012', NULL, NULL, '$2y$10$fsV6Sw.u4/8D6k8R.KZwledXAO/Vgf5pzkVGRVghU8cuMNvRUYJ4y', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12220, 3, 'NUR AINUN NABILA ', '823010123013', NULL, NULL, '$2y$10$oKu2McxnIAewXnxdVcdpt.K/MJe46h32838id07F/hQiN9XraP2ee', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12221, 3, 'SITTI AISYAH', '823010123014', NULL, NULL, '$2y$10$.rySO7QBGr/9Jq26tEuIceAjKKkyzB8uNprQ.Rkj3Pih7q99g9GuC', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12222, 3, 'AULIANA SARI MUHARDI', '823010123015', NULL, NULL, '$2y$10$uqi7RWlD9Uv92D8XcyFEzezB.Qly3ZvFfhhyBUD3p47e7kRSFJPuG', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12223, 3, 'NURFADILAH U', '823010123016', NULL, NULL, '$2y$10$BoGnE0ZFKz7l.SnLUpxz.ugs7wOrQK2ZHfQoGP6J4T2n2WcuCWWy.', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12224, 3, 'SRI WAHYUNI ARISTA ', '823010123017', NULL, NULL, '$2y$10$17yZbxp7F/EFj7rRAi50qOHz7yC.sTWzDJ6SetRKIhHGsup3UcKTS', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12225, 3, 'ALFATIHAH ASLYATUL AZIZAH', '823010123018', NULL, NULL, '$2y$10$SFSoBPl6rNiypNvnV0vD/eo/6XskxHblu75uhzkDKOqeJo7zB0nDa', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12226, 3, 'ROSITA RUSLI', '823010123019', NULL, NULL, '$2y$10$wzJyIOI1tY//t0.vpJL5keY1m3F8rLu6pg/VT/WDPFJCuXKxRdKgy', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12227, 3, 'NUR AMALIYA', '823010123020', NULL, NULL, '$2y$10$JOmuTRvW5ppYODdgleVayOzYNX2MAuRpvfjc7aN9ExoYHZyb4rfvS', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12228, 3, 'SITI MUTIAH FADILAH', '823010123021', NULL, NULL, '$2y$10$Oeym.FR0Uahl4TnWD8V8DOaG7RA1ek9o5tmBNSWaPnIvvvMu8Jcme', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12229, 3, 'AHMAD BADILLAH', '823010123022', NULL, NULL, '$2y$10$QjoSQSZPL6bUX.wQtfumreZQwmhQVULjv6qn8.IwGzZp.Jupblwmi', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12230, 3, 'ST ANNISA JULIANTY B', '823010123023', NULL, NULL, '$2y$10$6ZUwpYCzByyzsozMquTfWuuBgI6ylC.tiZe05WIKIfzFGuy.iSW6a', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12231, 3, 'ARYA DEWANGGA', '823010123024', NULL, NULL, '$2y$10$K91TtoYNMEdbRBW.XEitN.w2irdbChjtmVXMSDGb4nUwtdFT6LoW6', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12232, 3, 'EKA AFRIANTI', '823010123025', NULL, NULL, '$2y$10$L6P3yobBQXxJk2naGdEq3O9a52LlOG5aNqR2yC78NcCSwWk0wlvhy', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12233, 3, 'DEVI ROMBE BIANG', '823010123026', NULL, NULL, '$2y$10$FJu6rD2sr24clkc0nfVSTOv6vhf4eKNTVxc6Qf9iDcEl2baU2Y2Km', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12234, 3, 'SUKARIONO ADI WIBOWO MUCHTAR ', '823010123027', NULL, NULL, '$2y$10$1OWE9/9CCzPQ1VpYFvCxbevEC4c2loNqixSYUKeT.sn.uTSsGe90S', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12235, 3, 'MUH CHAERIL AMRULLAH', '823010123028', NULL, NULL, '$2y$10$2/lN.RQm9wjDppAEctGMVuoic6TJ7D.DOL1scZwWZxN7FNJ1nUhWG', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12236, 3, 'BESSE NUR RAHMADANI M', '823010123029', NULL, NULL, '$2y$10$LrKTDC0orP6fwa2VnB7hwe/0P3pfAqJkKbSghPVp9tUijVOa2SeFe', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12237, 3, 'AINI ZHAFIRAH RAMLAN', '823010123030', NULL, NULL, '$2y$10$.9zOoxGbJRKsodK9RTTSG.pKQbOdMG96AB29gQu.djuDsE3G2Neoq', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12238, 3, 'FITRAH SYAHRA RAMADHANI', '823010123031', NULL, NULL, '$2y$10$wy3vLOZAqbStrszXq4GKeecCkkM.7vH5RawM9Wz.RAT3QzvdIwITy', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12239, 3, 'YUNIRA SAKINAH YUNUS', '823010123032', NULL, NULL, '$2y$10$pkYRMMU7kcZOYlDwur6L5eaQwyrpeXNcV3.7zoBTAXzV5DL57ZJA.', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12240, 3, 'IZZA NAIA FAUZIA', '823010123033', NULL, NULL, '$2y$10$mcOsnbqIDAib8nGdqNGsxOpWGFgGxAzVPvCi7vqeurESwmgSjSGB2', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12241, 3, 'TASYA', '823010123034', NULL, NULL, '$2y$10$MdKRHqcIyKW5J.30wGi8E.DsNnKlaxjPAyGFJfGY9YnHAy/E1wU/C', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12242, 3, 'HAKKUL YAQIN ', '823010123035', NULL, NULL, '$2y$10$y9Wq.kAOY6J11iMcnQAJXutcRS00Okl28lEQChzChwi9QIT6iSF0S', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12243, 3, 'ALILA ACHMAD', '823010123036', NULL, NULL, '$2y$10$0noGuBTmvUlZSeyiTYlPy.Fltyr7uOogNp8vF3y51dyOBkESQxOte', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12244, 3, 'M ALIF ADITYA', '823010123037', NULL, NULL, '$2y$10$qGFWr0d/7MqWshpsA96fe.KiZHSa3jHhCsdaoVCWB87SWEUHl37IK', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12245, 3, 'RIFQY ALIEF PRATAMA', '823010123038', NULL, NULL, '$2y$10$nFJKbc6ekYw7EGgRu3W6zOPhJGlQqlVcsOveVMT5qUgsiJnhnxe2e', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12246, 3, 'ANNISA NURUL FITRI', '823010123039', NULL, NULL, '$2y$10$L/o7lbQ8CaZDJn.sO5kuaea.eLPewUAdBpXdGp.cQnl50SVdaRt16', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12247, 3, 'SITI NURFADILA ', '823010123040', NULL, NULL, '$2y$10$MsEVSPBbntfGq3hSZzqLOedkGe7PXd0pCUE834B9GlN3PY9O.LV0m', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12248, 3, 'AHMAD BAZZAL', '823010123041', NULL, NULL, '$2y$10$sTKOz3qvIdNSEIRz0NXAoe1zOyoImQMCrcuA/fpmgqRVbZaodE7mC', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12249, 3, 'NUR IFNA TAJUDDIN', '823010123042', NULL, NULL, '$2y$10$sne/QYpC2UlcB/..u585Lu4GBBSjUDxc8ilOV/LOnzWxRlECwkw4S', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12250, 3, 'AYU PUSPITA NENGSI', '823010211001', NULL, NULL, '$2y$10$FCuLG2Iug8His/fljbkBm.GM.mURjUhG3qMku8AdUnsTCtCM0/Eza', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12251, 3, 'RAIHAN ALBAR', '823010211002', NULL, NULL, '$2y$10$mpzAVJ9K4pT86PlzVpmeLe2lFu61U/dSI7eRhmjnIjAwAPG8gbD0i', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12252, 3, 'FAHRIL', '823010211003', NULL, NULL, '$2y$10$tzGe9UaGu.00f9x/lqQoiufCcVbuM3lVmelA51GpL7vqqdo7Ttbp6', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12253, 3, 'KHAERIANSYAH HS', '823010211004', NULL, NULL, '$2y$10$6txk8TSZV6Cnun7OeN3gZOlMnD.YHbPd3PagjZEULXqT3OwznCZs.', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12254, 3, 'SRI WULANDARI', '823010211005', NULL, NULL, '$2y$10$p.G8LumpoVWaEKJAHXd3Pu.nWXuf/TpcZFfwn24j22lAKM29uamYa', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12255, 3, 'ALAMNUARI', '823010211006', NULL, NULL, '$2y$10$BRfI98ErRTamhPB9dmj9reXJn2Cpvn./b5f7SVXQU7q1DOx6Vc0xe', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12256, 3, 'RANI LESTARI ', '823010211007', NULL, NULL, '$2y$10$PhaiKI/MlFqmExiwmIXHGetGe/11j05pyWaZndVvCsVTfBe6JxwVm', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12257, 3, 'MUHAMMAD RAYHAN NIVA', '823010211008', NULL, NULL, '$2y$10$wxdeuznvWvUMezjpo7oQ4Oh0qgZ0.MBU39zR/QX5hbPj3eq5wYONS', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12258, 3, 'ANDI NAHDIA MURSALIN', '823010211009', NULL, NULL, '$2y$10$mT9OesRcqjVmEMPTR2VqJOS.d8ythTB8NMsQuzKEkf4Jimd4pLZ8K', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12259, 3, 'BESSE CHUSNUL CHOTIMAH ', '823010211010', NULL, NULL, '$2y$10$KMiuYFm1lYfJrUg5ibEI5uwsJDHuyNI7o1nXP72thNKwRpWIqfELS', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12260, 3, 'DARMAWIN', '823010211011', NULL, NULL, '$2y$10$/At70w7HTOGLPUS8IgH/LOUep5NoFc8ypOPdU3xwhLloFozxFVVFe', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12261, 3, 'FADLIAH MUBAKKIRA', '823010211012', NULL, NULL, '$2y$10$oVpDCG6o9TzgADQ/SIqJB.d/Jj2Irn7eRocRX/G4cuXC5222AOHq6', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12262, 3, 'FANDY MUSYAWWIR ', '823010211013', NULL, NULL, '$2y$10$QLR1uLwEGwEncKV6y0Iaouym1mBO5wuNLK3OIsGWJV/rLuWbWIDpq', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12263, 3, 'NURHANIF HAFIKAH', '823010211014', NULL, NULL, '$2y$10$R.gJWQAW4x6dLC4PSh97AO.6JpBWjX3wBIAqYD/SwELFVW3H21hVa', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12264, 3, 'EVAN IRWANSYAH', '823010211015', NULL, NULL, '$2y$10$vJ5D6Ce10cqhZWFLkv7Y4ufgINEqnofZG/39caJqU2UmFoseVCCDi', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12265, 3, 'ERINA DWI PUTRIA', '823010211016', NULL, NULL, '$2y$10$8wJOloft4sReSOSUuD4GneHs179rSa9nBkYT9jqGYcnTJhFW7mExK', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12266, 3, 'OKTOBRIAN RANTE LIMBONG', '823010211017', NULL, NULL, '$2y$10$xD.kIW5usVmzgc0p7NT7EeQku0sg57VGID4KZHZh4pHOYHmoOCTLa', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12267, 3, 'FADHEL MUHAMMAD', '823010211018', NULL, NULL, '$2y$10$fvimnUEgiISLPTnl8kEuHOpyPcSyJw0IxwWfeB/9J5m7xccLjlgBy', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12268, 3, 'AYAT NABIL AL KAUTSAR', '823010211019', NULL, NULL, '$2y$10$FuPqYeNACfVaJfdawXHDz.KRQRwX3Vvg1NGUAn2gSq8XxBEGjeAbm', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12269, 3, 'SINTIA SANDA DATU', '823010211020', NULL, NULL, '$2y$10$vosDDilFoELv9z4rGLOSh.qwmk6GY.VTzy45.AT8KGlgHrrrNiWEG', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12270, 3, 'MUHAMMAD ALIF AFRISAL', '823010211021', NULL, NULL, '$2y$10$26nnYGSdJt2Yee4p0MNGMOIofz6z796NT1oe1VhME.iRE621IQn/e', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12271, 3, 'MIFTAH NURRAZZAQ', '823010211022', NULL, NULL, '$2y$10$KbZQ6QQu1GLWw/fR9gLlE.DRF3Qh5ye2APrt.5zamBcmN4ozF9lKC', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12272, 3, 'NUR FAISA', '823010211023', NULL, NULL, '$2y$10$HEICTySp4rCqBqcIWMJtu.BbVG5kGCL/TMHPz0wlKX6/x4adKIJli', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12273, 3, 'NUR AZIZAH RASIKHAH', '823010211024', NULL, NULL, '$2y$10$cAj2/vL86zzFc.y6BkOWWeUZY5pi9aukPIjV.bHp8YUrjC8kqU5A6', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12274, 3, 'NAFIZAH FADIYAH', '823010211025', NULL, NULL, '$2y$10$1gTfyJMxmL93piIMI805nezYU2qwcMBAZV/Rgds9YGVxULk6HQLZS', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12275, 3, 'MUH FACHRUL', '823010211026', NULL, NULL, '$2y$10$Z9Jv7PVDpTsule7trZOFmOZsVVsKwXHA/0j8xLSjPVMHNHftYsHgy', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12276, 3, 'MULYADI', '823010211027', NULL, NULL, '$2y$10$dw.u9uC4trcc/9FelxFKtu/NHBb4ObMoegJSV4tr90.CZZgnekSkO', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12277, 3, 'M NUR RIFQHI DWI ANUGRAH', '823010211028', NULL, NULL, '$2y$10$rwIlE3VuVn8gXcgfzQYn/OWdg2M19oAFkgY9DyWnSby7CiLyrN6xy', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12278, 3, 'NATASYA MAHARANI', '823010211029', NULL, NULL, '$2y$10$pEOzoc33yiMHUKa99Nc30unE4797JgnqW8vb8y2GQX4SYTI4r5Yo2', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12279, 3, 'KHUSNUL AWALIYAH WIDYAWANTI', '823010211030', NULL, NULL, '$2y$10$Ype8hfVutWHC3riO10ZJNuTSr1EbXA4dRQH2v8JEECafXGNQ/8Ooe', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12280, 3, 'NURFADILLAH ISMAIL', '823010211031', NULL, NULL, '$2y$10$VuBxnFx6xbk8F0BWvTPWVOAWFO7Pe8ow/mskD0CpYlA/iZYA8U8nK', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12281, 3, 'JULHIJAH', '823010211032', NULL, NULL, '$2y$10$tvu0ZcDIFUfUyTO6qOsrY.UcHQ0Hnh38802XRtR2ad..MUxw0vdn2', NULL, NULL, '2023-07-08 10:37:50', '2023-07-08 10:37:50'),
(12282, 3, 'AGUSTIA NANDA', '823010211033', NULL, NULL, '$2y$10$4sSrcCFbEK6nSlVIIYp3dueOsXQw6NQ4V4PWQnHlNL8lP/pQ1lNcu', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12283, 3, 'RIFQI ALFARABI ', '823010211034', NULL, NULL, '$2y$10$2eTHTw2SLFXxMYY9dwBgfOED5atj44TqtUOUjmuCf.IVxhKFyqSP6', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12284, 3, 'MUHAMMAD SOFYAN NUR', '823010211035', NULL, NULL, '$2y$10$ua4B7LFps9fvElejJqJ8mOz090.J2g2SwnkRydRjAceT62yXJgdTG', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12285, 3, 'ILDHA', '823010211036', NULL, NULL, '$2y$10$fkLBUcWXsj9R/9Cpcslxq.hG2iHTsXDZT8KExUDQpofKp0G7Dp5Fe', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12286, 3, 'AULIA ZASKIA', '823010211037', NULL, NULL, '$2y$10$CLJ7mmgbeDHF4A6eDatIoexzXJws7Sgen1TmOF3KZwa8P1t2P8LFe', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12287, 3, 'PATRIO TOTE', '823010211038', NULL, NULL, '$2y$10$slMqTgzalb0XK/.KDGSmT.8Bz4Ub9KdPz2Ekz8mp.nsEvbLyipP/2', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12288, 3, 'KHOLID', '823010211039', NULL, NULL, '$2y$10$r4eh3pAnIPHghH2K3y2aLO804x2j4NEUx.bVsSU5jb26NBJeKNSIe', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12289, 3, 'HILMAN AHSARI', '823010211040', NULL, NULL, '$2y$10$PyVRKnNjDk.K01eQ8Z/TzOTOT/.N6r6ivlzwbnHmxfkOY100ehD5a', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12290, 3, 'MOHAMMAD AKMAL', '823010211041', NULL, NULL, '$2y$10$fWchcvy/T.T5W54K6azLueYuQsfPKbw/MORwVW12jimFC2CNMILhm', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12291, 3, 'RYAN DIKHA', '823010211042', NULL, NULL, '$2y$10$99bvqbSXRk3GVAIUEHqio.qv6BoHYGZTZMBF70B9ZI/If45I6HGFK', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12292, 3, 'DEVITA', '823010212001', NULL, NULL, '$2y$10$jjOsTG5/5sNTtbPCL2oB3.OW0wXto1IgXpGlZFmHUBNgu8Vl5GSCO', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12293, 3, 'ENJEL', '823010212002', NULL, NULL, '$2y$10$qzCECwECH.4Pp3EfZMCmjOuhcPS6v4fxo.0.e93yMeuGKxn7kjJgu', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12294, 3, 'HASRAENI SIGOLLO', '823010212003', NULL, NULL, '$2y$10$UH6WAgW84NJu.OAC.vezD.XX10bV.KUewG1zJ2zSCeTwEng.TCCFm', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12295, 3, 'ERIKA PUTRI PURNOMO', '823010212004', NULL, NULL, '$2y$10$oEceOcG6sIKmBmJgguK4WOSTmZ1TCW/SlbX98MqyV2YG1ZmcNYTIq', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12296, 3, 'MUHAMMAD RIFQY', '823010212005', NULL, NULL, '$2y$10$f8bItv1to22aucVLYmNshOtr5B6U74AI56zVMBVVGpY2QjQF5LA16', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12297, 3, 'DIAH ALYA AULIAH ', '823010212006', NULL, NULL, '$2y$10$TnoVaAWYBKJlluW6SWyGP.2KkfJpzXyeOn4raeyUXNK6u8Hj2zyVu', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12298, 3, 'FILDZAH SALWA UMARIA', '823010212007', NULL, NULL, '$2y$10$3TM47ln3MtgOGdk6NI6Koe5vbsEOl7actSuGyNS31PoGWezjYRdrq', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12299, 3, 'PUTRI AGUSTIN', '823010212008', NULL, NULL, '$2y$10$jUn0z7C67VdEDIfklx.y.uom5AHpos9aMRTLVcx6uMp63lkEptr72', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12300, 3, 'SULFIA', '823010212009', NULL, NULL, '$2y$10$PYVSGUQM78agk8HXehQztOtX2atseg3r1SBas0j.1C9h3Qw8l7Tvm', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12301, 3, 'PRATIWI MAHARANI', '823010212010', NULL, NULL, '$2y$10$D9dcYpsSarDuhOGMSTofluZyhTs64cABZw.zoGOeyMgRDyggp2v0q', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12302, 3, 'NURUL MAGHFIRAH', '823010212011', NULL, NULL, '$2y$10$i5Qisi0cL0VmqlyN8IZjfecFwozp7//GOlopc0rB4iOC7LwXfewWG', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12303, 3, 'DIYES MANGIWA', '823010212012', NULL, NULL, '$2y$10$wLaBiq3zi8ou6P8Jm98gGuphk3atMXwxTWYXircNE/jYoUfmW6dAm', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12304, 3, 'FIKTOR RANNU ', '823010212013', NULL, NULL, '$2y$10$o.t6abfEMznC7stTdj4pc.ejiul./Zx1UZT/JzZHa2OH1KtAAdw1i', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12305, 3, 'ELSA OCHTAVIA WUABUNDJO ', '823010212014', NULL, NULL, '$2y$10$wvLrPSqK3XeIixa8EByV2u8seHnOaU8T5ZzhnmZvGYSZLhJZyuDJ2', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12306, 3, 'ALFIYAH ASILA HAFID', '823010212015', NULL, NULL, '$2y$10$pn8w6N6poWhTO1DM8TBhleI3UpyKwGXvRrh10I2M59OwlDRRuy2yq', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12307, 3, 'AFRISYA SYALSA', '823010212016', NULL, NULL, '$2y$10$0xe5e6Tp8hRPELv78CCC.uiGYAWkUDQ3cKGMJIoa95EUPrPzkr.GO', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12308, 3, 'NURUL HIDAYAH AHMAD', '823010212017', NULL, NULL, '$2y$10$rjqrJfoa65w0FuRRdG00Z.9LlzeahHs9s8NNmfIYFY1DBK37uzQ9u', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12309, 3, 'EKA SEPTI IRIANTI', '823010212018', NULL, NULL, '$2y$10$ZvHcWOtRiNdiCmMlxbsg9e1zqV/f/eWw3QxXhcqDhUPfeoH304wy2', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12310, 3, 'MUH FIRZAH ABI RAFDI', '823010212019', NULL, NULL, '$2y$10$8J6vVzdNy8gw8GjoUqp13OC.Y0nPN7ZA6RKuyDNcdOXzO7dgNJPv2', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12311, 3, 'FAUZIYYAH AMANDA', '823010212020', NULL, NULL, '$2y$10$qo53wEcGHASAqC9KMfV8sumn8VSssbWyg3CP38x//4fWPTMyeMAH2', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12312, 3, 'SHOFURA AZIZAH ', '823010212021', NULL, NULL, '$2y$10$TxvjQVWKCvcdDJHg6as4NeCIySuxnuFhco3ZBIh6TyMvRVcaNPhjC', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12313, 3, 'MUH NUR IHSAN AR', '823010212022', NULL, NULL, '$2y$10$BGEruyqbTaACE3RXDUs4A.ZHcZizNT/VrYF/.rcMtImnQSNCKCjlG', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12314, 3, 'MUHAMMAD FHADIL SYARIF', '823010212023', NULL, NULL, '$2y$10$TfjXFwDpFjxx3Q.osXl2M..wgkGZ4Z8Cia3ipjCIpGZWXvrxqiF6u', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12315, 3, 'FITRIANI ', '823010212024', NULL, NULL, '$2y$10$z6NFheFnr.lE3vINuW9GhOOSOvJD2HMO99t/Yf8GU6CILDB3AMfda', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12316, 3, 'MUH NABIL FANI', '823010212025', NULL, NULL, '$2y$10$O/Hn59ZpRKJkl5eqWste8.WXAD35jlMdcUfqgO192mNmABSqnAbG2', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12317, 3, 'ILA QISTINA WIDIYANTI ', '823010212026', NULL, NULL, '$2y$10$e9LPEC.x6yULQoATnJ2J5.Rnn0Gl7TKqsl/J8M3e6KDHZBr9dWlka', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12318, 3, 'NABILAH FATMA RAMADHANI ASYFAR ', '823010212027', NULL, NULL, '$2y$10$74m71G5br4H4tdmzzCGABOl24ty22XIa2tHi6djy1UCkSwK.5jysm', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12319, 3, 'PUPUT INAYAH', '823010212028', NULL, NULL, '$2y$10$BnQbKANrp/pPNE.hLIFdS.mDDizJ7iVy6KIBw.T2pcA2H2eNR2ZU.', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12320, 3, 'MERSI IRWAN', '823010212029', NULL, NULL, '$2y$10$MqPibnBcifUKWwhtfmpVrOpXf3v0CbBGfyNOvFv/8cLAF6ANZxWA.', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12321, 3, 'JUSMAN', '823010212030', NULL, NULL, '$2y$10$BTAX3LLigP8NAIUEl8Ma/OJQa4F/ukTSz1Opd/Kep.6fBNa5/e6WK', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12322, 3, 'MUHAMMAD AQIDAH ', '823010212031', NULL, NULL, '$2y$10$ash8HVw52gl2tokZciNpmuJDfx9UsXxA.y5LibYfv9LAYjEzy27X2', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12323, 3, 'REZKY TRI ANANDA', '823010212032', NULL, NULL, '$2y$10$AohU2a3PTCPBl0m.frIZa.RSNmtxf1ENw2IytFyG6jIUwIMMGzahC', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12324, 3, 'ALLYA', '823010212033', NULL, NULL, '$2y$10$yo4V2I2PP9uMyYxX.72hq.Ye9Pnut1utR1VCUJwl8wDKnwo213ETm', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12325, 3, 'MARDHATILLAH', '823010212034', NULL, NULL, '$2y$10$sREpt32IlRDZS/P1f8RXFeVbI4I3r8fYPkcoJRn7p9hsAZT2LiUUW', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12326, 3, 'NAJWA FITRI RAMADHANI YASIN MS', '823010212035', NULL, NULL, '$2y$10$AP6Tz9G1dGhb/MsiKWgmOeWxeEmSZBwMvydxQ6lCRNBsNFruKig.O', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12327, 3, 'MUHAMMAD QALBI ', '823010212036', NULL, NULL, '$2y$10$Z4v8TipnWpVD6sHxZ78uw.5HgQr6ms6WMyn9gST4tRs7iA9oGiAmC', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12328, 3, 'SANDI ARIEF SYAFITRA', '823010212037', NULL, NULL, '$2y$10$hq3uL9QGTSoumuMmZFtuKeTrVCkszgYyB0C2.l/u3TEorLQo1BaHy', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12329, 3, 'MUH SYAHRUL SYARIF', '823010212038', NULL, NULL, '$2y$10$vEDlvgFnqxuv.85kWjEcvufjrea.qKZxcu6kLLJ3Y9rCv/NCRnNl2', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12330, 3, 'MUHAMMAD AZHAR ARYADI YUNUS', '823010212039', NULL, NULL, '$2y$10$oGVwKWoO/OTwZnKtSr609uVklVDP/O1jr/eiM12X0q9e3ESA1CwsO', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12331, 3, 'HILDA', '823010212040', NULL, NULL, '$2y$10$MmxVjpQ6aEdMgGpShB0Fe.HhBwRgl8ZWbEEosSOAwFkFS/N3sEG.m', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12332, 3, 'NUR JUWITA ', '823010212041', NULL, NULL, '$2y$10$ao8JWvUZPLYsERDq5O6wBeplMW9GCvo8kdDtOTIGHoPMm4tuXhb6.', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12333, 3, 'NUR ALFHAINI SAFIRAH PUTRI ', '823010212042', NULL, NULL, '$2y$10$SUAArc0q6e7qYt8W6A51b.0WxnoRDNYkCVzNEv4RG5G5vs.nPiyte', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12334, 3, 'SUCIANTI', '823010213001', NULL, NULL, '$2y$10$gETPfZ5J7LUFtOsCEQJo3.t1r4SDM5LLDsAEjqM.0ASsR76fa2zRy', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12335, 3, 'CHUSNUL CHATIMA RAHMAN ', '823010213002', NULL, NULL, '$2y$10$ZQl6DXs05TN9ZlrNfbNfeuwCngIQjRhWs2UYtT/buFvwm1Hmrn..2', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12336, 3, 'AQILAH NURUL KALTSUM', '823010213003', NULL, NULL, '$2y$10$cFRynI4vWCI20CUVdYBUwOn2BzT9NdQhLaIuEA3FapaVtzMOZcYS.', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12337, 3, 'SRIWAHYUNI ', '823010213004', NULL, NULL, '$2y$10$g7l7/SvWFGl/uQdUmtMUNuTyRK3dWozwPNKOJlpwvrODQjJ7PyWDG', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12338, 3, 'ST ALYA RAHMA', '823010213005', NULL, NULL, '$2y$10$GKjjzNAqZNyxuXuheTyQ3OAEP4/UxArG145MtXrc0Vy2S.ZgIWcg6', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12339, 3, 'NABILA NASWA ', '823010213006', NULL, NULL, '$2y$10$7SwS5IausmrXIFjngv8tiOg9W6RezAo4gIH4qj1E8YUkOoWxMayZa', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12340, 3, 'NABILA FEBRIANTI HERMIN ', '823010213007', NULL, NULL, '$2y$10$LmaBIeO6vtAEq00paKC1P.eJ2rDfXruXfRC6yyWqJbkhUvCCbqWYm', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12341, 3, 'A ANNA FITRI MAULIDA', '823010213008', NULL, NULL, '$2y$10$fkxO66nmBul4rZr0g490TeF6y1YaLiN3Mhw2Z9AaYvT3/nMynWCBK', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12342, 3, 'NADIA ATMADIYANA', '823010213009', NULL, NULL, '$2y$10$51n2YAt7uCn1c9rA3mfMIeu5VO6XQfRge1QlF8y/M2tOYdIUe/dvi', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12343, 3, 'ANUGRAH', '823010213010', NULL, NULL, '$2y$10$s77ZMGknsDjpGZYSbc6mq.Ey5T7IpN7kHEMH07edear8QutwQEIf2', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12344, 3, 'EFRAIM TRI PUTRA RO\'SON', '823010213011', NULL, NULL, '$2y$10$dI9rvEw5kHPWcPtjgkgVHebKxgJndjoEVpUKXPY8PwY76V6IWXuLa', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12345, 3, 'ADISTY PUTRI ARYESTA', '823010213012', NULL, NULL, '$2y$10$xOOOZO9/DmacFtEVj8NNMuHbA6M8ai3BI5.hSWQ/LWA1Ks/jEPlRG', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12346, 3, 'NAFA SYAHWA SALZABILA', '823010213013', NULL, NULL, '$2y$10$xxi/kVGLebGGTuckZVV0E.5QYjILF0sqEfyoXAusEV7ChSgsk3pZK', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12347, 3, 'KEREN HAPUKH NABABAN', '823010213014', NULL, NULL, '$2y$10$GEk6Ls2DSnWVNMboD//XfOkKAdtquw0OBWM6SzvKaM9RepUE/0qki', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12348, 3, 'ASDILLAH ', '823010213015', NULL, NULL, '$2y$10$6JH8pmsDc4cjfSdotaGeJOo35Fd6NkrVv86N0S7QBjcHs72CKoWzS', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12349, 3, 'NURUL IFFAH MAJIDAH', '823010213016', NULL, NULL, '$2y$10$beKwjI.7lAJyfYbL6113wuFcz8uocnmMShS5qaMAv/j.i/t4LBJLa', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12350, 3, 'NUR\'AINI', '823010213017', NULL, NULL, '$2y$10$ZFuXRvVBfufnpE1w.k5EH.qPDnGNaM9PnhDOJjZrSfZUuBNBHpvtm', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12351, 3, 'MUHAMMAD AFRIZA ISMAIL ', '823010213018', NULL, NULL, '$2y$10$Qc1CU.ZPinV0YMZnAIo7i.ATiewQZ//AVg75XSsKDFMj5RD66ZDlq', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12352, 3, 'RIANA RIZKY FADHILLAH ARWI ', '823010213019', NULL, NULL, '$2y$10$.xE1KcO4qZDAv2yoKTAq6u8zj8Hmk5iLx2PqcHr8NE126wsc0F2kO', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12353, 3, 'MUKARRAMAL KHAERA', '823010213020', NULL, NULL, '$2y$10$LiwoWaekLPJnEzXPZQhnd.7PKZtMPiD2w14AKA38Acxz0x5rHUeOC', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12354, 3, 'FAHMI LUTHFI MURSALIM', '823010213021', NULL, NULL, '$2y$10$oAtoLxH1VZqXrsA3qhLPSOj342R9rr9SPHiW8RN0RoFPFg1lVRomG', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12355, 3, 'NUR AMALIA ', '823010213022', NULL, NULL, '$2y$10$HSDL2KYE7H5sd07Bx7x.nOXWJQ/U5sNR4rFcxGubU6V.SJ/ATfqbS', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12356, 3, 'SERLY RANGGIA PUTRI GEIN', '823010213023', NULL, NULL, '$2y$10$I2hQD3/f6MqtFPirqJrgr.BmL.GNdribMdeIc2k4pNiID.kPjxkkK', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12357, 3, 'SYAHRA DARAJAT SALSABILA', '823010213024', NULL, NULL, '$2y$10$U8aDSyUUBfPtrRJ9YiFhJe6AkY2d/vuX.PnqgDE/dVfS7AUJ7E.c6', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12358, 3, 'ASTRI PADALLINGAN ', '823010213025', NULL, NULL, '$2y$10$7H/M4YCsguTm0k7hcAJksOR4SU8Tr3anF/UCAsgKrs7Vec4Qjsx86', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12359, 3, 'KAYLA NABILAH', '823010213026', NULL, NULL, '$2y$10$Q0ZhiF2z94V1okuuTPPqQOpLnXLlXPsBf7Ne6bkUX0mpK7/JTutgi', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12360, 3, 'MUH ASHRIREZA R', '823010213027', NULL, NULL, '$2y$10$hszU.aCD524qKH4.VmQ0Euoo9iUmZN9ZN/gC2rN6OPeKhYH/fC3Oi', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12361, 3, 'AGUS SALIM ', '823010213028', NULL, NULL, '$2y$10$9oScTGaEJ1syS9bWftliG.zLLhquvMLWSJiTZKYOrxmRsxJ.mRDXG', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12362, 3, 'ZEFANYA PUAN PALENTEK', '823010213029', NULL, NULL, '$2y$10$zad09bWnsKqFg4APIWY5XOkEGrC8tSwuqsUIK7FeyiUdZbPKweh82', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12363, 3, 'NUR INDAH PRATIWI ', '823010213030', NULL, NULL, '$2y$10$HIXsrKZgK/HH8zARAPegV.OZLgjHgBZ/B/qS6SJTyi1xkNBE8mm5a', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12364, 3, 'CITRA AKASYA', '823010213031', NULL, NULL, '$2y$10$KpXABLS3geVgzvimKzleEeCWKNxTJFonYOSNfGShOj03mVfQXYeou', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12365, 3, 'THALLSA CAESILIA GAREDA', '823010213032', NULL, NULL, '$2y$10$rO54gkU54xrwnypwSMZ88.ohxubr9fhvKwmEQcwZojTHtR6jxIQoO', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12366, 3, 'MUTIAH', '823010213033', NULL, NULL, '$2y$10$YI/TqNCEjGKurPUpidLP9eQwljuRj1KQz4cnHvGhp/OW/.3awRK4q', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12367, 3, 'ASRIANA AS', '823010213034', NULL, NULL, '$2y$10$e5aJXwCBo/NhqEXnLsVbIuGrn4.79RK6GLpfTs3J6U0rM7F/yf.8S', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12368, 3, 'NURUL AMALIA MALAWAT', '823010213035', NULL, NULL, '$2y$10$vyOUTaOY2swberaKLMqL6.Q/tixwh1i00EWeBqLjqcZGhYPGds0f.', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12369, 3, 'KHALIQUL AL MUSAWWIR', '823010213036', NULL, NULL, '$2y$10$yzztcPPrLsU5guF4CLmVwe/L6VmVjtOtMGkjxPhcT.WQghQA5Wfja', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12370, 3, 'SAVIRA VIRSA', '823010213037', NULL, NULL, '$2y$10$.6w7WE2MqmwIT996MvZJFutaovn86uuRQ0TfUR9k5ycI4C63Cue3S', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12371, 3, 'MUH NUR RAHMAT HIDAYAT', '823010213038', NULL, NULL, '$2y$10$VIIIXYC.PfL.7T7YlJrYUOWmZiQx209ZGRe6K6zL3DmjkcVqhKDLa', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12372, 3, 'IKHLASUL AMAL', '823010213039', NULL, NULL, '$2y$10$ogLQYmWf.AWgvn7JxaGbzODeohuXbKkApHCWkwh7nGXPEJxRVg8FC', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12373, 3, 'CHARLES JOYLAN HAVINGA BOMBONG', '823010213040', NULL, NULL, '$2y$10$uDOpUoBOPLndinNnnhwm4.SvBeHOn5r40tW1Zx5v/TppWew8ybBFe', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12374, 3, 'SOFI MELINDA', '823010213041', NULL, NULL, '$2y$10$OdAklEIppbb9u3FuxW6YyOvTo5XTItotQfqIt3vUBwcv58CRcMK.W', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12375, 3, 'JIHAN RIDHANINGTYAS J ', '823010213042', NULL, NULL, '$2y$10$s5CdcSYyVz3ZGcM7CxzJfeyCHX3FU0VOcSZ4l3N4pkJ4bky.rniTe', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12376, 3, 'AHMAD FAHMI SUDIRMAN', '823010214001', NULL, NULL, '$2y$10$uOLXzDVWRJn1blfC3booouXV34PGKaRyzhdSnEVY1haJ8xiDIGnFu', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12377, 3, 'FRENGKY FERNANDO', '823010214002', NULL, NULL, '$2y$10$wfgKUYQrfpwqf2z/vRR/1OC7hrdX0PW/2RxKQ/itoGqb9nfHV017e', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12378, 3, 'RAFIQAH ADNAN', '823010214003', NULL, NULL, '$2y$10$/Dn2mnoyD.OsxnU0yZKnL.PpL6EngbQ/aifXcG3Vhgo0/xtzUSufK', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12379, 3, 'M NOVAL HILMAN NURFADLI', '823010214004', NULL, NULL, '$2y$10$7tinLGl5dw1iC3ZhSgOoTeLFZpQ3IjgmX1PnZB6ufN8yH9ClrxI4G', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12380, 3, 'MUHAMMAD FAIRUSSYAH', '823010214005', NULL, NULL, '$2y$10$iCpwnU71Q3GhTHBBxu.DmuI0Jj38SpNiWZRisBNTljp2L7TfWdZEe', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12381, 3, 'ANDI MENTARI', '823010214006', NULL, NULL, '$2y$10$WOdDqDPnuOxVYZBZfC7VEujvztg55nore4AV8F91YJj9rGncVAiKW', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12382, 3, 'ANSEL SOFIA ', '823010214007', NULL, NULL, '$2y$10$zMWpKf.gzrJ7O1uDQYwzJOY3gYtmsuYy3L1H3O2lK0cmyz0JEtXW.', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12383, 3, 'SRI HESTI WIDAYANTI ', '823010214008', NULL, NULL, '$2y$10$zR2kXvd0Qc8TXecahb7Xvu/PjquYtsE/RZGUX/sa31KBd2.7gU6Mm', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12384, 3, 'KAMELIA RAMADHANI ARIYANTO', '823010214009', NULL, NULL, '$2y$10$0aA.fzhLBOk80qNMZ27Kr./lT13Z96HX1dI53MaTqyrk94YOw44Sm', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51');
INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `ip_address`, `created_at`, `updated_at`) VALUES
(12385, 3, 'GINA VRISILIA', '823010214010', NULL, NULL, '$2y$10$eW8cHkxkxmD3MRq8M8H/je2NwAnZ13HDNbF1I8OZdpkdT/x9RlcCK', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12386, 3, 'FEBPRIANTI PATIUNG', '823010214011', NULL, NULL, '$2y$10$AZYiafDd.qddHlsY21ZrD.eWP3KJgkJo47BabE4qEKaoJMbac09Zi', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12387, 3, 'NUR FAUZIAH AZIS', '823010214012', NULL, NULL, '$2y$10$JUXamVvQkB5tjCm7BIxK4OlkfqY3Z5tgCrZWVBnfcuSCENggEpH.y', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12388, 3, 'ABDIADI', '823010214013', NULL, NULL, '$2y$10$pYbwEybDlogSJCF8lQX2G.1qB39HGTEP0uvSBta3PSL4Hw7lduFbq', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12389, 3, 'DHIAN ANGGRAENI BASTIAN ', '823010214014', NULL, NULL, '$2y$10$Iwh518.vvuN7IPi94t3eWOhdCzs9Xv.wW6leEyRDwfbs6JYR0MVXi', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12390, 3, 'NABILAH ANDI AGAM', '823010214015', NULL, NULL, '$2y$10$bC5KhkTdhN/BnaSwg1GieOgT822nFlq94WgGLAsKBQLKDgbYL/oeW', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12391, 3, 'ABDUL WAHAB SYAM MUSTAPA', '823010214016', NULL, NULL, '$2y$10$HGHtN49Q0KsgR1YfQRTK2O1ALs6gnbEN.g084f97D7nrANQFrvMpm', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12392, 3, 'SRI MAULIDA', '823010214017', NULL, NULL, '$2y$10$S50bPXHCXUhGfE1d//GeB.GAMsohPwkHh364PAbnjDiHDqWhU1pLa', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12393, 3, 'EKA SUCI RAMADHANI', '823010214018', NULL, NULL, '$2y$10$mu0DMTYE3ZNkgSUttWtGyeCt95v7yS8ufHbFMBgu8bFhjkns/7M8i', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12394, 3, 'NUR VADHYA WARA', '823010214019', NULL, NULL, '$2y$10$tFfqONE15FcZ73zaWm3Jk.vOyx5LUmeoeE3/BPFoJs3OZw4qwyj5a', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12395, 3, 'MUH FAIQ AMMAR DZAKY', '823010214020', NULL, NULL, '$2y$10$/FUKGyA3KaBexM03SvRsWO/OFN1OpDZ8U0BZEIG9g5iYU3ZYuw7A2', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12396, 3, 'SAFIRA', '823010214021', NULL, NULL, '$2y$10$cnVTXmHcbpDRK70Guel0j.ZrZ4cuiMK.CLYH.7anauHY3/KxvPbOa', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12397, 3, 'PATRICH ERICH RAPA\'', '823010214022', NULL, NULL, '$2y$10$rscGzPcrdLsBaF0Ct5oYDuLHoah1YWkyw0S/fjmsPU4etIkwfVAKW', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12398, 3, 'ANGEL MAYLAND ', '823010214023', NULL, NULL, '$2y$10$Ocwa/3tiLbkiTPrdxDtl7e4Z.oNZViR/rl8m2jgHVeJpJHdh6rutO', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12399, 3, 'SRI NURLAELA MANDIA', '823010214024', NULL, NULL, '$2y$10$yFF.7HPQ3oQlFDW4jWWv5OcPEFzcMF.K4p0XPEpWgqRNxGTH9Z7FG', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12400, 3, 'ASTRID NAILA YUSUF', '823010214025', NULL, NULL, '$2y$10$kRrGeeIXlH6KlIIrkCKOW.J3aIqTf6.U7sajEdXC8C6cdL3HYJt5S', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12401, 3, 'SOFI NISWA SALEH', '823010214026', NULL, NULL, '$2y$10$2A3fmG4O04zqywVPFcFqUuhNqRsM/phNc.d3fYZ1X7zNALsgLCuxS', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12402, 3, 'VITRAH RUKIA', '823010214027', NULL, NULL, '$2y$10$e5mud.I1mlyyfPSW8IWHhO3cq6n4ZnE8eeBCeX4lcNSatAoOUuomO', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12403, 3, 'LESTIA FARADYSCA PUTRI ', '823010214028', NULL, NULL, '$2y$10$trmyKgTu7bNsoj6EHHjbwOQ4iPixSqa/i.v8rROBYn.zHMoJuEij2', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12404, 3, 'SELFI RAMADHANI', '823010214029', NULL, NULL, '$2y$10$qYiB4SO8ckOAVm/piW4pzOiOFl00vS7.H/QGw80IqGDl.SRr1H8qm', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12405, 3, 'MUHAMMAD ERWIN IKHSAN A', '823010214030', NULL, NULL, '$2y$10$gJevllGdaAcOMHkKiXNhCO0QcDOKAVSWxCSDQp79xAIahR8OtOy8S', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12406, 3, 'BENING PERMATA ANANDA', '823010214031', NULL, NULL, '$2y$10$P5yUcykXZS5g.kXw0Hzx5.KZfRe88bffZE8EBUWaF2/EOqU8ZE6LS', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12407, 3, 'CINDY SAID', '823010214032', NULL, NULL, '$2y$10$f/Kw8kvKI3BSiieI4S8sb.KjQ6C9OWjdka8VQi.3EA7lPUdlP0UmG', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12408, 3, 'JOI NARDO TRISUSANTO', '823010214033', NULL, NULL, '$2y$10$fN5rcp3hANitnSjgnVpsMeFKZh/nMtMG3H6t3SB8MUpcAxQaORbx.', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12409, 3, 'MARDELLA RESKY', '823010214034', NULL, NULL, '$2y$10$e7VtopmoDRuVFZ4fcAktreM2AFUeOu.w.PWO0chiL1aymXXwhx9UO', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12410, 3, 'ANDI ABDULLAH ZULKARNAEN NASIR', '823010214035', NULL, NULL, '$2y$10$L1efzNmdn7lgOgeF4DEwqugSJNY5RofDCnqS600TomSLxvIhSc1nm', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12411, 3, 'GIDION MANIK ALLO', '823010214036', NULL, NULL, '$2y$10$OxIfb3cvmDfYGk7mxxo0q.xgJd/PUGwXpIBoIcWU/BWkhISKEF9Gu', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12412, 3, 'MUTMAINNA ', '823010214037', NULL, NULL, '$2y$10$EWOBQYr2JcgIe7QHg0e8AuuvPPQhlQQTGOJ7vEat5MHn7yEWpsx0G', NULL, NULL, '2023-07-08 10:37:51', '2023-07-08 10:37:51'),
(12413, 3, 'DEBI DAVINA KALILANG ', '823010214038', NULL, NULL, '$2y$10$j4j2/e7W5GjT3fLQuynnMeR8.g9kQUhhQwfSsWFVWIFabWeZlMbyO', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12414, 3, 'ZUL FADLI RAMADHAN ', '823010214039', NULL, NULL, '$2y$10$b8tKufTuppVDIfy5LFgw5Oitvxda33ozHvAHpmgNfxhxjz6Zm4a2.', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12415, 3, 'NURCAHYATI ADELIA', '823010214040', NULL, NULL, '$2y$10$fpH5375KtYiYAWWN2giPuOVakW06jpXbd8gjlk9SKKxQP80g6aY4q', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12416, 3, 'EKA WAHYUNI', '823010214041', NULL, NULL, '$2y$10$SCdEJVd3KlbGKkOBV/mxZO2fp7k7vV3AYvgL6/6nA/7Mp0FndbvZe', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12417, 3, 'ASDHAR', '823010214042', NULL, NULL, '$2y$10$UJRpnOfYAvJHoJ7IeddG6eIVqjuYxeUjz4WOD7S2Yixlk65MeyXu.', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12418, 3, 'AMELIA NUTFASARI S', '823010215001', NULL, NULL, '$2y$10$xjqj3sDTr39syVBB/RUJLuE.9DI0dZuCdFpcIXNpYagSpct/TvCfi', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12419, 3, 'SITI HARDYANTI AGUSTIN', '823010215002', NULL, NULL, '$2y$10$wN.G49/H1SV2DYHj85Hci.z.9VrLqAHwub/ZUQTDeBBt5//twUNg6', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12420, 3, 'RATU AZIZAH PUTRI', '823010215003', NULL, NULL, '$2y$10$vaa4cHeVede2oNr747P82uSVsbFmIG.fXcKOTi.KpW6xvBxpQdviK', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12421, 3, 'RISKA AMALIA', '823010215004', NULL, NULL, '$2y$10$M5vr2M9JbZ.SO9WNKvBA5u5eEwcWpmU1k.iSu9/13D9CFIc7iw1ue', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12422, 3, 'NUR AFNI AMELIA PUTRI', '823010215005', NULL, NULL, '$2y$10$Z0a1ytMDg1KApVtZCTe.KOha279LLfxgjq.hxESdkPcU2x71vaJ0C', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12423, 3, 'HASWINDAH', '823010215006', NULL, NULL, '$2y$10$x2M8M1yWIYhDic8ObW625OXSXqYJQ77Qg77e2dVnM4fPRvtzkYuj.', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12424, 3, 'AHMAD ZHAFRAN DJENAR', '823010215007', NULL, NULL, '$2y$10$Q.DO1UH4S8KDAJjQyZyRPuKjQwIK0JFdS0HjPiWClAyWbfFH0pfTy', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12425, 3, 'NURHALIZA ZALSABILA ', '823010215008', NULL, NULL, '$2y$10$S17jFUyBnh9NXauLqFJuIuTV9LZJWsEl/smyq6Po57yenDxEA5IaK', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12426, 3, 'REZKY', '823010215009', NULL, NULL, '$2y$10$xyDTWtPj59WOv4QKmQvDO.Dpq5fhGfZkWJMlpGI3b.f/e8vn3hwDi', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12427, 3, 'SANTI', '823010215010', NULL, NULL, '$2y$10$im73MsRGrJhnnDiDJAIaQuuVn/VU0hjoTsVAv3Nj/eaEQ2mHnlFv.', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12428, 3, 'TITA ENJELIANTI ', '823010215011', NULL, NULL, '$2y$10$k.q508DVR7.Jx.ocDj6C0u1ANFzy6.2Vo8X8mSDCBHqEY58MkBaBq', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12429, 3, 'ANAYAH MUTHMAINNAH NURSYAMSI', '823010215012', NULL, NULL, '$2y$10$Dtc.ec/Z0wfgh6QAJI4OGuAm4Rc640dklICqKk.MQm0hvdQkoX5z6', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12430, 3, 'IRFIANTO PATILA', '823010215013', NULL, NULL, '$2y$10$XEQYJmauVnquU2Ihvz68nexwAGC8te24cSa1Uvl5cUOPxOavXl97u', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12431, 3, 'ADILAH ZAKIYYAH KARTINI', '823010215014', NULL, NULL, '$2y$10$xTGogyk33ZsEt7oGkv9q..9A/YRgCb2MqmeuWGWMDiAlM7VOgbgDi', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12432, 3, 'MUH FADLAN ANSYAR', '823010215015', NULL, NULL, '$2y$10$xDfqEgxJYqmRJyICKCmI/ueqa91MeRcBYOJ.yNhD9jHU8a1zb20P.', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12433, 3, 'MUH AKBAR TOMPO', '823010215016', NULL, NULL, '$2y$10$ZY6o/SBzgdoqLx4Zm8r.Re7Jxf6VS1ssAiaF0H4q5p5z/DUaYiBsa', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12434, 3, 'NURUL HIDAYAH', '823010215017', NULL, NULL, '$2y$10$OF1.fdzi9o5hmDpio91TU.9Nr5ShhBMLqzrEwd2lb9z05iueO6O5y', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12435, 3, 'NUR ANNISA BAHAR', '823010215018', NULL, NULL, '$2y$10$wkZnS0FzkARS6GLNauoFmeExALki0QR3v4eCtFdvp0Jy8M8WAhsRW', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12436, 3, 'SUFINA AALIYAH SUWARDI', '823010215019', NULL, NULL, '$2y$10$c8yVaLEzOfaes/RwTIYusO/MQjNdMvmLfsNFxtH8W3/tUWaBjepBK', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12437, 3, 'NURUL FADILAH ISMAIL ', '823010215020', NULL, NULL, '$2y$10$svZSnrdqxviJJjwZhYezDOOyf8YsE/3llWvv7.l6gbomIdhDIQJu2', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12438, 3, 'GUNAWAN RAHMAN', '823010215021', NULL, NULL, '$2y$10$rXZHLn7/lkhXAYtNgehUAO17IWfoZl.mDyQyH7yE4fJJQSH1IZel.', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12439, 3, 'HAWASIA SITTI SARI', '823010215022', NULL, NULL, '$2y$10$0OF1DVye7wRQyi1t0Xyngu4.gibpRs9k0Dw7pKVmHxLPuX53rQbYy', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12440, 3, 'IVAN ADHITYA ', '823010215023', NULL, NULL, '$2y$10$k0uGQp0FPbjCchGADmIXSe5rrrdULI5xp2.xbRhCpC48boCyUqIKa', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12441, 3, 'AHMAD JANUARDI', '823010215024', NULL, NULL, '$2y$10$s/u3CsTD0HVG.e75KSDeDOlrJbaGXg/YVVHwqbTS3/x.ntbWCNYu2', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12442, 3, 'ST NURHAFIFAH', '823010215025', NULL, NULL, '$2y$10$YP2zaY1Cx4G0WnUyGTa/Pu2SNc5wgvqcvS79lE1ucw/mjXp75eJAy', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12443, 3, 'NUR APRILIANI PRATIWI ', '823010215026', NULL, NULL, '$2y$10$BRgI3BH1/zXJb0R0B/doc.yecJ28Tx2k3NfXf4dqNtVxT7kNl55ve', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12444, 3, 'HASNI', '823010215027', NULL, NULL, '$2y$10$m63yBb294oKgxnZWtWNQrOG3tizsrAQJyIQPtZItSxwmJFlgwmpIG', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12445, 3, 'MUH FIKRI AL SABRI HS', '823010215028', NULL, NULL, '$2y$10$r1ndL727UGQwhXNx1oV/fup3O7hRBb56kwiEswiJKv/vCsXizOIR6', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12446, 3, 'MUFTIATUL RAHMA', '823010215029', NULL, NULL, '$2y$10$DD1bPIvUklpo98nPvOu2kurIs7UyYLKc1XTKaP5sXbOh18DlCdtd2', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12447, 3, 'RESTI SILATURRAHMI', '823010215030', NULL, NULL, '$2y$10$pE0ZVvDx89AKgLTr60tnd.1K5aR2LMr6j7XVG4Ph.smfcoamqTHB6', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12448, 3, 'ARFAH MARENO', '823010215031', NULL, NULL, '$2y$10$C1VbK.VgnWAo79OdJEnOOu3QHMajL..1rcoDWyoO2qM6G7xJlM4Q.', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12449, 3, 'ALIFIA SYAIDINA R', '823010215032', NULL, NULL, '$2y$10$AlBbPjt1u/0EsVwLVAsfmefH2WeIIwivz2Ymu60hBp1afVFpZrXWC', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12450, 3, 'ZAZKIA NURDIN ', '823010215033', NULL, NULL, '$2y$10$WrOYypv.6Fe9aA37At8Z/Oqn6vwn7ng5ll5iOUXZ/BpMOxAZifj4K', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12451, 3, 'FADILLAH TENRI UGI ', '823010215034', NULL, NULL, '$2y$10$ATjA1tIwpOTH0rn8msQNFuPzUZ2IDNMd0r103ywosvJDC3S6tX0yu', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12452, 3, 'MUHAMMAD THANHAR ', '823010215035', NULL, NULL, '$2y$10$Or/5K.uD9nm.Kqe4l8/ItuUDn2v4x0L3UUtU6TAlh1jb1Ym.GmHna', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12453, 3, 'WARDA', '823010215036', NULL, NULL, '$2y$10$FfHfDulvK4FZj9dyXkjxz.gqqCt4OjyAswk.SfxhWQZLka915Ayoi', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12454, 3, 'RATULIU', '823010215037', NULL, NULL, '$2y$10$2BtrlqBofUDlv6wlOgeFke81Cks38W3G5PmwPKqK9XzQQAmFQi97G', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12455, 3, 'M REZKY ADITYA SYAHPUTRA', '823010215038', NULL, NULL, '$2y$10$uUvfgNFWaYyLsNPp85XAKeTiiIRlMiTNkSjW4dnVXjSSolxUSS05W', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12456, 3, 'MOLYA GISELLA ANGELA', '823010215039', NULL, NULL, '$2y$10$xa70MmN76zPOz.oSC5NEa.5PwF0udPcCuAIY3ajl917Qe8BI3L0PW', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12457, 3, 'SITI MAGFIRAH', '823010215040', NULL, NULL, '$2y$10$8R/akH761c0.TQwvv7j4Ne9ZG5vyj43qYjbqxwknOOP9PSus5M9HC', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12458, 3, 'NUR AISYAH', '823010215041', NULL, NULL, '$2y$10$Qz.D6j2d5I8EAMrWO/OitOZtuG3kQallWRzmuDYeQ2ikz7j6BJtUC', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12459, 3, 'SULFIANA HAKIM ', '823010215042', NULL, NULL, '$2y$10$k//jjSJLh2ooLmTH.gYEeetFHV5mOL3GPaMgilxNvPqFGvLaZvn42', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12460, 3, 'MUHAMMAD KHAIDIR AKHWAN BAFADAL ', '823010216001', NULL, NULL, '$2y$10$SWO24OLl5OULcaXcjRt9su2FjPDpFeS7Fs12HBBRoC1qtXyIc5uue', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12461, 3, 'ADINDA MAULIDYA KHAERUNNISA', '823010216002', NULL, NULL, '$2y$10$nDez1NZdnUsGECiwHzfjoeTVuCt31Y.V36euq0eHWcjGsVKphEJFq', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12462, 3, 'EBIT ACHMAD ALFAREZHA AMIR', '823010216003', NULL, NULL, '$2y$10$5wneG09C0ajAF2EC5TvUPOUPWLKI62P42ubo9vmdVurFRHr4mYJyq', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12463, 3, 'MUDHIAH YAUMIL AKHIR', '823010216004', NULL, NULL, '$2y$10$FTTCx/j3e0UoRCN.xpx86uW9cA.3Rcxot/.ZRSNwgbhXmekRB.37e', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12464, 3, 'MUHRIFALDI', '823010216005', NULL, NULL, '$2y$10$cEbBSOJsoCzC/NKracwOR.hzod7CairBBrwbuJg.tCZ6FBAn6qzdK', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12465, 3, 'MADINAH ', '823010216006', NULL, NULL, '$2y$10$JkJA81tLomiOwbgmKRxz..0zzEdfu8dTkI/wtqJksGo0lmFsduz0e', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12466, 3, 'MAYANG SARI', '823010216007', NULL, NULL, '$2y$10$Df/nLFgk0DyZf7R5NUgQDuCPE6XLf90rNUf.HDcGc9au5BeBaDjIK', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12467, 3, 'INDRI HANDAYANI', '823010216008', NULL, NULL, '$2y$10$JZ1CLX6nhJ74Lfzon51PLeqrV4ODV1B35bBUVb9sSFlWvBh2eo53m', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12468, 3, 'AHTIAH NAHDA ZULFA SUWARDI ', '823010216009', NULL, NULL, '$2y$10$.1nTf.K9vcvRHFRDIGmk1.yr4z2XDiEjmTm5t3EPiA9axK5rLi4SS', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12469, 3, 'MUH IKHWAN AFRIZA ZAHWAN', '823010216010', NULL, NULL, '$2y$10$cz7.kz8TzHdW16H6c8QVr..Acf8ddYLRROUqEDEAoDLnJFmB4ZIQ2', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12470, 3, 'SKOLASTIKA ADRIANI PATASIK', '823010216011', NULL, NULL, '$2y$10$Q9WWxA/Fu9.LGvHXQcWdi.Pyz4pEjo6.hEZuwKviNr7cDLPIbz32q', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12471, 3, 'MAGVIRAH', '823010216012', NULL, NULL, '$2y$10$dZ5leLLk6yL9mFgb7QpyJO15DhStxHzZS6o4EbWwWWlbGtNeRlL5y', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12472, 3, 'NURFADILLAH DAHLAN ', '823010216013', NULL, NULL, '$2y$10$mQDM4Hw7bzunXDC.z0pzYOTZBS0JzYBp.kGmZtJ/..XpYJVCnpudu', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12473, 3, 'A NURFADILLAH SURYANI RAPINA ', '823010216014', NULL, NULL, '$2y$10$/h/9CyORqDpZpjftncoOJes9jiIOxP3h2vPIgtgOnRHnUr5xctHUW', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12474, 3, 'NISA AMALIA ROSYIIDA NURYANTI ', '823010216015', NULL, NULL, '$2y$10$Xytfr1U8ZYHOeGUw300lUeVcPctE.jIXRkotKXFZrMu1k40oDAxCi', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12475, 3, 'AISYA FATIHAH TRIAULI', '823010216016', NULL, NULL, '$2y$10$kEYYcOq4pCBJvkDUrmGHM.T/gKjXucCXr1ZljRGXPKsGp7SvA6h5W', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12476, 3, 'WAHYU RUSMAN', '823010216017', NULL, NULL, '$2y$10$CI9qSQnYL43/vQ3mwXXvl.D6263NLqMd3yxKqOSNsX4LqMxxPmc/O', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12477, 3, 'ST NURFAJRIANTI ABSAR', '823010216018', NULL, NULL, '$2y$10$cJ/mTYLcuHR7pYGsvCz1muJmrPF0NqFv8ilUe29GEuM.n/Z3Rp6Na', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12478, 3, 'ULFA NAZIRAH', '823010216019', NULL, NULL, '$2y$10$jARSX9ukLfi8YUhQJsbLG./q4tlTRyRmMUStmKZ5eZvMD614o.SgW', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12479, 3, 'NURUL HIKMALIA ', '823010216020', NULL, NULL, '$2y$10$14JMy4MYLiYp/Y5p0a8tcOTuKZFAdzcTRXjBKm8Fvo81dGv29gYWG', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12480, 3, 'AULIA ASMIULLAH RAMLI ', '823010216021', NULL, NULL, '$2y$10$z2fOe0XfMlMkPu2Ayz9zo.29SRUDgAWqqy0cDWkyVlgvkaRVeShZC', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12481, 3, 'MOAMMAR GIBRAN AKSAH', '823010216022', NULL, NULL, '$2y$10$g7hAkKS9jLBqO.2DYw8FkOncm2VoEqoIhvydxXtt7Y15k0SwPbGBi', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12482, 3, 'NABILA FULGANI RAHAYU', '823010216023', NULL, NULL, '$2y$10$EqiHftpuqqPunLciDywGrupLSMsdK2ux875WTSYZrpp5iCRRKMvwi', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12483, 3, 'ADITYA FIRANSYAH ', '823010216024', NULL, NULL, '$2y$10$Y9YLVj/kGNj6nKPw1BxBsOUYZFLqM0vok.2XMgBTTxCxRRSJaq6qO', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12484, 3, 'MUH YASRIL', '823010216025', NULL, NULL, '$2y$10$oH2Xbt0Z6u3mquhPnvlvXuFmDMO17rasmyoN03qJoPHAgOJjKv1hq', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12485, 3, 'HUSNUL KHATIMAH PUTRI IRWAN INTJE', '823010216026', NULL, NULL, '$2y$10$AZf/oRxrpOwhjcTrIDSi9O2V7Aa/bjuZOP4rEUl5vmNr7aYPLJt82', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12486, 3, 'MUHRIANA', '823010216027', NULL, NULL, '$2y$10$JEElt9rM/6NhhNeyS7jzjuY9gYX28fT4b2ZkEZF6oZ1fGwzBBfY4S', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12487, 3, 'CINDI WINDI MAHARANI', '823010216028', NULL, NULL, '$2y$10$YRDlKLeLRMHEVhX2.iUu3ON1MeJQUWZcs2QaO4zOyZ3yIoFqqT1j.', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12488, 3, 'AFIFAH NURHAMDIAH FEBRIYANTI', '823010216029', NULL, NULL, '$2y$10$KfYXGcDY8cokn8vqrFCnful26YRlH0AnqRTAwsehillueWlWBJgOi', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12489, 3, 'NIRWANA', '823010216030', NULL, NULL, '$2y$10$gSP2qmOvsy3TI0SxUTAtB.ixjaD967yJockPEGFR8NtY/YS4U9Baq', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12490, 3, 'FADILA', '823010216031', NULL, NULL, '$2y$10$HeA/ss22a0kzMKxQjfKjFO2NAR12itoQXmCqlvOUrNIvBB.IAyJLm', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12491, 3, 'ABIGAEL PUNU SIRENDEN ', '823010216032', NULL, NULL, '$2y$10$nMmEnsGjv6ZRIDPXfhJMe.bfk6zLdmP8aK0I/1Kk3sysqHVKq3tUS', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12492, 3, 'NUR FIDYA E P', '823010216033', NULL, NULL, '$2y$10$oVAwsphpdyCsPtJEyG2AJuCVzltrbsLMaaA6srY86mUpM/w4/7.Ie', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12493, 3, 'AFLAH AL MUQAFFI ', '823010216034', NULL, NULL, '$2y$10$b5PLui8rg.qUEuJDh5NYc.yq6ngDvvRxDPl2TB8OWLVMjxMVJiDtC', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12494, 3, 'ALYA MAGFIRAH KAHAR', '823010216035', NULL, NULL, '$2y$10$R5MWq0b37rz5tgrfdMw1AuXhtsKhhadpjlnRQfMVqYSKwFYL5PmJi', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12495, 3, 'SITI ZAHRAH MAISARAH FAIZAL', '823010216036', NULL, NULL, '$2y$10$jBVVLwcho11bscv9ujYV6OwRrJBEaWPieCnsW3pKr.tOiQ5pEGBW6', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12496, 3, 'AGNES YULIANITA', '823010216037', NULL, NULL, '$2y$10$k51fIs3CvQqZR8bsdhQxJuvUrtdmvzdXGd0HwA0gOBgK8eWxjA70m', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12497, 3, 'MUH KAHLIL GIBRAN', '823010216038', NULL, NULL, '$2y$10$qhhewQgJJ54KAqmrloHsw.qHdB0/2gBY8.ATi5UMaTSLCQcQdfgw.', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12498, 3, 'NURUL ZAQIAH AZZAHRA', '823010216039', NULL, NULL, '$2y$10$NNsAqW2IZRrdQPf77mKt7O.6RswnSX.5cYrTFdRxCqWL8MaxejmC.', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12499, 3, 'ADRIAN PRATAMA PUTRA ABDULLAH', '823010216040', NULL, NULL, '$2y$10$uNQT7ObB6TgYW6MHbcuTZOoZkrbLfRZShfCDWX6bq91CgZfbUbdmi', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12500, 3, 'IREN KARRANG BONGA', '823010216041', NULL, NULL, '$2y$10$RBAkNRzfnZEt8BjhG.RVJOBt0.C.05n/GRLVNPWtQY1dQscaKwlmy', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12501, 3, 'PUTRAWAN BATO\'SAMMA', '823010216042', NULL, NULL, '$2y$10$2gmR54CSyieLcsWE6CI0reZf4XNsLQJJ2jIPmL4cFhdapakCKy2iu', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12502, 3, 'NUR AULIA HUMAIRAH ', '823010221001', NULL, NULL, '$2y$10$xW3JNvGs/tSaiJkNIfWAR.VEaLI9yfbzd2CKnjlgyO.M54BhmbHny', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12503, 3, 'AULIA CITRA LESTARI', '823010221002', NULL, NULL, '$2y$10$8pYi/mi8mJxCpXa3WZVhgO5IIbRW3aGDvFqHLSh5F2Xj9RqdKW9D2', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12504, 3, 'AMALIAH SAFITRI K', '823010221003', NULL, NULL, '$2y$10$xo5HLZkzIfxtPSKOR.Pus.r7iDSPQATHDnJ9K7tPI8gokURjpH5Yu', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12505, 3, 'NURUL FADILLAH', '823010221004', NULL, NULL, '$2y$10$QQVdAjBxu/rEh1yellT6UO1/kYcc6muu97DApKSMeX0exFQixYH4q', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12506, 3, 'KEZIA AURELIA A BALA', '823010221005', NULL, NULL, '$2y$10$sdF98gA0/D0W6Brf4QKlVOi3KwyC7Q/4eCOBH.gL1j5HH4K/Y3BpC', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12507, 3, 'ZIFA ALISYA SYAFITRIANI', '823010221006', NULL, NULL, '$2y$10$IBl4COytinanD2q0tZveWeKUU3ZIjHFGyr4ooFxDLmGeI3TaGku8S', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12508, 3, 'NUR DIAN KURNIA HARISA', '823010221007', NULL, NULL, '$2y$10$fQNjJ1SasejQ.tKwC1EPTOhsznD/mBK/02u/rNlzmVgzQvDeXx/A2', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12509, 3, 'ANDI ASLIM SHAFAR', '823010221008', NULL, NULL, '$2y$10$bLvxrGZAGEPkT4K1YQD9jex3sKmzWwTa3boDqi1nUuIPz4OmPmIk.', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12510, 3, 'NUR LAELY', '823010221009', NULL, NULL, '$2y$10$hp4s9iZD.x/jj5QHHJhgbOMX3xlgUirBFLn5ZFimXFVgqCIb13sNG', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12511, 3, 'ALYA MEUTYA INDIRA', '823010221010', NULL, NULL, '$2y$10$y.uK1OVe.XEHNMQtNHdrxezYkDN5/sTq2yVHVKJg1r5g4.X7f15/u', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12512, 3, 'HASMAN H', '823010221011', NULL, NULL, '$2y$10$/rZKecbRkP0NXm2K.1l5f.VMc6qUY2gKMNnkweHSBQvZ7b3YGgbPO', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12513, 3, 'AGNES AMELIA SUGIARTO', '823010221012', NULL, NULL, '$2y$10$NYR2pPOYja7YVh5yTrL.Du/Mz.KacnuJUKnG2PWli6joj.OADATrm', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12514, 3, 'NATALIA PUTRI TODING BUA\'', '823010221013', NULL, NULL, '$2y$10$ijrTwcLuzbuYdHAgvBWAK.ivX0TUW.WaC60dfTG8onRqBXxEmunfW', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12515, 3, 'SYAHWA EFFEL LIE RAMADHAN', '823010221014', NULL, NULL, '$2y$10$mO7.lSaLWxiIrhQ4ZFsDiuZ5Il0owLAmYyqSB.8lCKZekgRFON3vK', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12516, 3, 'SHANIKA KARIN ARSYAD', '823010221015', NULL, NULL, '$2y$10$qP4cTmpTqiAfHlsrml21vO73YDKvzSGu6YRNJQ9vJObb.eKW1gMUK', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12517, 3, 'VANESSA GABRIELLA KINAYA', '823010221016', NULL, NULL, '$2y$10$hjTLc/VUAy8cBHs81A0.uOss0bHtfjWhtojVMrEXLX3OsF3Dt0292', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12518, 3, 'DIAH AYU FITRIA ', '823010221017', NULL, NULL, '$2y$10$igno4j3yDrr4PUHn8x4TEODhYO76.wGCm6577GOh1pFXVbbibogB.', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12519, 3, 'REINALDO ANUGRAH SALUDUNG', '823010221018', NULL, NULL, '$2y$10$AsuOM2qiD8BPQF3M9Zi81.Ak23mCvhQEVloFOyBKY9f4xTjP63Q/.', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12520, 3, 'NURUL HAFIFAH JR', '823010221019', NULL, NULL, '$2y$10$AuFok5pekzLs4LGtzwcxuucBcLmaSJ4QMyqSSP33lPRYzjhbdef7W', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12521, 3, 'ALIF IHSAN AGUS SETIAWAN', '823010221020', NULL, NULL, '$2y$10$QYOO5L5MDdP0heuumPNeUeryNyGdA98ImMSyk86hvbv/nVVJm.v8G', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12522, 3, 'ANNISA EKA PUTRI AD', '823010221021', NULL, NULL, '$2y$10$r0BVnP7bjDmbAn4daJof5uWCA5SXxhk0wxKXG6AvGrigr6gLy4TpW', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12523, 3, 'MUHAMMAD IKRAM', '823010221022', NULL, NULL, '$2y$10$hPtkJGEuMV2XzhawiH9efesxBAlfP94K3dRcnz2aWWnbl5mlNMcE2', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12524, 3, 'TIARA NUR AGUSTRIANI', '823010221023', NULL, NULL, '$2y$10$zC8puLvax7/wQjJ48hae6.eb1.MgCrGe/AdYR89yqcc/WoczMHwxy', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12525, 3, 'MUFHIDAH AZ ZAHRAH ', '823010221024', NULL, NULL, '$2y$10$zL0dFI5lf/MMIvcjcKU0aeCxKmO.lUh2VIkuIm.Daoz494T1YwDDm', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12526, 3, 'INDI NURUL HIDAYAH', '823010221025', NULL, NULL, '$2y$10$xBM7sJCVS7bPoyBWKV1YpeQFaUZELUtsEVjS3HUPqSVw6ZCy8DCua', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12527, 3, 'MUH KAHARUDDIN', '823010221026', NULL, NULL, '$2y$10$o.VwHaPPsgI96gQ4iqWyV.n3JWoLwNQ/7hvT0xwI2cddn7Yr8BOGK', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12528, 3, 'DHINI PUSPITA SARI ', '823010221027', NULL, NULL, '$2y$10$aR9rR2zrvlG.e97XNyeH4.D.FQEYB.69xuhhPK5IuK5IxdMiAGKbS', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12529, 3, 'ADRIAN YAHYA USIA', '823010221028', NULL, NULL, '$2y$10$8KsTobNyVunFaAlUVdgyZOhVqKvlRPEnbxSszHbOtt9exmSPUHEvm', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12530, 3, 'NAYLA IZMA RAMADHANA', '823010221029', NULL, NULL, '$2y$10$AyViKvU3wh5p620/I8pPpufEgCHCOTzA6.bAtuk.U0mVVdqesfbuO', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12531, 3, 'AINI BASRI', '823010221030', NULL, NULL, '$2y$10$FKuJQxyDN5YECwkkWZD.neC9Fy6q1TpiIvmk7vuqFNapVPOhaj0L6', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12532, 3, 'CITRA ASKARINA ', '823010221031', NULL, NULL, '$2y$10$XGYaxQap0YGfmgMwUN4KjeS9.LNYnU0q/6e6YoyYcNb0OvO9H8m4.', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12533, 3, 'MEYLANI MEGA UTAMI', '823010221032', NULL, NULL, '$2y$10$EZH0jixyl7l5Lpo1lvOYBuRTiTrZsy/LN1cJdl4EIsCHjzjCBG4Z.', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12534, 3, 'MUH RIZKY ADNAN FAUZAN', '823010221033', NULL, NULL, '$2y$10$FUcg3fdd9naFL4iBXe4/1uFC4Zb6uykLtrOvFY7Pm08rx3NSiapWm', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12535, 3, 'AL HIJRAH', '823010221034', NULL, NULL, '$2y$10$bQaiUwMwkbt495bPrc2eBeLK1v6sVzdYII2IL6gjZDLoOMVCIe5va', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12536, 3, 'IMELDA FEBIYANTI', '823010221035', NULL, NULL, '$2y$10$4l.dx6t.c40w5lH1PdeTou29UumrPSombpL4bnlhCYcAxRqKiGFw.', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12537, 3, 'NURFADILA ', '823010221036', NULL, NULL, '$2y$10$8cD.BxMDeQ9d5k.ExazmkennHGxjDmZZpCeL/1YJ6RDcO49g27BZS', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12538, 3, 'ALYA AUDRISYA', '823010221037', NULL, NULL, '$2y$10$iT7Sr8WlK39CxUBfPj1USukQ/cOiROXOlH/MMQW5OPeXDoXCaucw6', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12539, 3, 'WINDA WULANDARI ', '823010221038', NULL, NULL, '$2y$10$eqc/wek6w0p9GhuAHRSBj.iLV8BbipeFdNfHJSEO0QW2CR4xKOVyS', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12540, 3, 'NUR SALSABILA', '823010221039', NULL, NULL, '$2y$10$26D5ReuW.DeVSN21FP8QP.xmYgY/BCEJRJxgnqkI6tMxec3PDD9JC', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12541, 3, 'IGNATIUS ROGER SONDOK', '823010221040', NULL, NULL, '$2y$10$nOrHmjr3APoJ6Ay2BxRoZ.6v1r.zXkshJi0v55IP/wNeD6t6gHtoK', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12542, 3, 'A ALVITA ISMIWARDHANI', '823010221041', NULL, NULL, '$2y$10$/8FyclBoGB45E1LOvU4Uheg1XoZbz6v30XFL2hJUK7PqC6vSccDQO', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12543, 3, 'SITI IRTIYAH KAMAL', '823010221042', NULL, NULL, '$2y$10$zvX6jVx8qi.KsqHPWP6wyeLRPWALpaFTstGGfYVnc2K1QMDQ2dVoS', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12544, 3, 'ARIAS EFENDI', '823010222001', NULL, NULL, '$2y$10$QmfSoHPn5PT4J4zESCCzPOl8OVLyAHBYSZJGGgQ4sFxUMslNOdKZy', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12545, 3, 'FITRIANA RAMADANI', '823010222002', NULL, NULL, '$2y$10$1EsqpPpvzWCnsTzpmYAqKeCOZ90hzaWzpbolN92Ys2tiRLTM2rBX6', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12546, 3, 'VENRY JUANRY ', '823010222003', NULL, NULL, '$2y$10$S6eYam5YuljFTfC2xKpmBO3lkuSwOOdNiim.gyVVz1ZNx5NHo/Soe', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12547, 3, 'NURUL FADILAH ', '823010222004', NULL, NULL, '$2y$10$hDrfPdF9aqvv3rXK/.mBXuKM0v3PZmC/ipIvglL7S0qovHsBPsQ36', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12548, 3, 'REZQIANA SYAHIDAH ', '823010222005', NULL, NULL, '$2y$10$I5PPfly.5vXbizrTIK.da.9HyRLHSpiLiCqbXlI9VcffzLrPYmuxG', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12549, 3, 'PASYAH EMMARWATY', '823010222006', NULL, NULL, '$2y$10$W8WYpcvocZ8VZDdIcgsODOMYSoEMeMSYcmvdadLDsW8GHc0yO.qfK', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12550, 3, 'LUNA PURBANDANI HARI WARDOYO ', '823010222007', NULL, NULL, '$2y$10$Ji0PP/6Yf.3PMUQ4ZlyvdOMSYjpuoPpjgkx1TnamTxnIOJChUAHG.', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12551, 3, 'NUR ALIFAH OCTAVIANA PUTRI', '823010222008', NULL, NULL, '$2y$10$2j6nJH4tVc0jSYzOLS3LVen3qVXYEQFJsrzDwyYO8gfcRIps8QG0e', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12552, 3, 'ANNISA RAHMADHANI', '823010222009', NULL, NULL, '$2y$10$2AYwdkrI80wHsfHvm4CWKeAMWm78kHfdTMclMOGZQUxFjRFgecVTi', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12553, 3, 'UMMUL QURA', '823010222010', NULL, NULL, '$2y$10$DAHp2WVI7wMTjy9riYwJdeEmc42N9Rgwd6a8oVREnLz5C.sZF5XVa', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12554, 3, 'ALYSA ZANUR PAHABSAN', '823010222011', NULL, NULL, '$2y$10$q3uM7186l5CoTJtNFft/3OdH/ACXd1PzBxIFnZI22gKq3cSf44snG', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12555, 3, 'KELVIN ADE PUTRA TALUNGA ', '823010222012', NULL, NULL, '$2y$10$uZ2M7lGH8d1wkQBW1FWgVelOetJo/bFePtoN3lyiCWsIjYATGLSIO', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12556, 3, 'M NABIL ANRA WIJAYA', '823010222013', NULL, NULL, '$2y$10$1nUaOAmfG8mozhg6fR/Cn.xb63e2MoVYtluB3AB/poc09IHtOoorm', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12557, 3, 'MAWAR', '823010222014', NULL, NULL, '$2y$10$ZenHt5hQDHYVoxOQCHXpZen.0NVUExuUCw1PC.yrulyaZd1IZZmoO', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12558, 3, 'CYNTHIA ANGELYN PAGA\'', '823010222015', NULL, NULL, '$2y$10$aoizyZvQKbj7AikF74B2WuGgKR4TDIhIPMRcgFhSfBG63GXc/mvg.', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12559, 3, 'NUR ADINDA KUSUMA', '823010222016', NULL, NULL, '$2y$10$yubkdPAduj2ykhIMDTnJk.a7hXUIpYGq2TzMJsAYBJ2Gv9j511nk6', NULL, NULL, '2023-07-08 10:37:52', '2023-07-08 10:37:52'),
(12560, 3, 'HAMDAN ASWIN MUBARAKH ', '823010222017', NULL, NULL, '$2y$10$QiRJxLV9rZlh0Xao5/gDregmP0k8EqIbPfteFOh1WYV9XNx6M3.1q', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12561, 3, 'ROMY MAULANA', '823010222018', NULL, NULL, '$2y$10$92rouZ0ox48UalbS8G3FouEgYai.5zlw/fbexcbBtDKC7PmrqrgXu', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12562, 3, 'TZASA AVRILIA SITI MAHARANI', '823010222019', NULL, NULL, '$2y$10$xJZb2Z9om9fdL3NKniTRqu4MNI6yy14Qisx8dcIEyGmsHX0Pm5Jym', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12563, 3, 'SALSABILA PUTRI TOPUTIRI', '823010222020', NULL, NULL, '$2y$10$ib6844MdTfPMob/G4V/zouEjvhbDB84WqLrIctw6XgXeEL.jJ5rIO', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12564, 3, 'NURUL ILMI', '823010222021', NULL, NULL, '$2y$10$aTC.eZ0rweasUsCfh1E6r.K2redLoQpbad/.VxWt5Pe6fiYHIxgRa', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12565, 3, 'ADELIA', '823010222022', NULL, NULL, '$2y$10$9OrgcZMbHLsrFq7OkD/An.LagHBbJPcQdUrN6SyjGRZXn1hAlL9lq', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12566, 3, 'KHALIFAH UMARAN BALWA', '823010222023', NULL, NULL, '$2y$10$uBNlb2/D7V5/Pqfkf05UIOZLpqwzFI71vj0YpNcGog0tBkgUrQ.Ui', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12567, 3, 'JANWAR PERSADA ', '823010222024', NULL, NULL, '$2y$10$7.xI9TESxNSPTOdjKeQeM.CPjaBpb2NBJQ33EC.127MKbdP360PDi', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12568, 3, 'FADIL ARSAM BUDI MULIA', '823010222025', NULL, NULL, '$2y$10$yt4.RlEApxB/AUq0ao2mm.af4baCxOUZ4BCDlPqLUXRxXKIgg3p5.', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12569, 3, 'ABD SUKUR', '823010222026', NULL, NULL, '$2y$10$2xNsaSlmsn73Fd61kerH8.C5BDJu3/A9Z4ATh7L4zGSPddoLvvriq', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12570, 3, 'SITI FADILLAH ', '823010222027', NULL, NULL, '$2y$10$1jg8c0wXaTBdsXJmYVv9pOoKmomf88P/zj3IJLrgq9H4oKIGvjCZC', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12571, 3, 'MEUTIA FAUREZIA NAFISAH LUBIS', '823010222028', NULL, NULL, '$2y$10$8s3Z6Lu1BSovR7OrEUWE9eEMQxEqV0YNKXPhLMY55Ft3E6anOATny', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12572, 3, 'SHALSA NABILA S', '823010222029', NULL, NULL, '$2y$10$H8yCQ7166Py6jU4VgJ7zsuqnIfrJtJFeNf9pC24Fecv0DLesDlkMq', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12573, 3, 'ALFHIAN FADLY PRATAMA', '823010222030', NULL, NULL, '$2y$10$Q7YpC9vNCP0btz79qmL8feaZ.2S3HfCwMJiEN2MmG4wSRuuL1n3Ca', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12574, 3, 'GEDE ARYA NARESHANANDA', '823010222031', NULL, NULL, '$2y$10$paFg5qNlhNcKikMNX.GLxOjDgsw1RbIo9DVBTOEn8CNBHlDaDdhY2', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12575, 3, 'NURUL AFSARI', '823010222032', NULL, NULL, '$2y$10$miiN.e6mNe49UKs11VwsKe297rr20u/PgWtCdzj/pNpNc2HczNd6S', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12576, 3, 'UBAIDILLAH TOHA PUTRA', '823010222033', NULL, NULL, '$2y$10$kkxrRs92k2wnnpuVU31As.6W9cJKJI7PZ20sn7eWNetH3Cx20bZI6', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12577, 3, 'FREDERIKUS YULIUS GAMBU', '823010222034', NULL, NULL, '$2y$10$qIadH9PWOB8JsyhJdaxeoOM4rxO6yEe8Rfj2ula2n1sAkokhoyNgW', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12578, 3, 'MUHAMMAD ABU RAFI AS', '823010222035', NULL, NULL, '$2y$10$tdFEqkyyFWj8sN0HUnCgfuIKGOxs1sQMaLHuCFJiRo4V3RiwiFXjq', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12579, 3, 'MUH HARIZAH ANANTA B', '823010222036', NULL, NULL, '$2y$10$iQU3dfxuHtcrs0tvr31tJe.wNSPKjOk0lXXjsL1Okxof.u31qQS/q', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12580, 3, 'ANDI ALMIRA SAHWA', '823010222037', NULL, NULL, '$2y$10$n9WLHgUryzmIS7df5ewfBumG0cwPETqEzyYR/fzHZ8yiw56VYmdmW', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12581, 3, 'LENSKY ESIA', '823010222038', NULL, NULL, '$2y$10$IQpYKnsBCCaq8D.uvigj4uGteNOwVems6peKagTAc7nVyOffole1G', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12582, 3, 'SAFIRA PRATIWI PUTRI S', '823010222039', NULL, NULL, '$2y$10$6.2x9eUo7kqzD.6IyEjfieCqUyVD3s1O4.TjqbwGP.YrfZis0dXq2', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12583, 3, 'AIDIL FITRA', '823010222040', NULL, NULL, '$2y$10$9GvK0IFQDh7aWRCfFmGwPuNMIyQy9bz3UFgPCcUhYIAwGUcOtSEh6', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12584, 3, 'RENZY CLAUDIA', '823010222041', NULL, NULL, '$2y$10$CCtof65sn4W1jQGRalvCA.vU.WCFHNS2weTF5u6gYSTP.LOMO5g5K', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12585, 3, 'DEWI SINTIA', '823010222042', NULL, NULL, '$2y$10$lSkKPlV9Q0ytM1i5roL9guKesDWD0h98pTb9.M47iJnqDS.l8AoTu', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12586, 3, 'MUHAMMAD FARHAN MUSTAFA ', '823010223001', NULL, NULL, '$2y$10$kYFzijJIpmktt7aXbKBPLODNYAOa2UdapyztbzY6eOH.TibkSoX96', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12587, 3, 'ATIKAH ZAHRA RATIFAH', '823010223002', NULL, NULL, '$2y$10$pimuqjs/qY41laJKWfD1veHFcZNHZjZOz1utKd55jvD8ouee94kLu', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12588, 3, 'M AIDIL FITRI', '823010223003', NULL, NULL, '$2y$10$8cI4e5zLFk9kN5cY2rl7zOG8BHrua55gb9oG/XEn4fU5Rr0r.5Qg6', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12589, 3, 'PUTRI AMELIA KARTIKA K', '823010223004', NULL, NULL, '$2y$10$8MLpMGzMD0euYu5VUos7N.Q4V/iXTihp2IsyT4RDrRk74N66Ybgcq', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12590, 3, 'RACHMAD FADJRIN', '823010223005', NULL, NULL, '$2y$10$RdvUSq27judVTOk6mavPv.VeNdmQ58n76ynpjktn25HpYJwItLI0S', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12591, 3, 'DWI ASTIKA RAMLI', '823010223006', NULL, NULL, '$2y$10$PxtfDlqSOzKebz.5QQZBceF9hDRTWN/Tk3t.dQn4Di5gzxNojdV.a', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12592, 3, 'NURUL ALFIRA RAHMADHANI', '823010223007', NULL, NULL, '$2y$10$DCaj5WW0QgPhBq7RYFOKS.vNssQq.ZY2GPYFBGaWiCEXzUB6/fEJy', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12593, 3, 'MUHAMMAD RISKI ', '823010223008', NULL, NULL, '$2y$10$b6g6AkgJlycblyvpfmvw4.XlStaOxkYYPbz5RrayX1sV0O9AR/S/O', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12594, 3, 'PUTRI ABELIA ZULHIJJAH ', '823010223009', NULL, NULL, '$2y$10$evvgcwzof.UfFIibZt9D..oRtZOV70Zg1qlN1XK.TRZ5Zcl04DWxm', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12595, 3, 'MUH ADRIAN S', '823010223010', NULL, NULL, '$2y$10$faP5CKNO9.EbJS8UF/RCbObr4I/8mQUv9M7Y3HEjl8IYWFGQnU1Nm', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12596, 3, 'VIVILIANA SANGGANNA', '823010223011', NULL, NULL, '$2y$10$FuhWoHklQqxsI5ZoPrH2geSUM0lNFWalpUHQH0WRiIHOYsHgJ5qJq', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12597, 3, 'NUR AMELIA EKA PERTIWI', '823010223012', NULL, NULL, '$2y$10$XcEB/w8.r2BbWq8QfEGcRegP2RQMfEzhJZS/8DvUuec8/2zdpCz5i', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12598, 3, 'NAIA FEBYA NINGRUM ', '823010223013', NULL, NULL, '$2y$10$y6X9Fr8y80YKUZPH8FELme7ZAa.HpG6qSAqalwQlcYUAm0uMRS69a', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12599, 3, 'NURUL MUJAHIDA', '823010223014', NULL, NULL, '$2y$10$j9InTV/u2DDy9urvOar1RuTbF4l6A.als7w5YGUaZVPiHofWXzYB2', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12600, 3, 'JOSHUA MICHAEL RIVERIO', '823010223015', NULL, NULL, '$2y$10$.M93EntxLgbCDyFEbW5CCuddyZ0YB/g2i491W/2cy1uG.R.a6iftS', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12601, 3, 'ULFIANI ', '823010223016', NULL, NULL, '$2y$10$xpp4bzrCvoeQi4.siqc3mOdsO/OlkxG5yLoLLi9POKL/v.N8YQiAq', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12602, 3, 'NURHASIA Z', '823010223017', NULL, NULL, '$2y$10$E2RAwNz7xK57aXTlZCJHwe0cJgw3DRyfrRiLJZUqpU6rpQ/wcTWxG', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12603, 3, 'FAUZIAH YULIARTI', '823010223018', NULL, NULL, '$2y$10$/fkR4hPdBtJKn3RkF5T0N.xTeCKnJlSKyC6ZFqkgnjqorQQDiYTva', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12604, 3, 'MUHAMMAD HAIKAL PRATAMA', '823010223019', NULL, NULL, '$2y$10$VlYMsN0JfKBohIoTr9Bk5.mW/UylAVdAC7As5TG9CRbY4rOlrfJ0q', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12605, 3, 'AINUN DWI NABILA', '823010223020', NULL, NULL, '$2y$10$UCy/Fo57gJh8xCuCPr4JK.H/EOf24Z36ro3.wt5wqEu4vtvTvTEZW', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12606, 3, 'MUH RISANDY M', '823010223021', NULL, NULL, '$2y$10$RdFYej0jokNRli3k9umqMeGXGOdImlQBpkP7vRh1I5JWvjf.sFpcO', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12607, 3, 'SITTI MUTIAH TAQWIM', '823010223022', NULL, NULL, '$2y$10$AXJUyR.9wrYZJ9qnk8.UxudMCr48odVF7XPacaVmMZcSHoYF0QZXu', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12608, 3, 'ELVIRA ASMA UL HUSNA', '823010223023', NULL, NULL, '$2y$10$z2sp8dSnY34Wxy//xAs5QuxrhA.djBQq.OP10PgTR2QBZKV85E4RO', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12609, 3, 'AZILYA ARUMY', '823010223024', NULL, NULL, '$2y$10$aqrXJqzEdRMZxyRTbwlbyeEhHq2uhKYe6a8o44V8M5F7WQfp5mZmy', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12610, 3, 'MAELANI SAPUTRI', '823010223025', NULL, NULL, '$2y$10$vT8Z.kDE8xO54CEnA2GaB.5HgLM4z6mWhNqWAHtXdIXV5MHms8U86', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12611, 3, 'AISYAH AFIFAH ACHMAD ', '823010223026', NULL, NULL, '$2y$10$mOz/Hy4HjT9X9dSrI9BhiuD7zzruJ1Yd35kCdA9j6UNDr404GJuLa', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12612, 3, 'APRILIS TIRA SARI', '823010223027', NULL, NULL, '$2y$10$czoApFYkBwqHwm./jpkQWugD3ftgkGHQJ1Je9AO0EacjlWQESsSqK', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12613, 3, 'SITI AISYAH PRA RAMDANI ', '823010223028', NULL, NULL, '$2y$10$gcRAP3LHPCwo0D2pbUR.IuTbWSYoErCIByY1iFCdqyr7I1e6jYXK6', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12614, 3, 'ANDHITO WILLIAM SOMBOLINGGI\'', '823010223029', NULL, NULL, '$2y$10$2I6/hfy.UprqlnizXphGWuI0cwnNjcPxiz52GCF0yYQh7FkYEobny', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12615, 3, 'NURUL AULYAH PUTRI', '823010223030', NULL, NULL, '$2y$10$gTsipYURUSIM4qQCZYGBcO5nJU0KEXc33DEtZ67b5TSjyLTrMI7vq', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12616, 3, 'AUDI MAGHFIRA DWI ARTI', '823010223031', NULL, NULL, '$2y$10$1F.iOLs42AqK.u3v5vPmQ.NYu7p1ToQB8LcY6KjQhmCGcgPA/rNP6', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12617, 3, 'RAM SRI REZQI MUTMAINNAH', '823010223032', NULL, NULL, '$2y$10$IoDP0mlEL1ufGfkqb/Ac/.40CDwmGwb/GTPOhCOFVUfRZalFy50m6', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12618, 3, 'SULKAHFI', '823010223033', NULL, NULL, '$2y$10$iml1tQjg8PLeIT5N30J/LO3Neq9gwqoix.S22BjTycVb1gqwkMCsK', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12619, 3, 'NURUL FATIHAH BUNGASAU', '823010223034', NULL, NULL, '$2y$10$mUtsnxhwrQB/xvuFHwq7fuj5JXzzsmPOeUL1Tg69Q4Ag6SuN/Nswe', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12620, 3, 'ALYA  FEBIANI AMIRULLAH', '823010223035', NULL, NULL, '$2y$10$JvEZiXtN9e8Edrnn/G/SruXQanLatTdE7N/OvU.uyatZvq/JlxA9S', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12621, 3, 'KARTINI DAHLAN', '823010223036', NULL, NULL, '$2y$10$DNBc9SgOqfZKwnTb.Tue3.wlFZXj4qTp1GJOiYu5d6ZTW.2FgV9my', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12622, 3, 'JHEINULFAH DINDA SYAMSTHER', '823010223037', NULL, NULL, '$2y$10$XblShtOjH/HknI/939reNugi/J2odU3Zk6K3gDDdP29fKzGgrJyT6', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12623, 3, 'ANDI M DANDI BANGSAWAN', '823010223038', NULL, NULL, '$2y$10$t1xRHgtmFILlaAeIivaYmerGvKqvVdKqFf4g1NKRW4/peJZcFfGsS', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12624, 3, 'RISKYATUN NADA ALJANNAH', '823010223039', NULL, NULL, '$2y$10$zNrd2tIIIcnuRCnkhPR43OvkbmEgzUstN.90rRk2IpCVYltWTOlKa', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12625, 3, 'ZAHRA MAULIDIA', '823010223040', NULL, NULL, '$2y$10$FTMz9UIbEjxll7RtNmD21uH1eKThr0Ez9yNnvQNDsMbXHFtBrwev2', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12626, 3, 'THERESIA DWI KURNIA MATALANGI', '823010223041', NULL, NULL, '$2y$10$lftOdR/KQ0wvm5I9UVbTieZX4ziLWXFQwtvh597mfyaFxxfMwOPxa', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12627, 3, 'DARMIN', '823010223042', NULL, NULL, '$2y$10$mUeHfwM0LROEO5vIINjzEu8hBXreLvBWry7/1PyhN71hgZi5zhMnC', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12628, 3, 'MUHAMMAD ADRIANSYAH', '823010311001', NULL, NULL, '$2y$10$sVVL5x/INY3RofZoEuP6MeVFjTVFZO8p4qyQBo2PAArd9ceFk.OAa', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12629, 3, 'MUHAMMAD IRWANSAH ', '823010311002', NULL, NULL, '$2y$10$JAAhbEH99kzXw6mPiUVxGuLONcG/Biqt5mj85SI.xbWwHZ8A.6tka', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12630, 3, 'SUAHADA', '823010311003', NULL, NULL, '$2y$10$e0LC4WR7Mj6A68/nfVvWBOhrKgTCIqCkL3T355UXIqqvse/0dXsQu', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12631, 3, 'MUH RASUL ', '823010311004', NULL, NULL, '$2y$10$eyIuIKztwlemJfdw5Gbn0u79QJO9XAs0CCiK8yAe9GM83EIyXYCb2', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12632, 3, 'ALDIANSAH', '823010311005', NULL, NULL, '$2y$10$QnVADFlaTxbIYXwUx0ZTne6T1DYvziE4Sdjnh7vRhO9I3f5cv/pm6', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12633, 3, 'AZZAHRA RAMADHANI', '823010311006', NULL, NULL, '$2y$10$PIi5lkap2yotS.RVXgf3HOBr3xNCHvDfAIEqQJefxxAngSdJyMZXe', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12634, 3, 'ADINDA REZKY IBRAHIM', '823010311007', NULL, NULL, '$2y$10$NKO/LjgsD16jUWe4yatrjuuzSiSPASX5XBowB2xb3Njp9YD6oBaR.', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12635, 3, 'ANDI MUQIIT TREYSAN PASHANZYAH', '823010311008', NULL, NULL, '$2y$10$9MKuMrUvF0DtB71JPvClTuHgKLHZ6LznFtroK97pP3aSi2rGYquXa', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12636, 3, 'STEPHEN ', '823010311009', NULL, NULL, '$2y$10$jGInDsdnx7V9LtS7jidv9OCBHCc01LDvY7GfjDwNSHUMNxsxRsOX.', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12637, 3, 'ANUM SANDIVA RAHMAN', '823010311010', NULL, NULL, '$2y$10$tmNs7j8tW9KCQTuzaOqcUuv0EXnOfMi7uNR0mqrutcQRUq6aj3I16', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12638, 3, 'MEI RAHMATUNISAH ', '823010311011', NULL, NULL, '$2y$10$QFJ/rMAW9a9yPdv3.iAvou0ruz971/bZQdZAWaED4Q8PnTmRHZv6C', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12639, 3, 'ERWIN', '823010311012', NULL, NULL, '$2y$10$RbG3t.pFGOvhEQI2l9.jo.8AehTgD2JSdv8lhp6B2rrOYsOZ9QzGm', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12640, 3, 'MUH FADIL', '823010311013', NULL, NULL, '$2y$10$z7Q0x81BKr8jEXX8nfpubOirtTar4KKBgfOQCVSOStPEpNzS.wFNC', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12641, 3, 'ANDI NAYLA AURELIA', '823010311014', NULL, NULL, '$2y$10$5KDgkyZuQMu8w7zjtotJI.4YSq5qXGfDXSEgR/5rkhOmIAcM6r/Z.', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12642, 3, 'MUH REZA FAHREZI IWAN', '823010311015', NULL, NULL, '$2y$10$JVh0mAB5eNtc./Dfz0/2BugVU2mavoi84R/dfiGWSrMYgAsGhfEMu', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12643, 3, 'MUH ARIEL HIDAYAT PORNIS', '823010311016', NULL, NULL, '$2y$10$GlTZjiY1dHImy.1S5y6aqeRpa4Hizsmo71Cwm2LyOb6j51ZLQAneq', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12644, 3, 'ADE MASTURIANA ', '823010311017', NULL, NULL, '$2y$10$//MtRK/diB3Tq4pv6T2riuGwaGwTs6gUyWjWMwMjC8N9qlsAtuAwe', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12645, 3, 'YUSNIA SYAM', '823010311018', NULL, NULL, '$2y$10$ZEAL0T6pBM08X.jxiHsmbuajkaumgnFIQGBnO8.m1G3FmXsp47TTO', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12646, 3, 'HALIFATUL UMMAH ', '823010311019', NULL, NULL, '$2y$10$axIAHtko9cId8ZPRWXAMWuArUqk0Zs4eC0jCv912DWgYYCUtBhTMq', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12647, 3, 'RIKA NARAN ', '823010311020', NULL, NULL, '$2y$10$6Hz5nmX7JYhu7Cvd6RL7V.mwM0A2Okqp3wDq4ScT.P5An9YQeaqo2', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12648, 3, 'YASNI', '823010311021', NULL, NULL, '$2y$10$jtRQPhxFStLgB5ouDjV2euDbJkKsHYInfSZEd7O9Vr.FEbnnkhFMu', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12649, 3, 'MUH KHALIN', '823010311022', NULL, NULL, '$2y$10$krP8L0nFf..wBGhMHn6dyOQnRb9gmLvu5gFisyywFbM.qqf0aPLxS', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12650, 3, 'NOZATUL ERSA NOVIANTI ', '823010311023', NULL, NULL, '$2y$10$uWOuib9xVr6.mJ31mHRiAeTylDuZW46BShVXbYZKV9YKq.y5uD08y', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12651, 3, 'DIMAS BAGUS PRAKOSO', '823010311024', NULL, NULL, '$2y$10$FENuS9KvcT2K97.x4y4Lou4HjHZRQESb8QwWIZqpKkBr8PIZyh1ea', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12652, 3, 'SITI FATIMA AZZAHRO ', '823010311025', NULL, NULL, '$2y$10$9aD9Aulb0hL.vVuiqwiCPu35VRL8MxGprPb20w8eJOKErF7RgN93.', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12653, 3, 'MUH ARSYIL PUTRA ', '823010311026', NULL, NULL, '$2y$10$jA50MZg8frNbU8.GmSrDl./N8Lnz9yubTCThdAESulRW7akQxxGly', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12654, 3, 'NURFADILAH S', '823010311027', NULL, NULL, '$2y$10$JkAPhbEu6ikoR7YN2ZaWT.b3LNGfZC81z2RhYnrGWkZkFxlARRyKS', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12655, 3, 'ANDI ASHABUL KAHFI AE', '823010311028', NULL, NULL, '$2y$10$AHdevjOC2naQsizxEQi44.I0Ccy1RGyBFQ0bkSKnMGzvNSLG/8w7u', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12656, 3, 'A RAHMAT HIDAYAT ', '823010311029', NULL, NULL, '$2y$10$9U6swWgN/RzVAquHwsmzw.UPgIDNphEMekcTfVOY87BYoVwA2Juwm', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12657, 3, 'SERLI AMELIA', '823010311030', NULL, NULL, '$2y$10$XkOOAGa9SJB2Z82evlLLiuPy2sBUC91Yrpe9gDKAXdLm.S2La43W2', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12658, 3, 'NUR ALIFIA PUTRI BANGSAWAN', '823010312001', NULL, NULL, '$2y$10$d8gb.pa1r68Cm03n7Z8xSeOhnlNyN5c4eAOK9dwQyvYN9Wo78Vdwy', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53');
INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `ip_address`, `created_at`, `updated_at`) VALUES
(12659, 3, 'ERENZ ERICO RINDINGPADANG', '823010312002', NULL, NULL, '$2y$10$WpZ/6aBFW4N5Snbg7Y2TZe9RI6aRfLqDdt6aWiCQAFlDhAAW6Eita', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12660, 3, 'NUR NABILA HAMZAH', '823010312003', NULL, NULL, '$2y$10$ZfYqqlsofsOAykXsR8qq4.sI4r7s7.kfKwQuAAOxGPeexHbSXovre', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12661, 3, 'A ISMAN MUANNAS', '823010312004', NULL, NULL, '$2y$10$9y5Vn8E.e9UYuUXaoQeudemTyahM/8WshyM.oq4pmBfojdYDL15P.', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12662, 3, 'ALDI NUR', '823010312005', NULL, NULL, '$2y$10$8aiD4bpRfRpZyL2G2I0qauPWatwi/x6T.THnyF5vYK7ChPgjoElAa', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12663, 3, 'MUTHMAINNAH PUTRI KHAERUNNISA', '823010312006', NULL, NULL, '$2y$10$Tz0LTa2ShN7.sKF0zQMx3urCabuUp.Rg0fZG4JU5tQThdIaDqy.GG', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12664, 3, 'MUH ADITYA PRATAMA', '823010312007', NULL, NULL, '$2y$10$tdXkMeYuS4f1PoqHvA2bGOZBET/NqFteJtIgzxKO9o83j.6jQLzni', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12665, 3, 'INCYA PALINOAN', '823010312008', NULL, NULL, '$2y$10$fbMGuAWc9p5MfsR37MQ/Mu77ngr8bHfpyE.lZ.W4w17yNZmz4fcNi', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12666, 3, 'BASO ODDANG', '823010312009', NULL, NULL, '$2y$10$zANL.x1oLg4iJayDJWCGxuBzCfYg7yxYrBzLGkFReCqc20nNhZmF2', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12667, 3, 'ASYAM FAUZAN RAHMAN', '823010312010', NULL, NULL, '$2y$10$3qxHJCoJhdC1okkTIphBpOco9rGI8Khpk0rU7pHdBzS8aQoindFVe', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53'),
(12668, 3, 'RAMADHAN SIRAJ ', '823010312011', NULL, NULL, '$2y$10$BLe82qysHzuVO5fJYAPh8ulYTiznQ0/Y0nffe1eXF1KGxlCH1L48y', NULL, NULL, '2023-07-08 10:37:53', '2023-07-08 10:37:53');

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
-- Stand-in structure for view `view_pengawas_jadwal`
-- (See below for the actual view)
--
CREATE TABLE `view_pengawas_jadwal` (
`id` bigint(20) unsigned
,`kode_kategori` varchar(255)
,`ujian_mulai` datetime
,`ujian_selesai` datetime
,`token` char(5)
,`kode_ruangan` varchar(255)
,`kode_sesi` varchar(255)
,`working_time` int(11)
,`username_server` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_pengawas_jadwal_kursus`
-- (See below for the actual view)
--
CREATE TABLE `view_pengawas_jadwal_kursus` (
`id` bigint(20) unsigned
,`exam_id` int(11)
,`kode_kursus` varchar(255)
,`total_question` int(11)
,`working_time` int(11)
,`random` enum('0','1')
,`username_server` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_pengawas_peserta`
-- (See below for the actual view)
--
CREATE TABLE `view_pengawas_peserta` (
`id` bigint(20) unsigned
,`kode_ruangan` varchar(255)
,`kode_sesi` varchar(255)
,`nama` varchar(255)
,`username` varchar(255)
,`foto` varchar(255)
,`kode_jurusan` varchar(255)
,`status` enum('0','1')
,`password` varchar(255)
,`username_server` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_pengawas_user`
-- (See below for the actual view)
--
CREATE TABLE `view_pengawas_user` (
`id` bigint(20) unsigned
,`kode_ruangan` varchar(255)
,`kode_sesi` varchar(255)
,`nama` varchar(255)
,`username` varchar(255)
,`password` varchar(255)
,`username_server` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_pengawas_user_hari`
-- (See below for the actual view)
--
CREATE TABLE `view_pengawas_user_hari` (
`id` bigint(20) unsigned
,`kode_ruangan` varchar(255)
,`kode_sesi` varchar(255)
,`nama` varchar(255)
,`username` varchar(255)
,`username_server` varchar(255)
,`nama_sesi` varchar(255)
,`nama_ruangan` varchar(255)
,`ujian_mulai` datetime
);

-- --------------------------------------------------------

--
-- Structure for view `kirim_jawaban`
--
DROP TABLE IF EXISTS `kirim_jawaban`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kirim_jawaban`  AS  select `answers`.`id` AS `id`,`answers`.`exam_id` AS `exam_id`,`answers`.`username` AS `username`,`answers`.`kode_kategori` AS `kode_kategori`,`answers`.`kode_kursus` AS `kode_kursus`,`answers`.`remaining_time_minute` AS `remaining_time_minute`,`answers`.`remaining_time_second` AS `remaining_time_second`,`answers`.`question_id` AS `question_id`,`answers`.`total_question` AS `total_question`,`answers`.`current_answer` AS `current_answer`,`answers`.`score` AS `score`,`exams`.`kode_ruangan` AS `kode_ruangan`,`exams`.`kode_sesi` AS `kode_sesi`,`exams`.`ujian_mulai` AS `ujian_mulai` from (`answers` join `exams` on(`answers`.`exam_id` = `exams`.`id`)) ;

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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_pengawas`  AS  select `teachers`.`id` AS `id`,`teachers`.`kode_ruangan` AS `kode_ruangan`,`teachers`.`kode_sesi` AS `kode_sesi`,`teachers`.`nama` AS `nama`,`teachers`.`username` AS `username`,`server_details`.`username_server` AS `username_server` from (`server_details` join `teachers` on(`server_details`.`username_pengawas` = `teachers`.`username`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_pengawas_jadwal`
--
DROP TABLE IF EXISTS `view_pengawas_jadwal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_pengawas_jadwal`  AS  select `exams`.`id` AS `id`,`exams`.`kode_kategori` AS `kode_kategori`,`exams`.`ujian_mulai` AS `ujian_mulai`,`exams`.`ujian_selesai` AS `ujian_selesai`,`exams`.`token` AS `token`,`exams`.`kode_ruangan` AS `kode_ruangan`,`exams`.`kode_sesi` AS `kode_sesi`,`exams`.`working_time` AS `working_time`,`view_pengawas`.`username_server` AS `username_server` from (`view_pengawas` join `exams` on(`view_pengawas`.`kode_ruangan` = `exams`.`kode_ruangan` and `view_pengawas`.`kode_sesi` = `exams`.`kode_sesi`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_pengawas_jadwal_kursus`
--
DROP TABLE IF EXISTS `view_pengawas_jadwal_kursus`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_pengawas_jadwal_kursus`  AS  select `category_courses`.`id` AS `id`,`category_courses`.`exam_id` AS `exam_id`,`category_courses`.`kode_kursus` AS `kode_kursus`,`category_courses`.`total_question` AS `total_question`,`category_courses`.`working_time` AS `working_time`,`category_courses`.`random` AS `random`,`view_pengawas_jadwal`.`username_server` AS `username_server` from (`view_pengawas_jadwal` join `category_courses` on(`view_pengawas_jadwal`.`id` = `category_courses`.`exam_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_pengawas_peserta`
--
DROP TABLE IF EXISTS `view_pengawas_peserta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_pengawas_peserta`  AS  select `students`.`id` AS `id`,`students`.`kode_ruangan` AS `kode_ruangan`,`students`.`kode_sesi` AS `kode_sesi`,`students`.`nama` AS `nama`,`students`.`username` AS `username`,`students`.`foto` AS `foto`,`students`.`kode_jurusan` AS `kode_jurusan`,`students`.`status` AS `status`,`users`.`password` AS `password`,`view_pengawas`.`username_server` AS `username_server` from ((`students` join `view_pengawas` on(`students`.`kode_ruangan` = `view_pengawas`.`kode_ruangan` and `students`.`kode_sesi` = `view_pengawas`.`kode_sesi`)) join `users` on(`users`.`username` = `students`.`username`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_pengawas_user`
--
DROP TABLE IF EXISTS `view_pengawas_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_pengawas_user`  AS  select `teachers`.`id` AS `id`,`teachers`.`kode_ruangan` AS `kode_ruangan`,`teachers`.`kode_sesi` AS `kode_sesi`,`teachers`.`nama` AS `nama`,`teachers`.`username` AS `username`,`users`.`password` AS `password`,`view_pengawas`.`username_server` AS `username_server` from ((`view_pengawas` join `teachers` on(`view_pengawas`.`kode_ruangan` = `teachers`.`kode_ruangan` and `view_pengawas`.`kode_sesi` = `teachers`.`kode_sesi`)) join `users` on(`teachers`.`username` = `users`.`username`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_pengawas_user_hari`
--
DROP TABLE IF EXISTS `view_pengawas_user_hari`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_pengawas_user_hari`  AS  select `teachers`.`id` AS `id`,`teachers`.`kode_ruangan` AS `kode_ruangan`,`teachers`.`kode_sesi` AS `kode_sesi`,`teachers`.`nama` AS `nama`,`teachers`.`username` AS `username`,`view_pengawas`.`username_server` AS `username_server`,`sesis`.`nama_sesi` AS `nama_sesi`,`rooms`.`nama_ruangan` AS `nama_ruangan`,`exams`.`ujian_mulai` AS `ujian_mulai` from ((((`view_pengawas` join `teachers` on(`view_pengawas`.`kode_ruangan` = `teachers`.`kode_ruangan` and `view_pengawas`.`kode_sesi` = `teachers`.`kode_sesi`)) join `exams` on(`teachers`.`kode_ruangan` = `exams`.`kode_ruangan` and `teachers`.`kode_sesi` = `exams`.`kode_sesi`)) join `rooms` on(`exams`.`kode_ruangan` = `rooms`.`kode_ruangan`)) join `sesis` on(`exams`.`kode_sesi` = `sesis`.`kode_sesi`)) ;

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
-- Indexes for table `server_details`
--
ALTER TABLE `server_details`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `uniq` (`username_server`,`username_pengawas`) USING BTREE;

--
-- Indexes for table `sesis`
--
ALTER TABLE `sesis`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `server_details`
--
ALTER TABLE `server_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `sesis`
--
ALTER TABLE `sesis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12669;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
