-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 17, 2026 lúc 07:47 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `expoplus.crm`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_activity`
--

CREATE TABLE `vdh_activity` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` enum('user','organizer') DEFAULT 'user' COMMENT 'user / organizer',
  `content` text DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `ip_address` varchar(20) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vdh_activity`
--

INSERT INTO `vdh_activity` (`id`, `user_id`, `type`, `content`, `data`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(1, 1, 'user', 'Lưu dữ liệu Ban tổ chức Vũ Đức Hồng', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-15 14:40:03', '2026-03-15 14:40:03'),
(2, 1, 'user', 'Lưu dữ liệu Triển lãm Entech Hanoi 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-15 14:41:33', '2026-03-15 14:41:33'),
(3, 4, 'organizer', 'hongvu.media@gmail.com đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-17 08:30:01', '2026-03-17 08:30:01'),
(4, 1, 'user', 'hongvu.media@gmail.com đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-17 09:08:39', '2026-03-17 09:08:39'),
(5, NULL, 'organizer', 'hongvu.media@gmail.com đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-17 09:09:44', '2026-03-17 09:09:44'),
(6, NULL, 'organizer', 'hongvu.media@gmail.com đăng xuất thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-17 09:15:44', '2026-03-17 09:15:44'),
(7, 4, 'organizer', 'hongvu.media@gmail.com đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-17 09:19:52', '2026-03-17 09:19:52'),
(8, 4, 'organizer', 'hongvu.media@gmail.com đăng xuất thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-17 09:21:10', '2026-03-17 09:21:10'),
(9, 4, 'organizer', 'hongvu.media@gmail.com đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-17 09:27:14', '2026-03-17 09:27:14'),
(10, 4, 'organizer', 'hongvu.media@gmail.com đăng xuất thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-17 09:29:06', '2026-03-17 09:29:06'),
(11, 4, 'organizer', 'hongvu.media@gmail.com đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-17 09:29:09', '2026-03-17 09:29:09'),
(12, 4, 'organizer', 'hongvu.media@gmail.com đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-17 13:44:35', '2026-03-17 13:44:35'),
(13, 4, 'organizer', 'hongvu.media@gmail.com đăng xuất thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-17 13:53:32', '2026-03-17 13:53:32'),
(14, 1, 'user', 'Lưu dữ liệu Khách hàng zz@zhongzhenglock.com', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-17 14:10:45', '2026-03-17 14:10:45'),
(15, 3, 'user', 'Lưu dữ liệu Khách hàng zsm8886@styoungwon.co.kr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-17 14:11:45', '2026-03-17 14:11:45'),
(16, 1, 'user', 'Lưu sơ đồ triển lãmVCAE 2025', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-17 14:17:43', '2026-03-17 14:17:43'),
(17, 1, 'user', 'Lưu câu hỏi Bạn quan tâm lĩnh vực gì? (triển lãm Semicon Vietnam 2025)', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-17 14:20:54', '2026-03-17 14:20:54'),
(18, 1, 'user', 'Cập nhật thứ tự câu hỏi', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-17 14:22:00', '2026-03-17 14:22:00'),
(19, 1, 'user', 'Cập nhật cài đặt hệ thống', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-17 14:24:48', '2026-03-17 14:24:48'),
(20, 4, 'organizer', 'hongvu.media@gmail.com đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 03:12:52', '2026-03-19 03:12:52'),
(21, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Nguyễn Phi Hùng', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 04:02:40', '2026-03-19 04:02:40'),
(22, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Nguyễn Phi Hùng', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 04:03:00', '2026-03-19 04:03:00'),
(23, 4, 'organizer', 'Lưu ban tổ chức công ty Global Expo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 04:34:16', '2026-03-19 04:34:16'),
(24, 4, 'organizer', 'Lưu ban tổ chức công ty Global Expo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 04:34:35', '2026-03-19 04:34:35'),
(25, 4, 'organizer', 'Lưu ban tổ chức công ty Global Expo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 04:35:56', '2026-03-19 04:35:56'),
(26, 4, 'organizer', 'Lưu ban tổ chức công ty Global Expo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 04:36:14', '2026-03-19 04:36:14'),
(27, 4, 'organizer', 'Lưu ban tổ chức công ty Global Expo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 04:36:40', '2026-03-19 04:36:40'),
(28, 4, 'organizer', 'Lưu ban tổ chức công ty Global Expo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 04:36:43', '2026-03-19 04:36:43'),
(29, 4, 'organizer', 'Lưu ban tổ chức công ty Global Expo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 04:36:50', '2026-03-19 04:36:50'),
(30, 4, 'organizer', 'Lưu ban tổ chức công ty Global Expo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 04:36:54', '2026-03-19 04:36:54'),
(31, 4, 'organizer', 'Lưu ban tổ chức công ty Global Expo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 04:43:16', '2026-03-19 04:43:16'),
(32, 4, 'organizer', 'Lưu ban tổ chức công ty Global Expo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 04:43:48', '2026-03-19 04:43:48'),
(33, 4, 'organizer', 'Lưu ban tổ chức công ty Global Expo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 04:43:53', '2026-03-19 04:43:53'),
(34, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Nguyễn Phi Hùng', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 04:48:07', '2026-03-19 04:48:07'),
(35, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Nguyễn Phi Hùng', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 04:48:48', '2026-03-19 04:48:48'),
(36, 4, 'organizer', 'Lưu ban tổ chức công ty CÔNG TY CP TỔ CHỨC SỰ KIỆN VÀ HỘI CHỢ TOÀN CẦU (GLOBAL EXPO)', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 04:57:07', '2026-03-19 04:57:07'),
(37, 4, 'organizer', 'Lưu ban tổ chức công ty CÔNG TY TNHH SỰ KIỆN TRIỂN LÃM VÀ XÚC TIẾN THƯƠNG MẠI CAMEL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 05:00:45', '2026-03-19 05:00:45'),
(38, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Trần Quang Vinh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 05:03:20', '2026-03-19 05:03:20'),
(39, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Trần Quang Vinh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 05:04:21', '2026-03-19 05:04:21'),
(40, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Trần Quang Vinh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 05:04:30', '2026-03-19 05:04:30'),
(41, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Linh Phong', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 05:05:45', '2026-03-19 05:05:45'),
(42, 4, 'organizer', 'Lưu ban tổ chức công ty CÔNG TY CP TỔ CHỨC SỰ KIỆN VÀ HỘI CHỢ TOÀN CẦU (GLOBAL EXPO)', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 05:06:17', '2026-03-19 05:06:17'),
(43, 4, 'organizer', 'Lưu ban tổ chức công ty CÔNG TY CP TỔ CHỨC SỰ KIỆN VÀ HỘI CHỢ TOÀN CẦU (GLOBAL EXPO)', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 05:08:29', '2026-03-19 05:08:29'),
(44, 4, 'organizer', 'Lưu ban tổ chức công ty CÔNG TY CP TỔ CHỨC SỰ KIỆN VÀ HỘI CHỢ TOÀN CẦU (GLOBAL EXPO)', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 05:09:25', '2026-03-19 05:09:25'),
(45, 4, 'organizer', 'Lưu ban tổ chức công ty CÔNG TY CP TỔ CHỨC SỰ KIỆN VÀ HỘI CHỢ TOÀN CẦU (GLOBAL EXPO)', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 05:09:29', '2026-03-19 05:09:29'),
(46, 4, 'organizer', 'Lưu triển lãm Entech Hanoi 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 05:11:47', '2026-03-19 05:11:47'),
(47, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng xuất thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:12:01', '2026-03-19 06:12:01'),
(48, 1, 'user', 'hongvu.media@gmail.com đăng nhập thất bại', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:14:25', '2026-03-19 06:14:25'),
(49, 1, 'user', 'nguyenphihung@gmail.com đăng nhập thất bại', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:14:34', '2026-03-19 06:14:34'),
(50, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:14:56', '2026-03-19 06:14:56'),
(51, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng xuất thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:15:00', '2026-03-19 06:15:00'),
(52, 1, 'user', 'Lưu ban tổ chức công ty CÔNG TY CP TỔ CHỨC SỰ KIỆN VÀ HỘI CHỢ TOÀN CẦU (GLOBAL EXPO)', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:15:14', '2026-03-19 06:15:14'),
(53, 1, 'user', 'Lưu ban tổ chức công ty CÔNG TY CP TỔ CHỨC SỰ KIỆN VÀ HỘI CHỢ TOÀN CẦU (GLOBAL EXPO)', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:16:42', '2026-03-19 06:16:42'),
(54, 1, 'user', 'Lưu dữ liệu Ban tổ chức Nguyễn Phi Hùng', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:16:49', '2026-03-19 06:16:49'),
(55, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:16:52', '2026-03-19 06:16:52'),
(56, 1, 'user', 'Lưu dữ liệu Ban tổ chức Nguyễn Phi Hùng', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:18:15', '2026-03-19 06:18:15'),
(57, 1, 'user', 'Lưu ban tổ chức công ty CÔNG TY CP TỔ CHỨC SỰ KIỆN VÀ HỘI CHỢ TOÀN CẦU (GLOBAL EXPO)', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:18:46', '2026-03-19 06:18:46'),
(58, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:18:49', '2026-03-19 06:18:49'),
(59, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:21:19', '2026-03-19 06:21:19'),
(60, 1, 'user', 'Lưu ban tổ chức công ty CÔNG TY CP TỔ CHỨC SỰ KIỆN VÀ HỘI CHỢ TOÀN CẦU (GLOBAL EXPO)', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:21:23', '2026-03-19 06:21:23'),
(61, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:21:30', '2026-03-19 06:21:30'),
(62, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Nguyễn Phi Hùng', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:21:37', '2026-03-19 06:21:37'),
(63, 1, 'user', 'Lưu dữ liệu Ban tổ chức Nguyễn Phi Hùng', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:22:58', '2026-03-19 06:22:58'),
(64, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:23:00', '2026-03-19 06:23:00'),
(65, 4, 'organizer', 'Lưu triển lãm Entech Hanoi 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:33:00', '2026-03-19 06:33:00'),
(66, 4, 'organizer', 'Lưu triển lãm Entech Hanoi 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:33:09', '2026-03-19 06:33:09'),
(67, 4, 'organizer', 'Lưu triển lãm Semicon Vietnam 2025', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:33:19', '2026-03-19 06:33:19'),
(68, 4, 'organizer', 'Lưu triển lãm Entech Hanoi 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:33:33', '2026-03-19 06:33:33'),
(69, 4, 'organizer', 'Lưu triển lãm Entech Hanoi 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:33:49', '2026-03-19 06:33:49'),
(70, 4, 'organizer', 'Lưu triển lãm VCAE 2025', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:34:26', '2026-03-19 06:34:26'),
(71, 4, 'organizer', 'Lưu triển lãm VIEE Expo 2025', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:43:55', '2026-03-19 06:43:55'),
(72, 4, 'organizer', 'Lưu triển lãm VTR & CON 2025', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:44:00', '2026-03-19 06:44:00'),
(73, 4, 'organizer', 'Lưu triển lãm HE Expo 2025', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:44:10', '2026-03-19 06:44:10'),
(74, 4, 'organizer', 'Lưu triển lãm VRT & CON C.B.M.E', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:44:20', '2026-03-19 06:44:20'),
(75, 4, 'organizer', 'Lưu triển lãm VRT & CON C.B.M.E', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:50:29', '2026-03-19 06:50:29'),
(76, 4, 'organizer', 'Lưu triển lãm VTR & CON 2025', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:50:38', '2026-03-19 06:50:38'),
(77, 4, 'organizer', 'Lưu triển lãm VIEE Expo 2025', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:50:44', '2026-03-19 06:50:44'),
(78, 4, 'organizer', 'Lưu triển lãm ENVIROTEX 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:51:01', '2026-03-19 06:51:01'),
(79, 4, 'organizer', 'Lưu triển lãm ENVIROTEX 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:51:51', '2026-03-19 06:51:51'),
(80, 4, 'organizer', 'Lưu triển lãm Semicon Vietnam 2025', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:51:57', '2026-03-19 06:51:57'),
(81, 4, 'organizer', 'Lưu triển lãm HE Expo 2025', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:52:05', '2026-03-19 06:52:05'),
(82, 4, 'organizer', 'Lưu triển lãm VCAE 2025', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 06:52:13', '2026-03-19 06:52:13'),
(83, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 08:54:16', '2026-03-19 08:54:16'),
(84, 6, 'organizer', 'camelevents.vn@gmail.com đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 09:51:39', '2026-03-19 09:51:39'),
(85, 4, 'organizer', 'Lưu phân quyền Organizer ADMIN', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 13:38:15', '2026-03-19 13:38:15'),
(86, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 13:39:15', '2026-03-19 13:39:15'),
(87, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 13:39:22', '2026-03-19 13:39:22'),
(88, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 13:39:28', '2026-03-19 13:39:28'),
(89, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 14:00:29', '2026-03-19 14:00:29'),
(90, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Nguyễn Phi Hùng', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 14:09:09', '2026-03-19 14:09:09'),
(91, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Nguyễn Phi Hùng', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 14:09:33', '2026-03-19 14:09:33'),
(92, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Nguyễn Phi Hùng', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 14:09:54', '2026-03-19 14:09:54'),
(93, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Nguyễn Phi Hùng', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 14:09:56', '2026-03-19 14:09:56'),
(94, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Nguyễn Phi Hùng', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 14:09:58', '2026-03-19 14:09:58'),
(95, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 14:11:21', '2026-03-19 14:11:21'),
(96, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 14:11:31', '2026-03-19 14:11:31'),
(97, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 14:11:35', '2026-03-19 14:11:35'),
(98, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 14:11:43', '2026-03-19 14:11:43'),
(99, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 14:21:13', '2026-03-19 14:21:13'),
(100, 4, 'organizer', 'Lưu phân quyền Organizer Sales', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-19 14:35:50', '2026-03-19 14:35:50'),
(101, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 01:32:44', '2026-03-20 01:32:44'),
(102, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Trần Quang Vinh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 01:41:25', '2026-03-20 01:41:25'),
(103, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 01:45:03', '2026-03-20 01:45:03'),
(104, 5, 'organizer', 'quangvinh@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 01:56:02', '2026-03-20 01:56:02'),
(105, 4, 'organizer', 'Lưu thành viên Trần Quang Vinh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 01:59:32', '2026-03-20 01:59:32'),
(106, 4, 'organizer', 'Lưu thành viên Nguyễn Phi Hùng', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 01:59:52', '2026-03-20 01:59:52'),
(107, 4, 'organizer', 'Cập nhật Hồ sơ ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 02:03:03', '2026-03-20 02:03:03'),
(108, 4, 'organizer', 'Cập nhật Hồ sơ nguyenphihung@globalexpo.com.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 02:04:55', '2026-03-20 02:04:55'),
(109, 1, 'user', 'Lưu dữ liệu Ban tổ chức Nguyễn Phi Hùng', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 02:05:33', '2026-03-20 02:05:33'),
(110, 1, 'user', 'Lưu khách hàng vuduchong112233@gmail.com', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 05:49:34', '2026-03-20 05:49:34'),
(111, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 07:45:28', '2026-03-20 07:45:28'),
(112, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 07:48:06', '2026-03-20 07:48:06'),
(113, 4, 'organizer', 'Lưu phân quyền Organizer Sales', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 07:48:54', '2026-03-20 07:48:54'),
(114, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 07:49:00', '2026-03-20 07:49:00'),
(115, 5, 'organizer', 'quangvinh@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 08:22:58', '2026-03-20 08:22:58'),
(116, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Trần Quang Vinh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 08:23:53', '2026-03-20 08:23:53'),
(117, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Trần Quang Vinh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 08:24:22', '2026-03-20 08:24:22'),
(118, 4, 'organizer', 'Lưu Exhibitor hongvu.media@gmail.com', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 08:54:32', '2026-03-20 08:54:32'),
(119, 4, 'organizer', 'Lưu Exhibitor hongvu.media@gmail.com', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 08:54:35', '2026-03-20 08:54:35'),
(120, 4, 'organizer', 'Lưu Exhibitor hongvu.media@gmail.com', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 08:54:38', '2026-03-20 08:54:38'),
(121, 4, 'organizer', 'Lưu Exhibitor hongvu.media@gmail.com', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 08:54:40', '2026-03-20 08:54:40'),
(122, 4, 'organizer', 'Lưu Exhibitor 652153992@qq.com', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 08:55:39', '2026-03-20 08:55:39'),
(123, 4, 'organizer', 'Lưu Exhibitor 652153992@qq.com', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 08:56:28', '2026-03-20 08:56:28'),
(124, 4, 'organizer', 'Lưu Exhibitor admin@titlepowers.com', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 08:56:46', '2026-03-20 08:56:46'),
(125, 4, 'organizer', 'Lưu triển lãm Semicon Vietnam 2025', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 09:30:16', '2026-03-20 09:30:16'),
(126, 5, 'organizer', 'quangvinh@globalexpo.com.vn đăng xuất thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 09:42:45', '2026-03-20 09:42:45'),
(127, 6, 'organizer', 'camelevents.vn@gmail.com đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 09:43:11', '2026-03-20 09:43:11'),
(128, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Linh Phong', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 09:43:18', '2026-03-20 09:43:18'),
(129, 6, 'organizer', 'Lưu Exhibitor vuduchong112233@gmail.com', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 10:50:46', '2026-03-20 10:50:46'),
(130, 6, 'organizer', 'Lưu Exhibitor vuduchong209305@gmail.com', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 10:52:02', '2026-03-20 10:52:02'),
(131, 6, 'organizer', 'Cập nhật Hồ sơ camelevents.vn@gmail.com', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 12:57:26', '2026-03-20 12:57:26'),
(132, 6, 'organizer', 'Cập nhật Hồ sơ camelevents.vn@gmail.com', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 12:57:29', '2026-03-20 12:57:29'),
(133, NULL, NULL, 'hongvu.media@gmail.com đăng nhập thất bại', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 23:56:22', '2026-03-20 23:56:22'),
(134, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-20 23:56:26', '2026-03-20 23:56:26'),
(135, 4, 'organizer', 'Cập nhật Hồ sơ nguyenphihung@globalexpo.com.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 00:37:00', '2026-03-21 00:37:00'),
(136, 4, 'organizer', 'Cập nhật Hồ sơ nguyenphihung@globalexpo.com.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 00:37:18', '2026-03-21 00:37:18'),
(137, 4, 'organizer', 'Lưu thành viên Nguyễn Phi Hùng', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 00:40:05', '2026-03-21 00:40:05'),
(138, 4, 'organizer', 'Lưu thành viên Nguyễn Phi Hùng', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 00:40:08', '2026-03-21 00:40:08'),
(139, 4, 'organizer', 'Lưu thành viên Nguyễn Phi Hùng', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 00:40:22', '2026-03-21 00:40:22'),
(140, NULL, NULL, 'vuduchong209305@gmail.com đăng nhập thất bại', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 09:01:36', '2026-03-21 09:01:36'),
(141, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 09:01:40', '2026-03-21 09:01:40'),
(142, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng xuất thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 09:22:39', '2026-03-21 09:22:39'),
(143, 1, 'user', 'vuduchong209305@gmail.com đăng nhập thất bại', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 11:33:59', '2026-03-21 11:33:59'),
(144, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 11:42:03', '2026-03-21 11:42:03'),
(145, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 11:43:58', '2026-03-21 11:43:58'),
(146, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 11:46:26', '2026-03-21 11:46:26'),
(147, 4, 'organizer', 'Gỡ bỏ 3 Doanh nghiệp ra khỏi Triển lãm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 16:38:31', '2026-03-21 16:38:31'),
(148, 4, 'organizer', 'Gán 4 Doanh nghiệp vào Triển lãm Semicon Vietnam 2025', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 16:40:29', '2026-03-21 16:40:29'),
(149, 4, 'organizer', 'Gỡ bỏ 8 Doanh nghiệp ra khỏi Triển lãm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 16:41:12', '2026-03-21 16:41:12'),
(150, 5, 'organizer', 'quangvinh@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 16:48:04', '2026-03-21 16:48:04'),
(151, 4, 'organizer', 'Lưu phân quyền Organizer Sales', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 16:48:28', '2026-03-21 16:48:28'),
(152, 4, 'organizer', 'Lưu phân quyền Organizer Sales', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 16:48:41', '2026-03-21 16:48:41'),
(153, 5, 'organizer', 'Thêm 2 Doanh nghiệp vào Triển lãm Entech Hanoi 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 16:49:09', '2026-03-21 16:49:09'),
(154, 5, 'organizer', 'Thêm 2 Doanh nghiệp vào Triển lãm Semicon Vietnam 2025', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 16:49:20', '2026-03-21 16:49:20'),
(155, 5, 'organizer', 'quangvinh@globalexpo.com.vn đăng xuất thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 17:01:53', '2026-03-21 17:01:53'),
(156, 6, 'organizer', 'camelevents.vn@gmail.com đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 17:02:06', '2026-03-21 17:02:06'),
(157, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Nguyễn Phi Hùng', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 18:08:58', '2026-03-21 18:08:58'),
(158, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 18:09:05', '2026-03-21 18:09:05'),
(159, 1, 'user', 'Lưu dữ liệu Ban tổ chức Nguyễn Phi Hùng', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 18:09:10', '2026-03-21 18:09:10'),
(160, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 18:09:13', '2026-03-21 18:09:13'),
(161, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Trần Quang Vinh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 18:09:23', '2026-03-21 18:09:23'),
(162, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Trần Quang Vinh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-21 18:09:50', '2026-03-21 18:09:50'),
(163, 1, 'user', 'Lưu triển lãm Battery Expo 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 02:06:38', '2026-03-22 02:06:38'),
(164, 1, 'user', 'Lưu địa điểm tổ chức Trung tâm Hội chợ Triển lãm quốc tế I.C.E Hà Nội', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 02:34:10', '2026-03-22 02:34:10'),
(165, 1, 'user', 'Lưu thiết bị Ghế da chân xoay', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 02:38:47', '2026-03-22 02:38:47'),
(166, 1, 'user', 'Lưu địa điểm tổ chức Trung tâm Hội chợ Triển lãm quốc tế I.C.E Hà Nội', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 02:41:55', '2026-03-22 02:41:55'),
(167, 1, 'user', 'Lưu địa điểm tổ chức Trung tâm Hội chợ Triển lãm quốc tế I.C.E Hà Nội', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 02:42:45', '2026-03-22 02:42:45'),
(168, 1, 'user', 'Lưu triển lãm Battery Expo 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 02:46:54', '2026-03-22 02:46:54'),
(169, 1, 'user', 'Lưu địa điểm tổ chức Trung tâm Triển lãm Việt Nam - VEC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 02:56:53', '2026-03-22 02:56:53'),
(170, 1, 'user', 'Lưu triển lãm Battery Expo 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 02:57:51', '2026-03-22 02:57:51'),
(171, 1, 'user', 'Lưu triển lãm Entech Hanoi 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 02:59:46', '2026-03-22 02:59:46'),
(172, NULL, NULL, 'vuduchong209305@gmail.com đăng nhập thất bại', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 07:18:44', '2026-03-22 07:18:44'),
(173, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 07:18:47', '2026-03-22 07:18:47'),
(174, 4, 'organizer', 'Thêm 15 Doanh nghiệp vào Triển lãm Entech Hanoi 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 08:16:47', '2026-03-22 08:16:47'),
(175, 4, 'organizer', 'Lưu phân quyền Organizer Sales', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 08:44:11', '2026-03-22 08:44:11'),
(176, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 08:44:16', '2026-03-22 08:44:16'),
(177, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 12:32:45', '2026-03-22 12:32:45'),
(178, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '2026-03-22 13:22:12', '2026-03-22 13:22:12'),
(179, 5, 'organizer', 'Lưu dữ liệu Ban tổ chức Linh Phong', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 15:13:27', '2026-03-22 15:13:27'),
(180, 5, 'organizer', 'Lưu dữ liệu Ban tổ chức Linh Phong', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 15:13:53', '2026-03-22 15:13:53'),
(181, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 15:16:29', '2026-03-22 15:16:29'),
(182, 5, 'organizer', 'quangvinh@globalexpo.com.vn đăng xuất thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 15:27:37', '2026-03-22 15:27:37'),
(183, 1, 'user', 'vuduchong209305@gmail.com đăng nhập thất bại', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 15:27:48', '2026-03-22 15:27:48'),
(184, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 15:27:51', '2026-03-22 15:27:51'),
(185, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 16:22:34', '2026-03-22 16:22:34'),
(186, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 17:55:20', '2026-03-22 17:55:20'),
(187, 4, 'organizer', 'Giao cho Nguyễn Phi Hùng 2 doanh nghiệp (nháp)', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 17:55:53', '2026-03-22 17:55:53'),
(188, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Linh Phong', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 18:13:05', '2026-03-22 18:13:05'),
(189, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Linh Phong', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 18:13:15', '2026-03-22 18:13:15'),
(190, 4, 'organizer', 'Giao cho Linh Phong 15 doanh nghiệp (nháp)', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 18:13:30', '2026-03-22 18:13:30'),
(191, 4, 'organizer', 'Giao cho Linh Phong 15 doanh nghiệp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 18:13:42', '2026-03-22 18:13:42'),
(192, 4, 'organizer', 'Thêm 10 Doanh nghiệp vào Triển lãm Entech Hanoi 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 18:14:02', '2026-03-22 18:14:02'),
(193, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Linh Phong', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 18:15:15', '2026-03-22 18:15:15'),
(194, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Thanh Thủy', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 18:16:09', '2026-03-22 18:16:09'),
(195, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Phương Linh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 18:18:00', '2026-03-22 18:18:00'),
(196, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Phương Linh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 18:18:06', '2026-03-22 18:18:06'),
(197, 4, 'organizer', 'Giao cho Phương Linh 15 doanh nghiệp (nháp)', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 18:18:30', '2026-03-22 18:18:30'),
(198, 4, 'organizer', 'Giao cho Phương Linh 5 doanh nghiệp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 18:18:38', '2026-03-22 18:18:38'),
(199, 4, 'organizer', 'Thêm 2 Doanh nghiệp vào Triển lãm Entech Hanoi 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-22 18:18:51', '2026-03-22 18:18:51'),
(200, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-23 01:10:50', '2026-03-23 01:10:50'),
(201, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-23 07:08:45', '2026-03-23 07:08:45'),
(202, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-26 03:48:07', '2026-03-26 03:48:07'),
(203, 4, 'organizer', 'Lưu triển lãm ENVIROTEX 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-26 03:49:54', '2026-03-26 03:49:54');
INSERT INTO `vdh_activity` (`id`, `user_id`, `type`, `content`, `data`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(204, 4, 'organizer', 'Lưu hợp đồng HỢP ĐỒNG HỘI CHỢ TRIỂN LÃM QUỐC TẾ CÔNG NGHỆ NĂNG LƯỢNG -  MÔI TRƯỜNG HÀ NỘI NĂM 2024 (ENTECH HANOI 2024)', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-26 04:26:37', '2026-03-26 04:26:37'),
(205, 4, 'organizer', 'Lưu hợp đồng HỢP ĐỒNG HỘI CHỢ TRIỂN LÃM QUỐC TẾ CÔNG NGHỆ NĂNG LƯỢNG -  MÔI TRƯỜNG HÀ NỘI NĂM 2024 (ENTECH HANOI 2024)', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-26 04:35:56', '2026-03-26 04:35:56'),
(206, 4, 'organizer', 'Lưu hợp đồng HỢP ĐỒNG HỘI CHỢ TRIỂN LÃM QUỐC TẾ CÔNG NGHỆ NĂNG LƯỢNG -  MÔI TRƯỜNG HÀ NỘI NĂM 2024 (ENTECH HANOI 2024)', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-26 04:36:02', '2026-03-26 04:36:02'),
(207, 4, 'organizer', 'Lưu hợp đồng HỢP ĐỒNG HỘI CHỢ TRIỂN LÃM QUỐC TẾ CÔNG NGHỆ NĂNG LƯỢNG -  MÔI TRƯỜNG HÀ NỘI NĂM 2024 (ENTECH HANOI 2024)', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-26 04:40:34', '2026-03-26 04:40:34'),
(208, 1, 'user', 'Lưu triển lãm Battery Expo 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-26 09:32:50', '2026-03-26 09:32:50'),
(209, 1, 'user', 'Lưu triển lãm Entech Hanoi 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-26 09:35:17', '2026-03-26 09:35:17'),
(210, 1, 'user', 'Lưu Exhibitor ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-26 15:49:12', '2026-03-26 15:49:12'),
(211, 1, 'user', 'Lưu Exhibitor ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-26 15:49:17', '2026-03-26 15:49:17'),
(212, 1, 'user', 'Lưu Exhibitor ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-26 15:49:31', '2026-03-26 15:49:31'),
(213, 1, 'user', 'Lưu Exhibitor ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-26 15:50:15', '2026-03-26 15:50:15'),
(214, 1, 'user', 'Lưu Exhibitor ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-26 15:50:20', '2026-03-26 15:50:20'),
(215, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-29 14:40:31', '2026-03-29 14:40:31'),
(216, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-29 14:53:32', '2026-03-29 14:53:32'),
(217, 1, 'user', 'Lưu địa điểm tổ chức Trung tâm Hội chợ và Triển lãm Sài Gòn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-31 09:36:06', '2026-03-31 09:36:06'),
(218, 1, 'user', 'Lưu địa điểm tổ chức Trung tâm Hội chợ và Triển lãm Sài Gòn (SECC)', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-31 09:36:47', '2026-03-31 09:36:47'),
(219, 1, 'user', 'Lưu triển lãm Semicon Vietnam 2025', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-31 09:36:57', '2026-03-31 09:36:57'),
(220, 1, 'user', 'Lưu địa điểm tổ chức Trung tâm Văn hóa Kinh Bắc, TP Bắc Ninh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-31 09:40:17', '2026-03-31 09:40:17'),
(221, 1, 'user', 'Lưu địa điểm tổ chức Trung tâm Văn hóa Kinh Bắc, TP Bắc Ninh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-31 09:40:29', '2026-03-31 09:40:29'),
(222, 1, 'user', 'Lưu triển lãm VIEE Expo 2025', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-31 09:40:46', '2026-03-31 09:40:46'),
(223, 1, 'user', 'Lưu triển lãm VCAE 2025', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-31 09:40:54', '2026-03-31 09:40:54'),
(224, 1, 'user', 'Lưu triển lãm VTR & CON 2025', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-31 09:41:08', '2026-03-31 09:41:08'),
(225, 1, 'user', 'Lưu triển lãm HE Expo 2025', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-31 09:41:17', '2026-03-31 09:41:17'),
(226, 1, 'user', 'Lưu triển lãm VRT & CON C.B.M.E', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-31 09:41:23', '2026-03-31 09:41:23'),
(227, 1, 'user', 'Lưu triển lãm HE EXPO OSH', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-31 09:41:30', '2026-03-31 09:41:30'),
(228, 1, 'user', 'Lưu triển lãm ENVIROTEX 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-03-31 09:41:37', '2026-03-31 09:41:37'),
(229, 1, 'user', 'Lưu triển lãm ENVIROTEX 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 03:20:21', '2026-04-02 03:20:21'),
(230, 1, 'user', 'Lưu triển lãm UAV Việt Nam 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 03:25:50', '2026-04-02 03:25:50'),
(231, 1, 'user', 'Lưu địa điểm tổ chức 베트남 전시센터(VEC)', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 03:31:01', '2026-04-02 03:31:01'),
(232, 1, 'user', 'Lưu triển lãm UAV Việt Nam 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 03:49:50', '2026-04-02 03:49:50'),
(233, NULL, NULL, 'hongvu.media@gmail.com đăng nhập thất bại', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 04:05:16', '2026-04-02 04:05:16'),
(234, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 04:05:20', '2026-04-02 04:05:20'),
(235, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 08:54:39', '2026-04-02 08:54:39'),
(236, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 11:17:33', '2026-04-02 11:17:33'),
(237, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 12:50:32', '2026-04-02 12:50:32'),
(238, 4, 'organizer', 'Giao cho Thanh Thủy 2 doanh nghiệp (nháp)', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 12:52:44', '2026-04-02 12:52:44'),
(239, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 13:59:25', '2026-04-02 13:59:25'),
(240, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 15:53:00', '2026-04-02 15:53:00'),
(241, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 16:07:38', '2026-04-02 16:07:38'),
(242, 4, 'organizer', 'Cập nhật dữ liệu contact1@techvision.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 16:12:58', '2026-04-02 16:12:58'),
(243, 4, 'organizer', 'Cập nhật dữ liệu contact1@techvision.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 16:13:04', '2026-04-02 16:13:04'),
(244, 4, 'organizer', 'Cập nhật dữ liệu contact1@techvision.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 16:13:06', '2026-04-02 16:13:06'),
(245, 4, 'organizer', 'Cập nhật dữ liệu contact1@techvision.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 16:13:19', '2026-04-02 16:13:19'),
(246, 4, 'organizer', 'Cập nhật dữ liệu contact1@techvision.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 16:13:22', '2026-04-02 16:13:22'),
(247, 4, 'organizer', 'Cập nhật dữ liệu contact1@techvision.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 16:14:55', '2026-04-02 16:14:55'),
(248, 4, 'organizer', 'Cập nhật dữ liệu contact2@globalexpo.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 16:15:16', '2026-04-02 16:15:16'),
(249, 4, 'organizer', 'Giao cho Thanh Thủy 3 doanh nghiệp (nháp)', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 16:15:49', '2026-04-02 16:15:49'),
(250, 4, 'organizer', 'Khởi tạo dữ liệu 123@gmail.com', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 16:27:38', '2026-04-02 16:27:38'),
(251, 4, 'organizer', 'Cập nhật dữ liệu 123@gmail.com', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 16:28:57', '2026-04-02 16:28:57'),
(252, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 17:02:53', '2026-04-02 17:02:53'),
(253, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 17:45:30', '2026-04-02 17:45:30'),
(254, 4, 'organizer', 'Cập nhật dữ liệu contact3@smarttech.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 17:51:16', '2026-04-02 17:51:16'),
(255, 4, 'organizer', 'Cập nhật dữ liệu contact1@techvision.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 17:54:30', '2026-04-02 17:54:30'),
(256, 4, 'organizer', 'Cập nhật dữ liệu 123@gmail.com', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 17:55:30', '2026-04-02 17:55:30'),
(257, 4, 'organizer', 'Cập nhật dữ liệu contact1@techvision.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 17:55:37', '2026-04-02 17:55:37'),
(258, 4, 'organizer', 'Giao cho Thanh Thủy 2 dữ liệu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-02 17:55:47', '2026-04-02 17:55:47'),
(259, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-03 03:03:07', '2026-04-03 03:03:07'),
(260, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-03 08:20:49', '2026-04-03 08:20:49'),
(261, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-03 09:04:13', '2026-04-03 09:04:13'),
(262, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-03 09:50:04', '2026-04-03 09:50:04'),
(263, 4, 'organizer', 'Thêm 1 Doanh nghiệp vào Triển lãm Entech Hanoi 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-03 09:51:02', '2026-04-03 09:51:02'),
(264, 4, 'organizer', 'Thêm 1 Nhà trưng bày vào Triển lãm Semicon Vietnam 2025', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-03 10:14:34', '2026-04-03 10:14:34'),
(265, 4, 'organizer', 'Thêm 1 Nhà trưng bày vào Triển lãm ENVIROTEX 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-03 10:14:44', '2026-04-03 10:14:44'),
(266, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-04 02:13:18', '2026-04-04 02:13:18'),
(267, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-04 02:29:28', '2026-04-04 02:29:28'),
(268, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-04 02:43:53', '2026-04-04 02:43:53'),
(269, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-04 02:51:32', '2026-04-04 02:51:32'),
(270, 4, 'organizer', 'Thêm 1 Nhà trưng bày vào Triển lãm Entech Hanoi 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-04 02:52:44', '2026-04-04 02:52:44'),
(271, 4, 'organizer', 'Gỡ bỏ 1 Nhà trưng bày ra khỏi Triển lãm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-04 03:16:45', '2026-04-04 03:16:45'),
(272, 4, 'organizer', 'Thêm 1 Nhà trưng bày vào Triển lãm Entech Hanoi 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-04 03:17:15', '2026-04-04 03:17:15'),
(273, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-04 03:24:06', '2026-04-04 03:24:06'),
(274, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-04 03:37:54', '2026-04-04 03:37:54'),
(275, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-04 03:54:58', '2026-04-04 03:54:58'),
(276, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-04 07:47:49', '2026-04-04 07:47:49'),
(277, 4, 'organizer', 'Thêm 1 Nhà trưng bày vào Triển lãm Semicon Vietnam 2025', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-04 08:33:11', '2026-04-04 08:33:11'),
(278, 4, 'organizer', 'Gỡ bỏ 1 Nhà trưng bày ra khỏi Triển lãm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-04 08:33:39', '2026-04-04 08:33:39'),
(279, 4, 'organizer', 'Thêm 1 Nhà trưng bày vào Triển lãm ENVIROTEX 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-04 08:33:44', '2026-04-04 08:33:44'),
(280, 4, 'organizer', 'Cập nhật dữ liệu contact3@smarttech.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-04 09:34:42', '2026-04-04 09:34:42'),
(281, 4, 'organizer', 'Cập nhật dữ liệu contact2@globalexpo.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-04 09:34:46', '2026-04-04 09:34:46'),
(282, 4, 'organizer', 'Giao cho Trần Quang Vinh 3 dữ liệu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-04 10:17:52', '2026-04-04 10:17:52'),
(283, 4, 'organizer', 'Giao cho Thanh Thủy 4 dữ liệu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-04 10:18:01', '2026-04-04 10:18:01'),
(284, 4, 'organizer', 'Giao cho Phương Linh 7 dữ liệu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-04 10:18:11', '2026-04-04 10:18:11'),
(285, 4, 'organizer', 'Cập nhật dữ liệu contact4@vietinnovation.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-04 10:51:35', '2026-04-04 10:51:35'),
(286, 4, 'organizer', 'Cập nhật dữ liệu contact6@digitalworld.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-04 10:51:44', '2026-04-04 10:51:44'),
(287, 4, 'organizer', 'Cập nhật dữ liệu contact12@globalconnect.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-04 10:52:02', '2026-04-04 10:52:02'),
(288, 4, 'organizer', 'Cập nhật dữ liệu contact11@innovatech.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-04 10:52:49', '2026-04-04 10:52:49'),
(289, 4, 'organizer', 'Cập nhật dữ liệu contact13@techlink.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-04 10:52:55', '2026-04-04 10:52:55'),
(290, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng xuất thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-04 12:58:43', '2026-04-04 12:58:43'),
(291, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-05 09:09:07', '2026-04-05 09:09:07'),
(292, 4, 'organizer', 'Cập nhật dữ liệu contact9@vietnamai.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-05 09:14:29', '2026-04-05 09:14:29'),
(293, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng xuất thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-05 09:15:05', '2026-04-05 09:15:05'),
(294, 1, 'user', 'Lưu triển lãm Envirotex 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-05 10:00:20', '2026-04-05 10:00:20'),
(295, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-05 15:21:56', '2026-04-05 15:21:56'),
(296, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-05 15:51:03', '2026-04-05 15:51:03'),
(297, 4, 'organizer', 'Cập nhật Hồ sơ nguyenphihung@globalexpo.com.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-05 15:51:09', '2026-04-05 15:51:09'),
(298, 4, 'organizer', 'Cập nhật Hồ sơ nguyenphihung@globalexpo.com.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-05 15:51:11', '2026-04-05 15:51:11'),
(299, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-05 15:56:25', '2026-04-05 15:56:25'),
(300, 4, 'organizer', 'Cập nhật dữ liệu contact13@techlink.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-05 17:30:13', '2026-04-05 17:30:13'),
(301, 4, 'organizer', 'Cập nhật dữ liệu contact12@globalconnect.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-05 17:30:26', '2026-04-05 17:30:26'),
(302, 4, 'organizer', 'Cập nhật dữ liệu contact11@innovatech.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-05 17:34:57', '2026-04-05 17:34:57'),
(303, 4, 'organizer', 'Cập nhật dữ liệu contact13@techlink.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-05 17:35:02', '2026-04-05 17:35:02'),
(304, 4, 'organizer', 'Cập nhật dữ liệu contact6@digitalworld.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-05 17:35:14', '2026-04-05 17:35:14'),
(305, 4, 'organizer', 'Cập nhật dữ liệu contact4@vietinnovation.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-05 17:35:18', '2026-04-05 17:35:18'),
(306, 4, 'organizer', 'Cập nhật dữ liệu contact5@nextgen.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-05 17:46:35', '2026-04-05 17:46:35'),
(307, 4, 'organizer', 'Cập nhật dữ liệu contact13@nextgen.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-05 17:46:39', '2026-04-05 17:46:39'),
(308, 4, 'organizer', 'Cập nhật dữ liệu contact13@nextgen.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-05 17:47:28', '2026-04-05 17:47:28'),
(309, 5, 'organizer', 'quangvinh@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-05 18:00:00', '2026-04-05 18:00:00'),
(310, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Trần Quang Vinh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-05 18:00:08', '2026-04-05 18:00:08'),
(311, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Trần Quang Vinh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-05 18:00:36', '2026-04-05 18:00:36'),
(312, 5, 'organizer', 'Khởi tạo dữ liệu contact13@nextgen.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-05 18:00:56', '2026-04-05 18:00:56'),
(313, 4, 'organizer', 'Lưu dữ liệu Ban tổ chức Trần Quang Vinh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-05 18:01:44', '2026-04-05 18:01:44'),
(314, 4, 'organizer', 'Cập nhật dữ liệu contact13@nextgen.vn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-05 18:07:13', '2026-04-05 18:07:13'),
(315, 4, 'organizer', 'Thêm 9 Nhà trưng bày vào Triển lãm Entech Hanoi 2026', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-05 18:07:24', '2026-04-05 18:07:24'),
(316, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng xuất thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-05 18:54:45', '2026-04-05 18:54:45'),
(317, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-05 18:56:27', '2026-04-05 18:56:27'),
(318, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-06 01:17:04', '2026-04-06 01:17:04'),
(319, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-06 09:14:47', '2026-04-06 09:14:47'),
(320, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-06 12:39:20', '2026-04-06 12:39:20'),
(321, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-08 02:01:27', '2026-04-08 02:01:27'),
(322, 1, 'user', 'Cập nhật cài đặt hệ thống', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-10 07:46:37', '2026-04-10 07:46:37'),
(323, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-12 08:32:03', '2026-04-12 08:32:03'),
(324, 1, 'user', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-12 09:37:44', '2026-04-12 09:37:44'),
(325, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng xuất thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-12 09:58:25', '2026-04-12 09:58:25'),
(326, 6, 'organizer', 'thanhthuy@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-12 09:58:28', '2026-04-12 09:58:28'),
(327, 1, 'user', 'Lưu phân quyền Organizer Sales', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-12 09:59:36', '2026-04-12 09:59:36'),
(328, 6, 'organizer', 'thanhthuy@globalexpo.com.vn đăng xuất thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-12 10:01:17', '2026-04-12 10:01:17'),
(329, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-12 10:01:20', '2026-04-12 10:01:20'),
(330, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-14 08:41:40', '2026-04-14 08:41:40'),
(331, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-15 08:33:00', '2026-04-15 08:33:00'),
(332, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-15 09:13:20', '2026-04-15 09:13:20'),
(333, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-15 09:17:59', '2026-04-15 09:17:59'),
(334, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-15 09:18:22', '2026-04-15 09:18:22'),
(335, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-15 11:28:35', '2026-04-15 11:28:35'),
(336, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-15 13:29:40', '2026-04-15 13:29:40'),
(337, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-15 17:04:05', '2026-04-15 17:04:05'),
(338, 4, 'organizer', 'Nguyễn Phi Hùng cập nhật birthday = 06-06-1994', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-15 18:20:02', '2026-04-15 18:20:02'),
(339, 4, 'organizer', 'Nguyễn Phi Hùng cập nhật khách hàng 7 fullname = Tran Van Nam 2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-15 18:20:40', '2026-04-15 18:20:40'),
(340, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-15 18:31:00', '2026-04-15 18:31:00'),
(341, 4, 'organizer', 'Nguyễn Phi Hùng cập nhật khách hàng 103 organizer_id = 7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-15 18:33:46', '2026-04-15 18:33:46'),
(342, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-15 18:50:10', '2026-04-15 18:50:10'),
(343, 4, 'organizer', 'Nguyễn Phi Hùng cập nhật khách hàng 8 organizer_id = 7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-15 18:51:56', '2026-04-15 18:51:56'),
(344, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-15 19:05:24', '2026-04-15 19:05:24'),
(345, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-15 19:34:39', '2026-04-15 19:34:39'),
(346, 4, 'organizer', 'Nguyễn Phi Hùng cập nhật khách hàng 8 profession = may mặc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-15 19:39:50', '2026-04-15 19:39:50'),
(347, 4, 'organizer', 'Nguyễn Phi Hùng cập nhật khách hàng 8 birthday = 1993', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-15 19:48:19', '2026-04-15 19:48:19'),
(348, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-16 02:34:48', '2026-04-16 02:34:48'),
(349, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-16 04:49:05', '2026-04-16 04:49:05'),
(350, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-16 07:32:06', '2026-04-16 07:32:06'),
(351, 4, 'organizer', 'Nguyễn Phi Hùng cập nhật avatar KH 8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-16 07:40:10', '2026-04-16 07:40:10'),
(352, 4, 'organizer', 'Nguyễn Phi Hùng cập nhật avatar khách hàng 8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-16 07:40:48', '2026-04-16 07:40:48'),
(353, 4, 'organizer', 'Nguyễn Phi Hùng cập nhật avatar khách hàng 8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-16 07:45:01', '2026-04-16 07:45:01'),
(354, 4, 'organizer', 'Nguyễn Phi Hùng cập nhật avatar khách hàng 8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-16 07:45:56', '2026-04-16 07:45:56'),
(355, 4, 'organizer', 'Nguyễn Phi Hùng cập nhật avatar khách hàng 8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-16 07:49:12', '2026-04-16 07:49:12'),
(356, 4, 'organizer', 'Nguyễn Phi Hùng cập nhật avatar khách hàng 8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-16 07:50:27', '2026-04-16 07:50:27'),
(357, 4, 'organizer', 'Nguyễn Phi Hùng cập nhật avatar khách hàng 8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-16 07:50:42', '2026-04-16 07:50:42'),
(358, 4, 'organizer', 'Nguyễn Phi Hùng cập nhật avatar khách hàng 8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-16 07:50:45', '2026-04-16 07:50:45'),
(359, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-16 07:55:36', '2026-04-16 07:55:36'),
(360, 4, 'organizer', 'Nguyễn Phi Hùng cập nhật khách hàng 8 source_id = 1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-16 07:55:45', '2026-04-16 07:55:45'),
(361, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-16 08:01:59', '2026-04-16 08:01:59'),
(362, 4, 'organizer', 'Nguyễn Phi Hùng cập nhật khách hàng 9 type_id = 2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-16 08:02:04', '2026-04-16 08:02:04'),
(363, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-16 08:31:32', '2026-04-16 08:31:32'),
(364, 4, 'organizer', 'Nguyễn Phi Hùng cập nhật avatar khách hàng 117', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-16 08:37:12', '2026-04-16 08:37:12'),
(365, 4, 'organizer', 'Nguyễn Phi Hùng cập nhật khách hàng 118 type_id = 3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-16 09:13:21', '2026-04-16 09:13:21'),
(366, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-16 11:26:16', '2026-04-16 11:26:16'),
(367, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-16 13:08:53', '2026-04-16 13:08:53'),
(368, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-16 13:18:21', '2026-04-16 13:18:21'),
(369, 4, 'organizer', 'Nguyễn Phi Hùng cập nhật khách hàng 117 source_id = 1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-16 13:20:20', '2026-04-16 13:20:20'),
(370, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-16 17:40:51', '2026-04-16 17:40:51'),
(371, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-17 01:22:00', '2026-04-17 01:22:00'),
(372, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', '2026-04-17 02:10:39', '2026-04-17 02:10:39'),
(373, 4, 'organizer', 'nguyenphihung@globalexpo.com.vn đăng nhập thành công', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-17 03:07:47', '2026-04-17 03:07:47'),
(374, 4, 'organizer', 'Lưu phân quyền Organizer Giám đốc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', '2026-04-17 05:25:37', '2026-04-17 05:25:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_admins`
--

