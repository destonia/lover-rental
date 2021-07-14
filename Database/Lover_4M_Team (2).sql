-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th7 08, 2021 lúc 11:16 PM
-- Phiên bản máy phục vụ: 10.3.29-MariaDB-0ubuntu0.20.04.1
-- Phiên bản PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `Lover_4M_Team`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mooney` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `accounts`
--

INSERT INTO `accounts` (`id`, `mooney`, `created_at`, `updated_at`) VALUES
(1, 99999999, NULL, NULL),
(2, 9999, '2021-07-05 19:00:35', '2021-07-05 19:00:35'),
(3, 4750000, NULL, '2021-07-08 08:26:32'),
(4, 8000, NULL, NULL),
(5, 99999999, '2021-07-05 19:18:12', '2021-07-05 19:18:12'),
(6, 51999999, '2021-07-05 19:32:09', '2021-07-05 19:36:15'),
(7, 99999999, '2021-07-05 19:38:34', '2021-07-05 19:38:34'),
(8, 99999999, '2021-07-05 19:41:29', '2021-07-05 19:41:29'),
(9, 66249999, '2021-07-05 19:44:47', '2021-07-08 08:58:12'),
(10, 99999999, '2021-07-05 19:53:21', '2021-07-05 19:53:21'),
(11, 99279999, '2021-07-05 19:56:50', '2021-07-05 23:44:40'),
(12, 99999999, '2021-07-06 01:15:59', '2021-07-06 01:15:59'),
(13, 99999999, '2021-07-07 00:01:20', '2021-07-07 00:01:20'),
(14, 89199999, '2021-07-07 01:19:13', '2021-07-07 01:41:42'),
(15, 99999999, '2021-07-07 22:03:56', '2021-07-07 22:03:56'),
(16, 91599999, '2021-07-08 06:48:47', '2021-07-08 08:32:15'),
(17, 99999999, '2021-07-08 08:59:39', '2021-07-08 08:59:39'),
(18, 99999999, '2021-07-08 09:11:12', '2021-07-08 09:11:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `albums`
--

CREATE TABLE `albums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `filePath` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `albums`
--

