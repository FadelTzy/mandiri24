/*
 Navicat Premium Data Transfer

 Source Server         : Laragon
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : cat-mandiri

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 02/07/2021 08:58:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for access_menus
-- ----------------------------
DROP TABLE IF EXISTS `access_menus`;
CREATE TABLE `access_menus`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of access_menus
-- ----------------------------
INSERT INTO `access_menus` VALUES (1, 1, 1, NULL, NULL);
INSERT INTO `access_menus` VALUES (2, 2, 1, NULL, NULL);
INSERT INTO `access_menus` VALUES (3, 3, 1, NULL, NULL);
INSERT INTO `access_menus` VALUES (4, 4, 1, NULL, NULL);
INSERT INTO `access_menus` VALUES (5, 5, 1, NULL, NULL);
INSERT INTO `access_menus` VALUES (6, 1, 3, NULL, NULL);
INSERT INTO `access_menus` VALUES (7, 6, 3, NULL, NULL);
INSERT INTO `access_menus` VALUES (8, 9, 2, NULL, NULL);
INSERT INTO `access_menus` VALUES (9, 1, 2, NULL, NULL);
INSERT INTO `access_menus` VALUES (10, 8, 2, NULL, NULL);
INSERT INTO `access_menus` VALUES (11, 7, 3, NULL, NULL);
INSERT INTO `access_menus` VALUES (12, 1, 4, NULL, NULL);
INSERT INTO `access_menus` VALUES (13, 10, 4, NULL, NULL);
INSERT INTO `access_menus` VALUES (14, 11, 4, NULL, NULL);
INSERT INTO `access_menus` VALUES (15, 12, 1, NULL, NULL);

-- ----------------------------
-- Table structure for access_sub_menus
-- ----------------------------
DROP TABLE IF EXISTS `access_sub_menus`;
CREATE TABLE `access_sub_menus`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sub_menu_id` int(11) NOT NULL,
  `sub_role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of access_sub_menus
-- ----------------------------
INSERT INTO `access_sub_menus` VALUES (1, 1, 1, NULL, NULL);
INSERT INTO `access_sub_menus` VALUES (2, 2, 1, NULL, NULL);
INSERT INTO `access_sub_menus` VALUES (3, 3, 1, NULL, NULL);
INSERT INTO `access_sub_menus` VALUES (4, 4, 1, NULL, NULL);
INSERT INTO `access_sub_menus` VALUES (5, 5, 1, NULL, NULL);
INSERT INTO `access_sub_menus` VALUES (6, 6, 1, NULL, NULL);
INSERT INTO `access_sub_menus` VALUES (7, 7, 1, NULL, NULL);
INSERT INTO `access_sub_menus` VALUES (8, 8, 1, NULL, NULL);
INSERT INTO `access_sub_menus` VALUES (9, 9, 1, NULL, NULL);
INSERT INTO `access_sub_menus` VALUES (10, 10, 1, NULL, NULL);
INSERT INTO `access_sub_menus` VALUES (11, 11, 1, NULL, NULL);

-- ----------------------------
-- Table structure for answers
-- ----------------------------
DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `exam_id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_kategori` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_kursus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remaining_time_minute` int(11) NOT NULL,
  `remaining_time_second` int(11) NOT NULL,
  `question_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_question` int(11) NOT NULL,
  `current_answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of answers
-- ----------------------------

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode_kategori` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kategori` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'K1', 'TPA', NULL, NULL);

-- ----------------------------
-- Table structure for category_courses
-- ----------------------------
DROP TABLE IF EXISTS `category_courses`;
CREATE TABLE `category_courses`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `exam_id` int(11) NOT NULL,
  `kode_kursus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_question` int(11) NOT NULL,
  `working_time` int(11) NOT NULL,
  `random` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category_courses
-- ----------------------------

-- ----------------------------
-- Table structure for courses
-- ----------------------------
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode_kursus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kursus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kep` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of courses
-- ----------------------------

-- ----------------------------
-- Table structure for exams
-- ----------------------------
DROP TABLE IF EXISTS `exams`;
CREATE TABLE `exams`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode_kategori` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ujian_mulai` datetime NOT NULL,
  `ujian_selesai` datetime NOT NULL,
  `token` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_ruangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_sesi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `working_time` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `jadwal`(`kode_ruangan`, `kode_sesi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of exams
-- ----------------------------

-- ----------------------------
-- Table structure for faculties
-- ----------------------------
DROP TABLE IF EXISTS `faculties`;
CREATE TABLE `faculties`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode_fakultas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_fakultas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_kampus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of faculties
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for majors
-- ----------------------------
DROP TABLE IF EXISTS `majors`;
CREATE TABLE `majors`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode_fakultas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_jurusan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_jurusan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of majors
-- ----------------------------

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `urut` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_active` int(11) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (1, 'Beranda', 'beranda', 'fas fa-home', '1', 1, NULL, NULL);
INSERT INTO `menus` VALUES (2, 'Master', '', 'fas fa-layer-group', '2', 1, NULL, NULL);
INSERT INTO `menus` VALUES (3, 'Soal', 'kursus-soal', 'fas fa-book', '3', 1, NULL, NULL);
INSERT INTO `menus` VALUES (4, 'Jadwal Ujian', 'jadwal-ujian', 'fas fa-calendar-day', '4', 1, NULL, NULL);
INSERT INTO `menus` VALUES (5, 'Hasil Ujian', '', 'fas fa-file-alt', '5', 1, NULL, NULL);
INSERT INTO `menus` VALUES (6, 'Petunjuk & Tata Tertib', 'petunjuk', 'fas fa-pen', '6', 1, NULL, NULL);
INSERT INTO `menus` VALUES (7, 'Mulai Ujian', 'mulai-ujian', 'fas fa-user-check', '7', 1, NULL, NULL);
INSERT INTO `menus` VALUES (8, 'Kehadiran', 'kehadiran', 'fas fa-user-check', '8', 1, NULL, NULL);
INSERT INTO `menus` VALUES (9, 'Token', 'token-ujian', 'fas fa-edit', '9', 1, NULL, NULL);
INSERT INTO `menus` VALUES (10, 'Sinkronisasi', 'sinkronisasi', 'fas fa-edit', '10', 1, NULL, NULL);
INSERT INTO `menus` VALUES (11, 'User Pengawas', 'pengawas-user', 'fas fa-pen', '2', 1, NULL, NULL);
INSERT INTO `menus` VALUES (12, 'Status', 'status-server', 'fas fa-server', '8', 1, NULL, NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2020_09_28_000317_create_roles_table', 1);
INSERT INTO `migrations` VALUES (5, '2020_09_28_000429_create_menus_table', 1);
INSERT INTO `migrations` VALUES (6, '2020_09_28_000510_create_sub_menus_table', 1);
INSERT INTO `migrations` VALUES (7, '2020_09_28_000603_create_access_menus_table', 1);
INSERT INTO `migrations` VALUES (8, '2020_09_28_000649_create_access_sub_menus_table', 1);
INSERT INTO `migrations` VALUES (9, '2021_01_07_004155_create_sesis_table', 2);
INSERT INTO `migrations` VALUES (10, '2021_01_07_004235_create_rooms_table', 2);
INSERT INTO `migrations` VALUES (11, '2021_01_07_011012_create_categories_table', 3);
INSERT INTO `migrations` VALUES (12, '2021_01_07_011829_create_courses_table', 3);
INSERT INTO `migrations` VALUES (16, '2021_01_07_020955_create_students_table', 4);
INSERT INTO `migrations` VALUES (17, '2021_01_07_021302_create_majors_table', 4);
INSERT INTO `migrations` VALUES (18, '2021_01_07_021333_create_faculties_table', 4);
INSERT INTO `migrations` VALUES (19, '2021_01_07_054159_create_teachers_table', 5);
INSERT INTO `migrations` VALUES (20, '2021_01_07_100905_create_questions_table', 6);
INSERT INTO `migrations` VALUES (21, '2021_01_07_112924_create_exams_table', 7);
INSERT INTO `migrations` VALUES (22, '2021_01_07_123549_create_category_courses_table', 8);
INSERT INTO `migrations` VALUES (23, '2021_01_07_141352_create_answers_table', 9);
INSERT INTO `migrations` VALUES (25, '2021_03_20_230216_create_results_table', 10);
INSERT INTO `migrations` VALUES (26, '2021_06_23_125917_create_servers_table', 11);
INSERT INTO `migrations` VALUES (27, '2021_06_28_090807_create_server_details_table', 11);
INSERT INTO `migrations` VALUES (28, '2016_06_01_000001_create_oauth_auth_codes_table', 12);
INSERT INTO `migrations` VALUES (29, '2016_06_01_000002_create_oauth_access_tokens_table', 12);
INSERT INTO `migrations` VALUES (30, '2016_06_01_000003_create_oauth_refresh_tokens_table', 12);
INSERT INTO `migrations` VALUES (31, '2016_06_01_000004_create_oauth_clients_table', 12);
INSERT INTO `migrations` VALUES (32, '2016_06_01_000005_create_oauth_personal_access_clients_table', 12);
INSERT INTO `migrations` VALUES (34, '2021_06_30_090049_create_status_servers_table', 13);

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('081e95613d0413b1f4eb47379f59aacb74ec7506272508049c0a171efad83d3da3ec1a019447407a', 2, 3, 'Personal Access Token', '[]', 0, '2021-07-01 23:27:29', '2021-07-01 23:27:29', '2022-07-01 23:27:29');
INSERT INTO `oauth_access_tokens` VALUES ('091ff6d33d74ed8bb59ce1eb985ad6184287e9f7daede4646517b5e68b833af9e6856345a19c9a0e', 2, 3, 'Personal Access Token', '[]', 0, '2021-07-02 00:27:38', '2021-07-02 00:27:38', '2022-07-02 00:27:38');
INSERT INTO `oauth_access_tokens` VALUES ('120bb5fcd72125378c9a6a1fcd3b6ea5b4db90179b14c6ea57c509ad2e38be076bf7ae47dbcae6b8', 2, 1, 'Personal Access Token', '[]', 0, '2021-06-30 16:37:11', '2021-06-30 16:37:11', '2022-06-30 16:37:11');
INSERT INTO `oauth_access_tokens` VALUES ('151fe79309f80ef94c0ff90ac185511620a698c8870eb22db2075e1bf978bdc9eb3c093ff3310c08', 2, 1, 'Personal Access Token', '[]', 0, '2021-06-28 09:59:10', '2021-06-28 09:59:10', '2022-06-28 09:59:10');
INSERT INTO `oauth_access_tokens` VALUES ('20da6258bb15023c0f363515506fc806ec7b5c1da8503eb1f617288f9d38a70fdfeff29f5e183fa0', 2, 1, 'Personal Access Token', '[]', 0, '2021-06-28 11:50:13', '2021-06-28 11:50:13', '2022-06-28 11:50:13');
INSERT INTO `oauth_access_tokens` VALUES ('24370afcc24d707d36c7ea07dd0236ff79391f5556315d1113b4aa42931eaded15e42e0ce9a27389', 2, 3, 'Personal Access Token', '[]', 0, '2021-07-01 16:59:38', '2021-07-01 16:59:38', '2022-07-01 16:59:38');
INSERT INTO `oauth_access_tokens` VALUES ('26885d9e5db99d826c1a4083ed60f5e861fafbc5c9f2c52c9b2440520405a170fbfcfb9a163308d5', 2, 3, 'Personal Access Token', '[]', 0, '2021-06-30 18:06:13', '2021-06-30 18:06:13', '2022-06-30 18:06:13');
INSERT INTO `oauth_access_tokens` VALUES ('4a4a112c2282bc1c7c30db59b30f59b85fc042bbb61828c776bcf237d088351edabcd5076dd63fd6', 2, 3, 'Personal Access Token', '[]', 0, '2021-06-30 18:07:32', '2021-06-30 18:07:32', '2022-06-30 18:07:32');
INSERT INTO `oauth_access_tokens` VALUES ('528e7bc9feff01c36bfa24547d26eb13aeeec47829729bc285fd4fcd5ccc00facffdee0268a55baa', 2, 3, 'Personal Access Token', '[]', 0, '2021-07-02 00:27:20', '2021-07-02 00:27:20', '2022-07-02 00:27:20');
INSERT INTO `oauth_access_tokens` VALUES ('5bec488475193d68483c594fac9559edbc5d03ebe56f7a1ca0b2098cc419d60c68cac1693dedf5a7', 2, 3, 'Personal Access Token', '[]', 0, '2021-07-01 21:44:20', '2021-07-01 21:44:20', '2022-07-01 21:44:20');
INSERT INTO `oauth_access_tokens` VALUES ('60192ba66f9281fce30c5ba4d27a992294963a0b4878946c8429eba0ca09f5c236af969bc82da422', 2, 1, 'Personal Access Token', '[]', 0, '2021-06-30 13:16:55', '2021-06-30 13:16:55', '2022-06-30 13:16:55');
INSERT INTO `oauth_access_tokens` VALUES ('6b0cd285afcfedd1cc7742bb1aad5d0538b6198d06f17d4ef0787b371cbc332d50e876781cccb987', 2, 1, 'Personal Access Token', '[]', 0, '2021-06-28 09:58:46', '2021-06-28 09:58:46', '2022-06-28 09:58:46');
INSERT INTO `oauth_access_tokens` VALUES ('71bf120545e5ab48eb5a9dfa15c263bc831b2c4b208b3d0e743f39affee61c700b7178f9fbab4220', 2, 1, 'Personal Access Token', '[]', 0, '2021-06-30 17:36:35', '2021-06-30 17:36:35', '2022-06-30 17:36:35');
INSERT INTO `oauth_access_tokens` VALUES ('7d311e4282688983203983f7dc40b161316171d09ec14c00cf2a25286fa7f02b9169d5624c187d86', 2, 3, 'Personal Access Token', '[]', 0, '2021-07-01 09:41:36', '2021-07-01 09:41:36', '2022-07-01 09:41:36');
INSERT INTO `oauth_access_tokens` VALUES ('8a6c46c6776ca54e46ddbd994c667bb3da225bbcdab6a9dbc6b6b5cd1eaafddafe3ad14398417cbd', 2, 3, 'Personal Access Token', '[]', 0, '2021-07-02 00:49:14', '2021-07-02 00:49:14', '2022-07-02 00:49:14');
INSERT INTO `oauth_access_tokens` VALUES ('96e0aa055487bb2df5850985aa07feb585820d84e0a626b1f147590f3391211e0a7bc7b217044e80', 2, 3, 'Personal Access Token', '[]', 0, '2021-07-02 00:29:58', '2021-07-02 00:29:58', '2022-07-02 00:29:58');
INSERT INTO `oauth_access_tokens` VALUES ('a3225d25ba5d8a34ad8e9cdf730fbe6174d4b1d061971ce9c2a256b389c280de30069c7e8411716e', 2, 3, 'Personal Access Token', '[]', 0, '2021-07-01 08:50:15', '2021-07-01 08:50:15', '2022-07-01 08:50:15');
INSERT INTO `oauth_access_tokens` VALUES ('b01f722c64340eb48abf945536949bfe20f149f21a5e11f53fb7ffa119b6a1edcaa7d1b6541feaf8', 2, 1, 'Personal Access Token', '[]', 0, '2021-06-28 09:59:52', '2021-06-28 09:59:52', '2022-06-28 09:59:52');
INSERT INTO `oauth_access_tokens` VALUES ('cd5564e5a38dfeb83ea3236adc792e4fd7ab19f9799e5206d021ce4c734b61867ca328ac24a884a8', 2, 3, 'Personal Access Token', '[]', 0, '2021-06-30 22:27:05', '2021-06-30 22:27:05', '2022-06-30 22:27:05');
INSERT INTO `oauth_access_tokens` VALUES ('e0622824e39f3bea2e33d08280c33d0037a0bb7d588b4c2d4fb2f3049d28cb51acca16560cfdbecd', 2, 3, 'Personal Access Token', '[]', 0, '2021-06-30 19:50:32', '2021-06-30 19:50:32', '2022-06-30 19:50:32');
INSERT INTO `oauth_access_tokens` VALUES ('e8df220b0a7163a642254f1f695776781a91556cf96deb7271634aada9d2134e6ce9e506e4e5fd8b', 2, 1, 'Personal Access Token', '[]', 0, '2021-06-28 11:48:40', '2021-06-28 11:48:40', '2022-06-28 11:48:40');
INSERT INTO `oauth_access_tokens` VALUES ('e9b79b5779ef93303233a3ced8d174a9d007cad20ebadc48f694658e3f80cff5661da3751f7f1c57', 2, 1, 'Personal Access Token', '[]', 0, '2021-06-30 13:53:54', '2021-06-30 13:53:54', '2022-06-30 13:53:54');
INSERT INTO `oauth_access_tokens` VALUES ('fb08b9de3dc56a059e22e0d838230f0cb5562283334b6654aa3ae7ea481ccbeab43dd379537a86a3', 2, 1, 'Personal Access Token', '[]', 0, '2021-06-30 14:11:35', '2021-06-30 14:11:35', '2022-06-30 14:11:35');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_auth_codes_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_clients_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES (1, NULL, 'CAT-UNM Personal Access Client', 'nXzZfwHvnhY39HUw2mz7RvOtzndP6RfSI56374pf', NULL, 'http://localhost', 1, 0, 0, '2021-06-28 09:50:07', '2021-06-28 09:50:07');
INSERT INTO `oauth_clients` VALUES (2, NULL, 'CAT-UNM Password Grant Client', 'nt4emAOcMBhUUE31MUF5hlmvzKnaz2r6HqdbzbbP', 'users', 'http://localhost', 0, 1, 0, '2021-06-28 09:50:08', '2021-06-28 09:50:08');
INSERT INTO `oauth_clients` VALUES (3, NULL, 'CAT Personal Access Client', '5HTGjRFI6EArPqybWPxFXgtwZMFucvonsxSyVFfY', NULL, 'http://localhost', 1, 0, 0, '2021-06-30 18:05:29', '2021-06-30 18:05:29');
INSERT INTO `oauth_clients` VALUES (4, NULL, 'CAT Password Grant Client', 'ROXrlrgCsCBS4iQT8f5Cvm25WOPQh19WcZCvUPTj', 'users', 'http://localhost', 0, 1, 0, '2021-06-30 18:05:29', '2021-06-30 18:05:29');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES (1, 1, '2021-06-28 09:50:08', '2021-06-28 09:50:08');
INSERT INTO `oauth_personal_access_clients` VALUES (2, 3, '2021-06-30 18:05:29', '2021-06-30 18:05:29');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_refresh_tokens_access_token_id_index`(`access_token_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode_kursus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `soal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `file_soal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `opsi_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `file_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `poin_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `opsi_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `file_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `poin_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `opsi_3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `file_3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `poin_3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `opsi_4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `file_4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `poin_4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `opsi_5` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `file_5` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `poin_5` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `current_answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of questions
-- ----------------------------

-- ----------------------------
-- Table structure for results
-- ----------------------------
DROP TABLE IF EXISTS `results`;
CREATE TABLE `results`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `r` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `i` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `s` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `e` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of results
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_role` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'Admin', NULL, NULL);
INSERT INTO `roles` VALUES (2, 'Pengawas', NULL, NULL);
INSERT INTO `roles` VALUES (3, 'Peserta', NULL, NULL);
INSERT INTO `roles` VALUES (4, 'Server', NULL, NULL);

-- ----------------------------
-- Table structure for rooms
-- ----------------------------
DROP TABLE IF EXISTS `rooms`;
CREATE TABLE `rooms`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode_ruangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ruangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rooms
-- ----------------------------

-- ----------------------------
-- Table structure for server_details
-- ----------------------------
DROP TABLE IF EXISTS `server_details`;
CREATE TABLE `server_details`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username_server` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `username_pengawas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq`(`username_server`, `username_pengawas`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of server_details
-- ----------------------------
INSERT INTO `server_details` VALUES (1, 'server', 'pengawas1', '2021-06-29 22:00:08', '2021-06-29 22:00:08');
INSERT INTO `server_details` VALUES (3, 'server', 'pengawas2', '2021-06-30 17:36:03', '2021-06-30 17:36:03');
INSERT INTO `server_details` VALUES (4, 'server', 'pengawas3', '2021-06-30 18:11:33', '2021-06-30 18:11:33');

-- ----------------------------
-- Table structure for servers
-- ----------------------------
DROP TABLE IF EXISTS `servers`;
CREATE TABLE `servers`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_petugas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_active` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `servers_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of servers
-- ----------------------------
INSERT INTO `servers` VALUES (1, 'Gedung Pinisi Lt. 2 UNM Gunungsari', 'L01UNMC4T11', 'Zulkiplih', '1', NULL, NULL);
INSERT INTO `servers` VALUES (2, 'Gedung Pinisi Lt. 3 UNM Gunungsari', 'L02UNMC4T12', 'Asdar', '1', NULL, NULL);
INSERT INTO `servers` VALUES (3, 'Gedung Pinisi Lt. 4 UNM Gunungsari', 'L03UNMC4T13', 'Ali Hasan', '1', NULL, NULL);
INSERT INTO `servers` VALUES (4, 'Gedung Pinisi Lt. 9 UNM Gunungsari', 'L04UNMC4T14', 'Zulfuadi Barsah', '1', NULL, NULL);
INSERT INTO `servers` VALUES (5, 'Fakultas Psikologi UNM Gunungsari', 'L06UNMC4T15', 'Syahid', '1', NULL, NULL);
INSERT INTO `servers` VALUES (6, 'Fakultas Ekonomi UNM Gunungsari', 'L07UNMC4T16', 'Taufik', '1', NULL, NULL);
INSERT INTO `servers` VALUES (7, 'Fakultas Teknik UNM Parangtambung', 'L08UNMC4T17', 'Abu Rizal', '1', NULL, NULL);
INSERT INTO `servers` VALUES (8, 'FMIPA Gedung Matematika UNM Parangtambung', 'L10UNMC4T18', 'Muh Rizal', '1', NULL, NULL);
INSERT INTO `servers` VALUES (9, 'Fakultas Ilmu Pendidikan UNM Tidung', 'L13UNMC4T19', 'Mahdinul', '1', NULL, NULL);

-- ----------------------------
-- Table structure for sesis
-- ----------------------------
DROP TABLE IF EXISTS `sesis`;
CREATE TABLE `sesis`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode_sesi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_sesi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sesis
-- ----------------------------

-- ----------------------------
-- Table structure for status_servers
-- ----------------------------
DROP TABLE IF EXISTS `status_servers`;
CREATE TABLE `status_servers`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `kode_ruangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `kode_sesi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `jml_jwb_lokal` int(11) NULL DEFAULT NULL,
  `jml_jwb_pusat` int(11) NULL DEFAULT NULL,
  `jmh_kehadiran` int(11) NULL DEFAULT NULL,
  `tgl_ujian` datetime NULL DEFAULT NULL,
  `status_memenuhi` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of status_servers
-- ----------------------------

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode_ruangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_sesi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_jurusan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `students_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of students
-- ----------------------------

-- ----------------------------
-- Table structure for sub_menus
-- ----------------------------
DROP TABLE IF EXISTS `sub_menus`;
CREATE TABLE `sub_menus`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NULL DEFAULT NULL,
  `sub` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sub_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_active` int(11) NULL DEFAULT NULL,
  `urut_sub` int(11) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sub_menus
-- ----------------------------
INSERT INTO `sub_menus` VALUES (1, 2, 'Sesi', 'sesi', 1, 1, NULL, NULL);
INSERT INTO `sub_menus` VALUES (2, 2, 'Ruangan', 'ruangan', 1, 2, NULL, NULL);
INSERT INTO `sub_menus` VALUES (3, 2, 'Peserta', 'siswa', 1, 3, NULL, NULL);
INSERT INTO `sub_menus` VALUES (4, 2, 'Pengawas', 'pengawas', 1, 4, NULL, NULL);
INSERT INTO `sub_menus` VALUES (5, 2, 'kategori', 'kategori', 0, 5, NULL, NULL);
INSERT INTO `sub_menus` VALUES (6, 2, 'Kursus', 'kursus', 1, 6, NULL, NULL);
INSERT INTO `sub_menus` VALUES (7, 2, 'User', 'user', 1, 7, NULL, NULL);
INSERT INTO `sub_menus` VALUES (8, 5, 'Minat', 'minat', 1, 1, NULL, NULL);
INSERT INTO `sub_menus` VALUES (9, 5, 'Akademik', 'akademik', 1, 2, NULL, NULL);
INSERT INTO `sub_menus` VALUES (10, 5, 'Kepribadian', 'kepribadian', 1, 3, NULL, NULL);
INSERT INTO `sub_menus` VALUES (11, 2, 'Server Lokal', 'server', 1, 6, NULL, NULL);

-- ----------------------------
-- Table structure for teachers
-- ----------------------------
DROP TABLE IF EXISTS `teachers`;
CREATE TABLE `teachers`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode_ruangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_sesi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `teachers_username_unique`(`username`) USING BTREE,
  UNIQUE INDEX `pengawas`(`kode_ruangan`, `kode_sesi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teachers
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ip_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_username_unique`(`username`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (2, 4, 'Gedung Pinisi Lt. 2 UNM Gunungsari', 'L01UNMC4T11', NULL, NULL, '$2y$10$sE79JKkhXShIg57NFUlYCO8YN2W0skwSPoUx9dRfXcPiJ2GPOlqsm', NULL, '172.16.37.45', '2021-07-02 08:53:34', '2021-07-02 08:54:34');
INSERT INTO `users` VALUES (3, 4, 'Gedung Pinisi Lt. 3 UNM Gunungsari', 'L02UNMC4T12', NULL, NULL, '$2y$10$TxW/zpsN/1XksqSYp2dxeOkf3OPr0Y8RvIBofrQKiK290Df6YpTMa', NULL, NULL, '2021-07-02 08:53:34', '2021-07-02 08:53:34');
INSERT INTO `users` VALUES (4, 4, 'Gedung Pinisi Lt. 4 UNM Gunungsari', 'L03UNMC4T13', NULL, NULL, '$2y$10$Fp/pi1wkjVHuvPCCvODiiu0jB0MMGl3e7nwm4ukMuwgookhq.Hlqe', NULL, NULL, '2021-07-02 08:53:34', '2021-07-02 08:53:34');
INSERT INTO `users` VALUES (5, 4, 'Gedung Pinisi Lt. 9 UNM Gunungsari', 'L04UNMC4T14', NULL, NULL, '$2y$10$8W9vm5QHcEsePvMV0vGoq.CjSdUiZp1UcN6u2OYLkNP5Hd2KCNXde', NULL, NULL, '2021-07-02 08:53:34', '2021-07-02 08:53:34');
INSERT INTO `users` VALUES (6, 4, 'Fakultas Psikologi UNM Gunungsari', 'L06UNMC4T15', NULL, NULL, '$2y$10$mUz7kiYA..J7tDJ5N./AZeuKhk8UC3y1PB88GOqDgb34.9.YxjWPG', NULL, NULL, '2021-07-02 08:53:34', '2021-07-02 08:53:34');
INSERT INTO `users` VALUES (7, 4, 'Fakultas Ekonomi UNM Gunungsari', 'L07UNMC4T16', NULL, NULL, '$2y$10$u7DzTxgwxPNqKb3XqwNLIug6Z2kg/i3V6YjRGQQucMBVTRSdW27R6', NULL, NULL, '2021-07-02 08:53:35', '2021-07-02 08:53:35');
INSERT INTO `users` VALUES (8, 4, 'Fakultas Teknik UNM Parangtambung', 'L08UNMC4T17', NULL, NULL, '$2y$10$Ny/gSP6JBgduGdKPL1C7EuupoMa4Dj731faXGUB1ZJKcYTOiiJIru', NULL, NULL, '2021-07-02 08:53:35', '2021-07-02 08:53:35');
INSERT INTO `users` VALUES (9, 4, 'FMIPA Gedung Matematika UNM Parangtambung', 'L10UNMC4T18', NULL, NULL, '$2y$10$YT1FJWLE7oin.EepIoTOP..xoY.y2Whe510/kyozMEaVlM6VgQLYK', NULL, NULL, '2021-07-02 08:53:35', '2021-07-02 08:53:35');
INSERT INTO `users` VALUES (10, 4, 'Fakultas Ilmu Pendidikan UNM Tidung', 'L13UNMC4T19', NULL, NULL, '$2y$10$cfiWvP8ftBQ1B7hcl1kJ6Od3wq6YHxmFc2OHLNC7Pin5rEfV/62T6', NULL, NULL, '2021-07-02 08:53:35', '2021-07-02 08:53:35');

-- ----------------------------
-- View structure for kirim_jawaban
-- ----------------------------
DROP VIEW IF EXISTS `kirim_jawaban`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `kirim_jawaban` AS select `answers`.`id` AS `id`,`answers`.`exam_id` AS `exam_id`,`answers`.`username` AS `username`,`answers`.`kode_kategori` AS `kode_kategori`,`answers`.`kode_kursus` AS `kode_kursus`,`answers`.`remaining_time_minute` AS `remaining_time_minute`,`answers`.`remaining_time_second` AS `remaining_time_second`,`answers`.`question_id` AS `question_id`,`answers`.`total_question` AS `total_question`,`answers`.`current_answer` AS `current_answer`,`answers`.`score` AS `score`,`exams`.`kode_ruangan` AS `kode_ruangan`,`exams`.`kode_sesi` AS `kode_sesi`,`exams`.`ujian_mulai` AS `ujian_mulai` from (`answers` join `exams` on((`answers`.`exam_id` = `exams`.`id`)));

-- ----------------------------
-- View structure for view_pengawas
-- ----------------------------
DROP VIEW IF EXISTS `view_pengawas`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_pengawas` AS select `teachers`.`id` AS `id`,`teachers`.`kode_ruangan` AS `kode_ruangan`,`teachers`.`kode_sesi` AS `kode_sesi`,`teachers`.`nama` AS `nama`,`teachers`.`username` AS `username`,`server_details`.`username_server` AS `username_server` from (`server_details` join `teachers` on((`server_details`.`username_pengawas` = `teachers`.`username`)));

-- ----------------------------
-- View structure for view_pengawas_jadwal
-- ----------------------------
DROP VIEW IF EXISTS `view_pengawas_jadwal`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_pengawas_jadwal` AS select `exams`.`id` AS `id`,`exams`.`kode_kategori` AS `kode_kategori`,`exams`.`ujian_mulai` AS `ujian_mulai`,`exams`.`ujian_selesai` AS `ujian_selesai`,`exams`.`token` AS `token`,`exams`.`kode_ruangan` AS `kode_ruangan`,`exams`.`kode_sesi` AS `kode_sesi`,`exams`.`working_time` AS `working_time`,`view_pengawas`.`username_server` AS `username_server` from (`view_pengawas` join `exams` on(((`view_pengawas`.`kode_ruangan` = `exams`.`kode_ruangan`) and (`view_pengawas`.`kode_sesi` = `exams`.`kode_sesi`))));

-- ----------------------------
-- View structure for view_pengawas_jadwal_kursus
-- ----------------------------
DROP VIEW IF EXISTS `view_pengawas_jadwal_kursus`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_pengawas_jadwal_kursus` AS select `category_courses`.`id` AS `id`,`category_courses`.`exam_id` AS `exam_id`,`category_courses`.`kode_kursus` AS `kode_kursus`,`category_courses`.`total_question` AS `total_question`,`category_courses`.`working_time` AS `working_time`,`category_courses`.`random` AS `random`,`view_pengawas_jadwal`.`username_server` AS `username_server` from (`view_pengawas_jadwal` join `category_courses` on((`view_pengawas_jadwal`.`id` = `category_courses`.`exam_id`)));

-- ----------------------------
-- View structure for view_pengawas_peserta
-- ----------------------------
DROP VIEW IF EXISTS `view_pengawas_peserta`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_pengawas_peserta` AS select `students`.`id` AS `id`,`students`.`kode_ruangan` AS `kode_ruangan`,`students`.`kode_sesi` AS `kode_sesi`,`students`.`nama` AS `nama`,`students`.`username` AS `username`,`students`.`foto` AS `foto`,`students`.`kode_jurusan` AS `kode_jurusan`,`students`.`status` AS `status`,`users`.`password` AS `password`,`view_pengawas`.`username_server` AS `username_server` from ((`students` join `view_pengawas` on(((`students`.`kode_ruangan` = `view_pengawas`.`kode_ruangan`) and (`students`.`kode_sesi` = `view_pengawas`.`kode_sesi`)))) join `users` on((`users`.`username` = `students`.`username`)));

-- ----------------------------
-- View structure for view_pengawas_user
-- ----------------------------
DROP VIEW IF EXISTS `view_pengawas_user`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_pengawas_user` AS select `teachers`.`id` AS `id`,`teachers`.`kode_ruangan` AS `kode_ruangan`,`teachers`.`kode_sesi` AS `kode_sesi`,`teachers`.`nama` AS `nama`,`teachers`.`username` AS `username`,`users`.`password` AS `password`,`view_pengawas`.`username_server` AS `username_server` from ((`view_pengawas` join `teachers` on(((`view_pengawas`.`kode_ruangan` = `teachers`.`kode_ruangan`) and (`view_pengawas`.`kode_sesi` = `teachers`.`kode_sesi`)))) join `users` on((`teachers`.`username` = `users`.`username`)));

-- ----------------------------
-- View structure for view_pengawas_user_hari
-- ----------------------------
DROP VIEW IF EXISTS `view_pengawas_user_hari`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_pengawas_user_hari` AS select `teachers`.`id` AS `id`,`teachers`.`kode_ruangan` AS `kode_ruangan`,`teachers`.`kode_sesi` AS `kode_sesi`,`teachers`.`nama` AS `nama`,`teachers`.`username` AS `username`,`view_pengawas`.`username_server` AS `username_server`,`sesis`.`nama_sesi` AS `nama_sesi`,`rooms`.`nama_ruangan` AS `nama_ruangan`,`exams`.`ujian_mulai` AS `ujian_mulai` from ((((`view_pengawas` join `teachers` on(((`view_pengawas`.`kode_ruangan` = `teachers`.`kode_ruangan`) and (`view_pengawas`.`kode_sesi` = `teachers`.`kode_sesi`)))) join `exams` on(((`teachers`.`kode_ruangan` = `exams`.`kode_ruangan`) and (`teachers`.`kode_sesi` = `exams`.`kode_sesi`)))) join `rooms` on((`exams`.`kode_ruangan` = `rooms`.`kode_ruangan`))) join `sesis` on((`exams`.`kode_sesi` = `sesis`.`kode_sesi`)));

SET FOREIGN_KEY_CHECKS = 1;
