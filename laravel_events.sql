/*
 Navicat Premium Data Transfer

 Source Server         : xampp
 Source Server Type    : MySQL
 Source Server Version : 50144
 Source Host           : localhost:3306
 Source Schema         : laravel_events

 Target Server Type    : MySQL
 Target Server Version : 50144
 File Encoding         : 65001

 Date: 02/04/2018 08:16:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activations
-- ----------------------------
DROP TABLE IF EXISTS `activations`;
CREATE TABLE `activations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of activations
-- ----------------------------
BEGIN;
INSERT INTO `activations` VALUES (1, 1, 'xZlYQGhEFUymRGJPum62Mw8OSHhZENMG', 1, '2016-07-13 18:16:33', '2016-07-13 18:16:33', '2016-07-13 18:16:33');
INSERT INTO `activations` VALUES (2, 2, 'f17MHjorybuDLvetIpgYI6rvnxamEatX', 1, '2016-08-17 12:24:04', '2016-08-17 12:24:04', '2016-08-17 12:24:04');
INSERT INTO `activations` VALUES (3, 3, 'RoewkNY6In5GF3EYPRIdUtv0V2suwCUj', 1, '2016-08-30 09:16:32', '2016-08-30 09:16:32', '2016-08-30 09:16:32');
INSERT INTO `activations` VALUES (4, 4, 'niW4USJfFNJXdMSBIcsks7HHePxFclKv', 1, '2016-08-30 09:30:32', '2016-08-30 09:30:31', '2016-08-30 09:30:32');
INSERT INTO `activations` VALUES (5, 5, 'XGvVznReAPJlrxvDvbtkup0zG6ythnB8', 1, '2016-08-30 09:33:35', '2016-08-30 09:33:35', '2016-08-30 09:33:35');
INSERT INTO `activations` VALUES (6, 6, 'WNbb9ZyJsOiB3xchVh6bDRAhVBw5PMyU', 1, '2016-08-30 09:35:03', '2016-08-30 09:35:03', '2016-08-30 09:35:03');
INSERT INTO `activations` VALUES (7, 7, 'BBqXVo4yMrNFVnELZGZonvuJ46BvMKTY', 1, '2016-08-30 09:37:33', '2016-08-30 09:37:33', '2016-08-30 09:37:33');
INSERT INTO `activations` VALUES (8, 9, 'zsjRzZ1PO7FgP92aBemjRnq9TnaELarV', 1, '2016-08-30 12:07:32', '2016-08-30 12:07:31', '2016-08-30 12:07:32');
INSERT INTO `activations` VALUES (9, 10, 'UXqN9AJPcgjNJIgGxFZyQodi7bQSMrsl', 1, '2016-08-30 20:04:07', '2016-08-30 20:04:07', '2016-08-30 20:04:07');
INSERT INTO `activations` VALUES (10, 11, 'GK0b16OwIml9QALudVrWygc38B3MFZJK', 1, '2016-09-01 18:11:54', '2016-09-01 18:11:54', '2016-09-01 18:11:54');
INSERT INTO `activations` VALUES (11, 12, 'n7BVY71QAR6fKK2hYSFEOQt9dAoES723', 1, '2016-09-01 18:14:58', '2016-09-01 18:14:58', '2016-09-01 18:14:58');
INSERT INTO `activations` VALUES (12, 13, 'IpJHArVbP9DDEvzsSeEafUhMOT2marHa', 1, '2016-09-01 18:22:19', '2016-09-01 18:22:19', '2016-09-01 18:22:19');
INSERT INTO `activations` VALUES (13, 14, 'Ecc1WDKr3MjzLJqEGJnKIR2c1uT8km8F', 1, '2016-09-01 18:57:18', '2016-09-01 18:57:18', '2016-09-01 18:57:18');
INSERT INTO `activations` VALUES (14, 15, '8GnrpHj5rXtQJeyWQqPGbzEzJo1DiELy', 1, '2016-09-01 19:19:39', '2016-09-01 19:19:39', '2016-09-01 19:19:39');
INSERT INTO `activations` VALUES (15, 18, 'EmI23tLmw3mOvVVtSlcCFZvc8eVxX0Qx', 1, '2016-12-21 06:04:04', '2016-12-21 06:04:04', '2016-12-21 06:04:04');
INSERT INTO `activations` VALUES (16, 19, 'sxsrBrDNDBNjjifCPa1atzOz0fqiOoma', 1, '2016-12-21 06:06:10', '2016-12-21 06:06:10', '2016-12-21 06:06:10');
INSERT INTO `activations` VALUES (17, 20, 'iFwLr8bQJBELK88jJdEeuAOtyLGgQQz7', 1, '2016-12-21 06:40:26', '2016-12-21 06:40:26', '2016-12-21 06:40:26');
INSERT INTO `activations` VALUES (18, 22, 'gpl5D5yLeibBzlgYjmOD3vJz0ELWsYn3', 1, '2016-12-21 11:22:50', '2016-12-21 11:22:50', '2016-12-21 11:22:50');
INSERT INTO `activations` VALUES (19, 23, 'cOAC7Xu335PKFrEGIKX9yav3pRva2S1A', 1, '2016-12-22 07:34:03', '2016-12-22 07:34:02', '2016-12-22 07:34:03');
INSERT INTO `activations` VALUES (20, 24, 'GNW7PzJthwLz5gPi9POjjVPHAMHXPtH6', 1, '2017-02-06 12:10:43', '2017-02-06 12:10:43', '2017-02-06 12:10:43');
INSERT INTO `activations` VALUES (21, 25, 'cQNTd7U6RL1TJCOl6os7MwaIB9dJGTP0', 1, '2017-05-11 19:52:49', '2017-05-11 19:52:49', '2017-05-11 19:52:49');
COMMIT;

-- ----------------------------
-- Table structure for ads
-- ----------------------------
DROP TABLE IF EXISTS `ads`;
CREATE TABLE `ads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `available_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `additional_package_offer` text COLLATE utf8_unicode_ci NOT NULL,
  `additional_ads_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publish` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ads_category_id` int(11) DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ads
-- ----------------------------
BEGIN;
INSERT INTO `ads` VALUES (3, 'Lorem ipsum dolor', 'lorem-ipsum-dolor', 'Dhapakhel, Central Development Region, Nepal', '', 'PvDW2mK2r7kiiwB38q8D.jpg', '', '2016-09-03 22:32:19', '', '', '', 'Variable', '', '2016-09-03 17:12:49', '2017-05-24 10:05:50', 11, 1, NULL);
INSERT INTO `ads` VALUES (2, 'Panga Party Venue', 'panga-party-venue', 'Panga, Kirtipur, Central Development Region, Nepal', 'Panga party Venue, Dhokashi Panga', 'E9T9TNWFXdR4jVF7JOX5.jpg', 'https://www.youtube.com/watch?v=f2VmgAX1fwM', '1,24', '200', 'With Foods, 40% discount for 400 and more', 'Party', 'Fixed', '', '2016-09-02 18:06:59', '2016-09-05 18:23:03', 11, 1, NULL);
INSERT INTO `ads` VALUES (4, 'Panga Hall', 'panga-hall', 'Panga, Kirtipur, Central Development Region, Nepal', 'Panga', 'vQlkBGArYPmJzB8x9wl5.jpg', 'https://www.youtube.com/watch?v=f2VmgAX1fwM', '', '', 'No Pacakge Offer', 'Party', 'Variable', '', '2016-09-03 22:59:19', '2016-09-05 18:23:24', 11, 1, NULL);
INSERT INTO `ads` VALUES (5, 'Sambat Studio', 'sambat-studio', 'Kirtipur, Central Development Region, Nepal', 'Bikram', '', '', '', '5000', '', '', 'Fixed', '', '2016-09-04 19:53:31', '2016-09-04 19:53:31', 11, 6, NULL);
INSERT INTO `ads` VALUES (8, 'New Freelancer Ad', 'new-freelancer-ad', 'Kathmandu, Central Development Region, Nepal', 'This is Venue of freelancer', 'efRI9FgHXQQwIQ3V80vY.jpg', '', '', '300', 'Nothing Special', 'Wedding Hall, Party Hall, Seminar, Meeting', 'Fixed', '', '2016-12-19 08:23:52', '2016-12-19 08:23:52', 14, 1, NULL);
INSERT INTO `ads` VALUES (10, 'test', 'test', 'Karnataka, India', 'tes test test', '', '', '', '200', '', '', 'Fixed', '', '2017-01-09 18:18:26', '2017-01-09 18:18:26', 11, 1, '12:00');
INSERT INTO `ads` VALUES (11, 'test', 'test-1', 'Karnataka, India', 'tes test test', '', '', '', '200', '', '', 'Fixed', '', '2017-01-09 18:19:01', '2017-01-09 18:19:01', 11, 1, '12:00');
INSERT INTO `ads` VALUES (12, 'test', 'test-2', 'Karnataka, India', 'tes test test', '', '', '', '200', '', '', 'Fixed', '', '2017-01-09 18:20:52', '2017-01-09 18:20:52', 11, 1, '12:00');
COMMIT;

-- ----------------------------
-- Table structure for ads_categories
-- ----------------------------
DROP TABLE IF EXISTS `ads_categories`;
CREATE TABLE `ads_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homepage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ads_categories
-- ----------------------------
BEGIN;
INSERT INTO `ads_categories` VALUES (1, 'Venue', 'venue', '1', NULL, '2016-09-04 16:48:35');
INSERT INTO `ads_categories` VALUES (2, 'Sound System', 'sound-system', '1', NULL, '2016-09-04 15:29:29');
INSERT INTO `ads_categories` VALUES (3, 'Decoration', 'decoration', '1', NULL, '2017-02-17 18:21:57');
INSERT INTO `ads_categories` VALUES (4, 'Catering', 'catering', '1', NULL, '2017-02-17 18:22:03');
INSERT INTO `ads_categories` VALUES (5, 'Photographer', 'photographer', '1', NULL, '2017-02-17 18:22:21');
INSERT INTO `ads_categories` VALUES (6, 'Videographer', 'videographer', '1', NULL, '2017-02-17 18:22:30');
INSERT INTO `ads_categories` VALUES (7, 'Other', 'other', '', NULL, '2017-02-17 18:22:35');
COMMIT;

-- ----------------------------
-- Table structure for ads_photos
-- ----------------------------
DROP TABLE IF EXISTS `ads_photos`;
CREATE TABLE `ads_photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ads_id` int(10) unsigned NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ads_photos
-- ----------------------------
BEGIN;
INSERT INTO `ads_photos` VALUES (1, 1, 'qAtTFPMLEGiygj0nKFU8.jpg', 1, NULL, NULL, NULL);
INSERT INTO `ads_photos` VALUES (2, 1, 'CQvpIpmHSSAs2KZ4x7eZ.jpg', 1, NULL, NULL, NULL);
INSERT INTO `ads_photos` VALUES (3, 3, 'hDnrSx1ISpoJQjE2cfh5.jpg', 1, NULL, '2016-09-03 18:18:49', '2016-09-03 18:18:49');
INSERT INTO `ads_photos` VALUES (4, 3, 'HryTtv7mwkxoDXSSgeQt.jpg', 1, NULL, '2016-09-03 18:27:12', '2016-09-03 18:27:12');
INSERT INTO `ads_photos` VALUES (5, 3, 'NCKwrOOvfWHYEkUMeccU.jpg', 1, NULL, '2016-09-03 18:44:26', '2016-09-03 18:44:26');
INSERT INTO `ads_photos` VALUES (6, 3, 'le7OfJQlcZMxj8zRovSG.jpg', 1, NULL, '2016-09-03 18:42:03', '2016-09-03 18:42:03');
INSERT INTO `ads_photos` VALUES (7, 3, 'Xt5NMoqyEomNgp9wAQ4Y.jpg', 1, NULL, '2016-09-03 18:47:38', '2016-09-03 18:47:38');
INSERT INTO `ads_photos` VALUES (8, 3, 'eogoVlBxFLrmydUcUvyi.jpg', 1, NULL, '2016-09-03 18:50:17', '2016-09-03 18:50:17');
INSERT INTO `ads_photos` VALUES (9, 3, 'nhATr7wtr65Zh2GwMOEY.jpg', 1, NULL, '2016-09-03 18:56:56', '2016-09-03 18:56:56');
INSERT INTO `ads_photos` VALUES (10, 3, 'EuajBQmAFu3pIQkbyZgJ.jpg', 1, NULL, '2016-09-03 19:00:47', '2016-09-03 19:00:47');
INSERT INTO `ads_photos` VALUES (11, 3, 'JganwyiuLNKLvdFnL0V8.jpg', 1, NULL, '2016-09-03 19:01:35', '2016-09-03 19:01:35');
INSERT INTO `ads_photos` VALUES (12, 3, 'vpKAYT7NFi6PxXzvl7gg.jpg', 1, NULL, '2016-09-03 19:08:22', '2016-09-03 19:08:22');
INSERT INTO `ads_photos` VALUES (13, 4, 'zzqBYnScXWph5Y0L6WpH.jpg', 1, NULL, NULL, NULL);
INSERT INTO `ads_photos` VALUES (14, 4, 'QjQqRrIdEH7pS9mKPSoW.jpg', 1, NULL, NULL, NULL);
INSERT INTO `ads_photos` VALUES (15, 3, 'epWk6tdswHWOKE53rk6b.JPG', 1, NULL, '2016-09-04 13:01:47', '2016-09-04 13:01:47');
INSERT INTO `ads_photos` VALUES (16, 3, 'qLvOZEgswZ3fAW83CvuG.JPG', 1, NULL, '2016-09-04 13:04:05', '2016-09-04 13:04:05');
INSERT INTO `ads_photos` VALUES (17, 3, 'y4BCLF7DMIsqWb7RKqRF.JPG', 1, NULL, '2016-09-04 13:04:05', '2016-09-04 13:04:05');
INSERT INTO `ads_photos` VALUES (18, 5, 'WZiX7DrnoLQUh2qFdHvB.jpg', 1, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for ads_prices
-- ----------------------------
DROP TABLE IF EXISTS `ads_prices`;
CREATE TABLE `ads_prices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ads_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `minguest` int(10) unsigned NOT NULL,
  `maxguest` int(10) unsigned NOT NULL,
  `price` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ads_prices
-- ----------------------------
BEGIN;
INSERT INTO `ads_prices` VALUES (1, 3, '', 0, 100, 200.00, NULL, '2016-09-03 19:56:09', '2016-09-03 19:56:09');
INSERT INTO `ads_prices` VALUES (2, 3, '', 100, 200, 150.00, NULL, '2016-09-03 19:56:31', '2016-09-03 19:56:31');
INSERT INTO `ads_prices` VALUES (3, 4, '', 0, 100, 300.00, NULL, NULL, NULL);
INSERT INTO `ads_prices` VALUES (4, 4, '', 100, 500, 1000.00, NULL, NULL, NULL);
INSERT INTO `ads_prices` VALUES (5, 4, '', 500, 1000, 1500.00, NULL, NULL, NULL);
INSERT INTO `ads_prices` VALUES (6, 3, '', 0, 1000, 10.00, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for ads_services
-- ----------------------------
DROP TABLE IF EXISTS `ads_services`;
CREATE TABLE `ads_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ads_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ads_services
-- ----------------------------
BEGIN;
INSERT INTO `ads_services` VALUES (1, 12, 'test1', 10.00, NULL, NULL, NULL);
INSERT INTO `ads_services` VALUES (2, 12, 'test2', 20.00, NULL, NULL, NULL);
INSERT INTO `ads_services` VALUES (3, 12, 'test3', 30.00, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for blog_categories
-- ----------------------------
DROP TABLE IF EXISTS `blog_categories`;
CREATE TABLE `blog_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of blog_categories
-- ----------------------------
BEGIN;
INSERT INTO `blog_categories` VALUES (1, 'General', '2016-08-17 16:30:16', '2016-08-17 16:30:16', NULL);
INSERT INTO `blog_categories` VALUES (2, 'General', '2016-08-17 16:44:24', '2016-08-17 16:44:24', NULL);
COMMIT;

-- ----------------------------
-- Table structure for blog_comments
-- ----------------------------
DROP TABLE IF EXISTS `blog_comments`;
CREATE TABLE `blog_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for blogs
-- ----------------------------
DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `blog_category_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for bookings
-- ----------------------------
DROP TABLE IF EXISTS `bookings`;
CREATE TABLE `bookings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `book_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ads_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bookings
-- ----------------------------
BEGIN;
INSERT INTO `bookings` VALUES (1, '', '10', '', '2017-06-28', '', '2016-09-14 19:26:48', '2016-09-14 19:26:48', 14, 3, NULL, NULL);
INSERT INTO `bookings` VALUES (2, '', '10', '', '2017-06-30', '', '2016-09-14 19:45:44', '2016-09-14 19:45:44', 11, 3, NULL, NULL);
INSERT INTO `bookings` VALUES (3, '', '10', '', '2016-09-15', '', '2016-09-14 19:52:10', '2016-09-14 19:52:10', 14, 3, NULL, NULL);
INSERT INTO `bookings` VALUES (43, '', '0', '', '2017-07-8', '', '2017-07-05 09:46:59', '2017-07-05 09:46:59', 11, 3, NULL, NULL);
INSERT INTO `bookings` VALUES (42, '', '0', '', '2017-07-20', '', '2017-07-05 09:45:13', '2017-07-05 09:45:13', 11, 3, NULL, NULL);
INSERT INTO `bookings` VALUES (41, '', '0', '', '2017-07-22', '', '2017-07-05 09:40:39', '2017-07-05 09:40:39', 11, 3, NULL, NULL);
INSERT INTO `bookings` VALUES (40, '', '0', '', '2017-07-29', '', '2017-07-05 09:38:47', '2017-07-05 09:38:47', 11, 3, NULL, NULL);
INSERT INTO `bookings` VALUES (11, '', '10', '', '2016-11-15', '', '2016-11-07 17:55:54', '2016-11-07 17:55:54', 11, 3, NULL, NULL);
INSERT INTO `bookings` VALUES (39, '', '0', '', '2017-07-25', '', '2017-07-05 09:36:30', '2017-07-05 09:36:30', 11, 3, NULL, NULL);
INSERT INTO `bookings` VALUES (38, '', '0', '', '2017-07-31', '', '2017-07-05 08:54:31', '2017-07-05 08:54:31', 14, 3, NULL, NULL);
INSERT INTO `bookings` VALUES (37, '', '0', '', '', '', '2017-04-01 18:53:29', '2017-04-01 18:53:29', 14, NULL, 5, 1);
INSERT INTO `bookings` VALUES (36, '', '0', '', '', '', '2017-04-01 18:51:59', '2017-04-01 18:51:59', 14, NULL, 5, 1);
INSERT INTO `bookings` VALUES (22, '', '10', '', '2016-11-17', '', '2016-11-07 18:24:15', '2016-11-07 18:24:15', 11, 3, NULL, NULL);
INSERT INTO `bookings` VALUES (23, '', '30', '', '2016-12-29', '', '2016-12-12 09:23:14', '2016-12-12 09:23:14', 11, 3, NULL, NULL);
INSERT INTO `bookings` VALUES (24, '', '30', '', '2016-12-30', '', '2016-12-12 09:23:14', '2016-12-12 09:23:14', 11, 3, NULL, NULL);
INSERT INTO `bookings` VALUES (25, '', '30', '', '2016-12-28', '', '2016-12-12 09:23:14', '2016-12-12 09:23:14', 11, 3, NULL, NULL);
INSERT INTO `bookings` VALUES (33, '', '0', '', '2017-02-04', '', '2017-01-30 21:48:46', '2017-01-30 21:48:46', 11, 4, NULL, NULL);
INSERT INTO `bookings` VALUES (32, '', '0', '', '2017-02-02', '', '2017-01-30 19:24:39', '2017-01-30 19:24:39', 11, 2, NULL, NULL);
INSERT INTO `bookings` VALUES (31, '', '0', '', '2017-01-31', '', '2017-01-30 16:53:22', '2017-01-30 16:53:22', 11, 3, NULL, NULL);
INSERT INTO `bookings` VALUES (30, '', '0', '', '2017-02-17', '', '2017-02-17 16:51:18', '2017-01-30 16:51:18', 24, 3, NULL, NULL);
INSERT INTO `bookings` VALUES (34, '', '0', '', '', '', '2017-02-15 16:46:54', '2017-02-15 16:46:54', 14, NULL, 5, 1);
INSERT INTO `bookings` VALUES (35, '', '0', '', '', '', '2017-02-15 16:47:42', '2017-02-15 16:47:42', 14, NULL, 5, 12);
COMMIT;

-- ----------------------------
-- Table structure for counter
-- ----------------------------
DROP TABLE IF EXISTS `counter`;
CREATE TABLE `counter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `object_id` int(11) NOT NULL,
  `view_counter` int(11) NOT NULL DEFAULT '0',
  `like_counter` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `counter_class_name_index` (`class_name`),
  KEY `counter_object_id_index` (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of counter
-- ----------------------------
BEGIN;
INSERT INTO `counter` VALUES (1, 'app\\_ad', 4, 9, 1, '2016-09-26 01:56:24', '2017-11-28 11:36:55');
INSERT INTO `counter` VALUES (2, 'app\\_ad', 3, 15, 1, '2016-09-26 02:24:37', '2017-11-11 20:25:47');
INSERT INTO `counter` VALUES (3, 'app\\_ad', 8, 3, 0, '2016-12-19 08:24:54', '2017-02-17 19:58:38');
INSERT INTO `counter` VALUES (4, 'app\\_event', 8, 0, 1, '2016-12-27 08:43:11', '2016-12-27 08:43:33');
INSERT INTO `counter` VALUES (5, 'app\\_ad', 2, 4, 0, '2016-12-27 09:16:46', '2017-11-11 20:26:01');
INSERT INTO `counter` VALUES (6, 'app\\_ad', 5, 1, 0, '2016-12-27 09:16:46', '2017-02-17 18:23:32');
INSERT INTO `counter` VALUES (7, 'app\\_ad', 6, 0, 0, '2016-12-27 09:16:46', '2016-12-27 09:16:46');
INSERT INTO `counter` VALUES (8, 'app\\_ad', 9, 0, 0, '2017-01-04 08:33:00', '2017-01-04 08:33:00');
INSERT INTO `counter` VALUES (9, 'app\\_ad', 10, 2, 0, '2017-01-09 18:21:01', '2017-03-07 22:30:55');
INSERT INTO `counter` VALUES (10, 'app\\_ad', 11, 1, 0, '2017-01-09 18:21:01', '2017-02-17 19:58:38');
INSERT INTO `counter` VALUES (11, 'app\\_ad', 12, 1, 0, '2017-01-09 18:21:01', '2017-02-17 19:58:38');
INSERT INTO `counter` VALUES (12, 'app\\_event', 5, 0, 0, '2017-01-31 10:38:52', '2017-01-31 10:38:52');
INSERT INTO `counter` VALUES (13, 'app\\_event', 2, 0, 0, '2017-01-31 11:22:16', '2017-01-31 11:22:16');
INSERT INTO `counter` VALUES (14, 'app\\_event', 3, 0, 0, '2017-02-17 18:28:00', '2017-02-17 18:28:00');
INSERT INTO `counter` VALUES (15, 'app\\_event', 6, 0, 0, '2017-02-17 18:28:29', '2017-02-17 18:28:29');
INSERT INTO `counter` VALUES (16, 'app\\_event', 1, 0, 0, '2017-02-17 18:33:04', '2017-02-17 18:33:04');
INSERT INTO `counter` VALUES (17, 'app\\_event', 7, 0, 0, '2017-03-09 17:50:54', '2017-03-09 17:50:54');
COMMIT;

-- ----------------------------
-- Table structure for event_anouncements
-- ----------------------------
DROP TABLE IF EXISTS `event_anouncements`;
CREATE TABLE `event_anouncements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `event_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `post_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of event_anouncements
-- ----------------------------
BEGIN;
INSERT INTO `event_anouncements` VALUES (1, 'Welcom', '2', '3', 'Welcome Here is anouncement', '2017-05-05 00:00:00', NULL, NULL, NULL);
INSERT INTO `event_anouncements` VALUES (2, 'welcome reply', '22', '3', 'Thanx !!', '2017-05-05 21:00:00', NULL, 1, NULL);
INSERT INTO `event_anouncements` VALUES (3, 'We will be live', '2', '3', 'We will be live here. Stay Alert !!!', '2017-05-06 12:00:00', NULL, NULL, NULL);
INSERT INTO `event_anouncements` VALUES (4, '', '15', '5', 'hello', '2017-04-07 12:45:47', '2017-04-07 12:45:47', NULL, NULL);
INSERT INTO `event_anouncements` VALUES (5, '', '15', '5', 'hello', '2017-04-07 12:47:31', '2017-04-07 12:47:31', NULL, NULL);
INSERT INTO `event_anouncements` VALUES (6, '', '15', '5', 'hello', '2017-04-07 12:51:40', '2017-04-07 12:51:40', NULL, NULL);
INSERT INTO `event_anouncements` VALUES (7, '', '15', '5', 'hello', '2017-04-07 12:54:01', '2017-04-07 12:54:01', NULL, NULL);
INSERT INTO `event_anouncements` VALUES (8, '', '15', '5', 'https://www.youtube.com/watch?v=6IvtVru84IA', '2017-04-07 17:38:39', '2017-04-07 17:38:39', NULL, 'video');
INSERT INTO `event_anouncements` VALUES (18, '', '14', '5', 'good one', '2017-04-07 19:15:05', '2017-04-07 19:15:05', 8, NULL);
INSERT INTO `event_anouncements` VALUES (15, '', '14', '5', 'Nice Place', '2017-04-07 18:49:27', '2017-04-07 18:49:27', 14, NULL);
INSERT INTO `event_anouncements` VALUES (17, '', '15', '5', 'nice movie (Y)', '2017-04-07 19:12:53', '2017-04-07 19:12:53', 8, NULL);
INSERT INTO `event_anouncements` VALUES (16, '', '15', '5', 'Wow', '2017-04-07 19:05:40', '2017-04-07 19:05:40', 14, NULL);
COMMIT;

-- ----------------------------
-- Table structure for event_comments
-- ----------------------------
DROP TABLE IF EXISTS `event_comments`;
CREATE TABLE `event_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of event_comments
-- ----------------------------
BEGIN;
INSERT INTO `event_comments` VALUES (1, 5, 'kuber karki', 'kuberkarki@hotmail.com', 'http://eventdayplanner.com', 'test', '2016-08-30 18:47:08', '2016-08-30 18:47:08', NULL);
INSERT INTO `event_comments` VALUES (2, 5, 'test2', 'kuberkarki@hotmail.com', 'http://eventdayplanner.com', 'test', '2016-08-30 18:51:16', '2016-08-30 18:51:16', NULL);
INSERT INTO `event_comments` VALUES (3, 5, 'kuber karki', 'kuberkarki@hotmail.com', 'http://eventdayplanner.com', 'test1', '2016-08-30 18:52:52', '2016-08-30 18:52:52', NULL);
INSERT INTO `event_comments` VALUES (4, 6, 'kuber karki', 'kuberkarki@hotmail.com', 'http://eventdayplanner.com', 'Praesent tincidunt mattis ornare. Mauris tincidunt lorem mauris, sit amet condimentum quam venenatis nec. Mauris at vulputate nisl. Proin lacus erat, euismod a tempus eu, blandit at ipsum. Praesent maximus diam eget odio rhoncus, quis facilisis elit finibus.', '2016-08-30 19:10:37', '2016-08-30 19:10:37', NULL);
COMMIT;

-- ----------------------------
-- Table structure for events
-- ----------------------------
DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `venue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `decorator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `staff` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cake` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sound_system` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `flowers` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bridal_dress` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `video_grapher` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo_grapher` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `wedding_car` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `highlight` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `video_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sponsor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ticket_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_person` text COLLATE utf8_unicode_ci,
  `land_line` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_person_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `issponsored` tinyint(1) DEFAULT NULL,
  `enddatetime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of events
-- ----------------------------
BEGIN;
INSERT INTO `events` VALUES (1, 'EVEREST BASE CAMP TREK', 'everest-base-camp-trek', 'Lorem ipsum', '121 King Street, London 2500 UK', '2017-08-25 4:44:00', '1', '1', '1', '1', '0', '0', '0', '0', '0', '1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore', 'lfgRuzbVrvzTfc2vwqnJ.jpg', '2016-08-14 19:05:46', '2016-08-25 18:06:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', '0', NULL, NULL);
INSERT INTO `events` VALUES (2, 'test', 'test', 'public', '', '2017-09-25 4:44:00', '', '', '', '', '', '', '', '', '', '', 'lorem', '', 'SrwMUDlZOMd6InIZPYdF.jpg', '2016-08-30 13:08:40', '2016-08-30 13:08:40', 'https://www.youtube.com/watch?v=rSYg7LBQVro', 'Tuborg', 'Free', 'Kuber Karki', '01433333333', '9841334085', 'kathmandu', '2', '0', NULL, NULL);
INSERT INTO `events` VALUES (3, 'test again', 'test-again', 'public', '', '2017-09-25 5:44:00', '', '', '', '', '', '', '', '', '', '', 'lorem', '', '', '2016-08-30 13:11:40', '2016-08-30 13:11:40', 'https://www.youtube.com/watch?v=rSYg7LBQVro', 'Tuborg', 'Free', 'Kuber Karki', '01433333333', '9841334085', 'kathmandu', '2', '0', NULL, NULL);
INSERT INTO `events` VALUES (5, 'kuber karki', 'kuber-karki', 'public', 'Kirtipur, Central Region, Nepal', '2017-09-10 06:00:00', '', '', '', '', '', '', '', '', '', '', 'test', '', 'TorS0K11jzeMuFjuZmrc.jpg', '2016-08-30 15:54:48', '2016-08-30 15:54:48', 'https://www.youtube.com/watch?v=rSYg7LBQVro', 'Tuborg', 'Free', 'kuber karki', '01433333333', '9841334085', 'kathmandu', '15', '0', NULL, NULL);
INSERT INTO `events` VALUES (6, 'My First Event', 'my-first-event', 'public', 'kathmandu, Kirtipur Ring Road, Kirtipur, Central Region, Nepal', '2017-09-28 10:00:00', '', '', '', '', '', '', '', '', '', '', 'Proin pretium augue nec ante laoreet sodales. Phasellus quis enim eget libero cursus interdum lacinia ut ante. Pellentesque vel venenatis magna. Mauris id sapien lectus. Sed consectetur nibh quis nulla ullamcorper iaculis. Vestibulum cursus metus quis tellus congue accumsan. In sit amet nibh non dui viverra aliquet quis quis dolor. Morbi condimentum, ligula eget pellentesque placerat, libero odio congue odio, in bibendum nisl metus semper tortor. Proin sollicitudin laoreet bibendum. Pellentesque ex nunc, ornare nec est ut, euismod fermentum felis. Nunc non eleifend massa. Phasellus sodales ex interdum, blandit lacus dictum, varius leo. Quisque vehicula, massa tristique laoreet accumsan, metus velit maximus augue, ac luctus leo nunc non lorem. Curabitur eget lorem est. Suspendisse in lacinia nibh, sit amet rhoncus lectus. Vivamus sollicitudin leo sit amet sem ornare condimentum vel nec enim.', '', 'fiZhf32gS5f1wYXGQX2W.JPG', '2016-08-30 18:15:46', '2017-01-31 12:42:57', '', 'Tuborg', '100', 'Kuber Karki', '01433333333', '9841334085', 'kathmandu', '1', '0', 1, NULL);
INSERT INTO `events` VALUES (7, 'My Second Event', 'my-second-event', 'public', 'Ratnapark, Kathmandu, Nepal', '2017-09-22 12:00:00', '', '', '', '', '', '', '', '', '', '', 'Morbi condimentum, ligula eget pellentesque placerat, libero odio congue odio, in bibendum nisl metus semper tortor. Proin sollicitudin laoreet bibendum. Pellentesque ex nunc, ornare nec est ut, euismod fermentum felis. Nunc non eleifend massa. Phasellus sodales ex interdum, blandit lacus dictum, varius leo. Quisque vehicula, massa tristique laoreet accumsan, metus velit maximus augue, ac luctus leo nunc non lorem. Curabitur eget lorem est. Suspendisse in lacinia nibh, sit amet rhoncus lectus. Vivamus sollicitudin leo sit amet sem ornare condimentum vel nec enim.', '', 'Dl8DzfjaOdlFQ4wubw21.JPG', '2016-08-30 18:18:11', '2017-01-31 12:42:51', '', 'Tuborg', '99', 'kuber karki', '01433333333', '9841334085', 'kathmandu', '1', '0', 1, NULL);
INSERT INTO `events` VALUES (8, 'kuber karki', 'kuber-karki-1', 'public', 'Texas 6, Sugar Land, TX, United States', '2018-01-01 14:00:00', '', '', '', '', '', '', '', '', '', '', '<b>Lorem ipsum dolor</b> sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '', 'jIXaOb8Y2pRdkytUAJvW.jpg', '2016-09-01 19:38:39', '2017-03-10 19:24:45', 'https://vimeo.com/206627186', 'Excepteur sint', '200', ' Ut Enim', '01433333333', '9841334085', '', '15', '0', 1, NULL);
INSERT INTO `events` VALUES (9, 'New Event', 'new-event', 'public', 'Kirtipur, Central Development Region, Nepal', '2017-06-10 10:00:00', '', '', '', '', '', '', '', '', '', '', '', '', 'opCr5YwOtQHLxrPcmBML.jpg', '2017-05-18 12:33:18', '2017-05-25 10:25:04', '', 'Tuborg', '0', 'Kuber Karki 9841334085', '014333643', '9841334085', '', '24', '0', NULL, '2017-05-27 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for exchange
-- ----------------------------
DROP TABLE IF EXISTS `exchange`;
CREATE TABLE `exchange` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rate` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of exchange
-- ----------------------------
BEGIN;
INSERT INTO `exchange` VALUES (1, 'USD', 1.00, NULL, NULL, NULL, '$');
INSERT INTO `exchange` VALUES (2, 'EUR', 0.23, NULL, NULL, NULL, '€');
INSERT INTO `exchange` VALUES (3, 'GBP', 1.10, NULL, NULL, NULL, '£');
COMMIT;

-- ----------------------------
-- Table structure for exchanges
-- ----------------------------
DROP TABLE IF EXISTS `exchanges`;
CREATE TABLE `exchanges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of exchanges
-- ----------------------------
BEGIN;
INSERT INTO `exchanges` VALUES (1, 'USD', '1', '$', '2017-01-31 09:28:51', '2017-01-31 09:28:51');
INSERT INTO `exchanges` VALUES (2, 'EUR', '0.94', '€', '2017-01-31 09:30:01', '2017-01-31 09:32:59');
INSERT INTO `exchanges` VALUES (3, 'GBP', '0.80', '£', '2017-01-31 09:30:50', '2017-01-31 09:32:32');
COMMIT;

-- ----------------------------
-- Table structure for files
-- ----------------------------
DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `thread_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of messages
-- ----------------------------
BEGIN;
INSERT INTO `messages` VALUES (1, 2, 11, 'hello', '2016-09-07 08:09:35', '2016-09-07 08:09:35');
INSERT INTO `messages` VALUES (2, 2, 11, 'Hello Reply', '2016-09-07 09:32:10', '2016-09-07 09:32:10');
INSERT INTO `messages` VALUES (3, 3, 11, 'test', '2016-09-07 10:21:17', '2016-09-07 10:21:17');
INSERT INTO `messages` VALUES (4, 4, 1, 'What if I want to do in partnership?', '2016-09-07 10:27:26', '2016-09-07 10:27:26');
INSERT INTO `messages` VALUES (5, 4, 11, 'We are not doing partnership currently.', '2016-09-07 10:32:52', '2016-09-07 10:32:52');
INSERT INTO `messages` VALUES (6, 4, 1, 'Thankyou !!', '2016-09-07 10:36:04', '2016-09-07 10:36:04');
INSERT INTO `messages` VALUES (7, 7, 11, 'Once more try', '2016-09-07 11:14:38', '2016-09-07 11:14:38');
INSERT INTO `messages` VALUES (8, 8, 11, 'hi this test with kuber@hotmail.com<br/><a href=http://localhost:8888/eventdayplanner/public/ads-detail/panga-party-venue>Panga Party Venue</a>', '2016-09-07 11:17:18', '2016-09-07 11:17:18');
INSERT INTO `messages` VALUES (9, 9, 1, 'hi<br/><a href=http://localhost:8888/eventdayplanner/public/ads-detail/panga-party-venue>Panga Party Venue</a>', '2016-09-07 11:21:16', '2016-09-07 11:21:16');
INSERT INTO `messages` VALUES (10, 10, 1, 'Hello Again !!<br/><a href=\'http://localhost:8888/eventdayplanner/public/ads-detail/panga-party-venue\'>View Panga Party Venue</a>', '2016-09-07 11:31:35', '2016-09-07 11:31:35');
INSERT INTO `messages` VALUES (11, 11, 1, 'Hello Again !!<br/><a href=\'http://localhost:8888/eventdayplanner/public/ads-detail/panga-party-venue\'>View Panga Party Venue</a>', '2016-09-07 11:32:29', '2016-09-07 11:32:29');
INSERT INTO `messages` VALUES (12, 12, 1, 'Hello Again !!<br/><a href=\'http://localhost:8888/eventdayplanner/public/ads-detail/panga-party-venue\'>View Panga Party Venue</a>', '2016-09-07 11:33:03', '2016-09-07 11:33:03');
INSERT INTO `messages` VALUES (13, 10, 11, 'hello', '2016-09-07 11:34:13', '2016-09-07 11:34:13');
INSERT INTO `messages` VALUES (14, 13, 15, 'Hi<br/><a href=\'http://localhost:8888/eventdayplanner/public/ads-detail/new-freelancer-ad\'>View New Freelancer Ad</a>', '2016-12-27 08:27:29', '2016-12-27 08:27:29');
INSERT INTO `messages` VALUES (15, 14, 15, 'Hi again<br/><a href=\'http://localhost:8888/eventdayplanner/public/ads-detail/new-freelancer-ad\'>View New Freelancer Ad</a>', '2016-12-27 08:31:28', '2016-12-27 08:31:28');
INSERT INTO `messages` VALUES (16, 15, 15, 'Hi again<br/><a href=\'http://localhost:8888/eventdayplanner/public/event/kuber-karki-1\'>View kuber karki</a>', '2016-12-27 08:33:00', '2016-12-27 08:33:00');
INSERT INTO `messages` VALUES (17, 16, 15, 'Hi again<br/><a href=\'http://localhost:8888/eventdayplanner/public/event/kuber-karki-1\'>View kuber karki</a>', '2016-12-27 08:33:46', '2016-12-27 08:33:46');
INSERT INTO `messages` VALUES (18, 17, 15, 'Hi again !!!!!<br/><a href=\'http://localhost:8888/eventdayplanner/public/event/kuber-karki-1\'>View kuber karki</a>', '2016-12-27 08:34:48', '2016-12-27 08:34:48');
INSERT INTO `messages` VALUES (19, 16, 15, 'Thankyou for your message', '2016-12-27 08:36:17', '2016-12-27 08:36:17');
INSERT INTO `messages` VALUES (20, 18, 14, 'Hello this is query for this event.<br/><a href=\'http://localhost:8888/eventdayplanner/public/event/kuber-karki-1\'>View kuber karki</a>', '2017-02-15 16:58:36', '2017-02-15 16:58:36');
INSERT INTO `messages` VALUES (21, 18, 15, 'oh wow thanx for your interest. Your query is very useful and hope this answers your query. Feel free to send message for more details.', '2017-02-15 17:00:45', '2017-02-15 17:00:45');
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES ('2014_07_02_230147_migration_cartalyst_sentinel', 1);
INSERT INTO `migrations` VALUES ('2014_10_04_174350_soft_delete_users', 1);
INSERT INTO `migrations` VALUES ('2014_12_10_011106_add_fields_to_user_table', 1);
INSERT INTO `migrations` VALUES ('2015_08_09_200015_create_blog_module_table', 1);
INSERT INTO `migrations` VALUES ('2015_08_11_064636_add_slug_to_blogs_table', 1);
INSERT INTO `migrations` VALUES ('2015_08_19_073929_create_taggable_table', 1);
INSERT INTO `migrations` VALUES ('2015_11_10_140011_create_files_table', 1);
INSERT INTO `migrations` VALUES ('2016_01_02_062647_create_tasks_table', 1);
INSERT INTO `migrations` VALUES ('2016_08_14_172920_create_events_table', 2);
INSERT INTO `migrations` VALUES ('2016_08_14_182956_create_events_table', 3);
INSERT INTO `migrations` VALUES ('2016_08_16_121840_create_news_module_table', 4);
INSERT INTO `migrations` VALUES ('2016_08_17_174117_add_slug_to_news_table', 5);
INSERT INTO `migrations` VALUES ('2016_08_25_172602_AddSlugToEventsTable', 6);
INSERT INTO `migrations` VALUES ('2016_08_30_090617_addtypeToUserTable', 7);
INSERT INTO `migrations` VALUES ('2016_08_30_122844_addFieldsToEventsTable', 8);
INSERT INTO `migrations` VALUES ('2016_08_30_130943_addFieldsuserAndPubilishToEventsTable', 9);
INSERT INTO `migrations` VALUES ('2016_08_30_170409_create_ads_table', 10);
INSERT INTO `migrations` VALUES ('2016_08_30_170709_create_resources_table', 11);
INSERT INTO `migrations` VALUES ('2016_08_30_171502_create_pages_table', 12);
INSERT INTO `migrations` VALUES ('2016_08_30_175626_create_bookings_table', 13);
INSERT INTO `migrations` VALUES ('2016_08_30_182712_createEventCommentTable', 14);
INSERT INTO `migrations` VALUES ('2016_09_01_170204_addExtraFieldsTousersTable', 15);
INSERT INTO `migrations` VALUES ('2016_09_01_184618_addDurationTousersTable', 16);
INSERT INTO `migrations` VALUES ('2016_09_02_172822_addFeildsToAds', 17);
INSERT INTO `migrations` VALUES ('2016_09_02_173331_create_ads_categories_table', 17);
INSERT INTO `migrations` VALUES ('2016_09_03_155601_createAdsPricesTable', 18);
INSERT INTO `migrations` VALUES ('2016_09_03_160738_createAdsPhotosTable', 19);
INSERT INTO `migrations` VALUES ('2016_09_04_152003_AddSlugToAdsTable', 20);
INSERT INTO `migrations` VALUES ('2016_09_04_152251_AddSlugToAds_categoryTable', 21);
INSERT INTO `migrations` VALUES ('2016_09_04_171846_create_ratings_table', 22);
INSERT INTO `migrations` VALUES ('2016_09_05_174941_create_reviews_table', 23);
INSERT INTO `migrations` VALUES ('2014_10_28_175635_create_threads_table', 24);
INSERT INTO `migrations` VALUES ('2014_10_28_175710_create_messages_table', 24);
INSERT INTO `migrations` VALUES ('2014_10_28_180224_create_participants_table', 24);
INSERT INTO `migrations` VALUES ('2014_11_03_154831_add_soft_deletes_to_participants_table', 24);
INSERT INTO `migrations` VALUES ('2014_12_04_124531_add_softdeletes_to_threads_table', 24);
INSERT INTO `migrations` VALUES ('2016_09_07_090226_addNameToUsers', 25);
INSERT INTO `migrations` VALUES ('2015_02_15_060856_create_counter_table', 26);
INSERT INTO `migrations` VALUES ('2015_02_15_080328_create_user_counter_table', 26);
INSERT INTO `migrations` VALUES ('2016_09_14_191224_addFieldsTobookings', 27);
INSERT INTO `migrations` VALUES ('2016_07_06_224323_create_payum_gateway_configs_table', 28);
INSERT INTO `migrations` VALUES ('2016_07_06_224403_create_payum_payments_table', 28);
INSERT INTO `migrations` VALUES ('2016_07_06_224415_create_payum_tokens_table', 28);
INSERT INTO `migrations` VALUES ('2016_10_07_115301_create_payments_table', 29);
INSERT INTO `migrations` VALUES ('2016_12_19_041415_add_portoflio_to_users_table', 30);
INSERT INTO `migrations` VALUES ('2016_12_20_045712_create_oauth_identities_table', 31);
INSERT INTO `migrations` VALUES ('2017_01_09_175136_create_ads_services_table', 32);
INSERT INTO `migrations` VALUES ('2017_01_09_175549_add_time_to_ads_table', 33);
INSERT INTO `migrations` VALUES ('2017_01_30_172907_create_exchange_table', 34);
INSERT INTO `migrations` VALUES ('2017_01_30_175523_add_symbol_to_exchange_table', 35);
INSERT INTO `migrations` VALUES ('2017_01_31_091814_create_exchanges_table', 36);
INSERT INTO `migrations` VALUES ('2017_01_31_114039_add_issponsored_to_events_table', 37);
INSERT INTO `migrations` VALUES ('2017_02_15_164208_add_event_id_and_quantity_to_bookings_table', 38);
INSERT INTO `migrations` VALUES ('2017_02_15_180844_add_isTopNews_to_news_table', 39);
INSERT INTO `migrations` VALUES ('2017_03_07_091935_create_testimonials_table', 40);
INSERT INTO `migrations` VALUES ('2017_04_06_102144_create_event_anouncements_table', 41);
INSERT INTO `migrations` VALUES ('2017_04_06_182216_add_parent_id_to_event_announcements_table', 42);
INSERT INTO `migrations` VALUES ('2017_04_07_130141_add_post_type_to_event_announcements_table', 43);
INSERT INTO `migrations` VALUES ('2017_05_25_101443_add_enddatetime_to_events_table', 44);
INSERT INTO `migrations` VALUES ('2017_07_06_093236_create_withdrawls_table', 45);
COMMIT;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `news_category_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `isTopNews` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of news
-- ----------------------------
BEGIN;
INSERT INTO `news` VALUES (1, 1, 1, 'Lorem ipsum dolor', 'lorem', 'Lorem ipsum dolor', NULL, 1, '2016-08-17 16:51:43', '2017-02-15 18:25:19', NULL, 1);
INSERT INTO `news` VALUES (2, 1, 1, 'Lorem ipsum dolor', 'lorem1', 'Lorem ipsum dolor', NULL, 8, '2016-08-17 16:53:17', '2017-02-17 18:28:22', NULL, NULL);
INSERT INTO `news` VALUES (3, 1, 1, 'test', 'test', 'test', NULL, 2, '2016-08-17 17:55:21', '2016-08-25 17:59:16', NULL, NULL);
INSERT INTO `news` VALUES (4, 1, 1, 'test1', 'test1', 'test', NULL, 5, '2016-08-17 18:01:18', '2016-08-30 16:40:31', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for news_categories
-- ----------------------------
DROP TABLE IF EXISTS `news_categories`;
CREATE TABLE `news_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of news_categories
-- ----------------------------
BEGIN;
INSERT INTO `news_categories` VALUES (1, 'General', '2016-08-17 16:46:55', '2016-08-17 16:46:55', NULL);
COMMIT;

-- ----------------------------
-- Table structure for news_comments
-- ----------------------------
DROP TABLE IF EXISTS `news_comments`;
CREATE TABLE `news_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of news_comments
-- ----------------------------
BEGIN;
INSERT INTO `news_comments` VALUES (1, 1, 'Kuber Karki', 'kuberkarki@hotmail.com', 'http://eventdayplanner.com', 'Hi this is test comment', '2016-08-17 16:57:25', '2016-08-17 16:57:25', NULL);
COMMIT;

-- ----------------------------
-- Table structure for oauth_identities
-- ----------------------------
DROP TABLE IF EXISTS `oauth_identities`;
CREATE TABLE `oauth_identities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `provider_user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of oauth_identities
-- ----------------------------
BEGIN;
INSERT INTO `oauth_identities` VALUES (1, 17, '111218350273513746003', 'google', 'ya29.CjW6A_AErr8U-8Ey9U2oDdtAH-vAPgrbLqlIRBHKX9VOI0Z89V6H5stYu2ovcZZ1uWO-vaq06g', '2016-12-20 10:05:52', '2016-12-20 13:12:26');
COMMIT;

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
BEGIN;
INSERT INTO `pages` VALUES (1, 'Country', 'country', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dignissim, justo non laoreet tincidunt, sapien arcu auctor lorem, et congue dolor urna quis augue. Cras faucibus est lacinia arcu ultricies egestas. Donec egestas risus maximus tristique varius. Nam sit amet tortor vel magna ullamcorper semper ac vitae sem. Ut mattis risus ipsum, at convallis ante semper molestie. Nullam pulvinar in mauris sed rhoncus. Praesent facilisis, dolor fringilla placerat sodales, ex elit hendrerit mauris, eu euismod neque justo vitae erat. Praesent et venenatis nisi. Praesent tincidunt mattis ornare. Mauris tincidunt lorem mauris, sit amet condimentum quam venenatis nec. Mauris at vulputate nisl. Proin lacus erat, euismod a tempus eu, blandit at ipsum. Praesent maximus diam eget odio rhoncus, quis facilisis elit finibus.\r\n\r\nProin pretium augue nec ante laoreet sodales. Phasellus quis enim eget libero cursus interdum lacinia ut ante. Pellentesque vel venenatis magna. Mauris id sapien lectus. Sed consectetur nibh quis nulla ullamcorper iaculis. Vestibulum cursus metus quis tellus congue accumsan. In sit amet nibh non dui viverra aliquet quis quis dolor. Morbi condimentum, ligula eget pellentesque placerat, libero odio congue odio, in bibendum nisl metus semper tortor. Proin sollicitudin laoreet bibendum. Pellentesque ex nunc, ornare nec est ut, euismod fermentum felis. Nunc non eleifend massa. Phasellus sodales ex interdum, blandit lacus dictum, varius leo. Quisque vehicula, massa tristique laoreet accumsan, metus velit maximus augue, ac luctus leo nunc non lorem. Curabitur eget lorem est. Suspendisse in lacinia nibh, sit amet rhoncus lectus. Vivamus sollicitudin leo sit amet sem ornare condimentum vel nec enim.\r\n\r\nVestibulum sed odio odio. Vestibulum non elit nec tortor iaculis aliquam nec quis lectus. Duis molestie, orci vitae vulputate vulputate, risus nulla tincidunt arcu, sed tempor odio lacus et ligula. Sed ornare quam non ligula varius, eget maximus metus aliquet. Ut et pharetra neque. Vivamus maximus vulputate purus. In leo ante, fringilla et ultricies non, imperdiet in magna.\r\n\r\nIn hac habitasse platea dictumst. Nunc vehicula blandit nisi a varius. Etiam at ligula viverra, vulputate neque ut, commodo augue. Maecenas rhoncus facilisis cursus. Aenean purus ante, vehicula a orci quis, condimentum feugiat nulla. Pellentesque auctor, mauris dignissim ultricies hendrerit, eros sapien hendrerit enim, eget eleifend metus nunc sed libero. Vivamus consectetur rutrum dui, eget tristique eros egestas eu. Nunc tincidunt vitae nulla nec sagittis. Aenean ut ex mattis, sodales turpis vel, molestie orci.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum erat eget mollis hendrerit. Praesent id mi eu justo dignissim auctor. Nulla sed tincidunt purus, vestibulum congue massa. Proin urna orci, vestibulum sed nisi in, eleifend laoreet lorem. Proin sit amet placerat purus. Ut vel ex mi. Nam at vehicula metus, sit amet elementum sem. Vivamus ipsum magna, gravida eu nulla a, tempus euismod quam. Vestibulum vel ultrices leo. Etiam id urna molestie, auctor purus ac, facilisis metus. Cras sed tincidunt quam, vitae volutpat metus. Etiam mollis, libero in sodales gravida, tellus turpis accumsan nibh, eu auctor ligula nulla eget nisl. Morbi id tellus nec ex semper vehicula vitae a mi. Aenean eu varius lorem. Fusce tortor ipsum, ultricies ac bibendum quis, suscipit sit amet nulla.', 'Main Menu', '2016-08-30 17:17:53', '2016-08-30 17:17:53');
INSERT INTO `pages` VALUES (5, 'Home', 'home', '{link: \'home\'}', 'quick links', '2017-03-07 15:41:20', '2017-03-07 15:59:47');
INSERT INTO `pages` VALUES (6, 'About Us', 'about-us', 'About Us', 'quick links', '2017-03-07 16:23:47', '2017-03-07 16:23:47');
INSERT INTO `pages` VALUES (7, 'Services', 'services', 'Services', 'quick links', '2017-03-07 16:24:08', '2017-03-07 16:24:08');
INSERT INTO `pages` VALUES (8, 'Booking Online', 'booking-online', 'Booking Online', 'quick links', '2017-03-07 16:24:40', '2017-03-07 16:24:40');
INSERT INTO `pages` VALUES (9, 'Contact us', 'contact-us', 'Contact Us', 'quick links', '2017-03-07 16:25:06', '2017-03-07 16:25:06');
INSERT INTO `pages` VALUES (3, 'Birthdays Party', 'birthdays-party', 'test', 'Our Expert Services', '2016-08-30 17:46:17', '2016-08-30 17:46:17');
INSERT INTO `pages` VALUES (4, 'Wedding Arrangement', 'wedding-arrangement', 'test', 'Our Expert Services', '2016-08-30 17:46:44', '2016-08-30 17:46:44');
COMMIT;

-- ----------------------------
-- Table structure for participants
-- ----------------------------
DROP TABLE IF EXISTS `participants`;
CREATE TABLE `participants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `thread_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `last_read` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of participants
-- ----------------------------
BEGIN;
INSERT INTO `participants` VALUES (1, 2, 11, '2016-09-07 11:30:19', '2016-09-07 08:09:35', '2016-09-07 11:30:19', NULL);
INSERT INTO `participants` VALUES (2, 2, 1, '2016-09-07 10:35:32', '2016-09-07 08:09:36', '2016-09-07 10:35:32', NULL);
INSERT INTO `participants` VALUES (3, 2, 2, NULL, '2016-09-07 09:32:10', '2016-09-07 09:32:10', NULL);
INSERT INTO `participants` VALUES (4, 3, 11, '2016-09-07 10:21:27', '2016-09-07 10:21:17', '2016-09-07 10:21:27', NULL);
INSERT INTO `participants` VALUES (5, 4, 1, '2016-09-07 10:42:35', '2016-09-07 10:27:26', '2016-09-07 10:42:35', NULL);
INSERT INTO `participants` VALUES (6, 4, 11, '2016-09-07 10:59:51', '2016-09-07 10:27:26', '2016-09-07 10:59:51', NULL);
INSERT INTO `participants` VALUES (7, 7, 11, '2016-09-07 11:14:38', '2016-09-07 11:14:38', '2016-09-07 11:14:38', NULL);
INSERT INTO `participants` VALUES (8, 8, 11, '2016-09-07 11:17:18', '2016-09-07 11:17:18', '2016-09-07 11:17:18', NULL);
INSERT INTO `participants` VALUES (9, 9, 1, '2016-09-07 11:24:44', '2016-09-07 11:21:16', '2016-09-07 11:24:44', NULL);
INSERT INTO `participants` VALUES (10, 9, 11, '2017-07-05 09:25:32', '2016-09-07 11:21:16', '2017-07-05 09:25:32', NULL);
INSERT INTO `participants` VALUES (11, 10, 1, '2016-09-07 17:13:08', '2016-09-07 11:31:35', '2016-09-07 17:13:08', NULL);
INSERT INTO `participants` VALUES (12, 10, 11, '2016-09-07 11:34:21', '2016-09-07 11:31:35', '2016-09-07 11:34:21', NULL);
INSERT INTO `participants` VALUES (13, 11, 1, '2016-09-07 11:32:29', '2016-09-07 11:32:29', '2016-09-07 11:32:29', NULL);
INSERT INTO `participants` VALUES (14, 11, 11, '2016-09-07 11:34:33', '2016-09-07 11:32:29', '2016-09-07 11:34:33', NULL);
INSERT INTO `participants` VALUES (15, 12, 1, '2016-09-07 11:33:03', '2016-09-07 11:33:03', '2016-09-07 11:33:03', NULL);
INSERT INTO `participants` VALUES (16, 12, 11, '2017-01-30 10:07:44', '2016-09-07 11:33:03', '2017-01-30 10:07:44', NULL);
INSERT INTO `participants` VALUES (17, 13, 15, '2016-12-27 08:27:29', '2016-12-27 08:27:29', '2016-12-27 08:27:29', NULL);
INSERT INTO `participants` VALUES (18, 13, 14, NULL, '2016-12-27 08:27:29', '2016-12-27 08:27:29', NULL);
INSERT INTO `participants` VALUES (19, 14, 15, '2016-12-27 08:31:28', '2016-12-27 08:31:28', '2016-12-27 08:31:28', NULL);
INSERT INTO `participants` VALUES (20, 14, 14, '2017-01-04 08:33:54', '2016-12-27 08:31:28', '2017-01-04 08:33:54', NULL);
INSERT INTO `participants` VALUES (21, 15, 15, '2016-12-27 08:36:42', '2016-12-27 08:33:00', '2016-12-27 08:36:42', NULL);
INSERT INTO `participants` VALUES (22, 16, 15, '2016-12-27 08:39:29', '2016-12-27 08:33:46', '2016-12-27 08:39:29', NULL);
INSERT INTO `participants` VALUES (23, 17, 15, '2016-12-27 08:39:49', '2016-12-27 08:34:48', '2016-12-27 08:39:49', NULL);
INSERT INTO `participants` VALUES (24, 18, 14, '2017-02-15 17:01:52', '2017-02-15 16:58:36', '2017-02-15 17:01:52', NULL);
INSERT INTO `participants` VALUES (25, 18, 15, '2017-02-15 17:00:48', '2017-02-15 16:58:36', '2017-02-15 17:00:48', NULL);
COMMIT;

-- ----------------------------
-- Table structure for payments
-- ----------------------------
DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TOKEN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SUCCESSPAGEREDIRECTREQUESTED` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CORRELATIONID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACK` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VERSION` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BUILD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `INSURANCEOPTIONSELECTED` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SHIPPINGOPTIONISDEFAULT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PAYMENTINFO_0_TRANSACTIONID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PAYMENTINFO_0_TRANSACTIONTYPE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PAYMENTINFO_0_PAYMENTTYPE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PAYMENTINFO_0_ORDERTIME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PAYMENTINFO_0_AMT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PAYMENTINFO_0_FEEAMT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PAYMENTINFO_0_TAXAMT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PAYMENTINFO_0_CURRENCYCODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PAYMENTINFO_0_PAYMENTSTATUS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PAYMENTINFO_0_PENDINGREASON` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PAYMENTINFO_0_REASONCODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PAYMENTINFO_0_PROTECTIONELIGIBILITY` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PAYMENTINFO_0_PROTECTIONELIGIBILITYTYPE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PAYMENTINFO_0_SECUREMERCHANTACCOUNTID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PAYMENTINFO_0_ERRORCODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PAYMENTINFO_0_ACK` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `receiver` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payum_payments_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `booking_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of payments
-- ----------------------------
BEGIN;
INSERT INTO `payments` VALUES (1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '11', '11', 'ads', '3', '', '10', '2016-11-07 17:45:03', '2016-11-07 17:45:03');
INSERT INTO `payments` VALUES (2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '11', '11', 'ads', '3', '', '11', '2016-11-07 17:55:54', '2016-11-07 17:55:54');
INSERT INTO `payments` VALUES (3, 'EC-44S68801B8685631X', 'false', '2016-11-07T18:24:13Z', '8c150a13efbff', 'Success', '119.0', '26755900', '', '', '08S87553A18725540', 'expresscheckout', 'instant', '2016-11-07T18:24:12Z', '10.00', '0.59', '0.00', 'USD', 'Completed', 'None', 'None', 'Eligible', 'ItemNotReceivedEligible,UnauthorizedPaymentEligible', '5YDYYM3V6SR6Y', '0', 'Success', '11', '11', 'ads', '3', '', '22', '2016-11-07 18:24:15', '2016-11-07 18:24:15');
INSERT INTO `payments` VALUES (4, 'EC-82005224XM150300Y', 'false', '2016-12-12T09:23:12Z', 'fa0f0acc56d11', 'Success', '119.0', '000000', '', '', '4WT90006A9719811S', 'expresscheckout', 'instant', '2016-12-12T09:23:11Z', '30.00', '1.17', '0.00', 'USD', 'Completed', 'None', 'None', 'Eligible', 'ItemNotReceivedEligible,UnauthorizedPaymentEligible', '5YDYYM3V6SR6Y', '0', 'Success', '11', '11', 'ads', '3', '', '25', '2016-12-12 09:23:14', '2016-12-12 09:23:14');
COMMIT;

-- ----------------------------
-- Table structure for payum_gateway_configs
-- ----------------------------
DROP TABLE IF EXISTS `payum_gateway_configs`;
CREATE TABLE `payum_gateway_configs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `factoryName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gatewayName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for payum_payments
-- ----------------------------
DROP TABLE IF EXISTS `payum_payments`;
CREATE TABLE `payum_payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `details` text COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `clientId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `clientEmail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `totalAmount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `currencyCode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of payum_payments
-- ----------------------------
BEGIN;
INSERT INTO `payum_payments` VALUES (1, '{\"Items\":[{\"Name\":\"Booking\",\"Price\":2000,\"Currency\":\"$\",\"Quantity\":1,\"URL\":\"dedwed\"}]}', '57df32eac1593', 'A description', 'anId', 'foo@example.com', '2000', 'TWD', NULL, '2016-09-19 00:35:54', '2016-09-19 00:35:54');
INSERT INTO `payum_payments` VALUES (2, '{\"Items\":[{\"Name\":\"Booking\",\"Price\":2000,\"Currency\":\"$\",\"Quantity\":1,\"URL\":\"dedwed\"}]}', '57df3b829b787', 'A description', 'anId', 'foo@example.com', '2000', 'TWD', NULL, '2016-09-19 01:12:34', '2016-09-19 01:12:34');
INSERT INTO `payum_payments` VALUES (3, '{\"Items\":[{\"Name\":\"Booking\",\"Price\":2000,\"Currency\":\"$\",\"Quantity\":1,\"URL\":\"dedwed\"}]}', '57df3be5e2ed5', 'A description', 'anId', 'foo@example.com', '2000', 'TWD', NULL, '2016-09-19 01:14:14', '2016-09-19 01:14:14');
INSERT INTO `payum_payments` VALUES (4, '{\"Items\":[{\"Name\":\"Booking\",\"Price\":2000,\"Currency\":\"$\",\"Quantity\":1,\"URL\":\"dedwed\"}]}', '57df3ca9a80f9', 'A description', 'anId', 'foo@example.com', '2000', 'TWD', NULL, '2016-09-19 01:17:29', '2016-09-19 01:17:29');
INSERT INTO `payum_payments` VALUES (5, '{\"Items\":[{\"Name\":\"Booking\",\"Price\":2000,\"Currency\":\"$\",\"Quantity\":1,\"URL\":\"dedwed\"}]}', '57df3d266e90e', 'A description', '', '', '2000', 'TWD', NULL, '2016-09-19 01:19:34', '2016-09-19 01:19:34');
INSERT INTO `payum_payments` VALUES (6, '{\"Items\":{\"0\":{\"Name\":\"Booking\",\"Price\":2000,\"Currency\":\"$\",\"Quantity\":1,\"URL\":\"dedwed\"},\"RETURNURL\":\"http:\\/\\/return.url\",\"CANCELURL\":\"http:\\/\\/cancel.url\"},\"INVNUM\":\"57df4d7daec43\",\"PAYMENTREQUEST_0_CURRENCYCODE\":\"USD\",\"PAYMENTREQUEST_0_AMT\":20,\"PAYMENTREQUEST_0_DESC\":\"A description\",\"PAYMENTREQUEST_0_PAYMENTACTION\":\"Sale\",\"AUTHORIZE_TOKEN_USERACTION\":\"commit\",\"RETURNURL\":\"http:\\/\\/localhost:8888\\/eventdayplanner\\/public\\/payment\\/capture\\/IAgOd17kKk5fg3bjjTblCZGBmkixDTzOESXG3D8ZIFk\",\"CANCELURL\":\"http:\\/\\/localhost:8888\\/eventdayplanner\\/public\\/payment\\/capture\\/IAgOd17kKk5fg3bjjTblCZGBmkixDTzOESXG3D8ZIFk?cancelled=1\",\"PAYMENTREQUEST_0_NOTIFYURL\":\"http:\\/\\/localhost:8888\\/eventdayplanner\\/public\\/payment\\/notify\\/iD2gh7Y9VZL8Urgsgrf825167_kKKxE59wmTSHfzNMg\"}', '57df4d7daec43', 'A description', '1', 'foo@example.com', '2000', 'USD', NULL, '2016-09-19 02:29:17', '2016-09-19 02:29:35');
INSERT INTO `payum_payments` VALUES (7, '{\"Items\":{\"0\":{\"Name\":\"Booking\",\"Price\":2000,\"Currency\":\"$\",\"Quantity\":1,\"URL\":\"dedwed\"},\"RETURNURL\":\"http:\\/\\/return.url\",\"CANCELURL\":\"http:\\/\\/cancel.url\"}}', '57df4e385cb00', 'A description', '1', 'foo@example.com', '2000', 'USD', NULL, '2016-09-19 02:32:24', '2016-09-19 02:32:24');
INSERT INTO `payum_payments` VALUES (8, '{\"Items\":{\"0\":{\"Name\":\"Booking\",\"Price\":2000,\"Currency\":\"$\",\"Quantity\":1,\"URL\":\"dedwed\"},\"RETURNURL\":\"http:\\/\\/return.url\",\"CANCELURL\":\"http:\\/\\/cancel.url\"},\"INVNUM\":\"57df4e385cafe\",\"PAYMENTREQUEST_0_CURRENCYCODE\":\"USD\",\"PAYMENTREQUEST_0_AMT\":20,\"PAYMENTREQUEST_0_DESC\":\"A description\",\"PAYMENTREQUEST_0_PAYMENTACTION\":\"Sale\",\"AUTHORIZE_TOKEN_USERACTION\":\"commit\",\"RETURNURL\":\"http:\\/\\/localhost:8888\\/eventdayplanner\\/public\\/payment\\/capture\\/pX9srsqugAOWkI9MLMuvStPxOvmo3u4w_Fy1iPghBW0\",\"CANCELURL\":\"http:\\/\\/localhost:8888\\/eventdayplanner\\/public\\/payment\\/capture\\/pX9srsqugAOWkI9MLMuvStPxOvmo3u4w_Fy1iPghBW0?cancelled=1\",\"PAYMENTREQUEST_0_NOTIFYURL\":\"http:\\/\\/localhost:8888\\/eventdayplanner\\/public\\/payment\\/notify\\/JyVKX0IskyHCxR0a4ryVH9mZMsT3Cb6JKiOXRzeuL80\"}', '57df4e385cafe', 'A description', '1', 'foo@example.com', '2000', 'USD', NULL, '2016-09-19 02:32:24', '2016-09-19 02:32:31');
INSERT INTO `payum_payments` VALUES (9, '{\"Items\":{\"0\":{\"Name\":\"Booking\",\"Price\":2000,\"Currency\":\"$\",\"Quantity\":1,\"URL\":\"dedwed\"},\"RETURNURL\":\"http:\\/\\/return.url\",\"CANCELURL\":\"http:\\/\\/cancel.url\"},\"INVNUM\":\"57df560172026\",\"PAYMENTREQUEST_0_CURRENCYCODE\":\"USD\",\"PAYMENTREQUEST_0_AMT\":20,\"PAYMENTREQUEST_0_DESC\":\"A description\",\"PAYMENTREQUEST_0_PAYMENTACTION\":\"Sale\",\"AUTHORIZE_TOKEN_USERACTION\":\"commit\",\"RETURNURL\":\"http:\\/\\/localhost:8888\\/eventdayplanner\\/public\\/payment\\/capture\\/H_JAiIefdHcj4scMZaMFNzZs5pqRTLpx8ZeLQ7Hwen0\",\"CANCELURL\":\"http:\\/\\/localhost:8888\\/eventdayplanner\\/public\\/payment\\/capture\\/H_JAiIefdHcj4scMZaMFNzZs5pqRTLpx8ZeLQ7Hwen0?cancelled=1\",\"PAYMENTREQUEST_0_NOTIFYURL\":\"http:\\/\\/localhost:8888\\/eventdayplanner\\/public\\/payment\\/notify\\/Elt9IXEbJ2ajYsVi01GSBwDCs_b0X9OhnNfPa1iDbkE\"}', '57df560172026', 'A description', '1', 'foo@example.com', '2000', 'USD', NULL, '2016-09-19 03:05:37', '2016-09-19 03:05:40');
INSERT INTO `payum_payments` VALUES (10, '{\"Items\":{\"0\":{\"Name\":\"Booking\",\"Price\":2000,\"Currency\":\"$\",\"Quantity\":1,\"URL\":\"dedwed\"},\"RETURNURL\":\"http:\\/\\/return.url\",\"CANCELURL\":\"http:\\/\\/cancel.url\"}}', '57df57ddd1baa', 'A description', '1', 'foo@example.com', '2000', 'USD', NULL, '2016-09-19 03:13:33', '2016-09-19 03:13:33');
INSERT INTO `payum_payments` VALUES (11, '{\"Items\":{\"0\":{\"Name\":\"Booking\",\"Price\":2000,\"Currency\":\"$\",\"Quantity\":1,\"URL\":\"dedwed\"},\"RETURNURL\":\"http:\\/\\/return.url\",\"CANCELURL\":\"http:\\/\\/cancel.url\"},\"INVNUM\":\"57df57ddd1ba9\",\"PAYMENTREQUEST_0_CURRENCYCODE\":\"USD\",\"PAYMENTREQUEST_0_AMT\":20,\"PAYMENTREQUEST_0_DESC\":\"A description\",\"PAYMENTREQUEST_0_PAYMENTACTION\":\"Sale\",\"AUTHORIZE_TOKEN_USERACTION\":\"commit\",\"RETURNURL\":\"http:\\/\\/localhost:8888\\/eventdayplanner\\/public\\/payment\\/capture\\/HZC2avy4qcF6SdaGUSHouRRA3KhaNdMFegKIFfxtDKs\",\"CANCELURL\":\"http:\\/\\/localhost:8888\\/eventdayplanner\\/public\\/payment\\/capture\\/HZC2avy4qcF6SdaGUSHouRRA3KhaNdMFegKIFfxtDKs?cancelled=1\",\"PAYMENTREQUEST_0_NOTIFYURL\":\"http:\\/\\/localhost:8888\\/eventdayplanner\\/public\\/payment\\/notify\\/PEGRlfWwbCUvDeuu6CnZGFfCiUXrS-KzlezAtA_yQs4\"}', '57df57ddd1ba9', 'A description', '1', 'foo@example.com', '2000', 'USD', NULL, '2016-09-19 03:13:33', '2016-09-19 03:13:37');
INSERT INTO `payum_payments` VALUES (12, '{\"Items\":{\"0\":{\"Name\":\"Booking\",\"Price\":2000,\"Currency\":\"$\",\"Quantity\":1,\"URL\":\"dedwed\"},\"RETURNURL\":\"http:\\/\\/return.url\",\"CANCELURL\":\"http:\\/\\/cancel.url\"},\"INVNUM\":\"57df5a42b6d2b\",\"PAYMENTREQUEST_0_CURRENCYCODE\":\"USD\",\"PAYMENTREQUEST_0_AMT\":20,\"PAYMENTREQUEST_0_DESC\":\"A description\",\"PAYMENTREQUEST_0_PAYMENTACTION\":\"Sale\",\"AUTHORIZE_TOKEN_USERACTION\":\"commit\",\"RETURNURL\":\"http:\\/\\/localhost:8888\\/eventdayplanner\\/public\\/payment\\/capture\\/fck-8dyVmEY9Gkx7kHIHn5K-HvYJAMZIt_6mGplqb50\",\"CANCELURL\":\"http:\\/\\/localhost:8888\\/eventdayplanner\\/public\\/payment\\/capture\\/fck-8dyVmEY9Gkx7kHIHn5K-HvYJAMZIt_6mGplqb50?cancelled=1\",\"PAYMENTREQUEST_0_NOTIFYURL\":\"http:\\/\\/localhost:8888\\/eventdayplanner\\/public\\/payment\\/notify\\/UOFyc6gdFAzBaMgi-IzPF5McgL207dM1gOtv8OtyLPQ\"}', '57df5a42b6d2b', 'A description', '1', 'foo@example.com', '2000', 'USD', NULL, '2016-09-19 03:23:46', '2016-09-19 03:23:53');
INSERT INTO `payum_payments` VALUES (13, '{\"BRANDNAME\":\"My Company\",\"LOGOIMG\":\"https:\\/\\/profugo.org\\/wp-content\\/uploads\\/2013\\/08\\/logo-190x60.png\",\"SOLUTIONTYPE\":\"Mark\",\"LANDINGPAGE\":\"Login\",\"CARTBORDERCOLOR\":\"009688\",\"CHANNELTYPE\":\"Merchant\",\"L_BILLINGTYPE0\":\"0\",\"L_BILLINGAGREEMENTDESCRIPTION0\":\"1 Week Free Trial then PREMIUM Membership \\u20b1500 PHP Per Month\",\"PAYMENTREQUEST_0_AMT\":0,\"NOSHIPPING\":1,\"INVNUM\":\"57df5b5093bd0\",\"PAYMENTREQUEST_0_CURRENCYCODE\":\"PHP\",\"PAYMENTREQUEST_0_DESC\":\"\",\"PAYMENTREQUEST_0_PAYMENTACTION\":\"Sale\",\"AUTHORIZE_TOKEN_USERACTION\":\"commit\",\"RETURNURL\":\"http:\\/\\/localhost:8888\\/eventdayplanner\\/public\\/payment\\/capture\\/vvE9-HVB1YdCNrYeIbb1_8IXPtihSw1Y1gOU4LzOUFk\",\"CANCELURL\":\"http:\\/\\/localhost:8888\\/eventdayplanner\\/public\\/payment\\/capture\\/vvE9-HVB1YdCNrYeIbb1_8IXPtihSw1Y1gOU4LzOUFk?cancelled=1\",\"PAYMENTREQUEST_0_NOTIFYURL\":\"http:\\/\\/localhost:8888\\/eventdayplanner\\/public\\/payment\\/notify\\/otHPjhgJZrMN2AxdMV6B8E-1VMCOF_VtfjT91b9kZkw\"}', '57df5b5093bd0', '', 'customer-001', 'customer@example.com', '', 'PHP', NULL, '2016-09-19 03:28:16', '2016-09-19 03:28:25');
INSERT INTO `payum_payments` VALUES (14, '{\"BRANDNAME\":\"My Company\",\"LOGOIMG\":\"https:\\/\\/profugo.org\\/wp-content\\/uploads\\/2013\\/08\\/logo-190x60.png\",\"SOLUTIONTYPE\":\"Mark\",\"LANDINGPAGE\":\"Login\",\"CARTBORDERCOLOR\":\"009688\",\"CHANNELTYPE\":\"Merchant\",\"L_BILLINGTYPE0\":\"0\",\"L_BILLINGAGREEMENTDESCRIPTION0\":\"1 Week Free Trial then PREMIUM Membership \\u20b1500 PHP Per Month\",\"PAYMENTREQUEST_0_AMT\":0,\"NOSHIPPING\":1,\"amount\":\"\",\"currency\":\"PHP\",\"number\":\"57df6015bab08\",\"description\":\"\",\"client_email\":\"customer@example.com\",\"client_id\":\"customer-001\",\"paid\":true,\"status\":\"captured\"}', '57df6015bab08', '', 'customer-001', 'customer@example.com', '', 'PHP', 'captured', '2016-09-19 03:48:37', '2016-09-19 03:48:39');
INSERT INTO `payum_payments` VALUES (15, '{\"BRANDNAME\":\"My Company\",\"LOGOIMG\":\"https:\\/\\/profugo.org\\/wp-content\\/uploads\\/2013\\/08\\/logo-190x60.png\",\"SOLUTIONTYPE\":\"Mark\",\"LANDINGPAGE\":\"Login\",\"CARTBORDERCOLOR\":\"009688\",\"CHANNELTYPE\":\"Merchant\",\"L_BILLINGTYPE0\":\"0\",\"L_BILLINGAGREEMENTDESCRIPTION0\":\"1 Week Free Trial then PREMIUM Membership \\u20b1500 PHP Per Month\",\"PAYMENTREQUEST_0_AMT\":0,\"NOSHIPPING\":1,\"INVNUM\":\"57df605fea804\",\"PAYMENTREQUEST_0_CURRENCYCODE\":\"PHP\",\"PAYMENTREQUEST_0_DESC\":\"\",\"PAYMENTREQUEST_0_PAYMENTACTION\":\"Sale\",\"AUTHORIZE_TOKEN_USERACTION\":\"commit\",\"RETURNURL\":\"http:\\/\\/localhost:8888\\/eventdayplanner\\/public\\/payment\\/capture\\/5NR1vkMkBdj93J-NduGXm0JqbVJewS1QQwAl-KLjoQ8\",\"CANCELURL\":\"http:\\/\\/localhost:8888\\/eventdayplanner\\/public\\/payment\\/capture\\/5NR1vkMkBdj93J-NduGXm0JqbVJewS1QQwAl-KLjoQ8?cancelled=1\",\"PAYMENTREQUEST_0_NOTIFYURL\":\"http:\\/\\/localhost:8888\\/eventdayplanner\\/public\\/payment\\/notify\\/LKbZkswR5UDC-pxou6SuYm58fVx2wqY0gC90HRDFinc\"}', '57df605fea804', '', 'customer-001', 'customer@example.com', '', 'PHP', NULL, '2016-09-19 03:49:51', '2016-09-19 03:49:54');
INSERT INTO `payum_payments` VALUES (16, '{\"BRANDNAME\":\"My Company\",\"LOGOIMG\":\"https:\\/\\/profugo.org\\/wp-content\\/uploads\\/2013\\/08\\/logo-190x60.png\",\"SOLUTIONTYPE\":\"Mark\",\"LANDINGPAGE\":\"Login\",\"CARTBORDERCOLOR\":\"009688\",\"CHANNELTYPE\":\"Merchant\",\"L_BILLINGTYPE0\":\"0\",\"L_BILLINGAGREEMENTDESCRIPTION0\":\"1 Week Free Trial then PREMIUM Membership \\u20b1500 PHP Per Month\",\"PAYMENTREQUEST_0_AMT\":0,\"NOSHIPPING\":1,\"INVNUM\":\"57df60a6e363c\",\"PAYMENTREQUEST_0_CURRENCYCODE\":\"PHP\",\"PAYMENTREQUEST_0_DESC\":\"\",\"PAYMENTREQUEST_0_PAYMENTACTION\":\"Sale\",\"AUTHORIZE_TOKEN_USERACTION\":\"commit\",\"RETURNURL\":\"http:\\/\\/localhost:8888\\/eventdayplanner\\/public\\/payment\\/capture\\/2Unfp7ogc2tFAEwjLEW-3r84dSVhcWzak4lV641Jh2I\",\"CANCELURL\":\"http:\\/\\/localhost:8888\\/eventdayplanner\\/public\\/payment\\/capture\\/2Unfp7ogc2tFAEwjLEW-3r84dSVhcWzak4lV641Jh2I?cancelled=1\",\"PAYMENTREQUEST_0_NOTIFYURL\":\"http:\\/\\/localhost:8888\\/eventdayplanner\\/public\\/payment\\/notify\\/Db8ceZx6cWaQaF460W4KRW-gQHV-LfAhY1rCI3cLSpQ\"}', '57df60a6e363c', '', 'customer-001', 'customer@example.com', '', 'PHP', NULL, '2016-09-19 03:51:02', '2016-09-19 03:51:05');
INSERT INTO `payum_payments` VALUES (17, '{\"BRANDNAME\":\"My Company\",\"LOGOIMG\":\"https:\\/\\/profugo.org\\/wp-content\\/uploads\\/2013\\/08\\/logo-190x60.png\",\"SOLUTIONTYPE\":\"Mark\",\"LANDINGPAGE\":\"Login\",\"CARTBORDERCOLOR\":\"009688\",\"CHANNELTYPE\":\"Merchant\",\"L_BILLINGTYPE0\":\"0\",\"L_BILLINGAGREEMENTDESCRIPTION0\":\"1 Week Free Trial then PREMIUM Membership \\u20b1500 PHP Per Month\",\"PAYMENTREQUEST_0_AMT\":0,\"NOSHIPPING\":1}', '57df610596cbd', '', 'customer-001', 'customer@example.com', '', 'PHP', NULL, '2016-09-19 03:52:37', '2016-09-19 03:52:37');
INSERT INTO `payum_payments` VALUES (18, '{\"BRANDNAME\":\"My Company\",\"LOGOIMG\":\"https:\\/\\/profugo.org\\/wp-content\\/uploads\\/2013\\/08\\/logo-190x60.png\",\"SOLUTIONTYPE\":\"Mark\",\"LANDINGPAGE\":\"Login\",\"CARTBORDERCOLOR\":\"009688\",\"CHANNELTYPE\":\"Merchant\",\"L_BILLINGTYPE0\":\"0\",\"L_BILLINGAGREEMENTDESCRIPTION0\":\"1 Week Free Trial then PREMIUM Membership \\u20b1500 PHP Per Month\",\"PAYMENTREQUEST_0_AMT\":0,\"NOSHIPPING\":1}', '57df617813f5b', '', 'customer-001', 'customer@example.com', '', 'PHP', NULL, '2016-09-19 03:54:32', '2016-09-19 03:54:32');
INSERT INTO `payum_payments` VALUES (19, '{\"BRANDNAME\":\"My Company\",\"LOGOIMG\":\"https:\\/\\/profugo.org\\/wp-content\\/uploads\\/2013\\/08\\/logo-190x60.png\",\"SOLUTIONTYPE\":\"Mark\",\"LANDINGPAGE\":\"Login\",\"CARTBORDERCOLOR\":\"009688\",\"CHANNELTYPE\":\"Merchant\",\"L_BILLINGTYPE0\":\"0\",\"L_BILLINGAGREEMENTDESCRIPTION0\":\"1 Week Free Trial then PREMIUM Membership \\u20b1500 PHP Per Month\",\"PAYMENTREQUEST_0_AMT\":0,\"NOSHIPPING\":1}', '57df620aa69db', '', 'customer-001', 'customer@example.com', '', 'PHP', NULL, '2016-09-19 03:56:58', '2016-09-19 03:56:58');
INSERT INTO `payum_payments` VALUES (20, '{\"BRANDNAME\":\"My Company\",\"LOGOIMG\":\"https:\\/\\/profugo.org\\/wp-content\\/uploads\\/2013\\/08\\/logo-190x60.png\",\"SOLUTIONTYPE\":\"Mark\",\"LANDINGPAGE\":\"Login\",\"CARTBORDERCOLOR\":\"009688\",\"CHANNELTYPE\":\"Merchant\",\"L_BILLINGTYPE0\":\"0\",\"L_BILLINGAGREEMENTDESCRIPTION0\":\"1 Week Free Trial then PREMIUM Membership \\u20b1500 PHP Per Month\",\"PAYMENTREQUEST_0_AMT\":0,\"NOSHIPPING\":1}', '57df66038b9a0', '', 'customer-001', 'customer@example.com', '', 'PHP', NULL, '2016-09-19 04:13:55', '2016-09-19 04:13:55');
INSERT INTO `payum_payments` VALUES (21, '{\"BRANDNAME\":\"My Company\",\"LOGOIMG\":\"https:\\/\\/profugo.org\\/wp-content\\/uploads\\/2013\\/08\\/logo-190x60.png\",\"SOLUTIONTYPE\":\"Mark\",\"LANDINGPAGE\":\"Login\",\"CARTBORDERCOLOR\":\"009688\",\"CHANNELTYPE\":\"Merchant\",\"L_BILLINGTYPE0\":\"0\",\"L_BILLINGAGREEMENTDESCRIPTION0\":\"1 Week Free Trial then PREMIUM Membership \\u20b1500 PHP Per Month\",\"PAYMENTREQUEST_0_AMT\":0,\"NOSHIPPING\":1,\"amount\":\"\",\"currency\":\"PHP\",\"number\":\"57df68caa2202\",\"description\":\"\",\"client_email\":\"customer@example.com\",\"client_id\":\"customer-001\",\"paid\":true,\"status\":\"captured\"}', '57df68caa2202', '', 'customer-001', 'customer@example.com', '', 'PHP', 'captured', '2016-09-19 04:25:46', '2016-09-19 04:25:49');
COMMIT;

-- ----------------------------
-- Table structure for payum_tokens
-- ----------------------------
DROP TABLE IF EXISTS `payum_tokens`;
CREATE TABLE `payum_tokens` (
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` text COLLATE utf8_unicode_ci NOT NULL,
  `targetUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `afterUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gatewayName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of payum_tokens
-- ----------------------------
BEGIN;
INSERT INTO `payum_tokens` VALUES ('5o8nwiWHxdbrCTzT-fGgXOKqobxckLUDBR21Tr1Cg9E', 'C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:1;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/done/5o8nwiWHxdbrCTzT-fGgXOKqobxckLUDBR21Tr1Cg9E', NULL, 'paypal_rest', '2016-09-19 00:35:55', '2016-09-19 00:35:55');
INSERT INTO `payum_tokens` VALUES ('9fQPgps18wee5UKPzs7BC6_tw0aIaZQ8fDn3M1JpAI0', 'C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:1;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/capture/9fQPgps18wee5UKPzs7BC6_tw0aIaZQ8fDn3M1JpAI0', 'http://localhost:8888/eventdayplanner/public/payment/done/5o8nwiWHxdbrCTzT-fGgXOKqobxckLUDBR21Tr1Cg9E', 'paypal_rest', '2016-09-19 00:35:56', '2016-09-19 00:35:56');
INSERT INTO `payum_tokens` VALUES ('oWt1Nw5keEgHmsLPdLDVnhokznGkuKBfYlTzwNAvS7Q', 'C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:2;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/done/oWt1Nw5keEgHmsLPdLDVnhokznGkuKBfYlTzwNAvS7Q', NULL, 'paypal_rest', '2016-09-19 01:12:35', '2016-09-19 01:12:35');
INSERT INTO `payum_tokens` VALUES ('U1YvrBkgn5KO05NhQlek1xm8ZMps0jkZQtgMBVI-Rcw', 'C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:2;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/capture/U1YvrBkgn5KO05NhQlek1xm8ZMps0jkZQtgMBVI-Rcw', 'http://localhost:8888/eventdayplanner/public/payment/done/oWt1Nw5keEgHmsLPdLDVnhokznGkuKBfYlTzwNAvS7Q', 'paypal_rest', '2016-09-19 01:12:36', '2016-09-19 01:12:36');
INSERT INTO `payum_tokens` VALUES ('IstjPG6TX9ElB_QqYgdjxZTx2Lv-N8SKNWQ2zwHyKuA', 'C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:3;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/done/IstjPG6TX9ElB_QqYgdjxZTx2Lv-N8SKNWQ2zwHyKuA', NULL, 'paypal_rest', '2016-09-19 01:14:14', '2016-09-19 01:14:14');
INSERT INTO `payum_tokens` VALUES ('qDCo-q4nw87C-SLDspDiqr9ruEAvRaXsXYKjl79_k08', 'C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:3;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/capture/qDCo-q4nw87C-SLDspDiqr9ruEAvRaXsXYKjl79_k08', 'http://localhost:8888/eventdayplanner/public/payment/done/IstjPG6TX9ElB_QqYgdjxZTx2Lv-N8SKNWQ2zwHyKuA', 'paypal_rest', '2016-09-19 01:14:14', '2016-09-19 01:14:14');
INSERT INTO `payum_tokens` VALUES ('KoAQwPH_pBQLV2nPBVtly6NfKmiwxN_XGSjft86vVQ8', 'C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:4;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/done/KoAQwPH_pBQLV2nPBVtly6NfKmiwxN_XGSjft86vVQ8', NULL, 'paypal_rest', '2016-09-19 01:17:29', '2016-09-19 01:17:29');
INSERT INTO `payum_tokens` VALUES ('p_1ACQ-HY9lXJ-Y4LOolUGIi2b_PjRc0nfETjzcTPBg', 'C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:4;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/capture/p_1ACQ-HY9lXJ-Y4LOolUGIi2b_PjRc0nfETjzcTPBg', 'http://localhost:8888/eventdayplanner/public/payment/done/KoAQwPH_pBQLV2nPBVtly6NfKmiwxN_XGSjft86vVQ8', 'paypal_rest', '2016-09-19 01:17:30', '2016-09-19 01:17:30');
INSERT INTO `payum_tokens` VALUES ('XULyskPgLBuKx9pxshKfuitlbf3tsL9wR78tL3JgWLc', 'C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:5;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/done/XULyskPgLBuKx9pxshKfuitlbf3tsL9wR78tL3JgWLc', NULL, 'paypal_rest', '2016-09-19 01:19:34', '2016-09-19 01:19:34');
INSERT INTO `payum_tokens` VALUES ('NQPnvklnwbBzxzPixAAOX0_vk6uCKMQ-gTi4doFlC_8', 'C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:5;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/capture/NQPnvklnwbBzxzPixAAOX0_vk6uCKMQ-gTi4doFlC_8', 'http://localhost:8888/eventdayplanner/public/payment/done/XULyskPgLBuKx9pxshKfuitlbf3tsL9wR78tL3JgWLc', 'paypal_rest', '2016-09-19 01:19:35', '2016-09-19 01:19:35');
INSERT INTO `payum_tokens` VALUES ('1EdnofJEilqYZUe54yHW8eLYOyEhZf26iAR6cBAzpfQ', 'C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:6;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/done/1EdnofJEilqYZUe54yHW8eLYOyEhZf26iAR6cBAzpfQ', NULL, 'paypal_express_checkout', '2016-09-19 02:29:18', '2016-09-19 02:29:18');
INSERT INTO `payum_tokens` VALUES ('IAgOd17kKk5fg3bjjTblCZGBmkixDTzOESXG3D8ZIFk', 'C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:6;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/capture/IAgOd17kKk5fg3bjjTblCZGBmkixDTzOESXG3D8ZIFk', 'http://localhost:8888/eventdayplanner/public/payment/done/1EdnofJEilqYZUe54yHW8eLYOyEhZf26iAR6cBAzpfQ', 'paypal_express_checkout', '2016-09-19 02:29:19', '2016-09-19 02:29:19');
INSERT INTO `payum_tokens` VALUES ('iD2gh7Y9VZL8Urgsgrf825167_kKKxE59wmTSHfzNMg', 'C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:6;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/notify/iD2gh7Y9VZL8Urgsgrf825167_kKKxE59wmTSHfzNMg', NULL, 'paypal_express_checkout', '2016-09-19 02:29:30', '2016-09-19 02:29:30');
INSERT INTO `payum_tokens` VALUES ('lUTuVp18ghhrsCf6ITeMQ2R0IEgCA9YK8vuylVucL5c', 'C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:8;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/done/lUTuVp18ghhrsCf6ITeMQ2R0IEgCA9YK8vuylVucL5c', NULL, 'paypal_express_checkout', '2016-09-19 02:32:24', '2016-09-19 02:32:24');
INSERT INTO `payum_tokens` VALUES ('l4_KeVWnP2HHXk2zNVNahETtAsvZd9zCCGIENXdbFTE', 'C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:7;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/done/l4_KeVWnP2HHXk2zNVNahETtAsvZd9zCCGIENXdbFTE', NULL, 'paypal_express_checkout', '2016-09-19 02:32:24', '2016-09-19 02:32:24');
INSERT INTO `payum_tokens` VALUES ('pX9srsqugAOWkI9MLMuvStPxOvmo3u4w_Fy1iPghBW0', 'C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:8;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/capture/pX9srsqugAOWkI9MLMuvStPxOvmo3u4w_Fy1iPghBW0', 'http://localhost:8888/eventdayplanner/public/payment/done/lUTuVp18ghhrsCf6ITeMQ2R0IEgCA9YK8vuylVucL5c', 'paypal_express_checkout', '2016-09-19 02:32:24', '2016-09-19 02:32:24');
INSERT INTO `payum_tokens` VALUES ('TW_xspkTO7ZZV0RauO8N7oPTSUEdFjptHYGdHCc8-x0', 'C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:7;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/capture/TW_xspkTO7ZZV0RauO8N7oPTSUEdFjptHYGdHCc8-x0', 'http://localhost:8888/eventdayplanner/public/payment/done/l4_KeVWnP2HHXk2zNVNahETtAsvZd9zCCGIENXdbFTE', 'paypal_express_checkout', '2016-09-19 02:32:24', '2016-09-19 02:32:24');
INSERT INTO `payum_tokens` VALUES ('JyVKX0IskyHCxR0a4ryVH9mZMsT3Cb6JKiOXRzeuL80', 'C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:8;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/notify/JyVKX0IskyHCxR0a4ryVH9mZMsT3Cb6JKiOXRzeuL80', NULL, 'paypal_express_checkout', '2016-09-19 02:32:26', '2016-09-19 02:32:26');
INSERT INTO `payum_tokens` VALUES ('ysbFBTwReZKVmzlCCQVigzAg-cxeHBovSxV8111_BWc', 'C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:9;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/done/ysbFBTwReZKVmzlCCQVigzAg-cxeHBovSxV8111_BWc', NULL, 'paypal_express_checkout', '2016-09-19 03:05:37', '2016-09-19 03:05:37');
INSERT INTO `payum_tokens` VALUES ('H_JAiIefdHcj4scMZaMFNzZs5pqRTLpx8ZeLQ7Hwen0', 'C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:9;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/capture/H_JAiIefdHcj4scMZaMFNzZs5pqRTLpx8ZeLQ7Hwen0', 'http://localhost:8888/eventdayplanner/public/payment/done/ysbFBTwReZKVmzlCCQVigzAg-cxeHBovSxV8111_BWc', 'paypal_express_checkout', '2016-09-19 03:05:38', '2016-09-19 03:05:38');
INSERT INTO `payum_tokens` VALUES ('Elt9IXEbJ2ajYsVi01GSBwDCs_b0X9OhnNfPa1iDbkE', 'C:25:\"Payum\\Core\\Model\\Identity\":62:{a:2:{i:0;i:9;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/notify/Elt9IXEbJ2ajYsVi01GSBwDCs_b0X9OhnNfPa1iDbkE', NULL, 'paypal_express_checkout', '2016-09-19 03:05:39', '2016-09-19 03:05:39');
INSERT INTO `payum_tokens` VALUES ('pVIwZ4gU1Udxo-m051SMLCw--D0b0DxIrSuJi4sO5GE', 'C:25:\"Payum\\Core\\Model\\Identity\":63:{a:2:{i:0;i:11;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/done/pVIwZ4gU1Udxo-m051SMLCw--D0b0DxIrSuJi4sO5GE', NULL, 'paypal_express_checkout', '2016-09-19 03:13:34', '2016-09-19 03:13:34');
INSERT INTO `payum_tokens` VALUES ('hEVobjqZy2pKj7EqYLqnW0XEI-dOFCOBzn8lw1bZm-g', 'C:25:\"Payum\\Core\\Model\\Identity\":63:{a:2:{i:0;i:10;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/done/hEVobjqZy2pKj7EqYLqnW0XEI-dOFCOBzn8lw1bZm-g', NULL, 'paypal_express_checkout', '2016-09-19 03:13:34', '2016-09-19 03:13:34');
INSERT INTO `payum_tokens` VALUES ('HZC2avy4qcF6SdaGUSHouRRA3KhaNdMFegKIFfxtDKs', 'C:25:\"Payum\\Core\\Model\\Identity\":63:{a:2:{i:0;i:11;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/capture/HZC2avy4qcF6SdaGUSHouRRA3KhaNdMFegKIFfxtDKs', 'http://localhost:8888/eventdayplanner/public/payment/done/pVIwZ4gU1Udxo-m051SMLCw--D0b0DxIrSuJi4sO5GE', 'paypal_express_checkout', '2016-09-19 03:13:34', '2016-09-19 03:13:34');
INSERT INTO `payum_tokens` VALUES ('OMkfNnmk95twmo5jxICQKeZP11VS6ym7h61gE_zex6s', 'C:25:\"Payum\\Core\\Model\\Identity\":63:{a:2:{i:0;i:10;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/capture/OMkfNnmk95twmo5jxICQKeZP11VS6ym7h61gE_zex6s', 'http://localhost:8888/eventdayplanner/public/payment/done/hEVobjqZy2pKj7EqYLqnW0XEI-dOFCOBzn8lw1bZm-g', 'paypal_express_checkout', '2016-09-19 03:13:34', '2016-09-19 03:13:34');
INSERT INTO `payum_tokens` VALUES ('PEGRlfWwbCUvDeuu6CnZGFfCiUXrS-KzlezAtA_yQs4', 'C:25:\"Payum\\Core\\Model\\Identity\":63:{a:2:{i:0;i:11;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/notify/PEGRlfWwbCUvDeuu6CnZGFfCiUXrS-KzlezAtA_yQs4', NULL, 'paypal_express_checkout', '2016-09-19 03:13:34', '2016-09-19 03:13:34');
INSERT INTO `payum_tokens` VALUES ('YbcV_Ei1405ts2Ov6R6hFAIvMyugqmjD1Yl4I6wXjPs', 'C:25:\"Payum\\Core\\Model\\Identity\":63:{a:2:{i:0;i:12;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/done/YbcV_Ei1405ts2Ov6R6hFAIvMyugqmjD1Yl4I6wXjPs', NULL, 'paypal_express_checkout', '2016-09-19 03:23:46', '2016-09-19 03:23:46');
INSERT INTO `payum_tokens` VALUES ('fck-8dyVmEY9Gkx7kHIHn5K-HvYJAMZIt_6mGplqb50', 'C:25:\"Payum\\Core\\Model\\Identity\":63:{a:2:{i:0;i:12;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/capture/fck-8dyVmEY9Gkx7kHIHn5K-HvYJAMZIt_6mGplqb50', 'http://localhost:8888/eventdayplanner/public/payment/done/YbcV_Ei1405ts2Ov6R6hFAIvMyugqmjD1Yl4I6wXjPs', 'paypal_express_checkout', '2016-09-19 03:23:47', '2016-09-19 03:23:47');
INSERT INTO `payum_tokens` VALUES ('UOFyc6gdFAzBaMgi-IzPF5McgL207dM1gOtv8OtyLPQ', 'C:25:\"Payum\\Core\\Model\\Identity\":63:{a:2:{i:0;i:12;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/notify/UOFyc6gdFAzBaMgi-IzPF5McgL207dM1gOtv8OtyLPQ', NULL, 'paypal_express_checkout', '2016-09-19 03:23:49', '2016-09-19 03:23:49');
INSERT INTO `payum_tokens` VALUES ('ch0vkusVcMgxTtBOC7WoNvKjkU0j3TnVq042JqlRX_Y', 'C:25:\"Payum\\Core\\Model\\Identity\":63:{a:2:{i:0;i:13;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/done/ch0vkusVcMgxTtBOC7WoNvKjkU0j3TnVq042JqlRX_Y', NULL, 'paypal_express_checkout', '2016-09-19 03:28:16', '2016-09-19 03:28:16');
INSERT INTO `payum_tokens` VALUES ('vvE9-HVB1YdCNrYeIbb1_8IXPtihSw1Y1gOU4LzOUFk', 'C:25:\"Payum\\Core\\Model\\Identity\":63:{a:2:{i:0;i:13;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/capture/vvE9-HVB1YdCNrYeIbb1_8IXPtihSw1Y1gOU4LzOUFk', 'http://localhost:8888/eventdayplanner/public/payment/done/ch0vkusVcMgxTtBOC7WoNvKjkU0j3TnVq042JqlRX_Y', 'paypal_express_checkout', '2016-09-19 03:28:16', '2016-09-19 03:28:16');
INSERT INTO `payum_tokens` VALUES ('otHPjhgJZrMN2AxdMV6B8E-1VMCOF_VtfjT91b9kZkw', 'C:25:\"Payum\\Core\\Model\\Identity\":63:{a:2:{i:0;i:13;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/notify/otHPjhgJZrMN2AxdMV6B8E-1VMCOF_VtfjT91b9kZkw', NULL, 'paypal_express_checkout', '2016-09-19 03:28:19', '2016-09-19 03:28:19');
INSERT INTO `payum_tokens` VALUES ('zxTVtrpQqIAbzcXm-bmqGw6QJ4UJ1rF3nwTUJiN1pHw', 'C:25:\"Payum\\Core\\Model\\Identity\":63:{a:2:{i:0;i:14;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/done/zxTVtrpQqIAbzcXm-bmqGw6QJ4UJ1rF3nwTUJiN1pHw', NULL, 'offline', '2016-09-19 03:48:38', '2016-09-19 03:48:38');
INSERT INTO `payum_tokens` VALUES ('WrPFdhh-nTvyu1l2OFjX_E4z6VH4XWvgkjH8uMdwZ_0', 'C:25:\"Payum\\Core\\Model\\Identity\":63:{a:2:{i:0;i:15;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/done/WrPFdhh-nTvyu1l2OFjX_E4z6VH4XWvgkjH8uMdwZ_0', NULL, 'paypal_express_checkout', '2016-09-19 03:49:52', '2016-09-19 03:49:52');
INSERT INTO `payum_tokens` VALUES ('5NR1vkMkBdj93J-NduGXm0JqbVJewS1QQwAl-KLjoQ8', 'C:25:\"Payum\\Core\\Model\\Identity\":63:{a:2:{i:0;i:15;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/capture/5NR1vkMkBdj93J-NduGXm0JqbVJewS1QQwAl-KLjoQ8', 'http://localhost:8888/eventdayplanner/public/payment/done/WrPFdhh-nTvyu1l2OFjX_E4z6VH4XWvgkjH8uMdwZ_0', 'paypal_express_checkout', '2016-09-19 03:49:52', '2016-09-19 03:49:52');
INSERT INTO `payum_tokens` VALUES ('LKbZkswR5UDC-pxou6SuYm58fVx2wqY0gC90HRDFinc', 'C:25:\"Payum\\Core\\Model\\Identity\":63:{a:2:{i:0;i:15;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/notify/LKbZkswR5UDC-pxou6SuYm58fVx2wqY0gC90HRDFinc', NULL, 'paypal_express_checkout', '2016-09-19 03:49:52', '2016-09-19 03:49:52');
INSERT INTO `payum_tokens` VALUES ('8h7azmIFqKjkfn57GL3XV3wEPaCXQCMHjaf7L5ieJTU', 'C:25:\"Payum\\Core\\Model\\Identity\":63:{a:2:{i:0;i:16;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/done/8h7azmIFqKjkfn57GL3XV3wEPaCXQCMHjaf7L5ieJTU', NULL, 'paypal_express_checkout', '2016-09-19 03:51:03', '2016-09-19 03:51:03');
INSERT INTO `payum_tokens` VALUES ('2Unfp7ogc2tFAEwjLEW-3r84dSVhcWzak4lV641Jh2I', 'C:25:\"Payum\\Core\\Model\\Identity\":63:{a:2:{i:0;i:16;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/capture/2Unfp7ogc2tFAEwjLEW-3r84dSVhcWzak4lV641Jh2I', 'http://localhost:8888/eventdayplanner/public/payment/done/8h7azmIFqKjkfn57GL3XV3wEPaCXQCMHjaf7L5ieJTU', 'paypal_express_checkout', '2016-09-19 03:51:03', '2016-09-19 03:51:03');
INSERT INTO `payum_tokens` VALUES ('Db8ceZx6cWaQaF460W4KRW-gQHV-LfAhY1rCI3cLSpQ', 'C:25:\"Payum\\Core\\Model\\Identity\":63:{a:2:{i:0;i:16;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/notify/Db8ceZx6cWaQaF460W4KRW-gQHV-LfAhY1rCI3cLSpQ', NULL, 'paypal_express_checkout', '2016-09-19 03:51:04', '2016-09-19 03:51:04');
INSERT INTO `payum_tokens` VALUES ('Ji8mBYHbZaAwQmmTucZ4YKUyeRsqjx-5qjNG1QEyhI0', 'C:25:\"Payum\\Core\\Model\\Identity\":63:{a:2:{i:0;i:17;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/done/Ji8mBYHbZaAwQmmTucZ4YKUyeRsqjx-5qjNG1QEyhI0', NULL, 'paypal_rest', '2016-09-19 03:52:37', '2016-09-19 03:52:37');
INSERT INTO `payum_tokens` VALUES ('-nCWxH1fNN2FjA9b4EFJ2t6sMNSejY-AFY7WZONGK1w', 'C:25:\"Payum\\Core\\Model\\Identity\":63:{a:2:{i:0;i:17;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/capture/-nCWxH1fNN2FjA9b4EFJ2t6sMNSejY-AFY7WZONGK1w', 'http://localhost:8888/eventdayplanner/public/payment/done/Ji8mBYHbZaAwQmmTucZ4YKUyeRsqjx-5qjNG1QEyhI0', 'paypal_rest', '2016-09-19 03:52:37', '2016-09-19 03:52:37');
INSERT INTO `payum_tokens` VALUES ('XHItDLWOn2mcUmLxIciYviY-PTM9WBZED5McqjWnnKg', 'C:25:\"Payum\\Core\\Model\\Identity\":63:{a:2:{i:0;i:18;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/done/XHItDLWOn2mcUmLxIciYviY-PTM9WBZED5McqjWnnKg', NULL, 'paypal_rest', '2016-09-19 03:54:32', '2016-09-19 03:54:32');
INSERT INTO `payum_tokens` VALUES ('tOO0edQOGuCafhugI0_A4Ti9TQCFhg277u77L9gH9S8', 'C:25:\"Payum\\Core\\Model\\Identity\":63:{a:2:{i:0;i:18;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/capture/tOO0edQOGuCafhugI0_A4Ti9TQCFhg277u77L9gH9S8', 'http://localhost:8888/eventdayplanner/public/payment/done/XHItDLWOn2mcUmLxIciYviY-PTM9WBZED5McqjWnnKg', 'paypal_rest', '2016-09-19 03:54:32', '2016-09-19 03:54:32');
INSERT INTO `payum_tokens` VALUES ('pvEDlebnjyAaVG9oZGt_m7NtpVoNmz0hE3flj63nFbA', 'C:25:\"Payum\\Core\\Model\\Identity\":63:{a:2:{i:0;i:19;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/done/pvEDlebnjyAaVG9oZGt_m7NtpVoNmz0hE3flj63nFbA', NULL, 'paypal_rest', '2016-09-19 03:56:58', '2016-09-19 03:56:58');
INSERT INTO `payum_tokens` VALUES ('v0pL5LofVsQ3QJOc5zL79I3dTlJoV7YivkKTwH_kngk', 'C:25:\"Payum\\Core\\Model\\Identity\":63:{a:2:{i:0;i:19;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/capture/v0pL5LofVsQ3QJOc5zL79I3dTlJoV7YivkKTwH_kngk', 'http://localhost:8888/eventdayplanner/public/payment/done/pvEDlebnjyAaVG9oZGt_m7NtpVoNmz0hE3flj63nFbA', 'paypal_rest', '2016-09-19 03:56:59', '2016-09-19 03:56:59');
INSERT INTO `payum_tokens` VALUES ('ICdquz-JuJiim6Ua_LzQXM9TnQhEILwG7SywQkWIZt0', 'C:25:\"Payum\\Core\\Model\\Identity\":60:{a:2:{i:0;N;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public?payum_token=ICdquz-JuJiim6Ua_LzQXM9TnQhEILwG7SywQkWIZt0', NULL, 'paypalRest', '2016-09-19 04:02:49', '2016-09-19 04:02:49');
INSERT INTO `payum_tokens` VALUES ('VnI4-cG2UYhvgixFMcFTqquz2wpeu5p5QHvO-BbVdQI', 'C:25:\"Payum\\Core\\Model\\Identity\":60:{a:2:{i:0;N;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/capture/VnI4-cG2UYhvgixFMcFTqquz2wpeu5p5QHvO-BbVdQI', 'http://localhost:8888/eventdayplanner/public?payum_token=ICdquz-JuJiim6Ua_LzQXM9TnQhEILwG7SywQkWIZt0', 'paypalRest', '2016-09-19 04:02:49', '2016-09-19 04:02:49');
INSERT INTO `payum_tokens` VALUES ('US-ak8YCkzz287uCs9gi3cK9b4Rq6_Ic5NZLtzwO7lM', 'C:25:\"Payum\\Core\\Model\\Identity\":60:{a:2:{i:0;N;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public?payum_token=US-ak8YCkzz287uCs9gi3cK9b4Rq6_Ic5NZLtzwO7lM', NULL, 'paypalRest', '2016-09-19 04:09:28', '2016-09-19 04:09:28');
INSERT INTO `payum_tokens` VALUES ('oQ4d479QJAWkzNXKJQNNYw0Y0KdMXEkiK0tANI040OQ', 'C:25:\"Payum\\Core\\Model\\Identity\":60:{a:2:{i:0;N;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/capture/oQ4d479QJAWkzNXKJQNNYw0Y0KdMXEkiK0tANI040OQ', 'http://localhost:8888/eventdayplanner/public?payum_token=US-ak8YCkzz287uCs9gi3cK9b4Rq6_Ic5NZLtzwO7lM', 'paypalRest', '2016-09-19 04:09:28', '2016-09-19 04:09:28');
INSERT INTO `payum_tokens` VALUES ('KuV5sMTA4sAt010_vTpe3464x8bU3iSLPQCacTZ_e0c', 'C:25:\"Payum\\Core\\Model\\Identity\":60:{a:2:{i:0;N;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public?payum_token=KuV5sMTA4sAt010_vTpe3464x8bU3iSLPQCacTZ_e0c', NULL, 'paypalRest', '2016-09-19 04:12:29', '2016-09-19 04:12:29');
INSERT INTO `payum_tokens` VALUES ('9-1KW-QtD53opAKhjam1CzviQdNlHNUKnddI76toSpM', 'C:25:\"Payum\\Core\\Model\\Identity\":60:{a:2:{i:0;N;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/capture/9-1KW-QtD53opAKhjam1CzviQdNlHNUKnddI76toSpM', 'http://localhost:8888/eventdayplanner/public?payum_token=KuV5sMTA4sAt010_vTpe3464x8bU3iSLPQCacTZ_e0c', 'paypalRest', '2016-09-19 04:12:29', '2016-09-19 04:12:29');
INSERT INTO `payum_tokens` VALUES ('qT45Ze8LV-PqieMmbuq_pyuURpUhWmjj-fciUHvj0Uw', 'C:25:\"Payum\\Core\\Model\\Identity\":60:{a:2:{i:0;N;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public?payum_token=qT45Ze8LV-PqieMmbuq_pyuURpUhWmjj-fciUHvj0Uw', NULL, 'paypalRest', '2016-09-19 04:12:53', '2016-09-19 04:12:53');
INSERT INTO `payum_tokens` VALUES ('ohA8I7ItwPwLBLB-jb4vIYF4yXPqJlPexIrkm9bHX4A', 'C:25:\"Payum\\Core\\Model\\Identity\":60:{a:2:{i:0;N;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/capture/ohA8I7ItwPwLBLB-jb4vIYF4yXPqJlPexIrkm9bHX4A', 'http://localhost:8888/eventdayplanner/public?payum_token=qT45Ze8LV-PqieMmbuq_pyuURpUhWmjj-fciUHvj0Uw', 'paypalRest', '2016-09-19 04:12:53', '2016-09-19 04:12:53');
INSERT INTO `payum_tokens` VALUES ('7TJ7YP-dbgfEOVnmPnHwVBqcmZ2-CDmLWqJLjRuHHEo', 'C:25:\"Payum\\Core\\Model\\Identity\":60:{a:2:{i:0;N;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public?payum_token=7TJ7YP-dbgfEOVnmPnHwVBqcmZ2-CDmLWqJLjRuHHEo', NULL, 'paypalRest', '2016-09-19 04:13:22', '2016-09-19 04:13:22');
INSERT INTO `payum_tokens` VALUES ('IWq5lENqfOLRTaKSSmuy2SdeYMHl1cvTtPvHcNTtwcw', 'C:25:\"Payum\\Core\\Model\\Identity\":60:{a:2:{i:0;N;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/capture/IWq5lENqfOLRTaKSSmuy2SdeYMHl1cvTtPvHcNTtwcw', 'http://localhost:8888/eventdayplanner/public?payum_token=7TJ7YP-dbgfEOVnmPnHwVBqcmZ2-CDmLWqJLjRuHHEo', 'paypalRest', '2016-09-19 04:13:22', '2016-09-19 04:13:22');
INSERT INTO `payum_tokens` VALUES ('impMKf2QgHut1P6KOinELAK-d-B_vIohYAPOpYAgmKA', 'C:25:\"Payum\\Core\\Model\\Identity\":60:{a:2:{i:0;N;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public?payum_token=impMKf2QgHut1P6KOinELAK-d-B_vIohYAPOpYAgmKA', NULL, 'paypalRest', '2016-09-19 04:13:39', '2016-09-19 04:13:39');
INSERT INTO `payum_tokens` VALUES ('a-ouv0dGgzPTqN8vooJVTwaFT5L0O3CBRCOmYFYz7lY', 'C:25:\"Payum\\Core\\Model\\Identity\":60:{a:2:{i:0;N;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/capture/a-ouv0dGgzPTqN8vooJVTwaFT5L0O3CBRCOmYFYz7lY', 'http://localhost:8888/eventdayplanner/public?payum_token=impMKf2QgHut1P6KOinELAK-d-B_vIohYAPOpYAgmKA', 'paypalRest', '2016-09-19 04:13:39', '2016-09-19 04:13:39');
INSERT INTO `payum_tokens` VALUES ('O5T6o7mybvaD9RYfg2VvjW4ld4hDaHCl1XPQhm-kruU', 'C:25:\"Payum\\Core\\Model\\Identity\":60:{a:2:{i:0;N;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public?payum_token=O5T6o7mybvaD9RYfg2VvjW4ld4hDaHCl1XPQhm-kruU', NULL, 'paypalRest', '2016-09-19 04:13:55', '2016-09-19 04:13:55');
INSERT INTO `payum_tokens` VALUES ('A4PO5OFNAuC6g5Rs7F28DiNfjoFssIbn95_tB8C-36w', 'C:25:\"Payum\\Core\\Model\\Identity\":60:{a:2:{i:0;N;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/capture/A4PO5OFNAuC6g5Rs7F28DiNfjoFssIbn95_tB8C-36w', 'http://localhost:8888/eventdayplanner/public?payum_token=O5T6o7mybvaD9RYfg2VvjW4ld4hDaHCl1XPQhm-kruU', 'paypalRest', '2016-09-19 04:13:55', '2016-09-19 04:13:55');
INSERT INTO `payum_tokens` VALUES ('7DF4ZvnqzHTKL9Mfxr1W1ZLoGY3-HCWUO-veVR8HA2Q', 'C:25:\"Payum\\Core\\Model\\Identity\":63:{a:2:{i:0;i:20;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/done/7DF4ZvnqzHTKL9Mfxr1W1ZLoGY3-HCWUO-veVR8HA2Q', NULL, 'paypal_rest', '2016-09-19 04:13:55', '2016-09-19 04:13:55');
INSERT INTO `payum_tokens` VALUES ('7DDcqd03oaYV5npc8P173e-6Ejw4lpODoNyda5MWQNA', 'C:25:\"Payum\\Core\\Model\\Identity\":63:{a:2:{i:0;i:20;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/capture/7DDcqd03oaYV5npc8P173e-6Ejw4lpODoNyda5MWQNA', 'http://localhost:8888/eventdayplanner/public/payment/done/7DF4ZvnqzHTKL9Mfxr1W1ZLoGY3-HCWUO-veVR8HA2Q', 'paypal_rest', '2016-09-19 04:13:55', '2016-09-19 04:13:55');
INSERT INTO `payum_tokens` VALUES ('6kYAkCG18K5uEKPcPN-T1ZTZDz_UWCv93VBrRlkwLAw', 'C:25:\"Payum\\Core\\Model\\Identity\":63:{a:2:{i:0;i:21;i:1;s:36:\"Recca0120\\LaravelPayum\\Model\\Payment\";}}', 'http://localhost:8888/eventdayplanner/public/payment/done/6kYAkCG18K5uEKPcPN-T1ZTZDz_UWCv93VBrRlkwLAw', NULL, 'offline', '2016-09-19 04:25:46', '2016-09-19 04:25:46');
COMMIT;

-- ----------------------------
-- Table structure for persistences
-- ----------------------------
DROP TABLE IF EXISTS `persistences`;
CREATE TABLE `persistences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `persistences_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of persistences
-- ----------------------------
BEGIN;
INSERT INTO `persistences` VALUES (1, 1, 'cCDcmP5Dx8XS1smouy0d46jcAzkNCKvm', '2016-07-13 19:32:20', '2016-07-13 19:32:20');
INSERT INTO `persistences` VALUES (2, 1, 'UMZMucDuqi21xDoOMeICDAu2cTdwp4dq', '2016-07-15 08:17:00', '2016-07-15 08:17:00');
INSERT INTO `persistences` VALUES (3, 1, 'ZelZnceWYzvt8fev4FtvJamNOMW0B731', '2016-07-15 11:23:43', '2016-07-15 11:23:43');
INSERT INTO `persistences` VALUES (4, 1, '5rcRwNt1dieDReCXiW3FBEFDKRyyXWSV', '2016-08-14 17:30:36', '2016-08-14 17:30:36');
INSERT INTO `persistences` VALUES (5, 1, 'bsWAZTIGkCFHPdv1emuOICQv1qiuotar', '2016-08-16 13:01:40', '2016-08-16 13:01:40');
INSERT INTO `persistences` VALUES (6, 1, 'aXTwHjIp1PBWPma5eRGSdJkJagi8CTqH', '2016-08-17 15:54:44', '2016-08-17 15:54:44');
INSERT INTO `persistences` VALUES (7, 1, 'lepoC4rBwSMNy1bnRJcIw9yPNt6kBL2P', '2016-08-24 17:09:22', '2016-08-24 17:09:22');
INSERT INTO `persistences` VALUES (9, 1, 'fHfqTqXU4dvBfneinSpNhMOkcHqJwTmX', '2016-08-25 20:24:28', '2016-08-25 20:24:28');
INSERT INTO `persistences` VALUES (16, 8, 'eTdJ04KLy3jXFP4KWmWP5rdgK4xmugcg', '2016-08-30 12:06:42', '2016-08-30 12:06:42');
INSERT INTO `persistences` VALUES (17, 9, 'HMNPGGsGL8aU3ZNUVs2hrZLlwIHL88z9', '2016-08-30 12:07:35', '2016-08-30 12:07:35');
INSERT INTO `persistences` VALUES (22, 9, 'hx2dQL4Si4oi5y8i9QtcxHm7KqSPKsFy', '2016-08-30 17:07:51', '2016-08-30 17:07:51');
INSERT INTO `persistences` VALUES (25, 1, 'gUzsXhYHtSv1viODnI04uAAaDN43gXcF', '2016-08-31 11:48:38', '2016-08-31 11:48:38');
INSERT INTO `persistences` VALUES (26, 2, 'hFkkjSCHpsWO1q4NgFOj9VziyefueMyo', '2016-09-01 12:25:13', '2016-09-01 12:25:13');
INSERT INTO `persistences` VALUES (32, 1, '8zJHjEfZLCvE6MVWEgl4r4NaqzyU9B9b', '2016-09-01 19:12:20', '2016-09-01 19:12:20');
INSERT INTO `persistences` VALUES (34, 11, 'SbSwCd6OSoMSBNdtYY8TSCjWMKsq6qbG', '2016-09-01 20:00:55', '2016-09-01 20:00:55');
INSERT INTO `persistences` VALUES (36, 11, 'yCyvgzDK4sgmVvb0z44C9GgWg4uktX0x', '2016-09-02 16:46:52', '2016-09-02 16:46:52');
INSERT INTO `persistences` VALUES (40, 11, 'LuBK9MnRoFeqLsmTnzvhif5O40cJtuA4', '2016-09-02 17:51:57', '2016-09-02 17:51:57');
INSERT INTO `persistences` VALUES (41, 11, 'PWnESzIQpmioN2TpFzwOBTLHIQ7sNds2', '2016-09-03 15:37:31', '2016-09-03 15:37:31');
INSERT INTO `persistences` VALUES (42, 11, 'nxiFbfumv6S34MyarVrp4s8yryDiF3iQ', '2016-09-03 22:53:58', '2016-09-03 22:53:58');
INSERT INTO `persistences` VALUES (43, 11, '1lBaJqkrjkvrWjVrL5L0dOdC4CbCWsEc', '2016-09-04 08:20:02', '2016-09-04 08:20:02');
INSERT INTO `persistences` VALUES (48, 11, 'guOi8kRFO0ndbQZDQnjaTrmhXbYukCdk', '2016-09-04 19:21:18', '2016-09-04 19:21:18');
INSERT INTO `persistences` VALUES (49, 11, 'Kmve0WgMLjF25VrvhuTxvyFWsemDdxzM', '2016-09-05 10:37:57', '2016-09-05 10:37:57');
INSERT INTO `persistences` VALUES (50, 11, '1UnGwFYW9UMaMgzG9bCRawJzj68FKtSW', '2016-09-05 17:51:32', '2016-09-05 17:51:32');
INSERT INTO `persistences` VALUES (51, 11, '1iuYWuuEqMTQmCUp8fTn8OfZhYdpzyWd', '2016-09-06 12:30:16', '2016-09-06 12:30:16');
INSERT INTO `persistences` VALUES (60, 11, 'vvn6ZfAzhOQ3yjBK98hHRsqdAoP7nbvp', '2016-09-07 11:33:53', '2016-09-07 11:33:53');
INSERT INTO `persistences` VALUES (61, 1, 'wnQmWmHLk2BLDcrzsJ6r16K6RehOqafi', '2016-09-07 17:12:52', '2016-09-07 17:12:52');
INSERT INTO `persistences` VALUES (62, 14, 'J8CVyeK7RkJXY1QhfuyrDUSsSN01J0Pt', '2016-09-08 17:40:01', '2016-09-08 17:40:01');
INSERT INTO `persistences` VALUES (63, 11, 'UZZNwqwYfC3hH7UixU7hv4NOcqhB7LCY', '2016-09-10 13:46:02', '2016-09-10 13:46:02');
INSERT INTO `persistences` VALUES (65, 11, 'D8lRMdGJZykX6mSFboOlx3wjKe0Bo9Wn', '2016-09-12 04:08:57', '2016-09-12 04:08:57');
INSERT INTO `persistences` VALUES (66, 11, '1nxTnpSPay6sdL1XeG5ZIcxaRfUBlri6', '2016-09-12 10:12:54', '2016-09-12 10:12:54');
INSERT INTO `persistences` VALUES (67, 14, 'UJ0n8N3eGrQX4V2sU64DIWhsUMnv2mHr', '2016-09-14 18:41:37', '2016-09-14 18:41:37');
INSERT INTO `persistences` VALUES (70, 14, 'iKbxmoYSeIZHXutP6qL9TTKYbUr1j6p5', '2016-09-15 02:15:57', '2016-09-15 02:15:57');
INSERT INTO `persistences` VALUES (72, 14, '2TNwR1t06q49ezSU0YtlQCdo3yABeoIz', '2016-09-15 02:19:13', '2016-09-15 02:19:13');
INSERT INTO `persistences` VALUES (77, 14, 'hdt97qn0stdq79TRxEHZ5tOplaoSeXZ4', '2016-09-15 02:48:23', '2016-09-15 02:48:23');
INSERT INTO `persistences` VALUES (78, 11, '2wwc1FOAmQVHbwHlpyF60Ukhd0BcpsmU', '2016-09-18 06:39:27', '2016-09-18 06:39:27');
INSERT INTO `persistences` VALUES (79, 11, 'o9w5i1TQsaVQt0ujrsit1SEYzsMOWcxJ', '2016-09-18 06:39:27', '2016-09-18 06:39:27');
INSERT INTO `persistences` VALUES (81, 14, 'xJfKMtfSKTZ0ELtSJVUrGjryVSvgy6lr', '2016-09-22 17:41:23', '2016-09-22 17:41:23');
INSERT INTO `persistences` VALUES (82, 14, 'can4WeatciI0SFqxpLbdZHRbqJmpjyJN', '2016-09-22 17:41:53', '2016-09-22 17:41:53');
INSERT INTO `persistences` VALUES (83, 14, 'WsA3Wl9URPpXeOShShsIsha8JMBrzdS5', '2016-09-22 17:42:29', '2016-09-22 17:42:29');
INSERT INTO `persistences` VALUES (84, 14, 'IiIyV46ZgfLh7Fp9zogYOXQb3x0tunTv', '2016-09-22 17:43:20', '2016-09-22 17:43:20');
INSERT INTO `persistences` VALUES (85, 14, 'tu2ZhPgpMc5Ehdm3BCPo4MFhxK2DznhX', '2016-09-22 17:43:51', '2016-09-22 17:43:51');
INSERT INTO `persistences` VALUES (88, 14, 'Xolon8TLv0XygeFtNdSt0UV3c2wg7QXe', '2016-09-23 09:25:05', '2016-09-23 09:25:05');
INSERT INTO `persistences` VALUES (91, 14, 'HwgDEMoOOyvuBMoa9Sp83rxBRQ573Lvx', '2016-09-23 09:39:06', '2016-09-23 09:39:06');
INSERT INTO `persistences` VALUES (92, 11, 'JBrYVfxzUn5hfpHU2VHGmGTECPwcRvtB', '2016-09-25 11:48:45', '2016-09-25 11:48:45');
INSERT INTO `persistences` VALUES (95, 11, 'wikqBCxWGZpXBtI3Z8sW585tGamMRu7x', '2016-09-26 02:25:35', '2016-09-26 02:25:35');
INSERT INTO `persistences` VALUES (96, 14, '5Ihh69JLUH1n5QCorxUoFxJ53T0wxVor', '2016-10-05 18:42:38', '2016-10-05 18:42:38');
INSERT INTO `persistences` VALUES (97, 14, 'KSi5gnIo7fljGehRfhU5e4w2tPSOQZCV', '2016-10-07 12:10:59', '2016-10-07 12:10:59');
INSERT INTO `persistences` VALUES (98, 11, '7tMfmCofx5BpHNJl0AhvDFuTJZMwIQCR', '2016-11-07 16:39:12', '2016-11-07 16:39:12');
INSERT INTO `persistences` VALUES (100, 11, 'QznnNZRSfmNeunYLeSNwNIptyh3slA9z', '2016-11-08 09:27:40', '2016-11-08 09:27:40');
INSERT INTO `persistences` VALUES (101, 11, 'mGk69zUQUKOeOaVaLmLTlUJBmrA2XCrt', '2016-12-12 08:56:10', '2016-12-12 08:56:10');
INSERT INTO `persistences` VALUES (102, 11, 'VYdia0EaCH6SCVQhsW56MeHWBcYlQ04s', '2016-12-14 09:17:13', '2016-12-14 09:17:13');
INSERT INTO `persistences` VALUES (103, 11, 'DlIZ73SzXpPtTnhSPKBLOlxsjdd1RRGa', '2016-12-18 08:08:38', '2016-12-18 08:08:38');
INSERT INTO `persistences` VALUES (104, 11, 'kmvwpmN3dq6zIfQIRCdp6V9yQT4uIjUs', '2016-12-18 17:54:29', '2016-12-18 17:54:29');
INSERT INTO `persistences` VALUES (105, 11, 'gHcns4AMRt7J8K4ch3ufEi5NEEwpUUK8', '2016-12-19 03:28:41', '2016-12-19 03:28:41');
INSERT INTO `persistences` VALUES (106, 11, 'X2BvbcR1dTWvZizZGTfMRdAolmJAzKnf', '2016-12-19 05:05:49', '2016-12-19 05:05:49');
INSERT INTO `persistences` VALUES (107, 11, 'OUeJiTPjOyECp06R3pZhIINSUJyihIBY', '2016-12-19 05:25:03', '2016-12-19 05:25:03');
INSERT INTO `persistences` VALUES (110, 15, 'tRt67TYJ8Wy92zN6S4A8crMzcDJh0Onp', '2016-12-19 08:42:56', '2016-12-19 08:42:56');
INSERT INTO `persistences` VALUES (111, 9, 'vudzU5v3oRDvO8XnT5vVl4dErkAF8L6l', '2016-12-20 10:38:53', '2016-12-20 10:38:53');
INSERT INTO `persistences` VALUES (112, 9, 'KeblFmEBvSCCvj96qMBeJVlgOHoUlHHw', '2016-12-20 10:40:11', '2016-12-20 10:40:11');
INSERT INTO `persistences` VALUES (113, 9, 'YKbemUrMwup4JT45whRiHBdsbsXm7gP9', '2016-12-20 10:40:12', '2016-12-20 10:40:12');
INSERT INTO `persistences` VALUES (114, 9, 'UVd8f7eZKx6UCVDyFbGn4Nxm0I9EcQVV', '2016-12-20 10:41:28', '2016-12-20 10:41:28');
INSERT INTO `persistences` VALUES (115, 1, 'aE5jBh8CcglbCD0GaWndEB5UjBvNPmyv', '2016-12-20 10:43:12', '2016-12-20 10:43:12');
INSERT INTO `persistences` VALUES (116, 1, 'VL3nZEpufAD1mPApRjfhOIogkY5CNeR3', '2016-12-20 10:44:38', '2016-12-20 10:44:38');
INSERT INTO `persistences` VALUES (117, 1, 'rooOaORlkRCcGfhn4cS8LzpDfQvwH1wn', '2016-12-20 10:46:57', '2016-12-20 10:46:57');
INSERT INTO `persistences` VALUES (120, 1, 'XtU5GMYst6gqPPVI8AGbsuepZejoRi3P', '2016-12-20 10:51:07', '2016-12-20 10:51:07');
INSERT INTO `persistences` VALUES (121, 1, 'zrzObsG8MUJd49EGQAqSFILCIyfts3EQ', '2016-12-20 10:51:59', '2016-12-20 10:51:59');
INSERT INTO `persistences` VALUES (122, 1, 'qtKTvKMstsv7lxyRza64eEVYqIdxovYE', '2016-12-20 10:52:25', '2016-12-20 10:52:25');
INSERT INTO `persistences` VALUES (123, 1, '0MiKiOzijSva1iNlTDGzxao6N6JAyE1R', '2016-12-20 10:54:15', '2016-12-20 10:54:15');
INSERT INTO `persistences` VALUES (124, 9, 'pdCjg5wKGUBb8POZimEl6A62aDgXTrOb', '2016-12-20 10:58:20', '2016-12-20 10:58:20');
INSERT INTO `persistences` VALUES (125, 9, 'Hb9nOQ8jPqZkb46PtwjrNLlaHMwzhMBs', '2016-12-20 11:00:38', '2016-12-20 11:00:38');
INSERT INTO `persistences` VALUES (126, 1, 'LZKQsbvadsGuEotAHsU0r5A5Oy4qWBGC', '2016-12-20 11:01:41', '2016-12-20 11:01:41');
INSERT INTO `persistences` VALUES (127, 1, '4egFWx0nRuTxe2DhI6TPDVWGUtZqppJG', '2016-12-20 11:03:07', '2016-12-20 11:03:07');
INSERT INTO `persistences` VALUES (128, 1, 'WY1ICkDPMZApIytiabt3jLFI3GQ1RrlU', '2016-12-20 11:04:41', '2016-12-20 11:04:41');
INSERT INTO `persistences` VALUES (129, 17, 'cCB4YrihwhjYbBhYpw0t1f13Zul9LNBE', '2016-12-20 11:07:22', '2016-12-20 11:07:22');
INSERT INTO `persistences` VALUES (130, 1, '20NzVm4CD2BNSShQ1WwjONGss34lSV2x', '2016-12-20 11:08:09', '2016-12-20 11:08:09');
INSERT INTO `persistences` VALUES (131, 1, 'GC7fBMC1KdFh1uAhV51G6OXEEdDId14E', '2016-12-20 11:09:50', '2016-12-20 11:09:50');
INSERT INTO `persistences` VALUES (132, 1, 'focv40NQCP2cAOBfi4XoS6MDbMhYlN4x', '2016-12-20 11:11:53', '2016-12-20 11:11:53');
INSERT INTO `persistences` VALUES (133, 1, 'ljDLdd9bDfe8ePF4AXfw6IPhm3AJs1e3', '2016-12-20 11:15:23', '2016-12-20 11:15:23');
INSERT INTO `persistences` VALUES (134, 1, '3EcYKXSmh36ThpBR4QQb7GnbEd0Rk04Y', '2016-12-20 11:16:26', '2016-12-20 11:16:26');
INSERT INTO `persistences` VALUES (135, 1, 'aX92NJuaNKWJjwlDPPQRRppJORg9SVVj', '2016-12-20 11:26:35', '2016-12-20 11:26:35');
INSERT INTO `persistences` VALUES (136, 1, 'yTmyYZzBkV7bKNfX0imMUDOsyI2DZzS9', '2016-12-20 11:27:44', '2016-12-20 11:27:44');
INSERT INTO `persistences` VALUES (137, 17, 'o42nIHwmxVFJsOcxeKHhTBmwaiTUMXGc', '2016-12-20 11:28:28', '2016-12-20 11:28:28');
INSERT INTO `persistences` VALUES (138, 1, 'NxPyxYiakluah8oPOVJoMFXcHopbLpIg', '2016-12-20 11:30:23', '2016-12-20 11:30:23');
INSERT INTO `persistences` VALUES (139, 17, '1gG4Zmg5BdKVNowrSXmkOGA1j0A53r8y', '2016-12-20 11:31:12', '2016-12-20 11:31:12');
INSERT INTO `persistences` VALUES (141, 17, 'TbUEzu4SffbBJc0ZX6vgTzKftTrGsg4R', '2016-12-20 12:05:26', '2016-12-20 12:05:26');
INSERT INTO `persistences` VALUES (143, 19, 'CCjp4vBrKyzb55lV6F8FWobGLbrG6i8i', '2016-12-21 06:06:10', '2016-12-21 06:06:10');
INSERT INTO `persistences` VALUES (148, 23, '0LfZRtD7me29imeRYs4ukszP4DJWRoqy', '2016-12-22 07:35:31', '2016-12-22 07:35:31');
INSERT INTO `persistences` VALUES (151, 11, 'tJ07NYqR9bJ3A0heUSRk85nZHWTpuyq3', '2016-12-27 09:16:39', '2016-12-27 09:16:39');
INSERT INTO `persistences` VALUES (154, 14, 'iT0KzJjZE9geWJv9d9t7eFEeR5gOn64b', '2016-12-28 09:53:47', '2016-12-28 09:53:47');
INSERT INTO `persistences` VALUES (159, 11, 'Q2C8KGjZS1aaKuzSzQgVfv9mB9Xsxyzk', '2017-01-04 08:46:42', '2017-01-04 08:46:42');
INSERT INTO `persistences` VALUES (160, 11, 'vovDyslVAE3WzZtJaPguaB3x1gWvZteX', '2017-01-06 08:24:25', '2017-01-06 08:24:25');
INSERT INTO `persistences` VALUES (161, 11, 'Soq3qruy6ImN4IahsOIg69OiOVZLH4Bb', '2017-01-09 16:42:27', '2017-01-09 16:42:27');
INSERT INTO `persistences` VALUES (162, 11, 'TrGrcoGqSlU9cnb0FjQ1YZBwVfP1rFD1', '2017-01-25 07:48:37', '2017-01-25 07:48:37');
INSERT INTO `persistences` VALUES (163, 11, 'RNmg4OfpuZnWb8rcZCgPMFdYtTEbYy4j', '2017-01-30 09:17:31', '2017-01-30 09:17:31');
INSERT INTO `persistences` VALUES (165, 11, 'HxVx8UPRLCRofYrnSfIp37XkVMuAwfFP', '2017-01-30 17:42:03', '2017-01-30 17:42:03');
INSERT INTO `persistences` VALUES (166, 1, 'csMRyVDU0cY9Uu4x0tBnoteeLgWCEfYC', '2017-01-31 09:23:38', '2017-01-31 09:23:38');
INSERT INTO `persistences` VALUES (167, 15, 'rJnb4NFvJXtyJdHB3w5xbzbyxaAKS8M8', '2017-02-03 12:42:44', '2017-02-03 12:42:44');
INSERT INTO `persistences` VALUES (168, 1, 'm9vLQ0VlbTw6CUI14fLApNScNolwXEVz', '2017-02-05 17:20:37', '2017-02-05 17:20:37');
INSERT INTO `persistences` VALUES (169, 1, 'ud06r2XatZZ26vCuItQFPQewOYbCMvzq', '2017-02-06 09:08:13', '2017-02-06 09:08:13');
INSERT INTO `persistences` VALUES (170, 24, '6AcwnQ15LmYa45f04gHImAVgt2cirEGG', '2017-02-06 12:10:43', '2017-02-06 12:10:43');
INSERT INTO `persistences` VALUES (171, 14, 'MxS29cKSwNFGvq42X4d3EeSv5lVh9dC0', '2017-02-15 12:24:58', '2017-02-15 12:24:58');
INSERT INTO `persistences` VALUES (176, 1, 'JR0WZHP6GuE6NA7Ae2BKJhVfrKpDelD5', '2017-02-15 18:06:26', '2017-02-15 18:06:26');
INSERT INTO `persistences` VALUES (180, 11, 'fVAYWrVG82rDKfMCGKwqPH2A78eHbk20', '2017-02-17 19:18:34', '2017-02-17 19:18:34');
INSERT INTO `persistences` VALUES (181, 1, '1nQlAcvkYznm8NYCgLFJ94OSBdBuM5ZI', '2017-03-07 09:24:03', '2017-03-07 09:24:03');
INSERT INTO `persistences` VALUES (182, 1, 'Tfh93mvr3kpKMPJMCb5gtquOJCAGDX3Y', '2017-03-07 15:32:17', '2017-03-07 15:32:17');
INSERT INTO `persistences` VALUES (183, 1, 'Wcz5yCNprjJ4VY3MyXmFpG2GBYBzcbcQ', '2017-03-07 16:23:22', '2017-03-07 16:23:22');
INSERT INTO `persistences` VALUES (184, 1, 'KcY31JLwiDbbES4SAv969oj7WaeXlmKV', '2017-03-07 17:26:32', '2017-03-07 17:26:32');
INSERT INTO `persistences` VALUES (185, 15, 'oJpwe0apPr5rfRtHJ30eBcocQ106mUia', '2017-03-09 17:55:25', '2017-03-09 17:55:25');
INSERT INTO `persistences` VALUES (186, 15, 'amFjmWOqrwQkAekC12wIAgGgrcrAy6Bq', '2017-03-10 17:43:02', '2017-03-10 17:43:02');
INSERT INTO `persistences` VALUES (187, 14, 'ikbhHB2LDEKOrOWoyWsMBxZ7CJkTx1Az', '2017-04-01 18:28:59', '2017-04-01 18:28:59');
INSERT INTO `persistences` VALUES (188, 14, 'TdWLkZqBU7k3cGHXCbotZ32fBScujQOU', '2017-04-07 06:23:11', '2017-04-07 06:23:11');
INSERT INTO `persistences` VALUES (189, 15, 'bA7zxIJjkMG4mu7D53rF61riPIzk7OH2', '2017-04-07 12:24:55', '2017-04-07 12:24:55');
INSERT INTO `persistences` VALUES (190, 15, 'bOKFykGm3hERpyHDWqhq2nQgnzlhsSYK', '2017-04-07 17:18:52', '2017-04-07 17:18:52');
INSERT INTO `persistences` VALUES (191, 15, 'GZqIbPOjmneh1ojVBzPQYlinUWxBWmm0', '2017-04-07 17:20:15', '2017-04-07 17:20:15');
INSERT INTO `persistences` VALUES (192, 14, '5O4SJhvk9oLs8guPFwjf0dnp8TEB9jsP', '2017-04-07 17:21:18', '2017-04-07 17:21:18');
INSERT INTO `persistences` VALUES (193, 14, 'fC4WNlWE8ZZsFroDsmxNZ2btMadyaaz2', '2017-04-07 17:22:42', '2017-04-07 17:22:42');
INSERT INTO `persistences` VALUES (194, 14, '2lp6O8fTbFptXljqVoKNb7BhWt6RGnsg', '2017-04-07 17:23:59', '2017-04-07 17:23:59');
INSERT INTO `persistences` VALUES (195, 15, 'e0Lx7NxNEZe10SKrR203UvgqzKttkYKY', '2017-04-07 17:25:13', '2017-04-07 17:25:13');
INSERT INTO `persistences` VALUES (196, 15, '5XSpzEC5v9kBmjUnFgOTikzojwDJmO6V', '2017-04-07 17:28:52', '2017-04-07 17:28:52');
INSERT INTO `persistences` VALUES (203, 11, 'uidC3Sy2Z5HReN5ZhiKepnyB8EwQwjy1', '2017-05-11 19:43:14', '2017-05-11 19:43:14');
INSERT INTO `persistences` VALUES (207, 15, 'XNfe16LdxftdVTCdgntCJdg90N8VUWIN', '2017-05-11 19:55:18', '2017-05-11 19:55:18');
INSERT INTO `persistences` VALUES (208, 14, 'd2mBos6yURCzGlEhWRs8PhazBhs8JqAH', '2017-05-12 07:17:48', '2017-05-12 07:17:48');
INSERT INTO `persistences` VALUES (209, 24, 'Xh9iRJnADZ135XEGXrVWwvz72mCAvsiJ', '2017-05-18 12:27:46', '2017-05-18 12:27:46');
INSERT INTO `persistences` VALUES (210, 11, 'QjIoBKPMteJFcPJcUSmgZDmUy7AjUuOS', '2017-05-24 09:30:18', '2017-05-24 09:30:18');
INSERT INTO `persistences` VALUES (211, 11, 'QtwXXEVXc4paDK6escZTCV08wSAfq3H7', '2017-05-24 09:59:37', '2017-05-24 09:59:37');
INSERT INTO `persistences` VALUES (213, 24, 'HXiKdPpU9bz3VylyX8ODkebPn6YfU1oi', '2017-05-25 10:11:50', '2017-05-25 10:11:50');
INSERT INTO `persistences` VALUES (214, 11, 'zJDI8VNoyqXHBW4NkVgjHmz9RrkjdFv3', '2017-05-25 16:25:46', '2017-05-25 16:25:46');
INSERT INTO `persistences` VALUES (216, 11, 'J0ZpKWMNRsVB45l5jtsqP7fIWxl6OFq4', '2017-05-26 09:07:23', '2017-05-26 09:07:23');
INSERT INTO `persistences` VALUES (217, 11, 'O4WSSDOlHa3DGk5g5XkZ2ilJv9BDE7vX', '2017-06-05 09:51:11', '2017-06-05 09:51:11');
INSERT INTO `persistences` VALUES (218, 11, 'r17FvnU8rNr27fRRsvYK1UWj6ZwfVwAc', '2017-06-08 08:59:54', '2017-06-08 08:59:54');
INSERT INTO `persistences` VALUES (219, 11, '2nrA5NeQw8oBlz1Ue8ENvQ3GiuULtS0H', '2017-06-08 15:45:13', '2017-06-08 15:45:13');
INSERT INTO `persistences` VALUES (220, 11, '8zLxayhsCry5Sm1EpMugIbYVf0yJJfEI', '2017-06-08 17:34:45', '2017-06-08 17:34:45');
INSERT INTO `persistences` VALUES (221, 11, 'AHgH3nsevg9UcGAYuHr2VOExRao8IDpQ', '2017-07-03 09:44:48', '2017-07-03 09:44:48');
INSERT INTO `persistences` VALUES (222, 11, 'uuvuLJeA3bhGPwXgDSTgfmXjFe9AHhp4', '2017-07-05 08:48:19', '2017-07-05 08:48:19');
INSERT INTO `persistences` VALUES (223, 11, '4KMgSqb5ml1wYDVAwqK7T9YK3fEOzSGz', '2017-07-05 12:12:36', '2017-07-05 12:12:36');
INSERT INTO `persistences` VALUES (225, 1, 'IPXtf1AOzH66aCC3C7JaM3fglMpCq8RY', '2017-07-06 10:34:10', '2017-07-06 10:34:10');
COMMIT;

-- ----------------------------
-- Table structure for ratings
-- ----------------------------
DROP TABLE IF EXISTS `ratings`;
CREATE TABLE `ratings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `rateable_id` int(10) unsigned NOT NULL,
  `rateable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ratings_rateable_id_rateable_type_index` (`rateable_id`,`rateable_type`),
  KEY `ratings_user_id_index` (`user_id`),
  KEY `ratings_rateable_id_index` (`rateable_id`),
  KEY `ratings_rateable_type_index` (`rateable_type`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ratings
-- ----------------------------
BEGIN;
INSERT INTO `ratings` VALUES (1, '2016-09-04 18:24:41', '2016-09-04 18:24:41', 3, 3, 'App\\Ad', 1);
INSERT INTO `ratings` VALUES (2, '2016-09-04 18:30:54', '2016-09-04 18:30:54', 4, 3, 'App\\Ad', 1);
INSERT INTO `ratings` VALUES (3, '2016-09-05 18:40:45', '2016-09-05 18:40:45', 4, 2, 'App\\Ad', 11);
INSERT INTO `ratings` VALUES (4, '2016-09-05 18:47:06', '2016-09-05 18:47:06', 3, 2, 'App\\Ad', 11);
INSERT INTO `ratings` VALUES (5, '2016-09-05 18:47:06', '2016-09-05 18:47:06', 0, 2, 'App\\Ad', 11);
INSERT INTO `ratings` VALUES (6, '2017-01-30 22:30:54', '2017-01-30 22:30:54', 5, 3, 'App\\Ad', 11);
INSERT INTO `ratings` VALUES (7, '2017-01-30 22:31:06', '2017-01-30 22:31:06', 5, 3, 'App\\Ad', 11);
INSERT INTO `ratings` VALUES (8, '2017-01-30 22:31:08', '2017-01-30 22:31:08', 0, 3, 'App\\Ad', 11);
INSERT INTO `ratings` VALUES (9, '2017-01-30 22:31:11', '2017-01-30 22:31:11', 5, 3, 'App\\Ad', 11);
INSERT INTO `ratings` VALUES (10, '2017-01-30 22:31:12', '2017-01-30 22:31:12', 0, 3, 'App\\Ad', 11);
INSERT INTO `ratings` VALUES (11, '2017-01-30 22:31:12', '2017-01-30 22:31:12', 0, 3, 'App\\Ad', 11);
INSERT INTO `ratings` VALUES (12, '2017-01-30 22:31:12', '2017-01-30 22:31:12', 5, 3, 'App\\Ad', 11);
INSERT INTO `ratings` VALUES (13, '2017-01-30 22:31:12', '2017-01-30 22:31:12', 5, 3, 'App\\Ad', 11);
INSERT INTO `ratings` VALUES (14, '2017-01-30 22:31:12', '2017-01-30 22:31:12', 0, 3, 'App\\Ad', 11);
INSERT INTO `ratings` VALUES (15, '2017-01-30 22:31:12', '2017-01-30 22:31:12', 5, 3, 'App\\Ad', 11);
INSERT INTO `ratings` VALUES (16, '2017-01-30 22:31:13', '2017-01-30 22:31:13', 0, 3, 'App\\Ad', 11);
INSERT INTO `ratings` VALUES (17, '2017-01-30 22:31:13', '2017-01-30 22:31:13', 0, 3, 'App\\Ad', 11);
INSERT INTO `ratings` VALUES (18, '2017-01-30 22:31:13', '2017-01-30 22:31:13', 5, 3, 'App\\Ad', 11);
INSERT INTO `ratings` VALUES (19, '2017-01-30 22:31:13', '2017-01-30 22:31:13', 5, 3, 'App\\Ad', 11);
INSERT INTO `ratings` VALUES (20, '2017-01-30 22:31:13', '2017-01-30 22:31:13', 0, 3, 'App\\Ad', 11);
INSERT INTO `ratings` VALUES (21, '2017-02-15 23:10:10', '2017-02-15 23:10:10', 5, 2, 'App\\Ad', 1);
INSERT INTO `ratings` VALUES (22, '2017-02-15 23:10:13', '2017-02-15 23:10:13', 5, 3, 'App\\Ad', 1);
INSERT INTO `ratings` VALUES (23, '2017-02-15 23:10:13', '2017-02-15 23:10:13', 5, 4, 'App\\Ad', 1);
INSERT INTO `ratings` VALUES (24, '2017-02-15 23:10:18', '2017-02-15 23:10:18', 5, 11, 'App\\Ad', 1);
INSERT INTO `ratings` VALUES (25, '2017-02-15 23:10:21', '2017-02-15 23:10:21', 5, 10, 'App\\Ad', 1);
INSERT INTO `ratings` VALUES (26, '2017-02-15 23:10:25', '2017-02-15 23:10:25', 5, 8, 'App\\Ad', 1);
INSERT INTO `ratings` VALUES (27, '2017-02-15 23:10:29', '2017-02-15 23:10:29', 5, 12, 'App\\Ad', 1);
INSERT INTO `ratings` VALUES (28, '2017-02-15 23:11:11', '2017-02-15 23:11:11', 5, 2, 'App\\Ad', 1);
COMMIT;

-- ----------------------------
-- Table structure for reminders
-- ----------------------------
DROP TABLE IF EXISTS `reminders`;
CREATE TABLE `reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for resources
-- ----------------------------
DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price_description` text COLLATE utf8_unicode_ci NOT NULL,
  `business_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for reviews
-- ----------------------------
DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `reviewable_id` int(10) unsigned NOT NULL,
  `reviewable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `author_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_reviewable_id_reviewable_type_index` (`reviewable_id`,`reviewable_type`),
  KEY `reviews_author_id_author_type_index` (`author_id`,`author_type`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of reviews
-- ----------------------------
BEGIN;
INSERT INTO `reviews` VALUES (1, 'changed review', 'I changed the reciew', 5, 2, 'App\\Ad', 11, 'App\\User', '2016-09-05 18:57:15', '2016-09-05 19:39:21');
INSERT INTO `reviews` VALUES (2, 'General', 'teststs', 1, 2, 'App\\Ad', 11, 'App\\User', '2016-09-05 18:59:18', '2016-09-05 18:59:18');
INSERT INTO `reviews` VALUES (3, 'General', 'teststs', 1, 2, 'App\\Ad', 11, 'App\\User', '2016-09-05 18:59:47', '2016-09-05 18:59:47');
INSERT INTO `reviews` VALUES (4, 'General', 'teststs', 1, 2, 'App\\Ad', 11, 'App\\User', '2016-09-05 19:00:05', '2016-09-05 19:00:05');
INSERT INTO `reviews` VALUES (5, 'New Review From myself', 'Excellent', 1, 8, 'App\\Ad', 14, 'App\\User', '2016-12-19 08:30:35', '2016-12-19 08:30:35');
INSERT INTO `reviews` VALUES (6, 'New Review From myself', 'test', 4, 8, 'App\\Ad', 15, 'App\\User', '2016-12-19 09:09:50', '2016-12-19 09:09:50');
INSERT INTO `reviews` VALUES (7, 'New Review From myself', 'test', 5, 8, 'App\\Ad', 15, 'App\\User', '2016-12-19 09:14:39', '2016-12-19 09:14:39');
INSERT INTO `reviews` VALUES (8, 'New Review From myself', 'test', 4, 8, 'App\\Ad', 15, 'App\\User', '2016-12-19 09:15:43', '2016-12-19 09:15:43');
INSERT INTO `reviews` VALUES (9, 'New Review From myself', 'test', 4, 8, 'App\\Event', 15, 'App\\User', '2016-12-19 09:16:19', '2016-12-19 09:16:19');
INSERT INTO `reviews` VALUES (10, 'New Review From myself', 'test', 4, 8, 'App\\Event', 15, 'App\\User', '2016-12-19 09:17:08', '2016-12-19 09:17:08');
COMMIT;

-- ----------------------------
-- Table structure for role_users
-- ----------------------------
DROP TABLE IF EXISTS `role_users`;
CREATE TABLE `role_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of role_users
-- ----------------------------
BEGIN;
INSERT INTO `role_users` VALUES (1, 1, '2016-07-13 18:16:33', '2016-07-13 18:16:33');
INSERT INTO `role_users` VALUES (2, 3, '2016-08-30 09:12:14', '2016-08-30 09:12:14');
INSERT INTO `role_users` VALUES (3, 2, '2016-08-30 09:16:32', '2016-08-30 09:16:32');
INSERT INTO `role_users` VALUES (4, 2, '2016-08-30 09:30:32', '2016-08-30 09:30:32');
INSERT INTO `role_users` VALUES (6, 2, '2016-08-30 09:35:03', '2016-08-30 09:35:03');
INSERT INTO `role_users` VALUES (7, 3, '2016-08-30 09:37:33', '2016-08-30 09:37:33');
INSERT INTO `role_users` VALUES (9, 2, '2016-08-30 12:07:33', '2016-08-30 12:07:33');
INSERT INTO `role_users` VALUES (10, 2, '2016-08-30 20:04:07', '2016-08-30 20:04:07');
INSERT INTO `role_users` VALUES (11, 3, '2016-09-01 18:11:55', '2016-09-01 18:11:55');
INSERT INTO `role_users` VALUES (12, 3, '2016-09-01 18:14:58', '2016-09-01 18:14:58');
INSERT INTO `role_users` VALUES (13, 3, '2016-09-01 18:22:19', '2016-09-01 18:22:19');
INSERT INTO `role_users` VALUES (14, 4, '2016-09-01 18:57:18', '2016-09-01 18:57:18');
INSERT INTO `role_users` VALUES (15, 5, '2016-09-01 19:19:39', '2016-09-01 19:19:39');
INSERT INTO `role_users` VALUES (18, 2, '2016-12-21 06:04:04', '2016-12-21 06:04:04');
INSERT INTO `role_users` VALUES (19, 2, '2016-12-21 06:06:10', '2016-12-21 06:06:10');
INSERT INTO `role_users` VALUES (20, 2, '2016-12-21 06:40:26', '2016-12-21 06:40:26');
INSERT INTO `role_users` VALUES (24, 5, '2017-02-06 12:10:43', '2017-02-06 12:10:43');
INSERT INTO `role_users` VALUES (25, 2, '2017-05-11 19:52:49', '2017-05-11 19:52:49');
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` VALUES (1, 'admin', 'Admin', '{\"admin\":1}', '2016-07-13 18:16:33', '2016-07-13 18:16:33');
INSERT INTO `roles` VALUES (2, 'user', 'User', NULL, '2016-07-13 18:16:33', '2016-07-13 18:16:33');
INSERT INTO `roles` VALUES (3, 'business', 'Business', NULL, '2016-08-30 09:10:36', '2016-08-30 09:10:36');
INSERT INTO `roles` VALUES (4, 'freelancer', 'Freelancer', NULL, '2016-08-30 09:11:04', '2016-08-30 09:11:04');
INSERT INTO `roles` VALUES (5, 'event-organizer', 'Event Organizer', NULL, '2016-09-01 19:13:51', '2016-09-01 19:13:51');
COMMIT;

-- ----------------------------
-- Table structure for taggable_taggables
-- ----------------------------
DROP TABLE IF EXISTS `taggable_taggables`;
CREATE TABLE `taggable_taggables` (
  `tag_id` int(11) NOT NULL,
  `taggable_id` int(10) unsigned NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `taggable_taggables_taggable_id_index` (`taggable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of taggable_taggables
-- ----------------------------
BEGIN;
INSERT INTO `taggable_taggables` VALUES (2, 1, 'App\\News', '2016-08-17 17:42:12', '2016-08-17 17:42:12');
COMMIT;

-- ----------------------------
-- Table structure for taggable_tags
-- ----------------------------
DROP TABLE IF EXISTS `taggable_tags`;
CREATE TABLE `taggable_tags` (
  `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `normalized` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of taggable_tags
-- ----------------------------
BEGIN;
INSERT INTO `taggable_tags` VALUES (1, 'test', 'test', '2016-08-17 17:06:04', '2016-08-17 17:06:04');
INSERT INTO `taggable_tags` VALUES (2, 'test retest', 'test retest', '2016-08-17 17:06:25', '2016-08-17 17:06:25');
COMMIT;

-- ----------------------------
-- Table structure for tasks
-- ----------------------------
DROP TABLE IF EXISTS `tasks`;
CREATE TABLE `tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `finished` tinyint(4) NOT NULL DEFAULT '0',
  `task_description` text COLLATE utf8_unicode_ci NOT NULL,
  `task_deadline` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for testimonials
-- ----------------------------
DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE `testimonials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of testimonials
-- ----------------------------
BEGIN;
INSERT INTO `testimonials` VALUES (1, 'Magda Guzman', 'Business owner', 'Hacienda Las Americas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2017-03-07 15:33:26', '2017-03-07 15:33:26');
INSERT INTO `testimonials` VALUES (2, 'Kuber Karki', 'Web Developer', 'EventDay Planner', 'This is excellent site. Here we can manage and host event and also manage our places and properties. Freelancer are also allowed. Online Ticket booking. Payment system is excellent.', '2017-03-07 15:38:29', '2017-03-07 15:38:29');
COMMIT;

-- ----------------------------
-- Table structure for threads
-- ----------------------------
DROP TABLE IF EXISTS `threads`;
CREATE TABLE `threads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of threads
-- ----------------------------
BEGIN;
INSERT INTO `threads` VALUES (2, 'hi', '2016-09-07 08:09:35', '2016-09-07 09:32:10', NULL);
INSERT INTO `threads` VALUES (14, 'Message on Ad-New Freelancer Ad', '2016-12-27 08:31:28', '2016-12-27 08:31:28', NULL);
INSERT INTO `threads` VALUES (12, 'Message on Ad-Panga Party Venue', '2016-09-07 11:33:02', '2016-09-07 11:33:03', NULL);
INSERT INTO `threads` VALUES (11, 'Message on Ad-Panga Party Venue', '2016-09-07 11:32:29', '2016-09-07 11:32:29', NULL);
INSERT INTO `threads` VALUES (13, 'Message on Ad-New Freelancer Ad', '2016-12-27 08:27:29', '2016-12-27 08:27:29', NULL);
INSERT INTO `threads` VALUES (9, 'Message on Ad-Panga Party Venue', '2016-09-07 11:21:16', '2016-09-07 11:21:16', NULL);
INSERT INTO `threads` VALUES (10, 'Message on Ad-Panga Party Venue', '2016-09-07 11:31:35', '2016-09-07 11:34:13', NULL);
INSERT INTO `threads` VALUES (15, 'Message on Ad-kuber karki', '2016-12-27 08:32:59', '2016-12-27 08:33:00', NULL);
INSERT INTO `threads` VALUES (16, 'Message on Ad-kuber karki', '2016-12-27 08:33:46', '2016-12-27 08:36:17', NULL);
INSERT INTO `threads` VALUES (17, 'Message on Ad-kuber karki', '2016-12-27 08:34:48', '2016-12-27 08:34:48', NULL);
INSERT INTO `threads` VALUES (18, 'Message on Event-kuber karki', '2017-02-15 16:58:36', '2017-02-15 17:00:45', NULL);
COMMIT;

-- ----------------------------
-- Table structure for throttle
-- ----------------------------
DROP TABLE IF EXISTS `throttle`;
CREATE TABLE `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of throttle
-- ----------------------------
BEGIN;
INSERT INTO `throttle` VALUES (1, NULL, 'global', NULL, '2016-09-07 10:33:15', '2016-09-07 10:33:15');
INSERT INTO `throttle` VALUES (2, NULL, 'ip', '::1', '2016-09-07 10:33:15', '2016-09-07 10:33:15');
INSERT INTO `throttle` VALUES (3, 1, 'user', NULL, '2016-09-07 10:33:15', '2016-09-07 10:33:15');
INSERT INTO `throttle` VALUES (4, NULL, 'global', NULL, '2016-09-07 11:30:37', '2016-09-07 11:30:37');
INSERT INTO `throttle` VALUES (5, NULL, 'ip', '::1', '2016-09-07 11:30:37', '2016-09-07 11:30:37');
INSERT INTO `throttle` VALUES (6, 1, 'user', NULL, '2016-09-07 11:30:37', '2016-09-07 11:30:37');
INSERT INTO `throttle` VALUES (7, NULL, 'global', NULL, '2016-09-07 17:12:31', '2016-09-07 17:12:31');
INSERT INTO `throttle` VALUES (8, NULL, 'ip', '::1', '2016-09-07 17:12:31', '2016-09-07 17:12:31');
INSERT INTO `throttle` VALUES (9, 1, 'user', NULL, '2016-09-07 17:12:31', '2016-09-07 17:12:31');
INSERT INTO `throttle` VALUES (10, NULL, 'global', NULL, '2016-09-23 09:18:39', '2016-09-23 09:18:39');
INSERT INTO `throttle` VALUES (11, NULL, 'ip', '::1', '2016-09-23 09:18:39', '2016-09-23 09:18:39');
INSERT INTO `throttle` VALUES (12, 14, 'user', NULL, '2016-09-23 09:18:39', '2016-09-23 09:18:39');
INSERT INTO `throttle` VALUES (13, NULL, 'global', NULL, '2016-12-19 08:41:01', '2016-12-19 08:41:01');
INSERT INTO `throttle` VALUES (14, NULL, 'ip', '::1', '2016-12-19 08:41:01', '2016-12-19 08:41:01');
INSERT INTO `throttle` VALUES (15, NULL, 'global', NULL, '2016-12-27 07:43:55', '2016-12-27 07:43:55');
INSERT INTO `throttle` VALUES (16, NULL, 'ip', '::1', '2016-12-27 07:43:55', '2016-12-27 07:43:55');
INSERT INTO `throttle` VALUES (17, 15, 'user', NULL, '2016-12-27 07:43:55', '2016-12-27 07:43:55');
INSERT INTO `throttle` VALUES (18, NULL, 'global', NULL, '2016-12-28 09:31:51', '2016-12-28 09:31:51');
INSERT INTO `throttle` VALUES (19, NULL, 'ip', '::1', '2016-12-28 09:31:51', '2016-12-28 09:31:51');
INSERT INTO `throttle` VALUES (20, 14, 'user', NULL, '2016-12-28 09:31:51', '2016-12-28 09:31:51');
INSERT INTO `throttle` VALUES (21, NULL, 'global', NULL, '2017-01-09 16:42:24', '2017-01-09 16:42:24');
INSERT INTO `throttle` VALUES (22, NULL, 'ip', '::1', '2017-01-09 16:42:24', '2017-01-09 16:42:24');
INSERT INTO `throttle` VALUES (23, 11, 'user', NULL, '2017-01-09 16:42:24', '2017-01-09 16:42:24');
INSERT INTO `throttle` VALUES (24, NULL, 'global', NULL, '2017-01-30 16:30:45', '2017-01-30 16:30:45');
INSERT INTO `throttle` VALUES (25, NULL, 'ip', '::1', '2017-01-30 16:30:45', '2017-01-30 16:30:45');
INSERT INTO `throttle` VALUES (26, NULL, 'global', NULL, '2017-01-31 09:23:26', '2017-01-31 09:23:26');
INSERT INTO `throttle` VALUES (27, NULL, 'ip', '::1', '2017-01-31 09:23:26', '2017-01-31 09:23:26');
INSERT INTO `throttle` VALUES (28, 1, 'user', NULL, '2017-01-31 09:23:26', '2017-01-31 09:23:26');
INSERT INTO `throttle` VALUES (29, NULL, 'global', NULL, '2017-01-31 09:23:31', '2017-01-31 09:23:31');
INSERT INTO `throttle` VALUES (30, NULL, 'ip', '::1', '2017-01-31 09:23:32', '2017-01-31 09:23:32');
INSERT INTO `throttle` VALUES (31, 1, 'user', NULL, '2017-01-31 09:23:32', '2017-01-31 09:23:32');
INSERT INTO `throttle` VALUES (32, NULL, 'global', NULL, '2017-02-03 12:41:56', '2017-02-03 12:41:56');
INSERT INTO `throttle` VALUES (33, NULL, 'ip', '::1', '2017-02-03 12:41:57', '2017-02-03 12:41:57');
INSERT INTO `throttle` VALUES (34, NULL, 'global', NULL, '2017-03-07 15:32:01', '2017-03-07 15:32:01');
INSERT INTO `throttle` VALUES (35, NULL, 'ip', '::1', '2017-03-07 15:32:01', '2017-03-07 15:32:01');
INSERT INTO `throttle` VALUES (36, 1, 'user', NULL, '2017-03-07 15:32:01', '2017-03-07 15:32:01');
INSERT INTO `throttle` VALUES (37, NULL, 'global', NULL, '2017-03-07 15:32:09', '2017-03-07 15:32:09');
INSERT INTO `throttle` VALUES (38, NULL, 'ip', '::1', '2017-03-07 15:32:10', '2017-03-07 15:32:10');
INSERT INTO `throttle` VALUES (39, 1, 'user', NULL, '2017-03-07 15:32:10', '2017-03-07 15:32:10');
INSERT INTO `throttle` VALUES (40, NULL, 'global', NULL, '2017-07-06 10:34:03', '2017-07-06 10:34:03');
INSERT INTO `throttle` VALUES (41, NULL, 'ip', '::1', '2017-07-06 10:34:03', '2017-07-06 10:34:03');
INSERT INTO `throttle` VALUES (42, 1, 'user', NULL, '2017-07-06 10:34:03', '2017-07-06 10:34:03');
COMMIT;

-- ----------------------------
-- Table structure for user_counter
-- ----------------------------
DROP TABLE IF EXISTS `user_counter`;
CREATE TABLE `user_counter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `object_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_counter_class_name_index` (`class_name`),
  KEY `user_counter_object_id_index` (`object_id`),
  KEY `user_counter_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user_counter
-- ----------------------------
BEGIN;
INSERT INTO `user_counter` VALUES (10, 'app\\_ad', 4, 11, 'like', '2016-09-26 02:17:03', '2016-09-26 02:17:03');
INSERT INTO `user_counter` VALUES (9, 'app\\_ad', 4, 11, 'view', '2016-09-26 02:16:08', '2016-09-26 02:16:08');
INSERT INTO `user_counter` VALUES (11, 'app\\_ad', 3, 11, 'view', '2016-09-26 02:25:54', '2016-09-26 02:25:54');
INSERT INTO `user_counter` VALUES (12, 'app\\_ad', 3, 11, 'like', '2016-09-26 02:25:59', '2016-09-26 02:25:59');
INSERT INTO `user_counter` VALUES (13, 'app\\_ad', 4, 14, 'view', '2016-10-05 19:32:50', '2016-10-05 19:32:50');
INSERT INTO `user_counter` VALUES (14, 'app\\_ad', 3, 14, 'view', '2016-10-05 20:10:27', '2016-10-05 20:10:27');
INSERT INTO `user_counter` VALUES (15, 'app\\_ad', 8, 14, 'view', '2016-12-19 08:24:54', '2016-12-19 08:24:54');
INSERT INTO `user_counter` VALUES (16, 'app\\_ad', 8, 15, 'view', '2016-12-19 09:09:52', '2016-12-19 09:09:52');
INSERT INTO `user_counter` VALUES (17, 'app\\_event', 8, 15, 'like', '2016-12-27 08:43:33', '2016-12-27 08:43:33');
INSERT INTO `user_counter` VALUES (18, 'app\\_ad', 2, 11, 'view', '2016-12-27 10:09:59', '2016-12-27 10:09:59');
INSERT INTO `user_counter` VALUES (19, 'app\\_ad', 3, 1, 'view', '2017-02-15 19:31:33', '2017-02-15 19:31:33');
INSERT INTO `user_counter` VALUES (20, 'app\\_ad', 2, 14, 'view', '2017-02-17 17:17:33', '2017-02-17 17:17:33');
INSERT INTO `user_counter` VALUES (21, 'app\\_ad', 5, 1, 'view', '2017-02-17 18:23:32', '2017-02-17 18:23:32');
INSERT INTO `user_counter` VALUES (22, 'app\\_ad', 10, 1, 'view', '2017-03-07 22:30:55', '2017-03-07 22:30:55');
INSERT INTO `user_counter` VALUES (23, 'app\\_ad', 2, 1, 'view', '2017-03-07 22:35:41', '2017-03-07 22:35:41');
INSERT INTO `user_counter` VALUES (24, 'app\\_ad', 3, 24, 'view', '2017-05-25 10:27:51', '2017-05-25 10:27:51');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `pic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `portfolio` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'admin@admin.com', '$2y$10$ucTsptEoSOA4OXHWXzi3aO3kP3I.oEwiSW.jlj0lrNWJIC0.rJbSG', NULL, '2017-07-06 10:34:10', 'John', 'Doe', '2016-07-13 18:16:32', '2017-07-06 10:34:10', NULL, NULL, NULL, '0000-00-00', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (2, 'kuberkarki@hotmail.com', '$2y$10$SApkQqf3tnNzcMSbeR9bnO0BZkHkgspDsoE4KzuMegk6sVqTyz5Tq', NULL, '2016-09-01 12:25:14', 'kuber', 'karki', '2016-08-17 12:24:04', '2016-09-01 12:25:14', NULL, NULL, 'male', '0000-00-00', NULL, 'NP', ' Bagmati', 'Kathmandu', 'Kirtipur', '999', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (4, 'kuberkarki@test.com', '$2y$10$GJ4Cz53hGLzEBRjQvMzygeWSIHTX56VNhOQbjaLAfXbH7rmxzVYT2', NULL, '2016-08-30 09:30:32', 'kuber', 'karki', '2016-08-30 09:30:31', '2016-08-30 09:30:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (5, 'freelancer@eventdayplanner.com', '$2y$10$zzYxEDkLbQb4Y3ma2Etkse4.DkHX23jaCZ2zuq6xHJg0etAIK8bXu', NULL, NULL, 'freelancer', 'event', '2016-08-30 09:33:35', '2016-08-30 09:33:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (6, 'freelancer@eventday.com', '$2y$10$AReSEJe/neu1raE2Jlc3K.tAuIeTjyZyxvWJIDRgGwxhesNw4h0My', NULL, '2016-08-30 09:35:03', 'freelancer', 'event', '2016-08-30 09:35:03', '2016-08-30 09:35:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (7, 'business@eventday.com', '$2y$10$gvcPCXwU7aTPeDTjHHHHGuigqTT4szAOE1D7jaoAcncAWgZ33H/Q.', NULL, '2016-09-01 16:42:16', 'kuber', 'karki', '2016-08-30 09:37:33', '2016-09-01 17:32:58', NULL, 'Our company Description very very short. Hope you will choose this company to work with.', NULL, NULL, NULL, 'NP', 'Bagmati', 'Kathmandu', 'Kirtipur', '9999', NULL, 'Kuber and Family', NULL, '9999955555', NULL, NULL, NULL);
INSERT INTO `users` VALUES (10, 'kuberkark1i@hotmail.com', '$2y$10$2wX8rsBqK1BI4r2mggx1JObuquLWbhsIpTOnWBLsxcgaWUX6awYOK', NULL, '2016-08-30 20:04:07', 'kuber', 'karki', '2016-08-30 20:04:05', '2016-08-30 20:04:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (11, 'business@hotmail.com', '$2y$10$PRrO9hRInIGfONpB867jv.DUOFexBvZdGQL5JoTL5W6OiTETky5bq', NULL, '2017-07-06 08:53:09', NULL, NULL, '2016-09-01 18:11:54', '2017-07-06 08:53:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'This is portfolio');
INSERT INTO `users` VALUES (12, 'kubz@hotmail.com', '$2y$10$82cPfk7.ddlw7sM4g3X8Je8VMQRhlOtNpVUNFDa9Y/lxX5lt5Lzn6', NULL, '2016-09-01 18:14:59', 'kuber', 'karki', '2016-09-01 18:14:58', '2016-09-01 18:14:59', NULL, 'hort description of kubz1', NULL, NULL, NULL, 'NP', 'Alabama', 'Select', 'test', '8989', NULL, 'kubz1', '9898989', '014444', NULL, NULL, NULL);
INSERT INTO `users` VALUES (13, 'kubz2@hotmail.com', '$2y$10$utEvhBD5jghDYNVCK15vt.Q6A2CnvhMMnJt/k7wnCt..GRPabSEg6', NULL, '2016-09-01 18:22:19', 'kuber', 'karki', '2016-09-01 18:22:17', '2017-02-06 09:13:30', NULL, 'Short description', 'male', '0000-00-00', NULL, 'NP', 'Alabama', 'Select', 'test', '8989', NULL, 'kubz2', '9898989', '014444', NULL, NULL, NULL);
INSERT INTO `users` VALUES (14, 'freelancer@hotmail.com', '$2y$10$/l4VL2fIhw/w1PEl3T8qS.Fa2f/RNvBk7O.gUuvU7JJL/iqUk60MC', NULL, '2017-07-13 09:47:56', 'free', 'lancer', '2016-09-01 18:57:18', '2017-07-13 09:47:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'My Portfolio');
INSERT INTO `users` VALUES (15, 'event_organizer@hotmail.com', '$2y$10$etgXlLFEIMMv6IlQhfr5sei9FPwcfkvw2ArKZkiyxpEm49qqGv5g6', NULL, '2017-05-11 19:55:18', 'event', 'organizer', '2016-09-01 19:19:39', '2017-05-11 19:55:18', NULL, 'Short Protfolio', NULL, NULL, 'ERZn4a0pcF.png', 'NP', 'Alabama', 'Select', 'test', '8989', NULL, NULL, '9898989', '014444', NULL, NULL, NULL);
INSERT INTO `users` VALUES (22, '346683276@twitter.com', '$2y$10$pzJMRmCpM.38pk2igBQINeONpgZFldBgP5YPj2EzLzGI/8.on/t8a', NULL, NULL, 'NowInNepal', '', '2016-12-21 11:22:50', '2016-12-21 11:22:50', NULL, NULL, NULL, NULL, 'http://pbs.twimg.com/profile_images/2049011274/0uH3Bcbt_normal', NULL, NULL, NULL, NULL, NULL, 'social', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (24, 'event@hotmail.com', '$2y$10$GLYF8YpdykGM6EBW69DQ5uAuQdIWD9NqLjvjG2HqNpKTD1yqzwNFG', NULL, '2017-05-26 09:06:11', 'events', 'organizers', '2017-02-06 12:10:43', '2017-05-26 09:06:11', NULL, '', NULL, NULL, NULL, 'NP', 'Alabama', 'Select', 'test', '8989', NULL, NULL, '', '', NULL, NULL, NULL);
INSERT INTO `users` VALUES (25, 'karki.kuber@gmail.com', '$2y$10$uMzyMnZ0KON8WCwn8cs1wustgQHANgc7HxoEUk0y2W/gZxfiF66gy', NULL, '2017-05-11 19:52:49', 'kuber', 'karki', '2017-05-11 19:52:47', '2017-05-11 19:52:49', NULL, NULL, NULL, NULL, 'https://lh5.googleusercontent.com/-EDMn_s5LKc0/AAAAAAAAAAI/AAAAAAAABI0/AOcfwpKSXn0/photo.jpg?sz=50', NULL, NULL, NULL, NULL, NULL, 'social', NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for withdrawls
-- ----------------------------
DROP TABLE IF EXISTS `withdrawls`;
CREATE TABLE `withdrawls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `approved` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of withdrawls
-- ----------------------------
BEGIN;
INSERT INTO `withdrawls` VALUES (1, 'via paypal', '11', '100', '2017-07-01', 'Amount transferred via paypal', '1', NULL, '2017-07-06 12:24:21');
INSERT INTO `withdrawls` VALUES (2, 'paypal', '11', '1', '2017-07-06', 'Amount transferred via paypal', '1', '2017-07-06 10:31:52', '2017-07-06 12:23:35');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
