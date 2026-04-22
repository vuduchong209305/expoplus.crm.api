-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 22, 2026 lúc 10:29 AM
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
-- Cơ sở dữ liệu: `expoplus.apicrm`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_activity_logs`
--

CREATE TABLE `vdh_activity_logs` (
  `id` int(11) NOT NULL,
  `subject_type` varchar(255) DEFAULT NULL COMMENT 'model (Customer, Order…)',
  `subject_id` int(11) DEFAULT NULL COMMENT 'id của record',
  `causer_type` varchar(255) DEFAULT NULL COMMENT 'ai làm (User, Admin…)',
  `causer_id` int(11) DEFAULT NULL COMMENT 'id người thao tác',
  `action` varchar(255) DEFAULT NULL COMMENT 'create / update / delete',
  `description` varchar(255) DEFAULT NULL COMMENT 'nội dung hiển thị',
  `properties` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'dữ liệu chi tiết',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vdh_activity_logs`
--

INSERT INTO `vdh_activity_logs` (`id`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `action`, `description`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Customer', 10, 'App\\Models\\User', 1, 'update', 'Cập nhật fullname', '{\"field\":\"fullname\",\"old\":\"0901000010\",\"new\":\"Nguyen Thi Mai 123\"}', '2026-04-20 07:19:46', '2026-04-20 07:19:46'),
(2, 'App\\Models\\Customer', 10, 'App\\Models\\User', 1, 'update', 'Cập nhật email', '{\"field\":\"email\",\"old\":\"contact10@smartlife.vn 123\",\"new\":\"contact10@smartlife.vn 123\"}', '2026-04-20 07:20:51', '2026-04-20 07:20:51'),
(3, 'App\\Models\\Customer', 10, 'App\\Models\\User', 1, 'update', 'Cập nhật email', '{\"field\":\"email\",\"old\":\"contact10@smartlife.vn\",\"new\":\"contact10@smartlife.vn\"}', '2026-04-20 07:21:13', '2026-04-20 07:21:13'),
(4, 'App\\Models\\Customer', 10, 'App\\Models\\User', 1, 'update', 'Cập nhật contact', '{\"field\":\"contact\",\"old\":null,\"new\":\"zalo 0982093053\"}', '2026-04-20 07:23:38', '2026-04-20 07:23:38'),
(5, 'App\\Models\\Customer', 10, 'App\\Models\\User', 1, 'update', 'Cập nhật fullname', '{\"field\":\"fullname\",\"old\":\"Nguyen Thi Mai 123\",\"new\":\"Nguyen Thi Mai 123 234235235\"}', '2026-04-20 07:23:46', '2026-04-20 07:23:46'),
(6, 'App\\Models\\Customer', 10, 'App\\Models\\User', 1, 'update', 'Cập nhật birthday', '{\"field\":\"birthday\",\"old\":null,\"new\":null}', '2026-04-20 07:24:15', '2026-04-20 07:24:15'),
(7, 'App\\Models\\Customer', 10, 'App\\Models\\User', 1, 'update', 'Cập nhật gender', '{\"field\":\"gender\",\"old\":2,\"new\":1}', '2026-04-20 07:25:36', '2026-04-20 07:25:36'),
(8, 'App\\Models\\Customer', 10, 'App\\Models\\User', 1, 'update', 'Cập nhật fullname', '{\"field\":\"fullname\",\"old\":\"Nguyen Thi Mai 123 234235235\",\"new\":\"Nguyen Thi Mai\"}', '2026-04-20 07:25:56', '2026-04-20 07:25:56'),
(9, 'App\\Models\\Customer', 10, 'App\\Models\\User', 1, 'update', 'Cập nhật company', '{\"field\":\"company\",\"old\":\"Smart Life Co. 123\",\"new\":\"Smart Life Co\"}', '2026-04-20 07:26:03', '2026-04-20 07:26:03'),
(10, 'App\\Models\\Customer', 16, 'App\\Models\\User', 1, 'bookmark', 'Đã bỏ đánh dấu sao', '{\"field\":\"bookmark\",\"old\":1,\"new\":null}', '2026-04-20 07:34:53', '2026-04-20 07:34:53'),
(11, 'App\\Models\\Customer', 16, 'App\\Models\\User', 1, 'bookmark', 'Đã đánh dấu sao', '{\"field\":\"bookmark\",\"old\":null,\"new\":1}', '2026-04-20 07:34:57', '2026-04-20 07:34:57'),
(12, 'App\\Models\\Customer', 16, 'App\\Models\\User', 1, 'bookmark', 'Đã bỏ đánh dấu sao', '{\"field\":\"bookmark\",\"old\":1,\"new\":null}', '2026-04-20 07:35:23', '2026-04-20 07:35:23'),
(13, 'App\\Models\\Customer', 16, 'App\\Models\\User', 1, 'bookmark', 'Đã đánh dấu sao', '{\"field\":\"bookmark\",\"old\":null,\"new\":1}', '2026-04-20 07:35:56', '2026-04-20 07:35:56'),
(14, 'App\\Models\\Customer', 16, 'App\\Models\\User', 1, 'bookmark', 'Đã bỏ đánh dấu sao', '{\"field\":\"bookmark\",\"old\":1,\"new\":null}', '2026-04-20 07:35:58', '2026-04-20 07:35:58'),
(15, 'App\\Models\\Customer', 16, 'App\\Models\\User', 1, 'bookmark', 'Đã đánh dấu sao', '{\"field\":\"bookmark\",\"old\":null,\"new\":1}', '2026-04-20 07:36:03', '2026-04-20 07:36:03'),
(16, 'App\\Models\\Customer', 23, 'App\\Models\\User', 1, 'bookmark', 'Đã đánh dấu sao', '{\"field\":\"bookmark\",\"old\":null,\"new\":1}', '2026-04-20 07:36:18', '2026-04-20 07:36:18'),
(17, 'App\\Models\\Customer', 22, 'App\\Models\\User', 1, 'bookmark', 'Đã đánh dấu sao', '{\"field\":\"bookmark\",\"old\":null,\"new\":1}', '2026-04-20 07:36:20', '2026-04-20 07:36:20'),
(18, 'App\\Models\\Customer', 26, 'App\\Models\\User', 1, 'bookmark', 'Đã đánh dấu sao', '{\"field\":\"bookmark\",\"old\":null,\"new\":1}', '2026-04-20 07:36:22', '2026-04-20 07:36:22'),
(19, 'App\\Models\\Customer', 10, 'App\\Models\\User', 1, 'update', 'Cập nhật mst', '{\"field\":\"mst\",\"old\":null,\"new\":\"123123123\"}', '2026-04-20 07:51:40', '2026-04-20 07:51:40'),
(20, 'App\\Models\\Customer', 10, 'App\\Models\\User', 1, 'update', 'Đã bỏ đánh dấu sao', '{\"field\":\"bookmark\",\"old\":1,\"new\":null}', '2026-04-20 07:56:56', '2026-04-20 07:56:56'),
(21, 'App\\Models\\Customer', 10, 'App\\Models\\User', 1, 'update', 'Cập nhật source_id', '{\"field\":\"source_id\",\"old\":null,\"new\":1}', '2026-04-20 13:10:34', '2026-04-20 13:10:34'),
(22, 'App\\Models\\Customer', 10, 'App\\Models\\User', 1, 'update', 'Đã đánh dấu sao', '{\"field\":\"bookmark\",\"old\":null,\"new\":1}', '2026-04-21 01:25:51', '2026-04-21 01:25:51'),
(23, 'App\\Models\\Customer', 26, 'App\\Models\\User', 1, 'update', 'Đã bỏ đánh dấu sao', '{\"field\":\"bookmark\",\"old\":1,\"new\":null}', '2026-04-21 01:25:59', '2026-04-21 01:25:59'),
(24, 'App\\Models\\Customer', 14, 'App\\Models\\User', 1, 'update', 'Cập nhật email', '{\"field\":\"email\",\"old\":\"contact14@vietsoft.vn\",\"new\":\"contact14@vietsoft.vn 123\"}', '2026-04-21 03:36:38', '2026-04-21 03:36:38'),
(25, 'App\\Models\\Customer', 14, 'App\\Models\\User', 1, 'update', 'Cập nhật contact', '{\"field\":\"contact\",\"old\":null,\"new\":\"123\"}', '2026-04-21 03:37:03', '2026-04-21 03:37:03'),
(26, 'App\\Models\\Customer', 131, 'App\\Models\\User', 1, 'update', 'Cập nhật source_id', '{\"field\":\"source_id\",\"old\":null,\"new\":1}', '2026-04-21 09:17:04', '2026-04-21 09:17:04'),
(27, 'App\\Models\\Customer', 132, 'App\\Models\\User', 1, 'update', 'Đã đánh dấu sao', '{\"field\":\"bookmark\",\"old\":null,\"new\":1}', '2026-04-21 09:22:00', '2026-04-21 09:22:00'),
(28, 'App\\Models\\Customer', 132, 'App\\Models\\User', 1, 'update', 'Cập nhật type_id', '{\"field\":\"type_id\",\"old\":1,\"new\":2}', '2026-04-21 09:22:14', '2026-04-21 09:22:14'),
(29, 'App\\Models\\Customer', 132, 'App\\Models\\User', 1, 'update', 'Đã bỏ đánh dấu sao', '{\"field\":\"bookmark\",\"old\":1,\"new\":null}', '2026-04-21 09:22:21', '2026-04-21 09:22:21'),
(30, 'App\\Models\\Customer', 117, 'App\\Models\\User', 1, 'update', 'Đã đánh dấu sao', '{\"field\":\"bookmark\",\"old\":null,\"new\":1}', '2026-04-21 09:25:33', '2026-04-21 09:25:33'),
(31, 'App\\Models\\Customer', 119, 'App\\Models\\User', 1, 'update', 'Đã đánh dấu sao', '{\"field\":\"bookmark\",\"old\":null,\"new\":1}', '2026-04-21 09:25:33', '2026-04-21 09:25:33'),
(32, 'App\\Models\\Customer', 121, 'App\\Models\\User', 1, 'update', 'Đã đánh dấu sao', '{\"field\":\"bookmark\",\"old\":null,\"new\":1}', '2026-04-21 09:25:35', '2026-04-21 09:25:35'),
(33, 'App\\Models\\Customer', 131, 'App\\Models\\User', 1, 'update', 'Đã đánh dấu sao', '{\"field\":\"bookmark\",\"old\":null,\"new\":1}', '2026-04-21 09:25:36', '2026-04-21 09:25:36'),
(34, 'App\\Models\\Customer', 125, 'App\\Models\\User', 1, 'update', 'Đã đánh dấu sao', '{\"field\":\"bookmark\",\"old\":null,\"new\":1}', '2026-04-21 09:25:42', '2026-04-21 09:25:42'),
(35, 'App\\Models\\Customer', 131, 'App\\Models\\User', 1, 'update', 'Đã bỏ đánh dấu sao', '{\"field\":\"bookmark\",\"old\":1,\"new\":null}', '2026-04-21 09:25:46', '2026-04-21 09:25:46'),
(36, 'App\\Models\\Customer', 132, 'App\\Models\\User', 1, 'update', 'Đã đánh dấu sao', '{\"field\":\"bookmark\",\"old\":null,\"new\":1}', '2026-04-21 09:25:48', '2026-04-21 09:25:48'),
(37, 'App\\Models\\Customer', 117, 'App\\Models\\User', 1, 'update', 'Cập nhật type_id', '{\"field\":\"type_id\",\"old\":1,\"new\":2}', '2026-04-22 03:26:45', '2026-04-22 03:26:45'),
(38, 'App\\Models\\Customer', 120, 'App\\Models\\User', 1, 'update', 'Cập nhật type_id', '{\"field\":\"type_id\",\"old\":1,\"new\":2}', '2026-04-22 03:26:54', '2026-04-22 03:26:54'),
(39, 'App\\Models\\Customer', 119, 'App\\Models\\User', 1, 'update', 'Cập nhật type_id', '{\"field\":\"type_id\",\"old\":1,\"new\":2}', '2026-04-22 03:27:04', '2026-04-22 03:27:04'),
(40, 'App\\Models\\Customer', 121, 'App\\Models\\User', 1, 'update', 'Cập nhật type_id', '{\"field\":\"type_id\",\"old\":1,\"new\":2}', '2026-04-22 03:30:19', '2026-04-22 03:30:19'),
(41, 'App\\Models\\Customer', 125, 'App\\Models\\User', 1, 'update', 'Cập nhật type_id', '{\"field\":\"type_id\",\"old\":1,\"new\":2}', '2026-04-22 03:30:25', '2026-04-22 03:30:25');

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
(1, 10, 'khách này đến đâu r', 1, '2026-04-16 04:50:27', '2026-04-16 04:50:27'),
(2, 10, 'Bao giờ khách trả lời', 1, '2026-04-16 04:58:15', '2026-04-16 04:58:15'),
(3, 10, 'Hello', 1, '2026-04-20 05:27:37', '2026-04-20 05:27:37'),
(4, 10, 'xin chào', 1, '2026-04-20 05:33:56', '2026-04-20 05:33:56'),
(5, 10, 'hello anh em', 1, '2026-04-20 05:34:16', '2026-04-20 05:34:16'),
(6, 10, 'hello em yêu', 1, '2026-04-20 05:34:39', '2026-04-20 05:34:39'),
(7, 10, 'xin chào', 1, '2026-04-20 05:36:43', '2026-04-20 05:36:43'),
(8, 10, 'ehllalcvasv', 1, '2026-04-20 05:37:11', '2026-04-20 05:37:11'),
(9, 10, 'avsdvbsdba', 1, '2026-04-20 05:37:24', '2026-04-20 05:37:24'),
(10, 132, 'gặp khách', 1, '2026-04-22 02:32:37', '2026-04-22 02:32:37');

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
  `assigned_to` int(11) DEFAULT NULL,
  `organizer_id` int(11) DEFAULT NULL,
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

INSERT INTO `vdh_customers` (`id`, `email`, `company`, `fullname`, `phone`, `assigned_to`, `organizer_id`, `contact`, `address`, `profession`, `birthday`, `mst`, `website`, `description`, `note`, `gender`, `owner_id`, `type_id`, `bookmark`, `avatar`, `source_id`, `created_at`, `updated_at`) VALUES
(10, 'contact10@smartlife.vn', 'Smart Life Co', 'Nguyen Thi Mai', '0901000010', 1, 1, 'zalo 0982093053', NULL, NULL, NULL, '123123123', NULL, NULL, NULL, 1, NULL, 2, 1, 'customer/2026/04/20/1776690705-HrPdFhaTUAwGekhwdFfv.webp', 1, '2026-04-02 16:22:38', '2026-04-21 01:25:51'),
(14, 'contact14@vietsoft.vn 123', 'VietSoft JSC', 'Pham Duc Long', '0901000014', 1, 1, '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'customer/2026/04/20/1776690723-w7PDL8sjxEzZBO9vRLhc.webp', NULL, '2026-04-02 16:22:38', '2026-04-21 03:37:03'),
(16, 'contact16@smartcity.vn', 'Smart City Co.', 'Nguyen Van Hung', '0901000016', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'customer/2026/04/20/1776660437-yHONAxJyKuxHr1YaQQgi.webp', NULL, '2026-04-02 16:22:38', '2026-04-20 07:36:03'),
(22, 'contact22@aitech.vn', 'AI Tech JSC', 'Le Thi Ngoc', '0901000022', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2026-04-02 16:22:38', '2026-04-20 07:36:20'),
(23, 'contact23@digitalsolution.vn', 'Digital Solution', 'Pham Quoc Khanh', '0901000023', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2026-04-02 16:22:38', '2026-04-20 07:36:18'),
(24, 'contact24@smartgroup.vn', 'Smart Group Co.', 'Nguyen Van Tai', '0901000024', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(26, 'contact26@viettech.vn', 'Viet Tech JSC', 'Le Hoang Anh', '0901000026', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-21 01:25:59'),
(27, 'contact27@innovation.vn', 'Innovation Co.', 'Pham Van Hieu', '0901000027', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(28, 'contact28@futuregroup.vn', 'Future Group Ltd.', 'Nguyen Thi Trang', '0901000028', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(29, 'contact29@smartconnect.vn', 'Smart Connect', 'Tran Minh Tuan', '0901000029', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(30, 'contact30@techglobal.vn', 'Tech Global Co.', 'Le Van Hiep', '0901000030', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2026-04-02 16:22:38', '2026-04-20 03:22:26'),
(31, 'contact31@vietnamtech.vn', 'Vietnam Tech Ltd.', 'Pham Thi Nga', '0901000031', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(32, 'contact32@digitalcorp.vn', 'Digital Corp.', 'Nguyen Van Duc', '0901000032', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(33, 'contact33@smartinnovation.vn', 'Smart Innovation', 'Tran Thi Hang', '0901000033', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(34, 'contact34@futurecorp.vn', 'Future Corp.', 'Le Minh Quan', '0901000034', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-02 16:22:38', '2026-04-02 16:22:38'),
(35, 'contact35@ecoworld.vn', 'Eco World Co.', 'Pham Van Thanh', '0901000035', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2026-04-02 16:22:38', '2026-04-20 03:21:04'),
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
(117, 'contact1@techvision.vn', 'Tech Vision Co.', 'Nguyen Van An', '0901000001', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 'customer/2026/04/16/1776328632-Wd6zMJ1d6rEJjMbumILv.webp', 1, '2026-04-16 08:36:12', '2026-04-22 03:26:45'),
(118, 'contact2@globalexpo.vn', 'Global Expo Ltd.', 'Tran Thi Bich', '0901000002', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, '2026-04-16 08:36:12', '2026-04-16 09:13:21'),
(119, 'contact3@smarttech.vn', 'Smart Tech JSC', 'Le Minh Hoang', '0901000003', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, '2026-04-16 08:36:12', '2026-04-22 03:27:04'),
(120, 'contact4@vietinnovation.vn', 'Viet Innovation', 'Pham Quang Huy', '0901000004', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, '2026-04-16 08:36:12', '2026-04-22 03:26:54'),
(121, 'contact5@nextgen.vn', 'NextGen Solutions', 'Hoang Thi Lan', '0901000005', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, '2026-04-16 08:36:12', '2026-04-22 03:30:19'),
(122, 'contact6@digitalworld.vn', 'Digital World Co.', 'Nguyen Duc Manh', '0901000006', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-16 08:36:12', '2026-04-16 08:36:12'),
(123, 'contact7@futuretech.vn', 'Future Tech Ltd.', 'Tran Van Nam', '0901000007', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-16 08:36:12', '2026-04-16 08:36:12'),
(124, 'contact11@innovatech.vn', 'Innovatech Ltd.', 'Tran Quoc Bao', '0901000011', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-16 08:36:12', '2026-04-16 08:36:12'),
(125, 'contact12@globalconnect.vn', 'Global Connect', 'Le Van Binh', '0901000012', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, '2026-04-16 08:36:12', '2026-04-22 03:30:25'),
(126, 'contact13@techlink.vn', 'TechLink Co.', 'Nguyen Hong Nhung', '0901000013', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-16 08:36:12', '2026-04-16 08:36:12'),
(127, 'contact99@digitalinnovation.vn', 'Digital Innovation Ltd.', 'Pham Thi Trang', '0901000099', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-16 08:36:12', '2026-04-16 08:36:12'),
(128, 'contact100@smartinnovation.vn', 'Smart Innovation Corp.', 'Nguyen Minh Duc', '0901000100', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-04-16 08:36:12', '2026-04-16 08:36:12'),
(130, 'vuduchong209305@gmail.com', NULL, 'Vũ Đức Hồng', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2026-04-21 09:12:20', '2026-04-21 09:12:20'),
(132, 'hongvu.media@gmail.com', 'GE', 'Vũ Đức Hồng', '0999888777', 2, 1, 'zalo 0986209305', 'Cầu Giấy', 'sự kiện', '1993', '09124093125', 'globalexpo.com.vn', 'mô tả', 'ghi chú', 1, 1, 2, 1, 'customer/2026/04/21/1776763586-CFJMHuFOCj5zgdx08xRY.webp', NULL, '2026-04-21 09:20:55', '2026-04-21 09:26:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_customer_group`
--

CREATE TABLE `vdh_customer_group` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vdh_customer_group`
--

INSERT INTO `vdh_customer_group` (`id`, `title`, `note`, `created_at`, `updated_at`) VALUES
(1, 'Nhóm Entech 2026', '123412541235', '2026-04-22 04:12:39', '2026-04-22 04:12:39'),
(2, 'Battery 2026', NULL, '2026-04-22 05:13:27', '2026-04-22 05:13:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_customer_group_detail`
--

CREATE TABLE `vdh_customer_group_detail` (
  `customer_group_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vdh_customer_group_detail`
--

INSERT INTO `vdh_customer_group_detail` (`customer_group_id`, `customer_id`) VALUES
(1, 119),
(1, 121),
(1, 132),
(2, 120),
(2, 125);

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
(1, 'Lead'),
(2, 'Contact');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_events`
--

CREATE TABLE `vdh_events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `type` enum('call','meeting','email','task') DEFAULT NULL,
  `all_day` tinyint(1) DEFAULT NULL,
  `status` enum('pending','done','cancel') DEFAULT NULL,
  `reminder_minutes` decimal(5,0) DEFAULT NULL COMMENT '15, 30, 60',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vdh_events`
--

INSERT INTO `vdh_events` (`id`, `title`, `user_id`, `start_time`, `end_time`, `note`, `customer_id`, `location`, `type`, `all_day`, `status`, `reminder_minutes`, `created_at`, `updated_at`) VALUES
(1, 'Đi nhậu', 1, '2026-04-19 23:00:00', '2026-04-20 00:00:00', 'sdsdbsdb', NULL, 'vsdv', 'call', NULL, NULL, NULL, '2026-04-21 23:58:08', '2026-04-22 01:54:44'),
(2, 'Họp khách', 1, '2026-04-20 23:00:00', '2026-04-21 01:00:00', 'sdghsdh', NULL, 'dfsdgf', 'meeting', NULL, NULL, NULL, '2026-04-22 00:00:31', '2026-04-22 02:19:11'),
(3, 'gửi mail', 1, '2026-04-23 01:00:00', '2026-04-23 01:30:00', '235235', NULL, '142134', 'call', NULL, NULL, NULL, '2026-04-22 00:28:35', '2026-04-22 01:52:44'),
(4, 'đón con', 1, '2026-04-23 00:30:00', '2026-04-23 01:00:00', NULL, NULL, NULL, 'call', NULL, NULL, NULL, '2026-04-22 00:33:21', '2026-04-22 00:34:03'),
(5, 'di chợ', 1, '2026-04-23 00:00:00', '2026-04-23 00:30:00', NULL, NULL, NULL, 'call', NULL, NULL, NULL, '2026-04-22 00:33:45', '2026-04-22 00:33:45'),
(6, 'ăn lòng lợn', 1, '2026-04-21 02:00:00', '2026-04-21 02:30:00', NULL, NULL, NULL, 'call', NULL, NULL, NULL, '2026-04-22 02:19:20', '2026-04-22 02:19:20'),
(7, 'sinh nhật', 1, '2026-04-25 01:00:00', '2026-04-25 01:30:00', '123', NULL, 'quán lòng lợn', 'call', NULL, NULL, NULL, '2026-04-22 02:21:04', '2026-04-22 02:21:14');

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
-- Cấu trúc bảng cho bảng `vdh_tasks`
--

CREATE TABLE `vdh_tasks` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `progress` decimal(3,0) DEFAULT 0,
  `note` varchar(255) DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vdh_tasks`
--

INSERT INTO `vdh_tasks` (`id`, `title`, `start_date`, `end_date`, `assigned_to`, `progress`, `note`, `completed_at`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Thiết kế in ấn biển tên Vip', '2026-04-23', '2026-04-23', 3, 0, NULL, NULL, 7, '2026-04-22 06:38:25', '2026-04-22 08:01:49'),
(3, 'đi nhậu 123', '2026-04-23', '2026-04-24', 2, 0, NULL, NULL, 3, '2026-04-22 06:39:36', '2026-04-22 08:01:49'),
(5, 'Thông cáo báo chí', '2026-04-22', '2026-04-23', 3, 50, NULL, NULL, 6, '2026-04-22 07:40:43', '2026-04-22 08:01:49'),
(7, 'đăng báo', '2026-04-24', '2026-04-25', 1, 0, '123123', NULL, 8, '2026-04-22 07:42:51', '2026-04-22 08:01:49'),
(8, 'lên kịch bản khai mạc', '2026-04-23', '2026-04-24', 2, 0, NULL, NULL, 5, '2026-04-22 07:43:30', '2026-04-22 08:01:49'),
(9, 'gửi duyệt phía Trung Quốc', '2026-04-24', '2026-04-25', 2, 0, NULL, NULL, 4, '2026-04-22 07:43:40', '2026-04-22 08:01:49'),
(10, 'Check lỗi phía Việt Nam', '2026-04-28', '2026-04-29', 3, 25, NULL, NULL, 2, '2026-04-22 07:44:19', '2026-04-22 08:01:49'),
(11, 'Kiểm tra các ảnh theo hạng mục quyết toán', '2026-04-23', '2026-04-24', 3, 0, NULL, NULL, 1, '2026-04-22 07:50:57', '2026-04-22 08:03:18'),
(12, 'Lên chủ đề hội thảo', '2026-04-23', '2026-04-24', 3, 0, NULL, NULL, 9, '2026-04-22 07:51:09', '2026-04-22 08:01:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_to_do`
--

CREATE TABLE `vdh_to_do` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `organizer_id` int(11) DEFAULT NULL,
  `priority` varchar(10) DEFAULT 'low' COMMENT 'low - medium - high',
  `status` varchar(10) DEFAULT 'pending' COMMENT 'pending - completed - cancelled',
  `due_date` timestamp NULL DEFAULT NULL,
  `bookmark` tinyint(4) DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vdh_to_do`
--

INSERT INTO `vdh_to_do` (`id`, `title`, `description`, `note`, `user_id`, `organizer_id`, `priority`, `status`, `due_date`, `bookmark`, `completed_at`, `order`, `created_at`, `updated_at`) VALUES
(11, 'hello', NULL, NULL, 1, 1, 'high', 'pending', NULL, NULL, NULL, 3, '2026-04-21 02:44:51', '2026-04-22 06:26:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vdh_users`
--

CREATE TABLE `vdh_users` (
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
  `organizer_id` int(11) DEFAULT NULL,
  `forgot_pass_token` varchar(100) DEFAULT NULL,
  `updated_forgot_token` datetime DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `vdh_users`
--

INSERT INTO `vdh_users` (`id`, `email`, `password`, `phone`, `avatar`, `status`, `fullname`, `birthday`, `passport`, `role_id`, `address`, `organizer_id`, `forgot_pass_token`, `updated_forgot_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'vuduchong209305@gmail.com', '$2y$10$4UdQSmNztB457ugofP3H6.SdzeFwxQ/StlFNutTZ9ZKzD4kNgjOcS', '0986209305', NULL, 1, 'Vũ Đức Hồng', '06-06-1993', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, '2026-03-17 14:04:38'),
(2, 'ph2h.ge@gmail.com', '$2y$12$jImBKmGSeieYWkkQ7ZmUhuyKWwHuXY4HlVTFTit6wTCnW/u0qpXuS', '0904239996', NULL, 1, 'Nguyễn Phi Hùng', NULL, NULL, 4, NULL, 1, NULL, NULL, NULL, '2026-02-08 04:59:28', '2026-02-08 05:02:02'),
(3, 'quangvinh@globalexpo.com.vn', '$2y$12$EjOXMDEl.y4NVLycNuVQyugEfctis3bX/VF8hNf39ZjQzW6ucbrWm', '0983109909', NULL, 1, 'Trần Quang Vinh', NULL, NULL, 4, NULL, 1, NULL, NULL, NULL, '2026-02-08 05:04:04', '2026-03-17 14:04:58');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `vdh_activity_logs`
--
ALTER TABLE `vdh_activity_logs`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `email` (`email`,`organizer_id`) USING BTREE;

--
-- Chỉ mục cho bảng `vdh_customer_group`
--
ALTER TABLE `vdh_customer_group`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vdh_customer_group_detail`
--
ALTER TABLE `vdh_customer_group_detail`
  ADD PRIMARY KEY (`customer_group_id`,`customer_id`);

--
-- Chỉ mục cho bảng `vdh_customer_type`
--
ALTER TABLE `vdh_customer_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vdh_events`
--
ALTER TABLE `vdh_events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vdh_source`
--
ALTER TABLE `vdh_source`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vdh_tasks`
--
ALTER TABLE `vdh_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vdh_to_do`
--
ALTER TABLE `vdh_to_do`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vdh_users`
--
ALTER TABLE `vdh_users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `vdh_activity_logs`
--
ALTER TABLE `vdh_activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `vdh_comments`
--
ALTER TABLE `vdh_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `vdh_company`
--
ALTER TABLE `vdh_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `vdh_customers`
--
ALTER TABLE `vdh_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT cho bảng `vdh_customer_group`
--
ALTER TABLE `vdh_customer_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `vdh_customer_type`
--
ALTER TABLE `vdh_customer_type`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `vdh_events`
--
ALTER TABLE `vdh_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `vdh_source`
--
ALTER TABLE `vdh_source`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `vdh_tasks`
--
ALTER TABLE `vdh_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `vdh_to_do`
--
ALTER TABLE `vdh_to_do`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `vdh_users`
--
ALTER TABLE `vdh_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
