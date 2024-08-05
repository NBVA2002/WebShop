-- phpMyAdmin SQL Dump
https://docs.camunda.io/docs/components/modeler/bpmn/
https://docs.camunda.io/docs/components/modeler/bpmn/
https://docs.camunda.io/docs/apis-tools/frontend-development/task-applications/introduction-to-task-applications/
https://github.com/camunda-community-hub/zeebe-simple-monitor
https://github.com/camunda-community-hub/zeebe-simple-tasklist
-- version 5.2.1
-- https://www.phpmyadmin.net/
--https://app.box.com/signup/collab/ab044atuqw?box_source=legacy-external_collab_email&amp;box_action=click_button
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 23, 2023 lúc 04:03 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `address`
--

INSERT INTO `address` (`id`, `city`) VALUES
(1, 'Hoa Binh'),
(2, 'Ha Noi'),
(3, 'Hanoi'),
(4, 'Hanoi'),
(6, 'Hanoi'),
(8, 'HoaBinh'),
(9, 'HoaBinh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cartegory`
--

CREATE TABLE `cartegory` (
  `id` bigint(11) NOT NULL,
  `cartegory_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cartegory_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `cartegory`
--

INSERT INTO `cartegory` (`id`, `cartegory_type`, `cartegory_name`) VALUES
(1, 'Áo', 'Áo hoodie'),
(2, 'Áo', 'Áo khoác'),
(3, 'Áo', 'Áo len'),
(4, 'Áo', 'Áo polo'),
(5, 'Áo', 'Áo sơ mi'),
(6, 'Áo', 'Áo sweater'),
(7, 'Áo', 'Áo thun'),
(8, 'Áo', 'Áo vest'),
(9, 'Quần', 'Quần Jeans'),
(15, 'Quần', 'Quần kaki'),
(16, 'Quần', 'Quần nỉ'),
(17, 'Quần', 'Quần vải'),
(18, 'Quần', 'Quần lửng'),
(19, 'Quần', 'Quần short'),
(20, 'Váy', 'Chân váy'),
(21, 'Phụ kiện', 'Đầm'),
(22, 'Phụ kiện', 'Nón - Băng đô'),
(23, 'Phụ kiện', 'Túi - Ví'),
(24, 'Phụ kiện', 'Thắt Lưng'),
(25, 'Phụ kiện', 'Vớ - Tất'),
(26, 'Phụ kiện', 'Giày - Dép');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cartegory_type`
--

CREATE TABLE `cartegory_type` (
  `id` bigint(11) NOT NULL,
  `cartegory_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `cartegory_type`
--

INSERT INTO `cartegory_type` (`id`, `cartegory_type`) VALUES
(1, 'Áo'),
(4, 'Phụ kiện'),
(2, 'Quần'),
(3, 'Váy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_item`
--

CREATE TABLE `cart_item` (
  `id` bigint(11) NOT NULL,
  `pid` bigint(11) NOT NULL,
  `size` varchar(10) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `oid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `cart_item`
--

INSERT INTO `cart_item` (`id`, `pid`, `size`, `quantity`, `oid`) VALUES
(1, 2, 'L', 3, 1),
(2, 2, 'L', 1, 1),
(3, 1, 'XL', 3, 1),
(4, 79, 'XXL', 1, 24),
(5, 68, 'XXL', 1, 24),
(6, 18, 'XS', 8, 24),
(7, 83, 'XXL', 1, 24),
(8, 79, 'XXL', 1, 25),
(9, 18, 'XS', 8, 25),
(10, 68, 'XXL', 1, 25),
(11, 83, 'XXL', 1, 25),
(12, 24, 'L', 2, 26),
(13, 25, 'M', 1, 26),
(14, 24, 'L', 2, 27),
(15, 25, 'M', 1, 27),
(16, 24, 'L', 2, 28),
(17, 25, 'M', 1, 28),
(18, 24, 'L', 2, 29),
(19, 25, 'M', 1, 29),
(20, 25, 'S', 2, 30),
(21, 25, 'S', 2, 31),
(22, 21, 'L', 1, 32),
(23, 17, 'S', 2, 32),
(24, 65, 'L', 1, 33),
(25, 81, 'M', 2, 33),
(26, 72, 'M', 1, 34),
(27, 65, 'L', 1, 34),
(28, 68, 'M', 2, 35),
(29, 74, 'M', 2, 35),
(30, 25, 'M', 2, 36),
(31, 80, 'M', 2, 36),
(32, 84, 'M', 2, 37),
(33, 84, 'S', 2, 37),
(34, 83, 'M', 2, 38),
(35, 83, 'S', 1, 38),
(36, 29, 'S', 2, 39),
(37, 83, 'M', 2, 39),
(38, 83, 'S', 1, 39),
(39, 29, 'S', 2, 40),
(40, 83, 'S', 1, 40),
(41, 83, 'M', 2, 40),
(42, 29, 'S', 2, 41),
(43, 83, 'S', 1, 41),
(44, 83, 'M', 2, 41),
(45, 83, 'M', 2, 42),
(46, 29, 'S', 2, 42),
(47, 83, 'S', 1, 42),
(48, 83, 'S', 1, 43),
(49, 83, 'M', 2, 43),
(50, 29, 'S', 2, 43),
(51, 83, 'M', 2, 44),
(52, 29, 'S', 2, 44),
(53, 83, 'S', 1, 44),
(54, 83, 'S', 1, 45),
(55, 83, 'M', 2, 45),
(56, 29, 'S', 2, 45),
(57, 83, 'M', 2, 46),
(58, 29, 'S', 2, 46),
(59, 83, 'S', 1, 46),
(60, 29, 'S', 2, 47),
(61, 83, 'S', 1, 47),
(62, 83, 'M', 2, 47),
(63, 36, 'M', 5, 48),
(64, 49, 'XL', 2, 48),
(65, 65, 'M', 1, 48),
(66, 70, 'M', 3, 49),
(67, 70, 'XS', 5, 49),
(68, 70, 'S', 1, 49),
(69, 70, 'XL', 5, 49),
(70, 28, 'XS', 2, 50),
(71, 28, 'L', 3, 50),
(72, 28, 'S', 4, 50),
(73, 28, 'M', 9, 50),
(74, 68, 'L', 1, 51),
(75, 64, 'S', 2, 51);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `evaluate`
--

CREATE TABLE `evaluate` (
  `id` int(11) NOT NULL,
  `rate` double NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pid` bigint(11) NOT NULL,
  `uid` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `evaluate`
--

INSERT INTO `evaluate` (`id`, `rate`, `comment`, `pid`, `uid`) VALUES
(1, 4, 'hehe', 3, 2),
(2, 2, 'Xấu', 1, 2),
(3, 3, 'xấu', 3, 2),
(4, 5, 'đẹp tuyệt vời', 8, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `img_product`
--

CREATE TABLE `img_product` (
  `id` bigint(11) NOT NULL,
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `img_product`
--

INSERT INTO `img_product` (`id`, `img_url`, `pid`) VALUES
(1, 'a1.jpg', 1),
(2, 'a2.jpg', 1),
(3, 'a3.jpg', 1),
(4, 'a4.jpg', 2),
(5, 'a5.jpg', 2),
(6, 'a6.jpg', 2),
(7, 'a7.jpg', 3),
(8, 'a8.jpg', 3),
(9, 'a9.jpg', 3),
(10, 'a10.jpg', 4),
(11, 'a11.jpg', 4),
(12, 'a12.jpg', 4),
(13, 'a13.jpg', 5),
(14, 'a14.jpg', 5),
(15, 'a15.jpg', 5),
(16, 'a16.jpg', 6),
(17, 'a17.jpg', 6),
(18, 'a18.jpg', 6),
(19, 'a19.jpg', 7),
(20, 'a20.jpg', 7),
(21, 'a21.jpg', 7),
(22, 'a22.jpg', 8),
(23, 'a23.jpg', 8),
(24, 'a24.jpg', 8),
(25, 'a25.jpg', 9),
(26, 'a26.jpg', 9),
(27, 'a27.jpg', 9),
(28, 'a28.jpg', 10),
(29, 'a29.jpg', 10),
(30, 'a30.jpg', 10),
(31, 'at1.jpg', 11),
(32, 'at2.jpg', 11),
(33, 'at3.jpg', 11),
(34, 'at4.jpg', 12),
(35, 'at5.jpg', 12),
(36, 'at6.jpg', 12),
(37, 'at7.jpg', 13),
(38, 'at8.jpg', 13),
(39, 'at9.jpg', 13),
(40, 'at10.jpg', 14),
(41, 'at11.jpg', 14),
(42, 'at12.jpg', 14),
(43, 'at13.jpg', 15),
(44, 'at14.jpg', 15),
(45, 'at15.jpg', 15),
(46, 'at16.jpg', 16),
(47, 'at17.jpg', 16),
(48, 'at18.jpg', 16),
(49, 'at19.jpg', 17),
(50, 'at20.jpg', 17),
(51, 'at21.jpg', 17),
(52, 'at22.jpg', 18),
(53, 'at23.jpg', 18),
(54, 'at24.jpg', 18),
(55, 'v1.jpg', 19),
(56, 'v2.jpg', 19),
(57, 'v3.jpg', 19),
(58, 'v4.jpg', 20),
(59, 'v5.jpg', 20),
(60, 'v6.jpg', 20),
(61, 'v7.jpg', 21),
(62, 'v8.jpg', 21),
(63, 'v9.jpg', 21),
(64, 'v13.jpg', 22),
(65, 'v14.jpg', 22),
(66, 'v15.jpg', 22),
(67, 'v16.jpg', 23),
(68, 'v17.jpg', 23),
(69, 'v18.jpg', 23),
(70, 'v19.jpg', 24),
(71, 'v20.jpg', 24),
(72, 'v21.jpg', 24),
(73, 'v22.jpg', 25),
(74, 'v23.jpg', 25),
(75, 'v24.jpg', 25),
(76, 'qj1.jpg', 26),
(77, 'qj2.jpg', 26),
(78, 'qj3.jpg', 26),
(79, 'qj4.jpg', 27),
(80, 'qj5.jpg', 27),
(81, 'qj6.jpg', 27),
(82, 'qj7.jpg', 28),
(83, 'qj8.jpg', 28),
(84, 'qj9.jpg', 28),
(85, 'qj10.jpg', 29),
(86, 'qj11.jpg', 29),
(87, 'qj12.jpg', 29),
(88, 'qj13.jpg', 30),
(89, 'qj14.jpg', 30),
(90, 'qj15.jpg', 30),
(91, 'qj16.jpg', 31),
(92, 'qj17.jpg', 31),
(93, 'qj18.jpg', 31),
(94, 'qj19.jpg', 32),
(95, 'qj20.jpg', 32),
(96, 'qj21.jpg', 32),
(97, 'qs1.jpg', 33),
(98, 'qs2.jpg', 33),
(99, 'qs3.jpg', 33),
(100, 'qs4.jpg', 34),
(101, 'qs5.jpg', 34),
(102, 'qs6.jpg', 34),
(103, 'qs7.jpg', 35),
(104, 'qs8.jpg', 35),
(105, 'qs9.jpg', 35),
(106, 'qs10.jpg', 36),
(107, 'qs11.jpg', 36),
(108, 'qs12.jpg', 36),
(109, 'qs13.jpg', 37),
(110, 'qs14.jpg', 37),
(111, 'qs15.jpg', 37),
(112, 'qs16.jpg', 38),
(113, 'qs17.jpg', 38),
(114, 'qs18.jpg', 38),
(115, 'qs19.jpg', 39),
(116, 'qs20.jpg', 39),
(117, 'qs21.jpg', 39),
(118, 'g1.jpg', 40),
(119, 'g2.jpg', 40),
(120, 'g3.jpg', 40),
(121, 'g4.jpg', 41),
(122, 'g5.jpg', 41),
(123, 'g6.jpg', 41),
(124, 'g7.jpg', 42),
(125, 'g8.jpg', 42),
(126, 'g9.jpg', 42),
(127, 'g10.jpg', 43),
(128, 'g11.jpg', 43),
(129, 'g12.jpg', 43),
(130, 'g13.jpg', 44),
(131, 'g14.jpg', 44),
(132, 'g15.jpg', 44),
(133, 't1.jpg', 45),
(134, 't2.jpg', 45),
(135, 't3.jpg', 45),
(136, 't4.jpg', 46),
(137, 't5.jpg', 46),
(138, 't6.jpg', 46),
(139, 't7.jpg', 47),
(140, 't8.jpg', 47),
(141, 't9.jpg', 47),
(142, 't10.jpg', 48),
(143, 't11.jpg', 48),
(144, 't12.jpg', 48),
(145, 't13.jpg', 49),
(146, 't14.jpg', 49),
(147, 't15.jpg', 49),
(148, 'an1.jpg', 50),
(149, 'an2.jpg', 50),
(150, 'an3.jpg', 50),
(151, 'an4.jpg', 51),
(152, 'an5.jpg', 51),
(153, 'an6.jpg', 51),
(154, 'an7.jpg', 52),
(155, 'an8.jpg', 52),
(156, 'an9.jpg', 52),
(157, 'an10.jpg', 53),
(158, 'an11.jpg', 53),
(159, 'an12.jpg', 53),
(160, 'an13.jpg', 54),
(161, 'an14.jpg', 54),
(162, 'an15.jpg', 54),
(163, 'an16.jpg', 55),
(164, 'an17.jpg', 55),
(165, 'an18.jpg', 55),
(166, 'an19.jpg', 56),
(167, 'an20.jpg', 56),
(168, 'an21.jpg', 56),
(169, 'sm1.jpg', 57),
(170, 'sm2.jpg', 57),
(171, 'sm3.jpg', 57),
(172, 'sm4.jpg', 58),
(173, 'sm5.jpg', 58),
(174, 'sm6.jpg', 58),
(175, 'sm7.jpg', 59),
(176, 'sm8.jpg', 59),
(177, 'sm9.jpg', 59),
(178, 'sm10.jpg', 60),
(179, 'sm11.jpg', 60),
(180, 'sm12.jpg', 60),
(181, 'sm13.jpg', 61),
(182, 'sm14.jpg', 61),
(183, 'sm15.jpg', 61),
(184, 'sm16.jpg', 62),
(185, 'sm17.jpg', 62),
(186, 'sm18.jpg', 62),
(187, 'ak1.jpg', 63),
(188, 'ak2.jpg', 63),
(189, 'ak3.jpg', 63),
(190, 'ak4.jpg', 64),
(191, 'ak5.jpg', 64),
(192, 'ak6.jpg', 64),
(193, 'ak7.jpg', 65),
(194, 'ak8.jpg', 65),
(195, 'ak9.jpg', 65),
(196, 'ak10.jpg', 66),
(197, 'ak11.jpg', 66),
(198, 'ak12.jpg', 66),
(199, 'ak13.jpg', 67),
(200, 'ak14.jpg', 67),
(201, 'ak15.jpg', 67),
(202, 'ak16.jpg', 68),
(203, 'ak17.jpg', 68),
(204, 'ak18.jpg', 68),
(205, 'ak19.jpg', 69),
(206, 'ak20.jpg', 69),
(207, 'ak21.jpg', 69),
(208, 'qjn1.jpg', 70),
(209, 'qjn2.jpg', 70),
(210, 'qjn3.jpg', 70),
(211, 'qjn4.jpg', 71),
(212, 'qjn5.jpg', 71),
(213, 'qjn6.jpg', 71),
(214, 'qjn7.jpg', 72),
(215, 'qjn8.jpg', 72),
(216, 'qjn9.jpg', 72),
(217, 'qjn10.jpg', 73),
(218, 'qjn11.jpg', 73),
(219, 'qjn12.jpg', 73),
(220, 'qjn13.jpg', 74),
(221, 'qjn14.jpg', 74),
(222, 'qjn15.jpg', 74),
(223, 'ql1.jpg', 75),
(224, 'ql2.jpg', 75),
(225, 'ql3.jpg', 75),
(226, 'ql4.jpg', 76),
(227, 'ql5.jpg', 76),
(228, 'ql6.jpg', 76),
(229, 'ql7.jpg', 77),
(230, 'ql8.jpg', 77),
(231, 'ql9.jpg', 77),
(232, 'ql10.jpg', 78),
(233, 'ql11.jpg', 78),
(234, 'ql12.jpg', 78),
(235, 'ql13.jpg', 79),
(236, 'ql14.jpg', 79),
(237, 'ql15.jpg', 79),
(238, 'ql16.jpg', 80),
(239, 'ql17.jpg', 80),
(240, 'ql18.jpg', 80),
(241, 'ql19.jpg', 81),
(242, 'ql20.jpg', 81),
(243, 'ql21.jpg', 81),
(244, 'gn1.jpg', 82),
(245, 'gn2.jpg', 82),
(246, 'gn3.jpg', 82),
(247, 'gn4.jpg', 83),
(248, 'gn5.jpg', 83),
(249, 'gn6.jpg', 83),
(250, 'gn7.jpg', 84),
(251, 'gn8.jpg', 84),
(252, 'gn9.jpg', 84),
(253, 'gn10.jpg', 85),
(254, 'gn11.jpg', 85),
(255, 'gn12.jpg', 85);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `list_order`
--

CREATE TABLE `list_order` (
  `id_order` int(11) NOT NULL,
  `name_buyer` varchar(20) NOT NULL,
  `product` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`product`))
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `list_order`
--

INSERT INTO `list_order` (`id_order`, `name_buyer`, `product`) VALUES
(1, 'Client195', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(2, 'Client240', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(3, 'Client238', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(4, 'Client244', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(5, 'Client270', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(6, 'Client290', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(7, 'Client231', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(8, 'Client261', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(9, 'Client278', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(10, 'Client284', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(11, 'Client286', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(12, 'Client282', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(13, 'Client272', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(14, 'Client374', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(15, 'Client208', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(16, 'Client79', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(17, 'Client292', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(18, 'Client191', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(19, 'Client258', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(20, 'Client265', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(21, 'Client260', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(22, 'Client335', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(23, 'Client285', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(24, 'Client252', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(25, 'Client235', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(26, 'Client140', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(27, 'Client199', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(28, 'Client324', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(29, 'Client188', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(30, 'Client277', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(31, 'Client249', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(32, 'Client281', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(33, 'Client257', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(34, 'Client233', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(35, 'Client293', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(36, 'Client98', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(37, 'Client267', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(38, 'Client300', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(39, 'Client279', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(40, 'Client210', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(41, 'Client254', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(42, 'Client273', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(43, 'Client323', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(44, 'Client275', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(45, 'Client316', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(46, 'Client340', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(47, 'Client268', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(48, 'Client251', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(49, 'Client331', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(50, 'Client230', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(51, 'Client315', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(52, 'Client319', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(53, 'Client184', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(54, 'Client220', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(55, 'Client263', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(56, 'Client225', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(57, 'Client236', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(58, 'Client250', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(59, 'Client344', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(60, 'Client239', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(61, 'Client237', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(62, 'Client200', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(63, 'Client192', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(64, 'Client245', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(65, 'Client308', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(66, 'Client247', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(67, 'Client246', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(68, 'Client160', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(69, 'Client269', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(70, 'Client336', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(71, 'Client187', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(72, 'Client307', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(73, 'Client207', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(74, 'Client264', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(75, 'Client203', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(76, 'Client280', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(77, 'Client216', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(78, 'Client76', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(79, 'Client248', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(80, 'Client296', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(81, 'Client259', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(82, 'Client243', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(83, 'Client227', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(84, 'Client215', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(85, 'Client135', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(86, 'Client276', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(87, 'Client122', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(88, 'Client146', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(89, 'Client303', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(90, 'Client134', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(91, 'Client110', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(92, 'Client89', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(93, 'Client388', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(94, 'Client49', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(95, 'Client137', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(96, 'Client354', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(97, 'Client473', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(98, 'Client83', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(99, 'Client241', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(100, 'Client387', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(101, 'Client493', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(102, 'Client317', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(103, 'Client152', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(104, 'Client313', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(105, 'Client489', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(106, 'Client435', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(107, 'Client6', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(108, 'Client297', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(109, 'Client102', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(110, 'Client367', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(111, 'Client479', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(112, 'Client50', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(113, 'Client159', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(114, 'Client355', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(115, 'Client106', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(116, 'Client25', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(117, 'Client77', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(118, 'Client131', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(119, 'Client426', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(120, 'Client57', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(121, 'Client148', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(122, 'Client362', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(123, 'Client393', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(124, 'Client453', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(125, 'Client462', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(126, 'Client322', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(127, 'Client19', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(128, 'Client412', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(129, 'Client63', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(130, 'Client232', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(131, 'Client156', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(132, 'Client305', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(133, 'Client454', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(134, 'Client457', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(135, 'Client404', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(136, 'Client416', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(137, 'Client18', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(138, 'Client470', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(139, 'Client395', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(140, 'Client497', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(141, 'Client424', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(142, 'Client475', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(143, 'Client228', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(144, 'Client177', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(145, 'Client170', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(146, 'Client166', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(147, 'Client427', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(148, 'Client436', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(149, 'Client459', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(150, 'Client390', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(151, 'Client310', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(152, 'Client494', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(153, 'Client481', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(154, 'Client10', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(155, 'Client408', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(156, 'Client440', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(157, 'Client420', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(158, 'Client471', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(159, 'Client486', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(160, 'Client298', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(161, 'Client485', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(162, 'Client213', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(163, 'Client204', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(164, 'Client125', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(165, 'Client372', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(166, 'Client53', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(167, 'Client371', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(168, 'Client407', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(169, 'Client345', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(170, 'Client431', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(171, 'Client349', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(172, 'Client155', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(173, 'Client488', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(174, 'Client168', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(175, 'Client347', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(176, 'Client438', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(177, 'Client466', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(178, 'Client465', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(179, 'Client132', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(180, 'Client397', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(181, 'Client109', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(182, 'Client474', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(183, 'Client23', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(184, 'Client430', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(185, 'Client58', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(186, 'Client373', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(187, 'Client491', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(188, 'Client20', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(189, 'Client35', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(190, 'Client44', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(191, 'Client1', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(192, 'Client26', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(193, 'Client495', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(194, 'Client461', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(195, 'Client85', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(196, 'Client450', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(197, 'Client434', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(198, 'Client499', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(199, 'Client291', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(200, 'Client68', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(201, 'Client463', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(202, 'Client47', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(203, 'Client410', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(204, 'Client42', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(205, 'Client52', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(206, 'Client2', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(207, 'Client51', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(208, 'Client444', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(209, 'Client27', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(210, 'Client171', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(211, 'Client472', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(212, 'Client428', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(213, 'Client480', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(214, 'Client443', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(215, 'Client62', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(216, 'Client425', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(217, 'Client99', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(218, 'Client59', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(219, 'Client415', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(220, 'Client15', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(221, 'Client114', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(222, 'Client328', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(223, 'Client402', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(224, 'Client139', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(225, 'Client179', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(226, 'Client180', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(227, 'Client464', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(228, 'Client154', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(229, 'Client487', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(230, 'Client496', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(231, 'Client477', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(232, 'Client287', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(233, 'Client217', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(234, 'Client66', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(235, 'Client147', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(236, 'Client455', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(237, 'Client112', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(238, 'Client452', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(239, 'Client456', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(240, 'Client43', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(241, 'Client14', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(242, 'Client90', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(243, 'Client467', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(244, 'Client182', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(245, 'Client483', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(246, 'Client484', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(247, 'Client283', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(248, 'Client476', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(249, 'Client126', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(250, 'Client107', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(251, 'Client0', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(252, 'Client288', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(253, 'Client174', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(254, 'Client7', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(255, 'Client103', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(256, 'Client111', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(257, 'Client399', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(258, 'Client468', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(259, 'Client403', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(260, 'Client115', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(261, 'Client359', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(262, 'Client363', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(263, 'Client95', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(264, 'Client302', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(265, 'Client422', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(266, 'Client256', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(267, 'Client45', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(268, 'Client81', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(269, 'Client242', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(270, 'Client325', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(271, 'Client385', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(272, 'Client190', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(273, 'Client382', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(274, 'Client451', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(275, 'Client165', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(276, 'Client186', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(277, 'Client116', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(278, 'Client441', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(279, 'Client9', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(280, 'Client446', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(281, 'Client36', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(282, 'Client101', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(283, 'Client4', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(284, 'Client54', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(285, 'Client205', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(286, 'Client312', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]');
INSERT INTO `list_order` (`id_order`, `name_buyer`, `product`) VALUES
(287, 'Client145', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(288, 'Client360', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(289, 'Client384', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(290, 'Client421', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(291, 'Client118', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(292, 'Client445', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(293, 'Client46', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(294, 'Client482', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(295, 'Client11', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(296, 'Client366', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(297, 'Client255', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(298, 'Client127', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(299, 'Client167', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(300, 'Client396', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(301, 'Client84', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(302, 'Client469', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(303, 'Client162', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(304, 'Client318', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(305, 'Client391', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(306, 'Client447', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(307, 'Client314', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(308, 'Client73', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(309, 'Client183', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(310, 'Client164', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(311, 'Client460', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(312, 'Client368', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(313, 'Client153', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(314, 'Client339', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(315, 'Client411', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(316, 'Client8', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(317, 'Client419', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(318, 'Client60', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(319, 'Client369', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(320, 'Client12', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(321, 'Client383', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(322, 'Client262', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(323, 'Client380', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(324, 'Client376', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(325, 'Client364', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(326, 'Client423', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(327, 'Client309', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(328, 'Client490', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(329, 'Client321', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(330, 'Client370', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(331, 'Client379', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(332, 'Client304', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(333, 'Client271', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(334, 'Client417', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(335, 'Client401', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(336, 'Client375', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(337, 'Client458', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(338, 'Client343', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(339, 'Client352', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(340, 'Client442', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(341, 'Client69', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(342, 'Client332', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(343, 'Client418', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(344, 'Client351', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(345, 'Client348', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(346, 'Client386', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(347, 'Client381', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(348, 'Client414', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(349, 'Client295', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(350, 'Client478', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(351, 'Client72', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(352, 'Client320', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(353, 'Client365', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(354, 'Client353', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(355, 'Client400', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(356, 'Client358', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(357, 'Client113', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(358, 'Client311', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(359, 'Client405', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(360, 'Client449', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(361, 'Client337', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(362, 'Client357', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(363, 'Client266', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(364, 'Client389', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(365, 'Client432', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(366, 'Client356', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(367, 'Client409', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(368, 'Client361', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(369, 'Client392', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(370, 'Client439', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(371, 'Client394', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(372, 'Client433', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(373, 'Client406', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(374, 'Client378', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(375, 'Client413', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(376, 'Client40', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(377, 'Client398', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(378, 'Client329', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(379, 'Client108', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(380, 'Client341', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(381, 'Client377', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(382, 'Client100', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(383, 'Client429', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(384, 'Client219', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(385, 'Client289', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(386, 'Client197', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(387, 'Client338', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(388, 'Client93', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(389, 'Client61', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(390, 'Client334', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(391, 'Client299', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(392, 'Client121', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(393, 'Client71', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(394, 'Client28', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(395, 'Client105', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(396, 'Client82', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(397, 'Client13', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(398, 'Client194', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(399, 'Client301', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(400, 'Client169', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(401, 'Client492', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(402, 'Client333', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(403, 'Client330', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(404, 'Client448', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(405, 'Client209', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(406, 'Client350', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(407, 'Client3', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(408, 'Client437', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(409, 'Client56', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(410, 'Client326', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(411, 'Client342', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(412, 'Client75', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(413, 'Client22', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(414, 'Client123', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(415, 'Client229', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(416, 'Client149', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(417, 'Client178', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(418, 'Client306', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(419, 'Client176', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(420, 'Client37', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(421, 'Client128', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(422, 'Client223', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(423, 'Client346', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(424, 'Client92', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(425, 'Client294', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(426, 'Client117', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(427, 'Client161', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(428, 'Client130', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(429, 'Client498', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(430, 'Client70', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(431, 'Client64', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(432, 'Client21', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(433, 'Client253', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(434, 'Client30', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(435, 'Client97', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(436, 'Client34', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(437, 'Client222', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(438, 'Client32', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(439, 'Client198', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(440, 'Client151', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(441, 'Client5', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(442, 'Client120', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(443, 'Client181', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(444, 'Client16', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(445, 'Client202', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(446, 'Client138', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(447, 'Client206', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(448, 'Client157', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(449, 'Client201', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(450, 'Client94', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(451, 'Client29', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(452, 'Client214', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(453, 'Client17', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(454, 'Client144', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(455, 'Client211', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(456, 'Client55', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(457, 'Client142', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(458, 'Client158', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(459, 'Client172', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(460, 'Client212', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(461, 'Client119', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(462, 'Client124', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(463, 'Client274', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(464, 'Client150', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(465, 'Client33', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(466, 'Client41', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(467, 'Client224', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(468, 'Client91', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(469, 'Client74', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(470, 'Client185', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(471, 'Client24', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(472, 'Client221', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(473, 'Client141', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(474, 'Client129', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(475, 'Client39', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(476, 'Client78', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(477, 'Client133', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(478, 'Client88', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(479, 'Client193', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(480, 'Client175', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(481, 'Client136', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(482, 'Client87', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(483, 'Client96', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(484, 'Client67', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(485, 'Client65', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(486, 'Client38', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(487, 'Client86', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(488, 'Client226', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(489, 'Client80', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(490, 'Client163', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(491, 'Client327', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(492, 'Client173', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(493, 'Client218', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(494, 'Client234', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(495, 'Client31', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(496, 'Client104', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(497, 'Client143', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(498, 'Client48', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(499, 'Client189', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(500, 'Client507', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(501, 'Client511', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(502, 'Client516', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(503, 'Client504', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(504, 'Client196', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(505, 'Client501', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(506, 'Client505', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(507, 'Client554', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(508, 'Client506', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(509, 'Client550', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(510, 'Client559', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(511, 'Client551', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(512, 'Client538', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(513, 'Client528', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(514, 'Client555', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(515, 'Client500', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(516, 'Client544', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(517, 'Client543', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(518, 'Client533', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(519, 'Client557', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(520, 'Client545', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(521, 'Client503', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(522, 'Client502', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(523, 'Client518', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(524, 'Client558', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(525, 'Client519', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(526, 'Client536', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(527, 'Client532', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(528, 'Client541', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(529, 'Client522', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(530, 'Client515', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(531, 'Client521', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(532, 'Client553', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(533, 'Client514', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(534, 'Client509', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(535, 'Client525', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(536, 'Client513', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(537, 'Client527', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(538, 'Client526', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(539, 'Client524', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(540, 'Client534', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(541, 'Client523', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(542, 'Client542', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(543, 'Client531', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(544, 'Client517', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(545, 'Client510', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(546, 'Client508', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(547, 'Client556', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(548, 'Client583', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(549, 'Client530', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(550, 'Client802', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(551, 'Client546', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(552, 'Client569', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(553, 'Client572', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(554, 'Client567', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(555, 'Client566', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(556, 'Client686', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(557, 'Client661', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(558, 'Client667', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(559, 'Client689', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(560, 'Client675', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(561, 'Client690', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(562, 'Client735', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(563, 'Client679', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(564, 'Client687', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(565, 'Client712', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(566, 'Client568', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(567, 'Client707', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(568, 'Client702', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(569, 'Client678', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(570, 'Client696', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(571, 'Client574', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]');
INSERT INTO `list_order` (`id_order`, `name_buyer`, `product`) VALUES
(572, 'Client632', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(573, 'Client593', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(574, 'Client776', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(575, 'Client753', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(576, 'Client703', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(577, 'Client731', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(578, 'Client761', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(579, 'Client778', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(580, 'Client602', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(581, 'Client770', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(582, 'Client704', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(583, 'Client547', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(584, 'Client799', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(585, 'Client623', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(586, 'Client646', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(587, 'Client638', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(588, 'Client628', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(589, 'Client715', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(590, 'Client739', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(591, 'Client767', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(592, 'Client548', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(593, 'Client573', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(594, 'Client769', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(595, 'Client796', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(596, 'Client777', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(597, 'Client779', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(598, 'Client605', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(599, 'Client520', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(600, 'Client595', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(601, 'Client606', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(602, 'Client552', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(603, 'Client768', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(604, 'Client591', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(605, 'Client749', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(606, 'Client790', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(607, 'Client798', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(608, 'Client780', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(609, 'Client706', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(610, 'Client588', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(611, 'Client610', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(612, 'Client537', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(613, 'Client630', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(614, 'Client596', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(615, 'Client590', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(616, 'Client601', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(617, 'Client657', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(618, 'Client600', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(619, 'Client619', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(620, 'Client539', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(621, 'Client512', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(622, 'Client622', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(623, 'Client625', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(624, 'Client607', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(625, 'Client652', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(626, 'Client603', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(627, 'Client658', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(628, 'Client684', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(629, 'Client635', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(630, 'Client654', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(631, 'Client656', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(632, 'Client650', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(633, 'Client647', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(634, 'Client649', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(635, 'Client651', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(636, 'Client653', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(637, 'Client592', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(638, 'Client640', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(639, 'Client655', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(640, 'Client604', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(641, 'Client644', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(642, 'Client648', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(643, 'Client626', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(644, 'Client642', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(645, 'Client641', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(646, 'Client643', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(647, 'Client765', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(648, 'Client637', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(649, 'Client587', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(650, 'Client611', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(651, 'Client614', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(652, 'Client634', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(653, 'Client636', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(654, 'Client624', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(655, 'Client639', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(656, 'Client618', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(657, 'Client620', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(658, 'Client621', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(659, 'Client608', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(660, 'Client594', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(661, 'Client597', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(662, 'Client633', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(663, 'Client616', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(664, 'Client613', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(665, 'Client609', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(666, 'Client691', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(667, 'Client631', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(668, 'Client585', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(669, 'Client677', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(670, 'Client766', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(671, 'Client629', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(672, 'Client615', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(673, 'Client688', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(674, 'Client668', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(675, 'Client671', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(676, 'Client549', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(677, 'Client673', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(678, 'Client685', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(679, 'Client695', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(680, 'Client692', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(681, 'Client708', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(682, 'Client672', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(683, 'Client711', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(684, 'Client720', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(685, 'Client716', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(686, 'Client697', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(687, 'Client740', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(688, 'Client725', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(689, 'Client722', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(690, 'Client734', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(691, 'Client645', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(692, 'Client529', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(693, 'Client659', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(694, 'Client662', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(695, 'Client732', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(696, 'Client729', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(697, 'Client738', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(698, 'Client669', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(699, 'Client717', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(700, 'Client728', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(701, 'Client727', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(702, 'Client670', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(703, 'Client564', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(704, 'Client540', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(705, 'Client736', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(706, 'Client535', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(707, 'Client751', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(708, 'Client565', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(709, 'Client741', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(710, 'Client730', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(711, 'Client733', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(712, 'Client575', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(713, 'Client758', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(714, 'Client759', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(715, 'Client581', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(716, 'Client578', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(717, 'Client582', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(718, 'Client577', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(719, 'Client744', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(720, 'Client737', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(721, 'Client719', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(722, 'Client757', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(723, 'Client750', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(724, 'Client562', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(725, 'Client743', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(726, 'Client714', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(727, 'Client713', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(728, 'Client718', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(729, 'Client709', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(730, 'Client710', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(731, 'Client676', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(732, 'Client742', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(733, 'Client598', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(734, 'Client674', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(735, 'Client682', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(736, 'Client698', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(737, 'Client721', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(738, 'Client724', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(739, 'Client726', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(740, 'Client723', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(741, 'Client794', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(742, 'Client612', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(743, 'Client599', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(744, 'Client683', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(745, 'Client617', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(746, 'Client819', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(747, 'Client701', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(748, 'Client705', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(749, 'Client700', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(750, 'Client664', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(751, 'Client694', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(752, 'Client665', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(753, 'Client627', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(754, 'Client584', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(755, 'Client680', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(756, 'Client663', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(757, 'Client747', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(758, 'Client756', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(759, 'Client760', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(760, 'Client660', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(761, 'Client579', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(762, 'Client755', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(763, 'Client762', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(764, 'Client745', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(765, 'Client589', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(766, 'Client571', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(767, 'Client752', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(768, 'Client666', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(769, 'Client746', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(770, 'Client775', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(771, 'Client570', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(772, 'Client576', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(773, 'Client764', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(774, 'Client800', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(775, 'Client560', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(776, 'Client781', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(777, 'Client580', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(778, 'Client782', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(779, 'Client789', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(780, 'Client699', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(781, 'Client787', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(782, 'Client797', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(783, 'Client795', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(784, 'Client563', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(785, 'Client586', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(786, 'Client693', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(787, 'Client681', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(788, 'Client772', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(789, 'Client763', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(790, 'Client771', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(791, 'Client812', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(792, 'Client792', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(793, 'Client783', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(794, 'Client774', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(795, 'Client786', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(796, 'Client784', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(797, 'Client561', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(798, 'Client821', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(799, 'Client748', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(800, 'Client809', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(801, 'Client829', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(802, 'Client801', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(803, 'Client806', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(804, 'Client823', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(805, 'Client828', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(806, 'Client808', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(807, 'Client824', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(808, 'Client827', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(809, 'Client810', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(810, 'Client785', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(811, 'Client863', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(812, 'Client921', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(813, 'Client813', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(814, 'Client918', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(815, 'Client803', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(816, 'Client859', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(817, 'Client873', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(818, 'Client930', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(819, 'Client903', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(820, 'Client883', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(821, 'Client932', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(822, 'Client935', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(823, 'Client832', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(824, 'Client897', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(825, 'Client896', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(826, 'Client908', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(827, 'Client919', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(828, 'Client920', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(829, 'Client893', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(830, 'Client866', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(831, 'Client889', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(832, 'Client864', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(833, 'Client846', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(834, 'Client875', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(835, 'Client917', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(836, 'Client926', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(837, 'Client905', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(838, 'Client927', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(839, 'Client860', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(840, 'Client902', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(841, 'Client906', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(842, 'Client833', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(843, 'Client839', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(844, 'Client855', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(845, 'Client912', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(846, 'Client931', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(847, 'Client870', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(848, 'Client911', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(849, 'Client862', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(850, 'Client888', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(851, 'Client837', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(852, 'Client923', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(853, 'Client838', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(854, 'Client836', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(855, 'Client874', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(856, 'Client820', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]');
INSERT INTO `list_order` (`id_order`, `name_buyer`, `product`) VALUES
(857, 'Client887', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(858, 'Client914', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(859, 'Client895', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(860, 'Client841', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(861, 'Client854', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(862, 'Client901', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(863, 'Client856', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(864, 'Client915', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(865, 'Client978', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(866, 'Client990', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(867, 'Client922', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(868, 'Client996', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(869, 'Client995', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(870, 'Client891', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(871, 'Client999', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(872, 'Client981', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(873, 'Client843', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(874, 'Client909', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(875, 'Client934', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(876, 'Client890', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(877, 'Client979', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(878, 'Client946', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(879, 'Client980', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(880, 'Client948', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(881, 'Client972', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(882, 'Client868', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(883, 'Client998', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(884, 'Client951', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(885, 'Client984', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(886, 'Client953', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(887, 'Client929', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(888, 'Client997', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(889, 'Client968', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(890, 'Client992', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(891, 'Client977', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(892, 'Client988', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(893, 'Client994', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(894, 'Client954', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(895, 'Client958', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(896, 'Client971', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(897, 'Client975', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(898, 'Client957', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(899, 'Client959', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(900, 'Client967', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(901, 'Client963', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(902, 'Client989', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(903, 'Client955', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(904, 'Client969', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(905, 'Client986', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(906, 'Client964', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(907, 'Client993', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(908, 'Client965', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(909, 'Client881', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(910, 'Client970', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(911, 'Client949', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(912, 'Client974', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(913, 'Client982', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(914, 'Client962', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(915, 'Client983', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(916, 'Client991', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(917, 'Client961', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(918, 'Client956', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(919, 'Client865', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(920, 'Client805', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(921, 'Client807', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(922, 'Client845', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(923, 'Client960', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(924, 'Client850', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(925, 'Client818', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(926, 'Client880', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(927, 'Client853', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(928, 'Client907', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(929, 'Client966', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(930, 'Client835', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(931, 'Client830', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(932, 'Client825', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(933, 'Client822', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(934, 'Client791', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(935, 'Client811', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(936, 'Client773', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(937, 'Client834', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(938, 'Client754', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(939, 'Client788', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(940, 'Client793', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(941, 'Client815', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(942, 'Client867', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(943, 'Client936', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(944, 'Client925', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(945, 'Client847', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(946, 'Client804', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(947, 'Client831', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(948, 'Client826', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(949, 'Client882', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(950, 'Client899', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(951, 'Client844', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(952, 'Client840', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(953, 'Client892', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(954, 'Client985', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(955, 'Client937', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(956, 'Client876', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(957, 'Client857', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(958, 'Client944', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(959, 'Client842', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(960, 'Client952', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(961, 'Client878', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(962, 'Client816', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(963, 'Client904', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(964, 'Client939', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(965, 'Client987', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(966, 'Client872', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(967, 'Client947', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(968, 'Client976', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(969, 'Client852', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(970, 'Client884', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(971, 'Client913', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(972, 'Client938', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(973, 'Client858', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(974, 'Client943', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(975, 'Client940', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(976, 'Client945', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(977, 'Client924', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(978, 'Client941', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(979, 'Client848', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(980, 'Client871', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(981, 'Client928', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(982, 'Client898', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(983, 'Client950', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(984, 'Client900', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(985, 'Client886', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(986, 'Client894', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(987, 'Client869', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(988, 'Client817', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(989, 'Client910', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(990, 'Client916', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(991, 'Client933', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(992, 'Client973', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(993, 'Client851', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(994, 'Client861', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(995, 'Client877', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(996, 'Client885', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(997, 'Client942', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(998, 'Client879', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(999, 'Client814', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]'),
(1000, 'Client849', '[{\"nameProduct\":\"SamPham1\",\"nameSeller\":\"NguoiBan1\",\"price\":20000},{\"nameProduct\":\"SamPham2\",\"nameSeller\":\"NguoiBan1\",\"price\":25000}]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_list`
--

CREATE TABLE `order_list` (
  `id` bigint(11) NOT NULL,
  `user_info` bigint(20) NOT NULL,
  `total_price` decimal(11,2) DEFAULT NULL,
  `has_process` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `order_list`
--

INSERT INTO `order_list` (`id`, `user_info`, `total_price`, `has_process`) VALUES
(1, 6, 4647000.00, 0),
(2, 6, 0.00, 0),
(3, 6, 0.00, 0),
(4, 6, 0.00, 0),
(5, 2, 0.00, 0),
(6, 2, 0.00, 0),
(7, 2, 0.00, 0),
(8, 2, 0.00, 0),
(9, 2, 0.00, 0),
(10, 2, 0.00, 0),
(11, 2, 0.00, 0),
(12, 2, 0.00, 0),
(13, 2, 0.00, 0),
(14, 2, 0.00, 0),
(15, 2, 0.00, 0),
(16, 2, 0.00, 0),
(17, 2, 0.00, 0),
(18, 2, 0.00, 0),
(19, 2, 0.00, 0),
(20, 2, 0.00, 0),
(21, 2, 0.00, 0),
(22, 2, 0.00, 0),
(23, 2, 0.00, 0),
(24, 2, 3640000.00, 0),
(25, 2, 3640000.00, 0),
(26, 2, 745000.00, 0),
(27, 2, 745000.00, 0),
(28, 2, 745000.00, 0),
(29, 2, 745000.00, 0),
(30, 2, 1490000.00, 0),
(31, 2, 1490000.00, 0),
(32, 2, 1665000.00, 0),
(33, 2, 807000.00, 0),
(34, 2, 807000.00, 0),
(35, 2, 1734000.00, 0),
(36, 2, 1490000.00, 0),
(37, 2, 598000.00, 0),
(38, 2, 449000.00, 0),
(39, 2, 898000.00, 0),
(40, 2, 990000.00, 0),
(41, 2, 898000.00, 0),
(42, 2, 1439000.00, 0),
(43, 2, 30111000.00, 0),
(44, 2, 60222000.00, 0),
(45, 2, 2970000.00, 0),
(46, 2, 2475000.00, 0),
(47, 2, 2337000.00, 0),
(48, 2, 5274000.00, 0),
(49, 2, 5418000.00, 0),
(50, 2, 9810000.00, 0),
(51, 1, 2841000.00, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `person`
--

INSERT INTO `person` (`id`, `name`, `address_id`) VALUES
(1, 'loda', 3),
(2, 'loda', 4),
(4, 'nbva', 6),
(5, 'thma', 6),
(8, 'nbva', 8),
(9, 'thma', 8),
(10, 'nbva', 9),
(11, 'thma', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` bigint(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `cartegory` varchar(255) DEFAULT NULL,
  `price` bigint(255) NOT NULL,
  `description` text NOT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `num_evaluate` int(11) NOT NULL,
  `num_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `product_name`, `cartegory`, `price`, `description`, `gender`, `rate`, `num_evaluate`, `num_order`) VALUES
(1, 'Áo sơ mi Tencel dáng oversize', NULL, 625000, 'Áo sơ mi cổ đức, dáng oversize với thiết kế tay ngắn kèm dây buộc nơ tạo kiểu. Dọc thân áo là khuy cài kim loại thanh lịch. Áo xẻ tà 2 bên. Phía trước có 2 túi vuông trẻ trung', 'Nữ', 2.00, 1, 3),
(2, 'Áo sơ mi Tencel tay ngắn', NULL, 693000, 'Áo sơ mi cổ đức. Tay liền có gấu. Dáng áo xuông, 2 bên xẻ kiểu đuôi tôm. Cài bằng hàng khuy đôi có tà ẩn', 'Nữ', 0.00, 0, 4),
(3, 'Áo sơ mi tay lửng thắt nơ', NULL, 665000, 'Áo sơ mi cổ đức. Tay lửng. Dáng áo xuông, cài bằng hàng khuy đôi', 'Nữ', 3.50, 2, 0),
(4, 'Áo sơ mi croptop bo eo', NULL, 623000, 'Áo sơ mi với thiết kế sơ mi cách điệu croptop vô cùng sành điệu và tinh tế, mang đến cho người mặc phong cách thanh lịch và hiện đại', 'Nữ', 0.00, 0, 0),
(5, 'Áo sơ mi hoa tiết ren	', NULL, 763000, 'Chất liệu sợi vải mềm mịn, thoáng mát được tuyển chọn cẩn thận để đảm bảo sự thoải mái tuyệt đối khi mặc vào. Kiểu dáng áo dài thướt tha sẽ tôn lên vẻ đẹp sang trọng', 'Nữ', 0.00, 0, 0),
(6, 'Áo sơ mi tay xếp', NULL, 763000, 'Áo sơ mi cổ đức vải lụa trơn. Thiết kế dấu khuy tinh tế. Ống tay được xếp tầng và bo nhẹ. Dáng xuông và dài vừa phải', 'Nữ', 0.00, 0, 0),
(7, 'Áo sơ mi lụa khuy kiểu', NULL, 763000, 'Áo cổ đức cổ điển, được làm mới thân trước hiện đại kết hợp các điểm nhấn xếp li độc đáo', 'Nữ', 0.00, 0, 0),
(8, 'Áo sơ mi dây rút eo', NULL, 595000, 'Áo với thiết kế cổ đức dài tay cùng dáng suông và chất liệu thô mềm, giúp mang lại cho người diện cảm giác thoải mái và phóng khoáng', 'Nữ', 5.00, 1, 0),
(9, 'Áo sơ mi TENCEL', NULL, 795000, 'Áo sơ mi cổ đức, dáng oversize với thiết kế tay ngắn kèm dây buộc nơ tạo kiểu. Dọc thân áo là khuy cài kim loại thanh lịch. Áo xẻ tà 2 bên. Phía trước có 2 túi vuông trẻ trung', 'Nữ', 0.00, 0, 0),
(10, 'Áo sơ mi lụa cánh tiên', NULL, 623000, 'Áo thiết kế cổ tròn, tay cánh tiên, trẻ trung và mát mẻ trong những ngày hè. Chất liệu lụa mỏng nhẹ, dáng áo suông phù hợp mix cùng nhiều kiểu quần, chân váy khác nhau', 'Nữ', 0.00, 0, 0),
(11, 'Áo thun len ngắn tay phối kẻ ngang', NULL, 763000, 'Áo len ngắn tay được thiết kế với chất liệu len chọn lọc cao cấp, tạo nên hình ảnh mềm mại và sang trọng. Điểm nhấn nằm ở họa tiết kẻ ngang đầy ấn tượng trên nền màu áo đổi lập', 'Nữ', 0.00, 0, 0),
(12, 'Áo thun đính chữ nổi', NULL, 763000, 'Áo thun cổ tròn. Tay áo ngắn. Dáng áo xuông. Mặt trước in chữ khác màu', 'Nữ', 0.00, 0, 0),
(13, 'Áo thun đính hoa', NULL, 325000, 'Áo thun cổ tròn, tay ngắn. Dáng dài suông. Mặt trước trang trí bông hoa tạo kiểu', 'Nữ', 0.00, 0, 0),
(14, 'Áo thun in họa tiết vẽ', NULL, 345000, 'Áo phông dáng oversize, tay ngắn, cổ tròn. Cổ có viền màu, phía trước ngực in họa tiết vẽ độc đáo. Chất liệu vải thun thoáng mát, co giãn nhẹ', 'Nữ', 0.00, 0, 0),
(15, 'Áo thun trơn cổ đức khuy ngọc trai', NULL, 345000, 'Áo thun cổ đức, cài bằng hàng khuy ngọc trai phía trước. Kiểu dáng, màu sắc basic, dáng suông cơ bản', 'Nữ', 0.00, 0, 0),
(16, 'Áo thun be creative', NULL, 455000, 'Áo thun cổ tròn. Tay áo ngắn. Dáng áo xuông. Mặt trước in chữ khác màu', 'Nữ', 0.00, 0, 0),
(17, 'Áo phối chữ love', NULL, 395000, 'Áo chất thun, cổ tròn, tay ngắn, dáng suông. Trên ngực được phối chữ Love may nổi', 'Nữ', 0.00, 0, 2),
(18, 'Áo phối be phối chữ nổi', NULL, 455000, 'Áo thun cổ tròn. Tay áo ngắn. Dáng áo xuông. Mặt trước in chữ khác màu', 'Nữ', 0.00, 0, 16),
(19, 'Chân váy xếp ly dáng suông', NULL, 545000, 'Chân váy sở hữu thiết kế xếp ly tinh tế tạo ra những uyển chuyển thướt tha khi di chuyển', 'Nữ', 0.00, 0, 0),
(20, 'Chân váy xếp ly dáng xòe', NULL, 625000, 'Chân váy xếp ly xòe cạp cao. Tùng dài qua gối, cạp phối khuy tạo kiểu. Cài bằng khóa kéo ẩn bên hông', 'Nữ', 0.00, 0, 0),
(21, 'Chân váy xòe phối ly', NULL, 875000, 'Với chất liệu vải khaki đứng dáng nhưng không kém phần êm ái, thoải mái cho người mặc, đồng thời cũng rất dễ phối đồ', 'Nữ', 0.00, 0, 1),
(22, 'Chân váy xếp ly xẻ tà trước', NULL, 745000, 'Thiết kế chân váy xếp ly xòe nhẹ, độ dài qua đầu gối. Cạp cao ôm eo tôn lên vòng 2 của nàng. Điểm nhấn là chi tiết xẻ tà cá tính. Cài bằng khóa kéo ẩn phía sau', 'Nữ', 0.00, 0, 0),
(23, 'Chân váy chữ A phối viền hoa nổi', NULL, 445000, 'Được thiết kế với chất liệu tuytsi tuyển chọn giúp tạo nên sự thoải mái và độ bền cao. Chiếc váy có phom dáng chữ A, mang đến vẻ thanh lịch và trang nhã cho người diện', 'Nữ', 0.00, 0, 0),
(24, 'Chân váy MIDI phối ren', NULL, 625000, 'Thiết kế của chân váy được may từ hai lớp vải tinh tế. Ngoài là lớp ren hoa may nổi được điểm trên thân váy, mang đến vẻ ngoài lộng lẫy và thu hút ánh nhìn', 'Nữ', 0.00, 0, 8),
(25, 'Chân váy xếp ly xẻ tà trước', NULL, 745000, 'Thiết kế chân váy xếp ly xòe nhẹ, độ dài qua đầu gối. Cạp cao ôm eo tôn lên vòng 2 của nàng. Điểm nhấn là chi tiết xẻ tà cá tính. Cài bằng khóa kéo ẩn phía sau', 'Nữ', 0.00, 0, 10),
(26, 'Quần jaens Baggy', NULL, 763000, 'Mẫu quần Jeans Baggy cạp cao được lựa chọn là item không thế thiếu trong tủ đồ của bất kì bạn nữ nào. Với chất liệu denim cao cấp, sản phẩm có độ bền cao', 'Nữ', 0.00, 0, 0),
(27, 'Quần Jeans túi vuông', NULL, 763000, 'Hách dáng cùng mẫu quần jeans ống suông mới nhất. Nàng dễ dàng mix với nhiều kiểu áo khác nhau để thể hiện vẻ đẹp tự tin, cá tính của mình', 'Nữ', 0.00, 0, 0),
(28, 'Quần Jeans loe xẻ gấu', NULL, 545000, 'Đầu tuần chỉn chu và lịch sự với mẫu quần jean form ôm, ống xẻ gấu loe nhẹ. Chất liệu Demin cao cấp, có độ co giãn nhẹ, diện thoải mái không lo bí bách', 'Nữ', 0.00, 0, 18),
(29, 'Quần Jean lưng cao', NULL, 495000, 'Với chất liệu denim cao cấp, sản phẩm có độ bền cao, đảm bảo bạn có thể mặc nó lâu dài mà không lo sợ sự mài mòn hay rách.', 'Nữ', 0.00, 0, 18),
(30, 'Quần Jeans dáng suông', NULL, 545000, 'Quần jeans nữ dáng baggy được thiết kế với kiểu dáng suông rộng, mang đến sự thoải mái cho người mặc. Chất liệu vải denim cao cấp mang đến độ bền cao', 'Nữ', 0.00, 0, 0),
(31, 'Quần Jeans mài đù', NULL, 545000, 'Quần jeans ống đứng, độ dài ngang mắt cá chân, cạp sử dụng khóa và khuy kim loại.Chất liệu denim có độ bền cực kỳ cao cùng màu sắc xanh lơ đánh bạc, đầu gối tạo kiểu mài nhẹ vừa cá tính nhưng vẫn đủ sự tinh tế', 'Nữ', 0.00, 0, 0),
(32, 'Quần Denim ống xẻ', NULL, 357000, 'Thiết kế quần jean ống suông, rộng, dáng đứng, hơi loe về phía cuối ống. Dọc 2 bên quần có đường gấp nếp bản lớn và xẻ khoảng 10cm', 'Nữ', 0.00, 0, 0),
(33, 'Quần sooc ORGANZA', NULL, 62300, 'Quần sooc cạp cao, dáng suông, ống đúng, chất liệu Organza cao cấp, đứng phom, dày dặn, có độ bóng nhẹ', 'Nữ', 0.00, 0, 0),
(34, 'Quần sooc kaki giả váy', NULL, 553000, 'Quần sooc giả váy cạp cao giúp tôn dáng nàng. Đây là lựa chọn hoàn hảo cho nàng muốn diện dáng chân váy ngắn mà vẫn muốn sự thoải mái và kín đáo', 'Nữ', 0.00, 0, 0),
(35, 'Quần sooc bò gập gấu', NULL, 672000, 'Quần mini short dáng suông, ống gấu gập tầm 3cm được may cố định. Phía trước có túi chéo, phía sau có túi hộp', 'Nữ', 0.00, 0, 0),
(36, 'Quần sooc bóng', NULL, 623000, 'Quần sooc cạp cao, dáng suông, ống đúng', 'Nữ', 0.00, 0, 5),
(37, 'Quần sooc oống suông', NULL, 395000, 'Quần sooc cạp cao, cài bằng khóa kéo bên hông, quần có túi chéo 2 bên. Dáng ống suông.', 'Nữ', 0.00, 0, 0),
(38, 'Quần sooc dáng ngắn', NULL, 395000, 'Quần sooc vải tuysi không co giãn. Cạp cao có đỉa đeo thắt lưng. Quần dáng ngắn cùng chất liệu nhẹ mát thích hợp mặc trong những ngày hè', 'Nữ', 0.00, 0, 0),
(39, 'Quần sooc lụa trơn', NULL, 225000, 'Thiết kế quần dáng mini short. Độ dài ngang đùi, chất liệu là vải lụa trơn. Trên thân quần được sử dụng cách thiết kế xếp nếp lớn để tạo độ xòe nhẹ tự nhiên', 'Nữ', 0.00, 0, 0),
(40, 'Giày búp bê Retro', NULL, 149000, 'Giày búp bê mũi bít mang kiểu dáng cổ điển. Gót vuông cao 3cm. Chất liệu da trơn bóng, đai có đính ngọc trai mang lại vẻ thanh lịch.', 'Nữ', 0.00, 0, 0),
(41, 'Giày cao gót phối lưới', NULL, 149000, 'Giày cao gót mũi nhọn, phối lưới, gót bọc da. Gót cao 7cm.', 'Nữ', 0.00, 0, 0),
(42, 'Giày da pu mũi nhọn', NULL, 99000, 'Giày mũi nhọn bằng da PU. Có phụ kiện khác màu trang trí. Gót cao 5cm', 'Nữ', 0.00, 0, 0),
(43, 'Giày cao gót da bóng', NULL, 99000, 'Giày da bóng, mũi tù. Gót cao 4cm.', 'Nữ', 0.00, 0, 0),
(44, 'Giày mũi nhọn phối màu', NULL, 149000, 'Giày mũi nhọn, Gót nhỏ cao 3cm. 1 dây quai ngang móc cài. Phối 2 màu tạo kiểu', 'Nữ', 0.00, 0, 0),
(45, 'Túi da xách tay', NULL, 399000, 'Mẫu túi xách tay size medium, chất liệu da PU. Bên trong lót vải, có 1 ngăn ẩn. Quai xách cố định, không tháo rời và điều chỉnh được', 'Nữ', 0.00, 0, 0),
(46, 'Túi xách HOBO mini', NULL, 299000, 'Túi xách hobo mini quai cắp nách. Dáng không nắp đóng mở bằng khuy bấm nam châm. Túi hình cong, 1 ngăn lớn', 'Nữ', 0.00, 0, 0),
(47, 'Túi xách hình hộp', NULL, 399000, 'Thiết kế túi hình hộp chữ nhật kèm quai đeo vai có thể tháo rời. Hoạt tiết hình khối được cắt ghép tỉ mỉ tạo sự độc đáo', 'Nữ', 0.00, 0, 0),
(48, 'Túi big size chần bông', NULL, 399000, 'Túi xách Big size sọc chéo chần bông đan kiểu. Bên trong lót vải. Có 1 ngăn lớn dây kéo khóa bên trong có 2 ngăn nhỏ đi kèm', 'Nữ', 0.00, 0, 0),
(49, 'Túi da trơn', NULL, 676000, 'Túi da PU. Đóng mở bằng khóa kéo kim loại. Có một quai cầm tay và hai quai đeo vai có thể điều chỉnh ở phía sau.', 'Nữ', 0.00, 0, 2),
(50, 'Áo thun phối túi hộp', NULL, 207000, 'Áo thun trơn cổ tròn basic sẽ là item không thể thiếu trong những ngày hè sắp tới cho mọi chàng trai.', 'Nam', 0.00, 0, 0),
(51, 'Áo thun tropical', NULL, 195000, 'Áo phông chất thun trơn, tay ngắn, cổ tròn. Độ dài thoải mái. Phía trước có hình in phong cách Tropical phối cùng chữ.', 'Nam', 0.00, 0, 0),
(52, 'Áo thun kẻ ngang', NULL, 207000, 'Áo thun cổ tròn, tay ngắn. Họa tiết kẻ ngang và in hình cây tạo điểm nhấn. Dáng áo xuông', 'Nam', 0.00, 0, 0),
(53, 'Áo thun CITY RIDER', NULL, 147000, 'Áo thun nam cổ tròn, tay ngắn. Trang trí hình và chữ sinh động mặt trước. Dáng áo suông cơ bản', 'Nam', 0.00, 0, 0),
(54, 'Áo thun dài tay', NULL, 357000, 'Áo thun cổ đức bằng chun co giãn, cài 3 khuy cài. Tay dài bo gấu. Dáng áo suông với màu đơn sắc dễ phối hợp.', 'Nam', 0.00, 0, 0),
(55, 'Áo thin In QUOTE', NULL, 325000, 'Áo thun dáng cơ bản, ôm nhẹ nhưng không bó, có động rộng nhất định. Tay ngắn, cổ tròn.', 'Nam', 0.00, 0, 0),
(56, 'Áo thun in chữ ngang', NULL, 325000, 'Áo thun dáng cơ bản, ôm nhẹ nhưng không bó, có động rộng nhất định. Tay ngắn, cổ tròn. Phía trước được in một dòng trích dẫn từ NTK của IVY men.', 'Nam', 0.00, 0, 0),
(57, 'Áo sơ mi viền cổ', NULL, 357000, 'Áo sơ mi cổ đức, tay dài, dáng slim fit ôm nhẹ. Phần cổ có đường viền.', 'Nam', 0.00, 0, 0),
(58, 'Áo sơm mi phối line cổ', NULL, 345000, 'Áo sơ mi dáng slim fit với độ dài vừa phải. Ống tay và thân áo ôm nhẹ. Cổ áo là dáng cổ đức được phối cùng một đường line dọc', 'Nam', 0.00, 0, 0),
(59, 'Áo sơ mi DENIM', NULL, 267000, 'Sơ mi nam tay ngắn. Trên nền vải denim được đánh bạc màu giả. Phía trước có túi ngực. Ống tay gập gấu khoảng 2-3cm. Khuy cài cùng màu với nền vải', 'Nam', 0.00, 0, 0),
(60, 'Áo sơ mi nam dánh REGULAR', NULL, 387000, 'Áo sơ mi cổ đức, có 2 bên giả túi vuông có khuy trước ngực. Tay dài bo gấu và cài khuy. Cài bằng hàng khuy phía trước.', 'Nam', 0.00, 0, 0),
(61, 'Áo sơ mi họa tiết MONOGRAM', NULL, 387000, 'Áo sơ mi cổ đức, tay dài có khuy cài. Dáng áo Regular. Vải họa tiết momogram chữ IVY moda tạo điểm nhấn. Cài bằng hàng khuy phía trước.', 'Nam', 0.00, 0, 0),
(62, 'Áo sơ mi cổ phối màu', NULL, 327000, 'Áo sơ mi cổ đức phối màu hình tam giác. Tay dài bo gấu và 2 khuy cài đính kèm. Vạt áo hình phía trước. Cài bằng hàng khuy ẩn tà phía trước.', 'Nam', 0.00, 0, 0),
(63, 'Áo khoác gió cổ mũ', NULL, 537000, 'Áo khoác gió 2 lớp phom suông rộng, giúp người mặc thoải mái trong từng cử động, nhưng đồng thời vẫn đảm bảo vừa vặn về số đo vai, độ dài tay, áo', 'Nam', 0.00, 0, 0),
(64, 'Áo khoác dạ nam kẻ ô', NULL, 987000, 'Áo khoác dạ cổ 2 ve khoét chữ K. Tay dài có hàng khuy trang trí. 2 túi chéo 2 bên. Dáng áo suông dài qua mông. Cài bằng hàng khuy phía trước.', 'Nam', 0.00, 0, 2),
(65, 'Áo khoác blazer nam', NULL, 807000, 'Áo khoác blazer cổ 2 ve khoét chữ K. Tay dài. Vai đệm. 2 nắp túi bên tà và 1 viền túi giả bên ngực. Có hàng 6 khuy phía trước.', 'Nam', 0.00, 0, 3),
(66, 'Áo khoác len cardigan nam', NULL, 417000, 'Áo khoác len của nam cổ V, tay dài. Có 2 túi vuông 2 bên không nắp, gấu bo viền co giãn. Độ ôm vừa vặn quanh ngực để tạo cảm giác thoải mái khi mặc.', 'Nam', 0.00, 0, 0),
(67, 'Áo khoác nam họa tiết đen', NULL, 585000, 'Áo khoác được thiết kế ôm bo ở cổ và tay áo. Kiểu dáng basic nhưng vô cùng nổi bật với họa tiết dây xích màu vàng trên nền áo đen đầy nổi bật và vô cùng cá tính.', 'Nam', 0.00, 0, 0),
(68, 'Áo khoác nam dây đeo', NULL, 867000, 'Áo khoác gió 2 lớp phom suông rộng, giúp người mặc thoải mái trong từng cử động, nhưng đồng thời vẫn đảm bảo vừa vặn về số đo vai, độ dài tay, áo', 'Nam', 0.00, 0, 5),
(69, 'Quần bò skinny', NULL, 357000, 'Quần bò dáng skinny ôm nhẹ. Phía trước được đánh bạc sáng màu. Thiết kế năng động và trẻ trung, phù hợp cho những dịp đi chơi của chàng', 'Nam', 0.00, 0, 0),
(70, 'Quần bò vải sáng', NULL, 387000, 'Quần jeans ống đứng. Gấu lật. Có 5 túi. Mặt trước mài sáng. Cài phía trước bằng khóa kéo và khuy', 'Nam', 0.00, 0, 5),
(71, 'Quần bò đen dáng slim fit', NULL, 327000, 'Quần bò cạp sử dụng khóa và khuy kim loại. Có 5 túi. Ống quần đứng.', 'Nam', 0.00, 0, 0),
(72, 'Quần bò Regular fit', NULL, 297000, 'Quần jeans ống suông, dài qua mắt cá chân. Kiểu bạc màu. Gấu lật. Có 5 túi. Cài phía trước bằng khóa kéo và khuy.', 'Nam', 0.00, 0, 1),
(73, 'Áo khoác dạ nam dáng dài', NULL, 1107000, 'Áo khoác dạ cổ 2 ve khoét chữ K. Tay dài có 3 khuy trang trí. 2 túi vuông có nắp 2 bên. Dáng áo suông dài.', 'Nam', 0.00, 0, 0),
(74, 'Quần bò slim fit', NULL, 387000, 'Quần jean dài chạm mắt cá chân. Dáng quần ôm nhẹ, ống đứng. Chất liệu vải denim trơn, dày dặn. Đằng trước có khuy cài và khóa kéo', 'Nam', 0.00, 0, 2),
(75, 'Quần lửng vải phối sợi TENCEL', NULL, 207000, 'Quần lửng ngang gối. Có 2 túi phía trước và 2 túi có khuy cài phía sau. Nhấn đường ly cố định 2 bên ống quần.', 'Nam', 0.00, 0, 0),
(76, 'Quần lửng nam kaki', NULL, 297000, 'Quần lửng khaki ngang gối. Cạp có đỉa. Có 2 túi phía trước và 2 túi có khuy cài phía sau. Thêu chữ IVY men 1 bên viền túi', 'Nam', 0.00, 0, 0),
(77, 'Quần lửng nam thun cạp dây kéo rút', NULL, 267000, 'Quần sooc ngang gối dáng Regular. Có 2 túi chéo, 2 túi vuông có nắp bên ống quần. Có dây kéo rút, cạp chun co giãn.', 'Nam', 0.00, 0, 0),
(78, 'Quần lửng nam kaki phối xanh', NULL, 237000, 'Quần lửng khaki ngang gối. Cạp có đỉa. Có 2 túi phía trước và 2 túi có khuy cài phía sau. Cài phía trước bằng khóa kéo và khuy.', 'Nam', 0.00, 0, 0),
(79, 'Quần lửng kẻ khuy lệch', NULL, 297000, 'Quần lửng cạp cao có đỉa, khuy cài lệch 1 bên. 2 túi chéo và 2 túi vuông phía sau.', 'Nam', 0.00, 0, 2),
(80, 'Quần lửng 2 túi', NULL, 287000, 'Quần lửng ngang đùi. Có 2 túi chéo phía trước và túi phía sau. Đáp túi vuông có nắp hai bên ống quần. Cài phía trước bằng khóa kéo và khuy', 'Nam', 0.00, 0, 2),
(81, 'Quần lửng cạp chun co giãn', NULL, 237000, 'Quần lửng ngang gối. Cạp chun co giãn có dây kéo rút có đỉa, thiết kế túi vuông có nắp 1 bên ống. 2 túi có nắp cài khuy phía sau.', 'Nam', 0.00, 0, 2),
(82, 'Giày lười nam da thật', NULL, 449000, 'Giày nam thiết kế kiểu giày lười, quai ngang có dây. Đế giày cao 3cm chắc chắn, chống trơn trượt. Đường may chi tiết, tỉ mỉ theo tiêu chuẩn', 'Nam', 0.00, 0, 0),
(83, 'Giày lười quai ngang', NULL, 449000, 'Giày nam thiết kế kiểu giày lười, quai ngang có dây đan và khóa kim loại. Đế giày cao 3cm chắc chắn, chống trơn trượt. Đường may chi tiết, tỉ mỉ theo tiêu chuẩn.', 'Nam', 0.00, 0, 17),
(84, 'Giày lười nam đục lỗ', NULL, 299000, 'Giày lười nam họa tiết lỗ. Đế giày chắc chắn, chống trơn trượt. Từng đường may kép tỉ mỉ, chắc chắn chạy quanh giày', 'Nam', 0.00, 0, 2),
(85, 'Giày thể thao da PU', NULL, 199000, 'Giày thể thao da PU', 'Nam', 0.00, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product1`
--

CREATE TABLE `product1` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `img_url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `evaluate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `product1`
--

INSERT INTO `product1` (`id`, `product_name`, `price`, `description`, `img_url`, `evaluate`) VALUES
(1, 'Cartoon Astronaut T-Shirts1', 100000, 'description1', 'f1.jpg', NULL),
(2, 'Cartoon Astronaut T-Shirts2', 2500000, 'description2', 'f2.jpg', NULL),
(3, 'Cartoon Astronaut T-Shirts3', 300000, 'dess3', 'f3.jpg', NULL),
(4, ' Cartoon Astronaut T-Shirts4', 400000, 'des4', 'f4.jpg', NULL),
(5, 'Cartoon Astronaut T-Shirts5', 0, NULL, 'f5.jpg', NULL),
(6, 'Cartoon Astronaut T-Shirts6', 0, NULL, 'f6.jpg', NULL),
(7, 'Cartoon Astronaut T-Shirts7', 0, NULL, 'f7.jpg', NULL),
(8, 'Cartoon Astronaut T-Shirts8', 0, NULL, 'f8.jpg', NULL),
(9, 'Cartoon Astronaut T-Shirts9', 0, NULL, 'n1.jpg', NULL),
(10, 'Cartoon Astronaut T-Shirts10', 0, NULL, 'n2.jpg', NULL),
(11, 'Cartoon Astronaut T-Shirts11', 0, NULL, 'n3.jpg', NULL),
(12, 'Cartoon Astronaut T-Shirts12', 0, NULL, 'n4.jpg', NULL),
(13, 'Cartoon Astronaut T-Shirts13', 0, NULL, 'n5.jpg', NULL),
(14, 'Cartoon Astronaut T-Shirts14', 0, NULL, 'n6.jpg', NULL),
(15, 'Cartoon Astronaut T-Shirts15', 0, NULL, 'n7.jpg', NULL),
(16, 'Cartoon Astronaut T-Shirts16', 0, NULL, 'n8.jpg', NULL),
(17, NULL, 0, NULL, 'f1.jpg', NULL),
(18, NULL, 0, NULL, 'f2.jpg', NULL),
(19, NULL, 0, NULL, 'f3.jpg', NULL),
(20, NULL, 0, NULL, 'f4.jpg', NULL),
(21, NULL, 0, NULL, 'f5.jpg', NULL),
(22, NULL, 0, NULL, 'f6.jpg', NULL),
(23, NULL, 0, NULL, 'f7.jpg', NULL),
(24, NULL, 0, NULL, 'f8.jpg', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student`
--

CREATE TABLE `student` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `GENDER` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `COUNTRY` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `AGE` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `student`
--

INSERT INTO `student` (`ID`, `NAME`, `GENDER`, `COUNTRY`, `AGE`) VALUES
(1, 'NBVA', 'Male', 'Hoa Binh', 21),
(2, 'THMA', 'Female', 'Ha Noi', 20),
(3, 'Student', 'male', 'Thanh Hoa', 23),
(4, 'Bá Côi', 'Male', 'Thái Bình', 60),
(5, 'Student num 1', 'Male', 'Hòa Bình', 40),
(6, 'student num3', 'female', 'ha noi', 10),
(7, 'Student num2', 'male', 'hoa binh', 50),
(8, 'student num4', 'female', 'hoa binh', 20),
(9, 'huong', 'female', 'hb', 20),
(10, 'coi', 'male', 'thaibinh', 60),
(11, 'Viet Anh', 'Male', 'Hoa Binh', 21),
(12, 'Minh Anh', 'Female', 'Ha Noi', 20),
(13, '', 'name', 'Hòa Bình', 2),
(14, 'c', 'c', 'c', 1),
(15, 'Mot', 'Male', 'HB', 12),
(16, 'Hai', 'Female', 'Hoa Binh', 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_product`
--

CREATE TABLE `type_product` (
  `id` int(11) NOT NULL,
  `name_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pid` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `type_product`
--

INSERT INTO `type_product` (`id`, `name_type`, `pid`) VALUES
(1, 'Áo sơ mi', 1),
(2, 'Áo sơ mi', 2),
(3, 'Áo sơ mi', 3),
(4, 'Áo sơ mi', 4),
(5, 'Áo sơ mi', 5),
(6, 'Áo sơ mi', 6),
(7, 'Áo sơ mi', 7),
(8, 'Áo sơ mi', 8),
(9, 'Áo sơ mi', 9),
(10, 'Áo sơ mi', 10),
(11, 'Áo thun', 11),
(12, 'Áo thun', 12),
(13, 'Áo thun', 13),
(14, 'Áo thun', 14),
(15, 'Áo thun', 15),
(16, 'Áo thun', 16),
(17, 'Áo thun', 17),
(18, 'Áo thun', 18),
(19, 'Váy', 19),
(20, 'Váy', 20),
(21, 'Váy', 21),
(22, 'Váy', 22),
(23, 'Váy', 23),
(24, 'Váy', 24),
(25, 'Váy', 25),
(26, 'Quần Jeans', 26),
(27, 'Quần Jeans', 27),
(28, 'Quần Jeans', 28),
(29, 'Quần Jeans', 29),
(30, 'Quần Jeans', 30),
(31, 'Quần Jeans', 31),
(32, 'Quần Jeans', 32),
(33, 'Quần short', 33),
(34, 'Quần short', 34),
(35, 'Quần short', 35),
(36, 'Quần short', 36),
(37, 'Quần short', 37),
(38, 'Quần short', 38),
(39, 'Quần short', 39),
(40, 'Giày', 40),
(41, 'Giày', 41),
(42, 'Giày', 42),
(43, 'Giày', 43),
(44, 'Giày', 44),
(45, 'Túi', 45),
(46, 'Túi', 46),
(47, 'Túi', 47),
(48, 'Túi', 48),
(49, 'Túi', 49),
(50, 'Áo thun', 50),
(51, 'Áo thun', 51),
(52, 'Áo thun', 52),
(53, 'Áo thun', 53),
(54, 'Áo thun', 54),
(55, 'Áo thun', 55),
(56, 'Áo thun', 56),
(57, 'Áo sơ mi', 57),
(58, 'Áo sơ mi', 58),
(59, 'Áo sơ mi', 59),
(60, 'Áo sơ mi', 60),
(61, 'Áo sơ mi', 61),
(62, 'Áo sơ mi', 62),
(63, 'Áo khoác', 63),
(64, 'Áo khoác', 64),
(65, 'Áo khoác', 65),
(66, 'Áo khoác', 66),
(67, 'Áo khoác', 67),
(68, 'Áo khoác', 68),
(69, 'Áo khoác', 69),
(70, 'Quần jean', 70),
(71, 'Quần jean', 71),
(72, 'Quần jean', 72),
(73, 'Quần jean', 73),
(74, 'Quần  jean', 74),
(75, 'Quần lửng', 75),
(76, 'Quần lửng', 76),
(77, 'Quần lửng', 77),
(78, 'Quần lửng', 78),
(79, 'Quần lửng', 79),
(80, 'Quần lửng', 80),
(81, 'Quần lửng', 81),
(82, 'Giày', 82),
(83, 'Giày', 83),
(84, 'Giày', 84),
(85, 'Giày', 85),
(86, 'Áo', 1),
(87, 'Áo', 2),
(88, 'Áo', 3),
(89, 'Áo', 4),
(90, 'Áo', 5),
(91, 'Áo', 6),
(92, 'Áo', 7),
(93, 'Áo', 8),
(94, 'Áo', 9),
(95, 'Áo', 10),
(96, 'Áo', 11),
(97, 'Áo', 12),
(98, 'Áo', 13),
(99, 'Áo', 14),
(100, 'Áo', 15),
(101, 'Áo', 16),
(102, 'Áo', 17),
(103, 'Áo', 18),
(104, 'Quần', 26),
(105, 'Quần', 27),
(106, 'Quần', 28),
(107, 'Quần', 29),
(108, 'Quần', 30),
(109, 'Quần', 31),
(110, 'Quần', 32),
(111, 'Quần', 33),
(112, 'Quần', 34),
(113, 'Quần', 35),
(114, 'Quần', 36),
(115, 'Quần', 37),
(116, 'Quần', 38),
(117, 'Quần', 39),
(118, 'Áo', 50),
(119, 'Áo', 51),
(120, 'Áo', 52),
(121, 'Áo', 53),
(122, 'Áo', 54),
(123, 'Áo', 55),
(124, 'Áo', 56),
(125, 'Áo', 57),
(126, 'Áo', 58),
(127, 'Áo', 59),
(128, 'Áo', 60),
(129, 'Áo', 61),
(130, 'Áo', 62),
(131, 'Áo', 63),
(132, 'Áo', 64),
(133, 'Áo', 65),
(134, 'Áo', 66),
(135, 'Áo', 67),
(136, 'Áo', 68),
(137, 'Áo', 69),
(138, 'Quần', 70),
(139, 'Quần', 71),
(140, 'Quần', 72),
(141, 'Quần', 73),
(142, 'Quần', 74),
(143, 'Quần', 75),
(144, 'Quần', 76),
(145, 'Quần', 77),
(146, 'Quần', 78),
(147, 'Quần', 79),
(148, 'Quần', 80),
(149, 'Quần', 81),
(150, 'Phụ kiện', 40),
(151, 'Phụ kiện', 41),
(152, 'Phụ kiện', 42),
(153, 'Phụ kiện', 43),
(154, 'Phụ kiện', 44),
(155, 'Phụ kiện', 45),
(156, 'Phụ kiện', 46),
(157, 'Phụ kiện', 47),
(158, 'Phụ kiện', 48),
(159, 'Phụ kiện', 49),
(160, 'Phụ kiện', 82),
(161, 'Phụ kiện', 83),
(162, 'Phụ kiện', 84),
(163, 'Phụ kiện', 85),
(164, 'Summer', 53),
(165, 'Summer', 75);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `roles` varchar(255) NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid_inf` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `phone`, `address`, `roles`, `first_name`, `last_name`, `uid_inf`) VALUES
(1, 'nbva2002', '1722002', 'nguyenbavietanh2002@gmail.com', '0837021702', 'Hòa Bình', 'ROLE_ADMIN', 'Nguyen Ba', 'Viet Anh adm', 1),
(2, 'nbva', '123', 'nguyenbavietanh_t65@hus.edu.vn', '3600395', 'Hà Nội', 'ROLE_USER', 'Nguyen Ba', 'Viet Anh', 2),
(4, 'abvn', '890', 'nbva2@gmail.com', '1', '', 'ROLE_USER', 'Viet Anh', 'Nguyen Ba', 4),
(5, 'abvnaaaa', '890000', 'nbavanh@gmail.com', '2', '', 'ROLE_USER', 'Ho', 'Ten', 5),
(6, 'banhmicay', 'anhanh2002', 'minhanh14082002@gmail.com', '0327296356', 'Hà Nội', 'ROLE_USER', 'Tran Hoang', 'Minh Anh', 6),
(7, 'anhanh', '$2a$10$2ybW0JxeiGHd8YTmsWytWe3WRhBBv7sJwm1aDps5Otj4RJWbMFpqK', 'email1@gmail.com', '3', '', 'ROLE_USER', 'TH', 'MA', 7),
(21, 'vikky96', '3600395', 'nguyenbavietanh02@yahoo.com', '4', '', 'ROLE_USER', 'nb', 'va', 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_inf`
--

CREATE TABLE `user_inf` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `user_inf`
--

INSERT INTO `user_inf` (`id`, `first_name`, `last_name`) VALUES
(1, 'Nguyen Ba', 'Viet Anh adm'),
(2, 'Nguyen Ba', 'Viet Anh'),
(4, 'Viet Anh', 'Nguyen Ba'),
(5, 'Ho', 'Ten'),
(6, 'Tran Hoang', 'Minh Anh'),
(7, 'TH', 'MA'),
(21, 'nb', 'va');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cartegory`
--
ALTER TABLE `cartegory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cartegory_name_2` (`cartegory_name`),
  ADD KEY `cartegory_name` (`cartegory_type`);

--
-- Chỉ mục cho bảng `cartegory_type`
--
ALTER TABLE `cartegory_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cartegory_type` (`cartegory_type`);

--
-- Chỉ mục cho bảng `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `oid` (`oid`);

--
-- Chỉ mục cho bảng `evaluate`
--
ALTER TABLE `evaluate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `uid` (`uid`);

--
-- Chỉ mục cho bảng `img_product`
--
ALTER TABLE `img_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Chỉ mục cho bảng `list_order`
--
ALTER TABLE `list_order`
  ADD PRIMARY KEY (`id_order`);

--
-- Chỉ mục cho bảng `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_info` (`user_info`);

--
-- Chỉ mục cho bảng `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_id` (`address_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cartegory` (`cartegory`);

--
-- Chỉ mục cho bảng `product1`
--
ALTER TABLE `product1`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `type_product`
--
ALTER TABLE `type_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `uid_inf` (`uid_inf`);

--
-- Chỉ mục cho bảng `user_inf`
--
ALTER TABLE `user_inf`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `cartegory`
--
ALTER TABLE `cartegory`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `cartegory_type`
--
ALTER TABLE `cartegory_type`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT cho bảng `evaluate`
--
ALTER TABLE `evaluate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `img_product`
--
ALTER TABLE `img_product`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT cho bảng `list_order`
--
ALTER TABLE `list_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT cho bảng `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT cho bảng `product1`
--
ALTER TABLE `product1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `student`
--
ALTER TABLE `student`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `type_product`
--
ALTER TABLE `type_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `user_inf`
--
ALTER TABLE `user_inf`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cartegory`
--
ALTER TABLE `cartegory`
  ADD CONSTRAINT `cartegory_ibfk_1` FOREIGN KEY (`cartegory_type`) REFERENCES `cartegory_type` (`cartegory_type`);

--
-- Các ràng buộc cho bảng `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `cart_item_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `cart_item_ibfk_2` FOREIGN KEY (`oid`) REFERENCES `order_list` (`id`);

--
-- Các ràng buộc cho bảng `evaluate`
--
ALTER TABLE `evaluate`
  ADD CONSTRAINT `evaluate_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `user_inf` (`id`),
  ADD CONSTRAINT `evaluate_ibfk_3` FOREIGN KEY (`pid`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `img_product`
--
ALTER TABLE `img_product`
  ADD CONSTRAINT `img_product_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`user_info`) REFERENCES `user_inf` (`id`);

--
-- Các ràng buộc cho bảng `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `person_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`cartegory`) REFERENCES `cartegory` (`cartegory_name`);

--
-- Các ràng buộc cho bảng `type_product`
--
ALTER TABLE `type_product`
  ADD CONSTRAINT `type_product_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`uid_inf`) REFERENCES `user_inf` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