CREATE TABLE `vdh_admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `fullname` varchar(50) DEFAULT NULL,
  `birthday` varchar(10) DEFAULT NULL,
  `passport` varchar(20) DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `forgot_pass_token` varchar(100) DEFAULT NULL,
  `updated_forgot_token` datetime DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `vdh_admins`
--

INSERT INTO `vdh_admins` (`id`, `email`, `password`, `phone`, `avatar`, `status`, `fullname`, `birthday`, `passport`, `role_id`, `address`, `forgot_pass_token`, `updated_forgot_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'vuduchong209305@gmail.com', '$2y$10$4UdQSmNztB457ugofP3H6.SdzeFwxQ/StlFNutTZ9ZKzD4kNgjOcS', '0986209305', '/assets/uploads/media/images/files/agency/vdh.jpg', 1, 'Vũ Đức Hồng', '06-06-1993', NULL, 1, NULL, NULL, NULL, NULL, NULL, '2026-03-17 14:04:38'),
(2, 'ph2h.ge@gmail.com', '$2y$12$jImBKmGSeieYWkkQ7ZmUhuyKWwHuXY4HlVTFTit6wTCnW/u0qpXuS', '0904239996', '/assets/uploads/media/images/files/agency/nguyenphihung.png', 1, 'Nguyễn Phi Hùng', NULL, NULL, 4, NULL, NULL, NULL, NULL, '2026-02-08 04:59:28', '2026-02-08 05:02:02'),
(3, 'quangvinh@globalexpo.com.vn', '$2y$12$EjOXMDEl.y4NVLycNuVQyugEfctis3bX/VF8hNf39ZjQzW6ucbrWm', '0983109909', '/assets/uploads/media/images/files/agency/quangvinh.png', 1, 'Trần Quang Vinh', NULL, NULL, 4, NULL, NULL, NULL, NULL, '2026-02-08 05:04:04', '2026-03-17 14:04:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_comments`
--

CREATE TABLE `vdh_comments` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `owner_id` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vdh_comments`
--

INSERT INTO `vdh_comments` (`id`, `customer_id`, `content`, `owner_id`, `created_at`, `updated_at`) VALUES
(1, 8, 'khách này đến đâu r', 4, '2026-04-16 04:50:27', '2026-04-16 04:50:27'),
(2, 8, 'Bao giờ khách trả lời', 4, '2026-04-16 04:58:15', '2026-04-16 04:58:15'),
(3, 117, 'khách này đến đâu r', 4, '2026-04-17 03:09:52', '2026-04-17 03:09:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_company`
--

CREATE TABLE `vdh_company` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vdh_company`
--

INSERT INTO `vdh_company` (`id`, `name`, `phone`, `address`, `email`, `avatar`, `website`, `status`, `created_at`, `updated_at`) VALUES
(1, 'CÔNG TY CP TỔ CHỨC SỰ KIỆN VÀ HỘI CHỢ TOÀN CẦU (GLOBAL EXPO)', '024. 3755 3414', 'A24 / D7 Khu Đô thị mới Cầu Giấy Phường Dịch Vọng, Quận Cầu Giấy, Hà Nội', 'info@globalexpo.com.vn', '/assets/uploads/media/images/files/organizer/ge.jpg', 'https://globalexpo.com.vn', 1, '2026-03-19 04:34:16', '2026-03-19 06:21:23'),
(2, 'CÔNG TY TNHH SỰ KIỆN TRIỂN LÃM VÀ XÚC TIẾN THƯƠNG MẠI CAMEL', '02838293179', 'Tầng 5, Tòa nhà Songdo 62A Phạm Ngọc Thạch, Phường Xuân Hòa, thành phố Hồ Chí Minh', 'camelevents.vn@gmail.com', '/assets/uploads/media/images/files/organizer/camel-event.png', 'https://camelevents.vn/', 1, '2026-03-19 05:00:45', '2026-03-19 05:00:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_customers`
--

CREATE TABLE `vdh_customers` (
  `id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `organizer_id` int(11) DEFAULT NULL,
  `company_organizer_id` int(11) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `birthday` varchar(15) DEFAULT NULL,
  `mst` varchar(50) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL COMMENT '1 - nam, 2 - nữ',
  `owner_id` tinyint(4) DEFAULT NULL,
  `type_id` tinyint(1) DEFAULT 1 COMMENT '1 - data thô, 2 - lead, 3 - contact',
  `bookmark` tinyint(1) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `source_id` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vdh_customers`
--

INSERT INTO `vdh_customers` (`id`, `email`, `company`, `fullname`, `phone`, `organizer_id`, `company_organizer_id`, `contact`, `address`, `profession`, `birthday`, `mst`, `website`, `description`, `note`, `gender`, `owner_id`, `type_id`, `bookmark`, `avatar`, `source_id`, `created_at`, `updated_at`) VALUES
(8, 'contact8@greentech.vn', 'Green Tech Corp.', 'Le Thi Hoa', '0901000008', 7, 1, NULL, NULL, 'may mặc', '1993', NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 'customer/2026/04/16/1776325845-Q1v0RsEdCaMofuRe431x.webp', 1, '2026-04-02 16:22:38', '2026-04-16 07:55:45'),
(9, 'contact9@vietnamai.vn', 'Vietnam AI JSC', 'Pham Van Tuan', '0901000009', 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-16 08:02:04'),
(10, 'contact10@smartlife.vn', 'Smart Life Co.', 'Nguyen Thi Mai', '0901000010', 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-15 19:22:13'),
(14, 'contact14@vietsoft.vn', 'VietSoft JSC', 'Pham Duc Long', '0901000014', 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-15 19:22:12'),
(15, 'contact15@digitech.vn', 'DigiTech Ltd.', 'Hoang Van Son', '0901000015', 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-04 10:18:11'),
(16, 'contact16@smartcity.vn', 'Smart City Co.', 'Nguyen Van Hung', '0901000016', 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-04 10:18:11'),
(17, 'contact17@futurevision.vn', 'Future Vision', 'Tran Thi Thao', '0901000017', 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-04 10:18:11'),
(18, 'contact18@ecotech.vn', 'Eco Tech JSC', 'Le Minh Duc', '0901000018', 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-04 10:18:11'),
(19, 'contact19@vietconnect.vn', 'Viet Connect Ltd.', 'Pham Thi Yen', '0901000019', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(20, 'contact20@globaltech.vn', 'Global Tech Co.', 'Nguyen Thanh Tung', '0901000020', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(21, 'contact21@nextworld.vn', 'Next World Corp.', 'Tran Van Phuc', '0901000021', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(22, 'contact22@aitech.vn', 'AI Tech JSC', 'Le Thi Ngoc', '0901000022', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(23, 'contact23@digitalsolution.vn', 'Digital Solution', 'Pham Quoc Khanh', '0901000023', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(24, 'contact24@smartgroup.vn', 'Smart Group Co.', 'Nguyen Van Tai', '0901000024', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(25, 'contact25@greenworld.vn', 'Green World Ltd.', 'Tran Thi Huong', '0901000025', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(26, 'contact26@viettech.vn', 'Viet Tech JSC', 'Le Hoang Anh', '0901000026', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(27, 'contact27@innovation.vn', 'Innovation Co.', 'Pham Van Hieu', '0901000027', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(28, 'contact28@futuregroup.vn', 'Future Group Ltd.', 'Nguyen Thi Trang', '0901000028', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(29, 'contact29@smartconnect.vn', 'Smart Connect', 'Tran Minh Tuan', '0901000029', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(30, 'contact30@techglobal.vn', 'Tech Global Co.', 'Le Van Hiep', '0901000030', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(31, 'contact31@vietnamtech.vn', 'Vietnam Tech Ltd.', 'Pham Thi Nga', '0901000031', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(32, 'contact32@digitalcorp.vn', 'Digital Corp.', 'Nguyen Van Duc', '0901000032', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(33, 'contact33@smartinnovation.vn', 'Smart Innovation', 'Tran Thi Hang', '0901000033', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(34, 'contact34@futurecorp.vn', 'Future Corp.', 'Le Minh Quan', '0901000034', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(35, 'contact35@ecoworld.vn', 'Eco World Co.', 'Pham Van Thanh', '0901000035', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(36, 'contact36@techsolution.vn', 'Tech Solution Ltd.', 'Nguyen Thi Thuy', '0901000036', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(37, 'contact37@globalinnovation.vn', 'Global Innovation', 'Tran Van Dat', '0901000037', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(38, 'contact38@smartvision.vn', 'Smart Vision Co.', 'Le Thi Hanh', '0901000038', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(39, 'contact39@vietdigital.vn', 'Viet Digital Ltd.', 'Pham Minh Tri', '0901000039', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(40, 'contact40@nexttech.vn', 'Next Tech JSC', 'Nguyen Van Phong', '0901000040', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(41, 'contact41@futureconnect.vn', 'Future Connect', 'Tran Thi Linh', '0901000041', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(42, 'contact42@aigroup.vn', 'AI Group Co.', 'Le Quang Huy', '0901000042', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(43, 'contact43@techcorp.vn', 'Tech Corp.', 'Pham Van Duc', '0901000043', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(44, 'contact44@smartcorp.vn', 'Smart Corp.', 'Nguyen Thi Nga', '0901000044', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(45, 'contact45@globalvision.vn', 'Global Vision Ltd.', 'Tran Minh Duc', '0901000045', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(46, 'contact46@digitaltech.vn', 'Digital Tech Co.', 'Le Van Nam', '0901000046', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(47, 'contact47@ecogroup.vn', 'Eco Group', 'Pham Thi Hoa', '0901000047', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(48, 'contact48@futuretech.vn', 'Future Tech JSC', 'Nguyen Thanh Hai', '0901000048', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(49, 'contact49@smartdigital.vn', 'Smart Digital', 'Tran Van Hung', '0901000049', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(50, 'contact50@vietcorp.vn', 'Viet Corp.', 'Le Thi Trang', '0901000050', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(51, 'contact51@innovation.vn', 'Innovation Ltd.', 'Pham Quoc Anh', '0901000051', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(52, 'contact52@techgroup.vn', 'Tech Group Co.', 'Nguyen Minh Tuan', '0901000052', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(53, 'contact53@futuregroup.vn', 'Future Group JSC', 'Tran Thi Nga', '0901000053', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(54, 'contact54@smartgroup.vn', 'Smart Group Ltd.', 'Le Van Dat', '0901000054', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(55, 'contact55@globalgroup.vn', 'Global Group', 'Pham Minh Hieu', '0901000055', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(56, 'contact56@digitalgroup.vn', 'Digital Group Co.', 'Nguyen Thi Hang', '0901000056', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(57, 'contact57@ecotech.vn', 'EcoTech Ltd.', 'Tran Van Binh', '0901000057', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(58, 'contact58@viettech.vn', 'VietTech Corp.', 'Le Minh Duc', '0901000058', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(59, 'contact59@futurevision.vn', 'Future Vision Co.', 'Pham Thi Mai', '0901000059', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(60, 'contact60@smartvision.vn', 'Smart Vision Ltd.', 'Nguyen Van Son', '0901000060', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(61, 'contact61@globaltech.vn', 'Global Tech Corp.', 'Tran Thi Lan', '0901000061', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(62, 'contact62@digitalcorp.vn', 'Digital Corp. Ltd.', 'Le Van Hieu', '0901000062', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(63, 'contact63@ecoworld.vn', 'Eco World Ltd.', 'Pham Van Hung', '0901000063', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(64, 'contact64@smartlife.vn', 'Smart Life JSC', 'Nguyen Thi Hoa', '0901000064', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(65, 'contact65@futurelife.vn', 'Future Life Co.', 'Tran Minh Hieu', '0901000065', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(66, 'contact66@techlife.vn', 'Tech Life Ltd.', 'Le Van Tuan', '0901000066', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(67, 'contact67@digitalworld.vn', 'Digital World Ltd.', 'Pham Thi Nga', '0901000067', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(68, 'contact68@ecolife.vn', 'Eco Life Co.', 'Nguyen Van Dat', '0901000068', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(69, 'contact69@smartworld.vn', 'Smart World Ltd.', 'Tran Thi Trang', '0901000069', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(70, 'contact70@futureworld.vn', 'Future World JSC', 'Le Minh Tuan', '0901000070', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(71, 'contact71@techworld.vn', 'Tech World Co.', 'Pham Van Long', '0901000071', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(72, 'contact72@globalworld.vn', 'Global World Ltd.', 'Nguyen Thi Mai', '0901000072', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(73, 'contact73@digitalvision.vn', 'Digital Vision', 'Tran Van Duc', '0901000073', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(74, 'contact74@ecovision.vn', 'Eco Vision Co.', 'Le Thi Hoa', '0901000074', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(75, 'contact75@smartvision.vn', 'Smart Vision Corp.', 'Pham Minh Hieu', '0901000075', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(76, 'contact76@futurevision.vn', 'Future Vision Ltd.', 'Nguyen Van Hung', '0901000076', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(77, 'contact77@techvision.vn', 'Tech Vision JSC', 'Tran Thi Nga', '0901000077', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(78, 'contact78@globalvision.vn', 'Global Vision Co.', 'Le Van Dat', '0901000078', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(79, 'contact79@digitalconnect.vn', 'Digital Connect Ltd.', 'Pham Thi Lan', '0901000079', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(80, 'contact80@smartconnect.vn', 'Smart Connect JSC', 'Nguyen Minh Duc', '0901000080', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(81, 'contact81@futureconnect.vn', 'Future Connect Ltd.', 'Tran Van Tuan', '0901000081', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(82, 'contact82@techconnect.vn', 'Tech Connect Co.', 'Le Thi Trang', '0901000082', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(83, 'contact83@globalconnect.vn', 'Global Connect Corp.', 'Pham Van Hieu', '0901000083', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(84, 'contact84@digitalgroup.vn', 'Digital Group Ltd.', 'Nguyen Thi Nga', '0901000084', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(85, 'contact85@smartgroup.vn', 'Smart Group Corp.', 'Tran Minh Duc', '0901000085', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(86, 'contact86@futuregroup.vn', 'Future Group Co.', 'Le Van Nam', '0901000086', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(87, 'contact87@techgroup.vn', 'Tech Group Ltd.', 'Pham Thi Hoa', '0901000087', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(88, 'contact88@globalgroup.vn', 'Global Group Corp.', 'Nguyen Thanh Hai', '0901000088', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(89, 'contact89@digitalcorp.vn', 'Digital Corp. JSC', 'Tran Thi Linh', '0901000089', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(90, 'contact90@smartcorp.vn', 'Smart Corp. Ltd.', 'Le Minh Hieu', '0901000090', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(91, 'contact91@futurecorp.vn', 'Future Corp. JSC', 'Pham Van Duc', '0901000091', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(92, 'contact92@techcorp.vn', 'Tech Corp. Ltd.', 'Nguyen Thi Trang', '0901000092', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(93, 'contact93@globalcorp.vn', 'Global Corp. Co.', 'Tran Van Hung', '0901000093', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(94, 'contact94@ecocorp.vn', 'Eco Corp. Ltd.', 'Le Thi Nga', '0901000094', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(95, 'contact95@smarttech.vn', 'Smart Tech Corp.', 'Pham Minh Tuan', '0901000095', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(96, 'contact96@futuretech.vn', 'Future Tech Corp.', 'Nguyen Van Hieu', '0901000096', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(97, 'contact97@techinnovation.vn', 'Tech Innovation', 'Tran Thi Hoa', '0901000097', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(98, 'contact98@globalinnovation.vn', 'Global Innovation Corp.', 'Le Van Tuan', '0901000098', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(117, 'contact1@techvision.vn', 'Tech Vision Co.', 'Nguyen Van An', '0901000001', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'customer/2026/04/16/1776328632-Wd6zMJ1d6rEJjMbumILv.webp', 1, '2026-04-16 08:36:12', '2026-04-17 04:39:54'),
(118, 'contact2@globalexpo.vn', 'Global Expo Ltd.', 'Tran Thi Bich', '0901000002', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, '2026-04-16 08:36:12', '2026-04-16 09:13:21'),
(119, 'contact3@smarttech.vn', 'Smart Tech JSC', 'Le Minh Hoang', '0901000003', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-16 08:36:12', '2026-04-16 08:36:12'),
(120, 'contact4@vietinnovation.vn', 'Viet Innovation', 'Pham Quang Huy', '0901000004', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-16 08:36:12', '2026-04-16 08:36:12'),
(121, 'contact5@nextgen.vn', 'NextGen Solutions', 'Hoang Thi Lan', '0901000005', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-16 08:36:12', '2026-04-16 08:36:12'),
(122, 'contact6@digitalworld.vn', 'Digital World Co.', 'Nguyen Duc Manh', '0901000006', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-16 08:36:12', '2026-04-16 08:36:12'),
(123, 'contact7@futuretech.vn', 'Future Tech Ltd.', 'Tran Van Nam', '0901000007', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-16 08:36:12', '2026-04-16 08:36:12'),
(124, 'contact11@innovatech.vn', 'Innovatech Ltd.', 'Tran Quoc Bao', '0901000011', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-16 08:36:12', '2026-04-16 08:36:12'),
(125, 'contact12@globalconnect.vn', 'Global Connect', 'Le Van Binh', '0901000012', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-16 08:36:12', '2026-04-16 08:36:12'),
(126, 'contact13@techlink.vn', 'TechLink Co.', 'Nguyen Hong Nhung', '0901000013', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-16 08:36:12', '2026-04-16 08:36:12'),
(127, 'contact99@digitalinnovation.vn', 'Digital Innovation Ltd.', 'Pham Thi Trang', '0901000099', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-16 08:36:12', '2026-04-16 08:36:12'),
(128, 'contact100@smartinnovation.vn', 'Smart Innovation Corp.', 'Nguyen Minh Duc', '0901000100', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-16 08:36:12', '2026-04-16 08:36:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_customer_target`
--

CREATE TABLE `vdh_customer_target` (
  `id` tinyint(4) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_customer_target_detail`
--

CREATE TABLE `vdh_customer_target_detail` (
  `customer_target_id` tinyint(4) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_customer_type`
--

CREATE TABLE `vdh_customer_type` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vdh_customer_type`
--

INSERT INTO `vdh_customer_type` (`id`, `name`) VALUES
(1, 'Dữ liệu thô'),
(2, 'Lead'),
(3, 'Contact');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_exhibition`
--

CREATE TABLE `vdh_exhibition` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `card` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `company_id` int(11) DEFAULT NULL,
  `start_day` date DEFAULT NULL,
  `end_day` date DEFAULT NULL,
  `location_id` tinyint(4) DEFAULT NULL,
  `contract` varchar(100) DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `vdh_exhibition`
--

INSERT INTO `vdh_exhibition` (`id`, `parent_id`, `slug`, `website`, `logo`, `card`, `thumbnail`, `status`, `company_id`, `start_day`, `end_day`, `location_id`, `contract`, `order`, `created_at`, `updated_at`) VALUES
(1, NULL, 'entech-hanoi-2026', 'https://entechhanoi.vn', '/assets/uploads/media/images/files/exhibition/Entech2026.png', NULL, '/assets/uploads/media/images/files/exhibition/entech-banner.jpg', 1, 1, '2025-05-13', '2025-05-21', 1, 'HD-Entech-2026.docx', 1, NULL, '2026-04-05 09:59:54'),
(2, NULL, 'semicon-vietnam-2025', 'https://semicon.com.vn', '/assets/uploads/media/images/files/exhibition/SEMICON.png', '/assets/uploads/media/images/files/exhibition/card-sample.jpg', '/assets/uploads/media/images/files/exhibition/semicon-banner.webp', 1, 1, '2025-08-27', '2025-08-29', 3, NULL, 6, NULL, '2026-04-05 09:59:54'),
(3, NULL, 'vcae-2025', 'https://vcae.com.vn', '/assets/uploads/media/images/files/exhibition/vcae-logo.png', NULL, '/assets/uploads/media/images/files/exhibition/banner-vcae.webp', 1, NULL, '2025-04-24', '2025-04-26', 1, NULL, 5, '2025-02-27 07:10:55', '2026-04-05 09:59:54'),
(4, NULL, 'viee-expo-2025', NULL, '/assets/uploads/media/images/files/exhibition/viee.png', NULL, '/assets/uploads/media/images/files/exhibition/viee.jpg', 1, NULL, '2026-05-28', '2026-05-30', 4, NULL, 7, '2025-05-29 07:19:47', '2026-04-05 09:59:54'),
(5, NULL, 'vtr-con-2025', NULL, '/assets/uploads/media/images/files/exhibition/VRT_CON_logo.png', NULL, '/assets/uploads/media/images/files/exhibition/vrt-con.jpg', 1, NULL, '2025-11-13', '2025-11-15', 2, NULL, 8, '2025-08-08 01:25:12', '2026-04-05 09:59:54'),
(6, NULL, 'he-expo-2025', NULL, '/assets/uploads/media/images/files/exhibition/he-expo.png', NULL, '/assets/uploads/media/images/files/exhibition/he-expo.jpg', 1, NULL, '2025-11-13', '2025-11-15', 2, NULL, 9, '2025-08-08 01:26:17', '2026-04-05 09:59:54'),
(7, NULL, 'vrt-con-cbme', NULL, '/assets/uploads/media/images/files/exhibition/cmbe.png', NULL, '/assets/uploads/media/images/files/exhibition/vrt-con-cbme.jpg', 1, NULL, '2025-11-13', '2025-11-15', 2, NULL, 10, '2025-08-28 00:12:29', '2026-04-05 09:59:54'),
(8, NULL, 'he-expo-osh', NULL, '/assets/uploads/media/images/files/exhibition/oshshow.png', NULL, '/assets/uploads/media/images/files/exhibition/he-osh-expo.jpg', 1, NULL, '2025-11-13', '2025-11-15', 2, NULL, 11, '2025-08-28 00:13:28', '2026-04-05 09:59:54'),
(9, NULL, 'envirotex-2026', 'https://envirotexvietnam.com', '/assets/uploads/media/images/files/exhibition/ENVIROTEX2026.png', NULL, '/assets/uploads/media/images/files/exhibition/envirotex-banner.jpg', 1, 1, '2026-06-24', '2026-06-26', 2, NULL, 2, '2026-03-11 02:42:17', '2026-04-05 10:00:20'),
(10, NULL, 'battery-expo-2026', 'http://batteryexpo.vn', '/assets/uploads/media/images/files/exhibition/battery-logo.png', NULL, '/assets/uploads/media/images/files/exhibition/battery-banner.jpg', 1, 2, '2026-09-09', '2026-09-11', 2, 'HD-Entech-2026.docx', 3, '2026-03-22 02:06:38', '2026-04-05 09:59:54'),
(11, NULL, 'uav-viet-nam-2026', 'uavexpo.vn', '/assets/uploads/media/images/files/exhibition/Logo%20UAV-png.png', NULL, '/assets/uploads/media/images/files/exhibition/UAV-banner.jpg', 1, 1, '2026-08-26', '2026-08-28', 2, NULL, 4, '2026-04-02 03:25:50', '2026-04-05 09:59:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_exhibition_detail`
--

CREATE TABLE `vdh_exhibition_detail` (
  `id` int(11) NOT NULL,
  `exhibition_id` int(11) NOT NULL,
  `lang_id` tinyint(3) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_full` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `vdh_exhibition_detail`
--

INSERT INTO `vdh_exhibition_detail` (`id`, `exhibition_id`, `lang_id`, `title`, `title_full`, `slug`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `created_at`, `updated_at`) VALUES
(41, 1, 1, 'Entech Hanoi 2026', 'Hội chợ triển lãm quốc tế công nghệ năng lượng – môi trường Hà Nội năm 2026', 'entech-hanoi-2026', '<p><strong>Hội chợ triển l&atilde;m quốc tế c&ocirc;ng nghệ năng lượng - m&ocirc;i trường H&agrave; Nội 2025 (ENTECH HANOI 2025) sẽ g&oacute;p phần tạo ra qu&aacute; tr&igrave;nh chuyển dịch năng lượng, hướng tới ph&aacute;t triển nền kinh tế xanh. Đ&oacute; l&agrave; khẳng định của l&atilde;nh đạo Trung t&acirc;m Khuyến c&ocirc;ng v&agrave; tư vấn ph&aacute;t triển c&ocirc;ng nghiệp H&agrave; Nội (Sở C&ocirc;ng Thương H&agrave; Nội) tại buổi họp b&aacute;o về sự kiện Hội chợ triển l&atilde;m ENTECH H&agrave; Nội 2025 diễn ra ng&agrave;y 18/6.</strong></p>\r\n\r\n<p>Hội chợ ENTECH HANOI 2025 diễn ra từ ng&agrave;y 25 - 27/6/2025 quy tụ hơn 200 doanh nghiệp (DN) tham gia với hơn 250 gian h&agrave;ng trưng b&agrave;y c&aacute;c sản phẩm, c&ocirc;ng nghệ năng lượng - m&ocirc;i trường thuộc nhiều lĩnh vực c&ocirc;ng nghệ năng lượng - m&ocirc;i trường. Cụ thể: C&ocirc;ng ngh&ecirc;̣ xử l&yacute; r&aacute;c sinh hoạt, r&aacute;c thải y tế; C&ocirc;ng nghệ xử l&yacute; nước sinh hoạt, nước thải, nước &ocirc; nhiễm, nước mặn; C&ocirc;ng nghệ gi&aacute;m s&aacute;t, cảnh b&aacute;o &ocirc; nhiễm kh&ocirc;ng kh&iacute;; Hệ thống quan trắc tự động từ xa; C&ocirc;ng nghệ v&agrave; x&acirc;y dựng gi&uacute;p tiết kiệm năng lượng trong c&aacute;c d&acirc;y chuyền sản xuất c&ocirc;ng nghiệp, thiết bị nhiệt, c&ocirc;ng nghệ gi&aacute;m s&aacute;t; C&ocirc;ng nghệ chiếu s&aacute;ng; Năng lượng t&aacute;i tạo, năng lượng mới, nguồn năng lượng: C&aacute;c thiết bị sản xuất v&agrave; sử dụng năng lượng mặt trời, năng lượng gi&oacute;, năng lượng Hydro&hellip;</p>\r\n\r\n<p>Trong khu&ocirc;n khổ sự kiện c&ograve;n diễn ra c&aacute;c hội thảo chuy&ecirc;n đề về C&ocirc;ng nghệ xanh, Pin, ắc - quy v&agrave; lưu trữ năng lượng Quốc tế 2025; Ph&aacute;t triển ng&agrave;nh c&ocirc;ng nghiệp Xanh 2025&hellip; B&ecirc;n cạnh đ&oacute;, gần 100 DN trong nước v&agrave; quốc tế sẽ tham gia diễn đ&agrave;n Giao thương Việt Nam - H&agrave;n Quốc - Trung Quốc. Đ&acirc;y l&agrave; cơ hội để c&aacute;c DN tr&igrave;nh diễn c&ocirc;ng nghệ, giới thiệu sản phẩm, gi&uacute;p c&aacute;c cơ quan quản l&yacute; c&oacute; điều kiện t&igrave;m hiểu thực tế về c&aacute;c c&ocirc;ng nghệ pin v&agrave; lưu trữ năng lượng ti&ecirc;n tiến tr&ecirc;n thế giới.</p>\r\n\r\n<p>Chương tr&igrave;nh cũng tổ chức kết nối giao thương giữa c&aacute;c DN trong nước v&agrave; quốc tế, mở rộng cơ hội tiếp cận kh&aacute;ch h&agrave;ng, triển khai c&aacute;c giao dịch, kết nối kinh doanh B2B, đ&agrave;m ph&aacute;n, k&yacute; kết hợp t&aacute;c &ldquo;1-1&rdquo; giữa c&aacute;c DN trong lĩnh vực năng lượng v&agrave; m&ocirc;i trường.</p>\r\n\r\n<p>Đặc biệt, trong khu&ocirc;n khổ chương tr&igrave;nh, với mục ti&ecirc;u &ldquo;Chuyển đổi xanh &ndash; H&agrave;nh động v&igrave; Net Zero&rdquo;, UBND TP H&agrave; Nội phối hợp Bộ Khoa học v&agrave; C&ocirc;ng nghệ, Bộ C&ocirc;ng Thương tổ chức Diễn đ&agrave;n &ldquo;Chuyển dịch năng lượng Việt Nam năm 2025&rdquo;. Diễn đ&agrave;n nhằm trao đổi, chia sẻ về nội dung, khả năng, xu thế chuyển dịch năng lượng tr&ecirc;n thế giới v&agrave; tại Việt Nam; Cơ hội v&agrave; th&aacute;ch thức của th&agrave;nh phố H&agrave; Nội trong d&ograve;ng chảy về chuyển dịch năng lượng, tăng trưởng xanh v&agrave; ph&aacute;t triển bền vững; Định hướng của c&aacute;c DN trong việc chuyển dịch năng lượng v&agrave; ph&aacute;t triển c&ocirc;ng nghệ&hellip;</p>\r\n\r\n<p>Gi&aacute;m đốc Trung t&acirc;m Khuyến c&ocirc;ng v&agrave; tư vấn ph&aacute;t triển c&ocirc;ng nghiệp H&agrave; Nội Ho&agrave;ng Minh L&acirc;m cho biết, đến nay, ENTECH H&agrave; Nội đ&atilde; qua 15 lần tổ chức v&agrave; lu&ocirc;n mang đến cho c&aacute;c DN, kh&aacute;ch tham quan, c&aacute;c nh&agrave; nghi&ecirc;n cứu, c&aacute;c nh&agrave; khoa học những cơ hội kinh doanh, gặp gỡ, trao đổi, nghi&ecirc;n cứu, chuyển giao c&ocirc;ng nghệ thiết thực v&agrave; hiệu quả. C&aacute;c lần hội chợ đ&atilde; thu h&uacute;t 3.656 DN tham gia trưng b&agrave;y với hơn 18.000 sản phẩm, dịch vụ; hơn 1.390 thỏa thuận đ&atilde; được k&yacute; kết, tổng gi&aacute; trị hợp đồng đạt hơn 212 triệu USD.</p>\r\n\r\n<p>Hội chợ, triển l&atilde;m quốc tế ENTECH H&agrave; Nội l&agrave; chương tr&igrave;nh do TP H&agrave; Nội v&agrave; TP Busan (H&agrave;n Quốc) phối hợp tổ chức từ năm 2009. Đ&acirc;y l&agrave; hội chợ chuy&ecirc;n ng&agrave;nh tập trung giới thiệu c&aacute;c sản phẩm, c&ocirc;ng nghệ trong lĩnh vực Năng lượng v&agrave; M&ocirc;i trường đ&atilde; thu h&uacute;t sự quan t&acirc;m, tham gia của c&aacute;c DN của trong nước v&agrave; quốc tế, được Bộ C&ocirc;ng Thương đ&aacute;nh gi&aacute; l&agrave; hội chợ triển l&atilde;m lớn nhất to&agrave;n quốc trong lĩnh vực năng lượng v&agrave; m&ocirc;i trường.</p>', NULL, NULL, NULL, '2026-02-07 17:48:24', '2026-02-21 01:49:05'),
(42, 1, 2, 'Entech Hanoi 2026', 'Hanoi International Energy and Environmental Technology Exhibition 2026', 'entech-hanoi-2026', '<p>Hanoi 2025 International Energy and Environmental Technology Exhibition (ENTECH HANOI 2025) will contribute to creating an energy transition process, towards developing a green economy. That is the assertion of the leader of the Hanoi Center for Industrial Promotion and Industrial Development Consulting (Hanoi Department of Industry and Trade) at the press conference about the ENTECH Hanoi 2025 Exhibition Fair event taking place on June 18.</p>\r\n\r\n<p>ENTECH HANOI 2025 Fair takes place from June 25 - 27, 2025, bringing together more than 200 participating enterprises (DN) with more than 250 booths displaying products and energy - environmental technology in many fields of energy - environmental technology. Specifically: Technology for treating household waste and medical waste; Technology for treating domestic water, wastewater, polluted water, and salt water; Air pollution monitoring and warning technology; Remote automatic monitoring system; Technology and construction help save energy in industrial production lines, thermal equipment, monitoring technology; Lighting technology; Renewable energy, new energy, energy sources: Equipment for producing and using solar energy, wind energy, hydrogen energy...</p>\r\n\r\n<p>Within the framework of the event, there will also be seminars on Green Technology, Batteries, Batteries and International Energy Storage 2025; Developing Green Industry 2025... Besides, nearly 100 domestic and international enterprises will participate in the Vietnam - Korea - China Trade Forum. This is an opportunity for businesses to demonstrate technology, introduce products, and help regulatory agencies learn about advanced battery and energy storage technologies in the world.</p>\r\n\r\n<p>The program also organizes trade connections between domestic and international businesses, expands opportunities to reach customers, implement transactions, B2B business connections, negotiate and sign &quot;one-to-one&quot; cooperation between businesses in the field of energy and environment.</p>\r\n\r\n<p>In particular, within the framework of the program, with the goal of &quot;Green Transformation - Action for Net Zero&quot;, Hanoi People&#39;s Committee coordinated with the Ministry of Science and Technology and the Ministry of Industry and Trade to organize the Forum &quot;Vietnam&#39;s Energy Transition in 2025&quot;. The forum aims to exchange and share content, capabilities, and energy transition trends in the world and in Vietnam; Opportunities and challenges of Hanoi city in the flow of energy transition, green growth and sustainable development; Orientation of businesses in energy transition and technology development...</p>\r\n\r\n<p>Director of Hanoi Center for Industrial Promotion and Industrial Development Consulting Hoang Minh Lam said that up to now, ENTECH Hanoi has been organized 15 times and always provides businesses, visitors, researchers, and scientists with practical and effective business, meeting, exchange, research, and technology transfer opportunities. The fairs attracted 3,656 businesses to exhibit more than 18,000 products and services; More than 1,390 agreements have been signed, with a total contract value of more than 212 million USD.</p>\r\n\r\n<p>ENTECH Hanoi International Fair and Exhibition is a program jointly organized by Hanoi City and Busan City (Korea) since 2009. This is a specialized fair focusing on introducing products and technologies in the field of Energy and Environment that has attracted the attention and participation of domestic and international businesses, and is considered by the Ministry of Industry and Trade to be the largest exhibition fair nationwide in the field of energy and environment.</p>', NULL, NULL, NULL, '2026-02-07 17:48:24', '2026-02-21 01:42:38'),
(43, 1, 3, '河内恩泰克 2026', '2026 年河内国际能源与环境技术展览会', 'entech-hanoi-2026', '<p>2025年河内国际能源与环境技术展览会（ENTECH HANOI 2025）将有助于创建能源转型进程，发展绿色经济。这是河内工业促进和工业发展咨询中心（河内工贸部）领导在6月18日举行的ENTECH河内2025展览会新闻发布会上的断言。</p>\r\n\r\n<p>ENTECH HENOI 2025 Fair于2025年6月25日至27日举行，汇聚了200多家参展企业（DN），设有250多个展位，展示能源-环境技术多个领域的产品和能源-环境技术。具体为：生活垃圾和医疗垃圾处理技术；生活水、废水、污水、盐水处理技术；大气污染监测预警技术；远程自动监控系统；技术和建设有助于工业生产线、热工设备、监控技术的节能；照明技术；可再生能源、新能源、能源：生产和利用太阳能、风能、氢能的设备&hellip;&hellip;</p>\r\n\r\n<p>活动框架内还将举办绿色技术、电池、电池和国际储能2025研讨会；发展绿色产业2025&hellip;&hellip;此外，近百家国内外企业将参加越南-韩国-中国贸易论坛。这是企业展示技术、介绍产品并帮助监管机构了解世界先进电池和储能技术的机会。</p>\r\n\r\n<p>该计划还组织国内和国际企业之间的贸易联系，扩大接触客户的机会，实施交易，B2B业务联系，谈判并签署能源和环境领域企业之间的&ldquo;一对一&rdquo;合作。</p>\r\n\r\n<p>特别是，在该计划的框架内，以&ldquo;绿色转型&mdash;&mdash;净零行动&rdquo;为目标，河内市人民委员会与科技部、工贸部协调举办&ldquo;2025年越南能源转型&rdquo;论坛。该论坛旨在交流和分享世界和越南的内容、能力和能源转型趋势；河内市在能源转型、绿色增长和可持续发展方面的机遇和挑战；能源转型和技术开发的企业定位...</p>\r\n\r\n<p>河内工业促进和工业发展咨询中心主任黄明林表示，迄今为止，ENTECH Hanoi已举办了15届，始终为企业、参观者、研究人员和科学家提供务实有效的商务、会议、交流、研究和技术转让机会。展会吸引了3,656家企业展出超过18,000种产品和服务；已签署协议1390余份，合同总金额超过2.12亿美元。</p>\r\n\r\n<p>ENTECH河内国际博览会是河内市和韩国釜山市自2009年以来联合举办的项目。这是一个专注于介绍能源和环境领域产品和技术的专业展会，吸引了国内外企业的关注和参与，被工贸部认为是全国最大的能源和环境领域的展览展会。</p>', NULL, NULL, NULL, '2026-02-07 17:48:24', '2026-02-21 01:42:38'),
(44, 1, 4, '엔테크 하노이 2026', '2026 하노이 국제 에너지 및 환경 기술 전시회', 'entech-hanoi-2026', '<p>하노이 2025 국제 에너지 및 환경 기술 전시회(ENTECH HANOI 2025)는 녹색 경제 발전을 향한 에너지 전환 프로세스를 만드는 데 기여할 것입니다. 지난 6월 18일 열린 ENTECH 하노이 2025 전시회 행사 기자회견에서 하노이 산업진흥 및 산업개발컨설팅센터(하노이 산업통상부) 소장이 주장한 내용이다.</p>\r\n\r\n<p>ENTECH HANOI 2025 박람회는 2025년 6월 25일부터 27일까지 개최되며, 200개 이상의 참여 기업(DN)이 모여 250개 이상의 부스에서 다양한 에너지-환경 기술 분야의 제품과 에너지-환경 기술을 전시합니다. 구체적으로는: 생활폐기물 및 의료폐기물 처리 기술; 생활용수, 폐수, 오염수 및 염수를 처리하는 기술 대기오염 모니터링 및 경고 기술 원격 자동 모니터링 시스템; 기술과 건설은 산업 생산 라인, 열 장비, 모니터링 기술에서 에너지를 절약하는 데 도움이 됩니다. 조명 기술; 신재생에너지, 신에너지, 에너지원: 태양에너지, 풍력에너지, 수소에너지 등을 생산하고 이용하기 위한 장비...</p>\r\n\r\n<p>행사 프레임워크 내에서 녹색 기술, 배터리, 배터리 및 국제 에너지 저장 2025에 관한 세미나도 열릴 예정입니다. 녹색산업 발전 2025&hellip; 이밖에도 베트남-한-중 무역포럼에는 국내외 100여개 기업이 참여할 예정이다. 이는 기업이 기술을 시연하고 제품을 소개하며 규제 기관이 전 세계의 고급 배터리 및 에너지 저장 기술에 대해 배울 수 있는 기회입니다.</p>\r\n\r\n<p>이 프로그램은 또한 국내 및 국제 기업 간의 무역 연결을 조직하고, 고객에게 다가갈 기회를 확대하고, 거래를 구현하고, B2B 비즈니스 연결을 구현하고, 에너지 및 환경 분야 기업 간의 &quot;일대일&quot; 협력을 협상하고 체결합니다.</p>\r\n\r\n<p>특히 프로그램 프레임워크 내에서 &quot;녹색 전환 - 넷 제로를 위한 행동&quot;을 목표로 하노이 인민위원회는 과학기술부 및 산업통상부와 협력하여 &quot;2025년 베트남 에너지 전환&quot; 포럼을 조직했습니다. 포럼은 세계와 베트남의 콘텐츠, 역량, 에너지 전환 동향을 교환하고 공유하는 것을 목표로 합니다. 에너지전환, 녹색성장, 지속가능발전의 흐름 속에서 하노이시의 기회와 과제 에너지전환 및 기술개발 사업 방향&hellip;</p>\r\n\r\n<p>하노이 산업 진흥 및 산업 개발 컨설팅 센터의 Hoang Minh Lam 소장은 지금까지 ENTECH Hanoi가 15회 조직되었으며 항상 기업, 방문자, 연구원 및 과학자에게 실용적이고 효과적인 비즈니스, 회의, 교류, 연구 및 기술 이전 기회를 제공한다고 말했습니다. 박람회에는 3,656개 기업이 참여하여 18,000개 이상의 제품과 서비스를 전시했습니다. 1,390개 이상의 계약이 체결되었으며 총 계약 금액은 2억 1,200만 달러 이상입니다.</p>\r\n\r\n<p>ENTECH 하노이 국제 박람회 및 전시회는 2009년부터 하노이시와 한국 부산시가 공동 주최하는 프로그램입니다. 이는 국내외 기업의 관심과 참여를 불러일으키는 에너지 및 환경 분야의 제품 및 기술 소개에 초점을 맞춘 전문 박람회로, 산업통상자원부가 선정한 에너지 및 환경 분야 최대 규모의 전국 박람회입니다.</p>', NULL, NULL, NULL, '2026-02-07 17:48:24', '2026-02-21 01:42:38'),
(45, 2, 1, 'Semicon Vietnam 2025', 'Triển lãm vi mạch bán dẫn Việt Nam 2025', NULL, NULL, NULL, NULL, NULL, '2026-02-08 02:19:53', '2026-02-23 16:36:08'),
(46, 2, 2, 'Semicon Vietnam 2025', 'Semicon Vietnam 2025', NULL, NULL, NULL, NULL, NULL, '2026-02-08 02:19:53', '2026-02-08 02:21:37'),
(47, 2, 3, '2025 年越南半导体展', '2025 年越南半导体展', NULL, NULL, NULL, NULL, NULL, '2026-02-08 02:19:53', '2026-02-08 02:22:03'),
(48, 2, 4, '세미콘 베트남 2025', '세미콘 베트남 2025', NULL, NULL, NULL, NULL, NULL, '2026-02-08 02:19:53', '2026-02-08 02:22:03'),
(49, 3, 1, 'VCAE 2025', 'Triển lãm Quốc tế năng lượng Việt Nam - Trung Quốc - Asean 2025', NULL, NULL, NULL, NULL, NULL, '2026-02-08 02:26:23', '2026-02-08 02:26:23'),
(50, 3, 2, 'VCAE 2025', 'Vietnam - China - Asean 2025 International Energy Exhibition', NULL, NULL, NULL, NULL, NULL, '2026-02-08 02:26:23', '2026-02-08 02:26:23'),
(51, 3, 3, 'VCAE 2025', '2025年越南-中国-东盟国际能源展览会', NULL, NULL, NULL, NULL, NULL, '2026-02-08 02:26:23', '2026-02-08 02:26:23'),
(52, 3, 4, 'VCAE 2025', '베트남-중국-아세안 2025 국제에너지박람회', NULL, NULL, NULL, NULL, NULL, '2026-02-08 02:26:23', '2026-02-08 02:26:23'),
(53, 4, 1, 'VIEE Expo 2025', 'Triển lãm quốc tế công nghiệp điện tử và chế tạo thông minh Việt Nam', NULL, NULL, NULL, NULL, NULL, '2026-02-08 02:28:44', '2026-02-08 02:28:44'),
(54, 4, 2, 'VIEE Expo 2025', 'Vietnam international exhibition of electronics industry and smart manufacturing', NULL, NULL, NULL, NULL, NULL, '2026-02-08 02:28:44', '2026-02-08 02:28:44'),
(55, 4, 3, '查看 2025 年世博会', '越南国际电子工业及智能制造展览会', NULL, NULL, NULL, NULL, NULL, '2026-02-08 02:28:44', '2026-02-08 02:28:44'),
(56, 4, 4, '2025년 엑스포 보기', '전자 산업 및 스마트 제조를 위한 베트남 국제 전시회', NULL, NULL, NULL, NULL, NULL, '2026-02-08 02:28:44', '2026-02-08 02:28:44'),
(57, 5, 1, 'VTR & CON 2025', 'Triển lãm và Hội nghị Quốc tế về công nghệ đường sắt 2025', NULL, NULL, NULL, NULL, NULL, '2026-02-08 02:45:29', '2026-02-08 02:45:29'),
(58, 5, 2, 'VTR & CON 2025', 'International Exhibition and Conference on Railway Technology 2025', NULL, NULL, NULL, NULL, NULL, '2026-02-08 02:45:29', '2026-02-08 02:45:29'),
(59, 5, 3, 'VTR & CON 2025', '2025 年铁路技术国际展览及会议', NULL, NULL, NULL, NULL, NULL, '2026-02-08 02:45:29', '2026-02-08 02:45:29'),
(60, 5, 4, 'VTR & CON 2025', '2025년 철도기술 국제전시 및 컨퍼런스', NULL, NULL, NULL, NULL, NULL, '2026-02-08 02:45:29', '2026-02-08 02:45:29'),
(61, 6, 1, 'HE Expo 2025', 'Triển lãm Quốc tế ngũ kim và dụng cụ cầm tay', NULL, NULL, NULL, NULL, NULL, '2026-02-08 02:48:31', '2026-02-08 02:48:31'),
(62, 6, 2, 'HE Expo 2025', 'International Exhibition Of Hardware And Hand Tools', NULL, NULL, NULL, NULL, NULL, '2026-02-08 02:48:31', '2026-02-08 02:48:31'),
(63, 6, 3, '2025 年 HE 博览会', '国际五金及手动工具展览会', NULL, NULL, NULL, NULL, NULL, '2026-02-08 02:48:31', '2026-02-08 02:48:31'),
(64, 6, 4, 'HE 엑스포 2025', '하드웨어 및 수공구 국제 전시회', NULL, NULL, NULL, NULL, NULL, '2026-02-08 02:48:31', '2026-02-08 02:48:31'),
(65, 7, 1, 'VRT & CON C.B.M.E', 'VRT & CON C.B.M.E', NULL, NULL, NULL, NULL, NULL, '2026-02-20 16:01:49', '2026-03-06 11:32:47'),
(66, 7, 2, 'VRT & CON C.B.M.E', 'VRT & CON C.B.M.E', NULL, NULL, NULL, NULL, NULL, '2026-02-20 16:01:49', '2026-03-06 11:32:47'),
(67, 7, 3, 'VRT & CON C.B.M.E', 'VRT & CON C.B.M.E', NULL, NULL, NULL, NULL, NULL, '2026-02-20 16:01:49', '2026-03-06 11:32:47'),
(68, 7, 4, 'VRT & CON C.B.M.E', 'VRT & CON C.B.M.E', NULL, NULL, NULL, NULL, NULL, '2026-02-20 16:01:49', '2026-03-06 11:32:47'),
(69, 8, 1, 'HE EXPO OSH', 'HE EXPO OSH', NULL, NULL, NULL, NULL, NULL, '2026-02-20 16:02:14', '2026-03-06 11:32:55'),
(70, 8, 2, 'HE EXPO OSH', 'HE EXPO OSH', NULL, NULL, NULL, NULL, NULL, '2026-02-20 16:02:14', '2026-03-06 11:32:55'),
(71, 8, 3, 'HE EXPO OSH', 'HE EXPO OSH', NULL, NULL, NULL, NULL, NULL, '2026-02-20 16:02:14', '2026-03-06 11:32:55'),
(72, 8, 4, 'HE EXPO OSH', 'HE EXPO OSH', NULL, NULL, NULL, NULL, NULL, '2026-02-20 16:02:14', '2026-03-06 11:32:55'),
(73, 9, 1, 'Envirotex 2026', 'Triển lãm Quốc tế Công nghệ môi trường, nước và vệ sinh công nghiệp Việt Nam 2026', NULL, NULL, NULL, NULL, NULL, '2026-03-11 02:42:17', '2026-04-05 10:00:20'),
(74, 9, 2, 'Envirotex 2026', 'Vietnam International Exhibition Of Environmental Technology, Water And Industrial Sanitation 2026', NULL, NULL, NULL, NULL, NULL, '2026-03-11 02:42:17', '2026-04-05 10:00:20'),
(75, 9, 3, '2026 年国际环保展览会', '2026年越南国际环境技术、水和工业卫生展览会', NULL, NULL, NULL, NULL, NULL, '2026-03-11 02:42:17', '2026-03-11 02:42:17'),
(76, 9, 4, '엔비로텍스 2026', '환경 기술, 물 및 산업 위생 2026 베트남 국제 전시회', NULL, NULL, NULL, NULL, NULL, '2026-03-11 02:42:17', '2026-03-11 02:42:17'),
(77, 10, 1, 'Battery Expo 2026', 'Triển lãm Quốc tế Công nghệ Pin, Nguồn đIện và Lưu trữ năng lượng Việt nam (lần thứ 03)', NULL, NULL, NULL, NULL, NULL, '2026-03-22 02:06:38', '2026-03-22 02:06:38'),
(78, 10, 2, 'Battery Expo 2026', 'Vietnam International Exhibition of Battery Technology, Power Source and Energy Storage (3rd time)', NULL, NULL, NULL, NULL, NULL, '2026-03-22 02:06:38', '2026-03-22 02:06:38'),
(79, 10, 3, 'Battery Expo 2026', 'Vietnam International Exhibition of Battery Technology, Power Source and Energy Storage (3rd time)', NULL, NULL, NULL, NULL, NULL, '2026-03-22 02:06:38', '2026-03-22 02:06:38'),
(80, 10, 4, 'Battery Expo 2026', 'Vietnam International Exhibition of Battery Technology, Power Source and Energy Storage (3rd time)', NULL, NULL, NULL, NULL, NULL, '2026-03-22 02:06:38', '2026-03-22 02:06:38'),
(81, 11, 1, 'UAV Việt Nam 2026', 'Triển lãm & Diễn đàn Quốc tế về Kinh tế tầm thấp và Công nghiệp UAV Việt Nam', NULL, NULL, NULL, NULL, NULL, '2026-04-02 03:25:50', '2026-04-02 03:25:50'),
(82, 11, 2, 'UAV Vietnam 2026', 'International Exhibition & Forum on Low Altitude Economy and Vietnam UAV Industry', NULL, NULL, NULL, NULL, NULL, '2026-04-02 03:25:50', '2026-04-02 03:25:50'),
(83, 11, 3, '无人机越南2026', '低空经济与越南无人机产业国际展览暨论坛', NULL, NULL, NULL, NULL, NULL, '2026-04-02 03:25:50', '2026-04-02 03:25:50'),
(84, 11, 4, 'UAV 베트남 2026', '저고도 경제와 베트남 무인 항공기 산업에 관한 국제 전시회 및 포럼', NULL, NULL, NULL, NULL, NULL, '2026-04-02 03:25:50', '2026-04-02 03:25:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_failed_jobs`
--

CREATE TABLE `vdh_failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_filters`
--

CREATE TABLE `vdh_filters` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT 'tên filter',
  `type` varchar(20) DEFAULT NULL COMMENT 'system / shared / personal',
  `user_id` int(11) DEFAULT NULL,
  `customer_type_id` tinyint(4) DEFAULT NULL,
  `rules` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`rules`)),
  `sort` tinyint(4) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_languages`
--

CREATE TABLE `vdh_languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lang_class` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(1) UNSIGNED DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `vdh_languages`
--

INSERT INTO `vdh_languages` (`id`, `name`, `lang_class`, `title`, `description`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'vi', 'vi_vn', 'VIE', 'Tiếng Việt', 1, '/assets/images/flag/vietnam.png', '2020-06-19 16:12:11', '2026-01-04 01:56:03'),
(2, 'en', 'en_es', 'ENG', 'Tiếng Anh', 1, '/assets/images/flag/uk.png', '2020-06-19 16:12:15', '2020-06-19 16:12:17'),
(3, 'cn', 'cn_CN', 'CN', 'Tiếng Trung', 1, '/assets/images/flag/china.png', '2020-07-05 04:42:05', '2026-01-04 01:54:10'),
(4, 'kr', 'kr_KR', 'KR', 'Tiếng Hàn', 1, '/assets/images/flag/korea.png', '2026-02-01 12:00:53', '2026-02-01 12:00:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_mail`
--

CREATE TABLE `vdh_mail` (
  `id` tinyint(4) NOT NULL,
  `title` varchar(50) NOT NULL,
  `key` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `vdh_mail`
--

INSERT INTO `vdh_mail` (`id`, `title`, `key`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mật khẩu của bạn', 'new_password', 1, '2025-06-17 13:11:15', '2026-02-22 13:57:02'),
(2, 'Mã OTP', 'otp', 1, '2025-06-18 08:11:06', '2026-02-16 16:38:03'),
(3, 'Hoàn tất đơn hàng', 'order_success', 1, '2025-06-21 07:11:16', '2025-06-21 07:11:51'),
(4, 'Quên mật khẩu', 'forgot_password', 1, '2026-02-16 15:20:14', '2026-02-16 15:20:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_mail_detail`
--

CREATE TABLE `vdh_mail_detail` (
  `mail_id` tinyint(4) NOT NULL,
  `lang_id` tinyint(1) NOT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `vdh_mail_detail`
--

INSERT INTO `vdh_mail_detail` (`mail_id`, `lang_id`, `subject`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mật khẩu của bạn', '<h2 style=\"text-align:center; font-size:24px; font-weight:600; margin-bottom:20px; color:#009689; margin-top:0;\"> Mật khẩu của bạn </h2>\r\n<p style=\"margin-top:0; margin-bottom:10px;\">Xin chào,</p>\r\n<p style=\"margin-top:0; margin-bottom:10px;\">Chúng tôi đã tạo mật khẩu cho tài khoản của bạn.</p>\r\n<div style=\"font-size:20px; font-weight:bold; color:#292929; margin: 20px 0; text-align: center;\">\r\n    <code style=\"border:1px dashed #009689;padding:10px 15px;color:#009689\">{{ $password }}</code>\r\n</div>\r\n<p style=\"margin-top:0; margin-bottom:20px;\">Vui lòng sử dụng mật khẩu này để đăng nhập và thay đổi lại nếu cần.</p>\r\n<p style=\"text-align: center; margin-top:0;\">\r\n    <a href=\"{{ route(\'index.home\') }}\" style=\"display:inline-block; margin-top:20px; padding:12px 24px; background-color:#009689; color:#ffffff; font-weight:600; text-decoration:none; border-radius:6px;\"> Đăng nhập ngay </a>\r\n</p>', '2025-06-17 13:11:15', '2026-02-22 13:57:02'),
(1, 2, 'Your password', '<h2 style=\"text-align:center; font-size:24px; font-weight:600; margin-bottom:20px; color:#009689; margin-top:0;\"> Your Password! </h2>\r\n<p style=\"margin-top:0; margin-bottom:10px;\">Hello,</p>\r\n<p style=\"margin-top:0; margin-bottom:10px;\"> We have generated a password for your account. </p>\r\n<div style=\"font-size:20px; font-weight:bold; color:#292929; margin: 20px 0; text-align: center;\">\r\n    <code style=\"border:1px dashed #009689;padding:10px 15px;color:#009689\">{{ $password }}</code>\r\n</div>\r\n<p style=\"margin-top:0; margin-bottom:20px;\"> Please use this password to log in and change it if necessary. </p>\r\n<p style=\"text-align: center; margin-top:0;\">\r\n    <a href=\"{{ $ctaUrl ?? \'#\' }}\" style=\"display:inline-block; margin-top:20px; padding:12px 24px; background-color:#009689; color:#ffffff; font-weight:600; text-decoration:none; border-radius:6px;\"> Log in now </a>\r\n</p>', '2025-06-17 13:11:15', '2026-02-22 13:57:02'),
(2, 1, 'Mã OTP của bạn {{ $otp }}', '<h2 style=\"text-align:center; font-size:24px; font-weight:600; margin-bottom:20px; margin-top:0; color:#009689;\"> Mã OTP </h2>\r\n<p style=\"margin-top:0; margin-bottom:10px;\"> Dưới đây là mã OTP của tài khoản: {{ $email }}\r\n</p>\r\n<p style=\"margin-top:0; margin-bottom:10px;\"> Mã chỉ hoạt động trong <b>05 phút</b>. </p>\r\n<p style=\"font-size:20px; font-weight:bold; color:#009689; margin: 20px 0; text-align: center;\">\r\n    <code style=\"border:1px dashed #009689; padding:10px 20px; border-radius:4px; display:inline-block;\">\r\n        {{ $otp }}\r\n    </code>\r\n</p>', '2025-06-18 08:11:06', '2026-02-16 16:38:03'),
(2, 2, 'Your OTP code {{ $otp }}', '<h2 style=\"text-align:center; font-size:24px; font-weight:600; margin-bottom:20px; margin-top:0; color:#009689;\"> Account Verification Code! </h2>\r\n<p style=\"margin-top:0; margin-bottom:10px;\"> Below is your account verification code: {{ $email }} </p>\r\n<p style=\"margin-top:0; margin-bottom:10px;\"> The code is valid for <b>15 minutes</b> only. </p>\r\n<p style=\"font-size:20px; font-weight:bold; color:#009689; margin: 20px 0; text-align: center;\">\r\n    <code style=\"border:1px dashed #009689; padding:10px 20px; border-radius:4px; display:inline-block;\">\r\n        {{ $otp }}\r\n    </code>\r\n</p>', '2025-06-18 08:11:06', '2026-02-16 16:38:03'),
(3, 1, 'Đặt hàng thành công {{ $order_code }}', '<h2 style=\"text-align:center; font-size:24px; font-weight:600; margin-bottom:20px; margin-top:0; color:#009689;\">\r\n    Đặt hàng thành công!\r\n</h2>\r\n\r\n<p style=\"margin-top:0; margin-bottom:10px;\">\r\n    Cảm ơn bạn đã mua hàng tại <strong>Azeefy</strong>. Chúng tôi đã nhận được đơn hàng của bạn.\r\n</p>\r\n\r\n<p style=\"margin-top:0; margin-bottom:10px;\">\r\n    Mã đơn hàng của bạn là:\r\n</p>\r\n\r\n<p style=\"font-size:20px; font-weight:bold; color:#009689; margin: 20px 0; text-align: center;\">\r\n    <code style=\"border:1px dashed #009689; padding:10px 20px; border-radius:4px; display:inline-block;\">\r\n        {{ $order_code }}\r\n    </code>\r\n</p>\r\n\r\n<h3 style=\"font-size:18px; font-weight:600; margin-bottom:10px; color:#009689;\">Danh sách sản phẩm:</h3>\r\n\r\n<table width=\"100%\" cellpadding=\"8\" cellspacing=\"0\" style=\"border-collapse:collapse; margin-bottom: 20px;\">\r\n    <thead>\r\n        <tr style=\"background-color:#f4f4f4;\">\r\n            <th align=\"left\" style=\"border:1px solid #ccc;\">Sản phẩm</th>\r\n            <th align=\"center\" style=\"border:1px solid #ccc;\">Số lượng</th>\r\n        </tr>\r\n    </thead>\r\n    <tbody>\r\n        @foreach($order_details as $item)\r\n        <tr>\r\n            <td style=\"border:1px solid #ccc;\">{{ $item->product_title }}</td>\r\n            <td align=\"center\" style=\"border:1px solid #ccc;\">{{ $item->qty }}</td>\r\n        </tr>\r\n        @endforeach\r\n    </tbody>\r\n</table>\r\n\r\n<p style=\"margin-top:0; font-size:16px;\">\r\n    <strong>Tổng tiền thanh toán:</strong>\r\n    <span style=\"color:#009689; font-weight:bold;\">{{ number_format($grand_total, 0, \',\', \'.\') }} VND</span>\r\n</p>\r\n\r\n<p style=\"margin-top:0; margin-bottom:10px;\">\r\n    Chúng tôi sẽ xử lý đơn hàng và thông báo khi đơn hàng được giao đi. Bạn có thể theo dõi tình trạng đơn hàng trong trang tài khoản.\r\n</p>\r\n\r\n<p style=\"margin-top:20px; margin-bottom:0; font-size:14px; color:#555;\">\r\n    Nếu bạn có bất kỳ câu hỏi nào, vui lòng liên hệ với bộ phận hỗ trợ khách hàng.\r\n</p>', '2025-06-21 07:11:16', '2025-08-02 09:22:28'),
(3, 2, 'Order Placed Successfully {{ $order_code }}', '<h2 style=\"text-align:center; font-size:24px; font-weight:600; margin-bottom:20px; margin-top:0; color:#009689;\">\r\n    Order Placed Successfully!\r\n</h2>\r\n\r\n<p style=\"margin-top:0; margin-bottom:10px;\">\r\n    Thank you for your purchase at <strong>Azeefy</strong>. We have received your order.\r\n</p>\r\n\r\n<p style=\"margin-top:0; margin-bottom:10px;\">\r\n    Your order code is:\r\n</p>\r\n\r\n<p style=\"font-size:20px; font-weight:bold; color:#009689; margin: 20px 0; text-align: center;\">\r\n    <code style=\"border:1px dashed #009689; padding:10px 20px; border-radius:4px; display:inline-block;\">\r\n        {{ $order_code }}\r\n    </code>\r\n</p>\r\n\r\n<h3 style=\"font-size:18px; font-weight:600; margin-bottom:10px; color:#009689;\">Product List:</h3>\r\n\r\n<table width=\"100%\" cellpadding=\"8\" cellspacing=\"0\" style=\"border-collapse:collapse; margin-bottom: 20px;\">\r\n    <thead>\r\n        <tr style=\"background-color:#f4f4f4;\">\r\n            <th align=\"left\" style=\"border:1px solid #ccc;\">Product</th>\r\n            <th align=\"center\" style=\"border:1px solid #ccc;\">Quantity</th>\r\n        </tr>\r\n    </thead>\r\n    <tbody>\r\n        @foreach($order_details as $item)\r\n        <tr>\r\n            <td style=\"border:1px solid #ccc;\">{{ $item->product_title }}</td>\r\n            <td align=\"center\" style=\"border:1px solid #ccc;\">{{ $item->qty }}</td>\r\n        </tr>\r\n        @endforeach\r\n    </tbody>\r\n</table>\r\n\r\n<p style=\"margin-top:0; font-size:16px;\">\r\n    <strong>Total Payment:</strong>\r\n    <span style=\"color:#009689; font-weight:bold;\">{{ number_format($grand_total, 0, \',\', \'.\') }} VND</span>\r\n</p>\r\n\r\n<p style=\"margin-top:0; margin-bottom:10px;\">\r\n    We will process your order and notify you once it has been shipped. You can track your order in your account page.\r\n</p>\r\n\r\n<p style=\"margin-top:20px; margin-bottom:0; font-size:14px; color:#555;\">\r\n    If you have any questions, feel free to contact our customer support team.\r\n</p>', '2025-06-21 07:11:16', '2025-08-02 09:22:28'),
(4, 1, 'Quên mật khẩu', '<h2 style=\"text-align:center; font-size:24px; font-weight:600; margin-bottom:20px; color:#009689; margin-top:0;\"> Mật khẩu mới! </h2>\r\n<p style=\"margin-top:0; margin-bottom:10px;\">Xin chào,</p>\r\n<p style=\"margin-top:0; margin-bottom:10px;\">Chúng tôi đã tạo mật khẩu mới cho tài khoản của bạn theo yêu cầu.</p>\r\n<div style=\"font-size:20px; font-weight:bold; color:#292929; margin: 20px 0; text-align: center;\">\r\n    <code style=\"border:1px dashed #009689;padding:10px 15px;color:#009689\">{{ $password }}</code>\r\n</div>\r\n<p style=\"margin-top:0; margin-bottom:20px;\">Vui lòng sử dụng mật khẩu này để đăng nhập và thay đổi lại nếu cần.</p>\r\n<p style=\"text-align: center; margin-top:0;\">\r\n    <a href=\"{{ $ctaUrl ?? \'#\' }}\" style=\"display:inline-block; margin-top:20px; padding:12px 24px; background-color:#009689; color:#ffffff; font-weight:600; text-decoration:none; border-radius:6px;\"> Đăng nhập ngay </a>\r\n</p>', '2026-02-16 15:20:14', '2026-02-16 15:20:14'),
(4, 2, 'Forgot Password', NULL, '2026-02-16 15:20:14', '2026-02-16 15:20:14'),
(4, 3, NULL, NULL, '2026-02-16 15:20:14', '2026-02-16 15:20:14'),
(4, 4, NULL, NULL, '2026-02-16 15:20:14', '2026-02-16 15:20:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_migrations`
--

CREATE TABLE `vdh_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vdh_migrations`
--

INSERT INTO `vdh_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2026_03_01_214007_create_notifications_table', 1),
(6, '2026_04_16_180300_create_tag_tables', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_notifications`
--

CREATE TABLE `vdh_notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_organizers`
--

CREATE TABLE `vdh_organizers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `fullname` varchar(50) DEFAULT NULL,
  `birthday` varchar(10) DEFAULT NULL,
  `passport` varchar(20) DEFAULT NULL,
  `role_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `forgot_pass_token` varchar(100) DEFAULT NULL,
  `updated_forgot_token` datetime DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `vdh_organizers`
--

INSERT INTO `vdh_organizers` (`id`, `email`, `password`, `phone`, `avatar`, `status`, `fullname`, `birthday`, `passport`, `role_id`, `company_id`, `address`, `forgot_pass_token`, `updated_forgot_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'nguyenphihung@globalexpo.com.vn', '$2y$12$abRphRa.QPnwZgQ18.ot2.kfLxabWS6ayRZkUxiJwr4mzqcFeZrMu', '0904239996', '/assets/uploads/media/images/files/agency/nguyenphihung.png', 1, 'Nguyễn Phi Hùng', '1970-01-01', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '2026-04-05 15:51:11'),
(5, 'quangvinh@globalexpo.com.vn', '$2y$12$cFpug.diZhLwwvN19NuMYeA9K0BBdpsTEDszkXaMRi5EH5Lo08YRG', '098 3109909', '/assets/uploads/media/images/files/agency/quangvinh.png', 1, 'Trần Quang Vinh', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2026-03-19 05:03:20', '2026-04-05 18:01:44'),
(6, 'thanhthuy@globalexpo.com.vn', '$2y$12$9y3Y9TSJ3ytQq0g1C.h4lO9GZfmCJ2q69M3lfWWVLiZz0CQzZ7Oga', NULL, '/assets/uploads/media/images/files/organizer/thanh-thuy.png', 1, 'Thanh Thủy', '15-08-1984', NULL, 4, 1, NULL, NULL, NULL, NULL, '2026-03-19 05:05:45', '2026-03-22 18:16:09'),
(7, 'phuonglinh@globalexpo.com.vn', '$2y$12$SLfUDZo0Ns0Wbicvq766jeepmfmD/OjDWuGKnLLsT.otB144j76Q6', NULL, '/assets/uploads/media/images/files/organizer/phuong-linh.png', 1, 'Phương Linh', NULL, NULL, 4, 1, NULL, NULL, NULL, NULL, '2026-03-22 18:18:00', '2026-03-22 18:18:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_organizer_role`
--

CREATE TABLE `vdh_organizer_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `permission` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `vdh_organizer_role`
--

INSERT INTO `vdh_organizer_role` (`id`, `name`, `permission`, `avatar`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Giám đốc', 'organizer.dashboard;organizer.activity;organizer.organizer.index;organizer.organizer.create;organizer.organizer.store;organizer.organizer.update;organizer.organizer.profile;organizer.organizer.profile.post;organizer.organizer.list;organizer.exhibition.index;organizer.exhibition.create;organizer.exhibition.store;organizer.exhibition.update;organizer.customer.index;organizer.customer.draft;organizer.customer.lead;organizer.customer.contact;organizer.customer.view;organizer.customer.create;organizer.customer.store;organizer.customer.update;organizer.customer.delete;organizer.customer.quickView;organizer.customer.bookmark;organizer.customer.comment;organizer.customer.avatar;organizer.customer.source;organizer.customer.type;organizer.customer.import;organizer.customer.syncTags;organizer.tag.index;organizer.tag.create;organizer.tag.store;organizer.tag.update;organizer.tag.delete;organizer.task.index;organizer.task.create;organizer.task.store;organizer.task.delete;organizer.task.detail;organizer.task.update;organizer.campaign.index;organizer.campaign.create;organizer.campaign.store;organizer.campaign.update;organizer.campaign.delete;organizer.campaign.customer_target.index;organizer.campaign.customer_target.create;organizer.campaign.customer_target.store;organizer.campaign.customer_target.update;organizer.campaign.customer_target.delete', NULL, 'Giám đốc', 1, '2020-12-10 02:32:39', '2026-04-17 05:25:37'),
(4, 'Sales', 'organizer.dashboard;organizer.activity;organizer.draft.index;organizer.draft.create;organizer.draft.store;organizer.draft.update;organizer.draft.staff;organizer.draft.upload;organizer.draft.delete;organizer.draft.data_verify;organizer.data_verify.index;organizer.data_verify.create;organizer.data_verify.store;organizer.data_verify.update;organizer.data_verify.staff;organizer.data_verify.upload;organizer.data_verify.delete;organizer.enterprise.index;organizer.enterprise.exhibitor.index;organizer.enterprise.exhibitor.add-exhibition;organizer.enterprise.exhibitor.remove-exhibition;organizer.enterprise.exhibitor.join;organizer.enterprise.exhibitor.view;organizer.enterprise.exhibitor.edit;organizer.enterprise.exhibitor.update;organizer.enterprise.exhibitor.contract;organizer.enterprise.exhibitor.previewContract;organizer.enterprise.exhibitor.deleteContract;organizer.enterprise.visitor.index', NULL, 'Nhân viên kinh doanh', 1, '2020-12-28 04:23:51', '2026-04-12 09:59:36'),
(5, 'Kế toán', 'dashboard', NULL, 'Tài chính kế toán', 1, '2026-03-17 14:00:37', '2026-03-17 14:01:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_password_reset_tokens`
--

CREATE TABLE `vdh_password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_personal_access_tokens`
--

CREATE TABLE `vdh_personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_roles`
--

CREATE TABLE `vdh_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `permission` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `vdh_roles`
--

INSERT INTO `vdh_roles` (`id`, `name`, `permission`, `avatar`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN', 'home;user;user.create;user.store;user.update;user.delete;user.profile;user.updateProfile;role;role.create;role.store;role.update;role.delete;category_news;category_news.create;category_news.store;category_news.update;category_news.delete;news;news.create;news.store;news.edit;news.update;news.delete;category_product;category_product.create;category_product.store;category_product.edit;category_product.update;category_product.delete;product;product.create;product.store;product.edit;product.update;product.delete;attribute;attribute.create;attribute.store;attribute.edit;attribute.update;attribute.delete;slide;slide.create;slide.store;slide.edit;slide.update;slide.delete;customer;customer.create;customer.store;customer.edit;customer.update;customer.delete', '/admin/uploads/media/images/files/tai%20khoan/1587997921_crown.png', 'Quyền cao nhất', 1, '2020-12-10 02:32:39', '2022-07-05 17:19:19'),
(4, 'Sales', 'dashboard;customer.index;customer.create;customer.store;customer.update;customer.delete;customer.draft;customer.draft;customer.draft.move;customer.draft.delete;customer.exhibitor.index;customer.exhibitor.add;customer.exhibitor.remove;customer.exhibitor.view;customer.exhibitor.store', NULL, 'Nhân viên kinh doanh', 1, '2020-12-28 04:23:51', '2026-03-17 14:11:31'),
(5, 'Kế toán', 'dashboard', NULL, 'Tài chính kế toán', 1, '2026-03-17 14:00:37', '2026-03-17 14:01:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_setting`
--

CREATE TABLE `vdh_setting` (
  `id` int(11) NOT NULL,
  `option_key` varchar(255) DEFAULT NULL,
  `option_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `vdh_setting`
--

INSERT INTO `vdh_setting` (`id`, `option_key`, `option_value`, `created_at`, `updated_at`) VALUES
(1, 'phone', '0986209305', '2026-02-08 03:22:48', '2026-02-08 03:26:38'),
(2, 'zalo', '0986209305', '2026-02-08 03:22:48', '2026-02-08 03:26:38'),
(3, 'facebook', 'facebook.com/vuduchongdotcom', '2026-02-08 03:22:48', '2026-02-08 03:26:38'),
(4, 'messenger', 'messenger.com/vuduchongdotcom', '2026-02-08 03:22:48', '2026-02-08 03:27:25'),
(5, 'maintenance', NULL, '2026-02-08 03:22:48', '2026-02-08 04:49:34'),
(6, 'seo', '1', '2026-02-08 03:22:48', '2026-02-08 03:26:22'),
(7, 'robot_index', NULL, '2026-02-08 03:28:15', '2026-02-21 02:02:51'),
(8, 'hero_typed', '{\"vi\":\"Qua tri\\u1ec3n l\\u00e3m B2B\\r\\nT\\u0103ng c\\u01b0\\u1eddng h\\u1ee3p t\\u00e1c\\r\\nK\\u1ebft n\\u1ed1i giao th\\u01b0\\u01a1ng\",\"en\":\"Through B2B exhibition\\r\\nStrengthen cooperation\\r\\nTrade connection\",\"cn\":\"\\u901a\\u8fc7B2B\\u5c55\\u4f1a\\r\\n\\u52a0\\u5f3a\\u5408\\u4f5c\\r\\n\\u8d38\\u6613\\u8054\\u7cfb\",\"kr\":\"B2B \\uc804\\uc2dc\\ub97c \\ud1b5\\ud574\\r\\n\\ud611\\ub825 \\uac15\\ud654\\r\\n\\ubb34\\uc5ed \\uc5f0\\uacb0\"}', '2026-03-06 11:20:11', '2026-04-10 07:46:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_source`
--

CREATE TABLE `vdh_source` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vdh_source`
--

INSERT INTO `vdh_source` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'CRM', NULL, NULL),
(2, 'Facebook', NULL, NULL),
(3, 'Google', NULL, NULL),
(4, 'Giới thiệu', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_taggables`
--

CREATE TABLE `vdh_taggables` (
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_type` varchar(255) NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vdh_taggables`
--

INSERT INTO `vdh_taggables` (`tag_id`, `taggable_type`, `taggable_id`) VALUES
(6, 'App\\Models\\Customer', 117),
(6, 'App\\Models\\Customer', 119),
(7, 'App\\Models\\Customer', 117),
(8, 'App\\Models\\Customer', 117),
(9, 'App\\Models\\Customer', 117),
(9, 'App\\Models\\Customer', 123),
(10, 'App\\Models\\Customer', 117),
(10, 'App\\Models\\Customer', 119);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_tags`
--

CREATE TABLE `vdh_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`name`)),
  `slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`slug`)),
  `type` varchar(255) DEFAULT NULL,
  `order_column` int(11) DEFAULT NULL,
  `organizer_id` tinyint(4) DEFAULT NULL,
  `company_organizer_id` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vdh_tags`
--

INSERT INTO `vdh_tags` (`id`, `name`, `slug`, `type`, `order_column`, `organizer_id`, `company_organizer_id`, `created_at`, `updated_at`) VALUES
(6, '{\"vi\":\"VIP\"}', '{\"vi\":\"vip\"}', 'customer', 1, 4, 1, '2026-04-16 13:10:17', '2026-04-16 13:10:17'),
(7, '{\"vi\":\"Hot Lead\"}', '{\"vi\":\"hot-lead\"}', 'customer', 2, 4, 1, '2026-04-16 13:11:02', '2026-04-16 13:11:02'),
(8, '{\"vi\":\"Tiềm năng\"}', '{\"vi\":\"tiem-nang\"}', 'customer', 3, 4, 1, '2026-04-16 13:11:05', '2026-04-16 13:11:05'),
(9, '{\"vi\":\"Khó tính\"}', '{\"vi\":\"kho-tinh\"}', 'customer', 4, 4, 1, '2026-04-16 13:11:08', '2026-04-16 13:11:08'),
(10, '{\"vi\":\"Đã gặp trực tiếp\"}', '{\"vi\":\"da-gap-truc-tiep\"}', 'customer', 5, 4, 1, '2026-04-16 13:11:11', '2026-04-16 13:11:11'),
(17, '{\"vi\":\"Chưa nghe điện thoại\"}', '{\"vi\":\"chua-nghe-dien-thoai\"}', 'customer', 6, 4, 1, '2026-04-16 15:46:36', '2026-04-16 15:46:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_tasks`
--

CREATE TABLE `vdh_tasks` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `organizer_id` tinyint(4) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `priority` varchar(10) DEFAULT 'high' COMMENT 'low - medium - high',
  `status` varchar(10) DEFAULT 'pending' COMMENT 'pending - completed - cancelled',
  `due_date` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vdh_tasks`
--

INSERT INTO `vdh_tasks` (`id`, `title`, `description`, `note`, `organizer_id`, `customer_id`, `priority`, `status`, `due_date`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 'đi chợ', '4rwefwag', 'mua thêm rau', 4, NULL, 'medium', 'pending', '2026-04-18 03:00:00', NULL, '2026-04-16 18:09:41', '2026-04-17 02:22:40'),
(2, 'gửi mail cho khách', NULL, 'gửi mail cho 10 khách', 4, NULL, 'high', 'pending', '2026-04-23 20:14:00', NULL, '2026-04-16 18:11:30', '2026-04-16 18:11:30'),
(3, 'hợp đồng khách', NULL, 'trước 10h', 4, NULL, 'high', 'pending', '2026-04-18 05:26:00', NULL, '2026-04-17 02:26:34', '2026-04-17 02:26:34'),
(4, 'đón con', NULL, NULL, 4, NULL, 'high', 'pending', '2026-04-19 02:33:00', NULL, '2026-04-17 02:30:27', '2026-04-17 02:30:27'),
(5, 'gặp khách', NULL, NULL, 4, NULL, 'high', 'pending', '2026-04-16 02:31:00', NULL, '2026-04-17 02:31:31', '2026-04-17 02:31:31'),
(6, 'nhậu', NULL, NULL, 4, NULL, 'high', 'pending', '2026-04-18 06:14:00', NULL, '2026-04-17 03:10:41', '2026-04-17 03:10:41'),
(7, 'uống thuốc 123', NULL, NULL, 4, NULL, 'high', 'pending', NULL, NULL, '2026-04-17 04:41:39', '2026-04-17 04:41:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_users`
--

CREATE TABLE `vdh_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `vdh_activity`
--
ALTER TABLE `vdh_activity`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vdh_admins`
--
ALTER TABLE `vdh_admins`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `vdh_comments`
--
ALTER TABLE `vdh_comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vdh_company`
--
ALTER TABLE `vdh_company`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vdh_customers`
--
ALTER TABLE `vdh_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`,`company_organizer_id`) USING BTREE;

--
-- Chỉ mục cho bảng `vdh_customer_target`
--
ALTER TABLE `vdh_customer_target`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vdh_customer_target_detail`
--
ALTER TABLE `vdh_customer_target_detail`
  ADD PRIMARY KEY (`customer_target_id`);

--
-- Chỉ mục cho bảng `vdh_customer_type`
--
ALTER TABLE `vdh_customer_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vdh_exhibition`
--
ALTER TABLE `vdh_exhibition`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `vdh_exhibition_detail`
--
ALTER TABLE `vdh_exhibition_detail`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `vdh_failed_jobs`
--
ALTER TABLE `vdh_failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vdh_failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `vdh_filters`
--
ALTER TABLE `vdh_filters`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vdh_languages`
--
ALTER TABLE `vdh_languages`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `vdh_mail`
--
ALTER TABLE `vdh_mail`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `vdh_mail_detail`
--
ALTER TABLE `vdh_mail_detail`
  ADD PRIMARY KEY (`mail_id`,`lang_id`) USING BTREE;

--
-- Chỉ mục cho bảng `vdh_migrations`
--
ALTER TABLE `vdh_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vdh_notifications`
--
ALTER TABLE `vdh_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vdh_notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Chỉ mục cho bảng `vdh_organizers`
--
ALTER TABLE `vdh_organizers`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `vdh_organizer_role`
--
ALTER TABLE `vdh_organizer_role`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `vdh_password_reset_tokens`
--
ALTER TABLE `vdh_password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `vdh_personal_access_tokens`
--
ALTER TABLE `vdh_personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vdh_personal_access_tokens_token_unique` (`token`),
  ADD KEY `vdh_personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `vdh_roles`
--
ALTER TABLE `vdh_roles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `vdh_setting`
--
ALTER TABLE `vdh_setting`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `option_key` (`option_key`) USING BTREE;

--
-- Chỉ mục cho bảng `vdh_source`
--
ALTER TABLE `vdh_source`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vdh_taggables`
--
ALTER TABLE `vdh_taggables`
  ADD UNIQUE KEY `vdh_taggables_tag_id_taggable_id_taggable_type_unique` (`tag_id`,`taggable_id`,`taggable_type`),
  ADD KEY `vdh_taggables_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`);

--
-- Chỉ mục cho bảng `vdh_tags`
--
ALTER TABLE `vdh_tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vdh_tasks`
--
ALTER TABLE `vdh_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vdh_users`
--
ALTER TABLE `vdh_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vdh_users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `vdh_activity`
--
ALTER TABLE `vdh_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=375;

--
-- AUTO_INCREMENT cho bảng `vdh_admins`
--
ALTER TABLE `vdh_admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `vdh_comments`
--
ALTER TABLE `vdh_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `vdh_company`
--
ALTER TABLE `vdh_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `vdh_customers`
--
ALTER TABLE `vdh_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT cho bảng `vdh_customer_target`
--
ALTER TABLE `vdh_customer_target`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vdh_customer_type`
--
ALTER TABLE `vdh_customer_type`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `vdh_exhibition`
--
ALTER TABLE `vdh_exhibition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `vdh_exhibition_detail`
--
ALTER TABLE `vdh_exhibition_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `vdh_failed_jobs`
--
ALTER TABLE `vdh_failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vdh_filters`
--
ALTER TABLE `vdh_filters`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vdh_languages`
--
ALTER TABLE `vdh_languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `vdh_mail`
--
ALTER TABLE `vdh_mail`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `vdh_migrations`
--
ALTER TABLE `vdh_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `vdh_organizers`
--
ALTER TABLE `vdh_organizers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `vdh_organizer_role`
--
ALTER TABLE `vdh_organizer_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `vdh_personal_access_tokens`
--
ALTER TABLE `vdh_personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vdh_roles`
--
ALTER TABLE `vdh_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `vdh_setting`
--
ALTER TABLE `vdh_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `vdh_source`
--
ALTER TABLE `vdh_source`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `vdh_tags`
--
ALTER TABLE `vdh_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `vdh_tasks`
--
ALTER TABLE `vdh_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `vdh_users`
--
ALTER TABLE `vdh_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `vdh_taggables`
--
ALTER TABLE `vdh_taggables`
  ADD CONSTRAINT `vdh_taggables_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `vdh_tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
