-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 01, 2018 lúc 03:19 AM
-- Phiên bản máy phục vụ: 10.1.22-MariaDB
-- Phiên bản PHP: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tour_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0 : active; 1 : deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `about`
--

INSERT INTO `about` (`id`, `slug`, `title`, `description`, `content`, `avatar`, `image`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`, `is_activated`) VALUES
(1, 've-chung-toi', 'Về Chúng Tôi', 'Về Chúng Tôi', 'Về Ch&uacute;ng T&ocirc;i', '', 'c2b907be1a8fd645483a27c8f37892b8.jpg', '2018-10-23 15:07:29', 'administrator', '2018-10-23 15:07:29', 'administrator', 1, 0),
(2, 'lich-su', 'Lịch Sử', 'Lịch Sử', 'Lịch Sử', '', 'e8d179e8b6a15215e290020904b46384.jpg', '2018-10-30 15:05:26', 'administrator', '2018-10-30 15:05:26', 'administrator', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accessary`
--

CREATE TABLE `accessary` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `file` text COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `accessary`
--

INSERT INTO `accessary` (`id`, `title`, `slug`, `image`, `file`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'áđá', 'ada', '', 'e255a354e06616e8bb3b407af7a57571.pdf', 1, '2018-10-24 14:44:14', 'administrator', '2018-10-24 14:44:14', 'administrator'),
(2, 'Dầu nhớt', 'dau-nhot', '743269a38cdec13cf98370b2dd6e01fb.jpg', '409c6d6d5c20d859b86a89af5c789fce.pdf', 0, '2018-10-24 16:19:31', 'administrator', '2018-10-24 16:19:31', 'administrator');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `vi` text COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `area`
--

INSERT INTO `area` (`id`, `vi`, `is_deleted`) VALUES
(1, 'Cao Hùng', 0),
(2, 'Đài Bắc', 0),
(3, 'Đài Trung', 0),
(4, 'Gia Nghĩa', 0),
(5, 'Phượng Hoàng Cổ Trấn', 0),
(6, 'Quan Lạn', 0),
(7, 'Quảng Bình', 0),
(8, 'Tây Tạng', 0),
(9, 'Thái Lan', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0: active; 1:deactive',
  `is_deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `title`, `description`, `image`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_activated`, `is_deleted`) VALUES
(1, 'test', 'test', '', '2018-10-29 11:08:44', 'administrator', '2018-10-29 11:08:44', 'administrator', 0, 0),
(2, 'asdas', 'asdasda', '3c04b971aa792db0dd4e0e0c489bb2fc.png', '2018-10-29 11:09:45', 'administrator', '2018-10-29 11:09:45', 'administrator', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('1d6d2ef5cbe48491b53b5c2ae95d1d4f14c98f82', '::1', 1516590779, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363539303735363b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353134333939313533223b);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` date NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: là commnet tour, 1: là comment blog, 2:là comment location'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `numberphone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `company`, `address`, `numberphone`, `email`, `website`, `map`, `created_at`, `updated_at`) VALUES
(1, 'CTY TNHH MTV TM hóa mỹ phẩm Nam Anh Khương', '11/B6 KP. Bình Thuận 2, P.Thuận Giao, TX.Thuận An, Bình Dương', '(0274) 3717 508 - 0933 457 345', 'namanhkhuong@yahoo.com.vn', 'www.hoamyphamnamanhkhuong.com', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15667.997622818391!2d106.70602873724211!3d10.963416788741762!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x57eb37c8a926e717!2zQ1RZIEjDs2EgTeG7uSBQaOG6qW0gTmFtIEFuaCBLaMawxqFuZw!5e0!3m2!1svi!2s!4v1538707680567\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL, '2018-10-08 10:08:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `guide`
--

CREATE TABLE `guide` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `guide`
--

INSERT INTO `guide` (`id`, `title`, `slug`, `description`, `content`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'test 1 2', 'test-1-2', 'test', '<img src=\"http://localhost/tour//source/MALVAN_2.jpg?1540973460684\" alt=\"MALVAN_2\" />test', 0, '2018-10-31 15:12:03', 'administrator', '2018-10-31 15:12:03', 'administrator');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_library`
--

CREATE TABLE `image_library` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `image_library`
--

INSERT INTO `image_library` (`id`, `title`, `slug`, `avatar`, `image`, `description`, `content`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(4, 'Thư VIện Ảnh 1', 'thu-vien-anh-1', 'a27aab28d4b0f6b9a7ca708b80957b4c.jpg', '[\"a27aab28d4b0f6b9a7ca708b80957b4c.jpg\",\"1e700e2badb59edb2825a87e75fa8fb8.jpg\",\"e3bb402114030f45f3ef2429f325a9e2.png\"]', 'Thư VIện Ảnh 1', 'Thư VIện Ảnh 1', 1, '2018-10-25 17:14:31', 'administrator', '2018-10-25 17:14:31', 'administrator');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0 : active; 1 : deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`id`, `post_category_id`, `slug`, `title`, `description`, `content`, `avatar`, `image`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`, `is_activated`) VALUES
(1, 3, 'bai-viet-dich-vu', 'Bài Viết Dịch Vụ', 'Bài Viết Dịch Vụ', 'B&agrave;i Viết Dịch Vụ', '', 'ecc8cfd1d0535799014745b81152e94a.jpg', '2018-10-23 14:57:23', 'administrator', '2018-10-23 14:57:23', 'administrator', 1, 0),
(2, 3, 'test', 'test', 'test', 'test', '', 'efd7d8ea8a328038b849da542a8b9bad.jpg', '2018-10-23 14:56:54', 'administrator', '2018-10-23 14:56:54', 'administrator', 1, 0),
(3, 3, 'test-2', 'test 2', 'test', 'test', '', '', '2018-10-31 14:44:19', 'administrator', '2018-10-31 14:44:19', 'administrator', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_category`
--

CREATE TABLE `post_category` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `project` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `sort` tinyint(4) DEFAULT NULL,
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0 : active; 1 : deactive',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_category`
--

INSERT INTO `post_category` (`id`, `slug`, `title`, `content`, `project`, `image`, `sort`, `is_activated`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'dv-sua-chua', 'DV SỬA CHỮA', 'DV SỬA CHỮA<br /><br /><img src=\"http://localhost/honghanh//source/PRIMITIVO%20DI%20MANDURIA%20RISERVA%20DEL%20FONDATORE%20piccola_1.jpg?1540270018104\" alt=\"PRIMITIVO DI MANDURIA RISERVA DEL FONDATORE piccola_1\" />', '', '60357f12726ae8986db45c090d78a0df.jpg', NULL, 0, 0, '2018-10-23 11:47:00', 'administrator', '2018-10-23 11:47:00', 'administrator'),
(2, 'tin-tong-hop', 'TIN TỔNG HỢP 1', 'TIN TỔNG HỢP', '', '28f011e45b16fd618ee16b2a1b740497.jpg', NULL, 1, 1, '2018-10-23 10:56:27', 'administrator', '2018-10-23 10:56:27', 'administrator'),
(3, 'tin-dn', 'TIN DN', 'TIN DN', '', 'fabc75735cd53771112611a32c4e044a.jpg', NULL, 0, 0, '2018-10-23 11:01:32', 'administrator', '2018-10-23 11:01:32', 'administrator');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakeywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datetitle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `datecontent` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tripnodes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsprice` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `inclusions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exclusions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0: active; 1:deactive',
  `avaliability` text COLLATE utf8mb4_unicode_ci,
  `single_supplement` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(10,0) DEFAULT NULL,
  `date_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pricedate` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `percen` int(11) DEFAULT NULL,
  `pricepromotion` decimal(10,0) NOT NULL,
  `showpromotion` tinyint(1) NOT NULL,
  `hotelsingle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pricesingle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imglocaltion` text COLLATE utf8mb4_unicode_ci,
  `localtion` text COLLATE utf8mb4_unicode_ci,
  `librarylocaltion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_rating` int(11) DEFAULT NULL,
  `count_rating` int(11) DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `product_category_id`, `slug`, `title`, `description`, `content`, `metakeywords`, `metadescription`, `datetitle`, `datecontent`, `tripnodes`, `detailsprice`, `inclusions`, `exclusions`, `avatar`, `image`, `is_deleted`, `is_activated`, `avaliability`, `single_supplement`, `price`, `date_content`, `pricedate`, `percen`, `pricepromotion`, `showpromotion`, `hotelsingle`, `pricesingle`, `imglocaltion`, `localtion`, `librarylocaltion`, `date`, `created_at`, `created_by`, `updated_at`, `updated_by`, `total_rating`, `count_rating`, `type`) VALUES
(23, 33, 've-chung-toi', 'Về chúng tôi', '', '', 'Về chúng tôi', 'Về chúng tôi', '[\"1\",\"3\"]', '[\"2\",\"4\"]', 'Ghi ch&uacute;', '', 'Bao Gồm', 'Loại trừ', '', '[\"afae130b87cedb7f2e5eaa0f3a4e4342.jpg\"]', 0, 0, NULL, NULL, '999999999', '', '', 20, '888888', 1, '[]', '[{\"budget\":\"11\",\"star3\":\"22\",\"star4\":\"33\",\"star5\":\"44\"},{\"budget\":\"15\",\"star3\":\"26\",\"star4\":\"37\",\"star5\":\"48\"}]', '358acbd1cebcae939beb2f25288675cb.jpg', 'Hà Nội, Bắc Ninh', '[\"4\"]', '', '2018-11-01 09:00:27', 'administrator', '2018-11-01 09:00:27', 'administrator', NULL, NULL, 1),
(24, 37, 'dang-ky-thu-ruou', 'Đăng ký thử rượu', '', '', 'Đăng ký thử rượu', 'Đăng ký thử rượu', '[\"Title\",\"Titl2\"]', '[\"<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\"]', 'Ghi ch&uacute;', '', 'bao gồm', 'Loại trừ', '', '', 1, 0, NULL, NULL, '999999999', '', '', 15, '888888', 1, '[]', '[{\"budget\":null,\"star3\":null,\"star4\":null,\"star5\":null},{\"budget\":null,\"star3\":null,\"star4\":null,\"star5\":null}]', '', 'Không quan tâm', '[\"2\",\"3\"]', '02/10/2018,10/10/2018', '2018-10-31 14:10:22', 'administrator', '2018-10-31 14:10:22', 'administrator', NULL, NULL, 1),
(25, 33, 'dang-ky-thu-ruou-1', 'Đăng ký thử rượu', '', '', 'Đăng ký thử rượu3', 'Đăng ký thử rượu3', '[\"titl13\"]', '[\"<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.3\"]', '<strong>Ghi ch&uacute; Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.3', '', '<strong>Bao gồm Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.3', '<strong>Loại trừ Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.3', '', '', 0, 0, '[\"11\",\"33\"]', '[\"22\",\"44\"]', '9999999993', '[\"02\\/10\\/2018\",\"10\\/10\\/2018\"]', '[\"8888883\",\"8888883\"]', 203, '8888883', 1, '[]', '[]', '', 'Hà Nọi, Bắc Giang3', '[\"3\",\"5\"]', '02/10/2018,10/10/2018', '2018-10-31 16:15:31', 'administrator', '2018-10-31 16:15:31', 'administrator', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakeywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `sort` tinyint(4) DEFAULT NULL,
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0: active; 1: deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_category`
--

INSERT INTO `product_category` (`id`, `slug`, `title`, `content`, `metakeywords`, `metadescription`, `parent_id`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`, `project`, `image`, `sort`, `is_activated`) VALUES
(22, 'hanh-huong-trong-nuoc', 'Hành hương trong nước', '<strong>Lorem Ipsum</strong>&nbsp;chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.', 'Hành hương trong nước', 'Hành hương trong nước', 0, 0, '2018-07-19 12:46:09', 'administrator', '2018-07-19 12:46:09', 'administrator', '', '[\"797220006743cd38140c4e873fb27f75.png\",\"ee660b28aa74ac9d6cd7abcc8485e286.jpg\",\"cad2ccf13402df235dd1ad40e6a1fbc3.png\",\"9ccf2fe1b05884dfd7496402fa71d19f.jpg\"]', 1, 0),
(23, 'hanh-huong-nuoc-ngoai', 'Hành hương nước ngoài', '<strong>Lorem Ipsum</strong>&nbsp;chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.', 'Hành hương nước ngoài', 'Hành hương nước ngoài', 0, 0, '2018-07-18 10:06:16', 'administrator', '2018-07-18 10:06:16', 'administrator', '', '[]', 2, 0),
(24, 'tour-dac-biet', 'Tour đặc biệt', '', '', '', 0, 1, '2018-06-26 09:40:06', 'administrator', '2018-06-26 09:40:06', 'administrator', '', '[\"46bca0c6d516a1c4ba0948334395c09b.jpg\"]', 3, 0),
(25, 'mien-trung', 'Miền Trung', '<strong>Lorem Ipsum</strong>&nbsp;chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.', 'Miền Trung', 'Miền Trung', 22, 0, '2018-07-06 21:50:42', 'administrator', '2018-07-06 21:50:42', 'administrator', '', '[\"26df0895bd81d0e808420bd978a482b4.png\"]', 2, 0),
(26, 'quang-ninh', 'Quảng Ninh', '<strong>Lorem Ipsum</strong>&nbsp;chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.', 'quang ninh', 'quang ninh', 25, 0, '2018-07-06 21:53:30', 'administrator', '2018-07-06 21:53:30', 'administrator', '', '[\"405b8675e691584b0c7c228011e207c4.png\"]', NULL, 0),
(27, 'mien-bac', 'Miền Bắc', '<strong>Lorem Ipsum</strong>&nbsp;chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.', 'Miền Bắc', 'Miền Bắc', 22, 0, '2018-07-06 21:50:27', 'administrator', '2018-07-06 21:50:27', 'administrator', '', '[\"5d00491d1585a4d51c48509b3a876b62.jpg\"]', 1, 0),
(28, 'an-do', 'Ấn Độ', '<strong>Lorem Ipsum</strong>&nbsp;chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.', 'Ấn Độ', 'Ấn Độ', 23, 0, '2018-07-06 21:54:04', 'administrator', '2018-07-06 21:54:04', 'administrator', '', '[\"749f49d96243518c41c0a234725f1f84.png\"]', NULL, 0),
(29, 'mien-nam', 'Miền Nam', '<strong>Lorem Ipsum</strong>&nbsp;chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.', 'Miền Nam', 'Miền Nam', 22, 0, '2018-07-06 21:50:54', 'administrator', '2018-07-06 21:50:54', 'administrator', '', '[\"a832e89c85af4f52b366b141e3ea7ced.jpg\"]', 3, 0),
(30, 'quang-binh', 'Quảng Bình', '<strong>Lorem Ipsum</strong>&nbsp;chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.', 'Quảng Bình', 'Quảng Bình', 29, 0, '2018-07-06 21:53:48', 'administrator', '2018-07-06 21:53:48', 'administrator', '', '[\"28992e5971eb25edfa420cbf25f70f6e.png\"]', NULL, 0),
(31, 'tesst1', 'Tesst1', '<strong>Lorem Ipsum</strong>&nbsp;chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.', 'Tesst1', 'Tesst1', 27, 0, '2018-07-06 21:52:08', 'administrator', '2018-07-06 21:52:08', 'administrator', '', '', NULL, 0),
(32, 'test-tiep-nao', 'test tiếp nào', '<strong>Lorem Ipsum</strong>&nbsp;chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.', 'test tiếp nào', 'test tiếp nào', 31, 0, '2018-07-06 21:52:55', 'administrator', '2018-07-06 21:52:55', 'administrator', '', '[\"a138b943f451855dc642f878c3694f69.jpg\"]', NULL, 0),
(33, 'ton-giao-khac', 'Tôn giáo khác', '<strong>Lorem Ipsum</strong>&nbsp;chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.', 'Tôn giáo khác', 'Tôn giáo khác', 22, 0, '2018-07-06 21:50:21', 'administrator', '2018-07-06 21:50:21', 'administrator', '', '[\"724f12d6fd026fee950cbf6941175064.jpg\"]', NULL, 0),
(34, 'kim-cuong-thua', 'Kim Cương Thừa', '<strong>Lorem Ipsum</strong>&nbsp;chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.', 'Kim Cương Thừa', 'Kim Cương Thừa', 23, 0, '2018-07-06 21:54:13', 'administrator', '2018-07-06 21:54:13', 'administrator', '', '[\"20c2f9782d6f033c877c853f77bbee40.jpg\"]', NULL, 0),
(35, 'phat-giao-han-truyen', 'Phật giáo Hán Truyền', '<p>Trong chuyến h&agrave;nh tr&igrave;nh n&agrave;y, ch&uacute;ng t&ocirc;i v&agrave; qu&yacute; du kh&aacute;ch sẽ c&ugrave;ng tới tham quan c&aacute;c danh thắng sau:</p>\r\n<p>Sa mạc Minh Sa Sơn (sa mạc c&aacute;t k&ecirc;u, thuộc ranh giới sa mạc Go-bi): trải nghiệm cưỡi tr&ecirc;n lưng lạc đ&agrave; quanh sa mạc.</p>\r\n<p>Hồ Nguyệt Nha: nằm gọn giữa l&ograve;ng sa mạc m&ecirc;nh m&ocirc;ng, l&agrave; ốc đảo tự nhi&ecirc;n duy nhất để những thương nh&acirc;n xưa dừng ch&acirc;n lấy nước chuẩn bị cho chuyến đi d&agrave;i vượt sa mạc đến T&acirc;y Vực trao đổi tơ lụa v&agrave; h&agrave;ng h&oacute;a. D&ugrave; sa mạc thường xảy ra b&atilde;o c&aacute;t nhưng nước trong hồ cũng kh&ocirc;ng bao giờ bị cạn kh&ocirc;, chưa bao giờ bị vẩn đục m&agrave; lu&ocirc;n trong vắt.</p>\r\n<p>Hang Mạc Cao: Hang Mạc Cao l&agrave; th&aacute;nh địa nghệ thuật Phật gi&aacute;o hiện tồn c&oacute; quy m&ocirc; lớn nhất v&agrave; nội dung phong ph&uacute; nhất thế giới.</p>\r\n<p>Bảo t&agrave;ng Đ&ocirc;n Ho&agrave;ng: Với diện t&iacute;ch 2400 m2, nơi đ&acirc;y trưng b&agrave;y rất nhiều c&aacute;c văn vật qu&yacute; hiếm của Đ&ocirc;n Ho&agrave;ng,&nbsp; số lượng l&ecirc;n đến hơn 4000 văn vật.</p>\r\n<p>Trấn Nguyệt Tuyền: trấn nhỏ được ch&iacute;nh phủ địa phương quy hoạch l&agrave;m nơi du kh&aacute;ch đến đ&acirc;y c&oacute; thể chi&ecirc;m ngưỡng văn ho&aacute; v&agrave; ẩm thực của người d&acirc;n Đ&ocirc;n Ho&agrave;ng xưa.</p>\r\n<p>Hang đ&aacute; Long M&ocirc;n: l&agrave; một trong 3 hang đ&aacute; lớn nhất Trung Quốc c&oacute; lịch sử l&acirc;u đời.</p>\r\n<p>Ch&ugrave;a Bạch M&atilde;: ng&ocirc;i ch&ugrave;a do quan phủ x&acirc;y dựng đầu ti&ecirc;n khi Phật gi&aacute;o truyền nhập v&agrave;o Trung Quốc từ đời Đ&ocirc;ng H&aacute;n ni&ecirc;n hiệu Vĩnh B&igrave;nh năm thứ 11.</p>\r\n<p>Thiếu L&acirc;m Tự: chốn tổ đ&igrave;nh Thiền t&ocirc;ng Trung Quốc, toạ lạc tr&ecirc;n ngọn n&uacute;i Tung Sơn tỉnh H&agrave; Nam.</p>\r\n<p>Nhanh ch&acirc;n đăng k&iacute; với Diamond Tour ngay h&ocirc;m nay để trải nghiệm về chất lượng dịch vụ &ldquo;xứng tầm, đẳng cấp&rdquo; v&agrave; hưởng nhiều ưu đ&atilde;i từ ph&iacute;a ch&uacute;ng t&ocirc;i!</p>', 'du lịch Đôn Hoàng, du lịch Lạc Dương, Du lịch Trung Quốc, Thất đại cố đô, con đường tơ lụa, Sa mạc Gobi, Mạc Cao', 'Đáp ứng nhu cầu khám phá, chiêm bái ngày một cao của quý du khách, Diamond Tour tiếp tục triển khai tuyến du lịch mới trên đất nước hơn nghìn năm văn hóa- Trung Hoa. Trong chuyến hành trình này, quý du khách sẽ được tới thăm quan 3 tỉnh thành nằm trong co', 37, 0, '2018-07-24 08:06:47', 'administrator', '2018-07-24 08:06:47', 'administrator', '', '[\"15650e4a337ebccfa922b03829e02854.jpeg\"]', NULL, 0),
(36, 'phat-giao-nam-truyen', 'Phật Giáo Nam Truyền', '<strong>Lorem Ipsum</strong>&nbsp;chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.', 'Phật Giáo Nam Truyền', 'Miền BắcMiền BắcMiền BắcMiền BắcMiền BắcMiền Bắc', 23, 0, '2018-07-06 21:54:22', 'administrator', '2018-07-06 21:54:22', 'administrator', '', '[\"fa7399ddd2d96f2c06c9c2c06ecf8ce6.png\"]', NULL, 0),
(37, 'ton-giao-khac-1', 'Tôn Giáo Khác', '<strong>Lorem Ipsum</strong>&nbsp;chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.', 'Phật Giáo Nam Truyền', 'Phật Giáo Nam Truyền', 23, 0, '2018-07-06 21:54:28', 'administrator', '2018-07-06 21:54:28', 'administrator', '', '[\"ee57dda55409ba47f7053b807d75fe7d.png\"]', NULL, 0),
(38, 'ttttttttt', 'TTTTTTTTT', 'TTTTTTTTT', 'TTTTTTTTT', 'TTTTTTTTT', 22, 1, '2018-07-14 15:09:09', 'administrator', '2018-07-14 15:09:09', 'administrator', '', '[\"e32d353abb0563b83d7ddc31b2f66a4c.jpg\"]', NULL, 0),
(39, 'phat-giao-han-truyen-1', 'Phật giáo Hán Truyền', 'fggggggggggggglkgjhhhhhhhhhhhhhhhhhh', 'sgfđj', 'fddddddd', 23, 0, '2018-07-24 08:09:18', 'administrator', '2018-07-24 08:09:18', 'administrator', '', '[\"5ae8eadc9c937d5ec9d019fa8b41f9db.jpg\"]', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `shop_type_id` int(11) NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `region` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1: bac, 2: trung, 3: nam',
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop`
--

INSERT INTO `shop` (`id`, `title`, `image`, `shop_type_id`, `address`, `region`, `phone`, `email`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Cửa Hàng', '1598c23ed6d4b48c8adb669b84636b45.jpg', 1, '19 Nguyễn Bỉnh Khiêm', 1, '0916595514', 'luongquochung.249@gmail.com', 1, '2018-10-23 17:59:53', 'administrator', '2018-10-23 17:59:53', 'administrator'),
(2, 'Cửa Hàng 1', '5ae00afd967bc109b2497e6ca12df220.jpg', 2, '19 Nguyễn Bỉnh Khiêm 1', 1, '0916595514', 'luongquochung.249@gmail.com', 0, '2018-10-26 14:30:29', 'administrator', '2018-10-26 14:30:29', 'administrator');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop_type`
--

CREATE TABLE `shop_type` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shop_type`
--

INSERT INTO `shop_type` (`id`, `title`, `slug`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'HEAD', 'head', 0, '2018-10-23 15:53:09', 'administrator', '2018-10-23 15:53:09', 'administrator'),
(2, 'Honda Moto', 'honda-moto', 0, '2018-10-23 16:03:53', 'administrator', '2018-10-23 16:03:53', 'administrator');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `site_sessions`
--

CREATE TABLE `site_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `site_sessions`
--

INSERT INTO `site_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('07nrdddkcvq4bveca1vodfv7p26j3mb4', '::1', 1540522317, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303532323331373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('0ame3nfcmhveo44r1fu41cmbeoppklv7', '::1', 1540527146, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303532373134363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('0il1m3ib0asqvhv3jbp5uc0h7unekn86', '1.55.93.60', 1532924292, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533323932343238343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('0jufp7t7dnnecdcdnpamgf6b6mul83vs', '::1', 1540292377, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303239323337373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('0uo33kqp8n1kshmbkucpbivjdg3pf1fq', '::1', 1540459907, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303435393930373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('0v3h07vh88omv6bjqc3e8s7132qbc0vg', '::1', 1533013079, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533333031333037393b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353332353932383937223b6c6173745f636865636b7c693a313533333031323735313b),
('0vqtr6c21v2ivtmhko7o7gg69uf78tv2', '::1', 1540264710, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303236343731303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('14ad3kjh7aauqgubb3sikbmdejvknn7u', '::1', 1540267260, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303236373236303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('1oaijp48pe6a5odn7ms4e3rel3j7pf1p', '::1', 1540461860, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303436313836303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('284kfd1qdg7qka05aimqruahi02r51e9', '::1', 1540454938, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303435343933383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('2gteekcalfev6sitbm7133b45m1ng5r2', '::1', 1540375971, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303337353937313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b),
('3agg9frl16vfpjj8hrnn92tc710i7hv1', '::1', 1533021602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533333032313630323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353333303132373531223b6c6173745f636865636b7c693a313533333032313236363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('3els456blnpd2b7nq4ili3beusk9jqpk', '::1', 1540460547, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303436303534373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('3j2p9ekr2i7l7sf240tnbsv1tkfm6vn4', '::1', 1540458088, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303435383038383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('3llmlaaao4t8gphrjdj7n1a58v2f4vo6', '::1', 1540266932, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303236363933323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('3lvsm25kuue70e8pf8q6rsurjc8tteef', '::1', 1540462195, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303436323139353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('4mqbplj28oa9ldel2a7o6ltumfcfld69', '::1', 1540538002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303533383030323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('4ocgrtpelgbq60u4u0jesakkki5or10j', '::1', 1540376277, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303337363237373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b),
('50qg7temn9esqv4hfs78cepq521pm255', '::1', 1540973214, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937333231343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383835313334223b6c6173745f636865636b7c693a313534303935333738393b),
('569m5rhs9lqfcrls5jcm0tqhvdo8rg52', '::1', 1540457308, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303435373330383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('5n2qvbkkdfq5qd73h76d0qboffaj4dc5', '::1', 1533013471, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533333031333437313b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353332353932383937223b6c6173745f636865636b7c693a313533333031323735313b),
('5sav09g787h5veuudsko1tljltoa5sg5', '::1', 1540279271, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303237393237313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('645l754nfmo5sqtfjcphcfjpm6ose9kt', '::1', 1540268694, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303236383639343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('66ragco25gf1jf6fqa0j4junfrumgu0c', '::1', 1540372075, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303337323037353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b),
('6ae8qbah1kpc66oh9u613m92cbtiirm6', '::1', 1540456673, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303435363637333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b6d6573736167655f737563636573737c733a32353a225468c3aa6d206de1bb9b69207468c3a06e682063c3b46e6721223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167655f73756363657373223b733a333a226e6577223b7d),
('6d28jhd9c65lgtg4reb6albf1dep81es', '::1', 1540287999, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303238373939393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('6g6rcinb3lrjmvjo2vvju06dk6r96ole', '::1', 1540885491, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303838353439313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373830223b6c6173745f636865636b7c693a313534303838353133343b),
('6knnd7dasc3srl446l46aec6c954ns5c', '::1', 1540269070, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303236393037303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('76l7j4c0uajpeju4q4s6j3j2qdpeoil9', '::1', 1540529402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303532393430323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('7b7s2mvhnmcnd9rrplhbh6pt4qkodbeh', '::1', 1540375306, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303337353330363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b),
('7o6rct2jul1mgpf697siamv5nnukjsbs', '::1', 1540460224, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303436303232343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('7pr4ke51q0tbhl0pufed9v4qfu5q1rrr', '::1', 1540456325, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303435363332353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b6d6573736167655f737563636573737c733a32353a225468c3aa6d206de1bb9b69207468c3a06e682063c3b46e6721223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167655f73756363657373223b733a333a226f6c64223b7d),
('82elq4a17usoe3jc4tvr7ihvc2lodkd8', '::1', 1540894604, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303839343630343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373830223b6c6173745f636865636b7c693a313534303838353133343b),
('8cfj3jm3dtqbb9kta3c6okq765pd4b5n', '::1', 1540786939, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303738363836323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('8cjs3difvjfmg2vvmvam04nbfmbf166o', '::1', 1533267195, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533333236373139353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('8eqt3fk4kkku6p4ji6p5t82mdks6jbk4', '::1', 1540278025, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303237383032353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('8id9rnhknr7l3cukea2a5r9vf0vji685', '::1', 1540366169, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303336363136393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b),
('8kisrbrh0cndu1o9rqmdhq9idro73l7u', '::1', 1540888579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303838383537393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373830223b6c6173745f636865636b7c693a313534303838353133343b),
('8ruuthl9i0ibgtfmkba6qb49hgoksti2', '::1', 1540890449, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303839303434393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373830223b6c6173745f636865636b7c693a313534303838353133343b),
('90ugp70m118umnu80b482cqfq4hc8sg1', '::1', 1540458830, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303435383833303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('926s2vonuoav5m20cn9119uvpag2r2qg', '::1', 1540269372, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303236393337323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b6d6573736167655f737563636573737c733a31393a2253e1bbad61207468c3a06e682063c3b46e6721223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167655f73756363657373223b733a333a226f6c64223b7d),
('9obtd19hi18p82l3lr4oa296ikjp0q82', '::1', 1540454271, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303435343237313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('a3fedlntekmmeha3hp7cep6mds9e4127', '::1', 1540893081, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303839333038313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373830223b6c6173745f636865636b7c693a313534303838353133343b),
('aqgab7mgk78u2sii5k7c2lgavnfnrq18', '::1', 1540538724, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303533383732343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('as4jskgo87jpd5i5263k25rceba9dqkb', '::1', 1540204277, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303230343237363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353335303137313135223b6c6173745f636865636b7c693a313534303230323335303b),
('ascrb65c86c7f047vkagu6g2vs3o425r', '::1', 1540269958, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303236393935383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('au2sf7i7mfl2rg17bclbipgkp079e7uc', '::1', 1540372380, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303337323338303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b),
('aurlqha90m1ammsev40j63062u84gh7b', '::1', 1540971878, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937313837383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383835313334223b6c6173745f636865636b7c693a313534303935333738393b),
('b4g5jmtho0stsamvh30akset9c7vgq18', '::1', 1540280862, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303238303836323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('b93gf1dcevmdqt0lrft3qvju0v36as92', '::1', 1540282242, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303238323234323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('bjvm6boogfdmusqea0f61d7qmcj1g4bs', '117.1.113.94', 1533009213, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533333030393231323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('bt3f97c0rho8csf8jra79gs3cr363kai', '::1', 1540970842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937303834323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383835313334223b6c6173745f636865636b7c693a313534303935333738393b),
('bu9mhhfvrmn88kfjsmlft86naq8t5q41', '::1', 1540954100, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303935343130303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383835313334223b6c6173745f636865636b7c693a313534303935333738393b),
('c1lmmgp7sh848m2sbhbk85086q3u0in4', '::1', 1540265704, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303236353730343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('c2fkgl1lc0idej1dcmf6r9homaonq18a', '::1', 1533012777, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533333031323737373b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353332353932383937223b6c6173745f636865636b7c693a313533333031323735313b),
('c5p7hdlve7jf433dttjbguhavjbu251k', '::1', 1540893695, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303839333639353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373830223b6c6173745f636865636b7c693a313534303838353133343b6d6573736167655f6572726f727c733a35323a22c49075c3b4692066696c6520696d616765207068e1baa369206cc3a0206a7067207c206a706567207c20706e67207c2067696621223b5f5f63695f766172737c613a313a7b733a31333a226d6573736167655f6572726f72223b733a333a226f6c64223b7d),
('c8g30nbpmna3kgbqjb2bd7e7lknsk1t1', '::1', 1540459141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303435393134313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('c9lc5ni51mhbolurfffgb1p30a8b40sp', '::1', 1540894303, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303839343330333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373830223b6c6173745f636865636b7c693a313534303838353133343b),
('cbfu6kbsj8udo1a4dps35l7l8hkpj8jd', '::1', 1540290315, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303239303331353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('cbof7g4f711drvk5s4jc20fli6t86bft', '::1', 1540367256, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303336373235363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6d6573736167655f737563636573737c733a32353a225468c3aa6d206de1bb9b69207468c3a06e682063c3b46e6721223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167655f73756363657373223b733a333a226e6577223b7d),
('cln42em022avvrb4ecn17idg9usjketr', '::1', 1534498733, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343439383733333b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353333313934303636223b6c6173745f636865636b7c693a313533343439343938303b),
('cucgucnpqfnrrt51fn465e8bf8ako1au', '::1', 1540284626, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303238343632363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('d24a8o8560de3n80vkc7pu1vv0bh7ksd', '::1', 1540280543, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303238303534333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('d35ok4vg5n4k8smrrh4pp0bcfqo57d8r', '::1', 1540892332, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303839323333323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373830223b6c6173745f636865636b7c693a313534303838353133343b),
('d79ngj2h55je0sdpgmrvo2l3m271cr29', '::1', 1535015948, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353031353638383b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353334343934393830223b6c6173745f636865636b7c693a313533353031353639383b),
('d89kou4suo2akjhpmrg6eotfagn0pn3b', '::1', 1540528113, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303532383131333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('e60bicbs102q9ftr19cb4jgrs5g791r6', '::1', 1540463779, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303436333737393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('e6g5j787nc41vhgdnhcnef8m0tudiqea', '::1', 1540364788, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303336343738383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b),
('eb74ohkg9bkq65utm58k19v74hb19g6f', '14.162.147.211', 1532941748, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533323934313731393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ec0dpjj7iugf3188i9inj2edps459bip', '::1', 1540365265, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303336353236353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b),
('ejjsgrnd51l2c89varidik7237a5djjc', '::1', 1533013879, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533333031333837393b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353332353932383937223b6c6173745f636865636b7c693a313533333031323735313b),
('el0sk4ejc5m3g63k5r1i022p9tdjdh6k', '::1', 1537954636, ''),
('euoo0ul7i9e94it3mr0dhudr91v84srf', '::1', 1540278959, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303237383935393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('f5los7i8iadu095vheu66ga85ocss70r', '::1', 1540373914, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303337333931343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b),
('f7lt7tq532j77n1occlmeht5ei2dtg8e', '::1', 1540290668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303239303636383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('f8k4vops3nlgi6225tm7g3fgm7g1v8bb', '::1', 1540974625, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937343632353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383835313334223b6c6173745f636865636b7c693a313534303935333738393b),
('fkj2mlk0au29q4stopn4192k2iar38pm', '::1', 1540895065, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303839343932323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373830223b6c6173745f636865636b7c693a313534303838353133343b),
('frk4314iq902ng65l8bqlemsc64g6m3b', '::1', 1540281932, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303238313933323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('fuf1r1ehgti4urfs5q5fv91sev6bg18u', '::1', 1540284945, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303238343934353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('gf6k5j3gfjnvq67njvvc32dgmom89cld', '::1', 1540452443, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303435323434333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('gjk2kpqvqb6bu02t5ogpdfbdr0eopmie', '::1', 1540973523, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937333532333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383835313334223b6c6173745f636865636b7c693a313534303935333738393b),
('glqped68v05ft81e47l52op57nb6g9dp', '::1', 1540285319, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303238353331393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('gmoet6udpi36bi0t1bntq13ejea7daef', '::1', 1540955760, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303935353736303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383835313334223b6c6173745f636865636b7c693a313534303935333738393b),
('gs23idb9has1eurco44mrvd4rduacncm', '::1', 1540453970, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303435333937303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('gs8gpdnk4lo56rihc5rjrpslsj34kkoe', '::1', 1540521985, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303532313938353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('gsgq7dv1l57cmiss5gq86h0sp04f5l8n', '::1', 1540463298, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303436333239383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('h3j6j0hq1u0fe3j6jhkvqrrko6b3kjq6', '::1', 1540265395, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303236353339353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('hhfr8eo6r9s09ovdoegu22r74o3ae97l', '::1', 1540891195, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303839313139353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373830223b6c6173745f636865636b7c693a313534303838353133343b),
('hk90dacittn06pfja4atjevmvf55ede6', '::1', 1540894922, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303839343932323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373830223b6c6173745f636865636b7c693a313534303838353133343b),
('hpoei72sjohbjgnj9bn9et095j7idri4', '::1', 1540786091, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303738363039313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('htk0k76mdadgomqr4gadlmjp52q8qml6', '::1', 1540888899, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303838383839393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373830223b6c6173745f636865636b7c693a313534303838353133343b),
('hvva9d4eldl6ch0tt9d913kd2jv6afkh', '::1', 1540889567, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303838393536373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373830223b6c6173745f636865636b7c693a313534303838353133343b),
('i6jh8harm8v4s9eag7p2bpm63ib4vrhb', '::1', 1540972838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937323833383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383835313334223b6c6173745f636865636b7c693a313534303935333738393b),
('i70ddhe3apt58psajlhh4qakjtqm2rbh', '::1', 1540957056, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303935373035363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383835313334223b6c6173745f636865636b7c693a313534303935333738393b),
('icdfcvr3sagh422e5qul3lnsd4pcqqm4', '::1', 1540266462, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303236363436323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b6d6573736167655f737563636573737c733a31393a2253e1bbad61207468c3a06e682063c3b46e6721223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167655f73756363657373223b733a333a226f6c64223b7d),
('ie7jaa3v8n5k3qvj4hkl01jcs57e9kfc', '::1', 1540264404, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303236343430343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b6d6573736167655f737563636573737c733a32353a225468c3aa6d206de1bb9b69207468c3a06e682063c3b46e6721223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167655f73756363657373223b733a333a226f6c64223b7d),
('if32nlvtebk5lpu9kaifk699d7u1k1pr', '::1', 1540461511, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303436313531313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ir48ou9hv84j2dkde8ikgrq94v856fv5', '::1', 1540956079, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303935363037393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383835313334223b6c6173745f636865636b7c693a313534303935333738393b),
('ircpheq0b9qd1jc4bi17fq74fb5g181k', '::1', 1540291017, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303239313031373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('j6c5dobt8h0pg5onhelqp1refiucocbf', '::1', 1533267200, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533333236373139353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('jk5qqqoqqrdtv1g7ajebrtpnqtb04bf9', '::1', 1540785789, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303738353738393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('jna236q96us45m9kr4j169nkd5n1r4hh', '::1', 1540522832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303532323833323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('jpqetl1ljou3usfi11app201s7ah314t', '::1', 1540281321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303238313332313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('k09f1v6lhsl3ubs15tcjatejredu51q5', '::1', 1540375620, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303337353632303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b),
('k1eatiu836n9epfsnv13kmbvhf2dnimk', '::1', 1540886722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303838363732323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373830223b6c6173745f636865636b7c693a313534303838353133343b),
('k4v3rqlkss7rtsk3d3fuo6jhthlirgdk', '::1', 1540457006, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303435373030363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('k5uvmovc1edpoeart6vhtmuhg4m7qk4n', '::1', 1540372763, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303337323736333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6d6573736167655f737563636573737c733a31393a2253e1bbad61207468c3a06e682063c3b46e6721223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167655f73756363657373223b733a333a226f6c64223b7d),
('kdth977mrk3hubrqvdnaea4nl2t3lbcu', '::1', 1540893996, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303839333939363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373830223b6c6173745f636865636b7c693a313534303838353133343b),
('kggs9dhfc95rfeb0tudg36ikmgiucqj4', '::1', 1540889868, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303838393836383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373830223b6c6173745f636865636b7c693a313534303838353133343b),
('kgsuv7pqmpb91sde1cgd2jqlqitg5oap', '::1', 1540459449, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303435393434393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('laobeo6ij11ss8fp1v0hq0t205fuagds', '::1', 1540956719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303935363731393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383835313334223b6c6173745f636865636b7c693a313534303935333738393b),
('lbb3rjkh29m4nbh0nvd57clplfre6p1u', '::1', 1540452119, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303435323131393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b),
('lh530pddlsuht76hapdp4bktmeeebkfi', '::1', 1540370054, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303337303035343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b),
('lvgnchkhldecu543d3srph2uf5anqsan', '::1', 1540455532, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303435353533323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('mdfb1l9selj3hp7c49b68fkk82dfsvea', '::1', 1540889205, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303838393230353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373830223b6c6173745f636865636b7c693a313534303838353133343b),
('mg2eftpdeha2r5hqi019r7dpv5kkhf1p', '::1', 1540265031, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303236353033313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b6d6573736167655f737563636573737c733a32353a225468c3aa6d206de1bb9b69207468c3a06e682063c3b46e6721223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167655f73756363657373223b733a333a226f6c64223b7d),
('mkijfl5mvbqh00efgsop5j4klu0bvltk', '::1', 1533014122, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533333031333837393b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353332353932383937223b6c6173745f636865636b7c693a313533333031323735313b),
('mt9n0o9pk0if365imj45arau35alcrca', '::1', 1535017129, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353031373130353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353335303135363938223b6c6173745f636865636b7c693a313533353031373131353b),
('n0agu6sv5kv3ifuhcmud13b3di8t7g99', '::1', 1540888267, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303838383236373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373830223b6c6173745f636865636b7c693a313534303838353133343b),
('n1s1ua92m7g004rvl36bqib3qpi6h1im', '::1', 1540366799, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303336363739393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b);
INSERT INTO `site_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('ncc1kt8tts79o4jdv2pfqgmvqcn2a52u', '::1', 1541037712, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534313033373434393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430393533373839223b6c6173745f636865636b7c693a313534313033373037353b),
('ndpg650h0e9ldbf0g5lbl00u4qne77ce', '::1', 1533021775, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533333032313630323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353333303132373531223b6c6173745f636865636b7c693a313533333032313236363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('njfmrsgjupn60en4pvb4r523p7fa0i9i', '::1', 1540263482, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303236333438323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('np3g3aqtt75q67nrt2594sem46eg3p87', '::1', 1540260790, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303236303436353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333530223b6c6173745f636865636b7c693a313534303236303535363b),
('nt4iall9s1ltj9mpaqvs6fkvgspm6u68', '::1', 1540979860, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937393836303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383835313334223b6c6173745f636865636b7c693a313534303935333738393b),
('o3et72n9glr83gbugrq8vj89b9gc0raf', '::1', 1540454572, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303435343537323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('oj5d7tlp9g63vgb6empm2k1vlaojp50h', '::1', 1540291320, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303239313332303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('p0g55t6l7riutddk2mhj9s3db27mv5fn', '::1', 1540282616, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303238323631363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('p6l0d0039a5jkmoa3j02inu0gni6kt8m', '::1', 1540527781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303532373738313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('p6m1361n8c196lh22sltlkj31ae1if6q', '::1', 1540540097, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303534303039373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('pcvh9b8a6umql2cei38a6erhe7hcjiec', '::1', 1540292471, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303239323337373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('phj8ta3utahsbk0nklvu4mb57a5hgrs2', '::1', 1540281623, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303238313632333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('pj3iuut8o0deiukorfb895t4strf6b0r', '::1', 1540785473, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303738353437333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('pplrgcqf3eotgd279thtnjomjsgvbb4f', '::1', 1540365817, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303336353831373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b),
('pqujat2mcvgvbhqst4khoa2cga1421eh', '::1', 1540280225, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303238303232353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('pr80n5eo8bluict0p5cbvq3n9836g24r', '::1', 1540292072, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303239323037323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('psovsm0vipcgut3llm98ch11er06bb09', '::1', 1540955351, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303935353335313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383835313334223b6c6173745f636865636b7c693a313534303935333738393b),
('pt7427d5dpsr25kc5s547f4lgf97jpgv', '::1', 1540374252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303337343235323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b),
('pvfhrufrqck2374bf6jq05usvfdrutj9', '::1', 1540979867, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937393836303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383835313334223b6c6173745f636865636b7c693a313534303935333738393b),
('q5oa37a75nin9q73pehupoakep03d5c2', '::1', 1540457735, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303435373733353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('q90026eeniur4t451la212eh6befg10h', '::1', 1540268073, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303236383037333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('q93n9hchqin7i4127bmt6rokha7v8v40', '::1', 1540893394, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303839333339343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373830223b6c6173745f636865636b7c693a313534303838353133343b),
('qarvgqb97pl72do892hkt0tchomoguq3', '::1', 1540462512, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303436323531323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('qhbs7utm39bampn52orho826f8j7fqbb', '::1', 1540363758, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303336333735383b),
('qkag23fu5q5vfa73b59jtt0vu8v1q39d', '::1', 1540279918, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303237393931383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('r703rq1mj47qdovue4naraei9rohrd3v', '::1', 1540527477, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303532373437373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ru589773vtr1o9ir5edr7q9obqdfum9h', '::1', 1540376580, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303337363538303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b),
('s09otaues6g8k57d770n2hqp2cniv1cn', '::1', 1540286778, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303238363737383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('s6rekj34r8cuka19tu3h1amthfmu456q', '::1', 1540458517, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303435383531373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b6d6573736167655f737563636573737c733a32353a225468c3aa6d206de1bb9b69207468c3a06e682063c3b46e6721223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167655f73756363657373223b733a333a226f6c64223b7d),
('s91tn17j3slpd5hvognles433qabbc7d', '::1', 1540455890, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303435353839303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('sd7bckp94l4kfvh78ub08045kpig1lk1', '::1', 1533194077, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533333139343035343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353333303231323636223b6c6173745f636865636b7c693a313533333139343036363b),
('shj078b6e9s1g2d2oe4l81qofsafjjpt', '::1', 1540954503, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303935343530333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383835313334223b6c6173745f636865636b7c693a313534303935333738393b),
('t1incjcct0k5apq88jvs2nkkpt21p1jj', '::1', 1540543080, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303534333038303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('tctvbstom76o7le67uk9btlvto1mj5rf', '::1', 1540204276, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303230343237363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353335303137313135223b6c6173745f636865636b7c693a313534303230323335303b),
('tfnmklihd539mem32t85gllh7eu058ba', '::1', 1540971254, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937313235343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383835313334223b6c6173745f636865636b7c693a313534303935333738393b),
('tp5sastgv3ptbfuhtf36fv5eca6isom4', '::1', 1540461028, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303436313032383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('tpjrm84gkab7bdjbdb4bge53ftmjr4p3', '::1', 1540890773, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303839303737333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373830223b6c6173745f636865636b7c693a313534303838353133343b),
('u06ivc0igb2usa7mdb8vcj9vc7eiga20', '::1', 1540364246, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303336343234363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b),
('u3ip4nuuhk8v43036equb4covde44n78', '::1', 1534498753, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343439383733333b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353333313934303636223b6c6173745f636865636b7c693a313533343439343938303b),
('u83dgq988vhnv44coln7es913ddca7cu', '::1', 1540538409, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303533383430393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('udmdb5a36cpavdp2p5nn5bttkk7tt09e', '::1', 1540287136, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303238373133363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('uj7h1q45tchtc99ubhb2m3vbp4e4hk8o', '::1', 1540374974, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303337343937343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b),
('upc4fjn8lf4s7e78vss1bh1kedmibupm', '::1', 1540786862, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303738363836323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('v425ntagnkrf27k08d49jtq4ijjiseu9', '::1', 1540203011, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303230333031313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353335303137313135223b6c6173745f636865636b7c693a313534303230323335303b),
('v5fr6or8q58016lhh0ugsnj2uthfvu5m', '::1', 1540956400, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303935363430303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383835313334223b6c6173745f636865636b7c693a313534303935333738393b),
('v8j1r2qgr7g9iq8ikrv5inujrippm95g', '::1', 1540370475, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303337303437353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b),
('v9pdr4u165d2rul3vovmd8uvt1np8auk', '::1', 1540539029, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303533393032393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('vb82qps1793qs8f0ut1b634ucgte2i03', '::1', 1540374559, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303337343535393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b),
('vglf6v67lu8pvgc8mjapcda4m14s89tb', '::1', 1540971564, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937313536343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383835313334223b6c6173745f636865636b7c693a313534303935333738393b),
('vjors1b2ju2l3rlugclgoese33bt812g', '::1', 1540979244, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937393234343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383835313334223b6c6173745f636865636b7c693a313534303935333738393b),
('vjpmtinidt8jpa6fvj4vu8hjqto20bit', '::1', 1540286417, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303238363431373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b),
('vl8810cb2s995vi7eeg7h0hh2t9qqvb1', '::1', 1540462909, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303436323930393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430333633373732223b6c6173745f636865636b7c693a313534303336333738303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('vo7nc9k3bt2v2atgsrlq2f07cikslbip', '::1', 1540202678, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303230323637383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353335303137313135223b6c6173745f636865636b7c693a313534303230323335303b),
('vpq213cqsaporuk6i36p9o0r9s5vpbcp', '::1', 1541037449, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534313033373434393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430393533373839223b6c6173745f636865636b7c693a313534313033373037353b),
('vss77cjuthg2kbsjrgi0vmsaomiirp9v', '::1', 1540263999, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303236333939393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323630353536223b6c6173745f636865636b7c693a313534303236313539373b);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `team`
--

INSERT INTO `team` (`id`, `title`, `image`, `position`, `description`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'test', '6903ce8408515d1c0e2364f04786d387.jpg', '', 'test', 1, '2018-10-30 15:36:19', 'administrator', '2018-10-30 15:36:19', 'administrator'),
(2, 'asdasd', 'b3841d541327b29c142235d1fff8e211.jpg', '', 'asdasd', 0, '2018-10-30 15:36:48', 'administrator', '2018-10-30 15:36:48', 'administrator'),
(3, 'asdasd', 'a251e24077bf1d842cdf6170672accca.jpg', '', 'asdasdasd', 0, '2018-10-30 15:37:44', 'administrator', '2018-10-30 15:37:44', 'administrator'),
(4, 'asdasd', '03621d360079d669fd97c794c2b4a710.jpg', '', 'asdasdasd', 0, '2018-10-30 15:38:27', 'administrator', '2018-10-30 15:38:27', 'administrator'),
(5, '123123', 'bf3b22b4e2390f376b15871bb156b50c.jpg', 'áđá', '123123', 0, '2018-10-30 15:51:10', 'administrator', '2018-10-30 15:51:10', 'administrator'),
(6, '123123', '9aeb1ad2a847063dcf4dd332eb124c0a.jpg', 'áđâsd', '123123', 1, '2018-10-30 15:50:14', 'administrator', '2018-10-30 15:50:14', 'administrator');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `testimonial`
--

INSERT INTO `testimonial` (`id`, `name`, `avatar`, `country`, `title`, `slug`, `rating`, `content`, `image`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Maddi Welman', '4d00bd0fc24b6c7d38ab9d070535f05f.jpg', 'South Africa', 'THANKS FOR A GREAT TRIP!', 'thanks-for-a-great-trip-1', 5, 'We have just returned from our 16 day North to South Vietnam trip and I have to thank and recommend HA NGUYEN for being the best travel consultant!! Working with Ha was a great experience. She was very helpful and knowledgeable and assisted in creating a custom package for 4 of us travelling together. She created a itinerary based on our preferences and made suggestions that worked well. \r\n\r\nUpon arrival she met us in person at the hotel and took us for egg coffee where we went over the itinerary again. All airport transfers, hotels, drivers, guides and local flights were managed by Ha and well organized. \r\n\r\nShe was always available by WhatsApp during the planning stages and whilst in Vietnam.\r\n\r\nBooking was really easy and I paid by credit card using a secure link provided by Ha for payment. \r\n\r\nDuring our stay we were not happy with one of the hotels and she immediately moved us to another hotel at no extra cost. \r\n\r\nI will definitely recommend her and Vietnamtour. Thank you Ha for your part in making our holiday unforgettable.', '[\"8dc6a0d1056c1dc485158bc41e804cd3.jpg\",\"692def2fddfb92471ff978f8fc820659.jpg\",\"2495c6afb775926acf300ab1fe51655d.jpg\",\"df762994f1f51eb3ee792dd906da59b9.jpg\"]', 0, '2018-10-31 10:26:40', 'administrator', '2018-10-31 10:26:40', 'administrator');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `age` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `age`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1541037075, 1, 'Admin', 'istrator', 'ADMIN', '0', NULL),
(2, '::1', 'asdas', '$2y$08$PpWSK2unjydxp3spURaQIeF0XLE0W70gsd0TD9pit699I.YgN2DAC', NULL, 'admin@admin.com1', NULL, NULL, NULL, NULL, 1527177316, NULL, 0, '', 'asdas', '', '121231', ''),
(3, '::1', 'minhtruong', '$2y$08$YPNhvgbGnA7jbd9HyjXO0./rYZmIXRje/UcB7523ZAy1xg5BOjfGa', NULL, 'minhtruong93gtvt@gmail.com', NULL, NULL, NULL, NULL, 1527177780, 1527179552, 1, '', 'minhtruong', 'mato', '123', '1'),
(4, '::1', 'a', '$2y$08$kDxKWvqs.XWwiD7LHvs2AuG.Uzu4NWhm498URqvjIUYfV3PzfQHim', NULL, 'minhtruong93gtvt@gmail.com1', NULL, NULL, NULL, NULL, 1527178136, NULL, 0, '', 'a', 'mato', '123123', '12'),
(5, '::1', 'Minh Trường', '$2y$08$RzELUGHvx8MtPpATO4/1xuQqG3iKiVsluuuuW9GHcd/lijGyPt8YC', NULL, 'minhtruong93gtvt@gmail.com2', NULL, NULL, NULL, NULL, 1527178552, NULL, 1, '', 'Minh Trường', 'mato', '0985767862', '25'),
(6, '::1', 'Minh Trường', '$2y$08$eFnAMTSd9nK8tyZQNcNlVeWv82KfRkF18pF8Lh7gxbJWCSZF3grMG', NULL, 'minhtruong93gtvt@gmail.com2', NULL, NULL, NULL, NULL, 1527178625, NULL, 1, '', 'Minh Trường', 'mato', '0985767862', '25'),
(7, '::1', 'asd', '$2y$08$VLybd2Ow93i3lknQtDqpIeoMf3xP7v38m9JYML2VM8dowCepDvyP.', NULL, 'a@gmail.com', NULL, NULL, NULL, NULL, 1527179462, NULL, 1, '', 'asd', '', '123', ''),
(8, '::1', 'Minh', '$2y$08$SbJuXh7GnCBqPBvYRTEcMONjoU8TZ8u0ZzDez2z3QP7TivGnE/iH.', NULL, 'hanguyen@user.com', NULL, NULL, NULL, NULL, 1527432498, NULL, 1, '', 'Minh', 'mato', '0985767862', '26'),
(9, '::1', '1232', '$2y$08$FF9cU4VevU3PqW8SJ39bcuVDOVvauKoECc68nn.3CDc6bl8GindX2', NULL, 'asdas@gmail.com', NULL, NULL, NULL, NULL, 1527433031, NULL, 1, '', '1232', '', '1231', ''),
(10, '::1', 'asdasd', '$2y$08$o/tFkN0LG5IxWpsDHNK0KemUM8OvGEiY3Ao1B7eJO6uvB5lrpYALm', NULL, 'aa@gmail.com', NULL, NULL, NULL, NULL, 1527504887, NULL, 1, '', 'asdasd', 'asda', '123123', '12'),
(11, '::1', 'Minh Truong', '$2y$08$Bi2qBwrxcSPkgFlq0xCwLOQbnQH348SZpZt5IRG5mT7/t/y3dbT6G', NULL, 'minhtruong93gtvt@gmail.com111', NULL, NULL, NULL, NULL, 1527523354, NULL, 1, '', 'Minh Truong', 'mato', '0985767862', '26'),
(12, '::1', 'Test', '$2y$08$WIF4VSIReuADjylqq0PeIO/0xapxmvMq9EL8/osUzL.X9MdnvFute', NULL, 'minhtruong93gtvt@gmail.com12', NULL, NULL, NULL, NULL, 1528288091, 1528295244, 1, '', 'Test', 'Mato', '0985767862', '25'),
(13, '::1', 'Do Minh Minh', '$2y$08$BconVYwp22s1nsQX8.X6iewac3bdgoQ4QPY2Qc8GaLrynqT4M7HfW', NULL, 'minhtruong93gtvt@gmail.com123', NULL, NULL, NULL, '/2NIvlwW8v3xZvePhIOIS.', 1528295320, 1528295517, 1, '', 'Do Minh Minh', 'MatoCreative', '0985767862', '25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 3, 2),
(5, 4, 2),
(6, 5, 2),
(7, 6, 2),
(8, 7, 2),
(9, 8, 2),
(10, 9, 2),
(11, 10, 2),
(12, 11, 2),
(13, 12, 2),
(14, 13, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video_library`
--

CREATE TABLE `video_library` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iframe` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `video_library`
--

INSERT INTO `video_library` (`id`, `title`, `iframe`, `description`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Video 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/O_T1boJt4pU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Video 1', 1, '2018-10-26 11:15:11', 'administrator', '2018-10-26 11:15:11', 'administrator'),
(2, 'Video 3', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/RjrnTgoS_tE\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Video 2', 1, '2018-10-26 11:32:08', 'administrator', '2018-10-26 11:32:08', 'administrator');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `accessary`
--
ALTER TABLE `accessary`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ci_sessions_timestamp` (`timestamp`) USING BTREE;

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `guide`
--
ALTER TABLE `guide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `image_library`
--
ALTER TABLE `image_library`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`post_category_id`);

--
-- Chỉ mục cho bảng `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shop_type`
--
ALTER TABLE `shop_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `site_sessions`
--
ALTER TABLE `site_sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ci_sessions_timestamp` (`timestamp`) USING BTREE;

--
-- Chỉ mục cho bảng `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`) USING BTREE,
  ADD KEY `fk_users_groups_users1_idx` (`user_id`) USING BTREE,
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`) USING BTREE;

--
-- Chỉ mục cho bảng `video_library`
--
ALTER TABLE `video_library`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `accessary`
--
ALTER TABLE `accessary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `guide`
--
ALTER TABLE `guide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `image_library`
--
ALTER TABLE `image_library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT cho bảng `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT cho bảng `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `shop_type`
--
ALTER TABLE `shop_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT cho bảng `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT cho bảng `video_library`
--
ALTER TABLE `video_library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`post_category_id`) REFERENCES `post_category` (`id`);

--
-- Các ràng buộc cho bảng `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
