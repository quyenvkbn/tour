-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 01, 2018 lúc 12:59 AM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.2.3

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
(24, '', '', '639129cf92e5310c140ce622f534a257.jpg', '2018-05-14 13:40:02', 'administrator', '2018-05-14 13:40:02', 'administrator', 1, 1),
(25, '', '', 'f4e0415f312373271066db0c109d0ca1.jpg', '2018-05-14 18:07:17', 'administrator', '2018-05-14 18:07:17', 'administrator', 1, 1),
(26, '', '', 'c169ac4e4225021f5da9a48af6b8e555.png', '2018-05-30 15:30:28', 'administrator', '2018-05-30 15:30:28', 'administrator', 1, 1),
(27, '', '', 'e96bff60c2110c71b354e55bebe3928d.jpg', '2018-05-30 15:37:07', 'administrator', '2018-05-30 15:37:07', 'administrator', 1, 1),
(28, '', '', 'c271b588baa819e1378c0105dc6adcc7.jpg', '2018-06-23 11:46:46', 'administrator', '2018-06-23 11:46:46', 'administrator', 0, 0),
(29, '', '', '16a8f5f1237db47d99605e4508f27626.png', '2018-06-27 13:37:38', 'administrator', '2018-06-27 13:37:38', 'administrator', 0, 0),
(30, '', '', 'da46cebe8f130ad2e79b9fb557ee9e0e.jpg', '2018-06-23 11:07:29', 'administrator', '2018-06-23 11:07:29', 'administrator', 0, 0),
(31, 'Tầng 1', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như Aldus PageMaker.', 'bae827d7f82c7c457089b80964d72403.png', '2018-07-02 16:29:49', 'administrator', '2018-07-02 16:29:49', 'administrator', 0, 0),
(32, 'Mô tả', '', 'f3472ef7855763f5e5fa4f3fb7f37afd.jpg', '2018-07-02 16:29:28', 'administrator', '2018-07-02 16:29:28', 'administrator', 0, 0),
(33, 'Mô tả12', 'Mô tả', '8b075b78175c4af76db1e7c04e454d2a.png', '2018-07-02 16:29:22', 'administrator', '2018-07-02 16:29:22', 'administrator', 0, 0),
(34, 'Mô tả', 'Mô tả', '528c0de99212c216d2a2b3ce6eb717a8.jpg', '2018-06-26 10:33:34', 'administrator', '2018-06-26 10:33:34', 'administrator', 1, 1),
(35, 'ád', 'sdfsdf', '781cd353e606ee91de57d7a6e8b6fee6.jpg', '2018-06-26 10:43:48', 'administrator', '2018-06-26 10:43:48', 'administrator', 1, 1),
(36, 'ádsdf', 'sdfsadas', 'dc3af5cdd63aa650c0447c9338f6d2b3.png', '2018-06-26 10:44:43', 'administrator', '2018-06-26 10:44:43', 'administrator', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adults` tinyint(4) NOT NULL,
  `children` tinyint(4) NOT NULL,
  `infants` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: pending; 1: success; 2: cancel',
  `content` text COLLATE utf8mb4_unicode_ci,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Cấu trúc bảng cho bảng `customize`
--

CREATE TABLE `customize` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0' COMMENT '0: pending; 1: success; 2: cancel',
  `content` text COLLATE utf8mb4_unicode_ci,
  `adults` tinyint(4) DEFAULT NULL,
  `children` tinyint(4) DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `infants` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Cấu trúc bảng cho bảng `localtion`
--

CREATE TABLE `localtion` (
  `id` int(11) NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_id` int(11) NOT NULL,
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` int(2) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `localtion`
--

INSERT INTO `localtion` (`id`, `slug`, `title`, `description`, `content`, `image`, `area_id`, `is_hot`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'chua-long-son', 'Chùa Long Sơn', '', 'Ng&ocirc;i ch&ugrave;a nổi tiếng được x&acirc;y dựng năm 1738, v&agrave;o thời vua C&agrave;n Long, đời nh&agrave; Thanh v&agrave; chủ yếu l&agrave; thờ Phật Qu&aacute;n Thế &Acirc;m Bồ T&aacute;t. Trải qua hơn 270 năm lịch sử, ng&ocirc;i ch&ugrave;a n&agrave;y đ&atilde; được tr&ugrave;ng tu nhiều lần nhưng vẫn giữ được n&eacute;t kiến tr&uacute;c ban đầu.', '1667e491c120b62b746e23037d3f6b06.jpg', 2, 0, 0, '2018-06-28 14:13:17', 'administrator', '2018-06-28 14:13:17', 'administrator'),
(2, 'quang-truong-tu-do', 'Quảng trường tự do', '', 'Quảng trường Tự do l&agrave; một quảng trường c&ocirc;ng cộng bao tr&ugrave;m hơn 240.000 m&eacute;t vu&ocirc;ng ở quận Trung Ch&iacute;nh của Đ&agrave;i Bắc, Đ&agrave;i Loan. Đ&acirc;y l&agrave; nơi c&ocirc;ng ch&uacute;ng tụ họp sau khi được ho&agrave;n th&agrave;nh v&agrave;o cuối những năm 1970. T&ecirc;n gọi quảng trường gợi nhớ lại vai tr&ograve; lịch sử quan trọng trong qu&aacute; tr&igrave;nh chuyển đổi từ thế chế độc đảng sang d&acirc;n chủ hiện đại của Đ&agrave;i Loan trong thập ni&ecirc;n 1990.', '34e751356c6e717a635ad99f5cc4565c.jpg', 2, 0, 0, '2018-06-28 14:28:32', 'administrator', '2018-06-28 14:28:32', 'administrator'),
(3, 'toa-thap-taipei-101', 'Tòa tháp Taipei 101', '', 'T&ograve;a th&aacute;p Taipei 101 hay c&ograve;n được gọi l&agrave; t&ograve;a th&aacute;p Đ&agrave;i Bắc 101, nằm ở quận Xinyi, Đ&agrave;i Bắc, Đ&agrave;i Loan. T&ograve;a th&aacute;p n&agrave;y được khởi c&ocirc;ng x&acirc;y dựng v&agrave;o năm 1999 v&agrave; đ&atilde; ho&agrave;n th&agrave;nh sau 5 năm tức l&agrave; v&agrave;o năm 2004 với kinh ph&iacute; l&ecirc;n đến 1,76 tỷ USD. Sau khi ho&agrave;n tất t&ograve;a th&aacute;p n&agrave;y c&oacute; diện t&iacute;ch s&agrave;n rộng 412.500 m2, cao đến 509,2 m v&agrave; c&oacute; 101 tầng. Taipei 101 nổi tiếng l&agrave; t&ograve;a th&aacute;p cao nhất thế giới l&uacute;c bấy giờ, đến năm 2010 th&igrave; nhường vị tr&iacute; n&agrave;y lại cho t&ograve;a nh&agrave; Burj Khalifa tại Dubai.', 'cff56d2b3720213c5e85f8f0d42b9487.jpg', 2, 0, 0, '2018-06-28 14:35:53', 'administrator', '2018-06-28 14:35:53', 'administrator'),
(4, 'phap-co-son', 'Pháp Cổ Sơn', '', 'Ph&aacute;p Cổ Sơn (DDM) l&agrave; một danh lam thắng cảnh nằm tr&ecirc;n một sườn đồi gần giao lộ ở đường cao tốc Bờ biển Bắc v&agrave; Yangmingshan-Jinshan trong Sanjie, huyện Jinshan, th&agrave;nh phố New Taipei, Đ&agrave;i Loan. Ph&aacute;p Cổ Sơn được th&agrave;nh lập v&agrave;o cuối năm H&ograve;a thượng Thiền Sư Sheng-yen. Sau đ&oacute;, dưới sự dẫn dắt của Đại sư Th&aacute;nh Nghi&ecirc;m c&ugrave;ng với nỗ lực của tập thể c&aacute;c Phật tử, Ph&aacute;p Cổ Sơn đ&atilde; trở th&agrave;nh một trung t&acirc;m tu học Phật Ph&aacute;p. C&aacute;c mục ti&ecirc;u của Ph&aacute;p Cổ Sơn l&agrave; để bảo vệ đời sống tinh thần của nh&acirc;n loại, v&agrave; x&acirc;y dựng một c&otilde;i tịnh độ trong c&otilde;i Ta B&agrave; n&agrave;y.', '150b23c9ec30cbf00d71b10d2e62d047.jpg', 2, 0, 0, '2018-06-28 14:37:27', 'administrator', '2018-06-28 14:37:27', 'administrator'),
(5, 'linh-thuu-son', 'Linh Thứu Sơn', '', 'Linh Thứu Sơn - đạo tr&agrave;ng V&ocirc; Sinh. Nơi đ&acirc;y T&acirc;m Đạo ph&aacute;p sư sau hơn hai năm đoạn thực tu h&agrave;nh đ&atilde; mở đạo tr&agrave;ng V&ocirc; Sinh l&agrave;m nơi hoằng dương Phật ph&aacute;p. Ng&agrave;i được biết đến l&agrave; người s&aacute;ng lập ra bảo t&agrave;ng t&ocirc;n gi&aacute;o thế giới v&agrave; nh&agrave; s&aacute;ng lập ra tổ chức Global Family for Love and Peace được biết đến tr&ecirc;n to&agrave;n cầu.', 'cecc1c78bf2c9662984ffd804a53d0a1.jpg', 2, 0, 0, '2018-06-28 14:38:34', 'administrator', '2018-06-28 14:38:34', 'administrator'),
(6, 'cho-dem-raohe', 'Chợ đêm Raohe', '', 'Chợ đ&ecirc;m Raohe kh&ocirc;ng chỉ l&agrave; thi&ecirc;n đường ẩm thực Trung Hoa m&agrave; nơi đ&acirc;y cũng l&agrave; một trong những địa điểm mua sắm Đ&agrave;i Bắc v&ocirc; c&ugrave;ng nổi tiếng với du kh&aacute;ch nước ngo&agrave;i. Du kh&aacute;ch đến đ&acirc;y c&oacute; thể t&igrave;m mua mọi loại h&agrave;ng h&oacute;a từ quần &aacute;o, gi&agrave;y d&eacute;p, t&uacute;i x&aacute;ch cho đến đồ điện tử, điện thoại hay c&aacute;c vật dụng h&agrave;ng ng&agrave;y. Mua qu&agrave; lưu niệm d&agrave;nh tặng bạn b&egrave; người th&acirc;n tại chợ đ&ecirc;m Raohe l&agrave; một gợi &yacute; rất tốt d&agrave;nh cho du kh&aacute;ch. Những m&oacute;n h&agrave;ng thủ c&ocirc;ng được l&agrave;m từ tre gỗ, khăn tay th&ecirc;u tinh xảo hay những m&oacute;n đồ li&ecirc;n quan đến Phật gi&aacute;o đều l&agrave; sản phẩm đặc trưng của đất nước Đ&agrave;i Loan xinh đẹp.', '5c3b3de012868520c2a8a941441f9a52.jpg', 2, 0, 0, '2018-06-28 14:39:41', 'administrator', '2018-06-28 14:39:41', 'administrator'),
(7, 'bich-son-nham', 'Bích Sơn Nham', '', 'Đ&acirc;y l&agrave; Miếu tổ thờ Th&aacute;nh Vương Khai Chương lớn nhất Đ&agrave;i Loan (Th&aacute;nh vương Khai Chương l&agrave; một trong những t&iacute;n ngưỡng d&acirc;n gian quan trọng khu vực Ph&uacute;c Kiến v&agrave; Đ&agrave;i Loan). Kh&ocirc;ng chỉ được x&acirc;y dựng bề thế m&agrave;&nbsp; mỗi chi tiết trong miếu đều được đi&ecirc;u khắc tỉ mỉ, c&ocirc;ng phu.', 'e366eed2878908a3ec70335a3bdf1cbd.jpg', 3, 0, 0, '2018-06-28 14:40:39', 'administrator', '2018-06-28 14:40:39', 'administrator'),
(8, 'trung-dai-thien-tu', 'Trung Đài Thiền Tự', '', 'Đ&acirc;y l&agrave; ng&ocirc;i Thiền tọa lạc tại thị trấn Phổ L&yacute; huyện Nam Đầu, Đ&agrave;i Loan. Trung Đ&agrave;i Thiền Tự gồm c&oacute; 16 tầng kh&aacute;c nhau v&agrave; 3 khu vườn', '65ba5da4b1f2e203b9e9500a2f0cf3e3.jpg', 4, 0, 0, '2018-06-28 14:41:41', 'administrator', '2018-06-28 14:41:41', 'administrator'),
(9, 'ho-nhat-nguyet', 'Hồ Nhật Nguyệt', '', 'Hồ Nhật Nguyệt (Sun Moon Lake) - hồ nằm tại độ cao hơn 700m so với mực nước biển, xung quanh l&agrave; trập tr&ugrave;ng n&uacute;i non, phong cảnh hữu t&igrave;nh.&nbsp;', '0c63a8a7efe1af975d2c8b274dffd3d1.jpg', 4, 0, 0, '2018-06-28 14:44:15', 'administrator', '2018-06-28 14:44:15', 'administrator'),
(10, 'chua-huyen-trang', 'Chùa Huyền Trang', '', 'Đ&acirc;y l&agrave; ng&ocirc;i ch&ugrave;a nằm s&aacute;t ngay hồ Nhật Nguyệt, l&agrave; nơi lưu giữ x&aacute; lợi đỉnh đầu của Đường Tam Tạng ph&aacute;p sư Huyền Trang', '6d0361f0ace10a1d15b1e69f59853200.jpg', 4, 0, 0, '2018-06-28 14:45:05', 'administrator', '2018-06-28 14:45:05', 'administrator'),
(11, 'phat-quang-son', 'Phật Quang Sơn', '', 'Đ&acirc;y l&agrave; ng&ocirc;i ch&ugrave;a nổi tiếng nhất Cao H&ugrave;ng với tượng Phật ngo&agrave;i trời cao 36m, c&ugrave;ng với quần thể hơn 480 tượng Phật nhỏ chung quanh.Với kiến tr&uacute;c cực k&igrave; h&ugrave;ng vĩ v&agrave; ấn tượng v&agrave; l&agrave; nơi thiết lập trường Đại học Phật gi&aacute;o tại Đ&agrave;i Loan, Phật Quang Sơn được mệnh danh l&agrave; &ldquo;kinh đ&ocirc; Phật gi&aacute;o Đ&agrave;i Nam&rdquo;.', '9a15bb4b8c7ddf84e5d2cb7605adcbe5.jpg', 1, 0, 0, '2018-06-28 14:46:16', 'administrator', '2018-06-28 14:46:16', 'administrator'),
(12, 'thap-long-ho', 'Tháp Long Hổ', '', 'Th&aacute;p Long Hổ l&agrave; một trong những ng&ocirc;i ch&ugrave;a c&oacute; kiến tr&uacute;c đẹp nhất ở Đ&agrave;i Loan. Ng&ocirc;i ch&ugrave;a c&oacute; hai t&ograve;a th&aacute;p ch&iacute;nh l&agrave; th&aacute;p Long v&agrave; th&aacute;p Hổ, mỗi th&aacute;p cao 7 tầng, cửa ra v&agrave;o được thiết kế độc đ&aacute;o với một b&ecirc;n l&agrave; Rồng, một b&ecirc;n l&agrave; Hổ với ngụ &yacute; v&agrave;o Rồng ra Hổ tượng trưng cho c&aacute;t tường, thịnh vượng v&agrave; may mắn.', '9e473faf10452703a2cfdfbb2f311bec.jpg', 1, 0, 0, '2018-06-28 14:51:38', 'administrator', '2018-06-28 14:51:38', 'administrator'),
(13, 'quan-lan', 'Quan Lạn', '', 'Quan Lạn l&agrave; một h&ograve;n đảo xinh đẹp thuộc tỉnh Quảng Ninh, miền đất biển c&oacute; kh&aacute; nhiều thắng cảnh đẹp. Đến với Quan Lạn bạn sẽ được thả m&igrave;nh tr&ecirc;n những b&atilde;i biển c&aacute;t trắng trải d&agrave;i. Lặng lẽ cảm nhận hương vị của biển, dời xa sự x&ocirc; bồ của th&agrave;nh thị.&nbsp;', '08b58b949e10422ddc94b2e00b2f2cd3.jpg', 6, 0, 0, '2018-06-28 15:14:18', 'administrator', '2018-06-28 15:14:18', 'administrator'),
(14, 'dinh-chua-quan-lan', 'Đình, Chùa Quan Lạn', '', '- Đ&igrave;nh Quan Lạn được x&acirc;y dựng v&agrave;o những năm 1890-1900. Đ&igrave;nh c&ograve;n cất giữ được 18 sắc phong từ đời vua Thiệu Trị năm thứ nhất (1841) đến đời Bảo Đại, đ&igrave;nh Quan Lạn thờ th&agrave;nh ho&agrave;ng l&agrave;ng, c&aacute;c vị ti&ecirc;n c&ocirc;ng c&oacute; c&ocirc;ng quai đ&ecirc; lập ấp dựng l&agrave;ng, sau đ&oacute; phối thờ tướng Trần Kh&aacute;nh Dư - người c&oacute; c&ocirc;ng lớn trong trận đ&aacute;nh thuyền lương giặc Nguy&ecirc;n M&ocirc;ng v&agrave; gắn b&oacute; với v&ugrave;ng đảo n&agrave;y. <br />- Ch&ugrave;a Quan Lạn: thờ Phật v&agrave; b&agrave; ch&uacute;a Liễu Hạnh &ndash; Th&aacute;nh nữ duy nhất trong Tứ th&aacute;nh bất tử của t&iacute;n ngưỡng người Việt. <br />- Miếu, ngh&egrave; Quan Lạn:&nbsp; hờ ba anh em họ Phạm gồm Phạm C&ocirc;ng Ch&iacute;nh, Phạm Qu&yacute; C&ocirc;ng v&agrave; Phạm Thuần Dụng. Theo bia đ&aacute; tại đ&acirc;y khắc ghi, ba vị tướng n&agrave;y l&agrave; người Quan Lạn. Ba tướng đ&atilde; lập c&ocirc;ng lớn trong ba lần chống giặc Nguy&ecirc;n M&ocirc;ng (1258-1285-1288).<br />&nbsp;- Đền thờ Trần Kh&aacute;nh Dư: C&aacute;ch hệ thống ch&ugrave;a Quan Lạn khoảng 1,5km l&agrave; đền thờ Trần Kh&aacute;nh Dư, một vị danh tướng nh&agrave; Trần đ&atilde; c&oacute; c&ocirc;ng lớn trong cuộc chiến chống qu&acirc;n x&acirc;m lược Nguy&ecirc;n M&ocirc;ng. Năm 2010, ng&ocirc;i đền n&agrave;y đ&atilde; được tr&ugrave;ng tu, t&ocirc;n tạo lại, l&agrave; điểm di t&iacute;ch lịch sử nằm trong cụm di t&iacute;ch quốc gia tại x&atilde; Quan Lạn.', 'b372f28cc592ced628015142a12d4fdd.jpg', 6, 0, 0, '2018-06-28 15:16:04', 'administrator', '2018-06-28 15:16:04', 'administrator'),
(15, 'bai-bien-minh-chau', 'Bãi biển Minh Châu', '', 'L&agrave; b&atilde;i biển được nhiều du kh&aacute;ch y&ecirc;u th&iacute;ch nhất bởi b&atilde;i c&aacute;t phẳng tuyệt đep, nước biển trong vắt, cảnh quan đẹp mắt.&nbsp;', '48490cb9b9db35a89e63ada990aa9e05.jpg', 6, 0, 0, '2018-06-28 15:16:58', 'administrator', '2018-06-28 15:16:58', 'administrator'),
(16, 'vung-chua-dao-yen', 'Vũng Chùa Đảo Yến', '', 'Vũng Ch&ugrave;a &ndash; Đảo Yến nằm c&aacute;ch Đ&egrave;o Ngang 7km về ph&iacute;a nam, thuộc th&ocirc;n Thọ Sơn, x&atilde; Quảng Đ&ocirc;ng, huyện Quảng Trạch (Quảng B&igrave;nh). Nơi an nghỉ cuối c&ugrave;ng của Đại tướng V&otilde; Nguy&ecirc;n Gi&aacute;p ch&iacute;nh l&agrave; ngọn n&uacute;i Thọ, mũi Rồng ở v&ugrave;ng biển Vũng Ch&ugrave;a &ndash; Đảo Yến thuộc d&atilde;y Ho&agrave;nh Sơn đ&acirc;m ngang ra biển.', '8bf4d32d7bc83b84b8c2662fbc98e48a.jpg', 7, 0, 0, '2018-06-28 15:26:41', 'administrator', '2018-06-28 15:26:41', 'administrator'),
(17, 'bai-bien-da-nhay', 'Bãi biển đá nhảy', '', 'B&atilde;i Biển Lạ Kỳ Như Ch&iacute;nh T&ecirc;n Gọi Của N&oacute;. B&atilde;i biển Đ&aacute; Nhảy l&agrave; một trong hai b&atilde;i biển đẹp nhất ở Quảng B&igrave;nh với tr&ugrave;ng điệp d&atilde;y n&uacute;i đ&aacute; bị nước biển b&agrave;o m&ograve;n theo năm th&aacute;ng nh&ocirc; ra mặt biển với đủ mọi h&igrave;nh d&aacute;ng phong ph&uacute;, bắt mắt, xứng đ&aacute;ng l&agrave; một tuyệt t&aacute;c đi&ecirc;u khắc kỳ vỹ của tự nhi&ecirc;n.', '8930aaddb1be38c3dfc945b75a79514f.jpg', 7, 0, 0, '2018-06-28 15:27:33', 'administrator', '2018-06-28 15:27:33', 'administrator'),
(18, 'con-cat-quang-phu', 'Cồn cắt Quang Phú', '', 'C&aacute;ch trung t&acirc;m th&agrave;nh phố Đồng Hới khoảng 8km, gi&aacute;p ranh với x&atilde; Nh&acirc;n Trạch (huyện Bố Trạch), tỉnh Quảng B&igrave;nh. Đồi c&aacute;t nơi đ&acirc;y c&ograve;n giữ được vẻ đẹp hoang sơ, chưa chịu qu&aacute; nhiều t&aacute;c động từ hoạt động của con người. Tr&ecirc;n dải c&aacute;t trắng mịn bao la điểm nhấn những bụi c&acirc;y xanh mướt với sức sống m&atilde;nh liệt, chịu đựng nắng gi&oacute; của cồn c&aacute;t để sinh tồn. Những v&acirc;n c&aacute;t ở đ&acirc;y thay đổi h&igrave;nh dạng li&ecirc;n tục do chịu t&aacute;c động của gi&oacute; biển, của kh&iacute; hậu l&agrave;m cho du kh&aacute;ch mỗi lần đặt ch&acirc;n đến đ&acirc;y đều cảm thấy mới lạ v&agrave; th&uacute; vị.', '21591d133940401adc36e969e3e32cfb.jpg', 7, 0, 0, '2018-06-28 15:28:25', 'administrator', '2018-06-28 15:28:25', 'administrator'),
(19, 'dong-phong-nha', 'Động Phong Nha', '', 'Động Phong Nha- &ldquo;Nam thi&ecirc;n đệ nhất động&rdquo;, được UNESCO c&ocirc;ng nhận l&agrave; di sản thi&ecirc;n nhi&ecirc;n thế giới, nơi đ&acirc;y cuốn h&uacute;t bởi cảnh n&uacute;i non h&ugrave;ng vĩ, s&ocirc;ng nước hữu t&igrave;nh v&agrave; cảnh tr&iacute; trong động như say m&ecirc; l&ograve;ng người. Phong Nha, c&ograve;n được gọi bằng c&aacute;i t&ecirc;n n&ocirc;m na nhưng đầy thi vị &ldquo;gi&oacute; luồn qua kẽ răng&rdquo;, kh&ocirc;ng chỉ giữ nguy&ecirc;n được vẻ nguy&ecirc;n sơ m&agrave; hệ thống thạch nhũ nơi đ&acirc;y khiến bất cứ du kh&aacute;ch n&agrave;o đặt ch&acirc;n đến cũng phải trầm trồ th&aacute;n phục.&nbsp;', 'e7c95a7e46634575cb028d856f27f972.jpg', 7, 0, 0, '2018-06-28 15:29:51', 'administrator', '2018-06-28 15:29:51', 'administrator'),
(20, 'song-chay-hang-toi', 'Sông Chày Hang tối', '', 'S&ocirc;ng Ch&agrave;y Hang Tối thuộc Di sản thi&ecirc;n nhi&ecirc;n thế giới Vườn quốc gia Phong Nha &ndash; Kẻ B&agrave;ng, c&aacute;ch TP. Đồng Hới khoảng 50km về ph&iacute;a t&acirc;y bắc theo quốc lộ 15. Đ&acirc;y được coi l&agrave; tuyến du lịch sinh th&aacute;i&nbsp; hấp dẫn với loại h&igrave;nh du lịch mới qu&yacute; kh&aacute;ch c&oacute; thể tham gia đu d&acirc;y tr&ecirc;n kh&ocirc;ng tắm s&ocirc;ng hay đu d&acirc;y tới Hang Tối, ch&egrave;o thuyền kayak ngắm cảnh thi&ecirc;n nhi&ecirc;n tươi đẹp, tận hưởng những ph&uacute;t gi&acirc;y thư gi&atilde;n thoải m&aacute;i khi đắm m&igrave;nh v&agrave;o thế giới tự nhi&ecirc;n, thưởng thức c&aacute;c m&oacute;n ăn truyền thống mang đậm chất của người d&acirc;n địa phương.', '0c385f0eeb6ecbd9e5d871931dd29c17.jpg', 7, 0, 0, '2018-06-28 15:30:37', 'administrator', '2018-06-28 15:30:37', 'administrator'),
(21, 'dong-thien-duong', 'Động Thiên Đường', '', 'Động Thi&ecirc;n Đường được mệnh danh l&agrave; ho&agrave;ng cung trong l&ograve;ng đất v&agrave; l&agrave; hang động kh&ocirc; lớn nhất Ch&acirc;u &Aacute;. Với vẻ đẹp huyền ảo tr&aacute;ng lệ, hệ thống &aacute;nh s&aacute;ng hợp l&yacute; nhưng kh&ocirc;ng l&agrave;m mất đi vẻ tự nhi&ecirc;n của hang động sẽ đưa qu&yacute; kh&aacute;ch chi&ecirc;m ngưỡng hệ thống thạch nhũ nhiều h&igrave;nh th&ugrave; như : Cung Quần Ti&ecirc;n Hội Tụ, Kỳ Hươu, Th&aacute;p Li&ecirc;n hoa, Phạt B&agrave; Quan &Acirc;m, Voi Ma M&uacute;t, Nh&agrave; R&ocirc;ng T&acirc;y Nguy&ecirc;n...', 'a6fdf3c2523f7971aea050ae4bc8c31c.jpg', 7, 0, 0, '2018-06-28 15:31:30', 'administrator', '2018-06-28 15:31:30', 'administrator'),
(22, 'suoi-nuoc-mooc', 'Suối Nước Moọc', '', 'Nằm gần danh thắng Phong Nha - Kẻ B&agrave;ng, suối Nước Moọc c&oacute; phong cảnh thi&ecirc;n nhi&ecirc;n rực rỡ c&ugrave;ng với hệ sinh th&aacute;i đa dạng, đi k&egrave;m l&agrave; những trải nghiệm hấp dẫn. C&ugrave;ng nhảy &ugrave;m v&agrave;o d&ograve;ng suối m&aacute;t lạnh, ch&egrave;o thuyền kayak hay ng&acirc;m m&igrave;nh trong d&ograve;ng suối&hellip;Với d&ograve;ng nước xanh biếc như ngọc uốn lượn giữa n&uacute;i rừng Phong Nha, xung quanh l&agrave; c&aacute;c l&egrave;n n&uacute;i đ&aacute; v&ocirc;i cao v&uacute;t xanh ng&uacute;t trời m&acirc;y, qu&yacute; kh&aacute;ch tha hồ thưởng ngoạn, chụp h&igrave;nh lưu niệm với thi&ecirc;n nhi&ecirc;n v&ocirc; c&ugrave;ng h&ugrave;ng vỹ, như chốn bồng lai ti&ecirc;n cảnh dưới hạ giới.', '29dbe0be1ec4d92c315f78f5979f8fca.jpg', 7, 0, 0, '2018-06-28 15:32:26', 'administrator', '2018-06-28 15:32:26', 'administrator'),
(23, 'quang-binh-quan', 'Quảng Bình Quan', '', 'Quảng B&igrave;nh Quan - c&ocirc;ng tr&igrave;nh kiến tr&uacute;c lịch sử v&agrave; l&agrave; biểu tượng của Quảng B&igrave;nh, nơi ghi dấu về một thời lịch sử của d&acirc;n tộc, với hệ thống th&agrave;nh lũy cổ bảo vệ kinh đ&ocirc; Ph&uacute; Xu&acirc;n, đ&acirc;y l&agrave; nơi mang đến cho du kh&aacute;ch những kh&aacute;m ph&aacute;, cảm nhận về một thời xa xưa, b&igrave;nh y&ecirc;n v&agrave; ho&agrave;i cổ.', '5a8a1a4434f28f492e3be6ce179ad907.jpg', 7, 0, 0, '2018-06-28 15:33:10', 'administrator', '2018-06-28 15:33:10', 'administrator'),
(24, 'truong-dai-me-suot', 'Trượng Đài mẹ suốt', '', 'Đ&acirc;y l&agrave; một trong những tượng đ&agrave;i được x&acirc;y dựng ở Quảng B&igrave;nh để tưởng nhớ đến người mẹ d&acirc;n tộc - mẹ Nguyễn Thị Suốt, người đ&atilde; từng được đi v&agrave;o lịch sử bằng c&aacute;c b&agrave;i thơ, văn của nhiều nh&agrave; thơ, nh&agrave; văn. H&igrave;nh ảnh tượng đ&agrave;i mẹ Suốt uy nghi&ecirc;m, anh h&ugrave;ng l&agrave; một địa điểm du lịch nổi tiếng ở Quảng B&igrave;nh.&nbsp;', '13e5da1f9707e651710197a6404682f7.jpg', 7, 0, 0, '2018-06-28 15:33:56', 'administrator', '2018-06-28 15:33:56', 'administrator'),
(25, 'cho-dong-hoi', 'Chợ Đồng Hới', '', '', '3e597f8c8e558d9ed7836e5ecab3541c.jpg', 7, 1, 0, '2018-06-28 15:35:26', 'administrator', '2018-06-28 15:35:26', 'administrator'),
(26, 'dong-quan-thanh-chan-dai-tu', 'Đông Quan Thanh Chân Đại Tự', '', 'Đ&acirc;y l&agrave; ng&ocirc;i đền Hồi gi&aacute;o nổi tiếng v&agrave; l&acirc;u đời nhất tỉnh T&acirc;y Ninh', 'c98b5e57735700d04a86ff0c16045837.jpg', 8, 0, 0, '2018-06-28 15:55:34', 'administrator', '2018-06-28 15:55:34', 'administrator'),
(27, 'tau-hoa-tay-ninh-len-tay-tang', 'Tàu Hỏa Tây Ninh lên Tây Tạng', '', 'Chuyến t&agrave;u T&acirc;y Ninh l&ecirc;n thủ phủ T&acirc;y Tạng l&agrave; chuyến t&agrave;u đẹp nhất tr&ecirc;n thế giới c&ugrave;ng với bao danh hiệu: chuyến t&agrave;u cao nhất thế giới, ga t&agrave;u hỏa cao nhất thế giới, đường hầm cao v&agrave; d&agrave;i nhất tr&ecirc;n thế giới xuy&ecirc;n qua n&uacute;i băng vĩnh cửu&hellip; thiết kế điều kiện an to&agrave;n tr&ecirc;n t&agrave;u đ&ograve;i hỏi tương tự tr&ecirc;n m&aacute;y bay để chịu được cũng như bảo vệ h&agrave;nh kh&aacute;ch ở độ cao đặc biệt, với điểm cao nhất của cung đường l&ecirc;n tới 5.072 m&eacute;t so với mặt nước biển. Kh&ocirc;ng kh&iacute; b&ecirc;n trong được điều h&ograve;a tự động, cung cấp dưỡng kh&iacute; cho h&agrave;nh kh&aacute;ch.', '9be26f5984d4b3f701f9f19d8c5ba458.jpg', 8, 0, 0, '2018-06-28 15:56:46', 'administrator', '2018-06-28 15:56:46', 'administrator'),
(28, 'cung-dien-potala', 'Cung điện Potala', '', 'Chuyến t&agrave;u T&acirc;y Ninh l&ecirc;n thủ phủ T&acirc;y Tạng l&agrave; chuyến t&agrave;u đẹp nhất tr&ecirc;n thế giới c&ugrave;ng với bao danh hiệu: chuyến t&agrave;u cao nhất thế giới, ga t&agrave;u hỏa cao nhất thế giới, đường hầm cao v&agrave; d&agrave;i nhất tr&ecirc;n thế giới xuy&ecirc;n qua n&uacute;i băng vĩnh cửu&hellip; thiết kế điều kiện an to&agrave;n tr&ecirc;n t&agrave;u đ&ograve;i hỏi tương tự tr&ecirc;n m&aacute;y bay để chịu được cũng như bảo vệ h&agrave;nh kh&aacute;ch ở độ cao đặc biệt, với điểm cao nhất của cung đường l&ecirc;n tới 5.072 m&eacute;t so với mặt nước biển. Kh&ocirc;ng kh&iacute; b&ecirc;n trong được điều h&ograve;a tự động, cung cấp dưỡng kh&iacute; cho h&agrave;nh kh&aacute;ch.', '8b5a9a618960a36e91771397ced4a55b.jpg', 8, 0, 0, '2018-06-28 15:57:21', 'administrator', '2018-06-28 15:57:21', 'administrator'),
(29, 'chua-dai-chieu', 'Chùa Đại Chiêu', '', 'Đ&acirc;y l&agrave; một trong những ng&ocirc;i ch&ugrave;a linh thi&ecirc;ng nhất với Phật gi&aacute;o T&acirc;y Tạng &ndash; nơi thờ th&acirc;n tượng đức Th&iacute;ch Ca 12 tuổi', '8cd94deaca1bf1f4239d244c668e7d73.jpg', 8, 0, 0, '2018-06-28 15:59:35', 'administrator', '2018-06-28 15:59:35', 'administrator'),
(30, 'tu-vien-drepung', 'Tu viện Drepung', '', 'L&agrave; tu viện hơn 600 năm tuổi linh thi&ecirc;ng bậc nhất T&acirc;y Tạng, từng l&agrave; một trong ba tu viện lớn c&oacute; tầm ảnh hưởng rộng nhất tr&ecirc;n đất T&acirc;y Tạng với hơn 10000 nh&agrave; sư tu học.', 'acb6847521a3cba01fcb92a3e420d48e.jpg', 8, 0, 0, '2018-06-28 16:01:23', 'administrator', '2018-06-28 16:01:23', 'administrator'),
(31, 'norbulingka', 'Norbulingka', '', 'Norbulingka l&agrave; cung điện để c&aacute;c Đức Đại Lai Lạt Ma l&agrave;m việc v&agrave;o m&ugrave;a h&egrave;, x&acirc;y dựng v&agrave;o năm 1751, nơi đ&acirc;y mang đậm cấu tr&uacute;c vườn hoa điển h&igrave;nh của T&acirc;y Tạng. Norbulingka bắt đầu được sử dụng từ đời Đức Đạt Lai Lạt Ma thứ 7, v&agrave; hiện l&agrave; vườn hoa lớn nhất ở T&acirc;y Tạng.', 'a423c7e5d69f1ffb2992b5e41f89279e.jpg', 8, 0, 0, '2018-06-28 16:02:22', 'administrator', '2018-06-28 16:02:22', 'administrator'),
(32, 'tu-vien-sera', 'Tu viện Sera', '', 'L&agrave; một trong ba tu viện lớn của T&acirc;y Tạng được th&agrave;nh lập v&agrave;o năm 1419, đại diện cho d&ograve;ng Gelugpa &ndash; ph&aacute;i C&aacute;ch Lỗ. Tu viện gồm c&oacute; hai đại học độc lập Sera Je v&agrave; Sera Mey, v&agrave; trường Mật t&ocirc;ng Ngagpa Dratsang.', '8a627d609675e8052d650301bfc31aa1.jpg', 8, 0, 0, '2018-06-28 16:04:39', 'administrator', '2018-06-28 16:04:39', 'administrator'),
(33, 'thanh-ho-yamdrok', 'Thánh hồ Yamdrok', '', 'Hồ Yamdrok c&ograve;n được gọi với c&aacute;i t&ecirc;n kh&aacute;c l&agrave; Hồ San h&ocirc; (Coral Lake) nằm c&aacute;ch thủ phủ Lhasa của Khu tự trị T&acirc;y Tạng khoảng hơn 100 km. Nằm ở độ cao 4.441m, Yamdrok được coi l&agrave; một trong bốn hồ nước thi&ecirc;ng nhất tại T&acirc;y Tạng (ba hồ kh&aacute;c l&agrave; Lhamo Latso, Namtso v&agrave; Manasarovar). \"Yamdrok\" trong ti&ecirc;́ng Tạng có nghĩa là h&ocirc;̀ thi&ecirc;n nga. Tương truyền thánh h&ocirc;̀ này là hóa th&acirc;n của Long nữ - nữ th&acirc;̀n bảo h&ocirc;̣ cho người d&acirc;n T&acirc;y Tạng. N&ecirc;́u ai tới Thánh hồ Yamdrok thành t&acirc;m cầu nguy&ecirc;̣n và chạm tay vào nước Thánh h&ocirc;̀ sẽ đươc ti&ecirc;u trừ nghi&ecirc;̣p chướng từ nhi&ecirc;̀u đời nhi&ecirc;̀u khi&ecirc;́p. N&ecirc;́u ai thành t&acirc;m c&acirc;̀u nguy&ecirc;̣n và cúng dường 01 đồng xu xu&ocirc;́ng Thánh h&ocirc;̀ thì kh&ocirc;ng m&acirc;́y l&acirc;u lại có tịnh tài và nh&acirc;n duy&ecirc;n trở v&ecirc;̀ tham quan T&acirc;y Tạng l&acirc;̀n nữa.', '77dd4a3c336dc4f84b73632817fd18ef.jpg', 8, 0, 0, '2018-06-28 16:06:23', 'administrator', '2018-06-28 16:06:23', 'administrator'),
(34, 'tu-vien-palkhor', 'Tu viện Palkhor', '', 'L&agrave; một tu viện nổi tiếng v&igrave; đ&acirc;y l&agrave; nơi tu h&agrave;nh của 3 hệ ph&aacute;i Phật gi&aacute;o kh&aacute;c nhau bao gồm: ph&aacute;i Sakyapa, Kadampa v&agrave; Gelugpa. C&aacute;c hệ ph&aacute;i n&agrave;y c&ugrave;ng chia sẻ một ch&aacute;nh điện v&agrave; c&aacute;c ph&ograve;ng nghi&ecirc;n cứu Phật gi&aacute;o.', 'd57eb72b5d249e7f61732c4d336e8e6e.jpg', 8, 0, 0, '2018-06-28 16:07:31', 'administrator', '2018-06-28 16:07:31', 'administrator'),
(35, 'tu-vien-kumbum', 'Tu viện Kumbum', '', 'Tu viện KumBum l&agrave; một trong số s&aacute;u tu viện lớn của d&ograve;ng truyền thừa C&aacute;ch lỗ &ndash; Gelukpa ( 5 tu viện lớn kh&aacute;c l&agrave; Ganden, Drepung, Sera, Tashillunpo v&agrave; Labrang). Tu viện KumBum l&agrave; nơi Đạo sư T&ocirc;ng -kh&aacute;ch -ba (Tsongkhapa), người s&aacute;ng lập ra d&ograve;ng truyền thừa Gelukpa sinh ra v&agrave; lớn l&ecirc;n. Đạo sư T&ocirc;ng -kh&aacute;ch -ba l&agrave; vị l&atilde;nh tụ tinh thần tối cao của d&ograve;ng Gelukpa v&agrave; l&agrave; vị Ganden Tripa đầu ti&ecirc;n ( danh vị của l&atilde;nh tụ tinh thần của trường ph&aacute;i Geluk). Hai học tr&ograve; xuất sắc của Ng&agrave;i l&agrave; Đạt lai Lạt ma v&agrave; Ban thiền Lạt ma l&agrave; hai người l&atilde;nh đạo ch&iacute;nh của d&ograve;ng Mũ v&agrave;ng của Phật gi&aacute;o T&acirc;y tạng.', 'dd01894983d7ae0d8fc6b08fe317e6c9.jpg', 8, 0, 0, '2018-06-28 16:08:20', 'administrator', '2018-06-28 16:08:20', 'administrator'),
(36, 'tu-vien-tashilhunpo', 'Tu viện Tashilhunpo ', '', 'Tu viện của c&aacute;c đời Phật sống Ban Thiền cũng l&agrave; một trong 4 đại tu viện lớn nhất v&agrave; đẹp nhất T&acirc;y Tạng.', '89950f53e76d394316b279885481cd06.jpg', 8, 0, 0, '2018-06-28 16:09:02', 'administrator', '2018-06-28 16:09:02', 'administrator'),
(37, 'truong-gia-gioi', 'Trương Gia Giới', '', 'Trương Gia Giới nằm ở T&acirc;y Bắc tỉnh Hồ Nam &ndash; Trung Quốc, được tạo h&oacute;a ban tặng cảnh sắc thi&ecirc;n nhi&ecirc;n h&ugrave;ng vĩ với hơn 3.000 cột đ&aacute; h&igrave;nh th&ugrave; thi&ecirc;n biến vạn h&oacute;a. Kh&ocirc;ng chỉ vậy ở Trương Gia Giới c&ograve;n c&oacute; thị trấn cổ Phượng Ho&agrave;ng với 1.300 năm tuổi lưu giữ rất nhiều n&eacute;t gi&aacute; trị văn h&oacute;a của người Trung Hoa. Nằm cạnh con s&ocirc;ng Đ&agrave; Giang xinh đẹp, thơ mộng Trương Gia Giới &ndash; Phượng Ho&agrave;ng Trấn đang trở th&agrave;nh địa điểm du lịch phượt hấp dẫn với rất nhiều bạn trẻ.', 'bc2716f0367e2e9fc38c45b3fadd2faf.jpg', 5, 0, 0, '2018-06-28 16:31:34', 'administrator', '2018-06-28 16:31:34', 'administrator'),
(38, 'thang-may-bach-long', 'Thang máy Bách Long', '', 'Thang m&aacute;y B&aacute;ch Long hay thang m&aacute;y &ldquo;Trăm Rồng&rdquo;, l&agrave; thang m&aacute;y k&iacute;nh được x&acirc;y dựng b&ecirc;n cạnh một n&uacute;i đ&aacute; sa thạch anh nằm ở khu tham quan Ngũ Lăng thuộc tỉnh Hồ Nam. <br />Tr&ecirc;n đỉnh l&agrave; cảnh quan tuyệt đẹp c&ugrave;ng với một c&aacute;i nh&igrave;n to&agrave;n cảnh C&ocirc;ng vi&ecirc;n Quốc gia Trương Gia Giới &ndash; một di sản thế giới.&nbsp;', '44f48b2f69c5617ef64a71aaecf06419.jpg', 5, 0, 0, '2018-06-28 16:32:54', 'administrator', '2018-06-28 16:32:54', 'administrator'),
(39, 'thien-ha-de-nhat-kieu', 'Thiên Hạ Đệ Nhất Kiều', '', 'Thi&ecirc;n Hạ Đệ Nhất Kiều &ndash; l&agrave; c&acirc;y cầu đ&aacute; tự nhi&ecirc;n nằm bắc giữa hai ngọn n&uacute;i của khu bảo tồn thi&ecirc;n nhi&ecirc;n quốc gia Trương Gia Giới.', '0882fee36e25d10538984bc7b0d354d4.jpg', 5, 0, 0, '2018-06-28 16:34:06', 'administrator', '2018-06-28 16:34:06', 'administrator'),
(40, 'me-hon-dai', 'Mê Hồn Đài', '', '', '8501d935b8de24d32bfd14412dc5e53b.jpg', 5, 0, 0, '2018-06-28 16:34:57', 'administrator', '2018-06-28 16:34:57', 'administrator'),
(41, 'nui-avatar-hallelujah', 'Núi Avatar Hallelujah', '', 'Đầu năm 2010, một ngọn n&uacute;i mang t&ecirc;n \"Cột trụ trời Nam\" tại Trương Gia Giới được đổi t&ecirc;n th&agrave;nh \"Avatar Hallelujah\", dựa theo bộ phim \"Avatar\" l&uacute;c đ&oacute; đang l&agrave;m mưa l&agrave;m gi&oacute; tr&ecirc;n m&agrave;n ảnh thế giới. Cột trụ cao 1.080 m v&agrave; 3.000 cột đ&aacute; tương tự ở C&ocirc;ng vi&ecirc;n Rừng quốc gia Trương Gia Giới v&agrave; đ&atilde; truyền cảm hứng cho những đỉnh n&uacute;i treo thần kỳ trong bộ phim của đạo diễn James Cameron, sau khi một thợ ảnh Hollywood bỏ thời gian săn l&ugrave;ng ở đ&acirc;y năm 2008.', 'a49989fb2881cd126848d015e23b93a4.jpg', 5, 0, 0, '2018-06-28 16:35:26', 'administrator', '2018-06-28 16:35:26', 'administrator'),
(42, 'phuong-hoang-co-tran', 'Phượng Hoàng cổ trấn', '', 'Phượng Ho&agrave;ng cổ trấn l&agrave; một trấn nhỏ của huyện Phượng Ho&agrave;ng, ph&iacute;a t&acirc;y tỉnh Hồ Nam, Trung Quốc, một nơi m&agrave; ai trong đời cũng ao ước được tới tham quan d&ugrave; chỉ một lần.<br />Ti&ecirc;n cảnh v&agrave; n&eacute;t cổ trang tạo n&ecirc;n một thị trấn đậm n&eacute;t m&agrave; ta chỉ thấy trong những bộ phim kiếm hiệp! Nếu ai chưa một lần đến đ&acirc;y, xem qua ảnh cũng đ&atilde; cho&aacute;ng ngợp, thực sự l&agrave; một vẻ đẹp hớp hồn người.', '841e29a7b7936105a4aa02b57bff7472.jpg', 5, 0, 0, '2018-06-28 16:36:07', 'administrator', '2018-06-28 16:36:07', 'administrator'),
(43, 'dong-da-giang', 'Dòng Đà Giang', '', 'Đ&agrave; Giang gắn liền với vẻ đẹp của Phượng Ho&agrave;ng Cổ Trấn, cũng gắn liền với đời sống sinh hoạt của người d&acirc;n nơi đ&acirc;y. Đi thuyền xu&ocirc;i theo d&ograve;ng s&ocirc;ng, du kh&aacute;ch c&oacute; thể dễ d&agrave;ng nh&igrave;n thấy cảnh những người d&acirc;n nơi đ&acirc;y tắm rửa, giặt giũ, rửa rau, bắt c&aacute; b&ecirc;n bờ s&ocirc;ng. Đ&agrave; Giang trong vắt n&ecirc;n thơ đ&atilde; trở th&agrave;nh một phần kh&ocirc;ng thể thiếu của người d&acirc;n Phượng Ho&agrave;ng Cổ Trấn.', 'ff1282200c2298789fdc11439cb26f5a.jpg', 5, 0, 0, '2018-06-28 16:36:43', 'administrator', '2018-06-28 16:36:43', 'administrator'),
(44, 'phu-dung-tran', 'Phù Dung Trấn', '', 'Ph&ugrave; Dung Trấn được biết đến l&agrave; một trấn cố thuộc ch&acirc;u tự trị d&acirc;n tộc Thổ Mi&ecirc;u huyện YongShun, Tương T&acirc;y, Hồ Nam, Trung Quốc. Bởi c&oacute; d&ograve;ng th&aacute;c h&ugrave;ng vĩ chảy qua n&ecirc;n được gọi l&agrave; &ldquo;cổ trấn ng&agrave;n năm tr&ecirc;n d&ograve;ng th&aacute;c&rdquo;. Th&ecirc;m nữa nơi đ&acirc;y c&ograve;n l&agrave; bối cảnh trong phim &ldquo;Ph&ugrave; Dung Trấn&rdquo; từ đ&oacute; nơi n&agrave;y được gọi l&agrave; Trấn Ph&ugrave; Dung. <br />Ph&ugrave; Dung Trấn - m&ocirc;̣t thị tr&acirc;́n c&ocirc;̉ đã có hơn 2000 năm lịch sử, đ&ecirc;́n thị tr&acirc;́n Phù Dung, dạo bước tr&ecirc;n đường ph&ocirc;́ trải đá xanh sẽ khi&ecirc;́n ta có th&ecirc;̉ từ trong cảnh đẹp mơ màng &acirc;́y tìm th&acirc;́y những nét đ&ocirc;̣c đáo của thị tr&acirc;́n này, những đường ph&ocirc;́, n&ecirc;́p nhà sàn, tường khắc hoa khi &acirc;̉n khi hi&ecirc;̣n, dưới ánh chi&ecirc;̀u tà, nhà cửa trong thị tr&acirc;́n c&ocirc;̉ m&ocirc;̣c mạc nằm rải rác đó đ&acirc;y.', 'c02a5a54b391983cb8e378aa56117bd0.jpg', 5, 0, 0, '2018-06-28 16:38:06', 'administrator', '2018-06-28 16:38:06', 'administrator'),
(45, 'cong-vien-rung-nui-thien-mon-son', 'Công viên rừng núi Thiên Môn Sơn', '', 'Đ&acirc;y l&agrave; ngọn n&uacute;i nổi tiếng với con đường tr&ecirc;n trời v&agrave; hệ thống c&aacute;p treo d&agrave;i 9km tại Thi&ecirc;n M&ocirc;n được tuy&ecirc;n bố trong c&aacute;c ấn phẩm du lịch l&agrave; &ldquo;c&aacute;p treo d&agrave;i nhất tại một ngọn n&uacute;i cao nhất tr&ecirc;n thế giới&rdquo;.', 'ad728dd7bcf45bbcd021d5db290c4fbd.jpg', 5, 0, 0, '2018-06-28 16:39:00', 'administrator', '2018-06-28 16:39:00', 'administrator'),
(46, 'san-dao-quy-coc', 'Sạn đạo quỷ cốc', '', '', 'b2f0de20d972ab5cec4dbda25d756d50.jpg', 5, 0, 0, '2018-06-28 16:39:38', 'administrator', '2018-06-28 16:39:38', 'administrator'),
(47, 'skywalk', 'Skywalk', '', 'Con đường tr&ecirc;n trời l&agrave;m từ những tấm k&iacute;nh trong suốt, d&agrave;y hơn 6cm. Skywalk đ&atilde; trở th&agrave;nh một trong những điểm thu h&uacute;t kh&aacute;ch du lịch hấp dẫn nhất tại Trương Gia Giới.', 'b3cd5e8ba0de7ebbf496c424ff31bef0.jpg', 5, 0, 0, '2018-06-28 16:40:06', 'administrator', '2018-06-28 16:40:06', 'administrator'),
(48, 'vuon-thu-sriracha-tiger-zoo', 'Vườn thú Sriracha Tiger Zoo', '', 'Đ&acirc;y l&agrave; nơi nu&ocirc;i dưỡng hơn 400 con hổ thuộc giống Bengal c&ugrave;ng với voi v&agrave; nhiều lo&agrave;i động vật đến từ nhiều v&ugrave;ng tr&ecirc;n thế giới. Đến với vườn th&uacute; Sriracha Tiger Zoo qu&yacute; kh&aacute;ch c&oacute; thể tận mắt nh&igrave;n thấy những lo&agrave;i th&uacute; hoang d&atilde; v&agrave; qu&yacute; hiếm, kh&ocirc;ng chỉ tham quan c&aacute;c con vật hoang d&atilde; m&agrave; qu&yacute; kh&aacute;ch c&ograve;n được tận mắt xem những con th&uacute; th&ocirc;ng minh biển diễn c&aacute;c m&agrave;n tr&igrave;nh diễn đầy cuống h&uacute;t', '346e0a2d79d80b815a12acb04f509188.jpg', 9, 0, 0, '2018-06-28 16:52:00', 'administrator', '2018-06-28 16:52:00', 'administrator'),
(49, 'dao-san-ho-coral', 'Đảo san hô Coral', '', 'Nằm c&aacute;ch th&agrave;nh phố Pattaya khoảng hơn 30&prime; đi bằng cano, Đảo san h&ocirc; Coral nổi tiếng sự đa dạng của san h&ocirc; v&agrave; sinh vật biển. Kh&aacute;c hẳn với kh&ocirc;ng kh&iacute; phồn hoa tấp nập của Pattaya, tại đ&acirc;y Du kh&aacute;ch c&oacute; thể ho&agrave; m&igrave;nh v&agrave;o kh&ocirc;ng kh&iacute; m&aacute;t lạnh của một v&ugrave;ng biển đảo, thoả sức kh&aacute;m ph&aacute; sự th&uacute; vị của c&aacute;c m&ocirc;n thể thao tr&ecirc;n biển v&agrave; lặn xuống s&acirc;u duới đ&aacute;y đại duơng để nh&igrave;n ngắm quần thể san h&ocirc; xinh đẹp tuyệt vời.', 'a7cbbe22614ee2c6f05f06b17d5bb6f0.jpg', 9, 0, 1, '2018-06-28 16:52:43', 'administrator', '2018-06-28 16:52:43', 'administrator'),
(50, 'tran-bao-phat-son', 'Trân Bảo Phật Sơn', '', 'Tr&acirc;n Bảo Phật Sơn hay c&ograve;n gọi l&agrave; Khau Chee Chan, l&agrave; ngọn n&uacute;i nằm ở tỉnh Chon Buri, c&aacute;ch thi&ecirc;n đường biển du lịch Th&aacute;i Lan &ndash; Pattaya khoảng 15 km. Ngọn n&uacute;i c&ograve;n được người d&acirc;n ưu &aacute;i gọi t&ecirc;n n&uacute;i d&aacute;t v&agrave;ng, ch&iacute;nh l&agrave; do bức tượng Phật Th&iacute;ch Ca M&acirc;u Ni đang ngồi thiền được tạc tr&ecirc;n v&aacute;ch n&uacute;i giữa trời. Sự độc đ&aacute;o của bức tượng Phật lớn n&agrave;y l&agrave; được khắc nổi bằng v&agrave;ng r&ograve;ng 24 kara, cao 130 m, rộng hơn 70m, được x&acirc;y dựng v&agrave;o năm 1996, nh&acirc;n dịp Quốc vương RaMa IX trị v&igrave; vương quốc Th&aacute;i Lan được 50 năm', '17fa647ffeb83c274b08231b4087a909.jpg', 9, 0, 0, '2018-06-28 16:53:20', 'administrator', '2018-06-28 16:53:20', 'administrator'),
(51, 'tuong-phat-bon-mat', 'Tượng Phật bốn mặt    ', '', 'Tượng Phật bốn mặt (Tứ Diện Thần) đặt tại đền Erawan, ngay trung t&acirc;m thủ đ&ocirc; Th&aacute;i Lan, được người d&acirc;n nước n&agrave;y n&oacute;i ri&ecirc;ng v&agrave; kh&aacute;ch du lịch n&oacute;i chung rất t&ocirc;n k&iacute;nh. Bất kỳ ai đến đ&acirc;y đều d&acirc;ng hoa v&agrave;ng kết v&ograve;ng mang theo niềm tin để lời nguyện cầu trở th&agrave;nh sự thật. Bởi lẽ, mỗi chi tiết, giai thoại về tượng Phật bốn mặt đều mang những &yacute; nghĩa linh thi&ecirc;ng kh&aacute;c nhau.<br />Theo đ&oacute;, bốn khu&ocirc;n mặt quay ra bốn hướng của Tứ Diện Thần mang &yacute; nghĩa biểu tượng cao qu&yacute; của l&ograve;ng tốt &ndash; nh&acirc;n từ &ndash; cảm th&ocirc;ng &ndash; c&ocirc;ng bằng (Từ, Bi, Hỷ, Xả; t&iacute;nh từ mặt ch&iacute;nh diện theo chiều kim đồng hồ). Mỗi khu&ocirc;n mặt của tượng c&oacute; đầy đủ mắt, tai, mũi, miệng, với tổng thể 8 c&aacute;nh tay, mỗi tay đều cầm một ph&aacute;p kh&iacute; mang &yacute; nghĩa cụ thế ri&ecirc;ng.', '033fdd8a53167723eddd94b235c75a5b.jpg', 9, 0, 0, '2018-06-28 16:53:56', 'administrator', '2018-06-28 16:53:56', 'administrator'),
(52, 'chua-phat-vang', 'Chùa Phật vàng', '', 'Đ&acirc;y l&agrave; một ng&ocirc;i ch&ugrave;a nổi tiếng ở Bangkok với pho tượng Phật ngồi cao 3 m&eacute;t đ&uacute;c bằng v&agrave;ng khối, nặng 5,5 tấn. Tượng được đ&uacute;c theo phong c&aacute;ch Sukhothai tĩnh lặng v&agrave; được kh&aacute;m ph&aacute; một c&aacute;ch t&igrave;nh cờ v&agrave;o thập ni&ecirc;n 1950. Người d&acirc;n địa phương cho rằng bức tượng lớn nhất thế giới n&agrave;y biểu thị cho sự thịnh vượng v&agrave; thuần khiết cũng như sức mạnh v&agrave; quyền năng.', 'c6d43426a07ac8156b628cb344242c13.jpg', 9, 0, 1, '2018-06-28 16:54:36', 'administrator', '2018-06-28 16:54:36', 'administrator'),
(53, 'dao-thuyen-tren-song-chaophaya', 'Dạo thuyền trên sông Chaophaya', '', 'S&ocirc;ng Chao Phraya chảy từ ph&iacute;a Bắc đến ph&iacute;a Nam với chiều d&agrave;i 372 km từ c&aacute;c đồng bằng Trung bộ đến Bangkok v&agrave; vịnh Th&aacute;i Lan. Ngồi tr&ecirc;n thuyền ngắm cảnh, du kh&aacute;ch sẽ c&oacute; một h&igrave;nh dung tương đối r&otilde; về đời sống ở Bangkok, cảm nhận cuộc sống y&ecirc;n b&igrave;nh của khu d&acirc;n cư nằm dọc theo hai b&ecirc;n bờ, nh&igrave;n thấy những ng&ocirc;i nh&agrave; gỗ được dựng tr&ecirc;n mặt nước, cảm nhận được m&ugrave;i vị, h&igrave;nh ảnh v&agrave; ẩm thực của một đời sống thực.', '39d3679883ca2ad289f38e2fd32b511e.jpg', 9, 0, 1, '2018-06-28 16:55:42', 'administrator', '2018-06-28 16:55:42', 'administrator');

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
(7, 15, 'dong-luc-va-su-menh', 'Động lục và sứ mệnh', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như Aldus PageMaker.', '<strong>Lorem Ipsum</strong>&nbsp;chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.', '', 'f98ec0a3ea311a1a2236271d1d2cf7a9.png', '2018-07-06 21:34:47', 'administrator', '2018-07-06 21:34:47', 'administrator', 0, 0),
(10, 15, 've-cong-ty', 'Về công ty', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như Aldus PageMaker.', '<strong>Lorem Ipsum</strong>&nbsp;chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.', '', 'ff92a610c1a0f4b4a4e9ead3ef52bb00.jpg', '2018-07-07 16:39:35', 'administrator', '2018-07-07 16:39:35', 'administrator', 0, 0),
(11, 15, 'dich-vu-nha-nghi', 'Dịch vụ và nhà nghỉ', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như Aldus PageMaker.', '<strong>Lorem Ipsum</strong>&nbsp;chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.', '', '0ac97023b8cd95c9bfc32eccd2e14322.jpg', '2018-07-07 16:39:26', 'administrator', '2018-07-07 16:39:26', 'administrator', 0, 0),
(12, 16, 'dich-vu-may-bay', 'Dịch vụ máy bay', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như Aldus PageMaker.', '<strong>Lorem Ipsum</strong>&nbsp;chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.', '', '5f82d7f29416881454c2250d22d92590.png', '2018-07-02 16:19:18', 'administrator', '2018-07-02 16:19:18', 'administrator', 0, 0),
(13, 19, 'goc-chia-se-3', 'Góc chia sẻ 3', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như Aldus PageMaker.', '<strong>Lorem Ipsum</strong>&nbsp;chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.', '', '5556056b25d203bc36a75255de54c81b.jpg', '2018-07-07 16:34:18', 'administrator', '2018-07-07 16:34:18', 'administrator', 0, 0),
(14, 19, 'goc-chia-se-2', 'Góc chia sẻ 2', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như Aldus PageMaker.', '<strong>Lorem Ipsum</strong>&nbsp;chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.', '', '7246d01afe1193c6597fdfc637aec5cf.jpg', '2018-07-07 16:33:52', 'administrator', '2018-07-07 16:33:52', 'administrator', 0, 0),
(15, 19, 'goc-chia-se-1', 'Góc chia sẻ 1', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như Aldus PageMaker.', '<strong>Lorem Ipsum</strong>&nbsp;chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker. <br /><br /><br /><iframe src=\"https://www.youtube.com/embed/Zr1jAVkYOV4\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe>', '', 'ee71df0cf6e41afba34197645243a304.jpg', '2018-07-14 16:40:11', 'administrator', '2018-07-14 16:40:11', 'administrator', 0, 0),
(17, 15, 'mo-ta-1', 'Mô tả 1', 'Lorem Ipsum chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi được áp dụng vào tin học văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang, như Aldus PageMaker.', '<strong>Lorem Ipsum</strong>&nbsp;chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.', '', '3a3b5935d088938965ab39d5923e9655.jpg', '2018-07-07 16:39:10', 'administrator', '2018-07-07 16:39:10', 'administrator', 0, 0),
(18, 22, 'gioi-thieu-cong-ty', 'GIỚI THIỆU CÔNG TY', 'Sứ mệnh của chúng tôi là trở thành một công ty du lịch năng động với tiêu chí chất lượng dịch vụ được đặt lên trên hết.', '<p><strong>Động lực v&agrave; sứ mệnh</strong></p>\r\n<p>Trong thời đại x&atilde; hội ph&aacute;t triển như hiện nay, khi con người lu&ocirc;n bận rộn với những cạnh tranh, những lo toan cuộc sống h&agrave;ng ng&agrave;y, du lịch trở n&ecirc;n l&agrave; nhu cầu kh&ocirc;ng thể thiếu để c&acirc;n bằng cuộc sống cho mỗi c&aacute; nh&acirc;n, mỗi tập thể. Mặt kh&aacute;c, với đội ngũ hướng dẫn vi&ecirc;n v&agrave; nh&acirc;n vi&ecirc;n điều h&agrave;nh chuy&ecirc;n nghiệp, lu&ocirc;n coi kh&aacute;ch h&agrave;ng l&agrave; trung t&acirc;m, ch&uacute;ng t&ocirc;i tin chắc sẽ l&agrave;m h&agrave;i l&ograve;ng qu&yacute; kh&aacute;ch.</p>\r\n<p>Sứ mệnh của ch&uacute;ng t&ocirc;i l&agrave; trở th&agrave;nh một c&ocirc;ng ty du lịch năng động với ti&ecirc;u ch&iacute; chất lượng dịch vụ được đặt l&ecirc;n tr&ecirc;n hết.</p>\r\n<p><strong>Về c&ocirc;ng ty</strong></p>\r\n<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&ocirc;ng ty cổ phần đầu tư v&agrave; ph&aacute;t triển du lịch Kim Cương</strong>&nbsp;được th&agrave;nh lập th&aacute;ng 6/2017 bởi một đội ngũ s&aacute;ng lập trẻ v&agrave; t&agrave;i năng, những th&agrave;nh vi&ecirc;n c&oacute; bề d&agrave;y kinh nghiệm trong lĩnh vực du lịch với c&aacute;c mảng tour v&agrave; dịch vụ ch&iacute;nh như:</p>\r\n<ul>\r\n<li>Tour du lịch H&agrave;nh hương</li>\r\n<li>Tour du lịch Người cao tuổi</li>\r\n<li>Tour du lịch Vip</li>\r\n<li>Tour phượt, trải nghiệm</li>\r\n<li>Tư vấn thiết kế chương tr&igrave;nh theo y&ecirc;u cầu</li>\r\n<li>Dịch vụ v&eacute; m&aacute;y bay</li>\r\n<li>V&agrave; c&aacute;c dịch vụ lẻ kh&aacute;c (ph&ograve;ng kh&aacute;ch sạn, xe du lịch&hellip;)</li>\r\n</ul>\r\n<p><strong>Điểm kh&aacute;c biệt</strong></p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ch&uacute;ng t&ocirc;i c&ugrave;ng phấn đấu để tạo ra sự kh&aacute;c biệt r&otilde; r&agrave;ng giữa Diamondtour v&agrave; c&aacute;c c&ocirc;ng ty kh&aacute;c ở những điểm:</p>\r\n<ul>\r\n<li>Gi&aacute; cả cạnh tranh.</li>\r\n<li>Chất lượng h&agrave;ng đầu.</li>\r\n<li>Tr&aacute;ch nhiệm, tận t&acirc;m với kh&aacute;ch h&agrave;ng.</li>\r\n</ul>\r\n<p><strong>Lợi &iacute;ch của bạn khi lựa chọn ch&uacute;ng t&ocirc;i</strong></p>\r\n<ul>\r\n<li>C&aacute;c sản phẩm tour với chất lượng dịch vụ cao, chuẩn quốc tế.</li>\r\n<li>Hiệu quả v&agrave; tiết kiệm chi ph&iacute;.</li>\r\n<li>Thoả m&atilde;n mọi nhu cầu của mọi qu&yacute; kh&aacute;ch.</li>\r\n<li><strong>Minh bạch mọi dịch vụ.</strong></li>\r\n</ul>', '', '3c939324a817679b8ad0025718f4e598.jpg', '2018-07-24 07:54:57', 'administrator', '2018-07-24 07:54:57', 'administrator', 0, 0),
(19, 19, 'cung-diamond-tour-tham-quan-kho-tang-bich-hoa-lon-nhat-the-gioi', 'Cùng Diamond Tour tham quan kho tàng bích họa lớn nhất thế giới', 'Trải nghiệm hành trình Đôn Hoàng- Lạc Dương- Tây An cùng với Diamond Tour, điểm đến đầu tiên trong chuyến hành trình chính là “viện bảo tàng trên vách tường của” của Đôn Hoàng- hang Mạc Cao. ', '<p>Hang Mạc Cao Đ&ocirc;n Hoàng là m&ocirc;̣t kho báu ngh&ecirc;̣ thu&acirc;̣t b&iacute;ch họa quy m&ocirc; , với quy m&ocirc; lớn nh&acirc;́t và n&ocirc;̣i dung phong phú nh&acirc;́t trong 4 hang đá lớn của TQ , là sự c&ocirc; đọng ngh&ecirc;̣ thu&acirc;̣t khắc đá của&nbsp; mười m&acirc;́y tri&ecirc;̀u đại trong g&acirc;̀n 1000 năm của TQ , là di chỉ ph&acirc;̣t giáo quy m&ocirc; nh&acirc;́t và được bảo t&ocirc;̀n hoàn chỉnh nh&acirc;́t tr&ecirc;n th&ecirc;́ giới .</p>\r\n<p>Hang Mạc Cao bắt đ&acirc;̀u được khởi c&ocirc;ng vào năm 366 v&agrave; tiếp tục được x&acirc;y dựng trong suốt nhiều triều đại sau đ&oacute;, s&ocirc;́ lượng của các hang kh&ocirc;ng ngừng tăng l&ecirc;n, đ&ecirc;́n th&ecirc;́ kỷ thứ 7 đời nhà Đường, đã có tới hơn m&ocirc;̣t nghìn hang đ&ocirc;̣ng, bởi v&acirc;̣y hang Mạc Cao còn được gọi là &ldquo;Thi&ecirc;n Ph&acirc;̣t đ&ocirc;̣ng&rdquo;.</p>\r\n<p>Truyền thuyết kể lại, c&oacute; một vị H&ograve;a thượng ph&aacute;p danh Lạc T&ocirc;n tr&ocirc;ng thấy tr&ecirc;n đỉnh n&uacute;i c&oacute; ph&aacute;t luồng kim quang l&oacute;a mắt, v&igrave; vậy cho rằng đang c&oacute; thi&ecirc;n thần hiển linh. &Ocirc;ng b&egrave;n khấu đầu b&aacute;i lạy v&agrave; quyết t&acirc;m bắt tay v&agrave;o tạc những bức tượng trong động đ&aacute; tr&ecirc;n n&uacute;i để thờ Phật. Thời gian sau đ&oacute;, số lượng h&ograve;a thượng tới tạc tượng ng&agrave;y một tăng l&ecirc;n. L&uacute;c thịnh thời, hang Mạc Cao c&oacute; hơn 1000 hang Phật lớn nhỏ kh&aacute;c nhau, nay chỉ c&ograve;n 492 hang, trong mỗi hang đều c&oacute; tượng Phật đục trong đ&aacute; v&agrave; b&iacute;ch họa vẽ tr&ecirc;n v&aacute;ch đ&aacute;. Hiện nay chỉ c&ograve;n 30 hang mở cửa đ&oacute;n kh&aacute;ch tham quan. Tượng Phật lớn nhất l&agrave; tượng Phật Di Lặc, cao 35,5m. Tinh tế nhất l&agrave; 5 bức tượng trong hang số 328 gồm tượng Phật tổ Th&iacute;ch ca Như Lai, b&ecirc;n tr&aacute;i l&agrave; đại đệ tử Maha Ca Diếp, b&ecirc;n phải l&agrave; đệ tử th&acirc;n cận của Phật l&agrave; A-Nan. B&ecirc;n cạnh hai đệ tử l&agrave; hai vị Bồ T&aacute;t. Các tượng của hang Mạc Cao mu&ocirc;n hình mu&ocirc;n vẻ, trang phục và sự bi&ecirc;̉u hi&ecirc;̣n của m&ocirc;̃i pho tượng đ&ecirc;̀u khác nhau, phản ánh bản sắc khác nhau của các thời đại. Bích họa trong hang Mạc Cao cũng r&acirc;́t hoành tráng, n&ecirc;́u như n&ocirc;́i những bức bích họa đó lại với nhau thành m&ocirc;̣t dải, có th&ecirc;̉ tạo thành m&ocirc;̣t hành lang bích họa dài 30 Km.</p>\r\n<p>L&agrave; b&aacute;u vật của nền văn h&oacute;a Trung Quốc n&ecirc;n ch&iacute;nh phủ nước n&agrave;y lu&ocirc;n ch&uacute; trọng c&ocirc;ng t&aacute;c bảo vệ. Năm 1950, hang Mạc Cao đ&atilde; được đưa v&agrave;o danh s&aacute;ch bảo tồn văn vật trọng điểm của Nh&agrave; nước. Năm 1987 được UNESCO c&ocirc;ng nhận l&agrave; Di sản văn h&oacute;a thế giới . Hiện nay, ở dưới n&uacute;i Tam Nguy đối diện với Hang Mạc Cao đ&atilde; x&acirc;y dựng Trung t&acirc;m trưng b&agrave;y nghệ thuật Đ&ocirc;n Ho&agrave;ng, m&ocirc; phỏng lại một số hang động trước đ&acirc;y, vừa bảo tồn được văn vật, lại mang lại nội dung phong ph&uacute; hơn cho du kh&aacute;ch.</p>', '', '3d17698ef1017a2b2a1ff8e2ea52a948.jpg', '2018-07-24 07:46:17', 'administrator', '2018-07-24 07:46:17', 'administrator', 0, 0),
(20, 22, 'thu-ngo', 'THƯ NGỎ', 'Với chúng tôi, thành công không lấy lợi nhuận làm thước đo mà được tính bằng những giá trị chân thực gặt hái được sau mỗi chuyến đi của quý khách hàng.', '<p><em><u>K&iacute;nh gửi</u></em>: Qu&yacute; kh&aacute;ch h&agrave;ng!</p>\r\n<p>Lời đầu ti&ecirc;n, <strong>Diamondtour</strong> xin gửi lời ch&uacute;c sức khoẻ, lời ch&agrave;o tr&acirc;n trọng tới qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde;, đang v&agrave; sẽ sử dụng dịch vụ của ch&uacute;ng t&ocirc;i!</p>\r\n<p>C&ocirc;ng ty ch&uacute;ng t&ocirc;i được x&acirc;y dựng n&ecirc;n từ những th&agrave;nh vi&ecirc;n c&oacute; kinh nghiệm nhiều năm trong lĩnh vực du lịch, khao kh&aacute;t đem những trải nghiệm, cảm hứng chia sẻ cho người th&acirc;n, cho gia đ&igrave;nh v&agrave; xa hơn l&agrave; cho những người c&oacute; c&ugrave;ng sở th&iacute;ch đi du lịch. Ch&iacute;nh v&igrave; vậy, bằng nhiệt huyết của m&igrave;nh, ch&uacute;ng t&ocirc;i lu&ocirc;n tin rằng m&igrave;nh sẽ th&agrave;nh c&ocirc;ng trong việc mang những gi&aacute; trị, cảm hứng v&agrave; trải nghiệm du lịch đến với mọi người.</p>\r\n<p>Với mục ti&ecirc;u vươn cao v&agrave; vươn xa hơn nữa trong ng&agrave;nh du lịch, ch&uacute;ng t&ocirc;i v&ocirc; c&ugrave;ng mong muốn nhận được niềm tin của qu&yacute; kh&aacute;ch h&agrave;ng gửi trao cho <strong>Diamondtour</strong>, để ch&uacute;ng t&ocirc;i vinh dự được đồng h&agrave;nh tr&ecirc;n khắp c&aacute;c nẻo đường c&ugrave;ng qu&yacute; vị chi&ecirc;m b&aacute;i c&aacute;c Th&aacute;nh t&iacute;ch, thả l&ograve;ng thưởng ngoạn ti&ecirc;n cảnh chốn nh&acirc;n gian, thể nghiệm cuộc sống kh&aacute;c m&igrave;nh ở những miền đất lạ, t&igrave;m ra những gi&aacute; trị ch&acirc;n thực trong những chuyến đi&hellip; đi thật xa để biết thật nhiều, để sống tốt v&agrave; cống hiến nhiều hơn cho x&atilde; hội.</p>\r\n<p><strong><em>Với ch&uacute;ng t&ocirc;i, th&agrave;nh c&ocirc;ng kh&ocirc;ng lấy lợi nhuận l&agrave;m thước đo m&agrave; được t&iacute;nh bằng những gi&aacute; trị ch&acirc;n thực gặt h&aacute;i được sau mỗi chuyến đi của qu&yacute; kh&aacute;ch h&agrave;ng</em></strong>.</p>\r\n<p>Ch&uacute;ng t&ocirc;i rất mong được lắng nghe &yacute; kiến đ&oacute;ng g&oacute;p của qu&yacute; kh&aacute;ch h&agrave;ng để mọi dịch vụ của c&ocirc;ng ty ch&uacute;ng t&ocirc;i được ho&agrave;n thiện hơn nữa, chuy&ecirc;n nghiệp hơn nữa trong tương lai.</p>\r\n<p>&nbsp;</p>\r\n<p>Mọi &yacute; kiến đ&oacute;ng g&oacute;p cho ch&uacute;ng t&ocirc;i xin gửi về:</p>\r\n<p>Email: <a href=\"mailto:info@diamondtour.vn\">info@diamondtour.vn</a></p>\r\n<p>Phone: 02422 393 599</p>\r\n<p>Hotline: 0869 770 333</p>', '', '4d74cac7c3d4e9c8859625ad49943b57.jpg', '2018-07-24 07:53:48', 'administrator', '2018-07-24 07:53:48', 'administrator', 0, 0),
(21, 15, 'vi-nu-ho-phap-vi-dai', 'Vị nữ hộ pháp vĩ đại', '', '<p>C&aacute;ch đ&acirc;y h&agrave;ng ngh&igrave;n năm về trước, tại v&ugrave;ng Shoto, gần Drikung c&oacute; hai vợ chồng nh&agrave; nọ, tuy tuổi đ&atilde; cao m&agrave; m&atilde;i vẫn chưa c&oacute; nổi một mụn con. C&oacute; người m&aacute;ch nước cho họ tới Katmandu Nepal, nơi c&oacute; đại th&aacute;p Phật để cầu nguyện, mong c&aacute;c vị Phật đ&agrave; ban phước.</p>\r\n<p>Mấy th&aacute;ng sau đ&oacute;, khi họ vẫn c&ograve;n dừng ch&acirc;n tại Nepal, hai vợ chồng c&ugrave;ng mơ một giấc mơ giống hệt nhau. Trong mơ, họ thấy mặt trời v&agrave; mặt trăng c&ugrave;ng chiếu biết bao tia s&aacute;ng v&agrave;o m&igrave;nh. Sau khi tỉnh giấc, họ vui mừng kh&ocirc;n tả, cho đ&acirc;y ch&iacute;nh l&agrave; phước l&agrave;nh m&agrave; Phật ban ph&aacute;t, rồi họ sẽ c&oacute; cho m&igrave;nh một h&agrave;i nhi thật đặc biệt. Họ cảm k&iacute;ch đến trước tượng Phật trong th&aacute;p m&agrave; khấn v&aacute;i, thắp s&aacute;ng h&agrave;ng trăm ngọn đ&egrave;n, bố th&iacute; cho tất cả những người ăn xin v&agrave; l&ecirc;n đường trở về qu&ecirc; hương.</p>\r\n<p>Kh&ocirc;ng l&acirc;u sau, người vợ hạ sinh một b&eacute; g&aacute;i v&ocirc; c&ugrave;ng s&aacute;ng sủa. K&igrave; diệu l&agrave; trong l&uacute;c sinh đ&atilde; c&oacute; biết bao điều lạ diễn ra: khắp nh&agrave; tr&agrave;n ngập một hương thơm thần th&aacute;nh, ph&iacute;a n&oacute;c nh&agrave; c&oacute; cầu vồng xuất hiện, người mẹ sinh nở kh&ocirc;ng hề đau đớn, d&ograve;ng nước h&oacute;a th&agrave;nh d&ograve;ng sữa.</p>\r\n<p>Người ta cho rằng c&ocirc; b&eacute; l&agrave; một người v&ocirc; c&ugrave;ng đặc biệt. Người th&igrave; cho rằng c&ocirc; b&eacute; l&agrave; t&aacute;i sinh của nữ thần Tara, số kh&aacute;c lại cho rằng c&ocirc; b&eacute; l&agrave; chuyển thế của nữ thần Kim Cương (Vajra-Dakini). Theo lời ti&ecirc;n tri trước đ&oacute; để lại, truyền thế của nữ thần Dakini sẽ ch&agrave;o đời tại hang động Tidro ở Shoto, nơi m&agrave; ng&agrave;i Li&ecirc;n Hoa Sanh đ&atilde; từng sinh sống v&agrave; cứu độ ch&uacute;ng sinh. Khi chưa tr&ograve;n một tuổi, cha mẹ c&ocirc; b&eacute; đều qua đời, c&ocirc; b&eacute; được một người cậu nhận nu&ocirc;i. B&eacute; g&aacute;i vừa l&ecirc;n ba đ&atilde; đọc thuộc l&ograve;ng kinh Tara, đồng thời c&ograve;n dạy lại cho những đứa trẻ kh&aacute;c, điều n&agrave;y khiến mọi người v&ocirc; c&ugrave;ng kinh ngạc. Họ liền gọi đứa b&eacute; l&agrave; Drolma, theo tiếng Tạng n&oacute; mang nghĩa l&agrave; &ldquo;người cứu độ&rdquo;.</p>\r\n<p>Năm Drolma l&ecirc;n mười, người cậu nhận nu&ocirc;i c&ocirc; b&eacute; muốn gả c&ocirc; đi, nhưng c&ocirc; ra sức phản đối. C&ocirc; b&eacute; khăng khăng: &ldquo;Số mệnh của con l&agrave; tới Kham v&agrave; kết h&ocirc;n với một vị tu sĩ người A &ndash; d&eacute;c &ndash; bai &ndash; gian.&rdquo; D&ugrave; cho &ocirc;ng cậu v&agrave; người th&acirc;n &eacute;p đến mức n&agrave;o, Drolma vẫn quả quyết: &ldquo;Con c&aacute;i của ch&uacute;ng con sẽ trở th&agrave;nh những người tu h&agrave;nh ph&aacute;t triển Phật ph&aacute;p, độ h&oacute;a cho v&ocirc; số ch&uacute;ng sinh.&rdquo;</p>\r\n<p>Một ng&agrave;y nọ, c&ocirc; b&eacute; quyết t&acirc;m gia nhập v&agrave;o nh&oacute;m thương nh&acirc;n v&agrave; đi tới Kham. Người cậu của c&ocirc; b&eacute; v&ocirc; c&ugrave;ng tức giận, nhưng cũng kh&ocirc;ng c&ograve;n c&aacute;ch n&agrave;o kh&aacute;c. Drolma n&oacute;i với cậu lời cuối trước l&uacute;c l&ecirc;n đường: &ldquo; Tuy mọi thứ t&igrave;nh cảm đến cuối c&ugrave;ng rồi vẫn phải chịu cảnh chia li, nhưng ch&uacute;ng ta m&atilde;i m&atilde;i b&ecirc;n nhau. Trong tương lai, ch&uacute;ng con sẽ đắc đạo tu ch&iacute;nh quả tr&ecirc;n Li&ecirc;n Hoa đ&agrave;i xinh đẹp. Người cần thường xuy&ecirc;n cầu nguyện mẹ Tara, mong người bảo hộ v&agrave; hướng dẫn. &rdquo;&nbsp;</p>\r\n<p>Tới thị trấn Dento Tsongur, Drolma từ biệt đo&agrave;n thương nh&acirc;n. Như c&oacute; năng lực ti&ecirc;n tri, n&agrave;ng đi tới căn nh&agrave; nhỏ của vị tu sĩ Tsultrim Gyamtso. Sau khi tự giới thiệu, n&agrave;ng tuy&ecirc;n bố: &ldquo;Ch&iacute;nh ph&aacute;p chủ! Cũng giống như n&agrave;ng Yi Xi Zhao Jia đ&atilde; từng phục dịch cho đạo sĩ Li&ecirc;n Hoa Sinh, giờ ta sẽ phục dịch cho ch&agrave;ng m&agrave; kh&ocirc;ng chịu chấp niệm của bất k&igrave; thế tục n&agrave;o. Con c&aacute;i của ch&uacute;ng ta, sẽ l&agrave; những người gi&aacute;c ngộ cho cả thế gian n&agrave;y.&rdquo;</p>\r\n<p>Trước đ&oacute;,Tsultrim Gyamtso đ&atilde; c&oacute; một giấc mơ về sự c&oacute; mặt của n&agrave;ng. Vị tu sĩ mơ thấy một vị Tara n&oacute;i với m&igrave;nh, rằng một trăm năm sau c&ocirc; &yacute; sẽ phục dịch cho m&igrave;nh. V&agrave; giờ giấc mơ ấy đ&atilde; trở th&agrave;nh sự thật.</p>\r\n<p>Vị tu sĩ chẳng c&oacute; của cải g&igrave; để tổ chức h&ocirc;n lễ, nhưng vị h&ocirc;n th&ecirc; của Gyamtso &ndash; Drolma n&oacute;i n&agrave;ng sẽ lo liệu tất cả Drolma n&oacute;i: &ldquo; Ta được sinh ra ở kiếp n&agrave;y để mang lại sự giải tho&aacute;t v&agrave; b&igrave;nh đẳng cho tất cả ch&uacute;ng sinh, tất cả c&aacute;c t&iacute;n đồ của ta rồi sẽ đạt được ch&iacute;nh ngộ.&rdquo; N&oacute;i rồi n&agrave;ng lấy ra một chiếc trống v&agrave; chiếc cốc từ trong h&agrave;nh l&iacute; của m&igrave;nh, tay lắc trống, d&ugrave;ng &aacute;nh mắt ki&ecirc;n định đầy thần b&iacute; để ngắm nh&igrave;n thế giới.&nbsp; Ngay lập tức, ng&ocirc;i nh&agrave; đơn sơ &yacute; tr&agrave;n ngập quần &aacute;o tiệc hỉ, những m&oacute;n đồ trang sức xinh đẹp v&agrave; những m&oacute;n ngon đặc sắc. Bạn b&egrave; v&agrave; đệ tử của Gyamtso đều tới chung vui với hai người. Drolma đưa tay ra, l&ograve;ng b&agrave;n tay c&oacute; tới bốn mảnh xương cừu, đưa ti&ecirc;n đo&aacute;n: &ldquo;Ch&uacute;ng ta sẽ c&oacute; bốn cậu con trai v&ocirc; c&ugrave;ng th&ocirc;ng minh.&rdquo;</p>\r\n<p>Đ&ocirc;i vợ chồng cuối c&ugrave;ng đ&atilde; sinh ra bốn cậu con trai v&ocirc; c&ugrave;ng b&aacute;c học, đ&uacute;ng như lời m&agrave; Drolma đ&atilde; ti&ecirc;n đo&aacute;n từ trước. Sau khi họ trưởng th&agrave;nh, Drolma mang theo c&aacute;c con v&agrave; c&aacute;c vị đệ tử kh&aacute;c tới một sơn động hết sức thần th&aacute;nh. Nơi đ&oacute; ch&iacute;nh l&agrave; nơi ng&agrave;i Li&ecirc;n Hoa Sinh từng chỉ dạy cho Tara.</p>\r\n<p>Trong hang động Tidro, c&oacute; bao x&aacute; lợi thần b&iacute;, từ những tảng đ&aacute; mang d&aacute;ng h&igrave;nh của bản t&ocirc;n, những vật trang sức l&agrave;m từ xương, đến c&aacute;c loại đ&aacute; qu&yacute;. Drolma h&oacute;a ph&eacute;p ra một thi thể, rồi lại biến n&oacute; th&agrave;nh c&aacute;c loại cống phẩm d&ugrave;ng trong Kim Cương hội, sau đ&oacute; cho tổ chức nghi lễ truyền Mật..</p>\r\n<p>Tất cả những người tham gia đều đạt được ch&iacute;nh ngộ v&agrave; c&oacute; được một luồng sức mạnh thần b&iacute;. Drolma tuy&ecirc;n bố nhiệm vụ truyền Phật của m&igrave;nh đ&atilde; được ho&agrave;n th&agrave;nh, đưa ra lời tuy&ecirc;n thệ sẽ bảo vệ những người tu h&agrave;nh Phật ph&aacute;p.</p>\r\n<p>Drolma đưa cuốn bản thảo đặt l&ecirc;n nền đ&aacute;, sau đ&oacute; cưỡi con ngựa xanh của m&igrave;nh, h&aacute;t một kh&uacute;c h&aacute;t v&agrave; bay v&agrave;o trời xanh.</p>\r\n<p>Ch&aacute;u của Drolma l&agrave; Jigten Sumgon trở th&agrave;nh t&ocirc;n giả của d&ograve;ng Drikung ph&aacute;i Kagyur. Người ta t&ocirc;n Drolma l&ecirc;n l&agrave;m Achi Chokyi Drolma, nghĩa l&agrave; tổ mẫu Tara, l&agrave; nữ hộ ph&aacute;p của d&ograve;ng Kagyur.</p>\r\n<p>Truyền rằng, ng&agrave;y nay bất k&igrave; ai khi nhất t&acirc;m cầu nguyện đến hộ ph&aacute;p Achi Chokyi Drolma đều được linh ứng, ai học theo ph&aacute;p của b&agrave; đếu sẽ được giải tho&aacute;t v&agrave; gi&aacute;c ngộ.</p>', '', '986aedd1645969b28b28476743b3690a.jpg', '2018-07-24 07:39:27', 'administrator', '2018-07-24 07:39:27', 'administrator', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_category`
--

CREATE TABLE `post_category` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `project` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `sort` tinyint(4) DEFAULT NULL,
  `type` tinyint(4) DEFAULT '0' COMMENT '0 : list; 1 : detail',
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

INSERT INTO `post_category` (`id`, `slug`, `title`, `content`, `parent_id`, `project`, `image`, `sort`, `type`, `is_activated`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(15, 'tin-tuc', 'Tin tức', '<strong>Lorem Ipsum</strong>&nbsp;chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.', 0, '', '923927e2e625e77f4c43a813c281990e.png', NULL, 0, 0, 0, '2018-07-06 21:54:49', 'administrator', '2018-07-06 21:54:49', 'administrator'),
(16, 'kho-thu-vien', 'Kho thư viện', '<strong>Lorem Ipsum</strong>&nbsp;chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.', 0, '', '95e5503c3e878742150d9ccb21162ab7.jpg', NULL, 0, 0, 1, '2018-07-06 21:54:55', 'administrator', '2018-07-06 21:54:55', 'administrator'),
(19, 'goc-chia-se', 'Góc chia sẻ', '<strong>Lorem Ipsum</strong>&nbsp;chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.', 0, '', 'ed8d5c63b14434611a3dd584ddd9f246.jpg', NULL, 0, 0, 0, '2018-07-06 21:55:00', 'administrator', '2018-07-06 21:55:00', 'administrator'),
(21, 'test', 'Test', '<strong>Lorem Ipsum</strong>&nbsp;chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.', 16, '', NULL, NULL, 0, 0, 0, '2018-07-06 21:55:26', 'administrator', '2018-07-06 21:55:26', 'administrator'),
(22, 'about', 'About', '<strong>Lorem Ipsum</strong>&nbsp;chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.', 0, '', 'a474246bcf11ac752f4d83f8091c8deb.png', NULL, 0, 0, 0, '2018-07-02 15:41:14', 'administrator', '2018-07-02 15:41:14', 'administrator');

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
(23, 33, 've-chung-toi', 'Về chúng tôi', '', '', 'Về chúng tôi', 'Về chúng tôi', '[\"1\",\"3\"]', '[\"2\",\"4\"]', 'Ghi ch&uacute;', '', 'Bao Gồm', 'Loại trừ', '', '[\"eab31dbdf017c6ab7a94c9a9e76bfdd6.jpg\",\"18341749ee4f32cdbcbea8a805af093d.jpg\",\"5c36e8573953c3cd5108086cbdafae12.jpg\",\"cbaa33e849975f2dca7f511b6395d13a.jpg\"]', 0, 0, NULL, NULL, '999999999', '', '', 20, '888888', 1, '[{\"title\":\"B\\u1eafc Ninh\",\"budget\":\"BUDGET\",\"star3\":\"3 - STAR\",\"star4\":\"4 - STAR\",\"star5\":\"5 - STAR\"}]', '[{\"budget\":\"11\",\"star3\":\"22\",\"star4\":\"33\",\"star5\":\"44\"},{\"budget\":\"15\",\"star3\":\"26\",\"star4\":\"37\",\"star5\":\"48\"}]', 'bc6f7d84a59c6f051b444d84c1e268df.jpg', 'Hà Nội, Bắc Ninh', '[\"4\"]', '', '2018-10-31 16:33:27', 'administrator', '2018-10-31 16:33:27', 'administrator', NULL, NULL, 1),
(24, 37, 'dang-ky-thu-ruou', 'Đăng ký thử rượu', '', '', 'Đăng ký thử rượu', 'Đăng ký thử rượu', '[\"Title\",\"Titl2\"]', '[\"<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\"]', 'Ghi ch&uacute;', '', 'bao gồm', 'Loại trừ', '', '[\"7401efd0a402bad5e76edd7e2791e2ac.jpg\",\"3bdc00bded62f01af47b09448484e999.jpg\"]', 1, 0, NULL, NULL, '999999999', '', '', 15, '888888', 1, '[]', '[{\"budget\":null,\"star3\":null,\"star4\":null,\"star5\":null},{\"budget\":null,\"star3\":null,\"star4\":null,\"star5\":null}]', '1ffaedbd1775d0f365a637aa06c72e2c.jpg', 'Không quan tâm', '[\"2\",\"3\"]', '02/10/2018,10/10/2018', '2018-10-31 14:10:22', 'administrator', '2018-10-31 14:10:22', 'administrator', NULL, NULL, 1),
(25, 33, 'dang-ky-thu-ruou-1', 'Đăng ký thử rượu', '', '', 'Đăng ký thử rượu3', 'Đăng ký thử rượu3', '[\"titl13\"]', '[\"<strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.3\"]', '<strong>Ghi ch&uacute; Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.3', '', '<strong>Bao gồm Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.3', '<strong>Loại trừ Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.3', '', '[\"9d5cc914e2d1bbd424c8c85b52893681.jpg\",\"d0a044a110df02c74b86f7ad50fc119b.jpg\",\"7b790a78680697e4065c2d755b10f07a.jpg\",\"8f2e91585c0cb0279f64153cb3ab513b.jpg\"]', 0, 0, '[\"11\",\"33\"]', '[\"22\",\"44\"]', '9999999993', '[\"02\\/10\\/2018\",\"10\\/10\\/2018\"]', '[\"8888883\",\"8888883\"]', 203, '8888883', 1, '[]', '[]', '713cdd1424048705aba200387ff3ae15.jpg', 'Hà Nọi, Bắc Giang3', '[\"3\",\"5\"]', '02/10/2018,10/10/2018', '2018-10-31 16:15:31', 'administrator', '2018-10-31 16:15:31', 'administrator', NULL, NULL, 2);

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
(23, 'hanh-huong-nuoc-ngoai', 'Hành hương nước ngoài', '<strong>Lorem Ipsum</strong>&nbsp;chỉ đơn giản l&agrave; một đoạn văn bản giả, được d&ugrave;ng v&agrave;o việc tr&igrave;nh b&agrave;y v&agrave; d&agrave;n trang phục vụ cho in ấn. Lorem Ipsum đ&atilde; được sử dụng như một văn bản chuẩn cho ng&agrave;nh c&ocirc;ng nghiệp in ấn từ những năm 1500, khi một họa sĩ v&ocirc; danh gh&eacute;p nhiều đoạn văn bản với nhau để tạo th&agrave;nh một bản mẫu văn bản. Đoạn văn bản n&agrave;y kh&ocirc;ng những đ&atilde; tồn tại năm thế kỉ, m&agrave; khi được &aacute;p dụng v&agrave;o tin học văn ph&ograve;ng, nội dung của n&oacute; vẫn kh&ocirc;ng hề bị thay đổi. N&oacute; đ&atilde; được phổ biến trong những năm 1960 nhờ việc b&aacute;n những bản giấy Letraset in những đoạn Lorem Ipsum, v&agrave; gần đ&acirc;y hơn, được sử dụng trong c&aacute;c ứng dụng d&agrave;n trang, như Aldus PageMaker.', 'Hành hương nước ngoài', 'Hành hương nước ngoài', 0, 0, '2018-07-18 10:06:16', 'administrator', '2018-07-18 10:06:16', 'administrator', '', '[\"45c4b082fd50479ef99a94d9971ee16a.jpg\",\"87d288aae9617d811b7062e0eb47208d.png\",\"ab79c88b08c7d8bdb89a3891bb55a549.jpg\"]', 2, 0),
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
('0a7rm846b8v5pju5mc6kelkgbk6l65us', '::1', 1540885125, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303838353132353b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('0ccjk6td2pvbvl8h7usk3dp1hd70nk5k', '::1', 1540970533, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937303533333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('0il1m3ib0asqvhv3jbp5uc0h7unekn86', '1.55.93.60', 1532924292, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533323932343238343b6c616e67416262726576696174696f6e7c733a323a227669223b),
('0q9mu91a0j8cfptf4120ak0htq33qmnu', '::1', 1540955889, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303935353838393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('0us2mn1lloqv7sjmmgdl15if2glmggcb', '::1', 1540886490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303838363439303b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('0v3h07vh88omv6bjqc3e8s7132qbc0vg', '::1', 1533013079, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533333031333037393b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353332353932383937223b6c6173745f636865636b7c693a313533333031323735313b),
('116lg2pr6nkd58kpekq1hmqrkvc9alah', '::1', 1540977201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937373230313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('14ikkb34vf1l6npdg78bq09743bqrilv', '::1', 1540979657, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937393635373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('191pm74ncoqphlkd5bhr1cqugk0q6bt6', '::1', 1540957741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303935373734313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('19lrptqdokmn55edm3c4nqarmnfr1a66', '::1', 1540882765, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303838323736353b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('1h3mkdtaec6qv9rnjkvq0fjocoeu94vf', '::1', 1540974660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937343636303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('1juio6fknotdoiqkssi7mfn09hep530f', '::1', 1540959998, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303935393939383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('22fel5060g00v7p2hf6nnijvjp46j700', '::1', 1540957311, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303935373331313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('29586rubghpe0mp2arte0eseo5k72723', '::1', 1540952871, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303935323837313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('2kdsn4soimvve1av78q5b634bc3o6asu', '::1', 1540973927, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937333932373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('36f1p7747r0e9l17448j442vrtupj3fq', '::1', 1540969411, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303936393431313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('38sg16sc3p425l0n3bgtkck1blsu67cf', '::1', 1540970837, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937303833373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('3agg9frl16vfpjj8hrnn92tc710i7hv1', '::1', 1533021602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533333032313630323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353333303132373531223b6c6173745f636865636b7c693a313533333032313236363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('3iihmrhnp3adhhanmt4eefvtkj3239nv', '::1', 1540198085, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303139383038353b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353335303137313135223b6c6173745f636865636b7c693a313534303139373734333b),
('41qfu694cunhd657qlnppll1bkra3pbf', '::1', 1540966214, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303936363231343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('41ra074p4egie14hpeue5eeh64gpbc0q', '::1', 1540889506, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303838393530363b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('4kk8mjpqfifr9gj8jj34330i6d4fotkr', '::1', 1540890791, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303839303739313b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('4rluvg99998363s2rl1mj8mgvovkc8ku', '::1', 1540878192, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303837383139323b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('50qcqv871kn8oh9cucov9903akf1e859', '::1', 1540959206, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303935393230363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('5fhppe2l1vae8akv1289pusv954j132j', '::1', 1540958611, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303935383631313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('5n2qvbkkdfq5qd73h76d0qboffaj4dc5', '::1', 1533013471, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533333031333437313b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353332353932383937223b6c6173745f636865636b7c693a313533333031323735313b),
('5q3utapngsgsfsklaqbcio7pvib9lo8f', '::1', 1540881821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303838313832313b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('5u8jk85gs5s340encf326s4rimdhlh76', '::1', 1540966974, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303936363937343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('5uq6qqj6ue1fl92jhgi082d1j5iklgis', '::1', 1540885522, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303838353532323b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('64bo42mnn35tmb488mj122oqj9u8juhn', '::1', 1540961634, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303936313633343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('6a3kuua8cgansid7ra5pujktdsqkvktl', '::1', 1540894045, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303839343034353b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('6j4hi8mh0e8efuvogkrcuuidbjlikjhj', '::1', 1540880915, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303838303931353b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('6jv9vi0latdek1ke0loid7quid644igc', '::1', 1540967921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303936373932313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('6n98emmdr9ogcrgddk0ajuh80p96532s', '::1', 1540958164, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303935383136343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('6vugesj8pofvu5886cei5qtkl0dvdut8', '::1', 1540969049, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303936393034393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('7c36b5flpqlpcbspd0u9pjiej2gbqvf9', '::1', 1540881500, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303838313530303b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('7r0g0m3enbc5e8q1edac6p9p18ghomhc', '::1', 1540891308, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303839313330383b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('8cjs3difvjfmg2vvmvam04nbfmbf166o', '::1', 1533267195, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533333236373139353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('97qhh7evf9erbe2hhbosaec3lrcroqtr', '::1', 1540888395, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303838383339353b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('a0thsq2ip3v2n4utprakbnulseonphdv', '::1', 1540880282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303838303238323b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('a2djqkgqdrtpcf77n98gudon2qfk78gk', '::1', 1540966592, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303936363539323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('a36qpsirh3k0co461ucsqtt4vu2iqhii', '::1', 1540968733, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303936383733333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('adcivf7t16mvkoih6u1n41r5pgbn7cqg', '::1', 1540890428, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303839303432383b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('ajf156v16hv45qhnf63vi85fvllrs2sn', '::1', 1540976848, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937363834383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('apo5mnhnkqmuvpfl3h6vf10tq8cevu51', '::1', 1540882207, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303838323230373b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('b0pp01g7l8he4l7iskomj21ujpbii98r', '::1', 1540883682, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303838333638323b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('b66rkjiu03bi9tfco8ha2jroap6olfmu', '::1', 1540960462, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303936303436323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('b8b2ave59e6jsuidvk5aeul5qhldcoks', '::1', 1540889808, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303838393830383b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('b9snjcq38b2eftl0bbbv9e5no3mlb2rf', '::1', 1540980189, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303938303138393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('be00s35tuedtrpve2sm99j7nlttvodta', '::1', 1540951447, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303935313434373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('bjr1fgeinaoo1dblb8aghmh3oqaaflvh', '::1', 1540955318, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303935353331383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('bjvm6boogfdmusqea0f61d7qmcj1g4bs', '117.1.113.94', 1533009213, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533333030393231323b6c616e67416262726576696174696f6e7c733a323a227669223b),
('bsf25teggjijvkvmidgrfv434vl7i7bd', '::1', 1540972074, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937323037343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('btooof6imvph15bihp9pka514ponrm41', '::1', 1540891658, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303839313635383b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('c0b1ap46pd4qrjjmt29q0s04rge4uapc', '::1', 1540197683, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303139373638333b6c616e67416262726576696174696f6e7c733a323a227669223b),
('c2fkgl1lc0idej1dcmf6r9homaonq18a', '::1', 1533012777, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533333031323737373b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353332353932383937223b6c6173745f636865636b7c693a313533333031323735313b),
('cln42em022avvrb4ecn17idg9usjketr', '::1', 1534498733, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343439383733333b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353333313934303636223b6c6173745f636865636b7c693a313533343439343938303b),
('cpkbs6qjgrbv9da7co83al2fprc4vgji', '::1', 1540977946, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937373934363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('d79ngj2h55je0sdpgmrvo2l3m271cr29', '::1', 1535015948, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353031353638383b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353334343934393830223b6c6173745f636865636b7c693a313533353031353639383b),
('dc5idmb0mrsajc9hk6io51kat7kdlodr', '::1', 1540884804, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303838343830343b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('dmipbd022jq6ftbn2fdun08d42pdersb', '::1', 1540197743, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303139373734333b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353335303137313135223b6c6173745f636865636b7c693a313534303139373734333b),
('e8kv8hcdaqt8m5rrot0ggdi09p4sp4em', '::1', 1540967592, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303936373539323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('eb74ohkg9bkq65utm58k19v74hb19g6f', '14.162.147.211', 1532941748, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533323934313731393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ei7bvtf4jqqtm2m4aijk1p234akttcp9', '::1', 1540953835, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303935333833353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('ejjsgrnd51l2c89varidik7237a5djjc', '::1', 1533013879, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533333031333837393b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353332353932383937223b6c6173745f636865636b7c693a313533333031323735313b),
('el0sk4ejc5m3g63k5r1i022p9tdjdh6k', '::1', 1537954636, ''),
('f5tnr993chi77fv1r2m9r5h9lla7euvp', '::1', 1540971368, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937313336383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('fhfijhc66n3khvna68i3bte055hlsohg', '::1', 1540888068, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303838383036383b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('haga7rlaelfb6o7l10spfi1tkjakih9p', '::1', 1540892153, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303839323135333b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('hbpeahflr08o0gr0vhl82c4qvlbc3aja', '::1', 1540880614, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303838303631343b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('hj1b4tj1jggrrl3cu05cf3ujkpt3gblf', '::1', 1540887649, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303838373634393b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('hsjcl1dhrbn33eld5m2gr8m1kfrh0p0r', '::1', 1540199966, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303139393936363b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353335303137313135223b6c6173745f636865636b7c693a313534303139373734333b),
('i51n0ada04ogmiql214u58a7hf6tqbn4', '::1', 1540980427, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303938303138393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('ij9i9ckc6sff5c7bsk1g0sd5gc0ese0i', '::1', 1540977619, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937373631393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('j6c5dobt8h0pg5onhelqp1refiucocbf', '::1', 1533267200, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533333236373139353b6c616e67416262726576696174696f6e7c733a323a227669223b),
('k0sc46h3spfn03g40b9bnv89n2i2918c', '::1', 1540978983, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937383938333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('k3akq5629lcsl9t5jfedqqjtuoh1c5rr', '::1', 1540976489, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937363438393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('kaodkk8h7p81d2g6i7tiuaf3gl09e8ta', '::1', 1540968422, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303936383432323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('l1ba1oe7k07s1n51ec6ba7gilsjq8ji4', '::1', 1540978641, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937383634313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('llis1tkb54ocnpjsss42o04rhn6qdleo', '::1', 1540976028, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937363032383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('ma09ha2etjsltom3r1ko435hfr609m20', '::1', 1540888696, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303838383639363b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('mifokffjfbjgj7vrbjkct2tmrham4r2e', '::1', 1540895123, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303839353132333b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('mkijfl5mvbqh00efgsop5j4klu0bvltk', '::1', 1533014122, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533333031333837393b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353332353932383937223b6c6173745f636865636b7c693a313533333031323735313b),
('mt9n0o9pk0if365imj45arau35alcrca', '::1', 1535017129, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353031373130353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353335303135363938223b6c6173745f636865636b7c693a313533353031373131353b),
('n7onankq5ji8legnspkh8ehgt1ec8fkj', '::1', 1540895201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303839353132333b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('nd4b19nq8u4cvmvbajgdaagi4gg0uodv', '::1', 1540959564, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303935393536343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('ndpg650h0e9ldbf0g5lbl00u4qne77ce', '::1', 1533021775, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533333032313630323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353333303132373531223b6c6173745f636865636b7c693a313533333032313236363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('nkljpn0u930f2rrajqssnujqu9iqchir', '::1', 1540961154, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303936313135343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('nlfbgs5ejvlrvd0k3i28sjobefjaiq65', '::1', 1540975417, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937353431373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('nqmls6o7a57ft04n9p0f2bqvhe8sa259', '::1', 1540894471, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303839343437313b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('o0f4mi8dt2bv1s1dsvpitfhm6fo97cn2', '::1', 1540975099, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937353039393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('ojpt0tg7k5udevlpki29ikq8b5fler4n', '::1', 1540971726, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937313732363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('osljlut13beadnvvkvi291tf0uhp2trr', '::1', 1540960821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303936303832313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('pl3p14m7551mc9cb664nk1ujitqm05bb', '::1', 1540894809, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303839343830393b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('pv37to8lnkdnntvnmn17q50fct9ghk5j', '::1', 1540884177, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303838343137373b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('q0k0f5b9g5og183uaotlh6tb1878sadv', '::1', 1540974354, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937343335343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('q7a5g3r16jsrv4vrjqecn80bcudpnqve', '::1', 1540973525, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937333532353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('qmepij9nch3u6o8l3jhfkg5i8mi3jlmr', '::1', 1540885953, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303838353935333b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('qo794ohrrpbs4ajkl98sbjfjbhqhpsn5', '::1', 1540893594, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303839333539343b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('r22q65b74logtehlj0j5u4fqc8g2iu3r', '::1', 1540956989, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303935363938393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('resetg1f88a9hn2hsr1avo3t09e1dtvv', '::1', 1540879463, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303837393436333b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430323032333231223b6c6173745f636865636b7c693a313534303837373537373b),
('rv0u2mcj2ukeuta6lp9nk5n0h8ka4dll', '::1', 1540967289, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303936373238393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('sbccehi0dvgqpsth5rki3o2lbmlfnngm', '::1', 1540970184, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937303138343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('sd7bckp94l4kfvh78ub08045kpig1lk1', '::1', 1533194077, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533333139343035343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353333303231323636223b6c6173745f636865636b7c693a313533333139343036363b),
('sq3kd8gj287pkcofnghcnhud5s36hls7', '::1', 1540202012, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303230323031323b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353335303137313135223b6c6173745f636865636b7c693a313534303139373734333b),
('tm6ar0efkikcvne082fpc94s6idsbuvl', '::1', 1540951084, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303935313038343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('u1d26h6mmukkvuds06t9ar8lpj17remu', '::1', 1540197308, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303139373330383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('u3ip4nuuhk8v43036equb4covde44n78', '::1', 1534498753, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343439383733333b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353333313934303636223b6c6173745f636865636b7c693a313533343439343938303b),
('u6e9otg8h8io5lb870b7rgp3fr04t9tc', '::1', 1540978262, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303937383236323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430383737353737223b6c6173745f636865636b7c693a313534303935303438383b),
('vo7nc9k3bt2v2atgsrlq2f07cikslbip', '::1', 1540202331, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534303230323331363b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353430313937373433223b6c6173745f636865636b7c693a313534303230323332313b);

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
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1540950488, 1, 'Admin', 'istrator', 'ADMIN', '0', NULL),
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

--
-- Chỉ mục cho các bảng đã đổ
--

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
-- Chỉ mục cho bảng `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`) USING BTREE;

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
-- Chỉ mục cho bảng `customize`
--
ALTER TABLE `customize`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `localtion`
--
ALTER TABLE `localtion`
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
-- Chỉ mục cho bảng `site_sessions`
--
ALTER TABLE `site_sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ci_sessions_timestamp` (`timestamp`) USING BTREE;

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
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `customize`
--
ALTER TABLE `customize`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `localtion`
--
ALTER TABLE `localtion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `customize`
--
ALTER TABLE `customize`
  ADD CONSTRAINT `customize_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`post_category_id`) REFERENCES `post_category` (`id`);

--
-- Các ràng buộc cho bảng `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `users_groups_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `users_groups_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
