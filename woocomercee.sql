-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 08, 2019 lúc 07:54 AM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `woocomercee`
--
CREATE DATABASE IF NOT EXISTS `woocomercee` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `woocomercee`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-10-03 07:09:46', '2019-10-03 07:09:46', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 10, 'ActionScheduler', '', '', '', '2019-10-03 07:57:16', '2019-10-03 07:57:16', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(3, 10, 'ActionScheduler', '', '', '', '2019-10-03 08:28:32', '2019-10-03 08:28:32', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(4, 10, 'ActionScheduler', '', '', '', '2019-10-03 08:28:32', '2019-10-03 08:28:32', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(5, 11, 'ActionScheduler', '', '', '', '2019-10-03 08:28:32', '2019-10-03 08:28:32', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(6, 12, 'ActionScheduler', '', '', '', '2019-10-03 08:36:38', '2019-10-03 08:36:38', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(7, 12, 'ActionScheduler', '', '', '', '2019-10-03 08:37:41', '2019-10-03 08:37:41', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(8, 12, 'ActionScheduler', '', '', '', '2019-10-03 08:37:43', '2019-10-03 08:37:43', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(9, 11, 'ActionScheduler', '', '', '', '2019-10-03 15:41:57', '2019-10-03 15:41:57', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(10, 11, 'ActionScheduler', '', '', '', '2019-10-03 15:41:57', '2019-10-03 15:41:57', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(11, 26, 'ActionScheduler', '', '', '', '2019-10-03 15:41:57', '2019-10-03 15:41:57', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(12, 26, 'ActionScheduler', '', '', '', '2019-10-03 16:42:52', '2019-10-03 16:42:52', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(13, 26, 'ActionScheduler', '', '', '', '2019-10-03 16:42:52', '2019-10-03 16:42:52', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(14, 27, 'ActionScheduler', '', '', '', '2019-10-03 16:42:52', '2019-10-03 16:42:52', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(15, 27, 'ActionScheduler', '', '', '', '2019-10-03 23:21:44', '2019-10-03 23:21:44', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(16, 27, 'ActionScheduler', '', '', '', '2019-10-03 23:21:44', '2019-10-03 23:21:44', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(17, 28, 'ActionScheduler', '', '', '', '2019-10-03 23:21:44', '2019-10-03 23:21:44', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(18, 28, 'ActionScheduler', '', '', '', '2019-10-04 00:23:13', '2019-10-04 00:23:13', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(19, 28, 'ActionScheduler', '', '', '', '2019-10-04 00:23:13', '2019-10-04 00:23:13', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(20, 70, 'ActionScheduler', '', '', '', '2019-10-04 00:23:13', '2019-10-04 00:23:13', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(21, 70, 'ActionScheduler', '', '', '', '2019-10-04 01:25:01', '2019-10-04 01:25:01', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(22, 70, 'ActionScheduler', '', '', '', '2019-10-04 01:25:01', '2019-10-04 01:25:01', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(23, 73, 'ActionScheduler', '', '', '', '2019-10-04 01:25:01', '2019-10-04 01:25:01', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(24, 73, 'ActionScheduler', '', '', '', '2019-10-04 02:26:15', '2019-10-04 02:26:15', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(25, 73, 'ActionScheduler', '', '', '', '2019-10-04 02:26:15', '2019-10-04 02:26:15', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(26, 74, 'ActionScheduler', '', '', '', '2019-10-04 02:26:15', '2019-10-04 02:26:15', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(27, 74, 'ActionScheduler', '', '', '', '2019-10-04 03:26:33', '2019-10-04 03:26:33', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(28, 74, 'ActionScheduler', '', '', '', '2019-10-04 03:26:33', '2019-10-04 03:26:33', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(29, 76, 'ActionScheduler', '', '', '', '2019-10-04 03:26:33', '2019-10-04 03:26:33', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(30, 76, 'ActionScheduler', '', '', '', '2019-10-04 04:26:39', '2019-10-04 04:26:39', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(31, 76, 'ActionScheduler', '', '', '', '2019-10-04 04:26:39', '2019-10-04 04:26:39', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(32, 93, 'ActionScheduler', '', '', '', '2019-10-04 04:26:40', '2019-10-04 04:26:40', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(33, 93, 'ActionScheduler', '', '', '', '2019-10-04 05:39:23', '2019-10-04 05:39:23', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(34, 93, 'ActionScheduler', '', '', '', '2019-10-04 05:39:23', '2019-10-04 05:39:23', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(35, 96, 'ActionScheduler', '', '', '', '2019-10-04 05:39:23', '2019-10-04 05:39:23', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(36, 96, 'ActionScheduler', '', '', '', '2019-10-04 06:39:47', '2019-10-04 06:39:47', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(37, 96, 'ActionScheduler', '', '', '', '2019-10-04 06:39:47', '2019-10-04 06:39:47', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(38, 99, 'ActionScheduler', '', '', '', '2019-10-04 06:39:47', '2019-10-04 06:39:47', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(39, 99, 'ActionScheduler', '', '', '', '2019-10-04 07:55:54', '2019-10-04 07:55:54', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(40, 99, 'ActionScheduler', '', '', '', '2019-10-04 07:55:54', '2019-10-04 07:55:54', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(41, 100, 'ActionScheduler', '', '', '', '2019-10-04 07:55:54', '2019-10-04 07:55:54', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(42, 100, 'ActionScheduler', '', '', '', '2019-10-04 08:56:41', '2019-10-04 08:56:41', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(43, 100, 'ActionScheduler', '', '', '', '2019-10-04 08:56:41', '2019-10-04 08:56:41', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(44, 101, 'ActionScheduler', '', '', '', '2019-10-04 08:56:41', '2019-10-04 08:56:41', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(45, 101, 'ActionScheduler', '', '', '', '2019-10-04 09:58:10', '2019-10-04 09:58:10', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(46, 101, 'ActionScheduler', '', '', '', '2019-10-04 09:58:10', '2019-10-04 09:58:10', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(47, 102, 'ActionScheduler', '', '', '', '2019-10-04 09:58:10', '2019-10-04 09:58:10', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(48, 102, 'ActionScheduler', '', '', '', '2019-10-04 11:14:03', '2019-10-04 11:14:03', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(49, 102, 'ActionScheduler', '', '', '', '2019-10-04 11:14:03', '2019-10-04 11:14:03', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(50, 103, 'ActionScheduler', '', '', '', '2019-10-04 11:14:03', '2019-10-04 11:14:03', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(51, 103, 'ActionScheduler', '', '', '', '2019-10-04 12:14:40', '2019-10-04 12:14:40', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(52, 103, 'ActionScheduler', '', '', '', '2019-10-04 12:14:40', '2019-10-04 12:14:40', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(53, 118, 'ActionScheduler', '', '', '', '2019-10-04 12:14:40', '2019-10-04 12:14:40', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(54, 118, 'ActionScheduler', '', '', '', '2019-10-04 13:15:05', '2019-10-04 13:15:05', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(55, 118, 'ActionScheduler', '', '', '', '2019-10-04 13:15:05', '2019-10-04 13:15:05', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(56, 119, 'ActionScheduler', '', '', '', '2019-10-04 13:15:05', '2019-10-04 13:15:05', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(57, 119, 'ActionScheduler', '', '', '', '2019-10-04 14:16:25', '2019-10-04 14:16:25', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(58, 119, 'ActionScheduler', '', '', '', '2019-10-04 14:16:25', '2019-10-04 14:16:25', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(59, 124, 'ActionScheduler', '', '', '', '2019-10-04 14:16:25', '2019-10-04 14:16:25', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(60, 124, 'ActionScheduler', '', '', '', '2019-10-04 15:16:27', '2019-10-04 15:16:27', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(61, 124, 'ActionScheduler', '', '', '', '2019-10-04 15:16:27', '2019-10-04 15:16:27', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(62, 125, 'ActionScheduler', '', '', '', '2019-10-04 15:16:27', '2019-10-04 15:16:27', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(63, 125, 'ActionScheduler', '', '', '', '2019-10-04 16:29:08', '2019-10-04 16:29:08', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(64, 125, 'ActionScheduler', '', '', '', '2019-10-04 16:29:08', '2019-10-04 16:29:08', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(65, 132, 'ActionScheduler', '', '', '', '2019-10-04 16:29:08', '2019-10-04 16:29:08', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(66, 132, 'ActionScheduler', '', '', '', '2019-10-05 00:42:28', '2019-10-05 00:42:28', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(67, 132, 'ActionScheduler', '', '', '', '2019-10-05 00:42:28', '2019-10-05 00:42:28', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(68, 133, 'ActionScheduler', '', '', '', '2019-10-05 00:42:28', '2019-10-05 00:42:28', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(69, 133, 'ActionScheduler', '', '', '', '2019-10-05 01:42:52', '2019-10-05 01:42:52', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(70, 133, 'ActionScheduler', '', '', '', '2019-10-05 01:42:52', '2019-10-05 01:42:52', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(71, 135, 'ActionScheduler', '', '', '', '2019-10-05 01:42:52', '2019-10-05 01:42:52', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(72, 135, 'ActionScheduler', '', '', '', '2019-10-05 03:49:40', '2019-10-05 03:49:40', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(73, 135, 'ActionScheduler', '', '', '', '2019-10-05 03:49:40', '2019-10-05 03:49:40', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(74, 136, 'ActionScheduler', '', '', '', '2019-10-05 03:49:40', '2019-10-05 03:49:40', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(75, 136, 'ActionScheduler', '', '', '', '2019-10-05 04:59:37', '2019-10-05 04:59:37', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(76, 136, 'ActionScheduler', '', '', '', '2019-10-05 04:59:37', '2019-10-05 04:59:37', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(77, 137, 'ActionScheduler', '', '', '', '2019-10-05 04:59:37', '2019-10-05 04:59:37', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(78, 137, 'ActionScheduler', '', '', '', '2019-10-05 06:00:09', '2019-10-05 06:00:09', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(79, 137, 'ActionScheduler', '', '', '', '2019-10-05 06:00:09', '2019-10-05 06:00:09', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(80, 138, 'ActionScheduler', '', '', '', '2019-10-05 06:00:09', '2019-10-05 06:00:09', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(81, 138, 'ActionScheduler', '', '', '', '2019-10-05 07:26:27', '2019-10-05 07:26:27', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(82, 138, 'ActionScheduler', '', '', '', '2019-10-05 07:26:27', '2019-10-05 07:26:27', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(83, 139, 'ActionScheduler', '', '', '', '2019-10-05 07:26:27', '2019-10-05 07:26:27', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(84, 139, 'ActionScheduler', '', '', '', '2019-10-05 08:28:23', '2019-10-05 08:28:23', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(85, 139, 'ActionScheduler', '', '', '', '2019-10-05 08:28:23', '2019-10-05 08:28:23', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(86, 142, 'ActionScheduler', '', '', '', '2019-10-05 08:28:23', '2019-10-05 08:28:23', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(87, 142, 'ActionScheduler', '', '', '', '2019-10-05 09:28:29', '2019-10-05 09:28:29', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(88, 142, 'ActionScheduler', '', '', '', '2019-10-05 09:28:29', '2019-10-05 09:28:29', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(89, 143, 'ActionScheduler', '', '', '', '2019-10-05 09:28:29', '2019-10-05 09:28:29', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(90, 143, 'ActionScheduler', '', '', '', '2019-10-05 10:29:15', '2019-10-05 10:29:15', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(91, 143, 'ActionScheduler', '', '', '', '2019-10-05 10:29:15', '2019-10-05 10:29:15', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(92, 144, 'ActionScheduler', '', '', '', '2019-10-05 10:29:16', '2019-10-05 10:29:16', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(93, 144, 'ActionScheduler', '', '', '', '2019-10-05 11:55:10', '2019-10-05 11:55:10', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(94, 144, 'ActionScheduler', '', '', '', '2019-10-05 11:55:10', '2019-10-05 11:55:10', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(95, 145, 'ActionScheduler', '', '', '', '2019-10-05 11:55:10', '2019-10-05 11:55:10', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(96, 145, 'ActionScheduler', '', '', '', '2019-10-05 12:57:02', '2019-10-05 12:57:02', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(97, 145, 'ActionScheduler', '', '', '', '2019-10-05 12:57:03', '2019-10-05 12:57:03', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(98, 146, 'ActionScheduler', '', '', '', '2019-10-05 12:57:03', '2019-10-05 12:57:03', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(99, 146, 'ActionScheduler', '', '', '', '2019-10-05 13:58:10', '2019-10-05 13:58:10', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(100, 146, 'ActionScheduler', '', '', '', '2019-10-05 13:58:10', '2019-10-05 13:58:10', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(101, 147, 'ActionScheduler', '', '', '', '2019-10-05 13:58:11', '2019-10-05 13:58:11', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(102, 147, 'ActionScheduler', '', '', '', '2019-10-05 14:59:26', '2019-10-05 14:59:26', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(103, 147, 'ActionScheduler', '', '', '', '2019-10-05 14:59:26', '2019-10-05 14:59:26', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(104, 148, 'ActionScheduler', '', '', '', '2019-10-05 14:59:26', '2019-10-05 14:59:26', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(105, 148, 'ActionScheduler', '', '', '', '2019-10-05 16:00:14', '2019-10-05 16:00:14', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(106, 148, 'ActionScheduler', '', '', '', '2019-10-05 16:00:14', '2019-10-05 16:00:14', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(107, 149, 'ActionScheduler', '', '', '', '2019-10-05 16:00:14', '2019-10-05 16:00:14', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(108, 149, 'ActionScheduler', '', '', '', '2019-10-06 00:16:15', '2019-10-06 00:16:15', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(109, 149, 'ActionScheduler', '', '', '', '2019-10-06 00:16:15', '2019-10-06 00:16:15', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(110, 150, 'ActionScheduler', '', '', '', '2019-10-06 00:16:15', '2019-10-06 00:16:15', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(111, 150, 'ActionScheduler', '', '', '', '2019-10-06 01:16:26', '2019-10-06 01:16:26', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(112, 150, 'ActionScheduler', '', '', '', '2019-10-06 01:16:26', '2019-10-06 01:16:26', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(113, 151, 'ActionScheduler', '', '', '', '2019-10-06 01:16:26', '2019-10-06 01:16:26', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(114, 151, 'ActionScheduler', '', '', '', '2019-10-06 02:16:50', '2019-10-06 02:16:50', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(115, 151, 'ActionScheduler', '', '', '', '2019-10-06 02:16:51', '2019-10-06 02:16:51', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(116, 152, 'ActionScheduler', '', '', '', '2019-10-06 02:16:51', '2019-10-06 02:16:51', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(117, 152, 'ActionScheduler', '', '', '', '2019-10-06 03:29:45', '2019-10-06 03:29:45', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(118, 152, 'ActionScheduler', '', '', '', '2019-10-06 03:29:45', '2019-10-06 03:29:45', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(119, 153, 'ActionScheduler', '', '', '', '2019-10-06 03:29:45', '2019-10-06 03:29:45', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(120, 153, 'ActionScheduler', '', '', '', '2019-10-06 04:52:33', '2019-10-06 04:52:33', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(121, 153, 'ActionScheduler', '', '', '', '2019-10-06 04:52:33', '2019-10-06 04:52:33', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(122, 154, 'ActionScheduler', '', '', '', '2019-10-06 04:52:33', '2019-10-06 04:52:33', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(123, 154, 'ActionScheduler', '', '', '', '2019-10-06 11:30:26', '2019-10-06 11:30:26', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(124, 154, 'ActionScheduler', '', '', '', '2019-10-06 11:30:26', '2019-10-06 11:30:26', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(125, 155, 'ActionScheduler', '', '', '', '2019-10-06 11:30:26', '2019-10-06 11:30:26', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(126, 155, 'ActionScheduler', '', '', '', '2019-10-06 12:31:52', '2019-10-06 12:31:52', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(127, 155, 'ActionScheduler', '', '', '', '2019-10-06 12:31:52', '2019-10-06 12:31:52', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(128, 163, 'ActionScheduler', '', '', '', '2019-10-06 12:31:52', '2019-10-06 12:31:52', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(129, 163, 'ActionScheduler', '', '', '', '2019-10-06 13:32:15', '2019-10-06 13:32:15', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(130, 163, 'ActionScheduler', '', '', '', '2019-10-06 13:32:15', '2019-10-06 13:32:15', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(131, 164, 'ActionScheduler', '', '', '', '2019-10-06 13:32:16', '2019-10-06 13:32:16', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(132, 164, 'ActionScheduler', '', '', '', '2019-10-06 14:53:39', '2019-10-06 14:53:39', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(133, 164, 'ActionScheduler', '', '', '', '2019-10-06 14:53:39', '2019-10-06 14:53:39', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(134, 166, 'ActionScheduler', '', '', '', '2019-10-06 14:53:40', '2019-10-06 14:53:40', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(135, 166, 'ActionScheduler', '', '', '', '2019-10-07 01:39:19', '2019-10-07 01:39:19', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(136, 166, 'ActionScheduler', '', '', '', '2019-10-07 01:39:19', '2019-10-07 01:39:19', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(137, 167, 'ActionScheduler', '', '', '', '2019-10-07 01:39:19', '2019-10-07 01:39:19', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(138, 167, 'ActionScheduler', '', '', '', '2019-10-07 02:44:31', '2019-10-07 02:44:31', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(139, 167, 'ActionScheduler', '', '', '', '2019-10-07 02:44:31', '2019-10-07 02:44:31', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(140, 168, 'ActionScheduler', '', '', '', '2019-10-07 02:44:31', '2019-10-07 02:44:31', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(141, 168, 'ActionScheduler', '', '', '', '2019-10-07 08:01:01', '2019-10-07 08:01:01', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(142, 168, 'ActionScheduler', '', '', '', '2019-10-07 08:01:01', '2019-10-07 08:01:01', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(143, 169, 'ActionScheduler', '', '', '', '2019-10-07 08:01:01', '2019-10-07 08:01:01', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(144, 169, 'ActionScheduler', '', '', '', '2019-10-07 09:23:48', '2019-10-07 09:23:48', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(145, 169, 'ActionScheduler', '', '', '', '2019-10-07 09:23:48', '2019-10-07 09:23:48', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(146, 170, 'ActionScheduler', '', '', '', '2019-10-07 09:23:48', '2019-10-07 09:23:48', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(147, 170, 'ActionScheduler', '', '', '', '2019-10-07 10:25:03', '2019-10-07 10:25:03', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(148, 170, 'ActionScheduler', '', '', '', '2019-10-07 10:25:04', '2019-10-07 10:25:04', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(149, 171, 'ActionScheduler', '', '', '', '2019-10-07 10:25:04', '2019-10-07 10:25:04', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(150, 171, 'ActionScheduler', '', '', '', '2019-10-07 11:25:15', '2019-10-07 11:25:15', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(151, 171, 'ActionScheduler', '', '', '', '2019-10-07 11:25:15', '2019-10-07 11:25:15', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(152, 172, 'ActionScheduler', '', '', '', '2019-10-07 11:25:15', '2019-10-07 11:25:15', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(153, 172, 'ActionScheduler', '', '', '', '2019-10-07 12:25:26', '2019-10-07 12:25:26', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(154, 172, 'ActionScheduler', '', '', '', '2019-10-07 12:25:26', '2019-10-07 12:25:26', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(155, 173, 'ActionScheduler', '', '', '', '2019-10-07 12:25:27', '2019-10-07 12:25:27', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(156, 173, 'ActionScheduler', '', '', '', '2019-10-07 13:25:44', '2019-10-07 13:25:44', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(157, 173, 'ActionScheduler', '', '', '', '2019-10-07 13:25:44', '2019-10-07 13:25:44', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(158, 174, 'ActionScheduler', '', '', '', '2019-10-07 13:25:44', '2019-10-07 13:25:44', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(159, 174, 'ActionScheduler', '', '', '', '2019-10-07 14:26:03', '2019-10-07 14:26:03', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(160, 174, 'ActionScheduler', '', '', '', '2019-10-07 14:26:03', '2019-10-07 14:26:03', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(161, 175, 'ActionScheduler', '', '', '', '2019-10-07 14:26:04', '2019-10-07 14:26:04', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(162, 175, 'ActionScheduler', '', '', '', '2019-10-07 15:26:22', '2019-10-07 15:26:22', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(163, 175, 'ActionScheduler', '', '', '', '2019-10-07 15:26:22', '2019-10-07 15:26:22', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(164, 176, 'ActionScheduler', '', '', '', '2019-10-07 15:26:22', '2019-10-07 15:26:22', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(165, 176, 'ActionScheduler', '', '', '', '2019-10-07 16:26:35', '2019-10-07 16:26:35', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(166, 176, 'ActionScheduler', '', '', '', '2019-10-07 16:26:35', '2019-10-07 16:26:35', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(167, 177, 'ActionScheduler', '', '', '', '2019-10-07 16:26:35', '2019-10-07 16:26:35', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(168, 177, 'ActionScheduler', '', '', '', '2019-10-07 17:26:45', '2019-10-07 17:26:45', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(169, 177, 'ActionScheduler', '', '', '', '2019-10-07 17:26:45', '2019-10-07 17:26:45', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(170, 178, 'ActionScheduler', '', '', '', '2019-10-07 17:26:45', '2019-10-07 17:26:45', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(171, 178, 'ActionScheduler', '', '', '', '2019-10-07 22:57:33', '2019-10-07 22:57:33', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(172, 178, 'ActionScheduler', '', '', '', '2019-10-07 22:57:33', '2019-10-07 22:57:33', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(173, 179, 'ActionScheduler', '', '', '', '2019-10-07 22:57:33', '2019-10-07 22:57:33', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(174, 179, 'ActionScheduler', '', '', '', '2019-10-08 00:05:24', '2019-10-08 00:05:24', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(175, 179, 'ActionScheduler', '', '', '', '2019-10-08 00:05:24', '2019-10-08 00:05:24', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(176, 180, 'ActionScheduler', '', '', '', '2019-10-08 00:05:24', '2019-10-08 00:05:24', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(177, 180, 'ActionScheduler', '', '', '', '2019-10-08 01:05:34', '2019-10-08 01:05:34', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(178, 180, 'ActionScheduler', '', '', '', '2019-10-08 01:05:34', '2019-10-08 01:05:34', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(179, 181, 'ActionScheduler', '', '', '', '2019-10-08 01:05:34', '2019-10-08 01:05:34', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(180, 181, 'ActionScheduler', '', '', '', '2019-10-08 02:07:17', '2019-10-08 02:07:17', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(181, 181, 'ActionScheduler', '', '', '', '2019-10-08 02:07:17', '2019-10-08 02:07:17', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(182, 182, 'ActionScheduler', '', '', '', '2019-10-08 02:07:17', '2019-10-08 02:07:17', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(183, 182, 'ActionScheduler', '', '', '', '2019-10-08 03:12:43', '2019-10-08 03:12:43', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(184, 182, 'ActionScheduler', '', '', '', '2019-10-08 03:12:43', '2019-10-08 03:12:43', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(185, 183, 'ActionScheduler', '', '', '', '2019-10-08 03:12:43', '2019-10-08 03:12:43', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(186, 183, 'ActionScheduler', '', '', '', '2019-10-08 04:13:11', '2019-10-08 04:13:11', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(187, 183, 'ActionScheduler', '', '', '', '2019-10-08 04:13:11', '2019-10-08 04:13:11', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(188, 184, 'ActionScheduler', '', '', '', '2019-10-08 04:13:11', '2019-10-08 04:13:11', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(189, 184, 'ActionScheduler', '', '', '', '2019-10-08 05:50:28', '2019-10-08 05:50:28', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(190, 184, 'ActionScheduler', '', '', '', '2019-10-08 05:50:28', '2019-10-08 05:50:28', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(191, 185, 'ActionScheduler', '', '', '', '2019-10-08 05:50:28', '2019-10-08 05:50:28', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(192, 186, 'ActionScheduler', '', '', '', '2019-10-08 05:50:28', '2019-10-08 05:50:28', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(193, 185, 'ActionScheduler', '', '', '', '2019-10-08 05:50:28', '2019-10-08 05:50:28', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(194, 185, 'ActionScheduler', '', '', '', '2019-10-08 05:50:28', '2019-10-08 05:50:28', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(195, 187, 'ActionScheduler', '', '', '', '2019-10-08 05:50:28', '2019-10-08 05:50:28', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_ewwwio_images`
--

DROP TABLE IF EXISTS `wp_ewwwio_images`;
CREATE TABLE `wp_ewwwio_images` (
  `id` int(14) UNSIGNED NOT NULL,
  `attachment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gallery` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resize` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `converted` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `results` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_size` int(10) UNSIGNED DEFAULT NULL,
  `orig_size` int(10) UNSIGNED DEFAULT NULL,
  `backup` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(5) UNSIGNED DEFAULT NULL,
  `pending` tinyint(1) NOT NULL DEFAULT 0,
  `updates` int(5) UNSIGNED DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT '1970-12-31 17:00:00' ON UPDATE current_timestamp(),
  `trace` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_ewwwio_queue`
--

DROP TABLE IF EXISTS `wp_ewwwio_queue`;
CREATE TABLE `wp_ewwwio_queue` (
  `attachment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gallery` varchar(10) DEFAULT NULL,
  `scanned` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:82/nhomK-woocommerce', 'yes'),
(2, 'home', 'http://localhost:82/nhomK-woocommerce', 'yes'),
(3, 'blogname', 'NhomK', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'hayghene@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:157:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=24&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:14:\"collection.php\";i:1;s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";i:2;s:29:\"font-awesome/font-awesome.php\";i:3;s:39:\"woocommerce-admin/woocommerce-admin.php\";i:4;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:72:\"C:\\xampp\\htdocs\\nhomK-woocommerce/wp-content/plugins/akismet/akismet.php\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'Project-theme', 'yes'),
(41, 'stylesheet', 'Project-theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '24', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"main-sidebar\";a:0:{}s:11:\"las-sidebar\";a:0:{}s:18:\"collection-content\";a:1:{i:0;s:16:\"product_widget-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:15:{i:1570514108;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1570514234;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1570514986;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1570517428;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1570518586;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1570518626;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1570518631;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1570518985;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1570521072;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1570579200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1570583785;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1570583795;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1570594585;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1572912000;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:1:{s:22:\"ptaSuNHzUaCqiUQcVUYzc5\";a:2:{s:10:\"hashed_key\";s:34:\"$P$B.jQFG5i0xYDWJYlfZQmqTMPkPUYJn1\";s:10:\"created_at\";i:1570505740;}}', 'yes'),
(115, 'theme_mods_twentynineteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1570284349;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:16:\"product_widget-2\";}s:9:\"sidebar-1\";a:0:{}}}s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:23;}}', 'yes'),
(121, '_site_transient_timeout_browser_40d2af28a4c309bbb824dc957af59b11', '1570691426', 'no'),
(122, '_site_transient_browser_40d2af28a4c309bbb824dc957af59b11', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"77.0.3865.90\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(124, 'can_compress_scripts', '1', 'no'),
(139, 'recently_activated', 'a:1:{s:45:\"ewww-image-optimizer/ewww-image-optimizer.php\";i:1570160577;}', 'yes'),
(142, '_site_transient_timeout_php_check_a5b4d2808570efd012607394df5c6fa9', '1570692287', 'no'),
(143, '_site_transient_php_check_a5b4d2808570efd012607394df5c6fa9', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(148, 'woocommerce_store_address', '16/4 , linh chiểu , thủ đức', 'yes'),
(149, 'woocommerce_store_address_2', '', 'yes'),
(150, 'woocommerce_store_city', 'hồ chí minh', 'yes'),
(151, 'woocommerce_default_country', 'VN:*', 'yes'),
(152, 'woocommerce_store_postcode', '700000', 'yes'),
(153, 'woocommerce_allowed_countries', 'all', 'yes'),
(154, 'woocommerce_all_except_countries', '', 'yes'),
(155, 'woocommerce_specific_allowed_countries', '', 'yes'),
(156, 'woocommerce_ship_to_countries', '', 'yes'),
(157, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(158, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(159, 'woocommerce_calc_taxes', 'no', 'yes'),
(160, 'woocommerce_enable_coupons', 'yes', 'yes'),
(161, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(162, 'woocommerce_currency', 'VND', 'yes'),
(163, 'woocommerce_currency_pos', 'left', 'yes'),
(164, 'woocommerce_price_thousand_sep', ',', 'yes'),
(165, 'woocommerce_price_decimal_sep', '.', 'yes'),
(166, 'woocommerce_price_num_decimals', '2', 'yes'),
(167, 'woocommerce_shop_page_id', '6', 'yes'),
(168, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(169, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(170, 'woocommerce_placeholder_image', '5', 'yes'),
(171, 'woocommerce_weight_unit', 'g', 'yes'),
(172, 'woocommerce_dimension_unit', 'cm', 'yes'),
(173, 'woocommerce_enable_reviews', 'yes', 'yes'),
(174, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(175, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(176, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(177, 'woocommerce_review_rating_required', 'yes', 'no'),
(178, 'woocommerce_manage_stock', 'yes', 'yes'),
(179, 'woocommerce_hold_stock_minutes', '60', 'no'),
(180, 'woocommerce_notify_low_stock', 'yes', 'no'),
(181, 'woocommerce_notify_no_stock', 'yes', 'no'),
(182, 'woocommerce_stock_email_recipient', 'hayghene@gmail.com', 'no'),
(183, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(184, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(185, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(186, 'woocommerce_stock_format', '', 'yes'),
(187, 'woocommerce_file_download_method', 'force', 'no'),
(188, 'woocommerce_downloads_require_login', 'no', 'no'),
(189, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(190, 'woocommerce_prices_include_tax', 'no', 'yes'),
(191, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(192, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(193, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(194, 'woocommerce_tax_classes', '', 'yes'),
(195, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(196, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(197, 'woocommerce_price_display_suffix', '', 'yes'),
(198, 'woocommerce_tax_total_display', 'itemized', 'no'),
(199, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(200, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(201, 'woocommerce_ship_to_destination', 'billing', 'no'),
(202, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(203, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(204, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(205, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(206, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(207, 'woocommerce_registration_generate_username', 'yes', 'no'),
(208, 'woocommerce_registration_generate_password', 'yes', 'no'),
(209, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(210, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(211, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(212, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(213, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(214, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(215, 'woocommerce_trash_pending_orders', '', 'no'),
(216, 'woocommerce_trash_failed_orders', '', 'no'),
(217, 'woocommerce_trash_cancelled_orders', '', 'no'),
(218, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(219, 'woocommerce_email_from_name', 'NhomK', 'no'),
(220, 'woocommerce_email_from_address', 'hayghene@gmail.com', 'no'),
(221, 'woocommerce_email_header_image', '', 'no'),
(222, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(223, 'woocommerce_email_base_color', '#96588a', 'no'),
(224, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(225, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(226, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(227, 'woocommerce_cart_page_id', '7', 'no'),
(228, 'woocommerce_checkout_page_id', '8', 'no'),
(229, 'woocommerce_myaccount_page_id', '9', 'no'),
(230, 'woocommerce_terms_page_id', '', 'no'),
(231, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(232, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(233, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(234, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(235, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(236, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(237, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(238, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(239, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(240, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(241, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(242, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(243, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(244, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(245, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(246, 'woocommerce_api_enabled', 'no', 'yes'),
(247, 'woocommerce_allow_tracking', 'yes', 'no'),
(248, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(249, 'woocommerce_single_image_width', '600', 'yes'),
(250, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(251, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(252, 'woocommerce_demo_store', 'no', 'no'),
(253, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(254, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(255, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(258, 'default_product_cat', '15', 'yes'),
(263, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(264, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(265, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(266, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(267, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(268, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(269, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(270, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(271, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(272, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(273, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(274, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(275, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(276, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(281, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(282, '_transient_timeout_external_ip_address_::1', '1570692429', 'no'),
(283, '_transient_external_ip_address_::1', '115.79.141.192', 'no'),
(287, 'woocommerce_obw_last_completed_step', 'activate', 'yes'),
(290, 'woocommerce_product_type', 'physical', 'yes'),
(291, 'woocommerce_sell_in_person', '1', 'yes'),
(292, 'woocommerce_tracker_last_send', '1570088720', 'yes'),
(293, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(294, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(295, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(297, '_transient_shipping-transient-version', '1570088840', 'yes'),
(298, 'mailchimp_woocommerce_plugin_do_activation_redirect', '', 'yes'),
(305, 'woocommerce_setup_jetpack_opted_in', '1', 'yes'),
(306, 'woocommerce_admin_notice_storefront_install_error', 'storefront could not be installed (Unable to connect to the filesystem. Please confirm your credentials.). <a href=\"http://localhost:82/nhomK-woocommerce/wp-admin/update.php?action=install-theme&#038;theme=storefront&#038;_wpnonce=b7933ef164\">Please install it manually by clicking here.</a>', 'yes'),
(307, 'woocommerce_admin_notice_mailchimp-for-woocommerce_install_error', 'MailChimp for WooCommerce could not be installed (). <a href=\"http://localhost:82/nhomK-woocommerce/wp-admin/index.php?wc-install-plugin-redirect=mailchimp-for-woocommerce\">Please install it manually by clicking here.</a>', 'yes'),
(317, 'wc_admin_install_timestamp', '1570089435', 'yes'),
(320, 'wc_admin_version', '0.19.0', 'yes'),
(321, 'wc_admin_last_orders_milestone', '0', 'yes'),
(323, '_transient_product_query-transient-version', '1570513828', 'yes'),
(330, 'woocommerce_admin_notice_jetpack_install_error', 'Jetpack could not be installed (). <a href=\"http://localhost:82/nhomK-woocommerce/wp-admin/index.php?wc-install-plugin-redirect=jetpack\">Please install it manually by clicking here.</a>', 'yes'),
(353, '_transient_timeout_wc_shipping_method_count', '1572683791', 'no'),
(354, '_transient_wc_shipping_method_count', 'a:2:{s:7:\"version\";s:10:\"1570088840\";s:5:\"value\";i:0;}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(358, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:26:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:117:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:117:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:119:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:114:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:98:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:119:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:19;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:20;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:21;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:103:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:22;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:23;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:105:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:24;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:25;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}}s:7:\"updated\";i:1570091861;}', 'no'),
(362, '_transient_product-transient-version', '1570197618', 'yes'),
(433, 'current_theme', 'HayGhe Theme 2019', 'yes'),
(434, 'theme_mods_Project-theme', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:12:\"primary-menu\";i:23;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1570283694;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"main-sidebar\";a:0:{}s:11:\"las-sidebar\";a:0:{}s:18:\"collection-content\";a:1:{i:0;s:16:\"product_widget-2\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(435, 'theme_switched', '', 'yes'),
(436, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(461, 'recovery_mode_email_last_sent', '1570505740', 'yes'),
(610, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(700, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(701, 'woocommerce_version', '3.7.0', 'yes'),
(702, 'woocommerce_db_version', '3.7.0', 'yes'),
(718, '_transient_timeout_wc_addons_sections', '1570757576', 'no'),
(719, '_transient_wc_addons_sections', 'a:9:{i:0;O:8:\"stdClass\":2:{s:4:\"slug\";s:9:\"_featured\";s:5:\"label\";s:8:\"Featured\";}i:1;O:8:\"stdClass\":2:{s:4:\"slug\";s:4:\"_all\";s:5:\"label\";s:3:\"All\";}i:2;O:8:\"stdClass\":2:{s:4:\"slug\";s:18:\"product-extensions\";s:5:\"label\";s:12:\"Enhancements\";}i:3;O:8:\"stdClass\":2:{s:4:\"slug\";s:15:\"free-extensions\";s:5:\"label\";s:4:\"Free\";}i:4;O:8:\"stdClass\":2:{s:4:\"slug\";s:20:\"marketing-extensions\";s:5:\"label\";s:9:\"Marketing\";}i:5;O:8:\"stdClass\":2:{s:4:\"slug\";s:16:\"payment-gateways\";s:5:\"label\";s:8:\"Payments\";}i:6;O:8:\"stdClass\":2:{s:4:\"slug\";s:12:\"product-type\";s:5:\"label\";s:12:\"Product Type\";}i:7;O:8:\"stdClass\":2:{s:4:\"slug\";s:16:\"shipping-methods\";s:5:\"label\";s:8:\"Shipping\";}i:8;O:8:\"stdClass\":2:{s:4:\"slug\";s:10:\"operations\";s:5:\"label\";s:16:\"Store Management\";}}', 'no'),
(720, '_transient_timeout_wc_addons_featured', '1570757576', 'no'),
(721, '_transient_wc_addons_featured', 'O:8:\"stdClass\":1:{s:8:\"sections\";a:11:{i:0;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"banner_block\";s:5:\"title\";s:50:\"Take your store beyond the typical - sell anything\";s:11:\"description\";s:81:\"From services to content, there\'s no limit to what you can sell with WooCommerce.\";s:5:\"items\";a:9:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:128:\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:13:\"Subscriptions\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/subscriptions-icon@2x.png\";s:11:\"description\";s:98:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\";s:6:\"button\";s:10:\"From: $199\";s:6:\"plugin\";s:55:\"woocommerce-subscriptions/woocommerce-subscriptions.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:123:\"https://woocommerce.com/products/woocommerce-bookings/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:8:\"Bookings\";s:5:\"image\";s:66:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/bookings-icon@2x.png\";s:11:\"description\";s:76:\"Allow customers to book appointments for services without leaving your site.\";s:6:\"button\";s:10:\"From: $249\";s:6:\"plugin\";s:45:\"woocommerce-bookings/woocommerce-bookings.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:126:\"https://woocommerce.com/products/woocommerce-memberships/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:11:\"Memberships\";s:5:\"image\";s:69:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/memberships-icon@2x.png\";s:11:\"description\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:6:\"button\";s:10:\"From: $149\";s:6:\"plugin\";s:51:\"woocommerce-memberships/woocommerce-memberships.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:118:\"https://woocommerce.com/products/product-bundles/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:15:\"Product Bundles\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:50:\"Offer customizable bundles and assembled products.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:59:\"woocommerce-product-bundles/woocommerce-product-bundles.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:121:\"https://woocommerce.com/products/composite-products/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:18:\"Composite Products\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:59:\"Create and offer product kits with configurable components.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:65:\"woocommerce-composite-products/woocommerce-composite-products.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:118:\"https://woocommerce.com/products/product-vendors/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:15:\"Product Vendors\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:47:\"Turn your store into a multi-vendor marketplace\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:59:\"woocommerce-product-vendors/woocommerce-product-vendors.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:121:\"https://woocommerce.com/products/groups-woocommerce/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:22:\"Groups for WooCommerce\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:94:\"Sell memberships using the free &#039;Groups&#039; plugin, Groups integration and WooCommerce.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:41:\"groups-woocommerce/groups-woocommerce.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:125:\"https://woocommerce.com/products/woocommerce-pre-orders/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:22:\"WooCommerce Pre-Orders\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:60:\"Allow customers to order products before they are available.\";s:6:\"button\";s:10:\"From: $129\";s:6:\"plugin\";s:49:\"woocommerce-pre-orders/woocommerce-pre-orders.php\";}i:8;O:8:\"stdClass\":6:{s:4:\"href\";s:119:\"https://woocommerce.com/products/chained-products/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:16:\"Chained Products\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:69:\"Create and sell pre-configured product bundles and discounted combos.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:61:\"woocommerce-chained-products/woocommerce-chained-products.php\";}}}i:1;O:8:\"stdClass\":1:{s:6:\"module\";s:16:\"wcs_banner_block\";}i:2;O:8:\"stdClass\":2:{s:6:\"module\";s:12:\"column_start\";s:9:\"container\";s:22:\"column_container_start\";}i:3;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"column_block\";s:5:\"title\";s:46:\"Improve the main features of your online store\";s:11:\"description\";s:71:\"Sell more by helping customers find the products and options they want.\";s:5:\"items\";a:9:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:118:\"https://woocommerce.com/products/product-add-ons/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:15:\"Product Add-ons\";s:5:\"image\";s:73:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/product-add-ons-icon@2x.png\";s:11:\"description\";s:82:\"Give your customers the option to customize their purchase or add personalization.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:57:\"woocommerce-product-addons/woocommerce-product-addons.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:129:\"https://woocommerce.com/products/woocommerce-product-search/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:14:\"Product Search\";s:5:\"image\";s:72:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/product-search-icon@2x.png\";s:11:\"description\";s:67:\"Make sure customers find what they want when they search your site.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:57:\"woocommerce-product-search/woocommerce-product-search.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:131:\"https://woocommerce.com/products/woocommerce-checkout-add-ons/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:16:\"Checkout Add-ons\";s:5:\"image\";s:74:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/checkout-add-ons-icon@2x.png\";s:11:\"description\";s:89:\"Highlight relevant products, offers like free shipping and other upsells during checkout.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:61:\"woocommerce-checkout-add-ons/woocommerce-checkout-add-ons.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:136:\"https://woocommerce.com/products/woocommerce-checkout-field-editor/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:21:\"Checkout Field Editor\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:128:\"The checkout field editor provides you with an interface to add, edit and remove fields shown on your WooCommerce checkout page.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:71:\"woocommerce-checkout-field-editor/woocommerce-checkout-field-editor.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:127:\"https://woocommerce.com/products/woocommerce-social-login/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:24:\"WooCommerce Social Login\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:62:\"Enable Social Login for Seamless Checkout and Account Creation\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:53:\"woocommerce-social-login/woocommerce-social-login.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:124:\"https://woocommerce.com/products/woocommerce-wishlists/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:21:\"WooCommerce Wishlists\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:113:\"WooCommerce Wishlists allows guests and customers to create and add products to an unlimited number of Wishlists.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:47:\"woocommerce-wishlists/woocommerce-wishlists.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:115:\"https://woocommerce.com/products/cart-notices/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:12:\"Cart Notices\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:73:\"Display dynamic, actionable messages to your customers as they check out.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:53:\"woocommerce-cart-notices/woocommerce-cart-notices.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:115:\"https://woocommerce.com/products/cart-add-ons/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:12:\"Cart Add-ons\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:109:\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:53:\"woocommerce-cart-add-ons/woocommerce-cart-add-ons.php\";}i:8;O:8:\"stdClass\":6:{s:4:\"href\";s:123:\"https://woocommerce.com/products/woocommerce-waitlist/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:20:\"WooCommerce Waitlist\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:117:\"With WooCommerce Waitlist customers can register for email notifications when out-of-stock products become available.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:45:\"woocommerce-waitlist/woocommerce-waitlist.php\";}}}i:4;O:8:\"stdClass\":5:{s:6:\"module\";s:17:\"small_light_block\";s:5:\"title\";s:34:\"Get the official WooCommerce theme\";s:11:\"description\";s:128:\"Storefront is the lean, flexible, and free theme, built by the people who make WooCommerce - everything you need to get started.\";s:5:\"image\";s:70:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/storefront-screen@2x.png\";s:7:\"buttons\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"href\";s:44:\"/wp-admin/theme-install.php?theme=storefront\";s:4:\"text\";s:7:\"Install\";}i:1;O:8:\"stdClass\":2:{s:4:\"href\";s:104:\"https://woocommerce.com/storefront/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:4:\"text\";s:9:\"Read More\";}}}i:5;O:8:\"stdClass\":1:{s:6:\"module\";s:10:\"column_end\";}i:6;O:8:\"stdClass\":1:{s:6:\"module\";s:12:\"column_start\";}i:7;O:8:\"stdClass\":4:{s:6:\"module\";s:16:\"small_dark_block\";s:5:\"title\";s:20:\"WooCommerce + Zapier\";s:11:\"description\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:5:\"items\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"href\";s:121:\"https://woocommerce.com/products/woocommerce-zapier/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:6:\"button\";s:9:\"From: $59\";}}}i:8;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"column_block\";s:5:\"title\";s:19:\"Get deeper insights\";s:11:\"description\";s:58:\"Learn how your store is performing with enhanced reporting\";s:5:\"items\";a:8:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:131:\"https://woocommerce.com/products/woocommerce-google-analytics/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:16:\"Google Analytics\";s:5:\"image\";s:60:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/ga-icon@2x.png\";s:11:\"description\";s:93:\"Understand your customers and increase revenue with the world’s leading analytics platform.\";s:6:\"button\";s:4:\"Free\";s:6:\"plugin\";s:85:\"woocommerce-google-analytics-integration/woocommerce-google-analytics-integration.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:127:\"https://woocommerce.com/products/woocommerce-cart-reports/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:12:\"Cart reports\";s:5:\"image\";s:70:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/cart-reports-icon@2x.png\";s:11:\"description\";s:66:\"Get real-time reports on what customers are leaving in their cart.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:53:\"woocommerce-cart-reports/woocommerce-cart-reports.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:128:\"https://woocommerce.com/products/woocommerce-cost-of-goods/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:13:\"Cost of Goods\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/cost-of-goods-icon@2x.png\";s:11:\"description\";s:64:\"Easily track profit by including  cost of goods in your reports.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:55:\"woocommerce-cost-of-goods/woocommerce-cost-of-goods.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:135:\"https://woocommerce.com/products/woocommerce-google-analytics-pro/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:32:\"WooCommerce Google Analytics Pro\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:85:\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:69:\"woocommerce-google-analytics-pro/woocommerce-google-analytics-pro.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:131:\"https://woocommerce.com/products/woocommerce-customer-history/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:28:\"WooCommerce Customer History\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:125:\"Observe how your customers use your store, keep a full purchase history log, and calculate the total customer lifetime value.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:61:\"woocommerce-customer-history/woocommerce-customer-history.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:115:\"https://woocommerce.com/products/kiss-metrics/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:11:\"Kissmetrics\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:79:\"Easily add Kissmetrics event tracking to your WooCommerce store with one click.\";s:6:\"button\";s:10:\"From: $149\";s:6:\"plugin\";s:52:\"woocommerce-kiss-metrics/woocommerce-kissmetrics.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:111:\"https://woocommerce.com/products/mixpanel/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:8:\"Mixpanel\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:65:\"Add event tracking powered by Mixpanel to your WooCommerce store.\";s:6:\"button\";s:10:\"From: $149\";s:6:\"plugin\";s:45:\"woocommerce-mixpanel/woocommerce-mixpanel.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:133:\"https://woocommerce.com/products/woocommerce-sales-report-email/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:30:\"WooCommerce Sales Report Email\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:107:\"Receive emails daily, weekly or monthly with meaningful information about how your products are performing.\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:65:\"woocommerce-sales-report-email/woocommerce-sales-report-email.php\";}}}i:9;O:8:\"stdClass\":2:{s:6:\"module\";s:10:\"column_end\";s:9:\"container\";s:20:\"column_container_end\";}i:10;O:8:\"stdClass\":4:{s:6:\"module\";s:12:\"banner_block\";s:5:\"title\";s:40:\"Promote your products and increase sales\";s:11:\"description\";s:77:\"From coupons to emails, these extensions can power up your marketing efforts.\";s:5:\"items\";a:9:{i:0;O:8:\"stdClass\":6:{s:4:\"href\";s:116:\"https://woocommerce.com/products/smart-coupons/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:13:\"Smart Coupons\";s:5:\"image\";s:71:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/smart-coupons-icon@2x.png\";s:11:\"description\";s:106:\"Enhance your coupon options - create gift certificates, store credit, coupons based on purchases and more.\";s:6:\"button\";s:9:\"From: $99\";s:6:\"plugin\";s:55:\"woocommerce-smart-coupons/woocommerce-smart-coupons.php\";}i:1;O:8:\"stdClass\":6:{s:4:\"href\";s:119:\"https://woocommerce.com/products/follow-up-emails/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:16:\"Follow Up Emails\";s:5:\"image\";s:74:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/follow-up-emails-icon@2x.png\";s:11:\"description\";s:140:\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\";s:6:\"button\";s:9:\"From: $99\";s:6:\"plugin\";s:61:\"woocommerce-follow-up-emails/woocommerce-follow-up-emails.php\";}i:2;O:8:\"stdClass\":6:{s:4:\"href\";s:122:\"https://woocommerce.com/products/google-product-feed/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:19:\"Google Product Feed\";s:5:\"image\";s:77:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/google-product-feed-icon@2x.png\";s:11:\"description\";s:61:\"Let customers find you when shopping for products via Google.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:45:\"woocommerce-product-feeds/woocommerce-gpf.php\";}i:3;O:8:\"stdClass\":6:{s:4:\"href\";s:118:\"https://woocommerce.com/products/dynamic-pricing/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:15:\"Dynamic Pricing\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:48:\"Bulk discounts, role-based pricing and much more\";s:6:\"button\";s:10:\"From: $129\";s:6:\"plugin\";s:59:\"woocommerce-dynamic-pricing/woocommerce-dynamic-pricing.php\";}i:4;O:8:\"stdClass\":6:{s:4:\"href\";s:133:\"https://woocommerce.com/products/woocommerce-points-and-rewards/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:30:\"WooCommerce Points and Rewards\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:102:\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\";s:6:\"button\";s:10:\"From: $129\";s:6:\"plugin\";s:65:\"woocommerce-points-and-rewards/woocommerce-points-and-rewards.php\";}i:5;O:8:\"stdClass\":6:{s:4:\"href\";s:115:\"https://woocommerce.com/products/store-credit/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:24:\"WooCommerce Store Credit\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:152:\"Generate store credit coupons that enable customers to make multiple purchases until the total value specified is exhausted or the coupons life expires.\";s:6:\"button\";s:9:\"From: $29\";s:6:\"plugin\";s:53:\"woocommerce-store-credit/woocommerce-store-credit.php\";}i:6;O:8:\"stdClass\":6:{s:4:\"href\";s:111:\"https://woocommerce.com/products/facebook/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:24:\"Facebook for WooCommerce\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:89:\"Get the Facebook for WooCommerce plugin for two powerful ways to help grow your business.\";s:6:\"button\";s:4:\"Free\";s:6:\"plugin\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";}i:7;O:8:\"stdClass\":6:{s:4:\"href\";s:126:\"https://woocommerce.com/products/newsletter-subscription/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:23:\"Newsletter Subscription\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:127:\"Allow customers to subscribe to your MailChimp or CampaignMonitor mailing list(s) via a widget or by opting in during checkout.\";s:6:\"button\";s:9:\"From: $49\";s:6:\"plugin\";s:63:\"woocommerce-subscribe-to-newsletter/subscribe-to-newsletter.php\";}i:8;O:8:\"stdClass\":6:{s:4:\"href\";s:131:\"https://woocommerce.com/products/woocommerce-email-customizer/?utm_source=extensionsscreen&utm_medium=product&utm_campaign=wcaddons\";s:5:\"title\";s:28:\"WooCommerce Email Customizer\";s:5:\"image\";s:57:\"https://d3t0oesq8995hv.cloudfront.net/add-ons/generic.png\";s:11:\"description\";s:125:\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\";s:6:\"button\";s:9:\"From: $79\";s:6:\"plugin\";s:61:\"woocommerce-email-customizer/woocommerce-email-customizer.php\";}}}}}', 'no'),
(748, 'WPLANG', 'vi', 'yes'),
(749, 'new_admin_email', 'hayghene@gmail.com', 'yes'),
(760, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.3.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-5.2.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.3\";s:7:\"version\";s:5:\"5.2.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1570489054;s:15:\"version_checked\";s:5:\"5.2.3\";s:12:\"translations\";a:0:{}}', 'no'),
(762, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1570489057;s:7:\"checked\";a:4:{s:13:\"Project-theme\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(763, 'ewww_image_optimizer_relative_migration_status', 'done', 'yes'),
(765, 'ewww_image_optimizer_background_optimization', '1', 'yes'),
(766, 'ewww_image_optimizer_flag_attachments', '', 'no'),
(767, 'ewww_image_optimizer_ngg_attachments', '', 'no'),
(768, 'ewww_image_optimizer_noauto', '', 'yes'),
(769, 'ewww_image_optimizer_disable_editor', '', 'yes'),
(770, 'ewww_image_optimizer_debug', '', 'yes'),
(771, 'ewww_image_optimizer_metadata_remove', '1', 'yes'),
(772, 'ewww_image_optimizer_jpg_level', '10', 'yes'),
(773, 'ewww_image_optimizer_png_level', '10', 'yes'),
(774, 'ewww_image_optimizer_gif_level', '10', 'yes'),
(775, 'ewww_image_optimizer_pdf_level', '0', 'yes'),
(776, 'ewww_image_optimizer_exactdn', '', 'yes'),
(777, 'exactdn_all_the_things', '1', 'yes'),
(778, 'exactdn_lossy', '1', 'yes'),
(779, 'ewww_image_optimizer_lazy_load', '', 'yes'),
(780, 'ewww_image_optimizer_disable_pngout', '1', 'yes'),
(781, 'ewww_image_optimizer_optipng_level', '2', 'yes'),
(782, 'ewww_image_optimizer_pngout_level', '2', 'yes'),
(783, 'ewww_image_optimizer_webp_for_cdn', '', 'yes'),
(784, 'exactdn_never_been_active', '1', 'no'),
(785, 'ewww_image_optimizer_bulk_resume', '', 'yes'),
(786, 'ewww_image_optimizer_aux_resume', '', 'yes'),
(787, 'ewww_image_optimizer_review_time', '1570761846', 'no'),
(788, 'ewww_image_optimizer_version', '500.0', 'yes'),
(789, 'ewww_image_optimizer_tracking_notice', '1', 'yes'),
(799, 'category_children', 'a:0:{}', 'yes'),
(834, 'woocommerce_tracker_ua', 'a:1:{i:0;s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36\";}', 'yes'),
(922, '_transient_timeout_wc_product_loop_0a774e4910f039f7c886c4a1ffa3f7c6', '1573032554', 'no'),
(923, '_transient_wc_product_loop_0a774e4910f039f7c886c4a1ffa3f7c6', 'a:2:{s:7:\"version\";s:10:\"1570440228\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:19:{i:0;i:122;i:1;i:120;i:2;i:116;i:3;i:114;i:4;i:112;i:5;i:110;i:6;i:108;i:7;i:106;i:8;i:104;i:9;i:89;i:10;i:87;i:11;i:85;i:12;i:83;i:13;i:82;i:14;i:80;i:15;i:79;i:16;i:78;i:17;i:75;i:18;i:15;}s:5:\"total\";i:19;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:-1;s:12:\"current_page\";i:1;}}', 'no'),
(926, '_transient_timeout_wc_product_loop_db5eae68c1ea90f9b021e70a11a9b4ca', '1572755235', 'no'),
(927, '_transient_wc_product_loop_db5eae68c1ea90f9b021e70a11a9b4ca', 'a:2:{s:7:\"version\";s:10:\"1570163200\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:7:{i:0;i:83;i:1;i:85;i:2;i:87;i:3;i:89;i:4;i:15;i:5;i:75;i:6;i:78;}s:5:\"total\";i:7;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}}', 'no'),
(928, '_transient_timeout_wc_product_loop_b1df225ffc6f325ecfa07729f9b461a3', '1572755370', 'no'),
(929, '_transient_wc_product_loop_b1df225ffc6f325ecfa07729f9b461a3', 'a:2:{s:7:\"version\";s:10:\"1570163200\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:83;i:1;i:85;i:2;i:87;i:3;i:89;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}}', 'no'),
(940, '_transient_timeout_wc_product_loop_2c61f1096d84f19aacbbdc2d8996d4c2', '1573032560', 'no'),
(941, '_transient_wc_product_loop_2c61f1096d84f19aacbbdc2d8996d4c2', 'a:2:{s:7:\"version\";s:10:\"1570440228\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}}', 'no'),
(1028, '_transient_timeout_wc_product_loop_5596ba8b4dc0be673ba12386bc93f70a', '1573032560', 'no'),
(1029, '_transient_wc_product_loop_5596ba8b4dc0be673ba12386bc93f70a', 'a:2:{s:7:\"version\";s:10:\"1570440228\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:19:{i:0;i:108;i:1;i:106;i:2;i:104;i:3;i:82;i:4;i:79;i:5;i:80;i:6;i:78;i:7;i:75;i:8;i:116;i:9;i:114;i:10;i:112;i:11;i:110;i:12;i:15;i:13;i:122;i:14;i:120;i:15;i:89;i:16;i:87;i:17;i:85;i:18;i:83;}s:5:\"total\";i:19;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:-1;s:12:\"current_page\";i:1;}}', 'no'),
(1030, '_transient_timeout_wc_product_loop_e97620d9fe61d7f530f34a7531e58061', '1572763026', 'no'),
(1031, '_transient_wc_product_loop_e97620d9fe61d7f530f34a7531e58061', 'a:2:{s:7:\"version\";s:10:\"1570170989\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:7:{i:0;i:83;i:1;i:85;i:2;i:87;i:3;i:89;i:4;i:15;i:5;i:75;i:6;i:78;}s:5:\"total\";i:7;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}}', 'no'),
(1088, 'widget_collection_widget', 'a:2:{i:2;a:2:{s:5:\"title\";s:18:\"COLLECTION PRODUCT\";s:7:\"content\";s:1:\"5\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1181, 'widget_product_widget', 'a:2:{i:2;a:3:{s:5:\"title\";s:19:\"PRODUCT OF CATEGORY\";s:7:\"content\";s:1:\"4\";s:8:\"category\";N;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1278, '_transient_timeout_wc_term_counts', '1573010401', 'no'),
(1279, '_transient_wc_term_counts', 'a:13:{i:15;s:1:\"0\";i:21;s:0:\"\";i:30;s:0:\"\";i:22;s:0:\"\";i:28;s:0:\"\";i:20;s:0:\"\";i:29;s:1:\"4\";i:25;s:0:\"\";i:19;s:0:\"\";i:26;s:2:\"15\";i:17;s:2:\"14\";i:32;s:0:\"\";i:31;s:1:\"4\";}', 'no'),
(1460, '_transient_timeout_wc_low_stock_count', '1572843577', 'no'),
(1461, '_transient_wc_low_stock_count', '0', 'no'),
(1462, '_transient_timeout_wc_outofstock_count', '1572843577', 'no'),
(1463, '_transient_wc_outofstock_count', '0', 'no'),
(1544, 'product_cat_children', 'a:0:{}', 'yes'),
(1586, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1570489057;s:7:\"checked\";a:7:{s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";s:6:\"1.9.15\";s:29:\"font-awesome/font-awesome.php\";s:10:\"4.0.0-rc13\";s:9:\"hello.php\";s:5:\"1.7.2\";s:14:\"collection.php\";s:3:\"1.0\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.7.0\";s:39:\"woocommerce-admin/woocommerce-admin.php\";s:6:\"0.19.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/facebook-for-woocommerce\";s:4:\"slug\";s:24:\"facebook-for-woocommerce\";s:6:\"plugin\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";s:11:\"new_version\";s:6:\"1.9.15\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/facebook-for-woocommerce/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/facebook-for-woocommerce.1.9.15.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/facebook-for-woocommerce/assets/icon-256x256.png?rev=2040223\";s:2:\"1x\";s:69:\"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223\";s:3:\"svg\";s:69:\"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:29:\"font-awesome/font-awesome.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/font-awesome\";s:4:\"slug\";s:12:\"font-awesome\";s:6:\"plugin\";s:29:\"font-awesome/font-awesome.php\";s:11:\"new_version\";s:10:\"4.0.0-rc13\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/font-awesome/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/font-awesome.4.0.0-rc13.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/font-awesome/assets/icon-256x256.png?rev=1991998\";s:2:\"1x\";s:65:\"https://ps.w.org/font-awesome/assets/icon-128x128.png?rev=1991998\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/font-awesome/assets/banner-1544x500.png?rev=1991998\";s:2:\"1x\";s:67:\"https://ps.w.org/font-awesome/assets/banner-772x250.png?rev=1991993\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:14:\"collection.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/collection\";s:4:\"slug\";s:10:\"collection\";s:6:\"plugin\";s:14:\"collection.php\";s:11:\"new_version\";s:3:\"0.5\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/collection/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/plugin/collection.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:63:\"https://ps.w.org/collection/assets/icon-128x128.png?rev=1633516\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/collection/assets/banner-772x250.jpg?rev=1633516\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.7.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.7.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"woocommerce-admin/woocommerce-admin.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/woocommerce-admin\";s:4:\"slug\";s:17:\"woocommerce-admin\";s:6:\"plugin\";s:39:\"woocommerce-admin/woocommerce-admin.php\";s:11:\"new_version\";s:6:\"0.19.0\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/woocommerce-admin/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce-admin.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/woocommerce-admin/assets/icon-256x256.jpg?rev=2057866\";s:2:\"1x\";s:70:\"https://ps.w.org/woocommerce-admin/assets/icon-128x128.jpg?rev=2057866\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-admin/assets/banner-1544x500.jpg?rev=2057866\";s:2:\"1x\";s:72:\"https://ps.w.org/woocommerce-admin/assets/banner-772x250.jpg?rev=2057866\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1642, 'font-awesome', 'a:5:{s:19:\"adminClientLoadSpec\";a:2:{s:4:\"name\";s:4:\"user\";s:13:\"clientVersion\";i:0;}s:6:\"usePro\";b:0;s:25:\"removeUnregisteredClients\";b:0;s:7:\"version\";s:6:\"5.11.2\";s:14:\"lockedLoadSpec\";a:4:{s:6:\"method\";s:7:\"webfont\";s:6:\"v4shim\";b:1;s:14:\"pseudoElements\";b:1;s:7:\"clients\";a:1:{s:4:\"user\";i:0;}}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1643, '_transient_font-awesome-releases', 'a:33:{s:5:\"5.0.1\";a:5:{s:7:\"version\";s:5:\"5.0.1\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:0;}s:4:\"date\";s:19:\"2017-12-08T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:1278;s:4:\"free\";i:899;}s:3:\"sri\";a:2:{s:3:\"pro\";a:0:{}s:4:\"free\";a:12:{s:14:\"js/v4-shims.js\";s:71:\"sha384-BRge2B8T+0rmvB/KszFfdQ0PDvPnhV2J80JMKrnq21Fq6tHeKFhSIrdoroXvk7eB\";s:11:\"js/solid.js\";s:71:\"sha384-kbPfTyGdGugnvSKEBJCd6+vYipOQ6a+2np5O4Ty3sW7tgI0MpwPyAh+QwUpMujV9\";s:13:\"js/regular.js\";s:71:\"sha384-hXqI+wajk6jJu2DXwf2oqBg6q5+HqXM5yz9smX94pDjiLzH81gAuVtjter66i1Ct\";s:17:\"js/fontawesome.js\";s:71:\"sha384-tqpP2rDLsdWkeBrG3Jachyp0yzl/pmhnsdV88ySUFZATuziAnHWsHRSS97l5D9jn\";s:12:\"js/brands.js\";s:71:\"sha384-i3UPn8g8uJGiS6R/++68nHyfYAnr/lE/biTuWYbya2dONccicnZZPlAH6P8EWf28\";s:9:\"js/all.js\";s:71:\"sha384-2CD5KZ3lSO1FK9XJ2hsLsEPy5/TBISgKIk2NSEcS03GbEnWEfhzd0x6DBIkqgPN1\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-X1ZQAmDHBeo7eaAJwWMyyA3mva9mMK10CpRFvX8PejR0XIUjwvGDqr2TwJqwbH9S\";s:13:\"css/solid.css\";s:71:\"sha384-TQW9cJIp+U8M7mByg5ZKUQoIxj0ac36aOpNzqQ04HpwyrJivS38EQsKHO2rR5eit\";s:15:\"css/regular.css\";s:71:\"sha384-JZ2w5NHrKZS6hqVAVlhUO3eHPVzjDZqOpWBZZ6opcmMwVjN7uoagKSSftrq8F0pn\";s:19:\"css/fontawesome.css\";s:71:\"sha384-7mC9VNNEUg5vt0kVQGblkna/29L8CpTJ5fkpo0nlmTbfCoDXyuK/gPO3wx8bglOz\";s:14:\"css/brands.css\";s:71:\"sha384-JT52EiskN0hkvVxJA8d2wg8W/tLxrC02M4u5+YAezNnBlY/N2yy3X51pKC1QaPkw\";s:11:\"css/all.css\";s:71:\"sha384-VVoO3UHXsmXwXvf1kJx2jV3b1LbOfTqKL46DdeLG8z4pImkQ4GAP9GMy+MxHMDYG\";}}}s:5:\"5.0.2\";a:5:{s:7:\"version\";s:5:\"5.0.2\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:0;}s:4:\"date\";s:19:\"2017-12-19T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:1277;s:4:\"free\";i:904;}s:3:\"sri\";a:2:{s:3:\"pro\";a:0:{}s:4:\"free\";a:12:{s:14:\"js/v4-shims.js\";s:71:\"sha384-0nloDHslShcnKvH94Zv8nb0zPlzTFCzfZGx9YxR2ngUWs9HXXHVx1PUQw0u9/7LE\";s:11:\"js/solid.js\";s:71:\"sha384-KDEuZV2OBU0Q264kBX2Idu9gYr5z/fQrtvUsKfuKGEDkDxV0GBVN/qi3QoLZPmbJ\";s:13:\"js/regular.js\";s:71:\"sha384-ihKlq3j4PocIYMPkNra+ieEVsLuFzj4rp1yjn3jq+La7r4G9kf9COpWfOI8SGapM\";s:17:\"js/fontawesome.js\";s:71:\"sha384-CxMnuVDquTXcsJnW1rAfSm4uzGr12HENF1oe+JRZm4jcQDerJ6VeA1XLvAso396r\";s:12:\"js/brands.js\";s:71:\"sha384-V+scQ15NnQuKVajRBsSery7bV87d0xDAoCs4pB8ZcwW74+zzW5CkgRmIFOYw8kKX\";s:9:\"js/all.js\";s:71:\"sha384-xiGKJ+4CP2p2WkTifyjHDeZVAg1zBrnJV8LU33N7J+5BWp1biPcSpEJJY7hFiRLn\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-sV6Qj6KRPF7HrXfo5NK0evVt+YbNxUuGZU2udYKDAxwxPVTuEE6lofcZJhRMK4WT\";s:13:\"css/solid.css\";s:71:\"sha384-WEKepgUDOaHRK2/r+qA7W/Srd+36IIOmBm/+wm9aSz6acYC0LkyM9UJElLVNy95T\";s:15:\"css/regular.css\";s:71:\"sha384-GtLUznQ3nMgus15JP1pAE2UH9HAQi8gjQTNfIT+Gq6zFPeeq3y+Xtxt5HUBFF0YO\";s:19:\"css/fontawesome.css\";s:71:\"sha384-CTTGZltCsihOiEwOCbT7p1lhij8kYk6lapCladmNzxj4yXj/AKp6q3+CRoNN3UCG\";s:14:\"css/brands.css\";s:71:\"sha384-F8vNf2eNIHep58ofQztLhhWsZXaTzzfZRqFfWmh7Cup7LqrF0HCtB6UCAIIkZZYZ\";s:11:\"css/all.css\";s:71:\"sha384-bJB2Wn8ZuuMwYA12t6nmPqVTqT64ruKTAWqdxs/Oal3vexA7RPAo3FtVU5hIil2E\";}}}s:5:\"5.0.3\";a:5:{s:7:\"version\";s:5:\"5.0.3\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:0;}s:4:\"date\";s:19:\"2018-01-08T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:1276;s:4:\"free\";i:907;}s:3:\"sri\";a:2:{s:3:\"pro\";a:0:{}s:4:\"free\";a:12:{s:14:\"js/v4-shims.js\";s:71:\"sha384-kysXtDCmCTYxM55rHL+9xPu6+Inoi3ZzZHvcxkXs+iPj5nymJKlauQdXyzubyD0b\";s:11:\"js/solid.js\";s:71:\"sha384-DX1/9hggbc1yKVl40n2dNF9OzLf9ZPwZm87WzIW+FinkgjSq18PXpUxOL4I0iS1+\";s:13:\"js/regular.js\";s:71:\"sha384-J0ggktpCvzBHSxd/a8EBQgQDIWBtASK5rhHMvGWuR/UyjuPgX0iCAcb3OlfhvlQz\";s:17:\"js/fontawesome.js\";s:71:\"sha384-sBtO3o3oG61AtAKrg74kfk50JP0YHcRTwOXgTeUobbJJBgYiCcmtkh784fmHww23\";s:12:\"js/brands.js\";s:71:\"sha384-68dqWCRgViK/UsBTW5vGfntS6GdBDT5D4KWUBXTf6IkF2NFFD+X/0QNs0FZaIELt\";s:9:\"js/all.js\";s:71:\"sha384-4OPaVeLgwRHdGJplmRGxGcoGYwxBAdR8Qr9z/Av7blRYPlRIPtjTygdtpQlD1HHv\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-bnoXyQHIAXdkrtQTtvuajtPgmWqHQ8657dQ4vzySapygDMqzijBpEq96AwgX2u4N\";s:13:\"css/solid.css\";s:71:\"sha384-ioYc/tyAAvPTKdlEWH/BDO/Fn0RGAWisNzyfZNt74mHfA6UPN2tzjD6Nm4ieQfBR\";s:15:\"css/regular.css\";s:71:\"sha384-cDXlx+8npD3wa2ahyeSZvsi9VlRrMmJVIB1rpK7Ftyq4cppWM9d2mBhrlOqYBljt\";s:19:\"css/fontawesome.css\";s:71:\"sha384-l2oTZy4pLseT/J6oW0mwsjKPhjpTctOfU191uVonzezZiqw9PPcz4AMKsIAeyR4P\";s:14:\"css/brands.css\";s:71:\"sha384-J6h7hpR0mfr79Ck/ZfDrhN14FnkbkLbd+mm0yTw5spSpK08yOK/AB9IRR/Dcg8EJ\";s:11:\"css/all.css\";s:71:\"sha384-KFTzeUQSHjcfuC8qqdFm+laWVqpkucx/3uXo41hhKQzUEtbNnNSk8KEEBZ+2lEQy\";}}}s:5:\"5.0.4\";a:5:{s:7:\"version\";s:5:\"5.0.4\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:0;}s:4:\"date\";s:19:\"2018-01-10T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:1276;s:4:\"free\";i:907;}s:3:\"sri\";a:2:{s:3:\"pro\";a:14:{s:14:\"js/v4-shims.js\";s:71:\"sha384-8XZ16R7aSGin4NRuv6gn5xfbsvad5H8LR41g48iduwkfZEqDgXlvUjkJKgxqZUiW\";s:11:\"js/solid.js\";s:71:\"sha384-WJDZ/GI6pz1VoELs6i44T3f00fguksrLXIx3LXHdlaAzmOvX/mTK5j+qzHJdKejC\";s:13:\"js/regular.js\";s:71:\"sha384-YzSStfq1m16y1v5M97ViNRpiQUCVpagVVOkqlmww8otyjFkY6EXT4dShlKNuxRDu\";s:11:\"js/light.js\";s:71:\"sha384-iXxa9ExuZ0Fi2N2VO/buuWuAgYIUXNtOaJiKLa40Bjt43KJpzJdhg2TBHyBVqCPh\";s:17:\"js/fontawesome.js\";s:71:\"sha384-7L9/YJQEf9kLPc6sdtoVIsuBNxCVi4OmHPcszcY685IJIcB52hgYoL1OiwTawJS/\";s:12:\"js/brands.js\";s:71:\"sha384-/877azmwW/YhoBsPeM9dh61dNr5XGbuk24lyjPbFWyrPaZPyU2oxgOY6PE1OH4z4\";s:9:\"js/all.js\";s:71:\"sha384-vV0064GQjt+TcoZxVPm/f6vyAivSNofFvOHKLWxcDl784Dzm9W4BBpoTvUG4vi5a\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-rHay3RzsgCtbjvDmBLThu6ESXlU4Al5STjlHSpNygnbeyt04OP1uKZVXB2Zy16+T\";s:13:\"css/solid.css\";s:71:\"sha384-TlWtvBj4TXNlpJC5Qq4aHel0R/dywVcP/6eOFC0qptQ71WWSxJCvuTajjGb1duS9\";s:15:\"css/regular.css\";s:71:\"sha384-eyjlqgvgpHiWM0GoL4/hsTh22piTKmMTM+sfJYacddG2n9AEubqQB/w4CPJK1/1b\";s:13:\"css/light.css\";s:71:\"sha384-4FGoKudkcpRXgx5UNFa5TxzaHUhnvCGFDeZKncEn9KJx/l07kcid3VbpwajrvrFW\";s:19:\"css/fontawesome.css\";s:71:\"sha384-VFi8UvBDvM8muKO8ogMXi2j8vdJiu8hq1uxpX/NS8BsftBiJpheM5AuhFH1dvURx\";s:14:\"css/brands.css\";s:71:\"sha384-sFwP5Zsnp6I4zQxUMPHvv8Bk16eEzU0YhaNbMCftDHPKDD+BR8WdXAHKL4xpipII\";s:11:\"css/all.css\";s:71:\"sha384-1RxicL8bcQJWgpr/clvtGVG7DVFJvDX/DVsJsbjKhXtdo8r5WVZQqB9AHTNPr08A\";}s:4:\"free\";a:12:{s:14:\"js/v4-shims.js\";s:71:\"sha384-yfrMPoFcXUzdvECrvYRYE7wlxouXxjRSge5x6BlPPOb38tW4n0e8EW79RGU7VY0R\";s:11:\"js/solid.js\";s:71:\"sha384-4KkAk2UXMS9Xl3FoAAN43VJxRZ/emjElCz60xUTegPOZlbPLZGylvor2v7wQ0JNb\";s:13:\"js/regular.js\";s:71:\"sha384-lwwoO5Gg19TptbILrLBjV28EVJ9RW3tD3cGyjCRn3OY9IuLua/YRlE47btZIXfMv\";s:17:\"js/fontawesome.js\";s:71:\"sha384-l7FyBM+wFIWpfmy8RYkWgEu/Me6Hrz98ijLu4nP3PkGbTtTCvtHB5ktI8hLEgEG3\";s:12:\"js/brands.js\";s:71:\"sha384-dl3ONr32uA3YqpqKWzhXLs5k1YbKOn3dwiMbEP1S/XQMa3LPRwvJrhW7+lomL/uc\";s:9:\"js/all.js\";s:71:\"sha384-nVi8MaibAtVMFZb4R1zHUW/DsTJpG/YwPknbGABVOgk5s6Vhopl6XQD/pTCG/DKB\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-MCR8qGTbdyK+hklwz1eKgGiAjT57F5HEJMs/uHRAwZ6GI5602TyGI89FyrbUwiIc\";s:13:\"css/solid.css\";s:71:\"sha384-g2aKxiZcFezoVOq4MsjaxuBbSxSlXD/NRQ5GaPLfvCtcTLgP3fYZKKAGxCM/wMfe\";s:15:\"css/regular.css\";s:71:\"sha384-nM5tBytXTc1HDZ/A3My2gNT2TxLk/M/5yFi0QrOxaZjBi7QpKUfA2QqT+fcSxSlg\";s:19:\"css/fontawesome.css\";s:71:\"sha384-xdTUmhbcetyLRVL4PAriRajOve+/5pjOiy5sJABnhXMcRMVc9HI9s2KmOCjjDK/P\";s:14:\"css/brands.css\";s:71:\"sha384-1beec9tTZuu+KrTudmvRnGpK81r78DKCAXdphCvdG+PR+n/WCczsYPqTBTvYsM7z\";s:11:\"css/all.css\";s:71:\"sha384-DmABxgPhJN5jlTwituIyzIUk6oqyzf3+XuP7q3VfcWA2unxgim7OSSZKKf0KSsnh\";}}}s:5:\"5.0.6\";a:5:{s:7:\"version\";s:5:\"5.0.6\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:0;}s:4:\"date\";s:19:\"2018-01-25T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:1387;s:4:\"free\";i:929;}s:3:\"sri\";a:2:{s:3:\"pro\";a:14:{s:14:\"js/v4-shims.js\";s:71:\"sha384-X9eLyweB0LOTEGCwMARo9+zibrXQYmBMSrhFk4ncpT/WYnPIcpTg0IgBFDgzuPwL\";s:11:\"js/solid.js\";s:71:\"sha384-R/e3QvpS9m8HcN9b9l6nNo678ekTXL31kFY/XtRHSjrihDX8A2DF8HaXhdlAtzMx\";s:13:\"js/regular.js\";s:71:\"sha384-M8TFIPAJNl8UIC8OP6GFcIE0SHkGN4zjwwjz+BBTz60XhNegOrZmjNtTQNKifmXX\";s:11:\"js/light.js\";s:71:\"sha384-jzS22FYPy68IBBet2IRM5aQDOXjg9X1g+drXIVonDtyqGFCtUA0YIdgHdvCCX/fD\";s:17:\"js/fontawesome.js\";s:71:\"sha384-Ln5PcCmuH8v+AF9nt+HkM2GfXjsn1CtVc0n+ciM8+oe3nwGyPCceDVva7bUjNfo0\";s:12:\"js/brands.js\";s:71:\"sha384-G12tjfNd/W8L4IrE5+f13LUbpzVowwhNDv+WNecvxjbaGN9bbSY7epBOqUlRqXnq\";s:9:\"js/all.js\";s:71:\"sha384-FrB6Se1Wkxlx66xA4rPuOoOolLyQt5B1uptDmtLJSIVRJDbNkmE3QOLipnMuAbUW\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-BptPo+4C0N+fnMTnfw7ddW/zYUJhuNEe7edve8UrMbs+fCpfDJvJcC/lpa5Nvaky\";s:13:\"css/solid.css\";s:71:\"sha384-uBARwTxpZ7FB08kQlCOS/dUaN3TrGGcHthrXYIhZBpdq7YtUdVDM1sAUH9NIozMl\";s:15:\"css/regular.css\";s:71:\"sha384-CydLcYoDSbudHX/6hygyQD4jBMPsv91d/RwdtH1qxI79KG8kII/OzxKDwsswywA4\";s:13:\"css/light.css\";s:71:\"sha384-YWWfxaKIDrbFXuVQnpxASJDHmFl2K5f2vDgrcROb+rYycoqcQVdMlfu3U38boTg/\";s:19:\"css/fontawesome.css\";s:71:\"sha384-sATKZbJwxaEIU3unIoL1VMbIyrNNh7PlgnaiWlicWXeRA7qdnzfFzMP9AaN2wfTU\";s:14:\"css/brands.css\";s:71:\"sha384-Ks7IvHjmJ4FIFxhK4iNrtW0rAVo1DlCYpe/nDsK8CnU+yactd38YiNE1GT018WPg\";s:11:\"css/all.css\";s:71:\"sha384-ldFHeX3xCFvM4uf7m0mCMIoCPVwM71jopwqLZRldf+ojynoGVSxDiphfScLukkwO\";}s:4:\"free\";a:12:{s:14:\"js/v4-shims.js\";s:71:\"sha384-L8zntmMOcCbOxXiL5Rjn6ubB7KunZiQ8U3bb9x6FFTGDEvVEESW9n+x49jm34K3W\";s:11:\"js/solid.js\";s:71:\"sha384-U0ZJ7q5xbT8hEoRqj61HzpvsqNOQ8bsHY2VqSRPqGOzjHXmmV70Aw+DBC/PT00p4\";s:13:\"js/regular.js\";s:71:\"sha384-G375DXNEVfALvsggywPWDYrRxNOvXaCYt/kiq/GXmbaDW8/B0XtbC8iuLpXXm1jF\";s:17:\"js/fontawesome.js\";s:71:\"sha384-rttr/ldR2uHigckjTCjMDe47ySeFVaL3Q7xUkJZir56u8Z8h/XnHJXHocgyfb25F\";s:12:\"js/brands.js\";s:71:\"sha384-4iSpDug9fizYiQRPpPafdAh5NaF8yzNMjOvu3veWgaFm0iIo8y4vUi7f3Yyz5WP1\";s:9:\"js/all.js\";s:71:\"sha384-0AJY8UERsBUKdWcyF3o2kisLKeIo6G4Tbd8Y6fbyw6qYmn4WBuqcvxokp8m2UzSD\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-U2b24h7gWqOYespg+vI5yiIn4ZYlTevT0N96xkGrw7ktP1gg9XwqEslsdTLJdlGg\";s:13:\"css/solid.css\";s:71:\"sha384-GfC9nfESTZkjCPFbevBVig3FTd6wkjRRYMtj+qFgK8mMBvGIje2rrALgiBy6pwRL\";s:15:\"css/regular.css\";s:71:\"sha384-HGbVnizaFNw8zW+vIol9xMwBFWdV7/k61278Zo1bnMy9dLmjv48D7rtpgYRTe5Pd\";s:19:\"css/fontawesome.css\";s:71:\"sha384-dbkYY2NmVwxaFrr4gq04oVh6w39ovmevsgD80Il1Od3hwpgREqyPb3XqbpaSwN4x\";s:14:\"css/brands.css\";s:71:\"sha384-rK0EPNdv8UCeRNPzX+96ARRlf9hZM+OukGceDTdbPH30DYcSI1x5QyBU7d2I2kHX\";s:11:\"css/all.css\";s:71:\"sha384-VY3F8aCQDLImi4L+tPX4XjtiJwXDwwyXNbkH7SHts0Jlo85t1R15MlXVBKLNx+dj\";}}}s:5:\"5.0.8\";a:5:{s:7:\"version\";s:5:\"5.0.8\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:0;}s:4:\"date\";s:19:\"2018-03-01T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:1535;s:4:\"free\";i:946;}s:3:\"sri\";a:2:{s:3:\"pro\";a:14:{s:14:\"js/v4-shims.js\";s:71:\"sha384-w/sFNq23wbOXJOUpFyISABLXk9tA4Z8r9hl80er2mobEwgS7VXXYDANaWyrCWe3/\";s:11:\"js/solid.js\";s:71:\"sha384-jTxqWCb7UqRDQDd2Nkuh5BkHe9k+ElbFLa3NaJfid5kBK/+cVktzVRXrw0isFWxf\";s:13:\"js/regular.js\";s:71:\"sha384-SIp/+zr0hyfSVIQPkAwB/L1h4fph6T3CmU4mE7IFtGJlgwoCko0Bye/1J0sjyh4v\";s:11:\"js/light.js\";s:71:\"sha384-mfSnp84URDGC1t+cg63LgVKwEs63ulRUpjNneyDZMGMAE9ZKUNZ85rMBMHucGLYP\";s:17:\"js/fontawesome.js\";s:71:\"sha384-Ht3fAeBiX/rVmKVyMwONAIIt0aRoPzZgq1FzdRgR9zFo+Kcd8YDwUbFlTItfaYW4\";s:12:\"js/brands.js\";s:71:\"sha384-gJijC/2qM/p3zm2wHECHX1OMLdzlu61sNp7YfmFQxo+OyT9hO1orX7MmnHhaoXQ4\";s:9:\"js/all.js\";s:71:\"sha384-816IUmmhAwCMonQiPZBO/PTgzgsjHtpb78rpsLzldhb4HZjFzBl06Z3eu4ZuwHTz\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-b2wDmqWyAwmI2rS5ut5UweBS1V32L/k1+2Oo7eCaHdXOS/1bFwC8AKevTI6N28LN\";s:13:\"css/solid.css\";s:71:\"sha384-+iHwwKZGTdlVFbv4fsKmLkogfdKlp47zQGkSMDN3ANc8kXjyKudKvQwinI5VH+2C\";s:15:\"css/regular.css\";s:71:\"sha384-0w6MzzKHIB9cUlfWSmSp1Pj6XqGGDseWSMz1Yppk3UOc1dhYhpFx1AuCkMBECEvC\";s:13:\"css/light.css\";s:71:\"sha384-shmfBA2CRxp88gq8NcvWbEN8KExYU4uvQUBEG36BStGZ5k91nGKE4wDvvWvuimbu\";s:19:\"css/fontawesome.css\";s:71:\"sha384-+5VkSw5C1wIu2iUZEfX77QSYRb5fhjmEsRn8u4r9Ma8mvu/GvTag4LDSEAw7RjXl\";s:14:\"css/brands.css\";s:71:\"sha384-VRONz34zTLl4P+DLYyJ8kP8C3tB1PGtqL5p8nBAvHuoc1u32bR3RHixrjffD8Fly\";s:11:\"css/all.css\";s:71:\"sha384-OGsxOZf8qnUumoWWSmTqXMPSNI9URpNYN35fXDb5Cv5jT6OR673ah1e5q+9xKTq6\";}s:4:\"free\";a:12:{s:14:\"js/v4-shims.js\";s:71:\"sha384-4CnzNxEP5RK316IYY2+W4hc05uJdfd+p9iNVeNG9Ws3Qxf5tKolysO9wu/8rloj2\";s:11:\"js/solid.js\";s:71:\"sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l\";s:13:\"js/regular.js\";s:71:\"sha384-t7yHmUlwFrLxHXNLstawVRBMeSLcXTbQ5hsd0ifzwGtN7ZF7RZ8ppM7Ldinuoiif\";s:17:\"js/fontawesome.js\";s:71:\"sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c\";s:12:\"js/brands.js\";s:71:\"sha384-sCI3dTBIJuqT6AwL++zH7qL8ZdKaHpxU43dDt9SyOzimtQ9eyRhkG3B7KMl6AO19\";s:9:\"js/all.js\";s:71:\"sha384-SlE991lGASHoBfWbelyBPLsUlwY1GwNDJo3jSJO04KZ33K2bwfV9YBauFfnzvynJ\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-TGBI4yK0MJz2ga16RLBBt4xT4aoPMPmRYhfu1Kl5IJ0gsLyOBIKHEb49BtoO+lPS\";s:13:\"css/solid.css\";s:71:\"sha384-v2Tw72dyUXeU3y4aM2Y0tBJQkGfplr39mxZqlTBDUZAb9BGoC40+rdFCG0m10lXk\";s:15:\"css/regular.css\";s:71:\"sha384-A/oR8MwZKeyJS+Y0tLZ16QIyje/AmPduwrvjeH6NLiLsp4cdE4uRJl8zobWXBm4u\";s:19:\"css/fontawesome.css\";s:71:\"sha384-q3jl8XQu1OpdLgGFvNRnPdj5VIlCvgsDQTQB6owSOHWlAurxul7f+JpUOVdAiJ5P\";s:14:\"css/brands.css\";s:71:\"sha384-IiIL1/ODJBRTrDTFk/pW8j0DUI5/z9m1KYsTm/RjZTNV8RHLGZXkUDwgRRbbQ+Jh\";s:11:\"css/all.css\";s:71:\"sha384-3AB7yXWz4OeoZcPbieVW64vVXEwADiYyAEhwilzWsLw+9FgqpyjjStpPnpBO8o8S\";}}}s:5:\"5.0.9\";a:5:{s:7:\"version\";s:5:\"5.0.9\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:0;}s:4:\"date\";s:19:\"2018-03-27T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:1718;s:4:\"free\";i:989;}s:3:\"sri\";a:2:{s:3:\"pro\";a:14:{s:14:\"js/v4-shims.js\";s:71:\"sha384-vuyo8HdrwozCl2DhHOJ40ytjEx9FGy0cqu8i5GHeIoSUm6MPgqCXAVoUIsudKfuE\";s:11:\"js/solid.js\";s:71:\"sha384-nISI3wKDp2gWn9L91zXOKXZ6JPt2mteGTnaJAMfeNgAoeLKl2AQsWLH69HMmBXHa\";s:13:\"js/regular.js\";s:71:\"sha384-C6h/8oKUfY6cVuGfFSu9uGIlFkaD1u1j+ByYGFTdFbOpHOHpw39lKxqEpRgLQg6A\";s:11:\"js/light.js\";s:71:\"sha384-06sraYAcw8BzUjsPn5z8Qi/QAA2/ZJl5GN3LGtRp7k+tZpu7kw+sRNXDDTU4RkOt\";s:17:\"js/fontawesome.js\";s:71:\"sha384-8QYlVHotqQzcAVhJny7MO9ZR0hASr6cRCpURV+EobTTAv5wftkn4i+U6UrMqoCis\";s:12:\"js/brands.js\";s:71:\"sha384-yIJb2TJeTM04vupX+3lv0Qp9j0Pnk8Qm9UPYlXr3H0ROCHNNLoacpS++HWDabbzi\";s:9:\"js/all.js\";s:71:\"sha384-DtPgXIYsUR6lLmJK14ZNUi11aAoezQtw4ut26Zwy9/6QXHH8W3+gjrRDT+lHiiW4\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-yVUvm1bVSmayKKt0YHPKotNQzlBvgNhEBbQ6U1d38bjpapXMVmE+SLXrpQ9td4Ij\";s:13:\"css/solid.css\";s:71:\"sha384-k8v16DuQ4ZFtRfpTeqTW4tcHIj5tkvUNQm1QiLs90XiToLzyFeV+yxujHjSZ2wim\";s:15:\"css/regular.css\";s:71:\"sha384-hJbmKHxbgrH79UtKxubo1UTe96bOL4Xfhjaqr0csD1UMPEPbeV+446QAC+IGxY+b\";s:13:\"css/light.css\";s:71:\"sha384-wD8IB6DSQidXyIWfwBrsFwTaHTQDsgzyeqzhd1jNdBZHvGSa7KRGb6Q5sMlroCyk\";s:19:\"css/fontawesome.css\";s:71:\"sha384-31qpW3hduWGiGey9tdI9rBBxiog5pxZbPiAlD6YKIgy0P2V1meprKhvpk+xJDkMw\";s:14:\"css/brands.css\";s:71:\"sha384-+LMmZxgyldhNCY6nei3oAWJjHbpbROtVb+f5Ux/nahA+Xjm3wcNdu7zyB39Yj38S\";s:11:\"css/all.css\";s:71:\"sha384-L+XK540vkePe55E7PAfByfvW0XpsyYpsifTpgh/w8WvH6asVg/c2zqp0EfZfZTbF\";}s:4:\"free\";a:12:{s:14:\"js/v4-shims.js\";s:71:\"sha384-9f5gaI9TkuYhi5O/inzfdOXx2nkIhDsLtXqBNmtY6/c5PoqXfd0U2DAjqQVSCXQh\";s:11:\"js/solid.js\";s:71:\"sha384-P4tSluxIpPk9wNy8WSD8wJDvA8YZIkC6AQ+BfAFLXcUZIPQGu4Ifv4Kqq+i2XzrM\";s:13:\"js/regular.js\";s:71:\"sha384-BazKgf1FxrIbS1eyw7mhcLSSSD1IOsynTzzleWArWaBKoA8jItTB5QR+40+4tJT1\";s:17:\"js/fontawesome.js\";s:71:\"sha384-2IUdwouOFWauLdwTuAyHeMMRFfeyy4vqYNjodih+28v2ReC+8j+sLF9cK339k5hY\";s:12:\"js/brands.js\";s:71:\"sha384-qJKAzpOXfvmSjzbmsEtlYziSrpVjh5ROPNqb8UZ60myWy7rjTObnarseSKotmJIx\";s:9:\"js/all.js\";s:71:\"sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-Hl6tZnMfNiJHYyFxpmnRV8+pziARxY3X/4XWfFXldG7sdkkLv+Od2Gpc57P7C1g6\";s:13:\"css/solid.css\";s:71:\"sha384-29Ax2Ao1SMo9Pz5CxU1KMYy+aRLHmOu6hJKgWiViCYpz3f9egAJNwjnKGgr+BXDN\";s:15:\"css/regular.css\";s:71:\"sha384-seionXF7gEANg+LFxIOw3+igh1ZAWgHpNR8SvE64G/Zgmjd918dTL55e8hOy7P4T\";s:19:\"css/fontawesome.css\";s:71:\"sha384-Lyz+8VfV0lv38W729WFAmn77iH5OSroyONnUva4+gYaQTic3iI2fnUKtDSpbVf0J\";s:14:\"css/brands.css\";s:71:\"sha384-ATC/oZittI09GYIoscTZKDdBr/kI3lCwzw3oBMnOYCPVNJ4i7elNlCxSgLfdfFbl\";s:11:\"css/all.css\";s:71:\"sha384-5SOiIsAziJl6AWe0HWRKTXlfcSHKmYV4RBF18PPJ173Kzn7jzMyFuTtk8JA7QQG1\";}}}s:6:\"5.0.10\";a:5:{s:7:\"version\";s:6:\"5.0.10\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:0;}s:4:\"date\";s:19:\"2018-04-10T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:1718;s:4:\"free\";i:991;}s:3:\"sri\";a:2:{s:3:\"pro\";a:14:{s:14:\"js/v4-shims.js\";s:71:\"sha384-H+U1wWQdWbEtuQPJ4ZpMl8yWydI6xc/306L/NZkpGY8BGpeSpu39V20x03S3xcMw\";s:11:\"js/solid.js\";s:71:\"sha384-m3J/Wb6KcNkFJIpCugSSJITG80sKhEA+16UCFdq1LnpMTOCXwwpeyrE1FmyqoArv\";s:13:\"js/regular.js\";s:71:\"sha384-QNGmoJVI8f07j7N4+DSn4Cdob1PTBJOR6jRGwUwqSPyL2HmvWaBPXuSXOcStGo9D\";s:11:\"js/light.js\";s:71:\"sha384-rv/n2A+UxOzR1qs4wrcOtJ7Ai5Hcn3QQ8tvEkOo5lCvqCD3xwpeO3KZP18JpSXr3\";s:17:\"js/fontawesome.js\";s:71:\"sha384-TxXqLyCP6HYGVtr9V1M1rQE7IMbBEZoDdOX+MFeYNbWNwopWKVQM8NyqtU2x+5t2\";s:12:\"js/brands.js\";s:71:\"sha384-OwdVp9K/baqiXthTvRnYzMcsTaqwG19SfDkTRc/GBIhK9eYlWVVBEvLlueA0STAP\";s:9:\"js/all.js\";s:71:\"sha384-+1nLPoB0gaUktsZJP+ycZectl3GX7wP8Xf2PE/JHrb7X1u7Emm+v7wJMbAcPr8Ge\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-S/uB02cfkgX8kd+j6f3gmw/PPTg8xSiE/w6d8dE852PzHXkGBYLrqpWFse9hInR2\";s:13:\"css/solid.css\";s:71:\"sha384-WjYgBJXUWNFTzFd4wNJuzUZx28GSgjzXrPO4LJrng96HFrI/nLrG1R5NET65v1yR\";s:15:\"css/regular.css\";s:71:\"sha384-D4yOV+i5oKU6w8CiadBDVtSim/UXmlmQfrIdRsuKT3nYhiF/Tb6YLQtyF9l0vqQF\";s:13:\"css/light.css\";s:71:\"sha384-k/d3hya1Xwx/V3yLAr7/6ibFaFIaN+xeY1eIv42A1Bn2HgfB+/YjLscji1sHLOkb\";s:19:\"css/fontawesome.css\";s:71:\"sha384-HE+OCjOJOPZavEcVffA6E24sIfY2RwV4JRieXa/3N5iCY8vgnTwZemElENQ8ak/K\";s:14:\"css/brands.css\";s:71:\"sha384-cyAsyPMdnj21FGg6BEGfZdZ99a/opKBeFa8z5VoHPsPj+tLRYSxkRlPWnGkCJGyA\";s:11:\"css/all.css\";s:71:\"sha384-KwxQKNj2D0XKEW5O/Y6haRH39PE/xry8SAoLbpbCMraqlX7kUP6KHOnrlrtvuJLR\";}s:4:\"free\";a:12:{s:14:\"js/v4-shims.js\";s:71:\"sha384-RLvgmog5EsZMMDnT3uJo6ScffPHTtMbhtV8pcT8kP5UJzlVRU1SP9Hccelk3zYZc\";s:11:\"js/solid.js\";s:71:\"sha384-Q7KAHqDd5trmfsv85beYZBsUmw0lsreFBQZfsEhzUtUn5HhpjVzwY0Aq4z8DY9sA\";s:13:\"js/regular.js\";s:71:\"sha384-JWLWlnwX0pRcCBsI3ZzOEyVDoUmngnFnbXR9VedCc3ko4R3xDG+KTMYmVciWbf4N\";s:17:\"js/fontawesome.js\";s:71:\"sha384-M2FSA4xMm1G9m4CNXM49UcDHeWcDZNucAlz1WVHxohug0Uw1K+IpUhp/Wjg0y6qG\";s:12:\"js/brands.js\";s:71:\"sha384-6jhVhr5a+Z1nLr9h+fd7ocMEo847wnGFelCHddaOOACUeZNoQwFXTxh4ysXVam8u\";s:9:\"js/all.js\";s:71:\"sha384-slN8GvtUJGnv6ca26v8EzVaR9DC58QEwsIk9q1QXdCU8Yu8ck/tL/5szYlBbqmS+\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-ucawWSvpdgQ67m4VQzI6qBOHIsGRoY2soJtCkkp15b6IaNCLgauWkbKR8SAuiDQ7\";s:13:\"css/solid.css\";s:71:\"sha384-HTDlLIcgXajNzMJv5hiW5s2fwegQng6Hi+fN6t5VAcwO/9qbg2YEANIyKBlqLsiT\";s:15:\"css/regular.css\";s:71:\"sha384-R7FIq3bpFaYzR4ogOiz75MKHyuVK0iHja8gmH1DHlZSq4tT/78gKAa7nl4PJD7GP\";s:19:\"css/fontawesome.css\";s:71:\"sha384-8WwquHbb2jqa7gKWSoAwbJBV2Q+/rQRss9UXL5wlvXOZfSodONmVnifo/+5xJIWX\";s:14:\"css/brands.css\";s:71:\"sha384-KtmfosZaF4BaDBojD9RXBSrq5pNEO79xGiggBxf8tsX+w2dBRpVW5o0BPto2Rb2F\";s:11:\"css/all.css\";s:71:\"sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg\";}}}s:6:\"5.0.12\";a:5:{s:7:\"version\";s:6:\"5.0.12\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:0;}s:4:\"date\";s:19:\"2018-05-03T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:1748;s:4:\"free\";i:1043;}s:3:\"sri\";a:2:{s:3:\"pro\";a:14:{s:14:\"js/v4-shims.js\";s:71:\"sha384-6+8zJP76v3EziONR2vMd32iSU3qbdicAE8KNp+NWniM6mBmvN80NlY+sbvCO+w7M\";s:11:\"js/solid.js\";s:71:\"sha384-y//1Knkpeyl2S568g2ECqUA4n3MKf+kpj1/sfjUQbR1WtBPONceBHrQVMiAqfjLH\";s:13:\"js/regular.js\";s:71:\"sha384-p/qo0lifpToZ0ubNiv1WFzlmYJU+BOenvU+evARCvCqALvbpZuqmZQ207vmYD6QL\";s:11:\"js/light.js\";s:71:\"sha384-z7YlG414oqy0TO7qY/nGfC8zd1LL8JAX3iNQ3iLybUIziHzaMYqBwUvhizEwV0Fd\";s:17:\"js/fontawesome.js\";s:71:\"sha384-CUrLKzrygRugRUPtEJ1u4nV4Ec6GnuDMRDGaxfoFXLI+sraWS6rqGg2Sjfs6BTet\";s:12:\"js/brands.js\";s:71:\"sha384-QlvHmHtevrYI4s/vdiK6chTDouw2pRA5av6ZLVtENubkoCgSZz4ZaXVvplQ1FRPs\";s:9:\"js/all.js\";s:71:\"sha384-quzri7saio48xMf3ED3HiI5YaItt68Q+0J3qc9EIfk1jk3QqCJhS24l6CZpUGfEe\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-ubRAMbpAKC+ULwg5mkUQLFReIXq1yeiKIcfV7cYp+rEaeINfEglYX6JOte80PCDk\";s:13:\"css/solid.css\";s:71:\"sha384-KY40QRrgoQAM9BPN+gm7JoK30M/P6QqKRCbXUS3uWbPfycyiVeEsPkGNMhcNL3DU\";s:15:\"css/regular.css\";s:71:\"sha384-tYZB+BP2inzRg01pQhSlW4Tloc0ULXYGiBaf5kSB5Tb3+l84bJy+PKerqziKz3iv\";s:13:\"css/light.css\";s:71:\"sha384-PWGGmWk9+xVydf1Gzso0ouaikBBKLu4nCY52q+tBUMq5iXmRhpgTuDkjbtxZ1rXT\";s:19:\"css/fontawesome.css\";s:71:\"sha384-ZDxYpspDwfEsC0ZJDb74i/Rqjb1CnX3a69Dz9vXv4PvvlTEkgMI02TATTRNJoZ06\";s:14:\"css/brands.css\";s:71:\"sha384-M4owBK0KiG0Vz+G5z/8v8tBb1+w9ts66Z6xKkZEPgBwzISkrcNra4GxZcvJPyaGB\";s:11:\"css/all.css\";s:71:\"sha384-HX5QvHXoIsrUAY0tE/wG8+Wt1MwvaY28d9Zciqcj6Ob7Tw99tFPo4YUXcZw9l930\";}s:4:\"free\";a:12:{s:14:\"js/v4-shims.js\";s:71:\"sha384-STc8Gazx86A+NmeBWQTqa5Ob1wGSRQZevexYiUkKdiqZhi5LSZ28XYAvgptHK5HH\";s:11:\"js/solid.js\";s:71:\"sha384-652/z7yNdGONCCBu0u5h5uF9voJhBdgruAuIDVheEaQ7O/ZC9wyyV+yZsYb32Wy7\";s:13:\"js/regular.js\";s:71:\"sha384-6XNKyHeL6pEPXURVNSKQ0lUP80a5FHqN0oFqSSS8Qviyy2u0KmCMJlQ5iLiAAPBg\";s:17:\"js/fontawesome.js\";s:71:\"sha384-6AOxTjzzZLvbTJayrLOYweuPckqh0rrB4Sj+Js8Vzgr85/qm2e0DRqi+rBzyK52J\";s:12:\"js/brands.js\";s:71:\"sha384-BPIhZF7kZGuZzBS4SP/oIqzpxWuOUtsPLUTVGpGw+EtB1wKt1hv63jb2OCroS3EX\";s:9:\"js/all.js\";s:71:\"sha384-Voup2lBiiyZYkRto2XWqbzxHXwzcm4A5RfdfG6466bu5LqjwwrjXCMBQBLMWh7qR\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-N44Xrku5FaDiZLZ8lncIZLh+x9xiqk1r0NTlUJQ5xanSpdORyQHP4Zp2WQJ9GlpJ\";s:13:\"css/solid.css\";s:71:\"sha384-VxweGom9fDoUf7YfLTHgO0r70LVNHP5+Oi8dcR4hbEjS8UnpRtrwTx7LpHq/MWLI\";s:15:\"css/regular.css\";s:71:\"sha384-RGDxJbFQcd3/Rei8rYb+3xO3YREd0abxm8WfLkYj7j4HHo5ZVuNUGVx8H8GbpFTQ\";s:19:\"css/fontawesome.css\";s:71:\"sha384-rnr8fdrJ6oj4zli02To2U/e6t1qG8dvJ8yNZZPsKHcU7wFK3MGilejY5R/cUc5kf\";s:14:\"css/brands.css\";s:71:\"sha384-Pln/erVatVEIIVh7sfyudOXs5oajCSHg7l5e2Me02e3TklmDuKEhQ8resTIwyI+w\";s:11:\"css/all.css\";s:71:\"sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9\";}}}s:6:\"5.0.13\";a:5:{s:7:\"version\";s:6:\"5.0.13\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:0;}s:4:\"date\";s:19:\"2018-05-10T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:1877;s:4:\"free\";i:1109;}s:3:\"sri\";a:2:{s:3:\"pro\";a:14:{s:14:\"js/v4-shims.js\";s:71:\"sha384-LDfu/SrM7ecLU6uUcXDDIg59Va/6VIXvEDzOZEiBJCh148mMGba7k3BUFp1fo79X\";s:11:\"js/solid.js\";s:71:\"sha384-CucLC75yxFXtBjA/DCHWMS14abAUhf5HmFRdHyKURqqLqi3OrLsyhCyqp83qjiOR\";s:13:\"js/regular.js\";s:71:\"sha384-1bAvs6o5Yb7MMzvTI3oq2qkreCQFDXb6KISLBhrHR+3sJ/mm7ZWfnQVRwScbPEmd\";s:11:\"js/light.js\";s:71:\"sha384-+iGqamqASU/OvBgGwlIHH6HSEgiluzJvTqcjJy8IN9QG9aUfd0z0pKpTlH7TpU7X\";s:17:\"js/fontawesome.js\";s:71:\"sha384-BUkEHIKZJ0ussRY3zYfFL7R0LpqWmucr9K38zMTJWdGQywTjmzbejVSNIHuNEhug\";s:12:\"js/brands.js\";s:71:\"sha384-44Hl7UlQr9JXHFcZOp9qWHk2H1lrsAN/cG3GNgB2JqbciecuJ2/B9sjelOMttzBM\";s:9:\"js/all.js\";s:71:\"sha384-d84LGg2pm9KhR4mCAs3N29GQ4OYNy+K+FBHX8WhimHpPm86c839++MDABegrZ3gn\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-8YpCivPy+AkMdZ0uAvEP04Gs77AN/6mS5AmZqkCwniP51zSG8rCMaH06OYuC4iXd\";s:13:\"css/solid.css\";s:71:\"sha384-drdlAcijFWubhOfj9OS/gy2Gs34hVhVT90FgJLzrldrLI+7E7lwBxmanEEhKTRTS\";s:15:\"css/regular.css\";s:71:\"sha384-HLkkol/uuRVQDnHaAwidOxb1uCbd78FoGV/teF8vONYKRP9oPQcBZKFdi3LYDy/C\";s:13:\"css/light.css\";s:71:\"sha384-d8NbeymhHpk+ydwT2rk4GxrRuC9pDL/3A6EIedSEYb+LE+KQ5QKgIWTjYwHj/NBs\";s:19:\"css/fontawesome.css\";s:71:\"sha384-LDuQaX4rOgqi4rbWCyWj3XVBlgDzuxGy/E6vWN6U7c25/eSJIwyKhy9WgZCHQWXz\";s:14:\"css/brands.css\";s:71:\"sha384-t3MQUMU0g3tY/0O/50ja6YVaEFYwPpOiPbrHk9p5DmYtkHJU2U1/ujNhYruOJwcj\";s:11:\"css/all.css\";s:71:\"sha384-oi8o31xSQq8S0RpBcb4FaLB8LJi9AT8oIdmS1QldR8Ui7KUQjNAnDlJjp55Ba8FG\";}s:4:\"free\";a:12:{s:14:\"js/v4-shims.js\";s:71:\"sha384-qqI1UsWtMEdkxgOhFCatSq+JwGYOQW+RSazfcjlyZFNGjfwT/T1iJ26+mp70qvXx\";s:11:\"js/solid.js\";s:71:\"sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ\";s:13:\"js/regular.js\";s:71:\"sha384-IJ3h7bJ6KqiB70L7/+fc44fl+nKF5eOFkgM9l/zZii9xs7W2aJrwIlyHZiowN+Du\";s:17:\"js/fontawesome.js\";s:71:\"sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY\";s:12:\"js/brands.js\";s:71:\"sha384-G/XjSSGjG98ANkPn82CYar6ZFqo7iCeZwVZIbNWhAmvCF2l+9b5S21K4udM7TGNu\";s:9:\"js/all.js\";s:71:\"sha384-xymdQtn1n3lH2wcu0qhcdaOpQwyoarkgLVxC/wZ5q7h9gHtxICrpcaSUfygqZGOe\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-LAtyQAMHxrIJzktG06ww5mJ0KQ+uCqQIJFjwj+ceCjUlZ2jkLwJZt1nBGw4KaFEZ\";s:13:\"css/solid.css\";s:71:\"sha384-Rw5qeepMFvJVEZdSo1nDQD5B6wX0m7c5Z/pLNvjkB14W6Yki1hKbSEQaX9ffUbWe\";s:15:\"css/regular.css\";s:71:\"sha384-EWu6DiBz01XlR6XGsVuabDMbDN6RT8cwNoY+3tIH+6pUCfaNldJYJQfQlbEIWLyA\";s:19:\"css/fontawesome.css\";s:71:\"sha384-GVa9GOgVQgOk+TNYXu7S/InPTfSDTtBalSgkgqQ7sCik56N9ztlkoTr2f/T44oKV\";s:14:\"css/brands.css\";s:71:\"sha384-VGCZwiSnlHXYDojsRqeMn3IVvdzTx5JEuHgqZ3bYLCLUBV8rvihHApoA1Aso2TZA\";s:11:\"css/all.css\";s:71:\"sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp\";}}}s:5:\"5.1.0\";a:5:{s:7:\"version\";s:5:\"5.1.0\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2018-06-20T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:2068;s:4:\"free\";i:1264;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-9gfBAY6DS3wT0yuvYN1aaA1Q9R0fYQHliQWLChuYDWJJ0wQJpoNZrzlcqd4+qqny\";s:11:\"js/solid.js\";s:71:\"sha384-q6QALO/4RSDjqnloeDcGnkB0JdK3MykIi6dUW5YD66JHE3JFf8rwtV5AQdYHdE0X\";s:13:\"js/regular.js\";s:71:\"sha384-S21AhcbZ5SXPXH+MH7JuToqmKYXviahLaD1s9yApRbu1JDiMjPBGQIw/3PCHKUio\";s:11:\"js/light.js\";s:71:\"sha384-77i21WTcIcnSPKxwR794RLUQitpNqm6K3Fxsjx8hgoc3ZZbPJu5orgvU/7xS3EFq\";s:17:\"js/fontawesome.js\";s:71:\"sha384-ckjcH5WkBMAwWPjTJiy7K2LaLp37yyCVKAs3DKjhPdo0lRCDIScolBzRsuaSu+bQ\";s:12:\"js/brands.js\";s:71:\"sha384-QPbiRUBnwCr8JYNjjm7CB0QP9h4MLvWUZhsChFX6dLzRkY22/nAxVYqa5nUTd6PL\";s:9:\"js/all.js\";s:71:\"sha384-E5SpgaZcbSJx0Iabb3Jr2AfTRiFnrdOw1mhO19DzzrT9L+wCpDyHUG2q07aQdO6E\";s:16:\"css/v4-shims.css\";s:71:\"sha384-2RBBYH6GaI11IJzJ6V1eL7kXXON+epoQIt+HqpzQdBrtyT7gNwKPDxo2roxUbtW9\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-/h6SKuA/ysT91EgYEGm9B6Z6zlaxuvKeW/JB7FWdGwCFalafxmGzJE2a63hS1BLm\";s:13:\"css/solid.css\";s:71:\"sha384-rvfDcG9KDoxdTesRF/nZ/sj8CdQU+hy6JbNMwxUTqpoI2LaPK8ASQk6E4bgabrox\";s:15:\"css/regular.css\";s:71:\"sha384-6kuJOVhnZHzJdVIZJcWiMZVi/JwinbqLbVxIbR73nNqXnYJDQ5TGtf+3XyASO4Am\";s:13:\"css/light.css\";s:71:\"sha384-ANTAgj8tbw0vj4HgQ4HsB886G2pH15LXbruHPCBcUcaPAtn66UMxh8HQcb1cH141\";s:19:\"css/fontawesome.css\";s:71:\"sha384-PnWzJku7hTqk2JREATthkLpYeVVGcBbXG5yEzk7hD2HIr/VxffIDfNSR7p7u4HUy\";s:14:\"css/brands.css\";s:71:\"sha384-C1HxUFJBptCeaMsYCbPUw8fdL2Cblu3mJZilxrfujE+7QLr8BfuzBl5rPLNM61F6\";s:11:\"css/all.css\";s:71:\"sha384-87DrmpqHRiY8hPLIr7ByqhPIywuSsjuQAfMXAE0sMUpY3BM7nXjf+mLIUSvhDArs\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-3qT9zZfeo1gcy2NmVv5dAhtOYkj91cMLXRkasOiRB/v+EU3G+LZUyk5uqZQdIPsV\";s:11:\"js/solid.js\";s:71:\"sha384-Z7p3uC4xXkxbK7/4keZjny0hTCWPXWfXl/mJ36+pW7ffAGnXzO7P+iCZ0mZv5Zt0\";s:13:\"js/regular.js\";s:71:\"sha384-Y+AVd32cSTAMpwehrH10RiRmA28kvu879VbHTG58mUFhd+Uxl/bkAXsgcIesWn3a\";s:17:\"js/fontawesome.js\";s:71:\"sha384-juNb2Ils/YfoXkciRFz//Bi34FN+KKL2AN4R/COdBOMD9/sV/UsxI6++NqifNitM\";s:12:\"js/brands.js\";s:71:\"sha384-ZqDZAkGUHrXxm3bvcTCmQWz4lt7QGLxzlqauKOyLwg8U0wYcYPDIIVTbZZXjbfsM\";s:9:\"js/all.js\";s:71:\"sha384-3LK/3kTpDE/Pkp8gTNp2gR/2gOiwQ6QaO7Td0zV76UFJVhqLl4Vl3KL1We6q6wR9\";s:16:\"css/v4-shims.css\";s:71:\"sha384-epK5t6ciulYxBQbRDZyYJFVuWey/zPlkBIbv6UujFdGiIwQCeWOyv5PVp2UQXbr2\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-5aLiCANDiVeIiNfzcW+kXWzWdC6riDYfxLS6ifvejaqYOiEufCh0zVLMkW4nr8iC\";s:13:\"css/solid.css\";s:71:\"sha384-TbilV5Lbhlwdyc4RuIV/JhD8NR+BfMrvz4BL5QFa2we1hQu6wvREr3v6XSRfCTRp\";s:15:\"css/regular.css\";s:71:\"sha384-avJt9MoJH2rB4PKRsJRHZv7yiFZn8LrnXuzvmZoD3fh1aL6aM6s0BBcnCvBe6XSD\";s:19:\"css/fontawesome.css\";s:71:\"sha384-ozJwkrqb90Oa3ZNb+yKFW2lToAWYdTiF1vt8JiH5ptTGHTGcN7qdoR1F95e0kYyG\";s:14:\"css/brands.css\";s:71:\"sha384-7xAnn7Zm3QC1jFjVc1A6v/toepoG3JXboQYzbM0jrPzou9OFXm/fY6Z/XiIebl/k\";s:11:\"css/all.css\";s:71:\"sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt\";}}}s:5:\"5.1.1\";a:5:{s:7:\"version\";s:5:\"5.1.1\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2018-07-16T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:2067;s:4:\"free\";i:1265;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-rJQjFeDWQReL3KmIeV81jB594CgKx/MmXyAgiuu88Jo253P+PSMgWzivZQtR6N6J\";s:11:\"js/solid.js\";s:71:\"sha384-PyvJtlnGBA/R+hfVbHbnzfeT8G/iTORqPhR5WKGTQXlfmLe5bV+d64NECHG4sIMa\";s:13:\"js/regular.js\";s:71:\"sha384-Mw6yr+W+X+ckaAUbsPUb2BcU3Af9aSjmPMIlMr2iplN0VQIpscDWy/VwY5w0sz9w\";s:11:\"js/light.js\";s:71:\"sha384-0rp6k6cJIuLV1ORowDSSKr4VbEqb664PQUWdBvhJyt6IfkshVb0r6UlOkX6yVdaI\";s:17:\"js/fontawesome.js\";s:71:\"sha384-EWJRWU7LQt+ri8YtDjTr8adATyP7y8DwlpE8zruoUC4nHNjtWZMU+iPYK+tFaV3U\";s:12:\"js/brands.js\";s:71:\"sha384-KCMfKsP/3VgeibBQRMu4bT+9041Hi2v9PIz9FLOPJBEvxCBklc4o7tRwwQu4FWsT\";s:9:\"js/all.js\";s:71:\"sha384-cHcg4nvWPIGArJhEgL2F5e09Cn1GyPQpNYKbPatFCpDefCbezZjPA3PhLozKTZnv\";s:16:\"css/v4-shims.css\";s:71:\"sha384-TUicmScQcYANFcc4OQKEX6V1Zek9o9t+dwW/2tZoXmSigBk9JqfHxZZFlSo+0oRl\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-++BmJ9x4V05AhCNnLr/RjPTY4BAFuhZsESUqH5hiwZspBvy7F+DRGvSH8tGHw9P/\";s:13:\"css/solid.css\";s:71:\"sha384-Ux3tEr1RmnxCht2XbPkWWBuotwMVXKOe0PkWN/nmiD5CSV6Tyjl+Kr0J0iX1yd0q\";s:15:\"css/regular.css\";s:71:\"sha384-AKIrAHbICIQF+NEqtykrcdzMjExDiKLa9hOyUVsr4PlHtktH7xaD10vO98UnPjuE\";s:13:\"css/light.css\";s:71:\"sha384-EGKQAl6ZrGi/zGxZ4ykVhc/A3tFVeBiLnneETILtcxQnZpo7ejmb4BkNa3zSgo4K\";s:19:\"css/fontawesome.css\";s:71:\"sha384-bHoj6f1b1CQ6zapOREeYBO/JnDjeV1fLuKn3KHnbqAAnkLva11KY3m8YyKPVXYLF\";s:14:\"css/brands.css\";s:71:\"sha384-E5dVkWQIVhVPtBz/KK2TS7EM9l1+5XiWFPX7l3+5ayHPwDguGsHqof3GQbk55AS3\";s:11:\"css/all.css\";s:71:\"sha384-xyMU7RufUdPGVOZRrc2z2nRWVWBONzqa0NFctWglHmt5q5ukL22+lvHAqhqsIm3h\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-T69Lzd4bE7W8/vVrxvfsx45/AAKf6QmKEg5zSl0v9aZwo/pTKseq81mxdpARTQpx\";s:11:\"js/solid.js\";s:71:\"sha384-GXi56ipjsBwAe6v5X4xSrVNXGOmpdJYZEEh/0/GqJ3JTHsfDsF8v0YQvZCJYAiGu\";s:13:\"js/regular.js\";s:71:\"sha384-sAzYCvbTTKFOxT4VHu+ZjHRMXjvfjT6TAqOng28g4jba88Peg5+hkoVIqQKGjmj1\";s:17:\"js/fontawesome.js\";s:71:\"sha384-NY6PHjYLP2f+gL3uaVfqUZImmw71ArL9+Roi9o+I4+RBqArA2CfW1sJ1wkABFfPe\";s:12:\"js/brands.js\";s:71:\"sha384-0inRy4HkP0hJ038ZyfQ4vLl+F4POKbqnaUB6ewmU4dWP0ki8Q27A0VFiVRIpscvL\";s:9:\"js/all.js\";s:71:\"sha384-BtvRZcyfv4r0x/phJt9Y9HhnN5ur1Z+kZbKVgzVBAlQZX4jvAuImlIz+bG7TS00a\";s:16:\"css/v4-shims.css\";s:71:\"sha384-LCsPWAjCFLDeFHB5Y0SBIOqgC5othK8pIZiJAdbJDiN10B2HXEm1mFNHtED8cViz\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-EH3TEAKYd7R0QbCS4OFuYoEpaXITVg5c/gdZ/beEaAbRjMGVuVLLFjiIKOneCzGZ\";s:13:\"css/solid.css\";s:71:\"sha384-S2gVFTIn1tJ/Plf+40+RRAxBCiBU5oAMFUJxTXT3vOlxtXm7MGjVj62mDpbujs4C\";s:15:\"css/regular.css\";s:71:\"sha384-QNorH84/Id/CMkUkiFb5yTU3E/qqapnCVt6k5xh1PFIJ9hJ8VfovwwH/eMLQTjGS\";s:19:\"css/fontawesome.css\";s:71:\"sha384-0b7ERybvrT5RZyD80ojw6KNKz6nIAlgOKXIcJ0CV7A6Iia8yt2y1bBfLBOwoc9fQ\";s:14:\"css/brands.css\";s:71:\"sha384-SYNjKRRe+vDW0KSn/LrkhG++hqCLJg9ev1jIh8CHKuEA132pgAz+WofmKAhPpTR7\";s:11:\"css/all.css\";s:71:\"sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ\";}}}s:5:\"5.2.0\";a:5:{s:7:\"version\";s:5:\"5.2.0\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2018-07-23T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:2357;s:4:\"free\";i:1295;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-aoMjEUBUPf5GpXx1WJUeTZ/gBmGqQB1u8uUc2J5LW2xnQtJKkGulESZ+rkoj182s\";s:11:\"js/solid.js\";s:71:\"sha384-1j3ph9Rf+Aaz6rrizz6cdFxU9ZbUyvkbiwQ5+T/BY4I5mk37vUpTA8S9ZZOlfdWu\";s:13:\"js/regular.js\";s:71:\"sha384-8hKZY21U4J3r9N0GFl+24YnDkbRhs8y/nXT6BaZ+sOJDNmz+1DhFawE9UYL37XzB\";s:11:\"js/light.js\";s:71:\"sha384-glAz6mCeiwAe/kHHHG/OvhrjA4+AH55ZfH8fwYp48YCY61POwUmOrH/oYOaF2Ujy\";s:17:\"js/fontawesome.js\";s:71:\"sha384-FQUuiJxt9F0hPc9IP3M5ndmqK53iBCGcy4ZSx8QirhYOIs8l7x+e1/zdswyZEigi\";s:12:\"js/brands.js\";s:71:\"sha384-eg9wHuvEPj6+GlGomBRaMHLF0QfCnjdASWDKd84DMeM9phhyDaPFou/nHJBt0bz+\";s:9:\"js/all.js\";s:71:\"sha384-yBZ34R8uZDBb7pIwm+whKmsCiRDZXCW1vPPn/3Gz0xm4E95frfRNrOmAUfGbSGqN\";s:16:\"css/v4-shims.css\";s:71:\"sha384-2QRS8Mv2zxkE2FAZ5/vfIJ7i0j+oF15LolHAhqFp9Tm4fQ2FEOzgPj4w/mWOTdnC\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-O6mvz45yC1vfdu/EgUxAoSGrP+sFtepMtj7eOQIW1G3WT9Sj5djActZC0hd/F42D\";s:13:\"css/solid.css\";s:71:\"sha384-B/E/KxBX31kY/5sew+X4c8e6ErosbqOOsA3t4k6VVmx8Hrz//v0tEUtXmUVx9X6Q\";s:15:\"css/regular.css\";s:71:\"sha384-g3XsWx0Sqi7JIjLKVnwUxEvqrxTMQPIf3PN+vTdWY2AhduP/rnj0rw89v0nbD4Ro\";s:13:\"css/light.css\";s:71:\"sha384-pcDR01P1wNxsYZiEYdROCAYhU2u8VHOctLrYRonRFtkf/TGEQFWt0rqFbPGWlyn4\";s:19:\"css/fontawesome.css\";s:71:\"sha384-4eP+1rYQmuI3hxrmyE+GT/EIiNbF4R85ciN3jMpmIh+bU5Hz2IU7AdcVe+JS+AJz\";s:14:\"css/brands.css\";s:71:\"sha384-Ei2oxwH0wpwmp7KPdhYnajC5fWDdMENOjDw9OfzWvcFcOGn0Egy+L5AAculaqBbD\";s:11:\"css/all.css\";s:71:\"sha384-TXfwrfuHVznxCssTxWoPZjhcss/hp38gEOH8UPZG/JcXonvBQ6SlsIF49wUzsGno\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-rn4uxZDX7xwNq5bkqSbpSQ3s4tK9evZrXAO1Gv9WTZK4p1+NFsJvOQmkos19ebn2\";s:11:\"js/solid.js\";s:71:\"sha384-YmNA3b9AQuWW8KZguYfqJa/YhKNTwGVD5pQc1cN0ZAVRudFFtR17HR7rooNcVXe4\";s:13:\"js/regular.js\";s:71:\"sha384-YdSTwqfKxyP06Jj3UzTeumv8M+Pme60+KND4oF+5r5VeUCvdkw7NhSzFYWbe00ba\";s:17:\"js/fontawesome.js\";s:71:\"sha384-QcnrgQuRmocjIBY6ByWMmDvUg3HO4MSdVjY7ynJwZfvTDhVPPQOUI9TRzc6/7ZO1\";s:12:\"js/brands.js\";s:71:\"sha384-4BRtleJgTYsMKIVuV1Z7lNE29r4MxwKR7u88TWG2GaXsmSljIykt/YDbmKndKGID\";s:9:\"js/all.js\";s:71:\"sha384-4oV5EgaV02iISL2ban6c/RmotsABqE4yZxZLcYMAdG7FAPsyHYAPpywE9PJo+Khy\";s:16:\"css/v4-shims.css\";s:71:\"sha384-W14o25dsDf2S/y9FS68rJKUyCoBGkLwr8owWTSTTHj4LOoHdrgSxw1cmNQMULiRb\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-jKeGgxY7zPT61fNXg6OMRDu8vsxOPRLMlgAIUHo1KVag4lyu5B03KsDLYOTMM4ld\";s:13:\"css/solid.css\";s:71:\"sha384-wnAC7ln+XN0UKdcPvJvtqIH3jOjs9pnKnq9qX68ImXvOGz2JuFoEiCjT8jyZQX2z\";s:15:\"css/regular.css\";s:71:\"sha384-zkhEzh7td0PG30vxQk1D9liRKeizzot4eqkJ8gB3/I+mZ1rjgQk+BSt2F6rT2c+I\";s:19:\"css/fontawesome.css\";s:71:\"sha384-HbmWTHay9psM8qyzEKPc8odH4DsOuzdejtnr+OFtDmOcIVnhgReQ4GZBH7uwcjf6\";s:14:\"css/brands.css\";s:71:\"sha384-nT8r1Kzllf71iZl81CdFzObMsaLOhqBU1JD2+XoAALbdtWaXDOlWOZTR4v1ktjPE\";s:11:\"css/all.css\";s:71:\"sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ\";}}}s:5:\"5.3.1\";a:5:{s:7:\"version\";s:5:\"5.3.1\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2018-08-28T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:2637;s:4:\"free\";i:1341;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-8e1r0+5VTqCqkg/9vG+cnipytzBkEh9fpESgVwBZAizMkWRfiaTkdhgdnhLGwuPd\";s:11:\"js/solid.js\";s:71:\"sha384-U4vTrZsQ4ooEtzL162EZfTtCiJNTXOwGDBzV91//DI5L/h48ibzHBiHJmPLpx2hO\";s:13:\"js/regular.js\";s:71:\"sha384-EbI+OvKb7noKOfu8MSi/vCbi0KWlM61MjHDmRk4/vwJkPsMIRcJggYLDGWv7VeYY\";s:11:\"js/light.js\";s:71:\"sha384-2R0W5LA7dXp3ze/WhvjXlUcDaHRhtGlKYxN9QMhGDdjmj2EI1bub5ysSwofJwGfI\";s:17:\"js/fontawesome.js\";s:71:\"sha384-u3o36ga3mMU6/lK/zdiER4h7pPtAK7wBuN0DrZPH22v01RZL8bKZkULIjxcx2/X/\";s:12:\"js/brands.js\";s:71:\"sha384-am5AyalpQCEfbKe6FYiGZc2vX080nrcueZmrbkljxLdQDJ5q5Vu9QDROD/QefEp1\";s:9:\"js/all.js\";s:71:\"sha384-eAVkiER0fL/ySiqS7dXu8TLpoR8d9KRzIYtG0Tz7pi24qgQIIupp0fn2XA1H90fP\";s:16:\"css/v4-shims.css\";s:71:\"sha384-1YFoQoO5Em1oxLErpWpJuswiqPFVHl8HLDUaLjJGJH8+Nra/Y1D6uOZkEgfH5OZf\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-Hmg9TonawJaGH8ayFFnEBwvkx61BYLPAOV7b/YDGQEVIs1jh9pWQigAavMuD+Vc/\";s:13:\"css/solid.css\";s:71:\"sha384-wJu5pIbEyJzi+kRgVKVQkPNKI104yNC+IAyK7XXEVGgPGe+LTEERIkpSZbc/wrOx\";s:15:\"css/regular.css\";s:71:\"sha384-pofSFWh/aTwxUvfNhg+LRpOXIFViguTD++4CNlmwgXOrQZj1EOJewBT+DmUVeyJN\";s:13:\"css/light.css\";s:71:\"sha384-9QuzjQIM/Un6pY9bKVJGLW8PauASO8Mf9y3QcsHhfZSXNyXGoXt/POh3VLeiv4mw\";s:19:\"css/fontawesome.css\";s:71:\"sha384-Yz2UJoJEWBkb0TBzOd2kozX5/G4+z5WzWMMZz1Np2vwnFjF5FypnmBUBPH2gUa1F\";s:14:\"css/brands.css\";s:71:\"sha384-AOiME8p6xSUbTO/93cbYmpOihKrqxrLjvkT2lOpIov+udKmjXXXFLfpKeqwTjNTC\";s:11:\"css/all.css\";s:71:\"sha384-9ralMzdK1QYsk4yBY680hmsb4/hJ98xK3w0TIaJ3ll4POWpWUYaA2bRjGGujGT8w\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-DtdEw3/pBQuSag11V3is/UZMjGkGMLDRBgk1UVAOvH6cYoqKjBmCEhePm13skjRV\";s:11:\"js/solid.js\";s:71:\"sha384-GJiigN/ef2B3HMj0haY+eMmG4EIIrhWgGJ2Rv0IaWnNdWdbWPr1sRLkGz7xfjOFw\";s:13:\"js/regular.js\";s:71:\"sha384-sqmLTIuB+bQgkyOcdJ/hAvXl51Z7qqdK/lcH/rt6sdvDKFincQWI+fVgcDZM6NMz\";s:17:\"js/fontawesome.js\";s:71:\"sha384-2OfHGv4zQZxcNK+oL8TR9pA+ADXtUODqGpIRy1zOgioC4X3+2vbOAp5Qv7uHM4Z8\";s:12:\"js/brands.js\";s:71:\"sha384-2vdvXGQdnt+ze3ylY5ESeZ9TOxwxlOsldUzQBwtjvRpen1FwDT767SqyVbYrltjb\";s:9:\"js/all.js\";s:71:\"sha384-kW+oWsYx3YpxvjtZjFXqazFpA7UP/MbiY4jvs+RWZo2+N94PFZ36T6TFkc9O3qoB\";s:16:\"css/v4-shims.css\";s:71:\"sha384-lmquXrF9qn7mMo6iRQ662vN44vTTVUBpcdtDFWPxD9uFPqC/aMn6pcQrTTupiv1A\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-4K9ulTwOtsXr+7hczR7fImKfUZY5THwqvfxwPx1VUCEOt4qssi2Vm+kHY7NJQPoy\";s:13:\"css/solid.css\";s:71:\"sha384-VGP9aw4WtGH/uPAOseYxZ+Vz/vaTb1ehm1bwx92Fm8dTrE+3boLfF1SpAtB1z7HW\";s:15:\"css/regular.css\";s:71:\"sha384-ZlNfXjxAqKFWCwMwQFGhmMh3i89dWDnaFU2/VZg9CvsMGA7hXHQsPIqS+JIAmgEq\";s:19:\"css/fontawesome.css\";s:71:\"sha384-1rquJLNOM3ijoueaaeS5m+McXPJCGdr5HcA03/VHXxcp2kX2sUrQDmFc3jR5i/C7\";s:14:\"css/brands.css\";s:71:\"sha384-rf1bqOAj3+pw6NqYrtaE1/4Se2NBwkIfeYbsFdtiR6TQz0acWiwJbv1IM/Nt/ite\";s:11:\"css/all.css\";s:71:\"sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU\";}}}s:5:\"5.4.1\";a:5:{s:7:\"version\";s:5:\"5.4.1\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2018-10-10T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:2969;s:4:\"free\";i:1388;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-e+EZ4XUeGXVd0FDmP/mFu7FFe+qVX738ayOS2AErNIPSLz5oZ3OgVa9zEyCds3HP\";s:11:\"js/solid.js\";s:71:\"sha384-KlTWIsOnBg7LJobQmLsv5fQ1qbx73K+o8/xhoUDoIba13SxF4bT5W2WgV3d8mZIw\";s:13:\"js/regular.js\";s:71:\"sha384-MB7Bz/7e8sBWnZgblSLUfFOOi+V1PIkRG/Ex1NMeu0CovaXCzHyCMwAwOF+FAo1s\";s:11:\"js/light.js\";s:71:\"sha384-jlaccvPpizUbHU/8pYAsDEwhhBae8MUcYqHHsKkjFcFsEp3Y6LrVXh0GA84aAkTg\";s:17:\"js/fontawesome.js\";s:71:\"sha384-8vKKeD0uIV/HXM5ym3RGB4O7rZ43fCdpiXqP047w7sEE3igcK0Y1U9ApEArcRBDJ\";s:12:\"js/brands.js\";s:71:\"sha384-ShBqjf9lFG58e2NmhnbVlhAOPCWdzkPbBmAEcQ37Liu3TwOYxIizS7J1P3rRLJHm\";s:9:\"js/all.js\";s:71:\"sha384-0+tugznPwCEvPiypW+OwmFjAQvRKlgI0ZZZW3nofNlLMmbYXbmNvfX/9up9XQSRs\";s:16:\"css/v4-shims.css\";s:71:\"sha384-aaXKvb/d7l2hTm3ZDWCy5v4ct5zXIslt+70K4xalZPLu3ifrkYcG61m4u+DIQGEk\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-j2EtHJUHBAZF9vkmX0TSA/QqYMf0Npp9P2leJGZFDbLHbcI62HH8w7FRcUMNf8Q2\";s:13:\"css/solid.css\";s:71:\"sha384-oT4lQmwnKx98HRnFgaGvgCdjtKOjep9CjfMdAOPtJU8Vy6NY3X34GfqL0H43ydJn\";s:15:\"css/regular.css\";s:71:\"sha384-xKPOvJDwdb/n5w2kh6cxds98Ae2d5N63xkIydEdoYeA2bxIKUmmyU9lZ9j58mLYS\";s:13:\"css/light.css\";s:71:\"sha384-DZAoxBcs4G15aUXLX4vKbO53ye8L8AB/zg07HOVhIMVclhx8rdWye0AJSQl51ehV\";s:19:\"css/fontawesome.css\";s:71:\"sha384-PPeKwWhk5XZBVVq089DuhGmjaEVB1r+jdmx6jZrqzlef8ojhZXG+E/D6SP7uO1dk\";s:14:\"css/brands.css\";s:71:\"sha384-rmUpvtaCngUop5CYz7WL1LnqkMweXskxP+1AXmkuMSbImsUuy82bUYS4A8Syd3Pf\";s:11:\"css/all.css\";s:71:\"sha384-POYwD7xcktv3gUeZO5s/9nUbRJG/WOmV6jfEGikMJu77LGYO8Rfs2X7URG822aum\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-/s2EnwEz7C3ziRundAGzeOAoGYffu84oY4SOHjhI/2Wqk3Z0usUm9bjdduzhZ9+z\";s:11:\"js/solid.js\";s:71:\"sha384-agDKwSYPuGlC0wD14lKXXwb94jlUkbkoSugquwmKRKWv/nDXe1kApDS/gqUlRQmZ\";s:13:\"js/regular.js\";s:71:\"sha384-SQqzt64aAzh3UJ9XghcA//GE8+NxAIRcuCrrekyDokXP6Bbt/FYAFlV6VSPrZKwH\";s:17:\"js/fontawesome.js\";s:71:\"sha384-ISRc+776vRkDOTSbmnyoZFmwHy7hw2UR3KJpb4YtcfOyqUqhLGou8j5YmYnvQQJ4\";s:12:\"js/brands.js\";s:71:\"sha384-lc/yFuYW3B0EW9B2QSpod2KeBxq6/ZizGwAW6mRLUe3kKUVlSBfDIVZKwKIz/DBg\";s:9:\"js/all.js\";s:71:\"sha384-L469/ELG4Bg9sDQbl0hvjMq8pOcqFgkSpwhwnslzvVVGpDjYJ6wJJyYjvG3u8XW7\";s:16:\"css/v4-shims.css\";s:71:\"sha384-YIDcSvDDaIskj/WDlWwjrNdK194YAGWc1CScdo2tXl3IQVS1zS07xQaoAFlXCf1P\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-2MWWLQq91kFwloAny7gkgoeV33bD/cE3A9ZbB2rCN/YAAR/VEHVoDq6vRJJYTaxM\";s:13:\"css/solid.css\";s:71:\"sha384-osqezT+30O6N/vsMqwW8Ch6wKlMofqueuia2H7fePy42uC05rm1G+BUPSd2iBSJL\";s:15:\"css/regular.css\";s:71:\"sha384-4e3mPOi7K1/4SAx8aMeZqaZ1Pm4l73ZnRRquHFWzPh2Pa4PMAgZm8/WNh6ydcygU\";s:19:\"css/fontawesome.css\";s:71:\"sha384-BzCy2fixOYd0HObpx3GMefNqdbA7Qjcc91RgYeDjrHTIEXqiF00jKvgQG0+zY/7I\";s:14:\"css/brands.css\";s:71:\"sha384-Px1uYmw7+bCkOsNAiAV5nxGKJ0Ixn5nChyW8lCK1Li1ic9nbO5pC/iXaq27X5ENt\";s:11:\"css/all.css\";s:71:\"sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz\";}}}s:5:\"5.4.2\";a:5:{s:7:\"version\";s:5:\"5.4.2\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2018-10-25T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:2967;s:4:\"free\";i:1391;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-6TX+vqRZyQq+vB25wCb101/vY510EN37QZgs5f1dfG1+QYuIoQGdFFV8sx8W36AL\";s:11:\"js/solid.js\";s:71:\"sha384-XlRgTEYU6HJ02+ZCuXW2/CgjnpV2+8FuQPTJSJ/+ZCQS5ZXRfIS5FHDRhMvOL++d\";s:13:\"js/regular.js\";s:71:\"sha384-f1yYCENdJ+9NE5J2T8weglyMCtTqRJOeGP9qaLwO43aYY0PVeuAfmsGgTegByFW6\";s:11:\"js/light.js\";s:71:\"sha384-hOiC7FL4572/E3aEEeWM6dF3ch/qFz59R91pAJqjYEKHBXN5u7e2oAYAgeSGF1VB\";s:17:\"js/fontawesome.js\";s:71:\"sha384-zMrS036pMtJ0Ukzo5x2YiTrYDGDaoeO8Yd0IHhI/PaEnfrY/nMHqvKME8C7dHhUE\";s:12:\"js/brands.js\";s:71:\"sha384-LVdS6BqWBV1V0OyGzWK0HrGN4uDZbpO6hja1oVh86MhthieoER2crgKS/KsaiN8E\";s:9:\"js/all.js\";s:71:\"sha384-+lZy0zDh4RS9ZG6+Od6x6irKqoBH4NSy0m7IW8UGbzGZ/rupt9Cd9NdEb5S7+V9w\";s:16:\"css/v4-shims.css\";s:71:\"sha384-ah4vMGE5UgKcCIB90FZl8BOcusXAVTm070n1UuOrNQA9QwkgnhqASrop/Oblr6wY\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-3f24zIRoR/ma/cnROK52rTVZpgCXKQ92/89RDq7GO7/9IxIl3VQV/tF6ecGgvUs8\";s:13:\"css/solid.css\";s:71:\"sha384-SYCdBxlsgGngJi9eiKt5Tk6UtOJs1Jq5eU3yZDZ+hOe0GKk/obXhHy50IYVVdJro\";s:15:\"css/regular.css\";s:71:\"sha384-+OdrK32QtByk1ipA7b4+uLddrcWs2bx3nn37Dl5h98PW1AYKIrRZKveBl6AcpgcD\";s:13:\"css/light.css\";s:71:\"sha384-n0uyPlhqrQyWPPzm6+B9xDeZKCD81RgGRsTO7PQt3McgMXSR9zjhGaD5cXHwk+D8\";s:19:\"css/fontawesome.css\";s:71:\"sha384-XkH+Vmez3OoFo52K+SkBE61xZ7vKh9tF35gL9Yf8rD3RtKUqIQGoTJTsLdR5u8rt\";s:14:\"css/brands.css\";s:71:\"sha384-RjTk1OTKX8K8S4QfwhFOfbNSbQxLFgN6jqDw05QuBDDEbc/x6xlPtkPSO4vA1TtI\";s:11:\"css/all.css\";s:71:\"sha384-zhaLg9HKxTxDljOPXpWHGn91XMDH+sYAWRSgvzHes290/ISyrNicGrd6BInTnx3L\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-fzYnAZZYxpOQTjc3Y1eP04DGdMLAy+PeiZ8+ICh4FDLkJR/NJiAgKgK2vEpGx3au\";s:11:\"js/solid.js\";s:71:\"sha384-OQNCj138epg9A13jaL9L/d5vMlK2jyPL4aOgi37KYt07aZARbv/eFGp/wnrCxkW5\";s:13:\"js/regular.js\";s:71:\"sha384-Uj7q9rRb3eJNp0j1kXwOBgEWDGbAiJ7Dcuz4hLRQdtza6pawbo/Bmwgr58THzHyR\";s:17:\"js/fontawesome.js\";s:71:\"sha384-n1qPouQQJ9VNZnZeNZWSDiclpIOJwZBS2bkD6rEX+DTmMXTKXBVCZw2cGbU/I17z\";s:12:\"js/brands.js\";s:71:\"sha384-i1RNpxOOEnRm63Ii3TuV0aM8bJ+6Pv6XHpRSJbN7QlIzZIsl7m36R0GhOTTGN3F9\";s:9:\"js/all.js\";s:71:\"sha384-wp96dIgDl5BLlOXb4VMinXPNiB32VYBSoXOoiARzSTXY+tsK8yDTYfvdTyqzdGGN\";s:16:\"css/v4-shims.css\";s:71:\"sha384-SlbnWxwEHTVYxDLrpIRrG2BpsTpWALbJ6Tx5Fq+XNHRBL7xI6xwhVpuUGrrbLBXe\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-+moUZLBX5mmeUnjaImkzlTo5cXyQWAvzbqQapNFd7+dGIaap0koo0rtfe8lHD38R\";s:13:\"css/solid.css\";s:71:\"sha384-uKQOWcYZKOuKmpYpvT0xCFAs/wE157X5Ua3H5onoRAOCNkJAMX/6QF0iXGGQV9cP\";s:15:\"css/regular.css\";s:71:\"sha384-OEIzojYBMrmz48aIjVQj7VG38613/sxpP58OW9h5zBYC7biGFlv9tyu5kWmaAYlF\";s:19:\"css/fontawesome.css\";s:71:\"sha384-HU5rcgG/yUrsDGWsVACclYdzdCcn5yU8V/3V84zSrPDHwZEdjykadlgI6RHrxGrJ\";s:14:\"css/brands.css\";s:71:\"sha384-BCEeiNUiLzxxoeYaIu7jJqq0aVVz2O2Ig4WbWEmRQ2Dx/AAxNV1wMDBXyyrxw1Zd\";s:11:\"css/all.css\";s:71:\"sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns\";}}}s:5:\"5.5.0\";a:5:{s:7:\"version\";s:5:\"5.5.0\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2018-11-02T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:3157;s:4:\"free\";i:1409;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-8sPM0eSaqmdF9ruedfsxEZfxVcIp0cwhosrBhWl/Q4t1eQSMXl6tYenNe87MraQ6\";s:11:\"js/solid.js\";s:71:\"sha384-VxezC2Q+YoC+yUILib+HlmOsFiqNzYtQIXsHYY6ST7QZVfgBNs2giKE97ijGMgUH\";s:13:\"js/regular.js\";s:71:\"sha384-gbY/GPDSEaMQ9cjqWLbLcaxUCtCeExO9oUEZLrOQHfFLoV5ouwIrqF6mGnjyIOc2\";s:11:\"js/light.js\";s:71:\"sha384-SVEn5VmGP1fxV9V5TOZOTwL9dCg50Yb0Xn4fbV9Ic/kp8we6kv4zPVcs9seU0675\";s:17:\"js/fontawesome.js\";s:71:\"sha384-oPma1F1txBbqTG+1O7BEx0A/qFtD+R661ULJLmI9RDQ0PfbRP1tQU3vBIBbJIAxL\";s:12:\"js/brands.js\";s:71:\"sha384-oMyy7aPCmlH4ZGEaKHW+zAoaKDWIFh6iqJ53lusMpn+Kp8SN5nJ2kzkP1qd0+icb\";s:9:\"js/all.js\";s:71:\"sha384-3yBLeJ4waqGSAf4A8pjZ13UF7GuhgbdKnBQvIp/TkWoXtQbtwjlIPNjkDRJ46UCn\";s:16:\"css/v4-shims.css\";s:71:\"sha384-SNyDPad7e8WM4Nu7W/f1x3qsDrLxMCvXurQfwNdp418WWmkkTQuPBGYDZA6rSg0X\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-a2sfkqnB9p/zq6OT4QhuD80qQZ70fGDmo4JUNqP5E7NIICvgRNPjIBkQE/Qcl3SN\";s:13:\"css/solid.css\";s:71:\"sha384-YIyAArzQv8q6Av1kr9cwxHhFcfNBUaolJindR2XO8E3OLp6z3d8My3oWLd33ET7M\";s:15:\"css/regular.css\";s:71:\"sha384-UPs+YiUhgn0/I0swkJmk3PSj3SWmzDrM+S0S09xLI/UUmHBU7ivRHryI3uVL6H+m\";s:13:\"css/light.css\";s:71:\"sha384-33RmjeesW9BZ4wR2Gm3n4iBXOvGTto4znqL2kZleiRanWDxM59IHIq5RsbRioqxb\";s:19:\"css/fontawesome.css\";s:71:\"sha384-srL3Qh9R/n855m4o5fegS//B2q0R1md7z6ndDYaPj8iEp0j0IuKdFVWMY0JosKPF\";s:14:\"css/brands.css\";s:71:\"sha384-t0iPfoyIjBoVR2Kw/65HArpRWQy0/xKBUmdEVTs5VYBb/yiPZxMY6egc9MROr/Og\";s:11:\"css/all.css\";s:71:\"sha384-j8y0ITrvFafF4EkV1mPW0BKm6dp3c+J9Fky22Man50Ofxo2wNe5pT1oZejDH9/Dt\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-vBDTb50BKnwbvJZ5ZC5dsGJNQydTI7ZoAjCeJkdta6nSewwGXCnppKI5lrIQX4Qu\";s:11:\"js/solid.js\";s:71:\"sha384-Xgf/DMe1667bioB9X1UM5QX+EG6FolMT4K7G+6rqNZBSONbmPh/qZ62nBPfTx+xG\";s:13:\"js/regular.js\";s:71:\"sha384-XrvTJeiQ46fxxPrZP6fay5yejA2FV4G1XsS8E4Piz6Fz+7FaEFTw7A7GR972irVV\";s:17:\"js/fontawesome.js\";s:71:\"sha384-bNOdVeWbABef8Lh4uZ8c3lJXVlHdf8W5hh1OpJ4dGyqIEhMmcnJrosjQ36Kniaqm\";s:12:\"js/brands.js\";s:71:\"sha384-S2C955KPLo8/zc2J7kJTG38hvFV+SnzXM6hwfEUhGHw5wPo6uXbnbjSJgw3clO4G\";s:9:\"js/all.js\";s:71:\"sha384-GqVMZRt5Gn7tB9D9q7ONtcp4gtHIUEW/yG7h98J7IpE3kpi+srfFyyB/04OV6pG0\";s:16:\"css/v4-shims.css\";s:71:\"sha384-TTjEZR8VsD+LjNa98drkrTRYhdUEaS3gAGE7PGnx2qkePR3fZtnVNoAfxPNyf+IQ\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-NKdowA6EzI4CWz/dLjoC7dhVj+KczesQbwkbt6y3aRTi1JPZBy2uOocsmHmYvkux\";s:13:\"css/solid.css\";s:71:\"sha384-rdyFrfAIC05c5ph7BKz3l5NG5yEottvO/DQ0dCrwD8gzeQDjYBHNr1ucUpQuljos\";s:15:\"css/regular.css\";s:71:\"sha384-z3ccjLyn+akM2DtvRQCXJwvT5bGZsspS4uptQKNXNg778nyzvdMqiGcqHVGiAUyY\";s:19:\"css/fontawesome.css\";s:71:\"sha384-u5J7JghGz0qUrmEsWzBQkfvc8nK3fUT7DCaQzNQ+q4oEXhGSx+P2OqjWsfIRB8QT\";s:14:\"css/brands.css\";s:71:\"sha384-QT2Z8ljl3UupqMtQNmPyhSPO/d5qbrzWmFxJqmY7tqoTuT2YrQLEqzvVOP2cT5XW\";s:11:\"css/all.css\";s:71:\"sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU\";}}}s:5:\"5.6.0\";a:5:{s:7:\"version\";s:5:\"5.6.0\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2018-12-07T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:3363;s:4:\"free\";i:1479;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-Rr25noDuBAtBUFs9feRsF3EK8Pw5bWuhYxD7ztcDUJqR/eiCpNPGIeyO5Ago6pYW\";s:11:\"js/solid.js\";s:71:\"sha384-71d190zi1266uo3WuvCJ77V1YdXxDfm5GPMySGFKTMHsoHaxKhPe5XkKaH9iPLWC\";s:13:\"js/regular.js\";s:71:\"sha384-LvwwgOzFfwTikawPye02NmwONhyBLBbmu04J+IuLBS6HdNHX3JnRqY80mscKVLTH\";s:11:\"js/light.js\";s:71:\"sha384-6DMqAgIR8HN9OqBF3zfhQ4Tmh+KO9Sf0QAwxGkiaKO51dFGBBxBTmdOSneYESZZ0\";s:17:\"js/fontawesome.js\";s:71:\"sha384-Oa9P+sg4Q/5Yo0a/UoRAG8zLSexWLxLgbPb12tgvs/swrfePVf6IdrwoW2RGV2pU\";s:12:\"js/brands.js\";s:71:\"sha384-TN18fDSDUbMxI3DK3z2G8Pl68N7jvVjWPBx8z0m7YhoWKnmGdKRJ6S90IcyeUXUy\";s:9:\"js/all.js\";s:71:\"sha384-rDdEqfkiaN9iEfS6XrBzTxL5wVFzBoMsyHmoAIl/T7VdxJvGYuM5bDlDOkmE6r3C\";s:16:\"css/v4-shims.css\";s:71:\"sha384-L7wiz9NeFS+vFpG/jl0zBsE7EqrVfeNoaHhnvxlsfwihUr9FIbDnfQqv5r8o02wQ\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-NYMicmsVmKaI5/JVN8JamOLMuIrbzeu4Gc+cike3jcoDpaLfMtvWPJeNhnx8K8x0\";s:13:\"css/solid.css\";s:71:\"sha384-RYuivM1ikcxEL+96Q/7B/CcvyswPRuOatldvqvk+Bm3hwVKZUjay1ohuPUyD9ZYk\";s:15:\"css/regular.css\";s:71:\"sha384-voao2F8iKUwwSMRhLJ982edrRSHOmc5v5rvQ/5aH5pvSAx1aoL6usygGSRz3jfHF\";s:13:\"css/light.css\";s:71:\"sha384-aofICWgqJQbZZCaWEU7H0ULLqXTBu/DAALblEYqLfQSjb2ASOw0tADOdJ5rmVDWL\";s:19:\"css/fontawesome.css\";s:71:\"sha384-NFsDS9VURN70zaqw67F1OtJ6MtdeCrHeGMD1KzqIv5ft0JiHgVtV7u+v09yR+iEZ\";s:14:\"css/brands.css\";s:71:\"sha384-84OQfm1oTwjnXmujNUnQC09L4G7mglZspQwfSNPvf5V3zAA1sdvqbIigA9AWY5DB\";s:11:\"css/all.css\";s:71:\"sha384-rTQdcTFdT69CgbBErourkScWQ6j5WQ4aAoCF0UyPhog3PNysM/xz/kqshWKP4NLA\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-08SAgv7bDUyzB5O71dehOCZ42IpryGqW/G+GdxeFmBfaB71QIZWe5ZXBFKYFTEu4\";s:11:\"js/solid.js\";s:71:\"sha384-akyniW0Jfrt1Z7kvRmaF2fkq9vuVQAPEGN4qq7s17l9PG3zz7FThoWnfVxpvnUn9\";s:13:\"js/regular.js\";s:71:\"sha384-gy4pB6yY1j4DPCG6rZcE6NX1Lnqz8ZJEfotVUvCN2EGwlUS3WUHxcn8rrEOYiyiS\";s:17:\"js/fontawesome.js\";s:71:\"sha384-tHFnt8QELQGC1IJzcTUX5zFEnn/FLVa0ADTmxRyeSmWukJ4umWnJbwiMTkw/bKEK\";s:12:\"js/brands.js\";s:71:\"sha384-GEA3+tbEaglIUriKygE2OQX9k7YrAMJ5oZF0mb8Xx7hUmTTWDuQDtPY4l13jl99w\";s:9:\"js/all.js\";s:71:\"sha384-z9ZOvGHHo21RqN5De4rfJMoAxYpaVoiYhuJXPyVmSs8yn20IE3PmBM534CffwSJI\";s:16:\"css/v4-shims.css\";s:71:\"sha384-HiCW4rrGA9WlUM512GMhD+YfcMidwWluZzyu+X55gfVYgAPrlIkG5BnHyAl/VHJO\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-nHELFCUV8tffuhz6PkFYcEl6VCneIQgaHNbLkOHukzJs12+rUiKwsVmVhbqhEAq7\";s:13:\"css/solid.css\";s:71:\"sha384-COsgLGwf6vbsibKzWojSqhIjQND/Sa0RWQ5BHFrKOz5JrUObnh5GEBUH2oZwITuM\";s:15:\"css/regular.css\";s:71:\"sha384-yWI8JeRmJFie/rrEn4skBd/XXXfUWuc7wAhaj9q71PzjdYD3JslHSEU7BXCCcVyP\";s:19:\"css/fontawesome.css\";s:71:\"sha384-J4287OME5B0yzlP80TtfccOBwJJt6xiO2KS14V7z0mVCRwpz+71z7lwP4yoFbTnD\";s:14:\"css/brands.css\";s:71:\"sha384-oT8S/zsbHtHRVSs2Weo00ensyC4I8kyMsMhqTD4XrWxyi8NHHxnS0Hy+QEtgeKUE\";s:11:\"css/all.css\";s:71:\"sha384-aOkxzJ5uQz7WBObEZcHvV5JvRW3TUc2rNPA7pe3AwnsUohiw1Vj2Rgx2KSOkF5+h\";}}}s:5:\"5.6.1\";a:5:{s:7:\"version\";s:5:\"5.6.1\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2018-12-12T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:3363;s:4:\"free\";i:1479;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-ts+GFi6rOAISeHC+EnLaj6AOSoosWr3TALIaYSeHCVsNHkGLlTtzdbMvolIe6tG7\";s:11:\"js/solid.js\";s:71:\"sha384-Pl3KUQLNwa33i6dvnL77HMDxZPk93eoi1kB5xZ0eGKgTEt39iQkHdSM6/w53By9e\";s:13:\"js/regular.js\";s:71:\"sha384-8VWoI12VOwcfxYszEUreYXR4Jh1+oxv+mfsVISgPJTsc2Ftw4RC+bO719C+PunjY\";s:11:\"js/light.js\";s:71:\"sha384-hy7ipunNmCKP7KpzkasGow2eTRYx9IbxV0BvBqlWLWRu8mlWMNrj9y6qOLEnxIuF\";s:17:\"js/fontawesome.js\";s:71:\"sha384-Ya+lFT8MCnVaSXkMxO4FEUsv4BG1VrVAMY0PiCnmJ4Sq57zoarae8T2EgioHiaMA\";s:12:\"js/brands.js\";s:71:\"sha384-+4YdTIsot+hvYL7nKQ9cJs7OWaFvJ7ZTkVretfEoX8uDiTED9tumG/9RsRmlW3jX\";s:9:\"js/all.js\";s:71:\"sha384-ncMWtRMSOo+cLmfdaa6vmMGzBJKysBDF9tq5YK1MAnAjcyipdW2vgTS1jOntY4fs\";s:16:\"css/v4-shims.css\";s:71:\"sha384-c2aTxrKw0nWEPlLqENAD5t3J3Ajs/o5LBudKFP44hexDYKKQTgRCAaECkBk+p3L9\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-fjim8BUuF/D2Y8Qyr4U5iLdeKqzyQe927qD4SIdbPDyX2iSN6xNGhoyd2jTiw+Sx\";s:13:\"css/solid.css\";s:71:\"sha384-pbj30780YbUh3WmbEAhOL8tHgoaU4xrdmAN+RewL6HsW9EOMIIE4+6rerMXTfJXq\";s:15:\"css/regular.css\";s:71:\"sha384-ThqFFlbk+2bnAn1zc61SL7r8sFUVUkFvtsT+jYr1Jy6xTlvdcqzcerrDGrHqWv6j\";s:13:\"css/light.css\";s:71:\"sha384-QXb14MpvHKJr57ixwhGSXACaU/eGo/NwF/uWE97+C5QPdq8sLQhM1+WKDk6vando\";s:19:\"css/fontawesome.css\";s:71:\"sha384-GQK3B9PHv3SNzYUrdlEpL6CFKQlW/Co4va906SViL0F6U16Li47NXtvwWmFnetYk\";s:14:\"css/brands.css\";s:71:\"sha384-2k7wpGHb3PA1OZUtSqAk+nIVo2wgBQdEoL1F/FnC+/HHi2bh3N9aSstY0Af72gka\";s:11:\"css/all.css\";s:71:\"sha384-NJXGk7R+8gWGBdutmr+/d6XDokLwQhF1U3VA7FhvBDlOq7cNdI69z7NQdnXxcF7k\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-LqOeBjW8oAuwB6xooSoyjAV+CcJLQGftH6m0Xoo+mhJ0TlEAVR9jBsAXXpeEJlyP\";s:11:\"js/solid.js\";s:71:\"sha384-8Lgyylu0vfTGCXDKe435hJgX8s96c19R+dvpH0NHKdX47GA7TmMj+BDiZZ76qqhT\";s:13:\"js/regular.js\";s:71:\"sha384-+e+pqX41PD6VrFw9HZ3YKJHFT+SZoEMBmnMpLUpHrdd5BE46xHCrzap9c6kfTi9H\";s:17:\"js/fontawesome.js\";s:71:\"sha384-T6YzYwAGZAItTIkYlBzfwqa07o9R1AND3Lgt6Or6c5IdukY7tqShoryqwpKrpeIB\";s:12:\"js/brands.js\";s:71:\"sha384-rsLJp1pKbmeEMVcdsNJfAWZ9FQP5CrQt6Vikj/usZcTgrD28FhqYqKJn5XIaoXjm\";s:9:\"js/all.js\";s:71:\"sha384-R5JkiUweZpJjELPWqttAYmYM1P3SNEJRM6ecTQF05pFFtxmCO+Y1CiUhvuDzgSVZ\";s:16:\"css/v4-shims.css\";s:71:\"sha384-s0z+GcIRRdtdjGfnyKRFh9Oaw3aasU/TFotdFmreqjf+a+Mks2Umj0CrlN0S9lqi\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-ir31wc9kqVZclsGL3U5IucynDpj1TeEzDCvxEWqw8QuxLFETRgirOiygjXdjId3z\";s:13:\"css/solid.css\";s:71:\"sha384-aj0h5DVQ8jfwc8DA7JiM+Dysv7z+qYrFYZR+Qd/TwnmpDI6UaB3GJRRTdY8jYGS4\";s:15:\"css/regular.css\";s:71:\"sha384-l+NpTtA08hNNeMp0aMBg/cqPh507w3OvQSRoGnHcVoDCS9OtgxqgR7u8mLQv8poF\";s:19:\"css/fontawesome.css\";s:71:\"sha384-WK8BzK0mpgOdhCxq86nInFqSWLzR5UAsNg0MGX9aDaIIrFWQ38dGdhwnNCAoXFxL\";s:14:\"css/brands.css\";s:71:\"sha384-whKHCkwP9f4MyD1vda26+XRyEg2zkyZezur14Kxc784RxUU1E7HvWVYj9EoJnUV7\";s:11:\"css/all.css\";s:71:\"sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP\";}}}s:5:\"5.6.3\";a:5:{s:7:\"version\";s:5:\"5.6.3\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2018-12-20T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:3365;s:4:\"free\";i:1480;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-q8jijYZFNY4pjTA22Qe+33WWGmm0tpPPfMEdUxmXNoEkN5YeCMJYxGcl+XiCckQh\";s:11:\"js/solid.js\";s:71:\"sha384-2ZaaAuh8tTVN1nHRrlXAX1tz8fGhZDgusJdBI5BBGycCq37AUonw8dHlPpx7iD6N\";s:13:\"js/regular.js\";s:71:\"sha384-nX7teCj1FtQErhxXjr+JWXfe4EjU6KlgeVBHAzQ/L95eWzwx+W1+HuQGmxZT9VkS\";s:11:\"js/light.js\";s:71:\"sha384-E2rKHkorMllWJmt2GKXlwZ3+kPl6i3FrJ8ihFkf6F7F/AtGvuXY21bQC8mhz2Po+\";s:17:\"js/fontawesome.js\";s:71:\"sha384-treYPdjUrP4rW5q82SnECO7TPVAz4bpas16yuE9F5o7CeBn2YYw1yr5oC8s8Mf8t\";s:12:\"js/brands.js\";s:71:\"sha384-VLgz+MgaFCnsFLiBwE3ItNouuqbWV2ZnIqfsA6QRHksEAQfgbcoaQ4PP0ZeS0zS5\";s:9:\"js/all.js\";s:71:\"sha384-4Gm0M5DjJ0zGaEtLu0ztNIoHWiuJ5rKiaVlpZKeNqXAW49eIIa2ymxb3C4c3uEXR\";s:16:\"css/v4-shims.css\";s:71:\"sha384-U1d6UqL28bnGVHunjKzlOZ8IatZ4il21uTor0FijL3224okgH54hOnOVB50CDK0M\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-KHV7fADs212mr+U2tmuDnxozv2BzTX1qhxPoZ/lT2QcUFkjwat694MI3AzyiVJ+q\";s:13:\"css/solid.css\";s:71:\"sha384-5XPOduYq6F78ZOuHxFHpQJCD2l7aCHCf0+o8qKTD2VfqJTgPT3YkyuBGsDSrVsic\";s:15:\"css/regular.css\";s:71:\"sha384-IXqJGQI1K0IzdpdY2ASrRbDgPr1rUKzDAA90uL7iX1hPQf6Tkve9Z82TUVWm9aje\";s:13:\"css/light.css\";s:71:\"sha384-ouQ4uivIto2ZdBS6+torZMbImJhWA6/m7/CAGY9z0FNDmoAF6uWAEnavvIsR1EBt\";s:19:\"css/fontawesome.css\";s:71:\"sha384-toEUmnrGu+eq8XUD6ovsr/vFX+R3v9+FUGAnpef+uwGKMCeqZkcZfkXQ0Pls5WS7\";s:14:\"css/brands.css\";s:71:\"sha384-1KLgFVb/gHrlDGLFPgMbeedi6tQBLcWvyNUN+YKXbD7ZFbjX6BLpMDf0PJ32XJfX\";s:11:\"css/all.css\";s:71:\"sha384-LRlmVvLKVApDVGuspQFnRQJjkv0P7/YFrw84YYQtmYG4nK8c+M+NlmYDCv0rKWpG\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-miy+FCz1uGOaEWy6IaOB4X2pp60+e6jaSECmnvz+qo7Os/Q1oflHUIrS0JdfNafk\";s:11:\"js/solid.js\";s:71:\"sha384-F4BRNf3onawQt7LDHDJm/hwm3wBtbLIfGk1VSB/3nn3E+7Rox1YpYcKJMsmHBJIl\";s:13:\"js/regular.js\";s:71:\"sha384-V+AkgA1cZ+p3DRK63AHCaXvO68V7B5eHoxl7QVN21zftbkFn/sGAIVR7vmQL3Zhp\";s:17:\"js/fontawesome.js\";s:71:\"sha384-treYPdjUrP4rW5q82SnECO7TPVAz4bpas16yuE9F5o7CeBn2YYw1yr5oC8s8Mf8t\";s:12:\"js/brands.js\";s:71:\"sha384-VLgz+MgaFCnsFLiBwE3ItNouuqbWV2ZnIqfsA6QRHksEAQfgbcoaQ4PP0ZeS0zS5\";s:9:\"js/all.js\";s:71:\"sha384-EIHISlAOj4zgYieurP0SdoiBYfGJKkgWedPHH4jCzpCXLmzVsw1ouK59MuUtP4a1\";s:16:\"css/v4-shims.css\";s:71:\"sha384-DrjN/yxBJAblffPf548CARk30Xz2Glal7YO5kqQ8c8GHgrAMXZN2ZDTGwV9xTDJF\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-KHV7fADs212mr+U2tmuDnxozv2BzTX1qhxPoZ/lT2QcUFkjwat694MI3AzyiVJ+q\";s:13:\"css/solid.css\";s:71:\"sha384-+0VIRx+yz1WBcCTXBkVQYIBVNEFH1eP6Zknm16roZCyeNg2maWEpk/l/KsyFKs7G\";s:15:\"css/regular.css\";s:71:\"sha384-aubIA90W7NxJ+Ly4QHAqo1JBSwQ0jejV75iHhj59KRwVjLVHjuhS3LkDAoa/ltO4\";s:19:\"css/fontawesome.css\";s:71:\"sha384-jLuaxTTBR42U2qJ/pm4JRouHkEDHkVqH0T1nyQXn1mZ7Snycpf6Rl25VBNthU4z0\";s:14:\"css/brands.css\";s:71:\"sha384-1KLgFVb/gHrlDGLFPgMbeedi6tQBLcWvyNUN+YKXbD7ZFbjX6BLpMDf0PJ32XJfX\";s:11:\"css/all.css\";s:71:\"sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/\";}}}s:5:\"5.7.0\";a:5:{s:7:\"version\";s:5:\"5.7.0\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2019-01-28T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:3582;s:4:\"free\";i:1500;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-q8jijYZFNY4pjTA22Qe+33WWGmm0tpPPfMEdUxmXNoEkN5YeCMJYxGcl+XiCckQh\";s:11:\"js/solid.js\";s:71:\"sha384-OzCiQJ65BS/RiwFjTWyem+uRtZ4/LnrVVbwHTT8fR5Q9rYqAaavyOK51RDxkXQzm\";s:13:\"js/regular.js\";s:71:\"sha384-JZmzMsvgUATRcNmXpyJHLhiqsREsPN/GBj7O5ifVfRU1o4vBp2dsjawGzYzl0QVW\";s:11:\"js/light.js\";s:71:\"sha384-Vs12SjRkIvphC81scjUNowpLYnSOLOrSGxOwVe00oEvWto49wVgjd6BfdeCPcArI\";s:17:\"js/fontawesome.js\";s:71:\"sha384-av0fZBtv517ppGAYKqqaiTvWEK6WXW7W0N1ocPSPI/wi+h8qlgWck2Hikm5cxH0E\";s:12:\"js/brands.js\";s:71:\"sha384-zJ8/qgGmKwL+kr/xmGA6s1oXK63ah5/1rHuILmZ44sO2Bbq1V3p3eRTkuGcivyhD\";s:9:\"js/all.js\";s:71:\"sha384-uyhTADGMAJuHgGNdH+rozTpOkfXUORTgjTmMBtxR8ISQjOs+IIWb8UBn9ixSd4xo\";s:16:\"css/v4-shims.css\";s:71:\"sha384-U1d6UqL28bnGVHunjKzlOZ8IatZ4il21uTor0FijL3224okgH54hOnOVB50CDK0M\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-3oHRxwaq4aKTY0NVNLfynvnb/U7E0MGiosKUE4cNMIDRezfXvssVlwQ+xsuBLbXf\";s:13:\"css/solid.css\";s:71:\"sha384-j+2fZ2qAg9GyYKkVpuwm+HLQVz6EYCaTqS3KKx8oectYXMgm4bRmohzCfEvi5j7J\";s:15:\"css/regular.css\";s:71:\"sha384-4Cp0kYV2i1JFDfp6MQAdlrauJM+WTabydjMk5iJ7A9D+TXIh5zQMd5KXydBCAUN4\";s:13:\"css/light.css\";s:71:\"sha384-puvvQVSC+mXL7INuI0i5Q7QkwwIyYIBJ7caGHiUXD7FndtoyNd78NxgvuBJAYI2m\";s:19:\"css/fontawesome.css\";s:71:\"sha384-iD1qS/uJjE9q9kecNUe9R4FRvcinAvTcPClTz7NI8RI5gUsJ+eaeJeblG1Ex0ieh\";s:14:\"css/brands.css\";s:71:\"sha384-BKw0P+CQz9xmby+uplDwp82Py8x1xtYPK3ORn/ZSoe6Dk3ETP59WCDnX+fI1XCKK\";s:11:\"css/all.css\";s:71:\"sha384-6jHF7Z3XI3fF4XZixAuSu0gGKrXwoX/w3uFPxC56OtjChio7wtTGJWRW53Nhx6Ev\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-miy+FCz1uGOaEWy6IaOB4X2pp60+e6jaSECmnvz+qo7Os/Q1oflHUIrS0JdfNafk\";s:11:\"js/solid.js\";s:71:\"sha384-6FXzJ8R8IC4v/SKPI8oOcRrUkJU8uvFK6YJ4eDY11bJQz4lRw5/wGthflEOX8hjL\";s:13:\"js/regular.js\";s:71:\"sha384-Gxfqh68NuE4s0o2renzieYkDYVbdJynynsdrB7UG9yEvgpS9TVM+c4bknWfQXUBg\";s:17:\"js/fontawesome.js\";s:71:\"sha384-av0fZBtv517ppGAYKqqaiTvWEK6WXW7W0N1ocPSPI/wi+h8qlgWck2Hikm5cxH0E\";s:12:\"js/brands.js\";s:71:\"sha384-zJ8/qgGmKwL+kr/xmGA6s1oXK63ah5/1rHuILmZ44sO2Bbq1V3p3eRTkuGcivyhD\";s:9:\"js/all.js\";s:71:\"sha384-qD/MNBVMm3hVYCbRTSOW130+CWeRIKbpot9/gR1BHkd7sIct4QKhT1hOPd+2hO8K\";s:16:\"css/v4-shims.css\";s:71:\"sha384-DrjN/yxBJAblffPf548CARk30Xz2Glal7YO5kqQ8c8GHgrAMXZN2ZDTGwV9xTDJF\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-3oHRxwaq4aKTY0NVNLfynvnb/U7E0MGiosKUE4cNMIDRezfXvssVlwQ+xsuBLbXf\";s:13:\"css/solid.css\";s:71:\"sha384-r/k8YTFqmlOaqRkZuSiE9trsrDXkh07mRaoGBMoDcmA58OHILZPsk29i2BsFng1B\";s:15:\"css/regular.css\";s:71:\"sha384-IG162Tfx2WTn//TRUi9ahZHsz47lNKzYOp0b6Vv8qltVlPkub2yj9TVwzNck6GEF\";s:19:\"css/fontawesome.css\";s:71:\"sha384-4aon80D8rXCGx9ayDt85LbyUHeMWd3UiBaWliBlJ53yzm9hqN21A+o1pqoyK04h+\";s:14:\"css/brands.css\";s:71:\"sha384-BKw0P+CQz9xmby+uplDwp82Py8x1xtYPK3ORn/ZSoe6Dk3ETP59WCDnX+fI1XCKK\";s:11:\"css/all.css\";s:71:\"sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ\";}}}s:5:\"5.7.1\";a:5:{s:7:\"version\";s:5:\"5.7.1\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2019-02-01T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:3582;s:4:\"free\";i:1500;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-q8jijYZFNY4pjTA22Qe+33WWGmm0tpPPfMEdUxmXNoEkN5YeCMJYxGcl+XiCckQh\";s:11:\"js/solid.js\";s:71:\"sha384-eLZVpmyzMTRsfwRGkcmyu0PXR5qqYDBCSh5PoYLdWFfDmMIibSuru0Blk+nq1Vfm\";s:13:\"js/regular.js\";s:71:\"sha384-SdSeoV46BZSFmxvlUQwl3ImF6ton2ST4pPzYOmTTkFUm+UjdzORM0pTtF0sIHydx\";s:11:\"js/light.js\";s:71:\"sha384-ua13CrU9gkzyOVxhPFl96iHgwnYTuTZ96YYiG08m1fYLvz8cVyHluzkzK9WcFLpT\";s:17:\"js/fontawesome.js\";s:71:\"sha384-Qmms7kHsbqYnKkSwiePYzreT+ufFVSNBhfLOEp0sEEfEVdORDs/aEnGaJy/l4eoy\";s:12:\"js/brands.js\";s:71:\"sha384-zJ8/qgGmKwL+kr/xmGA6s1oXK63ah5/1rHuILmZ44sO2Bbq1V3p3eRTkuGcivyhD\";s:9:\"js/all.js\";s:71:\"sha384-5atZgfYD4MHp6kAnxjw4yM3binN4Yh5XXKAIO6m2kIB9CqdRUladdvTdffLnTK3N\";s:16:\"css/v4-shims.css\";s:71:\"sha384-U1d6UqL28bnGVHunjKzlOZ8IatZ4il21uTor0FijL3224okgH54hOnOVB50CDK0M\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-3oHRxwaq4aKTY0NVNLfynvnb/U7E0MGiosKUE4cNMIDRezfXvssVlwQ+xsuBLbXf\";s:13:\"css/solid.css\";s:71:\"sha384-j+2fZ2qAg9GyYKkVpuwm+HLQVz6EYCaTqS3KKx8oectYXMgm4bRmohzCfEvi5j7J\";s:15:\"css/regular.css\";s:71:\"sha384-4Cp0kYV2i1JFDfp6MQAdlrauJM+WTabydjMk5iJ7A9D+TXIh5zQMd5KXydBCAUN4\";s:13:\"css/light.css\";s:71:\"sha384-puvvQVSC+mXL7INuI0i5Q7QkwwIyYIBJ7caGHiUXD7FndtoyNd78NxgvuBJAYI2m\";s:19:\"css/fontawesome.css\";s:71:\"sha384-iD1qS/uJjE9q9kecNUe9R4FRvcinAvTcPClTz7NI8RI5gUsJ+eaeJeblG1Ex0ieh\";s:14:\"css/brands.css\";s:71:\"sha384-BKw0P+CQz9xmby+uplDwp82Py8x1xtYPK3ORn/ZSoe6Dk3ETP59WCDnX+fI1XCKK\";s:11:\"css/all.css\";s:71:\"sha384-6jHF7Z3XI3fF4XZixAuSu0gGKrXwoX/w3uFPxC56OtjChio7wtTGJWRW53Nhx6Ev\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-miy+FCz1uGOaEWy6IaOB4X2pp60+e6jaSECmnvz+qo7Os/Q1oflHUIrS0JdfNafk\";s:11:\"js/solid.js\";s:71:\"sha384-6FXzJ8R8IC4v/SKPI8oOcRrUkJU8uvFK6YJ4eDY11bJQz4lRw5/wGthflEOX8hjL\";s:13:\"js/regular.js\";s:71:\"sha384-Gxfqh68NuE4s0o2renzieYkDYVbdJynynsdrB7UG9yEvgpS9TVM+c4bknWfQXUBg\";s:17:\"js/fontawesome.js\";s:71:\"sha384-Qmms7kHsbqYnKkSwiePYzreT+ufFVSNBhfLOEp0sEEfEVdORDs/aEnGaJy/l4eoy\";s:12:\"js/brands.js\";s:71:\"sha384-zJ8/qgGmKwL+kr/xmGA6s1oXK63ah5/1rHuILmZ44sO2Bbq1V3p3eRTkuGcivyhD\";s:9:\"js/all.js\";s:71:\"sha384-eVEQC9zshBn0rFj4+TU78eNA19HMNigMviK/PU/FFjLXqa/GKPgX58rvt5Z8PLs7\";s:16:\"css/v4-shims.css\";s:71:\"sha384-DrjN/yxBJAblffPf548CARk30Xz2Glal7YO5kqQ8c8GHgrAMXZN2ZDTGwV9xTDJF\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-3oHRxwaq4aKTY0NVNLfynvnb/U7E0MGiosKUE4cNMIDRezfXvssVlwQ+xsuBLbXf\";s:13:\"css/solid.css\";s:71:\"sha384-r/k8YTFqmlOaqRkZuSiE9trsrDXkh07mRaoGBMoDcmA58OHILZPsk29i2BsFng1B\";s:15:\"css/regular.css\";s:71:\"sha384-IG162Tfx2WTn//TRUi9ahZHsz47lNKzYOp0b6Vv8qltVlPkub2yj9TVwzNck6GEF\";s:19:\"css/fontawesome.css\";s:71:\"sha384-4aon80D8rXCGx9ayDt85LbyUHeMWd3UiBaWliBlJ53yzm9hqN21A+o1pqoyK04h+\";s:14:\"css/brands.css\";s:71:\"sha384-BKw0P+CQz9xmby+uplDwp82Py8x1xtYPK3ORn/ZSoe6Dk3ETP59WCDnX+fI1XCKK\";s:11:\"css/all.css\";s:71:\"sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr\";}}}s:5:\"5.7.2\";a:5:{s:7:\"version\";s:5:\"5.7.2\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2019-02-12T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:3582;s:4:\"free\";i:1500;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-q8jijYZFNY4pjTA22Qe+33WWGmm0tpPPfMEdUxmXNoEkN5YeCMJYxGcl+XiCckQh\";s:11:\"js/solid.js\";s:71:\"sha384-eLZVpmyzMTRsfwRGkcmyu0PXR5qqYDBCSh5PoYLdWFfDmMIibSuru0Blk+nq1Vfm\";s:13:\"js/regular.js\";s:71:\"sha384-SdSeoV46BZSFmxvlUQwl3ImF6ton2ST4pPzYOmTTkFUm+UjdzORM0pTtF0sIHydx\";s:11:\"js/light.js\";s:71:\"sha384-ua13CrU9gkzyOVxhPFl96iHgwnYTuTZ96YYiG08m1fYLvz8cVyHluzkzK9WcFLpT\";s:17:\"js/fontawesome.js\";s:71:\"sha384-xl26xwG2NVtJDw2/96Lmg09++ZjrXPc89j0j7JHjLOdSwHDHPHiucUjfllW0Ywrq\";s:12:\"js/brands.js\";s:71:\"sha384-zJ8/qgGmKwL+kr/xmGA6s1oXK63ah5/1rHuILmZ44sO2Bbq1V3p3eRTkuGcivyhD\";s:9:\"js/all.js\";s:71:\"sha384-I3Hhe9TkmlsxzooTtbRzdeLbmkFQE9DVzX/19uTZfHk1zn/uWUyk+a+GyrHyseSq\";s:16:\"css/v4-shims.css\";s:71:\"sha384-U1d6UqL28bnGVHunjKzlOZ8IatZ4il21uTor0FijL3224okgH54hOnOVB50CDK0M\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-3oHRxwaq4aKTY0NVNLfynvnb/U7E0MGiosKUE4cNMIDRezfXvssVlwQ+xsuBLbXf\";s:13:\"css/solid.css\";s:71:\"sha384-j+2fZ2qAg9GyYKkVpuwm+HLQVz6EYCaTqS3KKx8oectYXMgm4bRmohzCfEvi5j7J\";s:15:\"css/regular.css\";s:71:\"sha384-4Cp0kYV2i1JFDfp6MQAdlrauJM+WTabydjMk5iJ7A9D+TXIh5zQMd5KXydBCAUN4\";s:13:\"css/light.css\";s:71:\"sha384-puvvQVSC+mXL7INuI0i5Q7QkwwIyYIBJ7caGHiUXD7FndtoyNd78NxgvuBJAYI2m\";s:19:\"css/fontawesome.css\";s:71:\"sha384-iD1qS/uJjE9q9kecNUe9R4FRvcinAvTcPClTz7NI8RI5gUsJ+eaeJeblG1Ex0ieh\";s:14:\"css/brands.css\";s:71:\"sha384-BKw0P+CQz9xmby+uplDwp82Py8x1xtYPK3ORn/ZSoe6Dk3ETP59WCDnX+fI1XCKK\";s:11:\"css/all.css\";s:71:\"sha384-6jHF7Z3XI3fF4XZixAuSu0gGKrXwoX/w3uFPxC56OtjChio7wtTGJWRW53Nhx6Ev\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-miy+FCz1uGOaEWy6IaOB4X2pp60+e6jaSECmnvz+qo7Os/Q1oflHUIrS0JdfNafk\";s:11:\"js/solid.js\";s:71:\"sha384-6FXzJ8R8IC4v/SKPI8oOcRrUkJU8uvFK6YJ4eDY11bJQz4lRw5/wGthflEOX8hjL\";s:13:\"js/regular.js\";s:71:\"sha384-Gxfqh68NuE4s0o2renzieYkDYVbdJynynsdrB7UG9yEvgpS9TVM+c4bknWfQXUBg\";s:17:\"js/fontawesome.js\";s:71:\"sha384-xl26xwG2NVtJDw2/96Lmg09++ZjrXPc89j0j7JHjLOdSwHDHPHiucUjfllW0Ywrq\";s:12:\"js/brands.js\";s:71:\"sha384-zJ8/qgGmKwL+kr/xmGA6s1oXK63ah5/1rHuILmZ44sO2Bbq1V3p3eRTkuGcivyhD\";s:9:\"js/all.js\";s:71:\"sha384-0pzryjIRos8mFBWMzSSZApWtPl/5++eIfzYmTgBBmXYdhvxPc+XcFEk+zJwDgWbP\";s:16:\"css/v4-shims.css\";s:71:\"sha384-DrjN/yxBJAblffPf548CARk30Xz2Glal7YO5kqQ8c8GHgrAMXZN2ZDTGwV9xTDJF\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-3oHRxwaq4aKTY0NVNLfynvnb/U7E0MGiosKUE4cNMIDRezfXvssVlwQ+xsuBLbXf\";s:13:\"css/solid.css\";s:71:\"sha384-r/k8YTFqmlOaqRkZuSiE9trsrDXkh07mRaoGBMoDcmA58OHILZPsk29i2BsFng1B\";s:15:\"css/regular.css\";s:71:\"sha384-IG162Tfx2WTn//TRUi9ahZHsz47lNKzYOp0b6Vv8qltVlPkub2yj9TVwzNck6GEF\";s:19:\"css/fontawesome.css\";s:71:\"sha384-4aon80D8rXCGx9ayDt85LbyUHeMWd3UiBaWliBlJ53yzm9hqN21A+o1pqoyK04h+\";s:14:\"css/brands.css\";s:71:\"sha384-BKw0P+CQz9xmby+uplDwp82Py8x1xtYPK3ORn/ZSoe6Dk3ETP59WCDnX+fI1XCKK\";s:11:\"css/all.css\";s:71:\"sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr\";}}}s:5:\"5.8.0\";a:5:{s:7:\"version\";s:5:\"5.8.0\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2019-03-20T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:3584;s:4:\"free\";i:1513;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-gaNKDFtFZuAyZDkB8Wov1Vl24lMu5MD5MXLmUSu+4HzB8tTVwemJnhqN4Zuj27wd\";s:11:\"js/solid.js\";s:71:\"sha384-jOmpRjxTFmJAVhf7+H7o9joWtQWHRZLdr+B25WojM1yfhB9wFkDvQ3x0VDDn4aAI\";s:13:\"js/regular.js\";s:71:\"sha384-GoKOHat5yLSUYiGMfLJkuCErUZrNlW+2FeFYuKOt7sUWbqvMQOqfB+mdpfCU/8Q4\";s:11:\"js/light.js\";s:71:\"sha384-+itlrN2dvS1RqmWnkLQkDqzANbdKqtt6JyQfE/DXxFnhg/PXf0ufRBCSp0c6q81i\";s:17:\"js/fontawesome.js\";s:71:\"sha384-aoV9M7ZLyivlmo8GKrkeWiOUQzBnYBpP6U8gW7WXfhssy+HtO87KzowcBokSiK3g\";s:12:\"js/brands.js\";s:71:\"sha384-XLy4uPbRNbMJUgEm6JLmHI784E68XjgSbheIn0fP/6GdZtCcsZmlXvceAGvhzKCh\";s:9:\"js/all.js\";s:71:\"sha384-gUdv3ElxXd3gVdbCqjppYoQanRONrQDSdaZY3zn1KeASeS8YGy+T/JDaD2ohyarV\";s:16:\"css/v4-shims.css\";s:71:\"sha384-lRITDKAHusCdCcsQiEA2IIoqExMRD36Tbn9CZj00L8klRpDyMeOoPSv6ubcNAHux\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-BUeh/IoVXY+o863GdrQzogOOSo3ABFpxuc9xZhQVnsM2T2vKmrpHGZwaEqqX/SZs\";s:13:\"css/solid.css\";s:71:\"sha384-maIT5Qg1FqlJhNYpN2IgLAb5XPLY8CqZ7tKBQyjHh+nx/7JXsI5bp+8JHnUgeuyw\";s:15:\"css/regular.css\";s:71:\"sha384-iUhpWyroENmdb/oNEGUdCk4J+TfFOm/SNYi79nN/Hb1aQgjofylAAuRTUfpK2yP1\";s:13:\"css/light.css\";s:71:\"sha384-YmipRqYc8Wly1koaxcpAPTnvJIqXBN4Ue5+l0drZn34sdM+UufP6v8D8/s9xxXOI\";s:19:\"css/fontawesome.css\";s:71:\"sha384-/0C3VuTlEzBany89/Wf2OJLSGrduLCC28kuoGL/PCGJjGj01pVtiqOcgZZ9AtlET\";s:14:\"css/brands.css\";s:71:\"sha384-OxPYtFc8yWHWBo2MFY4rHs5dKcTpNGuyft0hQ+K/vSUJA21jrxi+Py412o2wMvsL\";s:11:\"css/all.css\";s:71:\"sha384-/pOR6TNYPdUaQQQRKQ4XHznZ4U2K/Lscb3u6jshUngC/31fLTuyX9FZb24gp4O3J\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-l9bFz0TmR1ecMQdb9mzBeiLLX3z0mqeK0Bsxhim3nnHB9PoA6o3FUumLH7K6W6/D\";s:11:\"js/solid.js\";s:71:\"sha384-prcFDC6iTvvWsx2iSZtbDdeMVWWOtxcQXXagr9uPHwi42uae31Y3Q17eehHuC0JL\";s:13:\"js/regular.js\";s:71:\"sha384-IQnlolMpq26nEj6AOd6JOnY2jqCa69uFBqCGBCWSm4EFZYprebVtp3Z2xVLMElvs\";s:17:\"js/fontawesome.js\";s:71:\"sha384-TAztyRuTlqgZ97tz982rMo44MRC58wyCC0pqKZY3cKWJNkK00qMd3DhQ7R25jpCe\";s:12:\"js/brands.js\";s:71:\"sha384-Gt4maPu5ZO/PkTh32sKMYmmCLGuWtMkv5YBtFZpx4Tu+Of3kFZPYBw9iD/pi4L6s\";s:9:\"js/all.js\";s:71:\"sha384-ukiibbYjFS/1dhODSWD+PrZ6+CGCgf8VbyUH7bQQNUulL+2r59uGYToovytTf4Xm\";s:16:\"css/v4-shims.css\";s:71:\"sha384-IaQiZkMW7NRKIS04GeT98++WyQ6RNaEQlHoHoDrhU+hhCJE4EkfL7itJyj/vanQT\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-5ywFB7dcUP6RcAWMLvCE58MQE5YMXWSPjly1IqItdN0w0TqoJD+w68U7C3ShoZRk\";s:13:\"css/solid.css\";s:71:\"sha384-n4xPrkfCJ3FzmPwM/Nf1QQu7Qx6oDcsbMp+qPOxrJ5w0Tq19ZWd9ylcMWkzKEpwP\";s:15:\"css/regular.css\";s:71:\"sha384-Vma7aWQBdmjVfr98uRd1HcA/r6wPYrlNrIvQBJhDCvZi3X9gVuHtqUKUYep/1KKk\";s:19:\"css/fontawesome.css\";s:71:\"sha384-Sbwc59I1SOoVoCGgBCwAe/M1j5a9cHixHv/7x9vOxORnT73jUaxyK0paobkk3JSt\";s:14:\"css/brands.css\";s:71:\"sha384-5G2m52y/zN053yjBCyNXXotYpL2r5k1wg9aakiM5OgK9kdcCB68EECUce5vZiz/8\";s:11:\"css/all.css\";s:71:\"sha384-Mmxa0mLqhmOeaE8vgOSbKacftZcsNYDjQzuCOm6D02luYSzBG8vpaOykv9lFQ51Y\";}}}s:5:\"5.8.1\";a:5:{s:7:\"version\";s:5:\"5.8.1\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2019-03-21T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:3584;s:4:\"free\";i:1513;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-J8Vif9iMSqb5RK45yq6+dnrM1lTP1oQcIHtKpoH0irzUJD/1gCK0pQgIr0hO+hta\";s:11:\"js/solid.js\";s:71:\"sha384-sJjbbGVKgAaulHq0KZK5MsUx9YmPj+4G3oY2vmW12iBNEFkkhObBezK0ZhSXchIs\";s:13:\"js/regular.js\";s:71:\"sha384-lv9QOXVC8fPRX14JTtgPGx1JjQPfjnqnp+bTlEnrW2FRawdJ4V8oe4Yq4kdfgJIp\";s:11:\"js/light.js\";s:71:\"sha384-avwGKnev1pyXYEbWxXSg9S4rpTsws+5vQpoj76SfcccEzOL162Ei8+z4a6AlaMeE\";s:17:\"js/fontawesome.js\";s:71:\"sha384-w6QYwIdCVqcYkHtaFutVu3VlDeu+pBFvlp7e0/tygMFwnWTl13KuVYfsp0ediPpA\";s:12:\"js/brands.js\";s:71:\"sha384-b4zU5X+9uCyU5wpeWBsEIFph6tTD8ERLbUs93uYGQGNqzbcfPDeY6c4jMhTAfBri\";s:9:\"js/all.js\";s:71:\"sha384-GBwm0s/0wYcqnK/JmrCoRqWYIWzFiGEucsfFqkB76Ouii5+d4R31vWHPQtfhv55b\";s:16:\"css/v4-shims.css\";s:71:\"sha384-68zdIccmue/irEHOgRiyNsWTZAGftSb6RkEtUhgaD+8213AXnbThq7m3WsO+B02H\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-LnvOeE4ntog9dzgq63i0OoI6jKPp3p0y693Fh4Fd4eOyx/UsAw0kHXbLKqML1p9R\";s:13:\"css/solid.css\";s:71:\"sha384-MkkthiFx7890Rev6vwUJO4gRT4yuH5tqMm/Wl4/n9/qptaBpiGcMyjfgq2K4h394\";s:15:\"css/regular.css\";s:71:\"sha384-ELBQxbOyxSZRtZPNO1mVgYkEzMOXFNmQY6CLV1nw+4IZoiHWeuwYTnABxPxxsuBE\";s:13:\"css/light.css\";s:71:\"sha384-3SMOAKCN8LYSMjkWz1ChDg4pHSLtD+LuKXaZoHxE1oyDneLR6Ebjm3XHMHO9fWu3\";s:19:\"css/fontawesome.css\";s:71:\"sha384-4HqGlagEHMyfaDQVabl1wx7GCtGw6hDl3sKJEhqQjOCrXrvizhaA2j4hK8Piewtr\";s:14:\"css/brands.css\";s:71:\"sha384-9Wenwezdk1eEhfcpps+Heco4zWw6KuZ2VlevoPomUwWYYZd3nBX0kZ1hBV2zSIKF\";s:11:\"css/all.css\";s:71:\"sha384-Bx4pytHkyTDy3aJKjGkGoHPt3tvv6zlwwjc3iqN7ktaiEMLDPqLSZYts2OjKcBx1\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-DWlD0qU0+4WTFKXrFbt8wXq/1NHvOGT8vwllYM0W2gIeqgaCC3bZ0U464mDtbR70\";s:11:\"js/solid.js\";s:71:\"sha384-IA6YnujJIO+z1m4NKyAGvZ9Wmxrd4Px8WFqhFcgRmwLaJaiwijYgApVpo1MV8p77\";s:13:\"js/regular.js\";s:71:\"sha384-Uc9toywOA44owltk1MWl0lQZ+L0mBzJkLQcdif6+JtG9izvok9DLJtCZX57Uq3k2\";s:17:\"js/fontawesome.js\";s:71:\"sha384-EMmnH+Njn8umuoSMZ3Ae3bC9hDknHKOWL2e9WJD/cN6XLeAN7tr5ZQ0Hx5HDHtkS\";s:12:\"js/brands.js\";s:71:\"sha384-rUOIFHM3HXni/WG5pzDhA1e2Js5nn4bWudTYujHbbI9ztBIxK54CL4ZNZWwcBQeD\";s:9:\"js/all.js\";s:71:\"sha384-g5uSoOSBd7KkhAMlnQILrecXvzst9TdC09/VM+pjDTCM+1il8RHz5fKANTFFb+gQ\";s:16:\"css/v4-shims.css\";s:71:\"sha384-knhdgIEP1JBPHETtXGyUk1FXV22kd1ZAN8yyExweAKAfztV5+kSBjUff4pHDG38c\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-acBDV8BDMPEP50gJeFdMIg9yE8eOPuFdBV9r+2F492NUbKhURdQvglFkG0Q+0rlE\";s:13:\"css/solid.css\";s:71:\"sha384-QokYePQSOwpBDuhlHOsX0ymF6R/vLk/UQVz3WHa6wygxI5oGTmDTv8wahFOSspdm\";s:15:\"css/regular.css\";s:71:\"sha384-FKw7x8fCxuvzBwOJmhTJJsKzBl8dnN9e2R4+pXRfYoHivikuHkzWyhKWDSMcGNK8\";s:19:\"css/fontawesome.css\";s:71:\"sha384-vd1e11sR28tEK9YANUtpIOdjGW14pS87bUBuOIoBILVWLFnS+MCX9T6MMf0VdPGq\";s:14:\"css/brands.css\";s:71:\"sha384-n9+6/aSqa9lBidZMRCQHTHKJscPq6NW4pCQBiMmHdUCvPN8ZOg2zJJTkC7WIezWv\";s:11:\"css/all.css\";s:71:\"sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf\";}}}s:5:\"5.8.2\";a:5:{s:7:\"version\";s:5:\"5.8.2\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2019-05-07T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:3584;s:4:\"free\";i:1515;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-Ts0FauTmSRKZNl+Uw+WC04UuoVYd2gXlJ+OcUvb1NDrV2XmDcgCr8PPv5MY/7KZR\";s:11:\"js/solid.js\";s:71:\"sha384-9fQzIUDeLlrPRI2CT9AqVv6Yr0JgEY0+rr7ngyaatQAQrEHhCv5CvG8F8UFdgk7u\";s:13:\"js/regular.js\";s:71:\"sha384-uMEQdPXvyCTabszTyCxRRMDh/xIcRlT/fpq2DKkcjR6+lOqq2111EL0C1OiRVu1E\";s:11:\"js/light.js\";s:71:\"sha384-BMiulaMo0kY9ExzwDFFjsXkU373Br7qSwYa/hdDlWEWEkE3flk4mBFvMwlpye3Aw\";s:17:\"js/fontawesome.js\";s:71:\"sha384-b7K10RWf2Q3m26zPrKzM95th5yJnxEw+vpCzNITZFKV8UgxPgHb61bS0xFkKdV2I\";s:12:\"js/brands.js\";s:71:\"sha384-NBtHk407eZGNubj82MbaKt5CrNLfhnYmCbpjSyDk/nWemMXE/mfvm3c1MPjfnWmU\";s:9:\"js/all.js\";s:71:\"sha384-RLPiEwcAdrH2NjFcwJipJtlFoIN1xvqPYeeDX5yYtSNu+HTIkQCDvPQ9thsUnPUS\";s:16:\"css/v4-shims.css\";s:71:\"sha384-TpRSvWoRbPKMMxDvVZgEa9wxoOZyawahRkC2P+ksDRxjPSvZjhEf5nU7pqSWBCQF\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-+BcpgpzTfqttc/C2LUPzGXIGunaa/aIuSC/BPO2BBqqMbHNRCF7d3DU54LxbCzTS\";s:13:\"css/solid.css\";s:71:\"sha384-dUUyoHgD2BplZp1AnRbRu0HPC5jscpJEJaJjqnBh7Y5PT1gW7cM6BQEgrcOsSa7e\";s:15:\"css/regular.css\";s:71:\"sha384-jyNdSTwsauV6/i9u6sKFOZBrxlr4QREAY295HsNy8laz4LYryhnPdz0ewFVERKfV\";s:13:\"css/light.css\";s:71:\"sha384-0WqtEOayxoyo7wgxUc5l2RvIbaWTyny0LrJbwsKhrKXUyopxvaNFLIoob4dXRwLO\";s:19:\"css/fontawesome.css\";s:71:\"sha384-fqilzf6i0kkOYm+DT4UC9pWzYf4/eFdJKroY1jZyE7n8eYLujyYM9VCucGf/LdVD\";s:14:\"css/brands.css\";s:71:\"sha384-BeZiOfMYSXjscewXEIJ0PDoBy27u+zVSTP5ZuW3kjEZKCn7pOB7v+oQVtAtHfY0v\";s:11:\"css/all.css\";s:71:\"sha384-xVVam1KS4+Qt2OrFa+VdRUoXygyKIuNWUUUBZYv+n27STsJ7oDOHJgfF0bNKLMJF\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-5i8QG9UXrCZePXfj1ac87dq22tNtGoJ22fmjXaJI8iIy072+ZKv1NZHbsTMfYvnV\";s:11:\"js/solid.js\";s:71:\"sha384-+2/MEhV42Ne5nONkjLVCZFGh5IaEQmfXyvGlsibBiATelTFbVGoLB1sqhczi0hlf\";s:13:\"js/regular.js\";s:71:\"sha384-iFYyWQkY/Zvsdq3IIxRJI2FBoXPj6g73ok7rIH3sZGulA7E5PvFqB5BOELomUuyh\";s:17:\"js/fontawesome.js\";s:71:\"sha384-Ia7KZbX22R7DDSbxNmxHqPQ15ceNzg2U4h5A8dy3K47G2fV1k658BTxXjp7rdhXa\";s:12:\"js/brands.js\";s:71:\"sha384-GtvEzzhN52RvAD7CnSR7TcPw555abR8NK28tAqa/GgIDk59o0TsaK6FHglLstzCf\";s:9:\"js/all.js\";s:71:\"sha384-DJ25uNYET2XCl5ZF++U8eNxPWqcKohUUBUpKGlNLMchM7q4Wjg2CUpjHLaL8yYPH\";s:16:\"css/v4-shims.css\";s:71:\"sha384-XyBa62YmP9n5OJlz31oJcSVUqdJJ1dgQZriaAHtKZn/8Bu8KJ+PMJ/jjVGvhwvQi\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-PLvJTjM1QH/74H66d1I1vU8KYsjkbjSJn87gUIUsIO6Xjf8fRO8Hxdevr46EkV7M\";s:13:\"css/solid.css\";s:71:\"sha384-ioUrHig76ITq4aEJ67dHzTvqjsAP/7IzgwE7lgJcg2r7BRNGYSK0LwSmROzYtgzs\";s:15:\"css/regular.css\";s:71:\"sha384-hCIN6p9+1T+YkCd3wWjB5yufpReULIPQ21XA/ncf3oZ631q2HEhdC7JgKqbk//4+\";s:19:\"css/fontawesome.css\";s:71:\"sha384-sri+NftO+0hcisDKgr287Y/1LVnInHJ1l+XC7+FOabmTTIK0HnE2ID+xxvJ21c5J\";s:14:\"css/brands.css\";s:71:\"sha384-i2PyM6FMpVnxjRPi0KW/xIS7hkeSznkllv+Hx/MtYDaHA5VcF0yL3KVlvzp8bWjQ\";s:11:\"css/all.css\";s:71:\"sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay\";}}}s:5:\"5.9.0\";a:5:{s:7:\"version\";s:5:\"5.9.0\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2019-06-04T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:3831;s:4:\"free\";i:1534;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-A2MQ6ZItVBjKp0Efdmi8Xze6uRApxGoHzuGImgZGk6JfuaQ9Vkcev6HtJSQzftWE\";s:11:\"js/solid.js\";s:71:\"sha384-pAEZwWHMzeWUPLx+edoghTzc+LBoBSIWMNFPeZGDiFDP6WL4g+EHr7DhQMUpjSLZ\";s:13:\"js/regular.js\";s:71:\"sha384-GlXg5Pw5UjuoWpx2tbE3LsctnmBsngO5u5c+nK1slAwSuwN86zPzez+sFxncM+Tc\";s:11:\"js/light.js\";s:71:\"sha384-C6XejYBP1H4YOZVReSXSBion6LKXOt7htNgjRlcKQSsMnL+/Ok1vyvI5EQs1/H1e\";s:17:\"js/fontawesome.js\";s:71:\"sha384-nFIVFc2+uHHcH70YEBnMC6UmUjVxcQ0rZJe7u58lz5aUDQRz0l3xFmVSdao7Ag/K\";s:12:\"js/brands.js\";s:71:\"sha384-4Md2NBtJT8CgVnGaoonPkhRdMvGcFRH/nATvRJ0+2VsJ5bjySPpBil+KbSC+9yFv\";s:9:\"js/all.js\";s:71:\"sha384-nKdXFHC25mX+ztWymakpQ8nRykznAcZ+yHi9XETJ8CuVvvSGeg/0QCPhvDb41hUb\";s:16:\"css/v4-shims.css\";s:71:\"sha384-tlZ/hMWxtcO6JxnBPYGsa5Oiu1gmAqp/bY7s7G6m5OOCJvcNQ6Fo39YHu4Elr+Hf\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-dwNK02s77FqYOBDJpF4ttbI23g2UUTrI9euJ+OQGonHAy4W1kCpAyV7ozLK24GWz\";s:13:\"css/solid.css\";s:71:\"sha384-KyLwW4NRDhAz4RVatBCvFATniD3ze5rJvP1usxUFectdGgG8n+7OTcZug8s4bj5H\";s:15:\"css/regular.css\";s:71:\"sha384-FrLF2uGffV1P93pQZme192v/cHRu1XlgjMreWAScHPPjBz/p9pNTx/bTV83x8peQ\";s:13:\"css/light.css\";s:71:\"sha384-/ggAGHSQWxssDRflcj0aeAlGN2rNgsnWOLv1ZU5FEvjQWxP53glq5pNPjtfldVVN\";s:19:\"css/fontawesome.css\";s:71:\"sha384-QSCxeayZXa6bvOhHReoQRGN7utvnOnY3JoBHGxM61JQQ1EXA7AT3m7dnlHXLhnCj\";s:14:\"css/brands.css\";s:71:\"sha384-wRa49NRotGDh34aLO1Hjbu65qHSTF/ZNSBm7uTpMUa2EQ1Csq7Zlswm+FR9hcWtn\";s:11:\"css/all.css\";s:71:\"sha384-vlOMx0hKjUCl4WzuhIhSNZSm2yQCaf0mOU1hEDK/iztH3gU4v5NMmJln9273A6Jz\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-npD7syUhXOZUTbAzJEyIPGq/8gGAhBmei7JkUwUki9hAtz9oPkFJwx5f3vGb7SOi\";s:11:\"js/solid.js\";s:71:\"sha384-kDWpGOpzLEy85/cK1Df/ba6PkpDHAKUGOX4YHEt0sFzHdrTY1rGmT/gYHN3zCcF0\";s:13:\"js/regular.js\";s:71:\"sha384-xrLv+W4OudHJZ6QDKuv+el28Wyr4OMO0qSQuBiPqhBsnSGKdGct/ElQm+2/fx/eS\";s:17:\"js/fontawesome.js\";s:71:\"sha384-RXRrB6R44g3RRohoKLAOK5MjNq4PVvz7iZErCckeyobGIJLpTP2qq6xjJFuKnfZu\";s:12:\"js/brands.js\";s:71:\"sha384-CZZj1HZWqgh/CGR22Lnl6+fZC6IDR10ga+wECjipCR3zId+7ZxZP1JNI+YgdzyO/\";s:9:\"js/all.js\";s:71:\"sha384-7Gk1S6elg570RSJJxILsRiq8o0CO99g1zjfOISrqjFUCjxHDn3TmaWoWOqt6eswF\";s:16:\"css/v4-shims.css\";s:71:\"sha384-zpflLcSaYRmTsnK2LTOdvChgML+Tt/4aE2szcblLVBXd8Jq/HGz6rhZqZ+4TkK75\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-Bfk4oyOug+rBqsciYilQ+iwazXsMTURz/M6Gfx7fb02KNeW5VHwt7aHTXWNU9B2W\";s:13:\"css/solid.css\";s:71:\"sha384-ypqxM+6jj5ropInEPawU1UEhbuOuBkkz59KyIbbsTu4Sw62PfV3KUnQadMbIoAzq\";s:15:\"css/regular.css\";s:71:\"sha384-5E/NXotaQSDJW8gq/9pxwQHSPRrb21suHuLPqOIlgob8QC8ltM13i6HLujrhWmBL\";s:19:\"css/fontawesome.css\";s:71:\"sha384-NnhYAEceBbm5rQuNvCv6o4iIoPZlkaWfvuXVh4XkRNvHWKgu/Mk2nEjFZpPQdwiz\";s:14:\"css/brands.css\";s:71:\"sha384-vfTtNoEyqnxivzqkzc+mvlVeCWPGwMlIIkeTkt0mcUQNmFLyyXxY5SgZIkKQIXRK\";s:11:\"css/all.css\";s:71:\"sha384-i1LQnF23gykqWXg6jxC2ZbCbUMxyw5gLZY6UiUS98LYV5unm8GWmfkIS6jqJfb4E\";}}}s:6:\"5.10.0\";a:5:{s:7:\"version\";s:6:\"5.10.0\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2019-07-29T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:5481;s:4:\"free\";i:1535;}s:3:\"sri\";a:2:{s:3:\"pro\";a:18:{s:14:\"js/v4-shims.js\";s:71:\"sha384-vzU1ar4oP9lOG/JJdj1q/+3aatI/ZbpyHIMelvsAi2Ee8gCiTIb/YhqRymLLZkje\";s:11:\"js/solid.js\";s:71:\"sha384-Vh+IVHoo4c4JXOfJBoUxIiEJf6bB443zoyGtwY8WbBmCU+7fAq9QX9JLtFcNSPZl\";s:13:\"js/regular.js\";s:71:\"sha384-wNQjNuGVt9TzLWqaxsZvH5uIDIxEkpSCeSPg6nF2ud6AK9jXY9yMFA6CbcZrr+cZ\";s:11:\"js/light.js\";s:71:\"sha384-sEc8iKGnMxm+Dm4AQabXbw0DKZU9FtFrWMppMOsxaUZsLL5pcpQs4aL/OfefTw7g\";s:17:\"js/fontawesome.js\";s:71:\"sha384-8YSeMunSTZdDZy7rZxfG3NqC3KnYaCKxTJMm9yoILgIoMpXeTKDrV8TeV9C5ItEc\";s:13:\"js/duotone.js\";s:71:\"sha384-PcDzzpTJzDDda2YUM4EY5ZqnZQ3DTIFtoaAn7t07N0UIY1HVyaxIHRzROmFBd48z\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-JB1N15Wp6AIOL3sQ9Tm4a0kATlQy9/+/nLmU9B2wv4K4gGNAUFZEU7qDcxIPJLXy\";s:12:\"js/brands.js\";s:71:\"sha384-8TDwqaS9Kr9a/3cVS6+XkvWUM1tz6XdS8s2urD5rXY1Cz22kPF77ZuG1gIWaz6kZ\";s:9:\"js/all.js\";s:71:\"sha384-G/ZR3ntz68JZrH4pfPJyRbjW+c0+ojii5f+GYiYwldYU69A+Ejat6yIfLSxljXxD\";s:16:\"css/v4-shims.css\";s:71:\"sha384-y51MGgwaeLjbh5fbY1GJ6PypnEoMkGu8MoR1HRE/p/hHfiEE1G9bK/79bstJpyYk\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-85qDq8Thytv8iDkEBcdksps8EZiX4DEo3vh6Ijk38Xi4RVm37Ttn+HU9rsXho2fN\";s:13:\"css/solid.css\";s:71:\"sha384-Zbnz7QaugaSWTYmuSFTHGzMLxXAu2vzmqJhA/DS3bnaZGJaatH8apOWXfFaP6PMh\";s:15:\"css/regular.css\";s:71:\"sha384-pWItZRjB6NLzlrnwcL+2alve4CtHiaLj9W5ZwGPgy6dtMzCPsGv/qEcRvrbVkW5i\";s:13:\"css/light.css\";s:71:\"sha384-2CRj/5C4pwyS5v+q0KXxQ39b3qsKQNE6T+9FFaAOlps/XjJcK+M20aMUxuQtRLaZ\";s:19:\"css/fontawesome.css\";s:71:\"sha384-eHoocPgXsiuZh+Yy6+7DsKAerLXyJmu2Hadh4QYyt+8v86geixVYwFqUvMU8X90l\";s:15:\"css/duotone.css\";s:71:\"sha384-R3QzTxyukP03CMqKFe0ssp5wUvBPEyy9ZspCB+Y01fEjhMwcXixTyeot+S40+AjZ\";s:14:\"css/brands.css\";s:71:\"sha384-/BwiSb9M4ZqztN8bEG+VrC9ohWSBX3qEV95+/+gBJoE4+zG3KqcLj8ShUhBIALSm\";s:11:\"css/all.css\";s:71:\"sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p\";}s:4:\"free\";a:14:{s:14:\"js/v4-shims.js\";s:71:\"sha384-RT+uACaLSP2jOOLdRXKvxcgxA/WNa36UYkM14r9ODCgz51g7frfTdR+Jv3q46NW3\";s:11:\"js/solid.js\";s:71:\"sha384-WvtEEwvz7coGHFMqz/gUsacHkjubSgzLIieTORXey1KIpl+/r1Sk5owMdBxnGFHy\";s:13:\"js/regular.js\";s:71:\"sha384-eX5P9jt8OdQQ4ME1Y4Q90r5k0qCw55F9jie73NYjcSEHIYYV+x3MW3XgqK7HDuOG\";s:17:\"js/fontawesome.js\";s:71:\"sha384-LMbxIMq/Ra43sLL8MF9d0C8NDym6Cp7d2rtvvZUd5n4EuGE3GSYBmf6JV41EB7+y\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-yhpUSfH+AXwjqsle/7pS92NQZivmuHw41bqBfGxkaV4ftpRTE9Z6MNd2oh9x/BBm\";s:12:\"js/brands.js\";s:71:\"sha384-SgCx6DCTHwPNfTrT8PeDNKVR+bLsTKTVnBbtZYSLgfp4dd+KGa6j4/Jy96HTd0nw\";s:9:\"js/all.js\";s:71:\"sha384-BfzGEucsDAHnSR99xBvG8cNHx7h6sEbKJejtvqlMrN8nMi3gP2ds+sMAjWfWnZyn\";s:16:\"css/v4-shims.css\";s:71:\"sha384-R4Ah6+FGj2TWi1SbbJo01aRwLwdNunBoW4ALQ4SdcDpyQpKoP0pTL3Ce0Hf0oMOh\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-oBn2TNb41FLJEvg05fPEoAhWHErn7PR1FiyT6NjQkoPzDDg1n/e/GrwRgh34gDmQ\";s:13:\"css/solid.css\";s:71:\"sha384-dHM1276IWlmmltsiRRg04ASaTBbgAqnnjneOemUaqff0rqTtVHw5qqKE5i0k4Qll\";s:15:\"css/regular.css\";s:71:\"sha384-OVGJJ0J6OIuVjxoE5rUQPFweGgzO0xT+HKN5IChh3LTrsWQKjHocfKq+nk/8DogN\";s:19:\"css/fontawesome.css\";s:71:\"sha384-YYaKmJMZQbIhKGKC1QGjVKSQ3s9OlZitN6xQQEPksarSkM0WNkq5Kke0yehyNwyT\";s:14:\"css/brands.css\";s:71:\"sha384-19EzMRnOAF4Gg36FukRf0Bee26rnZC49Ld5mFG+8XiQ8ddeKQYj7Rnl12YxIoHe6\";s:11:\"css/all.css\";s:71:\"sha384-0c38nfCMzF8w8DBI+9nTWzApOpr1z0WuyswL4y6x/2ZTtmj/Ki5TedKeUcFusC/k\";}}}s:6:\"5.10.1\";a:5:{s:7:\"version\";s:6:\"5.10.1\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2019-08-02T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:5485;s:4:\"free\";i:1535;}s:3:\"sri\";a:2:{s:3:\"pro\";a:18:{s:14:\"js/v4-shims.js\";s:71:\"sha384-P9HMMmM/ObyzYMvKfF0Xf40MYwNdkI08AwhSyCsAVlmXZkJ9GaI0Z23pozRg8HAe\";s:11:\"js/solid.js\";s:71:\"sha384-WtnuXyp6MLUsHy3FAqJyL7aL0a/mdUjPwIs/Ub7FXJZufo/0qH9aFsTDY5Q6Bx3m\";s:13:\"js/regular.js\";s:71:\"sha384-ZlV+aQMpcvCEqNPe9qTu/S6+eBL+DfRjOxr9wtsoZyGnJ/vwQk/U2SZhZ8tJqH5F\";s:11:\"js/light.js\";s:71:\"sha384-TZInz5PvbxRzxSlGI1WYKmrrBBk/XTTZymO6w+smmSVD6RFpfZd+JtSye/viSFxA\";s:17:\"js/fontawesome.js\";s:71:\"sha384-v97MeHGTkmNphZhn+D7412xlPlc61o4jy6CouRwKfNltfXH68HcYhmQBr2j/J/Vp\";s:13:\"js/duotone.js\";s:71:\"sha384-QwVJpiaupNLHQYsfQUftqzWXMT+SsU4AKnlvxDGzNjTq5xPXRbG/ohsvyIEyK2uf\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-++EkH6KNUkbsGzUhPmRa5yboy873FnCrHLPNWnvcfYOzCCShCQHtdQ3RQTt3WDsW\";s:12:\"js/brands.js\";s:71:\"sha384-DGr5D3fYhGn4bylN+nFRaxvPt6s4FjV7B5EhOOFUKW0JKU2vco3q3xtgSZeeEYpw\";s:9:\"js/all.js\";s:71:\"sha384-FW78RPcSpi13vjx77nPWQIrQbNSLkPBopb0qGzLCxD2x4Kr6FA8V05C/6cpgkKPL\";s:16:\"css/v4-shims.css\";s:71:\"sha384-rql5zubvrhoXpo5buqgoiKryiT02OHCEtveKZrj4NX/C2Kuy7W2P7vl+RVzBUl9m\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-V8iByeksgr2la9ceLV1jNv7uWdzI3pYZLNzgYqWmQuQZa7khs4d6QC84YnMWoKxx\";s:13:\"css/solid.css\";s:71:\"sha384-BrYpEWmuPyxLgVmvUGa111AoxZ3kKwiG4TVjjewWZV9vww+dTLWpmEffDSEg9Gf5\";s:15:\"css/regular.css\";s:71:\"sha384-yLDdP4XFV3JqISKN0JaZ0kdyks9S+U2o9uBmNbmZh85yjdF/kpu+oY3/eXQcGHhT\";s:13:\"css/light.css\";s:71:\"sha384-CL557/BMzDSg/4ctPpKDphHJgLqpdJ5rvOklcaHzLHpX+qsgd4V/xao6Rya4xKMQ\";s:19:\"css/fontawesome.css\";s:71:\"sha384-OvQaO09Stu8nVnOdc+6B3WjpKg9dfBxoakdLxJKAYgsz62+DzBUCvWRxPl9LRVSq\";s:15:\"css/duotone.css\";s:71:\"sha384-Na50X0DRTNz+Sc+4XbFXONmaknKHBHw6gvRZ4coLQCl7ZLXziulq+4wvTZxkaM+U\";s:14:\"css/brands.css\";s:71:\"sha384-9J78p9RP9gty/jk0TJPvYSzmYYCH4cRRkDMnZGxZNh1wdaXLvXzIk90EWrxjjqr9\";s:11:\"css/all.css\";s:71:\"sha384-y++enYq9sdV7msNmXr08kJdkX4zEI1gMjjkw0l9ttOepH7fMdhb7CePwuRQCfwCr\";}s:4:\"free\";a:14:{s:14:\"js/v4-shims.js\";s:71:\"sha384-BtUWeH6hQDQGUZewQDmWRMisAxvs1LtqoVQgmbFptFnH1GpBw2b2vZenxfFmRtOS\";s:11:\"js/solid.js\";s:71:\"sha384-dc4FEGpFyXnyL9DbieF6I8Xzipdt7GRHX6k8RM/ow6+IDISjPeeTwTiAkNzjv2OI\";s:13:\"js/regular.js\";s:71:\"sha384-7Sk1mIxPYoZb2I3YK86sPsPMftKqv0aWP+dgX//x1mF1mSOYydXmX7DbtHN99bea\";s:17:\"js/fontawesome.js\";s:71:\"sha384-NXKh+ixIINN/JHIorH6fcTNwaAekBk2v7azch6cKmQm7wtb0yBt8ctqn1FAspAW5\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-A6TzAYakDQ9XwDY1hOPxAxI/3t6kol61Ed9hvHegEwcENzAE0vLojG6wItQDmclf\";s:12:\"js/brands.js\";s:71:\"sha384-BZIBcmKlroIkWe3e13MZbUHZdmagAU/8cnXo9mIW5p5wzf+/U5ULLQ8TVioSuCnC\";s:9:\"js/all.js\";s:71:\"sha384-aC/bNmpJEYrEVX5KNHN+m0CmvycQX9wDnYv8X2gdXQjrbtDP5OcU5DRiXwL6bPwr\";s:16:\"css/v4-shims.css\";s:71:\"sha384-i1lF6V7EeiD7KOgGLtAvJiK1GAQx4ogzG6B9gpEaDuHSLZuM3sFtPZrI6H2Gzqs6\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-94OQehjHMl3lApC2tWmjwtxlB0oEtSE2zrTdf8uuWEaDEkkCxXK/w0vFs5J5WPU1\";s:13:\"css/solid.css\";s:71:\"sha384-VUnOJnDrNS0aVOhF6puq5SPJOP5oOvIO6n54m14E2/OHv6DU1gklJ4EImoD382c5\";s:15:\"css/regular.css\";s:71:\"sha384-gr19od0wAxe2+mYHEXvS7Y1ppn+ESoAQzTYGPauVJYyAYYl0NBQaKveeQnzez2Rm\";s:19:\"css/fontawesome.css\";s:71:\"sha384-jUGOH+gYMCfz2jbO6DW8vojES/a323h7dcoT6qI7Bvod9mew/wwTZryjccmaMOkf\";s:14:\"css/brands.css\";s:71:\"sha384-+B+cmd37r9agFUqHw5ABups/+o97SqA/Y6S5b3ly2q0ABacloQs0HZOQAX1NpJhF\";s:11:\"css/all.css\";s:71:\"sha384-wxqG4glGB3nlqX0bi23nmgwCSjWIW13BdLUEYC4VIMehfbcro/ATkyDsF/AbIOVe\";}}}s:6:\"5.10.2\";a:5:{s:7:\"version\";s:6:\"5.10.2\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2019-08-22T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:5485;s:4:\"free\";i:1535;}s:3:\"sri\";a:2:{s:3:\"pro\";a:18:{s:14:\"js/v4-shims.js\";s:71:\"sha384-z089sTZgTLfns4lyNCTpVbdQA6JAhOs6JXwRH4ig0M6EHPg+Lzp/hdcx2OHQn/v8\";s:11:\"js/solid.js\";s:71:\"sha384-JzK2muq5DGAdfmBP1xyuFUAYGceTmP/Y84tZvRxkdtsjwuIcd8Hpf1D+5izeBUQP\";s:13:\"js/regular.js\";s:71:\"sha384-p89srWlrnSOel/vi/SpBD/wyTTJhu+27jcfOazOCUnLTpcxG+NVuYs/okkO2JBox\";s:11:\"js/light.js\";s:71:\"sha384-vh/BsPXkl02OgBjk1HJkukipMWFU6vHADY4W3u9BXIrKjcRFw5Y5XikVLoLElHee\";s:17:\"js/fontawesome.js\";s:71:\"sha384-sy0tjZ+ivgcg2wUVVEmLMO5wfntWOSyQaD7AQec0iXINci5JAP92T8sM4YldYQIA\";s:13:\"js/duotone.js\";s:71:\"sha384-2j1n2yG+7lkO9CjnN1DSQOGJoDEaJPEr+TPmTer3pK/yD3bQ/Kk8bqJyS3LfCK26\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-eYjh/PZbsWw6lqYWtDM+NlcRs3pUkOk8r4mxv/x0xDjmYPXTxPKQ8ZNXxOnd0UCL\";s:12:\"js/brands.js\";s:71:\"sha384-nyTyvpFz3BvQZucRUSSEDlyivN7GAC2Xhgl9M92o/rt/KfEZ7LkqusFXlCjM4DvC\";s:9:\"js/all.js\";s:71:\"sha384-lowSFbzpSYKDOsvnpi2JVneSnkrbVjOTwcHOWpC+tj/YT1mxTDIB3ZqbtllmfUSC\";s:16:\"css/v4-shims.css\";s:71:\"sha384-88Tda+TyAtJK9/cRRXAWdJjyE56Tg4ai2x7RoSEqSVodcInAoV0HNQ2ofaGCidyr\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-+OTv1mrGtdzHGeAuFSVKpPvaMXNpUu+W+Xs4xYz2RgUlrBctmMyE3noRImN5j+ot\";s:13:\"css/solid.css\";s:71:\"sha384-FCdq+BRoY+lV7Zy7HKKQ4zoywYLRyasGk6IrmrXfmYs0xIgL0QrPeEPTu3T4Uqcc\";s:15:\"css/regular.css\";s:71:\"sha384-hKM7KqUOh6F2PI59uEhofbDs/5qHHdJEULlmNWJEQcu3D/5/vl5zpwBrveC4GAbI\";s:13:\"css/light.css\";s:71:\"sha384-dlxpRYGi8Pjg49IqtrDIVZmCOQZ//oDKDkoqbn/IXrwwQDP4Uf0ys6+eH1z9sfhV\";s:19:\"css/fontawesome.css\";s:71:\"sha384-1sdMwbsd8X7Y+nVcEr/4D35smQEaEd6Qz+R00Y+NPUkG8MyRa97RrX5I4nqDt6X7\";s:15:\"css/duotone.css\";s:71:\"sha384-B6+5TXCEkY2Io8b+v2Ki0aEWnpCFgBYkOzXAHY3oQ4tr90JpQC1RErwFbvJ9CRt8\";s:14:\"css/brands.css\";s:71:\"sha384-hIpb1kefRKjC/r6WxN0S6Nai7+AuherqCoHKD0HNdXkbzJkZcS4o62bJ7ODiBWAu\";s:11:\"css/all.css\";s:71:\"sha384-XxNLWSzCxOe/CFcHcAiJAZ7LarLmw3f4975gOO6QkxvULbGGNDoSOTzItGUG++Q+\";}s:4:\"free\";a:14:{s:14:\"js/v4-shims.js\";s:71:\"sha384-gDM1aRghQ5DRg+fSCROSYawrJhbAHqa6Teb2Br0qRJtb+vRJlyU4U4xnmN5cwJ9j\";s:11:\"js/solid.js\";s:71:\"sha384-RbVpZhfPW/1SmcShwIOauawY5vJWxTCeEnmiUCiY2SbkrbKuSGTqJ9NnBUmcP95A\";s:13:\"js/regular.js\";s:71:\"sha384-CYi/gunDGMYA12KV546MNRqsjbbWSyKgPjA9BwVMBQmIMhzVrjyUJwkV9uujzHLJ\";s:17:\"js/fontawesome.js\";s:71:\"sha384-5WtMZ7frOu4PgR22YgRSlercgEU28i5Zn39Svk6+2cg1MOigLDSsvXccsmJO2Wxp\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-Hg1lNcVEsyCqBb1J4/U9X9IW2DEhAKIBfBIE0J0eiWGEX9LEpEULwcsqoAb6HDgG\";s:12:\"js/brands.js\";s:71:\"sha384-0kDL5YEgNJjL/kNToZYEds3evLmosarb6OU2eKqRYu6O28jcJc121tjUC40sG9VB\";s:9:\"js/all.js\";s:71:\"sha384-QMu+Y+eu45Nfr9fmFOlw8EqjiUreChmoQ7k7C1pFNO8hEbGv9yzsszTmz+RzwyCh\";s:16:\"css/v4-shims.css\";s:71:\"sha384-updXts+unDswrMsYxLc5R+HfSmF8CuEIOe48Rj3DoVoPUIImOT1fs26H/tr/H9gC\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-G0mvrlfkz9DnjBCRmY8Wf7nC8wTxDsHE3pGAc7/4rDLh5+v9Z00qi/uyjjcDf1nf\";s:13:\"css/solid.css\";s:71:\"sha384-qPldrzmea0i8jhonuql0da/kQWeaXdQl+krGXcTQUdRUGHcXBfSrBbZLbyMcCWcF\";s:15:\"css/regular.css\";s:71:\"sha384-zuVEAfuEXYtKnHpmwmkhzwMdR2uek5gePU1XveESmScyRJHbncv8rLEAt+ofv7ze\";s:19:\"css/fontawesome.css\";s:71:\"sha384-hM7EQerc09E4O3zhtvF2iqcB4ZkEu9xkLQndhXdGGCEJ/sB4JK54SuKGmIC35UTf\";s:14:\"css/brands.css\";s:71:\"sha384-qVnmyLTtnGPGEN3HDG2MCEOXWH1Yk/i70lKRuV+gMCDQg+jblQlFGPf1mejWUyYG\";s:11:\"css/all.css\";s:71:\"sha384-rtJEYb85SiYWgfpCr0jn174XgJTn4rptSOQsMroFBPQSGLdOC5IbubP6lJ35qoM9\";}}}s:6:\"5.11.0\";a:5:{s:7:\"version\";s:6:\"5.11.0\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2019-09-18T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:5801;s:4:\"free\";i:1544;}s:3:\"sri\";a:2:{s:3:\"pro\";a:18:{s:14:\"js/v4-shims.js\";s:71:\"sha384-56L2fWZDluSTJKVxfc7PF+HoFsBrcdkn/Wj79nB2pzTgaYmqLT5T2pn6PLbMvHHq\";s:11:\"js/solid.js\";s:71:\"sha384-vTIqr5UHlJnlDEDAZB19P3NuSQy0Ynbzj7w5ofBkLPpN1bb7N2uZ/z0GNZGCIFxW\";s:13:\"js/regular.js\";s:71:\"sha384-8QzBYxpPIH9HEZ96HhicnkJ8XYzELjI6YQabAc2ANT0wExEgzeKwnNdQM3B0YPzX\";s:11:\"js/light.js\";s:71:\"sha384-zam67iVIo4OJbdPFYrgsf4Te4l96q61wYKpT72nLO78ICkwXk27OlsN4SQYHOlI6\";s:17:\"js/fontawesome.js\";s:71:\"sha384-kAYceFs9TzH4f4HsWzAZvbE7yJRTcOUe2UeJVCdVV8AYbspSlxAIwUg7yGHrtSKe\";s:13:\"js/duotone.js\";s:71:\"sha384-tit+/K18O6+uMPCuvEcobuzvT7aFly7Raxqnszuar7OzNloVr2oIugu9S/T3MNgn\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-I8WM/bXtfWQr8u2t0OIaUfJNpTd6LnCbNnrQpaKQN4/Pdek5IOtrXdpcXpLwzCoc\";s:12:\"js/brands.js\";s:71:\"sha384-om6tKqxNyejPYGBkAEpF5czG8EOB93m9G17YUGoJgRtei7kJnA4P4+w73UfDPtLl\";s:9:\"js/all.js\";s:71:\"sha384-jaxx6ehyna+t5i9JERhQruWpH3C/xGZQJz6/+xqO5C/eWWJ7ysIZIe9BAULfRy+f\";s:16:\"css/v4-shims.css\";s:71:\"sha384-+/X59I6aJtu7U5st0yw42TmOgz2GTi80ici4b4Zr3fVKaib7AhAhXm17vhXVqNN6\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-c8uzxHbCxkqcTDgRCHmj0nVIK7Z72qzR5ciNuZIQQKWVMb0Trzdh3g9EmdybHyb/\";s:13:\"css/solid.css\";s:71:\"sha384-23irw3gzc0cirSOm9k0vC4Cb8339DDxFatLW9p83F4RsFK/1HuRvePKAltYrdlBX\";s:15:\"css/regular.css\";s:71:\"sha384-v0Phnxb9e1tIN8ABEpuqr9+U98eA2hbSnnxnIFWqTyvwFd4QjVV9NOCl19hLotTv\";s:13:\"css/light.css\";s:71:\"sha384-SE3odAKV/Li06jtOem3j03b4qHD5AfOLS3ip3Ie7HS0QtdLJuRozlFcEiBnKhIjj\";s:19:\"css/fontawesome.css\";s:71:\"sha384-ASwVckljSlVqrp7J4fCNW1Zfqp4GBw13f/oq/bwtr1KNG1j5lzKrfTpvoivwJZpS\";s:15:\"css/duotone.css\";s:71:\"sha384-JrGJDz5LRxQ3s3dW4Av8oo0oPABX1FQPzGwpVizHFqVT7RXKd2suPslh8/k6EFvo\";s:14:\"css/brands.css\";s:71:\"sha384-/DL+sGDGYNVXNSXzx8omqgYJuKJWhPfJC0j3sM06CPE7CKypUtyAtAburBBMbhWn\";s:11:\"css/all.css\";s:71:\"sha384-eRd7BE4pd4YyGL79iaO+/+GQtuNU464XOqRShZHNdRwR66wJIzi0UirzOFzuoMOo\";}s:4:\"free\";a:14:{s:14:\"js/v4-shims.js\";s:71:\"sha384-uQinggJhGToi55IHZla+hhoeR3xafp4JLhuIZzag3QFHKDyLLolL8IuCRM2aLdxy\";s:11:\"js/solid.js\";s:71:\"sha384-abaNJNBN26YUz3JKjkP/eHqZP+7EaMLIkyR/I4JNQXin7CWBKc81Tmgh2//K2gfd\";s:13:\"js/regular.js\";s:71:\"sha384-sPFXZNRvY5NMeQlqaEJyF/3Lrrcqi+EowkFdHnHe2B5/GSLq+RN8eAfpDiFzWveB\";s:17:\"js/fontawesome.js\";s:71:\"sha384-+4PGPfaOiBMXBdbxBpjj3c78flBTf1SoDBBbEHY2P8SuIKsjNJ59vjhjpMClcRVk\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-nDF1UhY85TnH6TtkBtlcaTXQh2EGA+oy54oi//hchZ6BIO8n0yZOdEDcqy3Lj6SH\";s:12:\"js/brands.js\";s:71:\"sha384-FYnxcuBilMBfd4M0z3ZhTEWrorBL6P6mqaDWsYN46z3iJszwg7yqVAft8mxPhWQf\";s:9:\"js/all.js\";s:71:\"sha384-Zgm+jt84FBq52ezxzG1WPrUHXPTLraCVSuBDiGgz/mX0FZxgdkTZNephFvciYglv\";s:16:\"css/v4-shims.css\";s:71:\"sha384-QZ/09hWMymER1waFUW4M2iM55h3bf5FVf516rOAYf9G2mHSpAj+oo/6jrxhxiVq4\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-utbeJwkEmotPPgnsjR2cFDH5mR1JrU1EX02CRdVYlT6MuuLA6/jK0M1UcDXBVNa1\";s:13:\"css/solid.css\";s:71:\"sha384-1Ln0i7HCe1LMHO25AgX/9s/3XzTLIMev2SYgQz8xSyXSa3775gIb15NIpJoDRYDg\";s:15:\"css/regular.css\";s:71:\"sha384-NJ6bXu66piTFdxVfLXmQuxcjGye4blIA4H2DybHqY1WFdYSxbKQo6W0G53caD7MY\";s:19:\"css/fontawesome.css\";s:71:\"sha384-saSWCOAroWA1DTfG19axC5l7ej+/lsLpGrQjthhULGGw0FKZqZmxdjRhWqjypqgH\";s:14:\"css/brands.css\";s:71:\"sha384-ngkCSSyhFgmeG9/8GICGMwnX44Q70/NN2XuNgrpMHOAjXVjYwTvtQML/2+2EH5mm\";s:11:\"css/all.css\";s:71:\"sha384-XLYVh3ZsmvjnjODXg/qvDYjcINmPLORACP+Tk6qA3jNLbStl84PzAeEz2Su02511\";}}}s:6:\"5.11.1\";a:5:{s:7:\"version\";s:6:\"5.11.1\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2019-09-18T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:5801;s:4:\"free\";i:1544;}s:3:\"sri\";a:2:{s:3:\"pro\";a:18:{s:14:\"js/v4-shims.js\";s:71:\"sha384-1MuEmp8vgjvrraTYbqRjvuZbLs+vFg2oeN+87QTVYX2EAXM90T4bzBm7HIFFzAp7\";s:11:\"js/solid.js\";s:71:\"sha384-hNm7JVaYkbmX1gZWRwOXVFKJ3onp68grA2bFGmFSMCQueJbgNvKR+iItAjM/PiuT\";s:13:\"js/regular.js\";s:71:\"sha384-owKa0I4sfD0ooTioBE3KJEbjcmAZi2LeCbkqHr7/vkUeG/U5OyCGxYlcz8axgnSe\";s:11:\"js/light.js\";s:71:\"sha384-qvh52W5+cWrTxhfM559wBnsSqplMQIEjQkHnAE8c6MViBcH1OKvI1u4IGR+26hZK\";s:17:\"js/fontawesome.js\";s:71:\"sha384-hvER25BD06AWxsJLW7cQmGKjQp9PSZttpMIo36kIq2TTPEhP4lIT3VMFul89Ym6d\";s:13:\"js/duotone.js\";s:71:\"sha384-CeUA4+L5GZZwc5CGnvQVaT/Yrv5HuRydWW/QDCiXZnuORKxut4zKDa2WUaCS7fvo\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-jKcJk7TgESeW6RZgq9/e8kTr0jRQ/JvaM//YDKwhF9wyvXk8lQs27OQ6cgv3FXTt\";s:12:\"js/brands.js\";s:71:\"sha384-QRf6gn0gPrg4U0aYZ5s/Sx7xXy9gplYMzh82CI51530v89R9s9xGG8ljaSqYflQU\";s:9:\"js/all.js\";s:71:\"sha384-7DVhSuOn0R5KmazSuDzmwQHOIPfU4+n8x8AifcGCoSOGATBJh55ZY41LSL37PB6m\";s:16:\"css/v4-shims.css\";s:71:\"sha384-1oMR0RRrEohmWSZo0t/tezQF1gyGc/b73Bba+qyZLEGdTAPORCf4p+pQm/iycsgj\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-9q0WPwNHncxttx1Sf3c/G9lszy6f82L4rYAYW+JF0PRBNvJ1mVyYivrsep7J+Fud\";s:13:\"css/solid.css\";s:71:\"sha384-/SNkE+jEmgiOubdXCmBU+e2fWH200um/crHWjo/Rni9rhQuxT4demqM/PAyc+tXU\";s:15:\"css/regular.css\";s:71:\"sha384-RjVm0cyaQYehIEaR5Tt+JDfgnUUtY7GP/N4rEglG6DxLUhzozRl6HTH5NfPQ0X1/\";s:13:\"css/light.css\";s:71:\"sha384-Rg8mXhpzJH99uBsgdsCp9zXjkcsw/pm+s4Kgu/56eRQSd8SAszYc6hssH5MLusHl\";s:19:\"css/fontawesome.css\";s:71:\"sha384-O68Og25nY+MZZRUiP6gm7XPDuHsNC5DgKWEoxn6+3CFcGLRXuFihbGO/8c5Ned0i\";s:15:\"css/duotone.css\";s:71:\"sha384-q4v2/qv2HhGIAcd04NDH2XuGq8Bzu+xNYUI3gcKFfWt09m/dgZlvUC0rQJ3KtGg/\";s:14:\"css/brands.css\";s:71:\"sha384-4sG0FgVejJMQM47pqYyG+7afeARX2P0HYkQ8JCKf3ZqTcpJ3/SWefUFX8kdm8eYV\";s:11:\"css/all.css\";s:71:\"sha384-sr3GDThhNP8BxHFoTK4zKFgOjcrT8vzaiLwnwU+yB31BCaNj3QMX6YVXcv8AeBAy\";}s:4:\"free\";a:14:{s:14:\"js/v4-shims.js\";s:71:\"sha384-gtnOUe72T7BrqVgxbkcbbwZGJLyyHFFtefPxPZ5t/rmQ7vMNXbxml7JJkSNfHmkV\";s:11:\"js/solid.js\";s:71:\"sha384-kDwQ866HvlesMeZEZYvoa7AceBir+K+jB/0PVVSs/1bX0JtTvAm3aFEgOCOCt3c3\";s:13:\"js/regular.js\";s:71:\"sha384-W1XmDNwB/NY1P/H0BiR107pc9NC7aTrPvwXbrZewndT3nyrmFm/7IIc0AxxcHQ/N\";s:17:\"js/fontawesome.js\";s:71:\"sha384-jwx8I0tSvPLf7ZV1KwBdmXpCHgduVujQNEzmHuLEiCYql63uV/C9TCtdBU7E5TL/\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-LqGhhRx8iThhBm6ytksB4x9veweiV+qNa2soZmn8V37E4Nohq1ccRoaSr4o8YAGQ\";s:12:\"js/brands.js\";s:71:\"sha384-q5JjSRgEoLV9cBFXvjGX8xxIxWN+LcGaDFBxSid/9XwjhecfXMQK9Ak7bcPSFT0M\";s:9:\"js/all.js\";s:71:\"sha384-4Uei2cJ8mOycRxb1dxppaomro+V4vHdGuT3NfYGpENdgukEOcOrNB43OdzBiHdpZ\";s:16:\"css/v4-shims.css\";s:71:\"sha384-iJU+Et4BsM2cUxdymLmM7B8IF6IkyAYIcJRKroT/XuA5+2bWL9u+KJ1ZItC4bcdo\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-jv39B+1DxC6iSROYUwIeI9RUDrl9ckXFPOOlys2dTXchRTodXzqX0lm6GUwN4iLA\";s:13:\"css/solid.css\";s:71:\"sha384-20Qlvv++Kgw8B9SXDkUX4JrITPco1UXcaB1mkymQFgx8cM9azG2Ig9Sy3khBpWip\";s:15:\"css/regular.css\";s:71:\"sha384-5JoPxivOfpG9KRKbjXkqhwpMZ7vvAATGi77NPd6sC2ruJrWa/hKqoLBIWC1n1N/U\";s:19:\"css/fontawesome.css\";s:71:\"sha384-8dpIy0am6bmWHK+abUbC1sgkCSD6WstSMjjNB7JVa+rprKurA6xisqNHg6DESJWW\";s:14:\"css/brands.css\";s:71:\"sha384-UMAQJEtrY4iFRXQIYIXWfTd0GPzHrhSPK1SJ3fEeGGgtkC3m5qhKESA0yOXahpmJ\";s:11:\"css/all.css\";s:71:\"sha384-IT8OQ5/IfeLGe8ZMxjj3QQNqT0zhBJSiFCL3uolrGgKRuenIU+mMS94kck/AHZWu\";}}}s:6:\"5.11.2\";a:5:{s:7:\"version\";s:6:\"5.11.2\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2019-09-23T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:5801;s:4:\"free\";i:1544;}s:3:\"sri\";a:2:{s:3:\"pro\";a:18:{s:14:\"js/v4-shims.js\";s:71:\"sha384-+Onl+wOd5BbZvaC8Q/mQUO3lZAqsUyD+xqhS57VlU7gIpqXBMcS9Tw94A9uMZRwX\";s:11:\"js/solid.js\";s:71:\"sha384-9I7yL3g1YvBlMZjZ0bWzPqP1m3Ic5t3EgFq/MqNm2r8FUxDVowt7dO4S1IFleLqZ\";s:13:\"js/regular.js\";s:71:\"sha384-+3mzeMYwSyHPQfOsqYlwcE3OSC7aI/+DjyVLkBxqWP9O+JyoEtzidrSonbNKh1uy\";s:11:\"js/light.js\";s:71:\"sha384-zE0WHJZIhNaysmywEoQBm6THN0uK5wAyfKWoN6lJPGOlrMB8hf0Yt4/+bex9jZi2\";s:17:\"js/fontawesome.js\";s:71:\"sha384-FdPoPmNNPrerz9uF/cNSTyPmNCRf6b81QDEPk0JlXAaailLV3DT9yA8plMzyffNZ\";s:13:\"js/duotone.js\";s:71:\"sha384-uO8Ntsr5QW0kAl13UUiYRBDhu3foxlKI+jZjPBApRxFDX2tgO/GYiCXIYiGixOU5\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-GLrjh9czojGY48hc8pYlf/3FRNEBu9OWvNAta7SMilmijx8+ciGGVZyD+VwV4FVP\";s:12:\"js/brands.js\";s:71:\"sha384-NuqRsJYX4n2gSY6iMRHPZJxtpR40C8Lc/CV66yyeP1Vu5W2QSuVyPxMRpRIGihE+\";s:9:\"js/all.js\";s:71:\"sha384-S++1cFhwpxbtRScUliTyprAMK33gMHbukurY4rNyt9CxIniGm6PfioUsQPoAITQJ\";s:16:\"css/v4-shims.css\";s:71:\"sha384-A1hDH1BUL9ZdoEFsPEJY4LRFhu70QJj+RaY50Zoqd568i+ONa9LHCI+uoWDT0Lut\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-Mh++Qzb28x/RVEo6SYO87IyopQpwhzveyGIVg/AfbCLCEHUINYcCy24fkArgPFNc\";s:13:\"css/solid.css\";s:71:\"sha384-LkNnzh6wVxsC0m3vcQ0T5L6csSYpgSYniG/AKJqWBsHT7PVpeO0QHkBw4dW1WfVu\";s:15:\"css/regular.css\";s:71:\"sha384-H5RIR1XTDkiiLdUTNtbYvWKpNd2qsPBeGzpT5PD495znZL9JCA7119EMPNfCASw1\";s:13:\"css/light.css\";s:71:\"sha384-yNf+8hATd/MoR/yfZG0nBBtjTfxZEM1rJos9BgjBaVuLcu711wcecTXBlfS91nfj\";s:19:\"css/fontawesome.css\";s:71:\"sha384-bQakmC+XBF+eCf93fSR/57kAeX91i0BDyXyj8My8/e/3Bcno5zhEGM02xNvpXV+2\";s:15:\"css/duotone.css\";s:71:\"sha384-tHth4ugEmPOZTBSN4Hi2oYiHY6vpxIL8clasFZidKyR6Gm34+U6wx6A9eZHqTs2W\";s:14:\"css/brands.css\";s:71:\"sha384-dd+UlUKIkNDLBFy2GZJRdMODxfdUjx/PanzxBbsXaRBkyjHzUeDX3mj6q53uL825\";s:11:\"css/all.css\";s:71:\"sha384-zrnmn8R8KkWl12rAZFt4yKjxplaDaT7/EUkKm7AovijfrQItFWR7O/JJn4DAa/gx\";}s:4:\"free\";a:14:{s:14:\"js/v4-shims.js\";s:71:\"sha384-G5fIV0dSzZ1nDQSh+B5u3TRX2UtPcd5UWyi2WS1fZIpJQ/JpJCdShAZ+wmILZ7Qd\";s:11:\"js/solid.js\";s:71:\"sha384-Mf3ap7OwO+bjTkzM1RsrothLh38uKXvMWJ2TQPXGHqZcqfeI/cyCV+sfV0IDnBDq\";s:13:\"js/regular.js\";s:71:\"sha384-vIxiYcREJ+yKr8tRXG0gCdepcyuhCTkHwiTdG0qVTHSQvjO0pmllh1QAy93JYsE5\";s:17:\"js/fontawesome.js\";s:71:\"sha384-EYYaHDhIRoBhd/Ir/1fPnxg9rZLk/55lKtlNT5KrIcONoCS2kjf7ZWzMoCLLACeo\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-b1XIrGvAvE1F4q9vHz2OmkU7bBKvxebE+Q/bW+d4lG90kACkPFm/ZQuS9tlTwVD+\";s:12:\"js/brands.js\";s:71:\"sha384-b2GpqFrJizV0BUEdbrITdOA5HnxnlrErt7MlEERWd6NSJ32rHeibEvyyCuA13OAS\";s:9:\"js/all.js\";s:71:\"sha384-b3ua1l97aVGAPEIe48b4TC60WUQbQaGi2jqAWM90y0OZXZeyaTCWtBTKtjW2GXG1\";s:16:\"css/v4-shims.css\";s:71:\"sha384-/EdpJd7d6gGFiQ/vhh7iOjiZdf4+6K4al/XrX6FxxZwDSrAdWxAynr4p/EA/vyPQ\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-PCpLTPQTGcSAXFltutjYRSDJAXJItRY88oa9XgNyYJuwrgJGx+uNVmtGSDS2PPvL\";s:13:\"css/solid.css\";s:71:\"sha384-doPVn+s3XZuxfJLS7K1E+sUl25XMZtTVb3O46RyV3JDU2ehfc0Aks4z0ufFpA2WC\";s:15:\"css/regular.css\";s:71:\"sha384-zgXo5aJZxI4cJSgWSRtbv7q4JB6PzrmOTAWiZt2CqN25ifeKsCuQZ/pUNoPgjcTb\";s:19:\"css/fontawesome.css\";s:71:\"sha384-+pqJl+lfXqeZZHwVRNTbv2+eicpo+1TR/AEzHYYDKfAits/WRK21xLOwzOxZzJEZ\";s:14:\"css/brands.css\";s:71:\"sha384-tft2+pObMD7rYFMZlLUziw/8QrQeKHU4GYYvA5jVaggC74ZrYdTASheA2vckPcX5\";s:11:\"css/all.css\";s:71:\"sha384-KA6wR/X5RY4zFAHpv/CnoG2UW1uogYfdnP67Uv7eULvTveboZJg0qUpmJZb5VqzN\";}}}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1645, 'theme_mods_twentysixteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:23;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1570278847;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:16:\"product_widget-2\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(1842, 'theme_mods_woo-theme', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:23;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1570284340;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:16:\"product_widget-2\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(1945, 'theme_mods_twentyseventeen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:23;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1570283703;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:16:\"product_widget-2\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(2155, '_transient_timeout_wc_products_onsale', '1572883164', 'no'),
(2156, '_transient_wc_products_onsale', 'a:13:{i:0;i:15;i:1;i:75;i:2;i:78;i:3;i:82;i:4;i:83;i:5;i:85;i:6;i:87;i:7;i:89;i:8;i:104;i:9;i:106;i:10;i:108;i:11;i:110;i:12;i:120;}', 'no'),
(2157, '_transient_timeout_wc_product_loop_55bfe5925f140e1a955ae1ee274f4acb', '1572883298', 'no'),
(2158, '_transient_wc_product_loop_55bfe5925f140e1a955ae1ee274f4acb', 'a:2:{s:7:\"version\";s:10:\"1570291214\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:12:{i:0;i:83;i:1;i:85;i:2;i:87;i:3;i:89;i:4;i:120;i:5;i:15;i:6;i:110;i:7;i:75;i:8;i:78;i:9;i:82;i:10;i:104;i:11;i:106;}s:5:\"total\";i:12;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}}', 'no'),
(2163, '_transient_timeout_wc_product_loop_6b44059331fea764b07e569851541331', '1573032560', 'no'),
(2164, '_transient_wc_product_loop_6b44059331fea764b07e569851541331', 'a:2:{s:7:\"version\";s:10:\"1570440228\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:12:{i:0;i:83;i:1;i:85;i:2;i:87;i:3;i:89;i:4;i:120;i:5;i:15;i:6;i:110;i:7;i:75;i:8;i:78;i:9;i:82;i:10;i:104;i:11;i:106;}s:5:\"total\";i:12;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}}', 'no'),
(2270, '_transient_timeout_wc_related_122', '1570449629', 'no'),
(2271, '_transient_wc_related_122', 'a:1:{s:51:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=122\";a:14:{i:0;s:2:\"15\";i:1;s:2:\"75\";i:2;s:2:\"78\";i:3;s:2:\"79\";i:4;s:2:\"82\";i:5;s:3:\"104\";i:6;s:3:\"106\";i:7;s:3:\"108\";i:8;s:3:\"110\";i:9;s:3:\"112\";i:10;s:3:\"114\";i:11;s:3:\"116\";i:12;s:3:\"120\";i:13;s:2:\"80\";}}', 'no'),
(2442, '_transient_timeout_wc_related_120', '1570504514', 'no'),
(2443, '_transient_wc_related_120', 'a:1:{s:51:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=120\";a:14:{i:0;s:2:\"15\";i:1;s:2:\"75\";i:2;s:2:\"78\";i:3;s:2:\"79\";i:4;s:2:\"82\";i:5;s:3:\"104\";i:6;s:3:\"106\";i:7;s:3:\"108\";i:8;s:3:\"110\";i:9;s:3:\"112\";i:10;s:3:\"114\";i:11;s:3:\"116\";i:12;s:3:\"122\";i:13;s:2:\"80\";}}', 'no'),
(2447, '_transient_timeout_wc_related_87', '1570504801', 'no'),
(2448, '_transient_wc_related_87', 'a:1:{s:50:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=87\";a:3:{i:0;s:2:\"83\";i:1;s:2:\"85\";i:2;s:2:\"89\";}}', 'no'),
(2631, '_transient_timeout__woocommerce_helper_updates', '1570501172', 'no'),
(2632, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"358c40eaa335ac0d027f3e9faa3c726e\";s:7:\"updated\";i:1570457972;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(2633, '_transient_timeout_plugin_slugs', '1570544373', 'no'),
(2634, '_transient_plugin_slugs', 'a:7:{i:0;s:19:\"akismet/akismet.php\";i:1;s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";i:2;s:29:\"font-awesome/font-awesome.php\";i:3;s:9:\"hello.php\";i:4;s:14:\"collection.php\";i:5;s:27:\"woocommerce/woocommerce.php\";i:6;s:39:\"woocommerce-admin/woocommerce-admin.php\";}', 'no'),
(2742, '_transient_timeout_wc_related_110', '1570552201', 'no'),
(2743, '_transient_wc_related_110', 'a:1:{s:51:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=110\";a:14:{i:0;s:2:\"15\";i:1;s:2:\"75\";i:2;s:2:\"78\";i:3;s:2:\"79\";i:4;s:2:\"82\";i:5;s:3:\"104\";i:6;s:3:\"106\";i:7;s:3:\"108\";i:8;s:3:\"112\";i:9;s:3:\"114\";i:10;s:3:\"116\";i:11;s:3:\"120\";i:12;s:3:\"122\";i:13;s:2:\"80\";}}', 'no'),
(2838, '_site_transient_timeout_theme_roots', '1570490855', 'no'),
(2839, '_site_transient_theme_roots', 'a:4:{s:13:\"Project-theme\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(2884, '_transient_timeout_wc_report_sales_by_date', '1570582229', 'no'),
(2885, '_transient_wc_report_sales_by_date', 'a:8:{s:32:\"d765ea296ec44fb14c7953ac953e58cd\";a:0:{}s:32:\"3c92208c1370d917856b0af119039b0f\";a:0:{}s:32:\"91050414db28c35d49c32c1785d4ea43\";a:0:{}s:32:\"857d257a55f878c1e920a833a7168927\";N;s:32:\"fc76c61dc7c40d9ee70d352696a02aa4\";a:0:{}s:32:\"398cec29ab48e1c6aa8b468f599f7d70\";a:0:{}s:32:\"047837cba9b7979044eaf0c568ff0671\";a:0:{}s:32:\"9eefb5e22d4e8cbcd9685221d77be7ab\";a:0:{}}', 'no'),
(2886, '_transient_timeout_wc_admin_report', '1570582229', 'no'),
(2887, '_transient_wc_admin_report', 'a:1:{s:32:\"a58d6ae1e2bbced71be1da1e721d1101\";a:0:{}}', 'no'),
(2888, '_transient_timeout_dash_v2_a5a61dcab273495c31cd79aafebbdc74', '1570539056', 'no'),
(2889, '_transient_dash_v2_a5a61dcab273495c31cd79aafebbdc74', '<div class=\"rss-widget\"><p><strong>Lỗi RSS:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10001 milliseconds with 0 out of 0 bytes received</p></div><div class=\"rss-widget\"><p><strong>Lỗi RSS:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10000 milliseconds with 97993 bytes received</p></div>', 'no'),
(3020, '_transient_timeout_wc_related_108', '1570595208', 'no'),
(3021, '_transient_wc_related_108', 'a:1:{s:51:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=108\";a:14:{i:0;s:2:\"15\";i:1;s:2:\"75\";i:2;s:2:\"78\";i:3;s:2:\"79\";i:4;s:2:\"82\";i:5;s:3:\"104\";i:6;s:3:\"106\";i:7;s:3:\"110\";i:8;s:3:\"112\";i:9;s:3:\"114\";i:10;s:3:\"116\";i:11;s:3:\"120\";i:12;s:3:\"122\";i:13;s:2:\"80\";}}', 'no'),
(3025, '_transient_timeout_wc_admin_unsnooze_admin_notes_checked', '1570517428', 'no'),
(3026, '_transient_wc_admin_unsnooze_admin_notes_checked', 'yes', 'no'),
(3029, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(3030, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', 'woocommerce-placeholder.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 10, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570089436;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(6, 11, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570094912;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(7, 12, '_action_manager_schedule', 'O:30:\"ActionScheduler_SimpleSchedule\":1:{s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1570091798;}'),
(8, 13, '_edit_last', '1'),
(9, 13, '_edit_lock', '1570092305:1'),
(10, 14, '_wp_attached_file', '2019/10/3.png'),
(11, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:747;s:6:\"height\";i:616;s:4:\"file\";s:13:\"2019/10/3.png\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"3-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"3-600x495.png\";s:5:\"width\";i:600;s:6:\"height\";i:495;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x247.png\";s:5:\"width\";i:300;s:6:\"height\";i:247;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"3-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:13:\"3-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"3-600x495.png\";s:5:\"width\";i:600;s:6:\"height\";i:495;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"3-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 13, '_thumbnail_id', '14'),
(13, 13, 'total_sales', '0'),
(14, 13, '_tax_status', 'taxable'),
(15, 13, '_tax_class', ''),
(16, 13, '_manage_stock', 'no'),
(17, 13, '_backorders', 'no'),
(18, 13, '_sold_individually', 'no'),
(19, 13, '_virtual', 'no'),
(20, 13, '_downloadable', 'no'),
(21, 13, '_download_limit', '-1'),
(22, 13, '_download_expiry', '-1'),
(23, 13, '_stock', NULL),
(24, 13, '_stock_status', 'instock'),
(25, 13, '_wc_average_rating', '0'),
(26, 13, '_wc_review_count', '0'),
(27, 13, '_product_version', '3.7.0'),
(28, 13, '_wp_trash_meta_status', 'publish'),
(29, 13, '_wp_trash_meta_time', '1570092480'),
(30, 13, '_wp_desired_post_slug', 'haha'),
(31, 15, '_edit_last', '1'),
(32, 15, '_edit_lock', '1570161399:1'),
(33, 16, '_wp_attached_file', '2019/10/1.jpg'),
(34, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:1067;s:4:\"file\";s:13:\"2019/10/1.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"1-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"1-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"1-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:13:\"1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"1-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 17, '_wp_attached_file', '2019/10/2.jpg'),
(36, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:215;s:6:\"height\";i:234;s:4:\"file\";s:13:\"2019/10/2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 18, '_wp_attached_file', '2019/10/3.jpg'),
(38, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:809;s:6:\"height\";i:1000;s:4:\"file\";s:13:\"2019/10/3.jpg\";s:5:\"sizes\";a:9:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"3-600x742.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:742;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-243x300.jpg\";s:5:\"width\";i:243;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"3-768x949.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:949;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:13:\"3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"3-600x742.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:742;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39, 19, '_wp_attached_file', '2019/10/4.jpg'),
(40, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2302;s:6:\"height\";i:2342;s:4:\"file\";s:13:\"2019/10/4.jpg\";s:5:\"sizes\";a:11:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"4-600x610.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:610;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-295x300.jpg\";s:5:\"width\";i:295;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"4-768x781.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:781;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"4-1007x1024.jpg\";s:5:\"width\";i:1007;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:15:\"4-1568x1595.jpg\";s:5:\"width\";i:1568;s:6:\"height\";i:1595;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:13:\"4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"4-600x610.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:610;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 20, '_wp_attached_file', '2019/10/5.jpg'),
(42, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:640;s:4:\"file\";s:13:\"2019/10/5.jpg\";s:5:\"sizes\";a:9:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"5-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"5-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"5-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:13:\"5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"5-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 21, '_wp_attached_file', '2019/10/6.jpg'),
(44, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1429;s:6:\"height\";i:1558;s:4:\"file\";s:13:\"2019/10/6.jpg\";s:5:\"sizes\";a:10:{s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"6-600x654.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:654;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"6-275x300.jpg\";s:5:\"width\";i:275;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"6-768x837.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:837;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"6-939x1024.jpg\";s:5:\"width\";i:939;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:13:\"6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"6-600x654.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:654;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 15, '_regular_price', '500.000'),
(47, 15, '_sale_price', '200.000'),
(48, 15, 'total_sales', '0'),
(49, 15, '_tax_status', 'taxable'),
(50, 15, '_tax_class', ''),
(51, 15, '_manage_stock', 'no'),
(52, 15, '_backorders', 'no'),
(53, 15, '_sold_individually', 'no'),
(54, 15, '_virtual', 'no'),
(55, 15, '_downloadable', 'no'),
(56, 15, '_download_limit', '-1'),
(57, 15, '_download_expiry', '-1'),
(58, 15, '_stock', NULL),
(59, 15, '_stock_status', 'instock'),
(60, 15, '_wc_average_rating', '0'),
(61, 15, '_wc_review_count', '0'),
(62, 15, '_product_version', '3.7.0'),
(63, 15, '_price', '200.000'),
(64, 22, '_edit_last', '1'),
(65, 22, '_edit_lock', '1570092852:1'),
(66, 23, '_wp_attached_file', '2019/10/84407582-studio-background.jpg'),
(67, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:881;s:4:\"file\";s:38:\"2019/10/84407582-studio-background.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:38:\"84407582-studio-background-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:38:\"84407582-studio-background-600x407.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:407;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"84407582-studio-background-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"84407582-studio-background-300x203.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:203;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"84407582-studio-background-768x520.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:520;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:39:\"84407582-studio-background-1024x694.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:694;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:38:\"84407582-studio-background-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:38:\"84407582-studio-background-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:38:\"84407582-studio-background-600x407.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:407;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:38:\"84407582-studio-background-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(68, 22, 'total_sales', '0'),
(69, 22, '_tax_status', 'taxable'),
(70, 22, '_tax_class', ''),
(71, 22, '_manage_stock', 'no'),
(72, 22, '_backorders', 'no'),
(73, 22, '_sold_individually', 'no'),
(74, 22, '_virtual', 'no'),
(75, 22, '_downloadable', 'no'),
(76, 22, '_download_limit', '-1'),
(77, 22, '_download_expiry', '-1'),
(78, 22, '_stock', NULL),
(79, 22, '_stock_status', 'instock'),
(80, 22, '_wc_average_rating', '0'),
(81, 22, '_wc_review_count', '0'),
(82, 22, '_product_version', '3.7.0'),
(83, 22, '_thumbnail_id', '23'),
(84, 24, '_edit_lock', '1570457970:1'),
(85, 26, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570120917;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(86, 22, '_wp_trash_meta_status', 'publish'),
(87, 22, '_wp_trash_meta_time', '1570117907'),
(88, 22, '_wp_desired_post_slug', 'test'),
(89, 24, '_wp_page_template', 'template/template-index.php'),
(90, 27, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570124572;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(91, 28, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570148504;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(92, 29, '_menu_item_type', 'post_type'),
(93, 29, '_menu_item_menu_item_parent', '0'),
(94, 29, '_menu_item_object_id', '7'),
(95, 29, '_menu_item_object', 'page'),
(96, 29, '_menu_item_target', ''),
(97, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(98, 29, '_menu_item_xfn', ''),
(99, 29, '_menu_item_url', ''),
(100, 29, '_menu_item_orphaned', '1570146214'),
(101, 30, '_menu_item_type', 'post_type'),
(102, 30, '_menu_item_menu_item_parent', '0'),
(103, 30, '_menu_item_object_id', '8'),
(104, 30, '_menu_item_object', 'page'),
(105, 30, '_menu_item_target', ''),
(106, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(107, 30, '_menu_item_xfn', ''),
(108, 30, '_menu_item_url', ''),
(109, 30, '_menu_item_orphaned', '1570146214'),
(110, 31, '_menu_item_type', 'post_type'),
(111, 31, '_menu_item_menu_item_parent', '0'),
(112, 31, '_menu_item_object_id', '9'),
(113, 31, '_menu_item_object', 'page'),
(114, 31, '_menu_item_target', ''),
(115, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(116, 31, '_menu_item_xfn', ''),
(117, 31, '_menu_item_url', ''),
(118, 31, '_menu_item_orphaned', '1570146214'),
(119, 32, '_menu_item_type', 'post_type'),
(120, 32, '_menu_item_menu_item_parent', '0'),
(121, 32, '_menu_item_object_id', '2'),
(122, 32, '_menu_item_object', 'page'),
(123, 32, '_menu_item_target', ''),
(124, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(125, 32, '_menu_item_xfn', ''),
(126, 32, '_menu_item_url', ''),
(127, 32, '_menu_item_orphaned', '1570146215'),
(128, 33, '_menu_item_type', 'post_type'),
(129, 33, '_menu_item_menu_item_parent', '0'),
(130, 33, '_menu_item_object_id', '6'),
(131, 33, '_menu_item_object', 'page'),
(132, 33, '_menu_item_target', ''),
(133, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(134, 33, '_menu_item_xfn', ''),
(135, 33, '_menu_item_url', ''),
(136, 33, '_menu_item_orphaned', '1570146215'),
(137, 34, '_menu_item_type', 'post_type'),
(138, 34, '_menu_item_menu_item_parent', '0'),
(139, 34, '_menu_item_object_id', '24'),
(140, 34, '_menu_item_object', 'page'),
(141, 34, '_menu_item_target', ''),
(142, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(143, 34, '_menu_item_xfn', ''),
(144, 34, '_menu_item_url', ''),
(145, 34, '_menu_item_orphaned', '1570146215'),
(146, 35, '_menu_item_type', 'post_type'),
(147, 35, '_menu_item_menu_item_parent', '0'),
(148, 35, '_menu_item_object_id', '24'),
(149, 35, '_menu_item_object', 'page'),
(150, 35, '_menu_item_target', ''),
(151, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(152, 35, '_menu_item_xfn', ''),
(153, 35, '_menu_item_url', ''),
(154, 35, '_menu_item_orphaned', '1570146215'),
(155, 37, '_menu_item_type', 'post_type'),
(156, 37, '_menu_item_menu_item_parent', '0'),
(157, 37, '_menu_item_object_id', '7'),
(158, 37, '_menu_item_object', 'page'),
(159, 37, '_menu_item_target', ''),
(160, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(161, 37, '_menu_item_xfn', ''),
(162, 37, '_menu_item_url', ''),
(163, 37, '_menu_item_orphaned', '1570146292'),
(164, 38, '_menu_item_type', 'post_type'),
(165, 38, '_menu_item_menu_item_parent', '0'),
(166, 38, '_menu_item_object_id', '8'),
(167, 38, '_menu_item_object', 'page'),
(168, 38, '_menu_item_target', ''),
(169, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(170, 38, '_menu_item_xfn', ''),
(171, 38, '_menu_item_url', ''),
(172, 38, '_menu_item_orphaned', '1570146292'),
(173, 39, '_menu_item_type', 'post_type'),
(174, 39, '_menu_item_menu_item_parent', '0'),
(175, 39, '_menu_item_object_id', '9'),
(176, 39, '_menu_item_object', 'page'),
(177, 39, '_menu_item_target', ''),
(178, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(179, 39, '_menu_item_xfn', ''),
(180, 39, '_menu_item_url', ''),
(181, 39, '_menu_item_orphaned', '1570146292'),
(182, 40, '_menu_item_type', 'post_type'),
(183, 40, '_menu_item_menu_item_parent', '0'),
(184, 40, '_menu_item_object_id', '2'),
(185, 40, '_menu_item_object', 'page'),
(186, 40, '_menu_item_target', ''),
(187, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(188, 40, '_menu_item_xfn', ''),
(189, 40, '_menu_item_url', ''),
(190, 40, '_menu_item_orphaned', '1570146292'),
(191, 41, '_menu_item_type', 'post_type'),
(192, 41, '_menu_item_menu_item_parent', '0'),
(193, 41, '_menu_item_object_id', '6'),
(194, 41, '_menu_item_object', 'page'),
(195, 41, '_menu_item_target', ''),
(196, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(197, 41, '_menu_item_xfn', ''),
(198, 41, '_menu_item_url', ''),
(199, 41, '_menu_item_orphaned', '1570146292'),
(200, 42, '_menu_item_type', 'post_type'),
(201, 42, '_menu_item_menu_item_parent', '0'),
(202, 42, '_menu_item_object_id', '24'),
(203, 42, '_menu_item_object', 'page'),
(204, 42, '_menu_item_target', ''),
(205, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(206, 42, '_menu_item_xfn', ''),
(207, 42, '_menu_item_url', ''),
(208, 42, '_menu_item_orphaned', '1570146292'),
(209, 43, '_menu_item_type', 'post_type'),
(210, 43, '_menu_item_menu_item_parent', '0'),
(211, 43, '_menu_item_object_id', '24'),
(212, 43, '_menu_item_object', 'page'),
(213, 43, '_menu_item_target', ''),
(214, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(215, 43, '_menu_item_xfn', ''),
(216, 43, '_menu_item_url', ''),
(217, 43, '_menu_item_orphaned', '1570146292'),
(218, 44, '_menu_item_type', 'post_type'),
(219, 44, '_menu_item_menu_item_parent', '0'),
(220, 44, '_menu_item_object_id', '7'),
(221, 44, '_menu_item_object', 'page'),
(222, 44, '_menu_item_target', ''),
(223, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(224, 44, '_menu_item_xfn', ''),
(225, 44, '_menu_item_url', ''),
(226, 44, '_menu_item_orphaned', '1570146388'),
(227, 45, '_menu_item_type', 'post_type'),
(228, 45, '_menu_item_menu_item_parent', '0'),
(229, 45, '_menu_item_object_id', '8'),
(230, 45, '_menu_item_object', 'page'),
(231, 45, '_menu_item_target', ''),
(232, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(233, 45, '_menu_item_xfn', ''),
(234, 45, '_menu_item_url', ''),
(235, 45, '_menu_item_orphaned', '1570146388'),
(236, 46, '_menu_item_type', 'post_type'),
(237, 46, '_menu_item_menu_item_parent', '0'),
(238, 46, '_menu_item_object_id', '9'),
(239, 46, '_menu_item_object', 'page'),
(240, 46, '_menu_item_target', ''),
(241, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(242, 46, '_menu_item_xfn', ''),
(243, 46, '_menu_item_url', ''),
(244, 46, '_menu_item_orphaned', '1570146388'),
(245, 47, '_menu_item_type', 'post_type'),
(246, 47, '_menu_item_menu_item_parent', '0'),
(247, 47, '_menu_item_object_id', '2'),
(248, 47, '_menu_item_object', 'page'),
(249, 47, '_menu_item_target', ''),
(250, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(251, 47, '_menu_item_xfn', ''),
(252, 47, '_menu_item_url', ''),
(253, 47, '_menu_item_orphaned', '1570146388'),
(254, 48, '_menu_item_type', 'post_type'),
(255, 48, '_menu_item_menu_item_parent', '0'),
(256, 48, '_menu_item_object_id', '6'),
(257, 48, '_menu_item_object', 'page'),
(258, 48, '_menu_item_target', ''),
(259, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(260, 48, '_menu_item_xfn', ''),
(261, 48, '_menu_item_url', ''),
(262, 48, '_menu_item_orphaned', '1570146388'),
(263, 49, '_menu_item_type', 'post_type'),
(264, 49, '_menu_item_menu_item_parent', '0'),
(265, 49, '_menu_item_object_id', '24'),
(266, 49, '_menu_item_object', 'page'),
(267, 49, '_menu_item_target', ''),
(268, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(269, 49, '_menu_item_xfn', ''),
(270, 49, '_menu_item_url', ''),
(271, 49, '_menu_item_orphaned', '1570146388'),
(272, 50, '_menu_item_type', 'post_type'),
(273, 50, '_menu_item_menu_item_parent', '0'),
(274, 50, '_menu_item_object_id', '24'),
(275, 50, '_menu_item_object', 'page'),
(276, 50, '_menu_item_target', ''),
(277, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(278, 50, '_menu_item_xfn', ''),
(279, 50, '_menu_item_url', ''),
(280, 50, '_menu_item_orphaned', '1570146388'),
(281, 51, '_menu_item_type', 'post_type'),
(282, 51, '_menu_item_menu_item_parent', '0'),
(283, 51, '_menu_item_object_id', '7'),
(284, 51, '_menu_item_object', 'page'),
(285, 51, '_menu_item_target', ''),
(286, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(287, 51, '_menu_item_xfn', ''),
(288, 51, '_menu_item_url', ''),
(289, 51, '_menu_item_orphaned', '1570146417'),
(290, 52, '_menu_item_type', 'post_type'),
(291, 52, '_menu_item_menu_item_parent', '0'),
(292, 52, '_menu_item_object_id', '8'),
(293, 52, '_menu_item_object', 'page'),
(294, 52, '_menu_item_target', ''),
(295, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(296, 52, '_menu_item_xfn', ''),
(297, 52, '_menu_item_url', ''),
(298, 52, '_menu_item_orphaned', '1570146417'),
(299, 53, '_menu_item_type', 'post_type'),
(300, 53, '_menu_item_menu_item_parent', '0'),
(301, 53, '_menu_item_object_id', '9'),
(302, 53, '_menu_item_object', 'page'),
(303, 53, '_menu_item_target', ''),
(304, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(305, 53, '_menu_item_xfn', ''),
(306, 53, '_menu_item_url', ''),
(307, 53, '_menu_item_orphaned', '1570146417'),
(308, 54, '_menu_item_type', 'post_type'),
(309, 54, '_menu_item_menu_item_parent', '0'),
(310, 54, '_menu_item_object_id', '2'),
(311, 54, '_menu_item_object', 'page'),
(312, 54, '_menu_item_target', ''),
(313, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(314, 54, '_menu_item_xfn', ''),
(315, 54, '_menu_item_url', ''),
(316, 54, '_menu_item_orphaned', '1570146417'),
(317, 55, '_menu_item_type', 'post_type'),
(318, 55, '_menu_item_menu_item_parent', '0'),
(319, 55, '_menu_item_object_id', '6'),
(320, 55, '_menu_item_object', 'page'),
(321, 55, '_menu_item_target', ''),
(322, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(323, 55, '_menu_item_xfn', ''),
(324, 55, '_menu_item_url', ''),
(325, 55, '_menu_item_orphaned', '1570146417'),
(326, 56, '_menu_item_type', 'post_type'),
(327, 56, '_menu_item_menu_item_parent', '0'),
(328, 56, '_menu_item_object_id', '24'),
(329, 56, '_menu_item_object', 'page'),
(330, 56, '_menu_item_target', ''),
(331, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(332, 56, '_menu_item_xfn', ''),
(333, 56, '_menu_item_url', ''),
(334, 56, '_menu_item_orphaned', '1570146417'),
(335, 57, '_menu_item_type', 'post_type'),
(336, 57, '_menu_item_menu_item_parent', '0'),
(337, 57, '_menu_item_object_id', '24'),
(338, 57, '_menu_item_object', 'page'),
(339, 57, '_menu_item_target', ''),
(340, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(341, 57, '_menu_item_xfn', ''),
(342, 57, '_menu_item_url', ''),
(343, 57, '_menu_item_orphaned', '1570146417'),
(434, 68, '_menu_item_type', 'taxonomy'),
(435, 68, '_menu_item_menu_item_parent', '0'),
(436, 68, '_menu_item_object_id', '19'),
(437, 68, '_menu_item_object', 'product_cat'),
(438, 68, '_menu_item_target', ''),
(439, 68, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(440, 68, '_menu_item_xfn', ''),
(441, 68, '_menu_item_url', ''),
(442, 68, '_menu_item_orphaned', '1570146617'),
(443, 70, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570152193;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(444, 72, '_wp_attached_file', '2019/10/1-1.jpg'),
(445, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:1067;s:4:\"file\";s:15:\"2019/10/1-1.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:15:\"1-1-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-1-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"1-1-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"1-1-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:15:\"1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"1-1-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(446, 15, '_thumbnail_id', '72'),
(447, 73, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570155901;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(448, 74, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570159575;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(449, 75, '_edit_last', '1'),
(450, 75, '_edit_lock', '1570161273:1'),
(451, 75, '_thumbnail_id', '21'),
(452, 75, 'total_sales', '0'),
(453, 75, '_tax_status', 'taxable'),
(454, 75, '_tax_class', ''),
(455, 75, '_manage_stock', 'no'),
(456, 75, '_backorders', 'no'),
(457, 75, '_sold_individually', 'no'),
(458, 75, '_virtual', 'no'),
(459, 75, '_downloadable', 'no'),
(460, 75, '_download_limit', '-1'),
(461, 75, '_download_expiry', '-1'),
(462, 75, '_stock', NULL),
(463, 75, '_stock_status', 'instock'),
(464, 75, '_wc_average_rating', '0'),
(465, 75, '_wc_review_count', '0'),
(466, 75, '_product_version', '3.7.0'),
(467, 76, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570163193;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(468, 75, '_regular_price', '500.000'),
(469, 75, '_sale_price', '400.000'),
(470, 75, '_price', '400.000'),
(471, 78, '_edit_last', '1'),
(472, 78, '_edit_lock', '1570161252:1'),
(473, 78, '_thumbnail_id', '19'),
(474, 78, '_regular_price', '700.000'),
(475, 78, '_sale_price', '600.000'),
(476, 78, 'total_sales', '0'),
(477, 78, '_tax_status', 'taxable'),
(478, 78, '_tax_class', ''),
(479, 78, '_manage_stock', 'no'),
(480, 78, '_backorders', 'no'),
(481, 78, '_sold_individually', 'no'),
(482, 78, '_virtual', 'no'),
(483, 78, '_downloadable', 'no'),
(484, 78, '_download_limit', '-1'),
(485, 78, '_download_expiry', '-1'),
(486, 78, '_stock', NULL),
(487, 78, '_stock_status', 'instock'),
(488, 78, '_wc_average_rating', '0'),
(489, 78, '_wc_review_count', '0'),
(490, 78, '_product_version', '3.7.0'),
(491, 78, '_price', '600.000'),
(492, 79, '_edit_last', '1'),
(493, 79, '_edit_lock', '1570161232:1'),
(494, 79, '_thumbnail_id', '18'),
(495, 79, '_regular_price', '200000'),
(496, 79, 'total_sales', '0'),
(497, 79, '_tax_status', 'taxable'),
(498, 79, '_tax_class', ''),
(499, 79, '_manage_stock', 'no'),
(500, 79, '_backorders', 'no'),
(501, 79, '_sold_individually', 'no'),
(502, 79, '_virtual', 'no'),
(503, 79, '_downloadable', 'no'),
(504, 79, '_download_limit', '-1'),
(505, 79, '_download_expiry', '-1'),
(506, 79, '_stock', NULL),
(507, 79, '_stock_status', 'instock'),
(508, 79, '_wc_average_rating', '0'),
(509, 79, '_wc_review_count', '0'),
(510, 79, '_product_version', '3.7.0'),
(511, 79, '_price', '200000'),
(512, 80, '_edit_last', '1'),
(513, 80, '_edit_lock', '1570161209:1'),
(514, 80, '_thumbnail_id', '17'),
(515, 80, '_regular_price', '400.000'),
(516, 80, 'total_sales', '0'),
(517, 80, '_tax_status', 'taxable'),
(518, 80, '_tax_class', ''),
(519, 80, '_manage_stock', 'no'),
(520, 80, '_backorders', 'no'),
(521, 80, '_sold_individually', 'no'),
(522, 80, '_virtual', 'no'),
(523, 80, '_downloadable', 'no'),
(524, 80, '_download_limit', '-1'),
(525, 80, '_download_expiry', '-1'),
(526, 80, '_stock', NULL),
(527, 80, '_stock_status', 'instock'),
(528, 80, '_wc_average_rating', '0'),
(529, 80, '_wc_review_count', '0'),
(530, 80, '_product_version', '3.7.0'),
(531, 80, '_price', '400.000'),
(532, 81, '_menu_item_type', 'taxonomy'),
(533, 81, '_menu_item_menu_item_parent', '0'),
(534, 81, '_menu_item_object_id', '25'),
(535, 81, '_menu_item_object', 'product_cat'),
(536, 81, '_menu_item_target', ''),
(537, 81, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(538, 81, '_menu_item_xfn', ''),
(539, 81, '_menu_item_url', ''),
(541, 82, '_edit_last', '1'),
(542, 82, '_edit_lock', '1570188880:1'),
(543, 82, '_thumbnail_id', '20'),
(544, 82, 'total_sales', '0'),
(545, 82, '_tax_status', 'taxable'),
(546, 82, '_tax_class', ''),
(547, 82, '_manage_stock', 'no'),
(548, 82, '_backorders', 'no'),
(549, 82, '_sold_individually', 'no'),
(550, 82, '_virtual', 'no'),
(551, 82, '_downloadable', 'no'),
(552, 82, '_download_limit', '-1'),
(553, 82, '_download_expiry', '-1'),
(554, 82, '_stock', NULL),
(555, 82, '_stock_status', 'instock'),
(556, 82, '_wc_average_rating', '0'),
(557, 82, '_wc_review_count', '0'),
(558, 82, '_product_version', '3.7.0'),
(559, 83, '_edit_last', '1'),
(560, 83, '_edit_lock', '1570161455:1'),
(561, 83, '_regular_price', '300.000'),
(562, 83, '_sale_price', '100.000'),
(563, 83, 'total_sales', '0'),
(564, 83, '_tax_status', 'taxable'),
(565, 83, '_tax_class', ''),
(566, 83, '_manage_stock', 'no'),
(567, 83, '_backorders', 'no'),
(568, 83, '_sold_individually', 'no'),
(569, 83, '_virtual', 'no'),
(570, 83, '_downloadable', 'no'),
(571, 83, '_download_limit', '-1'),
(572, 83, '_download_expiry', '-1'),
(573, 83, '_stock', NULL),
(574, 83, '_stock_status', 'instock'),
(575, 83, '_wc_average_rating', '0'),
(576, 83, '_wc_review_count', '0'),
(577, 83, '_product_version', '3.7.0'),
(578, 83, '_price', '100.000'),
(579, 84, '_wp_attached_file', '2019/10/j1.jpg'),
(580, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:1080;s:4:\"file\";s:14:\"2019/10/j1.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"j1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"j1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"j1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"j1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"j1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"j1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"j1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:14:\"j1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"j1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"j1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(581, 83, '_thumbnail_id', '84'),
(582, 85, '_edit_last', '1'),
(583, 85, '_edit_lock', '1570161502:1'),
(584, 86, '_wp_attached_file', '2019/10/j2.jpg'),
(585, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:640;s:4:\"file\";s:14:\"2019/10/j2.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"j2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"j2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"j2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"j2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"j2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:14:\"j2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"j2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"j2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(586, 85, '_thumbnail_id', '86'),
(587, 85, '_regular_price', '100.000'),
(588, 85, '_sale_price', '50.000'),
(589, 85, 'total_sales', '0'),
(590, 85, '_tax_status', 'taxable'),
(591, 85, '_tax_class', ''),
(592, 85, '_manage_stock', 'no'),
(593, 85, '_backorders', 'no'),
(594, 85, '_sold_individually', 'no'),
(595, 85, '_virtual', 'no'),
(596, 85, '_downloadable', 'no'),
(597, 85, '_download_limit', '-1'),
(598, 85, '_download_expiry', '-1'),
(599, 85, '_stock', NULL),
(600, 85, '_stock_status', 'instock'),
(601, 85, '_wc_average_rating', '0'),
(602, 85, '_wc_review_count', '0'),
(603, 85, '_product_version', '3.7.0'),
(604, 85, '_price', '50.000'),
(605, 87, '_edit_last', '1'),
(606, 87, '_edit_lock', '1570161546:1'),
(607, 88, '_wp_attached_file', '2019/10/j4.jpg'),
(608, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:1080;s:4:\"file\";s:14:\"2019/10/j4.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"j4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"j4-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"j4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"j4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"j4-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"j4-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"j4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:14:\"j4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"j4-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"j4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(609, 87, '_thumbnail_id', '88'),
(610, 87, '_regular_price', '600.000'),
(611, 87, '_sale_price', '500.000'),
(612, 87, 'total_sales', '0'),
(613, 87, '_tax_status', 'taxable'),
(614, 87, '_tax_class', ''),
(615, 87, '_manage_stock', 'no'),
(616, 87, '_backorders', 'no'),
(617, 87, '_sold_individually', 'no'),
(618, 87, '_virtual', 'no'),
(619, 87, '_downloadable', 'no'),
(620, 87, '_download_limit', '-1'),
(621, 87, '_download_expiry', '-1'),
(622, 87, '_stock', NULL),
(623, 87, '_stock_status', 'instock'),
(624, 87, '_wc_average_rating', '0'),
(625, 87, '_wc_review_count', '0'),
(626, 87, '_product_version', '3.7.0'),
(627, 87, '_price', '500.000'),
(628, 89, '_edit_last', '1'),
(629, 89, '_edit_lock', '1570161786:1'),
(630, 90, '_wp_attached_file', '2019/10/j4-1.jpg'),
(631, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:1080;s:4:\"file\";s:16:\"2019/10/j4-1.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"j4-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"j4-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"j4-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"j4-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"j4-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"j4-1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"j4-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:16:\"j4-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:16:\"j4-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"j4-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(632, 89, '_thumbnail_id', '90'),
(633, 89, '_regular_price', '400.000'),
(634, 89, '_sale_price', '300.000'),
(635, 89, 'total_sales', '0'),
(636, 89, '_tax_status', 'taxable'),
(637, 89, '_tax_class', ''),
(638, 89, '_manage_stock', 'no'),
(639, 89, '_backorders', 'no'),
(640, 89, '_sold_individually', 'no'),
(641, 89, '_virtual', 'no'),
(642, 89, '_downloadable', 'no'),
(643, 89, '_download_limit', '-1'),
(644, 89, '_download_expiry', '-1'),
(645, 89, '_stock', NULL),
(646, 89, '_stock_status', 'instock'),
(647, 89, '_wc_average_rating', '0'),
(648, 89, '_wc_review_count', '0'),
(649, 89, '_product_version', '3.7.0'),
(650, 89, '_price', '300.000'),
(651, 93, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570166799;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(652, 6, '_edit_lock', '1570441558:1'),
(653, 96, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570171163;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(654, 98, '_menu_item_type', 'post_type'),
(655, 98, '_menu_item_menu_item_parent', '0'),
(656, 98, '_menu_item_object_id', '24'),
(657, 98, '_menu_item_object', 'page'),
(658, 98, '_menu_item_target', ''),
(659, 98, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(660, 98, '_menu_item_xfn', ''),
(661, 98, '_menu_item_url', ''),
(663, 99, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570174787;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(664, 100, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570179354;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(665, 101, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570183001;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(666, 102, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570186690;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(667, 103, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570191243;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(668, 104, '_edit_last', '1'),
(669, 104, '_edit_lock', '1570188415:1'),
(670, 105, '_wp_attached_file', '2019/10/v7.jpg'),
(671, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:1000;s:4:\"file\";s:14:\"2019/10/v7.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"v7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"v7-600x857.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:857;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"v7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"v7-210x300.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"v7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:14:\"v7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"v7-600x857.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:857;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"v7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(672, 104, '_thumbnail_id', '105'),
(673, 104, '_regular_price', '400.000'),
(674, 104, '_sale_price', '100.000'),
(675, 104, 'total_sales', '0'),
(676, 104, '_tax_status', 'taxable'),
(677, 104, '_tax_class', ''),
(678, 104, '_manage_stock', 'no'),
(679, 104, '_backorders', 'no'),
(680, 104, '_sold_individually', 'no'),
(681, 104, '_virtual', 'no'),
(682, 104, '_downloadable', 'no'),
(683, 104, '_download_limit', '-1'),
(684, 104, '_download_expiry', '-1'),
(685, 104, '_stock', NULL),
(686, 104, '_stock_status', 'instock'),
(687, 104, '_wc_average_rating', '0'),
(688, 104, '_wc_review_count', '0'),
(689, 104, '_product_version', '3.7.0'),
(690, 104, '_price', '100.000'),
(691, 106, '_edit_last', '1'),
(692, 106, '_edit_lock', '1570188455:1'),
(693, 107, '_wp_attached_file', '2019/10/v8.jpg'),
(694, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:640;s:4:\"file\";s:14:\"2019/10/v8.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"v8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"v8-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"v8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"v8-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"v8-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"v8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:14:\"v8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"v8-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"v8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(695, 106, '_thumbnail_id', '107'),
(696, 106, '_regular_price', '700.000'),
(697, 106, '_sale_price', '300.000'),
(698, 106, 'total_sales', '0'),
(699, 106, '_tax_status', 'taxable'),
(700, 106, '_tax_class', ''),
(701, 106, '_manage_stock', 'no'),
(702, 106, '_backorders', 'no'),
(703, 106, '_sold_individually', 'no'),
(704, 106, '_virtual', 'no'),
(705, 106, '_downloadable', 'no'),
(706, 106, '_download_limit', '-1'),
(707, 106, '_download_expiry', '-1'),
(708, 106, '_stock', NULL),
(709, 106, '_stock_status', 'instock'),
(710, 106, '_wc_average_rating', '0'),
(711, 106, '_wc_review_count', '0'),
(712, 106, '_product_version', '3.7.0'),
(713, 106, '_price', '300.000'),
(714, 108, '_edit_last', '1'),
(715, 108, '_edit_lock', '1570188860:1'),
(716, 109, '_wp_attached_file', '2019/10/v9.jpg'),
(717, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:2400;s:4:\"file\";s:14:\"2019/10/v9.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"v9-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"v9-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"v9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"v9-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"v9-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"v9-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"v9-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:14:\"v9-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"v9-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"v9-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(718, 108, '_thumbnail_id', '109'),
(719, 108, 'total_sales', '0'),
(720, 108, '_tax_status', 'taxable'),
(721, 108, '_tax_class', ''),
(722, 108, '_manage_stock', 'no'),
(723, 108, '_backorders', 'no'),
(724, 108, '_sold_individually', 'no'),
(725, 108, '_virtual', 'no'),
(726, 108, '_downloadable', 'no'),
(727, 108, '_download_limit', '-1'),
(728, 108, '_download_expiry', '-1'),
(729, 108, '_stock', NULL),
(730, 108, '_stock_status', 'instock'),
(731, 108, '_wc_average_rating', '0'),
(732, 108, '_wc_review_count', '0'),
(733, 108, '_product_version', '3.7.0'),
(734, 110, '_edit_last', '1'),
(735, 110, '_edit_lock', '1570188532:1'),
(736, 111, '_wp_attached_file', '2019/10/v10.jpg'),
(737, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2019/10/v10.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"v10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:15:\"v10-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"v10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"v10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"v10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:15:\"v10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"v10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(738, 110, '_thumbnail_id', '111'),
(739, 110, '_regular_price', '200.000'),
(740, 110, '_sale_price', '50.000'),
(741, 110, 'total_sales', '0'),
(742, 110, '_tax_status', 'taxable'),
(743, 110, '_tax_class', ''),
(744, 110, '_manage_stock', 'no'),
(745, 110, '_backorders', 'no'),
(746, 110, '_sold_individually', 'no'),
(747, 110, '_virtual', 'no'),
(748, 110, '_downloadable', 'no'),
(749, 110, '_download_limit', '-1'),
(750, 110, '_download_expiry', '-1'),
(751, 110, '_stock', NULL),
(752, 110, '_stock_status', 'instock'),
(753, 110, '_wc_average_rating', '0'),
(754, 110, '_wc_review_count', '0'),
(755, 110, '_product_version', '3.7.0'),
(756, 110, '_price', '50.000'),
(757, 112, '_edit_last', '1'),
(758, 112, '_edit_lock', '1570188674:1'),
(759, 113, '_wp_attached_file', '2019/10/v14.jpg'),
(760, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:15:\"2019/10/v14.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"v14-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:15:\"v14-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"v14-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"v14-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"v14-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"v14-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:15:\"v14-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"v14-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"v14-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(761, 112, '_thumbnail_id', '113'),
(762, 112, '_regular_price', '500.000'),
(763, 112, 'total_sales', '0'),
(764, 112, '_tax_status', 'taxable'),
(765, 112, '_tax_class', ''),
(766, 112, '_manage_stock', 'no'),
(767, 112, '_backorders', 'no'),
(768, 112, '_sold_individually', 'no'),
(769, 112, '_virtual', 'no'),
(770, 112, '_downloadable', 'no'),
(771, 112, '_download_limit', '-1'),
(772, 112, '_download_expiry', '-1'),
(773, 112, '_stock', NULL),
(774, 112, '_stock_status', 'instock'),
(775, 112, '_wc_average_rating', '0'),
(776, 112, '_wc_review_count', '0'),
(777, 112, '_product_version', '3.7.0'),
(778, 112, '_price', '500.000'),
(779, 114, '_edit_last', '1'),
(780, 114, '_edit_lock', '1570188735:1'),
(781, 115, '_wp_attached_file', '2019/10/v15.png'),
(782, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:1200;s:4:\"file\";s:15:\"2019/10/v15.png\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"v15-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:15:\"v15-600x900.png\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"v15-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"v15-200x300.png\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"v15-768x1152.png\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"v15-683x1024.png\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"v15-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:15:\"v15-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"v15-600x900.png\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"v15-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(783, 114, '_thumbnail_id', '115'),
(784, 114, '_regular_price', '100.000'),
(785, 114, 'total_sales', '0'),
(786, 114, '_tax_status', 'taxable'),
(787, 114, '_tax_class', ''),
(788, 114, '_manage_stock', 'no'),
(789, 114, '_backorders', 'no'),
(790, 114, '_sold_individually', 'no'),
(791, 114, '_virtual', 'no'),
(792, 114, '_downloadable', 'no'),
(793, 114, '_download_limit', '-1'),
(794, 114, '_download_expiry', '-1'),
(795, 114, '_stock', NULL),
(796, 114, '_stock_status', 'instock'),
(797, 114, '_wc_average_rating', '0'),
(798, 114, '_wc_review_count', '0'),
(799, 114, '_product_version', '3.7.0'),
(800, 114, '_price', '100.000'),
(801, 116, '_edit_last', '1'),
(802, 116, '_edit_lock', '1570188841:1'),
(803, 117, '_wp_attached_file', '2019/10/v16.jpg'),
(804, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:199;s:6:\"height\";i:253;s:4:\"file\";s:15:\"2019/10/v16.jpg\";s:5:\"sizes\";a:4:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"v16-199x250.jpg\";s:5:\"width\";i:199;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"v16-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"v16-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"v16-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(805, 116, '_thumbnail_id', '117'),
(806, 116, 'total_sales', '0'),
(807, 116, '_tax_status', 'taxable'),
(808, 116, '_tax_class', ''),
(809, 116, '_manage_stock', 'no'),
(810, 116, '_backorders', 'no'),
(811, 116, '_sold_individually', 'no'),
(812, 116, '_virtual', 'no'),
(813, 116, '_downloadable', 'no'),
(814, 116, '_download_limit', '-1'),
(815, 116, '_download_expiry', '-1'),
(816, 116, '_stock', NULL),
(817, 116, '_stock_status', 'instock'),
(818, 116, '_wc_average_rating', '0'),
(819, 116, '_wc_review_count', '0'),
(820, 116, '_product_version', '3.7.0'),
(821, 116, '_regular_price', '300.000'),
(822, 116, '_price', '300.000'),
(823, 108, '_regular_price', '700.000'),
(824, 108, '_sale_price', '200.000'),
(825, 108, '_price', '200.000'),
(826, 82, '_regular_price', '400.000'),
(827, 82, '_sale_price', '300.000'),
(828, 82, '_price', '300.000'),
(829, 118, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570194880;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(830, 119, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570198505;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(831, 120, '_edit_last', '1'),
(832, 120, '_edit_lock', '1570197447:1'),
(833, 121, '_wp_attached_file', '2019/10/v16-1.jpg'),
(834, 121, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:640;s:4:\"file\";s:17:\"2019/10/v16-1.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"v16-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"v16-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"v16-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"v16-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"v16-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"v16-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"v16-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"v16-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(835, 120, '_thumbnail_id', '121'),
(836, 120, '_regular_price', '700.000'),
(837, 120, '_sale_price', '300.000'),
(838, 120, 'total_sales', '0'),
(839, 120, '_tax_status', 'taxable'),
(840, 120, '_tax_class', ''),
(841, 120, '_manage_stock', 'no'),
(842, 120, '_backorders', 'no'),
(843, 120, '_sold_individually', 'no'),
(844, 120, '_virtual', 'no'),
(845, 120, '_downloadable', 'no'),
(846, 120, '_download_limit', '-1'),
(847, 120, '_download_expiry', '-1'),
(848, 120, '_stock', NULL),
(849, 120, '_stock_status', 'instock'),
(850, 120, '_wc_average_rating', '0'),
(851, 120, '_wc_review_count', '0'),
(852, 120, '_product_version', '3.7.0'),
(853, 120, '_price', '300.000'),
(854, 122, '_edit_last', '1'),
(855, 122, '_edit_lock', '1570197535:1'),
(856, 123, '_wp_attached_file', '2019/10/v17.jpg'),
(857, 123, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:15:\"2019/10/v17.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"v17-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"v17-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"v17-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(858, 122, '_thumbnail_id', '123'),
(859, 122, '_regular_price', '300.000'),
(860, 122, 'total_sales', '0'),
(861, 122, '_tax_status', 'taxable'),
(862, 122, '_tax_class', ''),
(863, 122, '_manage_stock', 'no'),
(864, 122, '_backorders', 'no'),
(865, 122, '_sold_individually', 'no'),
(866, 122, '_virtual', 'no'),
(867, 122, '_downloadable', 'no'),
(868, 122, '_download_limit', '-1'),
(869, 122, '_download_expiry', '-1'),
(870, 122, '_stock', NULL),
(871, 122, '_stock_status', 'instock'),
(872, 122, '_wc_average_rating', '0'),
(873, 122, '_wc_review_count', '0'),
(874, 122, '_product_version', '3.7.0'),
(875, 122, '_price', '300.000'),
(876, 124, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570202185;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(877, 125, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570205787;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(878, 126, '_menu_item_type', 'taxonomy'),
(879, 126, '_menu_item_menu_item_parent', '81'),
(880, 126, '_menu_item_object_id', '30'),
(881, 126, '_menu_item_object', 'product_cat'),
(882, 126, '_menu_item_target', ''),
(883, 126, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(884, 126, '_menu_item_xfn', ''),
(885, 126, '_menu_item_url', ''),
(887, 127, '_menu_item_type', 'taxonomy'),
(888, 127, '_menu_item_menu_item_parent', '81'),
(889, 127, '_menu_item_object_id', '28'),
(890, 127, '_menu_item_object', 'product_cat'),
(891, 127, '_menu_item_target', ''),
(892, 127, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(893, 127, '_menu_item_xfn', ''),
(894, 127, '_menu_item_url', ''),
(896, 128, '_menu_item_type', 'taxonomy'),
(897, 128, '_menu_item_menu_item_parent', '81'),
(898, 128, '_menu_item_object_id', '29'),
(899, 128, '_menu_item_object', 'product_cat'),
(900, 128, '_menu_item_target', ''),
(901, 128, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(902, 128, '_menu_item_xfn', ''),
(903, 128, '_menu_item_url', ''),
(905, 129, '_menu_item_type', 'taxonomy'),
(906, 129, '_menu_item_menu_item_parent', '81'),
(907, 129, '_menu_item_object_id', '26'),
(908, 129, '_menu_item_object', 'product_cat'),
(909, 129, '_menu_item_target', ''),
(910, 129, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(911, 129, '_menu_item_xfn', ''),
(912, 129, '_menu_item_url', ''),
(914, 132, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570210148;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(915, 133, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570239748;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(916, 135, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570243372;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(917, 136, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570250980;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(918, 137, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570255177;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(919, 138, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570258809;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(920, 139, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570263987;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(930, 142, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570267703;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(931, 143, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570271309;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(932, 144, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570274955;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(933, 145, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570280110;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(934, 146, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570283823;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(935, 147, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570287491;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(936, 148, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570291166;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(937, 149, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570294814;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(938, 150, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570324575;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(939, 151, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570328186;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(940, 152, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570331811;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(941, 153, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570336185;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(942, 154, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570341153;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(943, 155, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570365026;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(944, 156, '_edit_lock', '1570361379:1'),
(945, 158, '_edit_lock', '1570361526:1'),
(946, 159, '_edit_lock', '1570361428:1'),
(947, 161, '_menu_item_type', 'post_type'),
(948, 161, '_menu_item_menu_item_parent', '0'),
(949, 161, '_menu_item_object_id', '159'),
(950, 161, '_menu_item_object', 'page'),
(951, 161, '_menu_item_target', ''),
(952, 161, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(953, 161, '_menu_item_xfn', ''),
(954, 161, '_menu_item_url', ''),
(956, 162, '_menu_item_type', 'post_type'),
(957, 162, '_menu_item_menu_item_parent', '0'),
(958, 162, '_menu_item_object_id', '156'),
(959, 162, '_menu_item_object', 'page'),
(960, 162, '_menu_item_target', ''),
(961, 162, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(962, 162, '_menu_item_xfn', ''),
(963, 162, '_menu_item_url', ''),
(965, 163, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570368712;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(966, 164, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570372335;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(967, 166, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570377220;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(968, 167, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570415959;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(969, 168, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570419871;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(970, 169, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570438861;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(971, 170, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570443828;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(972, 171, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570447504;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(973, 172, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570451115;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(974, 173, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570454726;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(975, 174, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570458344;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(976, 175, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570461964;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(977, 176, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570465582;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(978, 177, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570469195;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(979, 178, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570472805;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(980, 179, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570492653;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(981, 180, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570496724;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(982, 181, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570500334;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(983, 182, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570504037;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(984, 183, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570507963;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(985, 184, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570511591;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(986, 185, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570513828;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(987, 186, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570517428;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(988, 187, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1570517428;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-10-03 07:09:46', '2019-10-03 07:09:46', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-10-03 07:09:46', '2019-10-03 07:09:46', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=1', 0, 'post', '', 1),
(2, 1, '2019-10-03 07:09:46', '2019-10-03 07:09:46', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:82/nhomK-woocommerce/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-10-03 07:09:46', '2019-10-03 07:09:46', '', 0, 'http://localhost:82/nhomK-woocommerce/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-10-03 07:09:46', '2019-10-03 07:09:46', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:82/nhomK-woocommerce.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-10-03 07:09:46', '2019-10-03 07:09:46', '', 0, 'http://localhost:82/nhomK-woocommerce/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-10-03 07:10:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-10-03 07:10:31', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=4', 0, 'post', '', 0),
(5, 1, '2019-10-03 07:27:07', '2019-10-03 07:27:07', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2019-10-03 07:27:07', '2019-10-03 07:27:07', '', 0, 'http://localhost:82/nhomK-woocommerce/wp-content/uploads/2019/10/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2019-10-03 07:42:06', '2019-10-03 07:42:06', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Sản Phẩm Mới&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[products orderby=\"date\" order=\"desc\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p>Đang giảm giá&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[sale_products per_page=\"12\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p>Hiển thị theo tên Sản Phẩm</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[product_category category=\"slug-danh-muc-san-pham\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2019-10-04 04:27:15', '2019-10-04 04:27:15', '', 0, 'http://localhost:82/nhomK-woocommerce/shop/', 0, 'page', '', 0),
(7, 1, '2019-10-03 07:42:06', '2019-10-03 07:42:06', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2019-10-03 07:42:06', '2019-10-03 07:42:06', '', 0, 'http://localhost:82/nhomK-woocommerce/cart/', 0, 'page', '', 0),
(8, 1, '2019-10-03 07:42:06', '2019-10-03 07:42:06', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2019-10-03 07:42:06', '2019-10-03 07:42:06', '', 0, 'http://localhost:82/nhomK-woocommerce/checkout/', 0, 'page', '', 0),
(9, 1, '2019-10-03 07:42:06', '2019-10-03 07:42:06', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2019-10-03 07:42:06', '2019-10-03 07:42:06', '', 0, 'http://localhost:82/nhomK-woocommerce/my-account/', 0, 'page', '', 0),
(10, 0, '2019-10-03 07:57:16', '2019-10-03 07:57:16', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d95b130252a61.37970745-4PSLl08pqvRle98KsvgGPM6OeidnAgXe', '', '', '2019-10-03 08:28:32', '2019-10-03 08:28:32', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=10', 0, 'scheduled-action', '', 3),
(11, 0, '2019-10-03 09:28:32', '2019-10-03 09:28:32', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9616c5b3aee7.66955239-lRRsCidrZYlrlrnr6whYJkGAQJxFjG4p', '', '', '2019-10-03 15:41:57', '2019-10-03 15:41:57', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=11', 0, 'scheduled-action', '', 3),
(12, 0, '2019-10-03 08:36:38', '2019-10-03 08:36:38', '[]', 'woocommerce_update_marketplace_suggestions', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d95b3573d0d48.40670975-Iu63tS2HuWAA68fY9UCtoyYMt1OM0arP', '', '', '2019-10-03 08:37:43', '2019-10-03 08:37:43', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=12', 0, 'scheduled-action', '', 3),
(13, 1, '2019-10-03 08:38:32', '2019-10-03 08:38:32', '', 'HAHA', 'BDBDBDGBDGB', 'trash', 'open', 'closed', '', 'haha__trashed', '', '', '2019-10-03 08:48:00', '2019-10-03 08:48:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=product&#038;p=13', 0, 'product', '', 0),
(14, 1, '2019-10-03 08:38:08', '2019-10-03 08:38:08', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2019-10-03 08:38:08', '2019-10-03 08:38:08', '', 13, 'http://localhost:82/nhomK-woocommerce/wp-content/uploads/2019/10/3.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2019-10-03 08:53:48', '2019-10-03 08:53:48', '', 'Vest 1', 'vest', 'publish', 'open', 'closed', '', 'vest-1', '', '', '2019-10-04 03:57:37', '2019-10-04 03:57:37', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=product&#038;p=15', 0, 'product', '', 0),
(16, 1, '2019-10-03 08:52:26', '2019-10-03 08:52:26', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2019-10-03 08:52:26', '2019-10-03 08:52:26', '', 15, 'http://localhost:82/nhomK-woocommerce/wp-content/uploads/2019/10/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2019-10-03 08:52:36', '2019-10-03 08:52:36', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2019-10-03 08:52:36', '2019-10-03 08:52:36', '', 15, 'http://localhost:82/nhomK-woocommerce/wp-content/uploads/2019/10/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2019-10-03 08:52:37', '2019-10-03 08:52:37', '', '3', '', 'inherit', 'open', 'closed', '', '3-2', '', '', '2019-10-03 08:52:37', '2019-10-03 08:52:37', '', 15, 'http://localhost:82/nhomK-woocommerce/wp-content/uploads/2019/10/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2019-10-03 08:52:38', '2019-10-03 08:52:38', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2019-10-03 08:52:38', '2019-10-03 08:52:38', '', 15, 'http://localhost:82/nhomK-woocommerce/wp-content/uploads/2019/10/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2019-10-03 08:52:42', '2019-10-03 08:52:42', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2019-10-03 08:52:42', '2019-10-03 08:52:42', '', 15, 'http://localhost:82/nhomK-woocommerce/wp-content/uploads/2019/10/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2019-10-03 08:52:43', '2019-10-03 08:52:43', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2019-10-03 08:52:43', '2019-10-03 08:52:43', '', 15, 'http://localhost:82/nhomK-woocommerce/wp-content/uploads/2019/10/6.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2019-10-03 08:55:44', '2019-10-03 08:55:44', '<img class=\"alignnone size-medium wp-image-23\" src=\"http://localhost:82/nhomK-woocommerce/wp-content/uploads/2019/10/84407582-studio-background-300x203.jpg\" alt=\"\" width=\"300\" height=\"203\" />', 'test', '', 'trash', 'open', 'closed', '', 'test__trashed', '', '', '2019-10-03 15:51:47', '2019-10-03 15:51:47', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=product&#038;p=22', 0, 'product', '', 0),
(23, 1, '2019-10-03 08:55:32', '2019-10-03 08:55:32', '', '84407582-studio-background', '', 'inherit', 'open', 'closed', '', '84407582-studio-background', '', '', '2019-10-03 08:55:32', '2019-10-03 08:55:32', '', 22, 'http://localhost:82/nhomK-woocommerce/wp-content/uploads/2019/10/84407582-studio-background.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2019-10-03 08:57:50', '2019-10-03 08:57:50', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>san pham moi [products orderby=\"date\" order=\"desc\"]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> đang giam giá [products orderby=\"date\" order=\"desc\"]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-10-04 06:34:59', '2019-10-04 06:34:59', '', 0, 'http://localhost:82/nhomK-woocommerce/?page_id=24', 0, 'page', '', 0),
(25, 1, '2019-10-03 08:57:50', '2019-10-03 08:57:50', '', 'HOME', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-10-03 08:57:50', '2019-10-03 08:57:50', '', 24, 'http://localhost:82/nhomK-woocommerce/2019/10/03/24-revision-v1/', 0, 'revision', '', 0),
(26, 0, '2019-10-03 16:41:57', '2019-10-03 16:41:57', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d96250c832564.77620424-EHG9VqPCkxO8ApAYiJ378Oa933hk6J3B', '', '', '2019-10-03 16:42:52', '2019-10-03 16:42:52', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=26', 0, 'scheduled-action', '', 3),
(27, 0, '2019-10-03 17:42:52', '2019-10-03 17:42:52', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d968288a7d8a7.13890411-DgoCcx9T99XhVNp8UPYzovePSECw4diK', '', '', '2019-10-03 23:21:44', '2019-10-03 23:21:44', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=27', 0, 'scheduled-action', '', 3),
(28, 0, '2019-10-04 00:21:44', '2019-10-04 00:21:44', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9690f166f072.83307618-k9BYXtCUsOZkHlB4LNDYLQpgsl4AjSaw', '', '', '2019-10-04 00:23:13', '2019-10-04 00:23:13', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=28', 0, 'scheduled-action', '', 3),
(29, 1, '2019-10-03 23:43:34', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:43:34', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2019-10-03 23:43:34', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:43:34', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2019-10-03 23:43:34', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:43:34', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2019-10-03 23:43:34', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:43:34', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2019-10-03 23:43:35', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:43:35', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2019-10-03 23:43:35', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:43:35', '0000-00-00 00:00:00', '', 6, 'http://localhost:82/nhomK-woocommerce/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2019-10-03 23:43:35', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:43:35', '0000-00-00 00:00:00', '', 6, 'http://localhost:82/nhomK-woocommerce/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2019-10-03 23:44:39', '2019-10-03 23:44:39', '', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-10-03 23:44:39', '2019-10-03 23:44:39', '', 24, 'http://localhost:82/nhomK-woocommerce/2019/10/03/24-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2019-10-03 23:44:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:44:52', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2019-10-03 23:44:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:44:52', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2019-10-03 23:44:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:44:52', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2019-10-03 23:44:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:44:52', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=40', 1, 'nav_menu_item', '', 0),
(41, 1, '2019-10-03 23:44:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:44:52', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2019-10-03 23:44:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:44:52', '0000-00-00 00:00:00', '', 6, 'http://localhost:82/nhomK-woocommerce/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2019-10-03 23:44:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:44:52', '0000-00-00 00:00:00', '', 6, 'http://localhost:82/nhomK-woocommerce/?p=43', 1, 'nav_menu_item', '', 0),
(44, 1, '2019-10-03 23:46:28', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:46:28', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2019-10-03 23:46:28', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:46:28', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=45', 1, 'nav_menu_item', '', 0),
(46, 1, '2019-10-03 23:46:28', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:46:28', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=46', 1, 'nav_menu_item', '', 0),
(47, 1, '2019-10-03 23:46:28', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:46:28', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=47', 1, 'nav_menu_item', '', 0),
(48, 1, '2019-10-03 23:46:28', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:46:28', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=48', 1, 'nav_menu_item', '', 0),
(49, 1, '2019-10-03 23:46:28', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:46:28', '0000-00-00 00:00:00', '', 6, 'http://localhost:82/nhomK-woocommerce/?p=49', 1, 'nav_menu_item', '', 0),
(50, 1, '2019-10-03 23:46:28', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:46:28', '0000-00-00 00:00:00', '', 6, 'http://localhost:82/nhomK-woocommerce/?p=50', 1, 'nav_menu_item', '', 0),
(51, 1, '2019-10-03 23:46:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:46:57', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=51', 1, 'nav_menu_item', '', 0),
(52, 1, '2019-10-03 23:46:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:46:57', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=52', 1, 'nav_menu_item', '', 0),
(53, 1, '2019-10-03 23:46:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:46:57', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=53', 1, 'nav_menu_item', '', 0),
(54, 1, '2019-10-03 23:46:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:46:57', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=54', 1, 'nav_menu_item', '', 0),
(55, 1, '2019-10-03 23:46:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:46:57', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=55', 1, 'nav_menu_item', '', 0),
(56, 1, '2019-10-03 23:46:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:46:57', '0000-00-00 00:00:00', '', 6, 'http://localhost:82/nhomK-woocommerce/?p=56', 1, 'nav_menu_item', '', 0),
(57, 1, '2019-10-03 23:46:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:46:57', '0000-00-00 00:00:00', '', 6, 'http://localhost:82/nhomK-woocommerce/?p=57', 1, 'nav_menu_item', '', 0),
(68, 1, '2019-10-03 23:50:17', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-10-03 23:50:17', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=68', 1, 'nav_menu_item', '', 0),
(70, 0, '2019-10-04 01:23:13', '2019-10-04 01:23:13', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d969f6dbd9cf8.37273366-US1RjR9CfOlHMeAuJMMcXMkF66vEu8i6', '', '', '2019-10-04 01:25:01', '2019-10-04 01:25:01', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=70', 0, 'scheduled-action', '', 3),
(71, 1, '2019-10-04 01:11:45', '2019-10-04 01:11:45', '', 'Vest 1', 'Aó vest việt tiến', 'inherit', 'closed', 'closed', '', '15-autosave-v1', '', '', '2019-10-04 01:11:45', '2019-10-04 01:11:45', '', 15, 'http://localhost:82/nhomK-woocommerce/2019/10/04/15-autosave-v1/', 0, 'revision', '', 0),
(72, 1, '2019-10-04 01:13:15', '2019-10-04 01:13:15', '', '1', '', 'inherit', 'open', 'closed', '', '1-2', '', '', '2019-10-04 01:13:15', '2019-10-04 01:13:15', '', 15, 'http://localhost:82/nhomK-woocommerce/wp-content/uploads/2019/10/1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 0, '2019-10-04 02:25:01', '2019-10-04 02:25:01', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d96adc70fc548.07411427-OHC3wNxVsosVRBFPLORuv7doU7kSFRaS', '', '', '2019-10-04 02:26:15', '2019-10-04 02:26:15', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=73', 0, 'scheduled-action', '', 3),
(74, 0, '2019-10-04 03:26:15', '2019-10-04 03:26:15', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d96bbe921fe05.38837003-VvFjpBbV1ammTcj60tQ19o6nEiW1XQep', '', '', '2019-10-04 03:26:33', '2019-10-04 03:26:33', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=74', 0, 'scheduled-action', '', 3),
(75, 1, '2019-10-04 02:44:53', '2019-10-04 02:44:53', '', 'Vest 2', '', 'publish', 'open', 'closed', '', 'ssbdgbdgbdgb', '', '', '2019-10-04 03:56:53', '2019-10-04 03:56:53', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=product&#038;p=75', 0, 'product', '', 0),
(76, 0, '2019-10-04 04:26:33', '2019-10-04 04:26:33', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d96c9ffeda0b4.98382206-hbZ4xnm161x9R496tM4DPnUlyjJuoEgd', '', '', '2019-10-04 04:26:39', '2019-10-04 04:26:39', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=76', 0, 'scheduled-action', '', 3),
(77, 1, '2019-10-04 03:37:39', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-10-04 03:37:39', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=product&p=77', 0, 'product', '', 0),
(78, 1, '2019-10-04 03:40:54', '2019-10-04 03:40:54', '', 'vest 3', '', 'publish', 'open', 'closed', '', 'vest-3', '', '', '2019-10-04 03:56:34', '2019-10-04 03:56:34', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=product&#038;p=78', 0, 'product', '', 0),
(79, 1, '2019-10-04 03:41:19', '2019-10-04 03:41:19', '', 'Vest 4', '', 'publish', 'open', 'closed', '', 'vest-4', '', '', '2019-10-04 03:56:14', '2019-10-04 03:56:14', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=product&#038;p=79', 0, 'product', '', 0),
(80, 1, '2019-10-04 03:43:33', '2019-10-04 03:43:33', '', 'Vest 4', '', 'publish', 'open', 'closed', '', 'vest-4-2', '', '', '2019-10-04 03:55:49', '2019-10-04 03:55:49', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=product&#038;p=80', 0, 'product', '', 0),
(81, 1, '2019-10-04 03:51:32', '2019-10-04 03:51:32', ' ', '', '', 'publish', 'closed', 'closed', '', '81', '', '', '2019-10-06 11:33:22', '2019-10-06 11:33:22', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=81', 2, 'nav_menu_item', '', 0),
(82, 1, '2019-10-04 03:54:42', '2019-10-04 03:54:42', '', 'Vest 5', '', 'publish', 'open', 'closed', '', 'vest-5', '', '', '2019-10-04 11:37:03', '2019-10-04 11:37:03', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=product&#038;p=82', 0, 'product', '', 0),
(83, 1, '2019-10-04 03:59:39', '2019-10-04 03:59:39', '', 'Jacket 1', '', 'publish', 'open', 'closed', '', 'jacket-1', '', '', '2019-10-04 03:59:56', '2019-10-04 03:59:56', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=product&#038;p=83', 0, 'product', '', 0),
(84, 1, '2019-10-04 03:59:50', '2019-10-04 03:59:50', '', 'j1', '', 'inherit', 'open', 'closed', '', 'j1', '', '', '2019-10-04 03:59:50', '2019-10-04 03:59:50', '', 83, 'http://localhost:82/nhomK-woocommerce/wp-content/uploads/2019/10/j1.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2019-10-04 04:00:42', '2019-10-04 04:00:42', '', 'Jacket 2', '', 'publish', 'open', 'closed', '', 'jacket-2', '', '', '2019-10-04 04:00:42', '2019-10-04 04:00:42', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=product&#038;p=85', 0, 'product', '', 0),
(86, 1, '2019-10-04 04:00:35', '2019-10-04 04:00:35', '', 'j2', '', 'inherit', 'open', 'closed', '', 'j2', '', '', '2019-10-04 04:00:35', '2019-10-04 04:00:35', '', 85, 'http://localhost:82/nhomK-woocommerce/wp-content/uploads/2019/10/j2.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2019-10-04 04:01:27', '2019-10-04 04:01:27', '', 'Jacket 3', '', 'publish', 'open', 'closed', '', 'jacket-3', '', '', '2019-10-04 04:01:28', '2019-10-04 04:01:28', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=product&#038;p=87', 0, 'product', '', 0),
(88, 1, '2019-10-04 04:01:19', '2019-10-04 04:01:19', '', 'j4', '', 'inherit', 'open', 'closed', '', 'j4', '', '', '2019-10-04 04:01:19', '2019-10-04 04:01:19', '', 87, 'http://localhost:82/nhomK-woocommerce/wp-content/uploads/2019/10/j4.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2019-10-04 04:02:07', '2019-10-04 04:02:07', '', 'Jacket 4', '', 'publish', 'open', 'closed', '', 'jacket-4', '', '', '2019-10-04 04:02:07', '2019-10-04 04:02:07', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=product&#038;p=89', 0, 'product', '', 0),
(90, 1, '2019-10-04 04:01:59', '2019-10-04 04:01:59', '', 'j4', '', 'inherit', 'open', 'closed', '', 'j4-2', '', '', '2019-10-04 04:01:59', '2019-10-04 04:01:59', '', 89, 'http://localhost:82/nhomK-woocommerce/wp-content/uploads/2019/10/j4-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2019-10-04 04:18:07', '2019-10-04 04:18:07', '<!-- wp:paragraph -->\n<p>\n\n[products orderby=\"date\" order=\"desc\"]\n\nĐang giảm giá \n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[sale_products per_page=\"12\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p>\n\nHiển thị theo tên Sản Phẩm\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[product_category category=\"jacket\"]\n<!-- /wp:shortcode -->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-10-04 04:18:07', '2019-10-04 04:18:07', '', 24, 'http://localhost:82/nhomK-woocommerce/2019/10/04/24-revision-v1/', 0, 'revision', '', 0),
(93, 0, '2019-10-04 05:26:39', '2019-10-04 05:26:39', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d96db0b4ca347.70991589-9vPQFQkzgVbH5eOx6H7mXXA03lSVmlTf', '', '', '2019-10-04 05:39:23', '2019-10-04 05:39:23', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=93', 0, 'scheduled-action', '', 3),
(94, 1, '2019-10-04 04:27:15', '2019-10-04 04:27:15', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Sản Phẩm Mới&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[products orderby=\"date\" order=\"desc\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p>Đang giảm giá&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[sale_products per_page=\"12\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p>Hiển thị theo tên Sản Phẩm</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[product_category category=\"slug-danh-muc-san-pham\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Shop', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-10-04 04:27:15', '2019-10-04 04:27:15', '', 6, 'http://localhost:82/nhomK-woocommerce/2019/10/04/6-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2019-10-04 04:32:13', '2019-10-04 04:32:13', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>san pham moi [products orderby=\"date\" order=\"desc\"]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> đang giam giá [products orderby=\"date\" order=\"desc\"]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-10-04 04:32:13', '2019-10-04 04:32:13', '', 24, 'http://localhost:82/nhomK-woocommerce/2019/10/04/24-revision-v1/', 0, 'revision', '', 0),
(96, 0, '2019-10-04 06:39:23', '2019-10-04 06:39:23', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d96e93335cf02.67344339-CDm05yhOxp6C3kh9v4KuNI0UvUOjjMEW', '', '', '2019-10-04 06:39:47', '2019-10-04 06:39:47', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=96', 0, 'scheduled-action', '', 3),
(97, 1, '2019-10-04 06:35:01', '2019-10-04 06:35:01', '<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>san pham moi [products orderby=\"date\" order=\"desc\"]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> đang giam giá [products orderby=\"date\" order=\"desc\"]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '24-autosave-v1', '', '', '2019-10-04 06:35:01', '2019-10-04 06:35:01', '', 24, 'http://localhost:82/nhomK-woocommerce/2019/10/04/24-autosave-v1/', 0, 'revision', '', 0),
(98, 1, '2019-10-04 06:36:29', '2019-10-04 06:36:29', ' ', '', '', 'publish', 'closed', 'closed', '', '98', '', '', '2019-10-06 11:33:22', '2019-10-06 11:33:22', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=98', 1, 'nav_menu_item', '', 0),
(99, 0, '2019-10-04 07:39:47', '2019-10-04 07:39:47', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d96fb0a8efae1.75816811-svwTu1kE34IUzpQtWSyWC9OFZRvNIthf', '', '', '2019-10-04 07:55:54', '2019-10-04 07:55:54', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=99', 0, 'scheduled-action', '', 3),
(100, 0, '2019-10-04 08:55:54', '2019-10-04 08:55:54', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d970949d2d0f4.59712328-MoCSeCEL2RAha6XGDERpsayemCEyiOMc', '', '', '2019-10-04 08:56:41', '2019-10-04 08:56:41', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=100', 0, 'scheduled-action', '', 3),
(101, 0, '2019-10-04 09:56:41', '2019-10-04 09:56:41', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9717b2457891.52749392-N3tQ3IAOTYb2pHfxLBOjplkzm1Pz9gXM', '', '', '2019-10-04 09:58:10', '2019-10-04 09:58:10', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=101', 0, 'scheduled-action', '', 3),
(102, 0, '2019-10-04 10:58:10', '2019-10-04 10:58:10', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d97297b3cbd36.09889893-URbgeiWsqdDlBSjNTC8esFGomre1hYr1', '', '', '2019-10-04 11:14:03', '2019-10-04 11:14:03', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=102', 0, 'scheduled-action', '', 3),
(103, 0, '2019-10-04 12:14:03', '2019-10-04 12:14:03', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9737b075a274.20251147-GR5PwU5n34LheCUD9SGXZusO89IaATEJ', '', '', '2019-10-04 12:14:40', '2019-10-04 12:14:40', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=103', 0, 'scheduled-action', '', 3),
(104, 1, '2019-10-04 11:29:15', '2019-10-04 11:29:15', '', 'Vest 7', '', 'publish', 'open', 'closed', '', 'vest-7', '', '', '2019-10-04 11:29:15', '2019-10-04 11:29:15', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=product&#038;p=104', 0, 'product', '', 0),
(105, 1, '2019-10-04 11:29:10', '2019-10-04 11:29:10', '', 'v7', '', 'inherit', 'open', 'closed', '', 'v7', '', '', '2019-10-04 11:29:10', '2019-10-04 11:29:10', '', 104, 'http://localhost:82/nhomK-woocommerce/wp-content/uploads/2019/10/v7.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2019-10-04 11:29:55', '2019-10-04 11:29:55', '', 'Vest 8', '', 'publish', 'open', 'closed', '', 'vest-8', '', '', '2019-10-04 11:29:55', '2019-10-04 11:29:55', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=product&#038;p=106', 0, 'product', '', 0),
(107, 1, '2019-10-04 11:29:47', '2019-10-04 11:29:47', '', 'v8', '', 'inherit', 'open', 'closed', '', 'v8', '', '', '2019-10-04 11:29:47', '2019-10-04 11:29:47', '', 106, 'http://localhost:82/nhomK-woocommerce/wp-content/uploads/2019/10/v8.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2019-10-04 11:30:33', '2019-10-04 11:30:33', '', 'Vest 9', '', 'publish', 'open', 'closed', '', 'vest-9', '', '', '2019-10-04 11:36:42', '2019-10-04 11:36:42', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=product&#038;p=108', 0, 'product', '', 0),
(109, 1, '2019-10-04 11:30:24', '2019-10-04 11:30:24', '', 'v9', '', 'inherit', 'open', 'closed', '', 'v9', '', '', '2019-10-04 11:30:24', '2019-10-04 11:30:24', '', 108, 'http://localhost:82/nhomK-woocommerce/wp-content/uploads/2019/10/v9.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2019-10-04 11:31:13', '2019-10-04 11:31:13', '', 'Vest 11', '', 'publish', 'open', 'closed', '', 'vest-11', '', '', '2019-10-04 11:31:13', '2019-10-04 11:31:13', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=product&#038;p=110', 0, 'product', '', 0),
(111, 1, '2019-10-04 11:31:00', '2019-10-04 11:31:00', '', 'v10', '', 'inherit', 'open', 'closed', '', 'v10', '', '', '2019-10-04 11:31:00', '2019-10-04 11:31:00', '', 110, 'http://localhost:82/nhomK-woocommerce/wp-content/uploads/2019/10/v10.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2019-10-04 11:33:33', '2019-10-04 11:33:33', '', 'Vest 12', '', 'publish', 'open', 'closed', '', 'vest-12', '', '', '2019-10-04 11:33:34', '2019-10-04 11:33:34', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=product&#038;p=112', 0, 'product', '', 0),
(113, 1, '2019-10-04 11:33:25', '2019-10-04 11:33:25', '', 'v14', '', 'inherit', 'open', 'closed', '', 'v14', '', '', '2019-10-04 11:33:25', '2019-10-04 11:33:25', '', 112, 'http://localhost:82/nhomK-woocommerce/wp-content/uploads/2019/10/v14.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2019-10-04 11:34:35', '2019-10-04 11:34:35', '', 'Vest 13', '', 'publish', 'open', 'closed', '', 'vest-13', '', '', '2019-10-04 11:34:35', '2019-10-04 11:34:35', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=product&#038;p=114', 0, 'product', '', 0),
(115, 1, '2019-10-04 11:34:27', '2019-10-04 11:34:27', '', 'v15', '', 'inherit', 'open', 'closed', '', 'v15', '', '', '2019-10-04 11:34:27', '2019-10-04 11:34:27', '', 114, 'http://localhost:82/nhomK-woocommerce/wp-content/uploads/2019/10/v15.png', 0, 'attachment', 'image/png', 0),
(116, 1, '2019-10-04 11:35:27', '2019-10-04 11:35:27', '', 'Vest 14', '', 'publish', 'open', 'closed', '', 'vest-14', '', '', '2019-10-04 11:36:22', '2019-10-04 11:36:22', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=product&#038;p=116', 0, 'product', '', 0),
(117, 1, '2019-10-04 11:35:24', '2019-10-04 11:35:24', '', 'v16', '', 'inherit', 'open', 'closed', '', 'v16', '', '', '2019-10-04 11:35:24', '2019-10-04 11:35:24', '', 116, 'http://localhost:82/nhomK-woocommerce/wp-content/uploads/2019/10/v16.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 0, '2019-10-04 13:14:40', '2019-10-04 13:14:40', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9745d96bb9c6.46918659-fJpNdA3TuPPNn7TpAis66JiIkbW33qMx', '', '', '2019-10-04 13:15:05', '2019-10-04 13:15:05', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=118', 0, 'scheduled-action', '', 3),
(119, 0, '2019-10-04 14:15:05', '2019-10-04 14:15:05', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9754392c4463.95770411-YL9Kw2qPRQmP5rEktgVqhOoGm3Jg0i8H', '', '', '2019-10-04 14:16:25', '2019-10-04 14:16:25', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=119', 0, 'scheduled-action', '', 3),
(120, 1, '2019-10-04 13:59:38', '2019-10-04 13:59:38', '', 'v16', '', 'publish', 'open', 'closed', '', 'v16', '', '', '2019-10-04 13:59:38', '2019-10-04 13:59:38', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=product&#038;p=120', 0, 'product', '', 0),
(121, 1, '2019-10-04 13:59:25', '2019-10-04 13:59:25', '', 'v16', '', 'inherit', 'open', 'closed', '', 'v16-2', '', '', '2019-10-04 13:59:25', '2019-10-04 13:59:25', '', 120, 'http://localhost:82/nhomK-woocommerce/wp-content/uploads/2019/10/v16-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2019-10-04 14:00:18', '2019-10-04 14:00:18', '', 'v17', '', 'publish', 'open', 'closed', '', 'v17', '', '', '2019-10-04 14:00:18', '2019-10-04 14:00:18', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=product&#038;p=122', 0, 'product', '', 0),
(123, 1, '2019-10-04 14:00:09', '2019-10-04 14:00:09', '', 'v17', '', 'inherit', 'open', 'closed', '', 'v17', '', '', '2019-10-04 14:00:09', '2019-10-04 14:00:09', '', 122, 'http://localhost:82/nhomK-woocommerce/wp-content/uploads/2019/10/v17.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 0, '2019-10-04 15:16:25', '2019-10-04 15:16:25', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d97624b797784.64627362-0k5laoqE3O3P4TNnSfpWcrY31cUdRt74', '', '', '2019-10-04 15:16:27', '2019-10-04 15:16:27', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=124', 0, 'scheduled-action', '', 3),
(125, 0, '2019-10-04 16:16:27', '2019-10-04 16:16:27', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d97735410c021.74363691-bfbuGQOATqsrBYd8MKy92aavJlbVFPOd', '', '', '2019-10-04 16:29:08', '2019-10-04 16:29:08', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=125', 0, 'scheduled-action', '', 3),
(126, 1, '2019-10-04 15:17:09', '2019-10-04 15:17:09', ' ', '', '', 'publish', 'closed', 'closed', '', '126', '', '', '2019-10-06 11:33:22', '2019-10-06 11:33:22', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=126', 6, 'nav_menu_item', '', 0),
(127, 1, '2019-10-04 15:17:09', '2019-10-04 15:17:09', ' ', '', '', 'publish', 'closed', 'closed', '', '127', '', '', '2019-10-06 11:33:22', '2019-10-06 11:33:22', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=127', 5, 'nav_menu_item', '', 0),
(128, 1, '2019-10-04 15:17:09', '2019-10-04 15:17:09', ' ', '', '', 'publish', 'closed', 'closed', '', '128', '', '', '2019-10-06 11:33:22', '2019-10-06 11:33:22', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=128', 4, 'nav_menu_item', '', 0),
(129, 1, '2019-10-04 15:17:09', '2019-10-04 15:17:09', ' ', '', '', 'publish', 'closed', 'closed', '', '129', '', '', '2019-10-06 11:33:22', '2019-10-06 11:33:22', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=129', 3, 'nav_menu_item', '', 0),
(130, 1, '2019-10-04 15:42:57', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-10-04 15:42:57', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=product&p=130', 0, 'product', '', 0),
(131, 1, '2019-10-04 16:05:26', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-10-04 16:05:26', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=product&p=131', 0, 'product', '', 0),
(132, 0, '2019-10-04 17:29:08', '2019-10-04 17:29:08', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d97e6f45945d0.39273421-Y41IFexSzHf5EUhuqhzZsoLvRWUr0RQP', '', '', '2019-10-05 00:42:28', '2019-10-05 00:42:28', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=132', 0, 'scheduled-action', '', 3),
(133, 0, '2019-10-05 01:42:28', '2019-10-05 01:42:28', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d97f51c0d3a29.40175330-wQ8wlZsnDVs14keiTMNY8YDzXArMPHxB', '', '', '2019-10-05 01:42:52', '2019-10-05 01:42:52', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=133', 0, 'scheduled-action', '', 3),
(134, 1, '2019-10-05 01:05:07', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-10-05 01:05:07', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=product&p=134', 0, 'product', '', 0),
(135, 0, '2019-10-05 02:42:52', '2019-10-05 02:42:52', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9812d46217e5.32903623-2VVTbjAtHJhtLcRd7ANAqdO5M2rs23hl', '', '', '2019-10-05 03:49:40', '2019-10-05 03:49:40', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=135', 0, 'scheduled-action', '', 3),
(136, 0, '2019-10-05 04:49:40', '2019-10-05 04:49:40', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d982339150196.82103562-xKpyoM15T8YJH0qQhvCLn96MxXgYSB18', '', '', '2019-10-05 04:59:37', '2019-10-05 04:59:37', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=136', 0, 'scheduled-action', '', 3),
(137, 0, '2019-10-05 05:59:37', '2019-10-05 05:59:37', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9831699e69d3.17037850-yaBZXiof0Qw4mWJytElcDsdpyasqFZdH', '', '', '2019-10-05 06:00:09', '2019-10-05 06:00:09', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=137', 0, 'scheduled-action', '', 3),
(138, 0, '2019-10-05 07:00:09', '2019-10-05 07:00:09', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9845a33cb033.40700444-88FPiPobouReMk0UqPDl89QE9TL0vqP4', '', '', '2019-10-05 07:26:27', '2019-10-05 07:26:27', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=138', 0, 'scheduled-action', '', 3),
(139, 0, '2019-10-05 08:26:27', '2019-10-05 08:26:27', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d985427a2bd80.75848063-abOcxi2RU7DKXLlgOCPumKlAJyp3AVH5', '', '', '2019-10-05 08:28:23', '2019-10-05 08:28:23', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=139', 0, 'scheduled-action', '', 3),
(140, 1, '2019-10-05 07:48:19', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-10-05 07:48:19', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=product&p=140', 0, 'product', '', 0),
(142, 0, '2019-10-05 09:28:23', '2019-10-05 09:28:23', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d98623d3a5375.95850122-qj3uf0wRAfY5zWVTCpYmOaDBliY16Wo5', '', '', '2019-10-05 09:28:29', '2019-10-05 09:28:29', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=142', 0, 'scheduled-action', '', 3),
(143, 0, '2019-10-05 10:28:29', '2019-10-05 10:28:29', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d98707bedd626.31253863-MN2XNrTJ5MlahR8uw7hz4oSwNNFrAqhb', '', '', '2019-10-05 10:29:15', '2019-10-05 10:29:15', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=143', 0, 'scheduled-action', '', 3),
(144, 0, '2019-10-05 11:29:15', '2019-10-05 11:29:15', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d98849e0fcc36.25340138-0AkynoxFeO7PdUPs8drbc3GMWi0LrvAN', '', '', '2019-10-05 11:55:10', '2019-10-05 11:55:10', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=144', 0, 'scheduled-action', '', 3),
(145, 0, '2019-10-05 12:55:10', '2019-10-05 12:55:10', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d98931f06ff17.86852489-pFeqowFPekd8ihKKn3O6mypPZBFCVimx', '', '', '2019-10-05 12:57:03', '2019-10-05 12:57:03', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=145', 0, 'scheduled-action', '', 3),
(146, 0, '2019-10-05 13:57:03', '2019-10-05 13:57:03', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d98a172de68d7.59631166-leReIJJpDH7m44GKqUL1u8X30EP9QLN7', '', '', '2019-10-05 13:58:10', '2019-10-05 13:58:10', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=146', 0, 'scheduled-action', '', 3),
(147, 0, '2019-10-05 14:58:11', '2019-10-05 14:58:11', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d98afce46f553.77166271-13kxrtVcPxZnpJqNw25ZQVOR5o0jFjq8', '', '', '2019-10-05 14:59:26', '2019-10-05 14:59:26', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=147', 0, 'scheduled-action', '', 3),
(148, 0, '2019-10-05 15:59:26', '2019-10-05 15:59:26', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d98be0e328ce7.07858950-t2ymd8ZStK3g7OzufNlT5SGeiQQNGBfE', '', '', '2019-10-05 16:00:14', '2019-10-05 16:00:14', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=148', 0, 'scheduled-action', '', 3);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(149, 0, '2019-10-05 17:00:14', '2019-10-05 17:00:14', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d99324f3195b4.94259035-a7qeflF9WcC4nvernTNazMfEsHKlAsmW', '', '', '2019-10-06 00:16:15', '2019-10-06 00:16:15', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=149', 0, 'scheduled-action', '', 3),
(150, 0, '2019-10-06 01:16:15', '2019-10-06 01:16:15', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d99406a81dee0.89767182-HvyNQoveQWUzdVhmGoPqZcw7umu9yOYY', '', '', '2019-10-06 01:16:26', '2019-10-06 01:16:26', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=150', 0, 'scheduled-action', '', 3),
(151, 0, '2019-10-06 02:16:26', '2019-10-06 02:16:26', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d994e930cac43.35889389-CdBQSlH5HlcLb7tEUeFTKv1ECCwccgia', '', '', '2019-10-06 02:16:51', '2019-10-06 02:16:51', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=151', 0, 'scheduled-action', '', 3),
(152, 0, '2019-10-06 03:16:51', '2019-10-06 03:16:51', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d995fa9a61327.26591007-lpaMTmPBdFe9D2J3PFUfXNDxUnht7IO4', '', '', '2019-10-06 03:29:45', '2019-10-06 03:29:45', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=152', 0, 'scheduled-action', '', 3),
(153, 0, '2019-10-06 04:29:45', '2019-10-06 04:29:45', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9973110e84f5.21110711-QNRFukvHrUhsCwU0cVbq2GRFwvulMPWe', '', '', '2019-10-06 04:52:33', '2019-10-06 04:52:33', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=153', 0, 'scheduled-action', '', 3),
(154, 0, '2019-10-06 05:52:33', '2019-10-06 05:52:33', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d99d052a5dcd2.80074503-0Lo3XZtm2Wf4LOkQGTadyepB7hbVRVgV', '', '', '2019-10-06 11:30:26', '2019-10-06 11:30:26', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=154', 0, 'scheduled-action', '', 3),
(155, 0, '2019-10-06 12:30:26', '2019-10-06 12:30:26', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d99deb8ab28f6.39376664-mbkAsAoXcXHe3x803BM9BnHuTUVIardr', '', '', '2019-10-06 12:31:52', '2019-10-06 12:31:52', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=155', 0, 'scheduled-action', '', 3),
(156, 1, '2019-10-06 11:32:00', '2019-10-06 11:32:00', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2019-10-06 11:32:00', '2019-10-06 11:32:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?page_id=156', 0, 'page', '', 0),
(157, 1, '2019-10-06 11:32:00', '2019-10-06 11:32:00', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2019-10-06 11:32:00', '2019-10-06 11:32:00', '', 156, 'http://localhost:82/nhomK-woocommerce/2019/10/06/156-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2019-10-06 11:32:05', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-06 11:32:05', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?page_id=158', 0, 'page', '', 0),
(159, 1, '2019-10-06 11:32:24', '2019-10-06 11:32:24', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-10-06 11:32:24', '2019-10-06 11:32:24', '', 0, 'http://localhost:82/nhomK-woocommerce/?page_id=159', 0, 'page', '', 0),
(160, 1, '2019-10-06 11:32:24', '2019-10-06 11:32:24', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '159-revision-v1', '', '', '2019-10-06 11:32:24', '2019-10-06 11:32:24', '', 159, 'http://localhost:82/nhomK-woocommerce/2019/10/06/159-revision-v1/', 0, 'revision', '', 0),
(161, 1, '2019-10-06 11:33:22', '2019-10-06 11:33:22', ' ', '', '', 'publish', 'closed', 'closed', '', '161', '', '', '2019-10-06 11:33:22', '2019-10-06 11:33:22', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=161', 8, 'nav_menu_item', '', 0),
(162, 1, '2019-10-06 11:33:22', '2019-10-06 11:33:22', ' ', '', '', 'publish', 'closed', 'closed', '', '162', '', '', '2019-10-06 11:33:22', '2019-10-06 11:33:22', '', 0, 'http://localhost:82/nhomK-woocommerce/?p=162', 7, 'nav_menu_item', '', 0),
(163, 0, '2019-10-06 13:31:52', '2019-10-06 13:31:52', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d99ecdfe37116.01302615-4ZcxlEJc4kCWgC0ziJXEDTGTMMvnbcjo', '', '', '2019-10-06 13:32:15', '2019-10-06 13:32:15', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=163', 0, 'scheduled-action', '', 3),
(164, 0, '2019-10-06 14:32:15', '2019-10-06 14:32:15', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d99fff41ae783.75864015-M1Jvqhd69nQBCbCJ0kEekQLxSurINvY7', '', '', '2019-10-06 14:53:39', '2019-10-06 14:53:39', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=164', 0, 'scheduled-action', '', 3),
(165, 1, '2019-10-06 13:54:49', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-10-06 13:54:49', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=product&p=165', 0, 'product', '', 0),
(166, 0, '2019-10-06 15:53:40', '2019-10-06 15:53:40', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9a97471a03c2.74094058-RiegnZpd95zVoF6hQncbageoY4VW6SjK', '', '', '2019-10-07 01:39:19', '2019-10-07 01:39:19', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=166', 0, 'scheduled-action', '', 3),
(167, 0, '2019-10-07 02:39:19', '2019-10-07 02:39:19', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9aa68f535a66.38531226-JUmjjR3c9UW6pp77aj4YAObep6cPj6Pl', '', '', '2019-10-07 02:44:31', '2019-10-07 02:44:31', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=167', 0, 'scheduled-action', '', 3),
(168, 0, '2019-10-07 03:44:31', '2019-10-07 03:44:31', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9af0bd4b8742.60497605-IcfnFtQqO2EOd7EfWjvQsjoUABuTM7ZT', '', '', '2019-10-07 08:01:01', '2019-10-07 08:01:01', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=168', 0, 'scheduled-action', '', 3),
(169, 0, '2019-10-07 09:01:01', '2019-10-07 09:01:01', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9b0424df42a1.25524274-bPIEt4tFE6nVSz8WsEBoJoEoqvznSL6L', '', '', '2019-10-07 09:23:48', '2019-10-07 09:23:48', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=169', 0, 'scheduled-action', '', 3),
(170, 0, '2019-10-07 10:23:48', '2019-10-07 10:23:48', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9b1280045131.21380337-0zwoWMUOYeo7UyZIlpT1tCgWEiMzoPW9', '', '', '2019-10-07 10:25:04', '2019-10-07 10:25:04', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=170', 0, 'scheduled-action', '', 3),
(171, 0, '2019-10-07 11:25:04', '2019-10-07 11:25:04', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9b209b3afd59.16088392-Hl6j0Z7QU3i1nlsIIJVkm6NvLtvffAUa', '', '', '2019-10-07 11:25:15', '2019-10-07 11:25:15', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=171', 0, 'scheduled-action', '', 3),
(172, 0, '2019-10-07 12:25:15', '2019-10-07 12:25:15', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9b2eb6e4e305.10899458-y5bMnAfvTLdhPgr1FUglbizKQzgY2mwU', '', '', '2019-10-07 12:25:26', '2019-10-07 12:25:26', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=172', 0, 'scheduled-action', '', 3),
(173, 0, '2019-10-07 13:25:26', '2019-10-07 13:25:26', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9b3cd82c8273.01419895-xlioz6WGlhFBZ9zZX03X8h29JTHBMbTM', '', '', '2019-10-07 13:25:44', '2019-10-07 13:25:44', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=173', 0, 'scheduled-action', '', 3),
(174, 0, '2019-10-07 14:25:44', '2019-10-07 14:25:44', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9b4afbf04398.86188991-dEhkST7V32Wraw7UMGyOkFeuumHxqDNi', '', '', '2019-10-07 14:26:03', '2019-10-07 14:26:03', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=174', 0, 'scheduled-action', '', 3),
(175, 0, '2019-10-07 15:26:04', '2019-10-07 15:26:04', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9b591e4f5dc7.51588201-JFHfuKKoIeVdDAw0QfZc3TQzZ1b1HZAe', '', '', '2019-10-07 15:26:22', '2019-10-07 15:26:22', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=175', 0, 'scheduled-action', '', 3),
(176, 0, '2019-10-07 16:26:22', '2019-10-07 16:26:22', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9b673bc851c7.03835718-6LMYQG0p1M2huvimrrJWFsFLJqtTWH0I', '', '', '2019-10-07 16:26:35', '2019-10-07 16:26:35', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=176', 0, 'scheduled-action', '', 3),
(177, 0, '2019-10-07 17:26:35', '2019-10-07 17:26:35', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9b7555c43d78.74546274-8D9VJoNduEFgUYVyuLgQgsz0LQS0cxIz', '', '', '2019-10-07 17:26:45', '2019-10-07 17:26:45', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=177', 0, 'scheduled-action', '', 3),
(178, 0, '2019-10-07 18:26:45', '2019-10-07 18:26:45', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9bc2dd983823.70504226-rzInlLzWiMz8BjlrCbozCtC4snqbwKzd', '', '', '2019-10-07 22:57:33', '2019-10-07 22:57:33', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=178', 0, 'scheduled-action', '', 3),
(179, 0, '2019-10-07 23:57:33', '2019-10-07 23:57:33', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9bd2c4c29d83.35100206-fzrbDcRtt18EJvhoQ4519TpaRZuwzzbF', '', '', '2019-10-08 00:05:24', '2019-10-08 00:05:24', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=179', 0, 'scheduled-action', '', 3),
(180, 0, '2019-10-08 01:05:24', '2019-10-08 01:05:24', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9be0ded3c184.53616604-3QiqjQ4YpTuXhjTA0tQwBzwLOsUjEJAd', '', '', '2019-10-08 01:05:34', '2019-10-08 01:05:34', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=180', 0, 'scheduled-action', '', 3),
(181, 0, '2019-10-08 02:05:34', '2019-10-08 02:05:34', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9bef552f2609.39126996-HxrTEN9KBh4GO64j4AAhDdAqEExVeiUw', '', '', '2019-10-08 02:07:17', '2019-10-08 02:07:17', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=181', 0, 'scheduled-action', '', 3),
(182, 0, '2019-10-08 03:07:17', '2019-10-08 03:07:17', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9bfeaba78250.67911633-f31kTQpW5LmQfBQUjozPKbAnNOU2h7KR', '', '', '2019-10-08 03:12:43', '2019-10-08 03:12:43', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=182', 0, 'scheduled-action', '', 3),
(183, 0, '2019-10-08 04:12:43', '2019-10-08 04:12:43', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9c0cd77667f0.42547517-RzETbHhcEwe9vm3ZUSyIcLEsjpJULxzQ', '', '', '2019-10-08 04:13:11', '2019-10-08 04:13:11', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=183', 0, 'scheduled-action', '', 3),
(184, 0, '2019-10-08 05:13:11', '2019-10-08 05:13:11', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9c23a4632293.96717246-tGjtZOKfcbPUqzqNzSJgsG00eQKsZlk8', '', '', '2019-10-08 05:50:28', '2019-10-08 05:50:28', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=184', 0, 'scheduled-action', '', 3),
(185, 0, '2019-10-08 05:50:28', '2019-10-08 05:50:28', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d9c23a47c1906.04655809-fA4tVGQSn5zyOIs4Tt0BQllZKvBGDSxI', '', '', '2019-10-08 05:50:28', '2019-10-08 05:50:28', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&#038;p=185', 0, 'scheduled-action', '', 3),
(186, 0, '2019-10-08 06:50:28', '2019-10-08 06:50:28', '[]', 'wc_admin_unsnooze_admin_notes', '', 'pending', 'open', 'closed', '', '', '', '', '2019-10-08 06:50:28', '2019-10-08 06:50:28', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&p=186', 0, 'scheduled-action', '', 1),
(187, 0, '2019-10-08 06:50:28', '2019-10-08 06:50:28', '[]', 'wc_admin_unsnooze_admin_notes', '', 'pending', 'open', 'closed', '', '', '', '', '2019-10-08 06:50:28', '2019-10-08 06:50:28', '', 0, 'http://localhost:82/nhomK-woocommerce/?post_type=scheduled-action&p=187', 0, 'scheduled-action', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '0'),
(2, 17, 'product_count_product_tag', '14'),
(6, 19, 'order', '0'),
(7, 19, 'display_type', ''),
(8, 19, 'thumbnail_id', '0'),
(9, 20, 'order', '0'),
(10, 20, 'display_type', ''),
(11, 20, 'thumbnail_id', '0'),
(12, 21, 'order', '0'),
(13, 21, 'display_type', ''),
(14, 21, 'thumbnail_id', '0'),
(15, 22, 'order', '0'),
(16, 22, 'display_type', ''),
(17, 22, 'thumbnail_id', '0'),
(21, 25, 'order', '0'),
(22, 25, 'display_type', ''),
(23, 25, 'thumbnail_id', '0'),
(24, 26, 'order', '0'),
(25, 26, 'display_type', ''),
(26, 26, 'thumbnail_id', '0'),
(30, 28, 'order', '0'),
(31, 28, 'display_type', ''),
(32, 28, 'thumbnail_id', '0'),
(33, 29, 'order', '0'),
(34, 29, 'display_type', ''),
(35, 29, 'thumbnail_id', '0'),
(36, 30, 'order', '0'),
(37, 30, 'display_type', ''),
(38, 30, 'thumbnail_id', '0'),
(39, 26, 'product_count_product_cat', '15'),
(40, 29, 'product_count_product_cat', '4'),
(41, 31, 'product_count_product_tag', '4'),
(42, 32, 'order', '0'),
(43, 32, 'display_type', ''),
(44, 32, 'thumbnail_id', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'wc-admin-notes', 'wc-admin-notes', 0),
(17, 'vest', 'vest', 0),
(19, 'Shop', 'shop', 0),
(20, 'Home', 'home', 0),
(21, 'About us', 'about-us', 0),
(22, 'Contact', 'contact', 0),
(23, 'Menu 1', 'menu-1', 0),
(25, 'Product', 'product', 0),
(26, 'Vest', 'vest', 0),
(28, 'Dress', 'dress', 0),
(29, 'Jacket', 'jacket', 0),
(30, 'Bag', 'bag', 0),
(31, 'jacket', 'jacket', 0),
(32, 'THÊM NÈ', 'them-ne', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 16, 0),
(11, 16, 0),
(13, 2, 0),
(13, 15, 0),
(15, 2, 0),
(15, 17, 0),
(15, 26, 0),
(22, 2, 0),
(22, 15, 0),
(26, 16, 0),
(27, 16, 0),
(28, 16, 0),
(70, 16, 0),
(73, 16, 0),
(74, 16, 0),
(75, 2, 0),
(75, 17, 0),
(75, 26, 0),
(76, 16, 0),
(78, 2, 0),
(78, 17, 0),
(78, 26, 0),
(79, 2, 0),
(79, 17, 0),
(79, 26, 0),
(80, 2, 0),
(80, 26, 0),
(81, 23, 0),
(82, 2, 0),
(82, 17, 0),
(82, 26, 0),
(83, 2, 0),
(83, 29, 0),
(83, 31, 0),
(85, 2, 0),
(85, 29, 0),
(85, 31, 0),
(87, 2, 0),
(87, 29, 0),
(87, 31, 0),
(89, 2, 0),
(89, 29, 0),
(89, 31, 0),
(93, 16, 0),
(96, 16, 0),
(98, 23, 0),
(99, 16, 0),
(100, 16, 0),
(101, 16, 0),
(102, 16, 0),
(103, 16, 0),
(104, 2, 0),
(104, 17, 0),
(104, 26, 0),
(106, 2, 0),
(106, 17, 0),
(106, 26, 0),
(108, 2, 0),
(108, 17, 0),
(108, 26, 0),
(110, 2, 0),
(110, 17, 0),
(110, 26, 0),
(112, 2, 0),
(112, 17, 0),
(112, 26, 0),
(114, 2, 0),
(114, 17, 0),
(114, 26, 0),
(116, 2, 0),
(116, 17, 0),
(116, 26, 0),
(118, 16, 0),
(119, 16, 0),
(120, 2, 0),
(120, 17, 0),
(120, 26, 0),
(122, 2, 0),
(122, 17, 0),
(122, 26, 0),
(124, 16, 0),
(125, 16, 0),
(126, 23, 0),
(127, 23, 0),
(128, 23, 0),
(129, 23, 0),
(132, 16, 0),
(133, 16, 0),
(135, 16, 0),
(136, 16, 0),
(137, 16, 0),
(138, 16, 0),
(139, 16, 0),
(142, 16, 0),
(143, 16, 0),
(144, 16, 0),
(145, 16, 0),
(146, 16, 0),
(147, 16, 0),
(148, 16, 0),
(149, 16, 0),
(150, 16, 0),
(151, 16, 0),
(152, 16, 0),
(153, 16, 0),
(154, 16, 0),
(155, 16, 0),
(161, 23, 0),
(162, 23, 0),
(163, 16, 0),
(164, 16, 0),
(166, 16, 0),
(167, 16, 0),
(168, 16, 0),
(169, 16, 0),
(170, 16, 0),
(171, 16, 0),
(172, 16, 0),
(173, 16, 0),
(174, 16, 0),
(175, 16, 0),
(176, 16, 0),
(177, 16, 0),
(178, 16, 0),
(179, 16, 0),
(180, 16, 0),
(181, 16, 0),
(182, 16, 0),
(183, 16, 0),
(184, 16, 0),
(185, 16, 0),
(186, 16, 0),
(187, 16, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 19),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'action-group', '', 0, 63),
(17, 17, 'product_tag', '', 0, 14),
(19, 19, 'product_cat', '', 0, 0),
(20, 20, 'product_cat', '', 0, 0),
(21, 21, 'product_cat', '', 0, 0),
(22, 22, 'product_cat', '', 0, 0),
(23, 23, 'nav_menu', '', 0, 8),
(25, 25, 'product_cat', '', 0, 0),
(26, 26, 'product_cat', '', 0, 15),
(28, 28, 'product_cat', '', 0, 0),
(29, 29, 'product_cat', '', 0, 4),
(30, 30, 'product_cat', '', 0, 0),
(31, 31, 'product_tag', '', 0, 4),
(32, 32, 'product_cat', '', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'woocomercee'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:8:{s:64:\"55cf8bd280a4818f87c94b494dd51299c2110c6ec476e4f8932a01203a2546da\";a:4:{s:10:\"expiration\";i:1571296225;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36\";s:5:\"login\";i:1570086625;}s:64:\"d6e53ed9eac45c76dd7b5be3f74d9eece3c3ed3e6f4367b52568130cdad1a820\";a:4:{s:10:\"expiration\";i:1571297082;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36\";s:5:\"login\";i:1570087482;}s:64:\"25a7ba0431fe95021d195c606fcb0ebc876d5d29fba5cbc7f03d0cd3506fb4cf\";a:4:{s:10:\"expiration\";i:1571369856;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36\";s:5:\"login\";i:1570160256;}s:64:\"9e8e2c27f19b67756f9956728588dc078d72edffc0a7bdd35f0a3308a822f409\";a:4:{s:10:\"expiration\";i:1571383330;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36\";s:5:\"login\";i:1570173730;}s:64:\"aa7ab37adbb9fdadfcb70295c530e617dc32cc8a8a3d0085f692b660483c614b\";a:4:{s:10:\"expiration\";i:1571385525;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36\";s:5:\"login\";i:1570175925;}s:64:\"95f1d0f65d0323e2ea8f18e3abedf58b89602e7224282433355b04bc4f55cf46\";a:4:{s:10:\"expiration\";i:1571678931;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36\";s:5:\"login\";i:1570469331;}s:64:\"068fc52b4f7b694445d56f32b38cf07210a39de28c63f8f5eddab86a21765332\";a:4:{s:10:\"expiration\";i:1571707468;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36\";s:5:\"login\";i:1570497868;}s:64:\"8061a6a7672fe7cbc41434660289d5f8b854caf9e970b2afda5837b6cd94f0e8\";a:4:{s:10:\"expiration\";i:1571716371;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36\";s:5:\"login\";i:1570506771;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, '_woocommerce_tracks_anon_id', 'woo:SMmDJR6MO2hypOI1GlP03fYk'),
(19, 1, 'wc_last_active', '1570492800'),
(20, 1, 'wp_user-settings', 'libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1570091904'),
(22, 1, 'closedpostboxes_product', 'a:1:{i:0;s:10:\"postcustom\";}'),
(23, 1, 'metaboxhidden_product', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(24, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(25, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:21:\"add-post-type-product\";}'),
(26, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(27, 1, '_order_count', '0'),
(29, 1, 'nav_menu_recently_edited', '23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'woocomercee', '$P$BFrJXoKAb5livaOjmjWQ3AQyqMDuV3/', 'woocomercee', 'hayghene@gmail.com', '', '2019-10-03 07:09:46', '', 0, 'woocomercee');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_admin_notes`
--

DROP TABLE IF EXISTS `wp_wc_admin_notes`;
CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `icon`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`) VALUES
(1, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2019-10-05 10:17:06', NULL, 0),
(2, 'wc-admin-store-notice-giving-feedback', 'info', 'en_US', 'Review your experience', 'If you like WooCommerce Admin please leave us a 5 star rating. A huge thanks in advance!', 'info', '{}', 'unactioned', 'woocommerce-admin', '2019-10-06 11:30:31', NULL, 0),
(3, 'wc-admin-mobile-app', 'info', 'en_US', 'Install Woo mobile app', 'Install the WooCommerce mobile app to manage orders, receive sales notifications, and view key metrics — wherever you are.', 'phone', '{}', 'unactioned', 'woocommerce-admin', '2019-10-06 11:30:31', NULL, 0),
(4, 'wc-admin-facebook-extension', 'info', 'en_US', 'Market on Facebook', 'Grow your business by targeting the right people and driving sales with Facebook. You can install this free extension now.', 'thumbs-up', '{}', 'actioned', 'woocommerce-admin', '2019-10-06 11:30:31', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_admin_note_actions`
--

DROP TABLE IF EXISTS `wp_wc_admin_note_actions`;
CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`) VALUES
(1, 1, 'connect', 'Connect', '?page=wc-addons&section=helper', 'actioned', 0),
(2, 2, 'share-feedback', 'Review', 'https://wordpress.org/support/plugin/woocommerce-admin/reviews/?rate=5#new-post', 'actioned', 0),
(3, 3, 'learn-more', 'Learn more', 'https://woocommerce.com/mobile/', 'actioned', 0),
(4, 4, 'learn-more', 'Learn more', 'https://woocommerce.com/products/facebook/', 'unactioned', 0),
(5, 4, 'install-now', 'Install now', '', 'actioned', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_customer_lookup`
--

DROP TABLE IF EXISTS `wp_wc_customer_lookup`;
CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_download_log`
--

DROP TABLE IF EXISTS `wp_wc_download_log`;
CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_order_coupon_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_coupon_lookup`;
CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_order_product_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_product_lookup`;
CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_order_stats`
--

DROP TABLE IF EXISTS `wp_wc_order_stats`;
CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `gross_total` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_order_tax_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_tax_lookup`;
CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_product_meta_lookup`
--

DROP TABLE IF EXISTS `wp_wc_product_meta_lookup`;
CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`) VALUES
(13, '', 0, 0, '0.00', '0.00', 0, NULL, 'instock', 0, '0.00', 0),
(15, '', 0, 0, '200.00', '200.00', 1, NULL, 'instock', 0, '0.00', 0),
(22, '', 0, 0, '0.00', '0.00', 0, NULL, 'instock', 0, '0.00', 0),
(75, '', 0, 0, '400.00', '400.00', 1, NULL, 'instock', 0, '0.00', 0),
(78, '', 0, 0, '600.00', '600.00', 1, NULL, 'instock', 0, '0.00', 0),
(79, '', 0, 0, '200000.00', '200000.00', 0, NULL, 'instock', 0, '0.00', 0),
(80, '', 0, 0, '400.00', '400.00', 0, NULL, 'instock', 0, '0.00', 0),
(82, '', 0, 0, '300.00', '300.00', 1, NULL, 'instock', 0, '0.00', 0),
(83, '', 0, 0, '100.00', '100.00', 1, NULL, 'instock', 0, '0.00', 0),
(85, '', 0, 0, '50.00', '50.00', 1, NULL, 'instock', 0, '0.00', 0),
(87, '', 0, 0, '500.00', '500.00', 1, NULL, 'instock', 0, '0.00', 0),
(89, '', 0, 0, '300.00', '300.00', 1, NULL, 'instock', 0, '0.00', 0),
(104, '', 0, 0, '100.00', '100.00', 1, NULL, 'instock', 0, '0.00', 0),
(106, '', 0, 0, '300.00', '300.00', 1, NULL, 'instock', 0, '0.00', 0),
(108, '', 0, 0, '200.00', '200.00', 1, NULL, 'instock', 0, '0.00', 0),
(110, '', 0, 0, '50.00', '50.00', 1, NULL, 'instock', 0, '0.00', 0),
(112, '', 0, 0, '500.00', '500.00', 0, NULL, 'instock', 0, '0.00', 0),
(114, '', 0, 0, '100.00', '100.00', 0, NULL, 'instock', 0, '0.00', 0),
(116, '', 0, 0, '300.00', '300.00', 0, NULL, 'instock', 0, '0.00', 0),
(120, '', 0, 0, '300.00', '300.00', 1, NULL, 'instock', 0, '0.00', 0),
(122, '', 0, 0, '300.00', '300.00', 0, NULL, 'instock', 0, '0.00', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_tax_rate_classes`
--

DROP TABLE IF EXISTS `wp_wc_tax_rate_classes`;
CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wc_webhooks`
--

DROP TABLE IF EXISTS `wp_wc_webhooks`;
CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_api_keys`
--

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;
CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_attribute_taxonomies`
--

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;
CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_downloadable_product_permissions`
--

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;
CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_log`
--

DROP TABLE IF EXISTS `wp_woocommerce_log`;
CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_order_itemmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;
CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_order_items`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;
CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_payment_tokenmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;
CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_payment_tokens`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;
CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_sessions`
--

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;
CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(2, '1', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:706:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:18:\"hayghene@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1570493824);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_shipping_zones`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;
CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Vietnam', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_shipping_zone_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;
CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'VN', 'country');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_shipping_zone_methods`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;
CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_tax_rates`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;
CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_woocommerce_tax_rate_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;
CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Chỉ mục cho bảng `wp_ewwwio_images`
--
ALTER TABLE `wp_ewwwio_images`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `path` (`path`(191)),
  ADD KEY `attachment_info` (`gallery`(3),`attachment_id`);

--
-- Chỉ mục cho bảng `wp_ewwwio_queue`
--
ALTER TABLE `wp_ewwwio_queue`
  ADD KEY `attachment_info` (`gallery`(3),`attachment_id`);

--
-- Chỉ mục cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Chỉ mục cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Chỉ mục cho bảng `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Chỉ mục cho bảng `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Chỉ mục cho bảng `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Chỉ mục cho bảng `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Chỉ mục cho bảng `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Chỉ mục cho bảng `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Chỉ mục cho bảng `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`);

--
-- Chỉ mục cho bảng `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Chỉ mục cho bảng `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Chỉ mục cho bảng `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Chỉ mục cho bảng `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Chỉ mục cho bảng `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Chỉ mục cho bảng `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Chỉ mục cho bảng `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Chỉ mục cho bảng `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Chỉ mục cho bảng `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Chỉ mục cho bảng `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Chỉ mục cho bảng `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Chỉ mục cho bảng `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Chỉ mục cho bảng `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Chỉ mục cho bảng `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT cho bảng `wp_ewwwio_images`
--
ALTER TABLE `wp_ewwwio_images`
  MODIFY `id` int(14) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3032;

--
-- AUTO_INCREMENT cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=989;

--
-- AUTO_INCREMENT cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