INSERT INTO `albums` (`id`, `user_id`, `filePath`, `created_at`, `updated_at`) VALUES
(1, 5, 'images/albumUsers/16256522650.jpg', '2021-07-07 03:04:25', '2021-07-07 03:04:25'),
(2, 5, 'images/albumUsers/16256522651.jpg', '2021-07-07 03:04:25', '2021-07-07 03:04:25'),
(3, 5, 'images/albumUsers/16256522652.jpg', '2021-07-07 03:04:25', '2021-07-07 03:04:25'),
(4, 9, 'images/albumUsers/16257597440.jpg', '2021-07-08 08:55:44', '2021-07-08 08:55:44'),
(5, 9, 'images/albumUsers/16257597441.jpg', '2021-07-08 08:55:44', '2021-07-08 08:55:44'),
(6, 9, 'images/albumUsers/16257597442.jpg', '2021-07-08 08:55:44', '2021-07-08 08:55:44'),
(7, 17, 'images/albumUsers/16257600690.jpg', '2021-07-08 09:01:09', '2021-07-08 09:01:09'),
(8, 17, 'images/albumUsers/16257600691.jpg', '2021-07-08 09:01:09', '2021-07-08 09:01:09'),
(9, 17, 'images/albumUsers/16257600692.jpg', '2021-07-08 09:01:09', '2021-07-08 09:01:09'),
(10, 17, 'images/albumUsers/16257600693.jpg', '2021-07-08 09:01:09', '2021-07-08 09:01:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `service_provider_id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `service_provider_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 14, 5, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-07 01:33:53', '2021-07-07 01:33:53'),
(2, 14, 5, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-07 01:34:26', '2021-07-07 01:34:26'),
(3, 14, 5, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-07 01:34:26', '2021-07-07 01:34:26'),
(4, 14, 5, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-07 01:34:27', '2021-07-07 01:34:27'),
(5, 14, 5, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-07 01:42:15', '2021-07-07 01:42:15'),
(6, 14, 5, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-07 01:42:37', '2021-07-07 01:42:37'),
(7, 9, 4, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 02:43:29', '2021-07-08 02:43:29'),
(8, 9, 4, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 02:57:18', '2021-07-08 02:57:18'),
(9, 9, 4, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 03:03:35', '2021-07-08 03:03:35'),
(10, 9, 4, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 03:23:28', '2021-07-08 03:23:28'),
(11, 9, 4, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 03:33:21', '2021-07-08 03:33:21'),
(12, 9, 4, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 03:45:51', '2021-07-08 03:45:51'),
(13, 9, 4, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 03:50:32', '2021-07-08 03:50:32'),
(14, 9, 4, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 03:50:33', '2021-07-08 03:50:33'),
(15, 9, 4, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 03:50:33', '2021-07-08 03:50:33'),
(16, 9, 4, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 03:50:35', '2021-07-08 03:50:35'),
(17, 9, 4, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 03:50:35', '2021-07-08 03:50:35'),
(18, 9, 4, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 03:53:50', '2021-07-08 03:53:50'),
(19, 9, 4, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 03:54:55', '2021-07-08 03:54:55'),
(20, 9, 4, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 03:58:38', '2021-07-08 03:58:38'),
(21, 9, 4, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 04:09:58', '2021-07-08 04:09:58'),
(22, 9, 4, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 04:09:59', '2021-07-08 04:09:59'),
(23, 9, 4, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 04:10:00', '2021-07-08 04:10:00'),
(24, 9, 4, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 04:10:00', '2021-07-08 04:10:00'),
(25, 9, 4, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 04:10:01', '2021-07-08 04:10:01'),
(26, 9, 4, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 04:11:32', '2021-07-08 04:11:32'),
(27, 9, 4, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 04:12:18', '2021-07-08 04:12:18'),
(28, 9, 4, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 04:12:19', '2021-07-08 04:12:19'),
(29, 9, 4, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 04:12:20', '2021-07-08 04:12:20'),
(30, 9, 4, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 04:22:23', '2021-07-08 04:22:23'),
(31, 9, 4, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 04:25:55', '2021-07-08 04:25:55'),
(32, 3, 4, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 08:18:48', '2021-07-08 08:18:48'),
(33, 3, 6, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 08:27:20', '2021-07-08 08:27:20'),
(34, 16, 6, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 08:32:42', '2021-07-08 08:32:42'),
(35, 9, 5, 'Người yêu mà bạn thuê đã xác nhận đơn rồi', '2021-07-08 08:58:41', '2021-07-08 08:58:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_06_29_015035_create_albums_table', 1),
(6, '2021_06_29_015419_create_services_table', 1),
(7, '2021_06_30_004141_create_user_services_table', 1),
(8, '2021_06_30_005614_create_orders_table', 1),
(9, '2021_06_30_011559_create_order_details_table', 1),
(10, '2021_07_03_033259_create_accounts_table', 1),
(11, '2021_07_05_161502_create_messages_table', 1),
(12, '2021_07_07_083709_add_view_to_user', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `service_provider_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `service_provider_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 4, 'done', '2021-07-08 08:17:50', '2021-07-08 08:25:34'),
(2, 3, 6, 'done', '2021-07-08 08:26:32', '2021-07-08 08:27:33'),
(3, 16, 6, 'done', '2021-07-08 08:32:15', '2021-07-08 08:32:55'),
(4, 9, 5, 'done', '2021-07-08 08:58:12', '2021-07-08 08:58:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` double(8,2) NOT NULL,
  `start_time` time NOT NULL,
  `start_at` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `address`, `time`, `start_time`, `start_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ha noi', 0.50, '10:17:00', '2021-07-08', '2021-07-08 08:17:50', '2021-07-08 08:17:50'),
(2, 2, 'Ha noi', 0.50, '10:26:00', '2021-07-08', '2021-07-08 08:26:32', '2021-07-08 08:26:32'),
(3, 3, 'Ha noi', 0.50, '10:32:00', '2021-07-08', '2021-07-08 08:32:15', '2021-07-08 08:32:15'),
(4, 4, 'Ha noi', 0.50, '10:58:00', '2021-06-30', '2021-07-08 08:58:12', '2021-07-08 08:58:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(24, 'App\\Models\\User', 13, 'chichi@gmail.com', 'd9d219827c426c11925bae70c45d76a942677aa39ea9a3c1969961b1b3edfcbb', '[\"*\"]', NULL, '2021-07-07 00:01:20', '2021-07-07 00:01:20'),
(25, 'App\\Models\\User', 13, 'chichi@gmail.com', '302b1812fb47e2d0ec192ec7b08b50ce1a53f4c4abb2e22aa4800f1fd8ccb49f', '[\"*\"]', '2021-07-07 00:24:15', '2021-07-07 00:01:33', '2021-07-07 00:24:15'),
(142, 'App\\Models\\User', 5, 'hani@gmail.com', '8e75783fcec9d9138cd921d2f65fe4563b80fa7b264c542567dde3c317bac93a', '[\"*\"]', '2021-07-08 09:09:12', '2021-07-08 08:38:45', '2021-07-08 09:09:12'),
(146, 'App\\Models\\User', 18, 'nganlee@gmail.com', '241dd4336de99496cdc4b56d2af76eed8c88fe2fc7a9f62cb3121e9d991ff5a8', '[\"*\"]', NULL, '2021-07-08 09:11:12', '2021-07-08 09:11:12'),
(147, 'App\\Models\\User', 18, 'nganlee@gmail.com', '162332458ff3b32a2cd90f1dbeb9eda95b1abad560af5eb866d82c0c0f97e2c1', '[\"*\"]', '2021-07-08 09:14:27', '2021-07-08 09:11:24', '2021-07-08 09:14:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `services`
--

INSERT INTO `services` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Ra mắt người nhà', 'default', '2021-07-05 19:00:35', '2021-07-05 19:00:35'),
(2, 'Ra mắt bạn bè', 'default', '2021-07-05 19:00:35', '2021-07-05 19:00:35'),
(3, 'Du lịch chung cùng nhóm bạn', 'default', '2021-07-05 19:00:35', '2021-07-05 19:00:35'),
(4, 'Đi chơi chung', 'default', '2021-07-05 19:00:35', '2021-07-05 19:00:35'),
(5, 'Tham dự sinh nhật', 'default', '2021-07-05 19:00:35', '2021-07-05 19:00:35'),
(6, 'Trò chuyện offline', 'default', '2021-07-05 19:00:35', '2021-07-05 19:00:35'),
(7, 'Trò chuyện online', 'default', '2021-07-05 19:00:35', '2021-07-05 19:00:35'),
(8, 'Đi chơi tết', 'default', '2021-07-05 19:00:35', '2021-07-05 19:00:35'),
(9, 'Đi chơi ngày lễ', 'default', '2021-07-05 19:00:35', '2021-07-05 19:00:35'),
(10, 'Nắm tay', 'free', '2021-07-05 19:00:35', '2021-07-05 19:00:35'),
(11, 'Nói yêu', 'free', '2021-07-05 19:00:35', '2021-07-05 19:00:35'),
(12, 'Nhìn mắt', 'free', '2021-07-05 19:00:35', '2021-07-05 19:00:35'),
(13, 'Hôn tay', 'extra', '2021-07-05 19:00:35', '2021-07-05 19:00:35'),
(14, 'Ôm', 'extra', '2021-07-05 19:00:35', '2021-07-05 19:00:35'),
(15, 'Nhõng nhẽo', 'extra', '2021-07-05 19:00:35', '2021-07-05 19:00:35'),
(16, 'Cử chỉ thân mật', 'extra', '2021-07-05 19:00:35', '2021-07-05 19:00:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_day` date DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'images/users/1625537597.png',
  `height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `hobby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `introducion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `requirement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `is_admin` int(11) NOT NULL DEFAULT 0,
  `is_service_provider` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_vip` int(11) NOT NULL DEFAULT 0,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `count_view` int(11) DEFAULT NULL,
  `count_rent` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `birth_day`, `gender`, `city`, `nation`, `avatar`, `height`, `weight`, `hobby`, `introducion`, `requirement`, `facebook`, `is_admin`, `is_service_provider`, `is_active`, `is_vip`, `price`, `count_view`, `count_rent`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$Zk9GmMu.o.wpzC4q4bKEe..pT/xHgYok9e3lPIp1YwzES7AAMhgZ2', NULL, '1991-02-02', 'male', 'Hà Nội', 'Vietnam', 'images/users/1625716625.jpg', 'null', 'null', 'null', 'null', 'null', 'null', 1, 0, 1, 0, 'null', NULL, NULL, '2021-07-05 19:00:35', '2021-07-07 20:57:05'),
(2, 'Chung', 'chung@gmail.com', NULL, '$2y$10$BqnXGfIozJxoT/1w6ZSR7eKVoAkVSdKUgHrsTIWA.Y9F2hDb5T4Na', NULL, '1991-02-02', NULL, 'Hanoi', 'Vietnam', 'user_avatar', '', '', '', '', '', '', 0, 0, 1, 0, '10', NULL, NULL, '2021-07-05 19:00:35', '2021-07-05 19:00:35'),
(3, 'Thanh', 'thanh@gmail.com', NULL, '$2y$10$McUxVZSMN5530KawYqXi/ORlAqDKY6DDP75ZCB08uIDTQipR5miTy', NULL, '1991-02-02', 'Male', 'Hanoi', 'Vietnam', 'images/users/1625537829.jpg', '172', '68', 'the thao', 'thich the thao va di du lich', 'tre trung xinh dep', NULL, 0, 1, 1, 1, '30000', 12, NULL, '2021-07-05 19:00:35', '2021-07-08 08:38:57'),
(4, 'Nhung', 'nhung@gmail.com', NULL, '$2y$10$snDXB/nCJ1dvSzDFfp5sZOgA0tEjziXYJQAsejs4ORnSv5IS5XP5.', NULL, '1991-02-02', 'Female', 'Hanoi', 'Vietnam', 'images/users/1625537742.jpg', '167', '54', 'Du lich', 'xin chao moi nguoi, em la be Nhung', 'lich su', NULL, 0, 1, 1, 1, '500000', 14, 24, '2021-07-05 19:00:35', '2021-07-08 08:17:50'),
(5, 'hani', 'hani@gmail.com', NULL, '$2y$10$uQa/GzJL.vtmZGfaZafuRuTF1EgABc6zfGGl4rJj1P3NIgQpPV8Ru', NULL, '2002-11-14', 'Female', 'Nam Dinh', 'Viet Nam', 'images/users/1625720054.jpg', '161', '53', 'an va ngu', 'chao moi nguoi, em la Hani dang yeu', 'trang treo dep trai', 'null', 0, 1, 1, 1, '1200000', 13, 13, '2021-07-05 19:18:12', '2021-07-08 08:58:12'),
(6, 'ziny', 'ziny@gmail.com', NULL, '$2y$10$0obPiR6cJX5XvyrOJD8pyONHo.LYn.TlcBScfS2EHTVzSbNiTLqpa', NULL, '2004-02-06', 'Female', 'ha noi', 'Viet Nam', 'images/users/1625538846.jpg', '168', '50', 'ca hat', '1 co be dang yeu', 'lich su', NULL, 0, 1, 1, 1, '6000000', 4, 3, '2021-07-05 19:32:09', '2021-07-08 08:32:15'),
(7, 'jamie', 'jamie@gmail.com', NULL, '$2y$10$Je3xTUPGmpRWmGMLbcc7PegiEMpt7JbpNqL5yglpCrNMjercR7fLi', NULL, '2000-01-06', 'Female', 'Thai Nguyen', 'Viet Nam', 'images/users/1625539215.jpg', '170', '54', 'yeu mau hong, ghet su gia doi', 'chao moi nguoi, minh la Jamie^^', 'trang treo, cao to', NULL, 0, 1, 1, 1, '1000000', 1, 1, '2021-07-05 19:38:34', '2021-07-07 00:35:07'),
(8, 'quynh tran', 'quynhtranjp@gmail.com', NULL, '$2y$10$P8sqZ8TogilkMjpGMa70M.kY/4780ee4x3ylu5vRsyX3Lm2Q5MQcm', NULL, '2004-11-06', 'Female', 'ha noi', 'Viet Nam', 'images/users/1625539374.jpg', '168', '68', 'Du lich', 'minh la quynh tran JP', 'vietnamese', NULL, 0, 1, 1, 1, '750000', NULL, NULL, '2021-07-05 19:41:29', '2021-07-05 23:34:26'),
(9, 'Quan Le', 'quanle@gmail.com', NULL, '$2y$10$RHiGkei0VmwW2O8ja4beAe935lTpOC6QZfEc9P6wKQ6KycvxhA/cW', NULL, '1997-12-06', 'Female', 'Thai Nguyen', 'Viet Nam', 'images/users/1625759820.jpg', '172', '68', 'an va ngu', 'chao moi nguoi! minh la QUanle <3', 'quai vat ba dau', 'null', 0, 1, 1, 1, '50000', NULL, NULL, '2021-07-05 19:44:47', '2021-07-08 08:57:00'),
(10, 'XuKa', 'xuka@gmail.com', NULL, '$2y$10$7ERoTXCfxXURSNZwuWOgu.1mbyjIsJ7g8B1tJ10B9YmW03gOtBqHu', NULL, '2006-12-06', 'Female', 'ha noi', 'Viet Nam', 'images/users/1625540126.jpg', '168', '52', 'ca hat va nghe thuat', 'chao moi nguoi, minh la xuka ^^', 'trang treo, lich su', NULL, 0, 1, 1, 1, '10000000', NULL, NULL, '2021-07-05 19:53:21', '2021-07-05 23:34:28'),
(11, 'nami', 'nami@gmail.com', NULL, '$2y$10$qa95cRxWg0cnykZrOfxcxeESRNSkGwUPnL2b.bTCGnkZKE1i46hsG', NULL, '1993-12-06', 'Female', 'HCM', 'Viet Nam', 'images/users/1625540329.jpg', '154', '46', 'thich tra sua', 'anh phai chieu em chu', 'anh phai chieu em chu', 'null', 0, 1, 0, 1, '720000', NULL, NULL, '2021-07-05 19:56:50', '2021-07-05 23:41:03'),
(12, 'thaopt', 'thaopt@gmail.com', NULL, '$2y$10$rJKku5/fDpLgDQpW980Rn.6cidAwM.76RgiJyb0LNRzuGocD/BTAC', NULL, '2004-02-06', 'Female', 'Nam Dinh', 'Viet Nam', 'images/users/1625559455.jpg', '167', '52', 'buon ban vong tram', 'chao moi nguoi, em la Joonie', 'dem trai', NULL, 0, 0, 1, 0, '450000', NULL, NULL, '2021-07-06 01:15:59', '2021-07-06 01:17:35'),
(13, 'chichi', 'chichi@gmail.com', NULL, '$2y$10$DygZNzGJmg1do73RJEvQfuG8tggQNn4Z2AlfO4iXC5GhT83tR5X2i', NULL, '2000-01-07', 'Female', 'Hà Nội', 'Viet Nam', 'images/users/1625641798.jpg', '166', '46', 'yeu mau hong, ghet su gia doi', 'Chào mọi người! em là ChiChi! Hãy thuê em và trải nghiệm', 'Cao, trắng, thơm', 'null', 0, 1, 1, 1, '650000', NULL, NULL, '2021-07-07 00:01:20', '2021-07-07 01:49:03'),
(14, 'Duyen', 'duyen@gmail.com', NULL, '$2y$10$o36SXi0hNUR.34pLrUuI8uwq/BMmwmTasqf9kr4qvoRxzgQ.DQC7K', NULL, '2021-07-07', 'Female', 'Ha Noi', 'Viet Nam', 'images/users/1625648813.jpg', '167', '68', 'yeu mau hong, ghet su gia doi', 'Chào các anh, em là Duyên!!! em thích môtô và các anh!!!', 'To cao', 'null', 0, 1, 1, 1, '600000', NULL, NULL, '2021-07-07 01:19:13', '2021-07-07 02:06:53'),
(15, 'son', 'son@gmail.com', NULL, '$2y$10$Qj4wymAFsiWkplM1JxnlhO8vWf5huxPdRAIud7AsJFenn8wqvxMia', NULL, NULL, NULL, NULL, NULL, 'images/users/1625537597.png', '', '', '', '', '', '', 0, 0, 1, 0, '', NULL, NULL, '2021-07-07 22:03:56', '2021-07-07 22:03:56'),
(16, 'long', 'long@gmail.com', NULL, '$2y$10$ZHownHZm.n8voni2XSR1HOI/Ibq80KWRayvHVs3sirnu.2VFl/sja', NULL, '2012-01-08', 'male', 'Hà Nội', 'Viet Nam', 'images/users/1625752304.jpg', '167', '68', 'thich tra sua', 'chào em!! anh là long', 'xinh gái', NULL, 0, 1, 1, 0, '100000', NULL, NULL, '2021-07-08 06:48:47', '2021-07-08 06:56:25'),
(17, 'trang', 'trangle@gmail.com', NULL, '$2y$10$4L2FPWuFSVOxf64KVC8XoubJyA0M0hXLBmGkuB4oN4/FVTcOamaYq', NULL, '2021-07-16', 'male', 'Hà Nội', 'Việt Nam', 'images/users/1625760060.jpg', '167', '45', 'thich tra sua', 'Hãy thuê em và cảm nhận!!!', 'lịch sự', NULL, 0, 1, 1, 0, '100000', NULL, NULL, '2021-07-08 08:59:39', '2021-07-08 09:14:18'),
(18, 'nganlee', 'nganlee@gmail.com', NULL, '$2y$10$hHurfPtAg2JxISsIgEdZnOhcSnij0vEPh3mdELSVMCXtqq.m6aWxu', NULL, '2021-07-08', 'Female', 'Hà Nội', 'Việt Nam', 'images/users/1625760793.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 1, 0, NULL, NULL, NULL, '2021-07-08 09:11:12', '2021-07-08 09:14:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_services`
--

CREATE TABLE `user_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_services`
--

INSERT INTO `user_services` (`id`, `user_id`, `service_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2021-07-05 19:00:35', '2021-07-05 19:00:35'),
(2, 2, 2, '2021-07-05 19:00:35', '2021-07-05 19:00:35'),
(3, 2, 3, '2021-07-05 19:00:35', '2021-07-05 19:00:35'),
(4, 2, 4, '2021-07-05 19:00:35', '2021-07-05 19:00:35'),
(5, 2, 5, '2021-07-05 19:00:35', '2021-07-05 19:00:35'),
(6, 2, 7, '2021-07-05 19:00:35', '2021-07-05 19:00:35'),
(7, 2, 6, '2021-07-05 19:00:35', '2021-07-05 19:00:35'),
(8, 2, 8, '2021-07-05 19:00:35', '2021-07-05 19:00:35');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `albums_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_user_id_foreign` (`user_id`),
  ADD KEY `messages_service_provider_id_foreign` (`service_provider_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_service_provider_id_foreign` (`service_provider_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `user_services`
--
ALTER TABLE `user_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_services_user_id_foreign` (`user_id`),
  ADD KEY `user_services_service_id_foreign` (`service_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT cho bảng `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `user_services`
--
ALTER TABLE `user_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_id_foreign` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_service_provider_id_foreign` FOREIGN KEY (`service_provider_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_service_provider_id_foreign` FOREIGN KEY (`service_provider_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Các ràng buộc cho bảng `user_services`
--
ALTER TABLE `user_services`
  ADD CONSTRAINT `user_services_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`),
  ADD CONSTRAINT `user_services_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
