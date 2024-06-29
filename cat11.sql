-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2023 at 01:45 PM
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
(1, '6', '712001', 'PEND. MATEMATIKA - S.1', NULL, NULL),
(2, '6', '712002', 'PEND. FISIKA - S.1', NULL, NULL),
(3, '6', '712003', 'PEND. KIMIA - S.1', NULL, NULL),
(4, '6', '712004', 'PEND. BIOLOGI - S.1', NULL, NULL),
(5, '6', '712005', 'MATEMATIKA - S.1', NULL, NULL),
(6, '6', '712006', 'FISIKA - S.1', NULL, NULL),
(7, '6', '712007', 'KIMIA - S.1', NULL, NULL),
(8, '6', '712008', 'BIOLOGI - S.1', NULL, NULL),
(9, '6', '712009', 'GEOGRAFI - S.1', NULL, NULL),
(10, '9', '712010', 'PEND. TEKNIK ELEKTRO - S.1', NULL, NULL),
(11, '9', '712011', 'PEND. TEKNIK ELEKTRONIKA - S.1', NULL, NULL),
(12, '9', '712012', 'PEND. TEKNIK MESIN - S.1', NULL, NULL),
(13, '9', '712013', 'PEND. TEKNIK OTOMOTIF - S.1', NULL, NULL),
(14, '9', '712014', 'PEND. TEKNIK BANGUNAN - S.1', NULL, NULL),
(15, '3', '712015', 'ILMU KEOLAHRAGAAN - S.1', NULL, NULL),
(16, '9', '712016', 'PEND. TEKNIK INFORMATIKA DAN KOMPUTER - S.1', NULL, NULL),
(17, '6', '712017', 'PEND. KIMIA ICP BILINGUAL - S.1', NULL, NULL),
(18, '6', '712018', 'PEND. MATEMATIKA ICP BILINGUAL - S.1', NULL, NULL),
(19, '8', '712019', 'DESAIN KOMUNIKASI VISUAL - S.1', NULL, NULL),
(20, '6', '712020', 'PEND. BIOLOGI ICP BILINGUAL - S.1', NULL, NULL),
(21, '6', '712021', 'PEND. FISIKA ICP BILINGUAL - S.1', NULL, NULL),
(22, '9', '712022', 'PEND. TEKNOLOGI PERTANIAN - S.1', NULL, NULL),
(23, '6', '712023', 'PEND. IPA - S.1', NULL, NULL),
(24, '6', '712024', 'PEND. IPA ICP BILINGUAL - S.1', NULL, NULL),
(25, '6', '712025', 'STATISTIKA - S.1', NULL, NULL),
(26, '9', '712026', 'PEND. VOKASIONAL MEKATRONIKA - S.1', NULL, NULL),
(27, '9', '712027', 'TEKNIK KOMPUTER - S.1', NULL, NULL),
(28, '3', '712028', 'ADMINISTRASI KESEHATAN', NULL, NULL),
(29, '3', '712029', 'GIZI', NULL, NULL),
(30, '9', '712030', 'ARSITEKTUR', NULL, NULL),
(31, '9', '712031', 'MESIN OTOMOTIF', NULL, NULL),
(32, '9', '712032', 'TEKNIK ELEKTRONIKA', NULL, NULL),
(33, '9', '712033', 'TEKNIK MESIN', NULL, NULL),
(34, '9', '712034', 'TEKNIK ELEKTRO', NULL, NULL),
(35, '9', '712035', 'TEKNIK SIPIL BANGUNAN GEDUNG - D.4', NULL, NULL),
(36, '3', '712036', 'FISIOTERAPI', NULL, NULL),
(37, '6', '712037', 'PEND. GEOGRAFI - S.1', NULL, NULL),
(38, '9', '712038', 'PEND. KESEJAHTERAAN KELUARGA - S.1', NULL, NULL),
(39, '3', '712039', 'PEND. JASMANI KESEHATAN DAN REKREASI - S.1', NULL, NULL),
(40, '3', '712040', 'PEND. KEPELATIHAN OLAHRAGA - S.1', NULL, NULL),
(41, '4', '712041', 'ADMINISTRASI PENDIDIKAN - S.1', NULL, NULL),
(42, '4', '712042', 'TEKNOLOGI PENDIDIKAN - S.1', NULL, NULL),
(43, '4', '712043', 'BIMBINGAN DAN KONSELING - S.1', NULL, NULL),
(44, '4', '712044', 'PEND. LUAR SEKOLAH - S.1', NULL, NULL),
(45, '4', '712045', 'PEND. LUAR BIASA - S.1', NULL, NULL),
(46, '1', '712046', 'PEND. BAHASA DAN SASTRA INDONESIA - S.1', NULL, NULL),
(47, '1', '712047', 'PEND. BAHASA INGGRIS - S.1', NULL, NULL),
(48, '1', '712048', 'SASTRA INDONESIA - S.1', NULL, NULL),
(49, '1', '712049', 'SASTRA INGGRIS - S.1', NULL, NULL),
(50, '1', '712050', 'PEND. BAHASA JERMAN - S.1', NULL, NULL),
(51, '5', '712051', 'PEND. PANCASILA DAN KEWARGANEGARAAN - S.1', NULL, NULL),
(52, '5', '712052', 'PEND. SOSIOLOGI - S.1', NULL, NULL),
(53, '5', '712053', 'PEND. SEJARAH - S.1', NULL, NULL),
(54, '2', '712054', 'MANAJEMEN - S.1', NULL, NULL),
(55, '5', '712055', 'SOSIOLOGI - S.1', NULL, NULL),
(56, '7', '712056', 'PSIKOLOGI - S.1', NULL, NULL),
(57, '4', '712057', 'PEND. GURU SD (KAMPUS MAKASSAR) - S.1', NULL, NULL),
(58, '4', '712058', 'PEND. GURU PAUD - S.1', NULL, NULL),
(59, '4', '712059', 'PEND. GURU SD (KAMPUS BONE) - S.1', NULL, NULL),
(60, '4', '712060', 'PEND. GURU SD (KAMPUS PARE-PARE) - S.1', NULL, NULL),
(61, '5', '712061', 'PEND. IPS - S.1', NULL, NULL),
(62, '5', '712062', 'ILMU ADMINISTRASI NEGARA - S.1', NULL, NULL),
(63, '2', '712063', 'PEND. EKONOMI - S.1', NULL, NULL),
(64, '6', '712064', 'PEND. GEOGRAFI ICP BILINGUAL - S.1', NULL, NULL),
(65, '2', '712065', 'EKONOMI PEMBANGUNAN - S.1', NULL, NULL),
(66, '2', '712066', 'AKUNTANSI - S.1', NULL, NULL),
(67, '8', '712067', 'PEND. SENI DRAMA TARI DAN MUSIK - S.1', NULL, NULL),
(68, '8', '712068', 'PEND. SENI RUPA - S.1', NULL, NULL),
(69, '4', '712069', 'PEND. GURU SD ICP BILINGUAL (KAMPUS MAKASSAR) - S.1', NULL, NULL),
(70, '8', '712070', 'SENI TARI - S.1', NULL, NULL),
(71, '5', '712071', 'PEND. ADMINISTRASI PERKANTORAN - S.1', NULL, NULL),
(72, '2', '712073', 'PEND. AKUNTANSI - S.1', NULL, NULL),
(73, '5', '712074', 'PEND. ANTROPOLOGI - S.1', NULL, NULL),
(74, '1', '712075', 'PEND. BAHASA DAN SASTRA DAERAH - S.1', NULL, NULL),
(75, '1', '712076', 'PEND. BAHASA ARAB - S.1', NULL, NULL),
(76, '5', '712077', 'ADMINISTRASI BISNIS', NULL, NULL),
(77, '1', '712078', 'PEND. BAHASA MANDARIN - S.1', NULL, NULL),
(78, '2', '712079', 'KEWIRAUSAHAAN', NULL, NULL),
(79, '2', '712080', 'BISNIS DIGITAL', NULL, NULL),
(80, '9', '712081', 'TATA BOGA', NULL, NULL),
(81, '2', '712082', 'AKUNTANSI', NULL, NULL),
(82, '1', '712083', 'BAHASA INGGRIS', NULL, NULL),
(83, '9', '712092', 'TATA BUSANA - D.3', NULL, NULL),
(84, '5', '712093', 'HUKUM BISNIS', NULL, NULL),
(85, '2', '7122318', 'PEND. KOPERASI - S.1', NULL, NULL),
(86, '3', '7123035', 'PEND. JASMANI KESEHATAN DAN REKREASI KE-SD-AN - S.1', NULL, NULL),
(87, '9', '7123105', 'TEKNIK ELEKTRO - D.3', NULL, NULL),
(88, '9', '7123113', 'TEKNIK ELEKTRONIKA - D.3', NULL, NULL),
(89, '9', '7123121', 'TEKNIK MESIN - D.3', NULL, NULL),
(90, '1', '7123132', 'BAHASA INGGRIS / BUSINESS ENGLISH - D.3', NULL, NULL),
(91, '9', '7123136', 'TEKNIK OTOMOTIF - D.3', NULL, NULL),
(92, '9', '7123144', 'TEKNIK SIPIL DAN BANGUNAN - D.3', NULL, NULL),
(93, '2', '7123356', 'AKUNTANSI - D.3', NULL, NULL),
(94, '9', '7124027', 'TATA BOGA - D.3', NULL, NULL),
(95, '6', '7129016', 'PEND. MATEMATIKA KELAS PARE-PARE - S.1', NULL, NULL),
(96, '3', '7129035', 'PEND. JASMANI DAN REKREASI KELAS PARE-PARE - S.1', NULL, NULL),
(97, '1', '7129116', 'PEND. BAHASA INGGRIS KELAS PARE-PARE - S.1', NULL, NULL),
(98, '9', '7129167', 'PEND. TEK INFORMATIKA DAN KOMPUTER KELAS PARE-PARE - S.1', NULL, NULL),
(99, '7', '7129244', 'PSIKOLOGI KELAS PARE-PARE - S.1', NULL, NULL),
(100, '5', '7129302', 'ILMU ADMINISTRASI NEGARA KELAS PARE-PARE - S.1', NULL, NULL),
(101, '2', '7129317', 'PEND. EKONOMI KELAS PARE-PARE - S.1', NULL, NULL),
(102, '8', '7129364', 'PEND. SENI DRAMA TARI DAN MUSIK KELAS PAREPARE - S.1', NULL, NULL);

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
(8804, 4, 'Gedung Pinisi Lt. 2&3 UNM Gunungsari', 'L01UNMC4T11', NULL, NULL, '$2y$10$7HPTbkEXpFxGzwsb.9J4CeDVR2xrFYMd5hgku1lCXIHrfZHVXLkXe', NULL, '103.76.50.149', '2022-07-30 03:43:28', '2023-07-08 16:41:51'),
(8805, 4, 'FMIPA I Gedung UNM Parangtambung', 'L02UNMC4T12', NULL, NULL, '$2y$10$J/D0U0s/fzxM6LQrWwcVlOb1igBi34hrkgpBD07lgqc.xlj9I6.ii', NULL, NULL, '2022-07-30 03:43:28', '2023-07-08 16:32:49'),
(8806, 4, 'Gedung Pinisi Lt. 4 UNM Gunungsari', 'L03UNMC4T13', NULL, NULL, '$2y$10$l.Ch/9Bq7K7rvhQDGL7J3emQAD4kDWbBaRgVXL8p46qnoJ/5BkxXi', NULL, '127.0.0.1', '2022-07-30 03:43:28', '2023-07-08 10:32:54'),
(8807, 4, 'Gedung Pinisi Lt. 9 UNM Gunungsari', 'L04UNMC4T14', NULL, NULL, '$2y$10$evz2piSRJD8AvxoYXP1IJ.3AwExiwndJFd/VxccNS.RMWyAmtOYAe', NULL, NULL, '2022-07-30 03:43:28', '2023-07-08 16:32:56'),
(8808, 4, 'Fakultas Psikologi UNM Gunungsari', 'L06UNMC4T15', NULL, NULL, '$2y$10$t6QtM38UL9BZhoAfAxXsxuKTkNLK3Os7unT09As1ChqqmtDoINhxG', NULL, NULL, '2022-07-30 03:43:28', '2022-07-30 03:43:28'),
(8809, 4, 'Fakultas Ekonomi UNM Gunungsari', 'L07UNMC4T16', NULL, NULL, '$2y$10$Po3pPUioaDq7Btw7dLQzj.3ImwAIxlBvoNoRZRUUV2V9jnpW4LKWe', NULL, '172.16.37.45', '2022-07-30 03:43:28', '2022-07-30 04:48:00'),
(8810, 4, 'Fakultas Teknik UNM Parangtambung', 'L08UNMC4T17', NULL, NULL, '$2y$10$Fk5Jv1UptuDiB8Mv0Alz2exTTQ6SXbJzOBI/sGbwSDRbzl7gLqZ0W', NULL, NULL, '2022-07-30 03:43:28', '2022-07-30 03:43:28'),
(8811, 4, 'FMIPA Gedung Fisika UNM Parangtambung', 'L10UNMC4T18', NULL, NULL, '$2y$10$4VKDr7OoKSF4rIA3OItIj.8Z.FpbnzyeM09spGrF4ThgstiiiDSCq', NULL, NULL, '2022-07-30 03:43:28', '2022-07-30 03:43:28'),
(8812, 4, 'Fakultas Ilmu Pendidikan UNM Tidung', 'L13UNMC4T19', NULL, NULL, '$2y$10$VTUEwn.tdpWLTrgtFR103edY/XtcI93dFaD1yf4VkfqS.i4Y6TG9y', NULL, NULL, '2022-07-30 03:43:28', '2022-07-30 03:43:28');

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
-- Indexes for table `majors`
--
ALTER TABLE `majors`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `majors`
--
ALTER TABLE `majors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `server_details`
--
ALTER TABLE `server_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sesis`
--
ALTER TABLE `sesis`
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

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12669;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
