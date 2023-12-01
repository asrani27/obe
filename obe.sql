/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50739 (5.7.39)
 Source Host           : localhost:3306
 Source Schema         : obe

 Target Server Type    : MySQL
 Target Server Version : 50739 (5.7.39)
 File Encoding         : 65001

 Date: 02/12/2023 01:18:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dosen
-- ----------------------------
DROP TABLE IF EXISTS `dosen`;
CREATE TABLE `dosen` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nidn` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dosen
-- ----------------------------
BEGIN;
INSERT INTO `dosen` (`id`, `nidn`, `nama`, `telp`, `user_id`) VALUES (1, '123241', 'andia', '098765', NULL);
COMMIT;

-- ----------------------------
-- Table structure for konfigurasi
-- ----------------------------
DROP TABLE IF EXISTS `konfigurasi`;
CREATE TABLE `konfigurasi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) DEFAULT NULL,
  `deksripsi` varchar(255) DEFAULT NULL,
  `gambar1` varchar(255) DEFAULT NULL,
  `gambar2` varchar(255) DEFAULT NULL,
  `jml_dosen` varchar(255) DEFAULT NULL,
  `jml_programstudi` varchar(255) DEFAULT NULL,
  `jml_matkul` varchar(255) DEFAULT NULL,
  `gambar3` varchar(255) DEFAULT NULL,
  `fitur1` varchar(255) DEFAULT NULL,
  `fitur1_deskripsi` varchar(255) DEFAULT NULL,
  `fitur2` varchar(255) DEFAULT NULL,
  `fitur2_deskripsi` varchar(255) DEFAULT NULL,
  `fitur3` varchar(255) DEFAULT NULL,
  `fitur3_deskripsi` varchar(255) DEFAULT NULL,
  `appstore` varchar(255) DEFAULT NULL,
  `playstore` varchar(255) DEFAULT NULL,
  `tentang` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `partner1` varchar(255) DEFAULT NULL,
  `partner2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of konfigurasi
-- ----------------------------
BEGIN;
INSERT INTO `konfigurasi` (`id`, `judul`, `deksripsi`, `gambar1`, `gambar2`, `jml_dosen`, `jml_programstudi`, `jml_matkul`, `gambar3`, `fitur1`, `fitur1_deskripsi`, `fitur2`, `fitur2_deskripsi`, `fitur3`, `fitur3_deskripsi`, `appstore`, `playstore`, `tentang`, `alamat`, `email`, `telp`, `partner1`, `partner2`) VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for mahasiswa
-- ----------------------------
DROP TABLE IF EXISTS `mahasiswa`;
CREATE TABLE `mahasiswa` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `npm` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mahasiswa
-- ----------------------------
BEGIN;
INSERT INTO `mahasiswa` (`id`, `npm`, `nama`, `telp`, `jurusan`, `user_id`) VALUES (1, '213243', 'asddf', '123435', 'SI', NULL);
INSERT INTO `mahasiswa` (`id`, `npm`, `nama`, `telp`, `jurusan`, `user_id`) VALUES (2, 'efrg', 'sdf', '1314', 'SI', NULL);
COMMIT;

-- ----------------------------
-- Table structure for role_users
-- ----------------------------
DROP TABLE IF EXISTS `role_users`;
CREATE TABLE `role_users` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `role_users_user_id_role_id_unique` (`user_id`,`role_id`) USING BTREE,
  KEY `role_users_role_id_foreign` (`role_id`) USING BTREE,
  CONSTRAINT `role_users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of role_users
-- ----------------------------
BEGIN;
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (1, 1);
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'superadmin', '2020-12-23 23:17:35', '2020-12-23 23:17:35');
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'dosen', '2023-12-01 10:47:38', '2023-12-01 10:47:38');
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'mahasiswa', '2023-12-01 10:47:42', '2023-12-01 10:47:42');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `password` varchar(255) NOT NULL,
  `password_superadmin` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `api_token` varchar(255) DEFAULT NULL,
  `last_session` varchar(255) DEFAULT NULL,
  `change_password` int(1) unsigned DEFAULT '0' COMMENT '0: belum, 1: sudah',
  `nama_kelompok` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_username_unique` (`username`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `password_superadmin`, `remember_token`, `created_at`, `updated_at`, `api_token`, `last_session`, `change_password`, `nama_kelompok`) VALUES (1, 'superadmin', NULL, 'superadmin', '2022-11-07 00:40:59', '$2y$10$E9xG1OtIFvBRbHqlwHCC3u48vO5eBf2OQ9wFNpi.qKOAzVqNDUdW2', NULL, NULL, '2022-11-07 00:40:59', '2022-11-06 16:40:59', '$2y$10$tjMANlV25IUwvKuPxEODW.3qE3zPSKjwhmgTcZUgsPDZRGcpgGAN.', NULL, 0, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
