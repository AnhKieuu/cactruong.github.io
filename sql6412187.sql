-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: sql6.freesqldatabase.com:3306
-- Thời gian đã tạo: Th5 14, 2021 lúc 01:05 AM
-- Phiên bản máy phục vụ: 5.5.62-0ubuntu0.14.04.1
-- Phiên bản PHP: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sql6412187`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `password` varchar(200) COLLATE utf32_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username`, `phone`, `password`, `email`) VALUES
(10, 'anh', 4, '115577', 'anh@email');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `id` int(111) NOT NULL,
  `name` varchar(200) COLLATE utf32_unicode_ci NOT NULL,
  `img` varchar(3000) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`id`, `name`, `img`) VALUES
(9, 'Lego', '1620362646115577.png'),
(10, 'Zuru', '162036680612344.png'),
(11, 'WinFun', '16203668605667.png'),
(12, 'RoyalCare', '16207356208ae5413504a97a05bacdf8864783d3b0.png'),
(13, 'Qmna', '1620735708logoqmna.png'),
(17, 'MyKingDom', '1620885107Mykingdom-1-e1555639731251.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  `level` int(10) NOT NULL,
  `parent_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `level`, `parent_id`) VALUES
(1, 'Äá»“ chÆ¡i Ã¢m nháº¡c', 0, NULL),
(2, 'Äá»“ chÆ¡i mÃ´ hÃ¬nh', 0, NULL),
(3, 'Äá»“ chÆ¡i cho tráº» sÆ¡ sinh', 0, NULL),
(4, 'Há»c táº­p ', 0, NULL),
(5, 'Äá»“ chÆ¡i thÃ´ng minh', 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cate_product`
--

CREATE TABLE `cate_product` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cate_product`
--

INSERT INTO `cate_product` (`id`, `product_id`, `cate_id`) VALUES
(4, 18, 3),
(5, 18, 0),
(6, 18, 7),
(7, 2, 2),
(8, 2, 5),
(9, 2, 7),
(10, 3, 1),
(11, 7, 4),
(12, 3, 0),
(13, 6, 1),
(14, 6, 5),
(15, 6, 0),
(16, 7, 0),
(17, 7, 5),
(18, 7, 7),
(19, 9, 2),
(20, 9, 5),
(21, 9, 7),
(22, 10, 2),
(23, 10, 4),
(24, 10, 0),
(25, 11, 0),
(26, 11, 5),
(27, 11, 0),
(28, 19, 1),
(29, 20, 1),
(30, 21, 1),
(31, 22, 1),
(32, 23, 1),
(33, 24, 0),
(34, 25, 0),
(35, 26, 0),
(36, 27, 1),
(37, 28, 1),
(38, 29, 0),
(39, 30, 0),
(40, 31, 1),
(41, 32, 1),
(42, 33, 1),
(43, 34, 1),
(44, 35, 3),
(45, 36, 3),
(46, 37, 3),
(47, 38, 3),
(48, 39, 2),
(49, 40, 2),
(50, 41, 5),
(51, 42, 0),
(52, 43, 5),
(53, 44, 5),
(54, 45, 4),
(55, 46, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail`
--

CREATE TABLE `detail` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `img` varchar(300) COLLATE utf32_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf32_unicode_ci NOT NULL,
  `title` varchar(300) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `detail`
--

INSERT INTO `detail` (`id`, `product_id`, `img`, `content`, `title`) VALUES
(1, 7, 'img_0640_3.jpg', '', ''),
(2, 7, 'img_0640_3.jpg', '', ''),
(3, 7, 'img_0664_1.jpg', '', 'Đồ chơi mô hình siêu anh hùng\r\n'),
(4, 2, 'do-choi-xep-hinh-cong-truong-huimei-hw-0761-1-1.jpg', 'Đồ chơi lắp ráp thông minh giúp bé phát huy trí tưởng tượng và sáng tạo của mình', 'Đồ chơi thông minh'),
(7, 20, '1620910695do-choi-dan-nhac-hinh-heo-con-im-6606-2.jpg', 'an toàn với bé, thích hợp cho trẻ trên 1t', 'Đàn phím âm nhạc'),
(8, 21, '1620913247do-choi-dan-nhac-hinh-heo-con-im-6606-2.jpg', 'an toàn với bé, thích hợp cho trẻ trên 1t', 'Đàn phím âm nhạc'),
(9, 45, '162095259969ce5be4e78f87f6e8e7378277b1cb56-1598865745685409310648.jpeg', 'Bá»™ Ä‘á»“ dÃ¹ng dá»… thÆ°Æ¡ng, Ä‘áº§y Ä‘á»§ cho bÃ©', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `img`
--

CREATE TABLE `img` (
  `id` int(11) NOT NULL,
  `img` varchar(300) COLLATE utf32_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `img`
--

INSERT INTO `img` (`id`, `img`, `product_id`) VALUES
(1, 'tham-choi-hai-mat-xpe-kiza-dreamy-land-180x150x1cm-6.jpg', 16),
(3, '1620735708logoqmna.1620869808.png', 2),
(4, 'dan-vit-con-danh-trong.jpg', 2),
(5, '1620809331115577.png\r\n', 2),
(6, '1620735708logoqmna.png', 3),
(7, '16207356208ae5413504a97a05bacdf8864783d3b0.png', 3),
(8, '16203668605667.png', 3),
(9, 'do-choi-dan-nhac-hinh-heo-con-im-6606-2.jpg', 4),
(10, 'do-choi-robot-vui-nhon-co-nhac-den-cy-99444-2-3_1.jpg', 4),
(11, 'do-choi-tho-con-danh-trong-cy-6669-1.jpg', 4),
(12, 'do-choi-trong-xuc-xac-co-nhac-den-im-he0515-1.jpg', 4),
(13, 'ngoi-nha-nong-trai-thong-minh-cy-25848e-2.jpg', 5),
(14, 'đồ vhowi trẻ ss tui-xuc-xac-.jpg', 5),
(15, 'do-choi-treo-cui-hinh-cun-con-hw-668-25-1.jpg', 5),
(16, 'thu-bong-lion-ngo-nghinh-dang-yeu-metoo-1.jpg', 7),
(17, 'do-choi-doi-truong-nuoc-my-cy-239-3d-1.jpg', 9),
(18, 'do-choi-robot-bat-man-cy-689-1.jpg', 11),
(19, 'do-choi-sieu-nhan-nguoi-nhen-cy-238-3-1.jpg', 6),
(20, 'img_0640_3.jpg', 6),
(47, '1620735708logoqmna.png', 19),
(48, 'do-choi-dan-nhac-hinh-heo-con-im-6606-2.jpg', 20),
(49, 'do-choi-dan-nhac-hinh-heo-con-im-6606-2.jpg', 21),
(50, 'do-choi-robot-vui-nhon-co-nhac-den-cy-99444-2-3_1.jpg', 22),
(51, 'ngoi-nha-nong-trai-thong-minh-cy-25848e-2.jpg', 23),
(52, 'do-choi-tho-con-danh-trong-cy-6669-1.jpg', 24),
(53, 'do-choi-dan-nhac-hinh-heo-con-im-6606-2.jpg', 25),
(54, 'dan-vit-con-danh-trong.jpg', 26),
(55, 'do-choi-robot-vui-nhon-co-nhac-den-cy-99444-2-3_1.jpg', 27),
(56, 'do-choi-trong-xuc-xac-co-nhac-den-im-he0515-1.jpg', 28),
(57, 'Ä‘á»“ vhowi tráº» ss tui-xuc-xac-.jpg', 29),
(58, 'do-choi-treo-cui-hinh-cun-con-hw-668-25-1.jpg', 30),
(59, 'dan-vit-con-danh-trong.jpg', 31),
(60, 'do-choi-tho-con-danh-trong-cy-6669-1.jpg', 32),
(61, 'do-choi-dan-nhac-hinh-heo-con-im-6606-2.jpg', 33),
(62, 'do-choi-robot-vui-nhon-co-nhac-den-cy-99444-2-3_1.jpg', 34),
(63, 'tham-choi-hai-mat-xpe-kiza-dreamy-land-180x150x1cm-6.jpg', 35),
(64, 'tham-choi-hai-mat-xpe-kiza-dreamy-land-180x150x1cm-6.jpg', 36),
(65, 'Ä‘á»“ vhowi tráº» ss tui-xuc-xac-.jpg', 37),
(66, 'thu-bong-lion-ngo-nghinh-dang-yeu-metoo-1.jpg', 38),
(67, 'do-choi-doi-truong-nuoc-my-cy-239-3d-1.jpg', 39),
(68, 'do-choi-robot-bat-man-cy-689-1.jpg', 40),
(69, 'bang-cat-ve-sinh-vat-bien-im-dq843-1.jpg', 41),
(70, 'do-choi-xep-hinh-cong-truong-huimei-hw-0761-1-1.jpg', 42),
(71, 'do-choi-xep-hinh-quan-doi-im-20037-5.jpg', 43),
(72, 'do-choi-xep-hinh-cong-truong-huimei-hw-0761-1-1.jpg', 44),
(73, '29f0180536f72548b8dbbc5658087293.jpg', 45),
(74, 'do-choi-bang-chu-cai-go-va-que-tinh-hoc-toan-cho-be-e_5cb1268ee65b441fa663fdd271587cc0_master.jpg', 46);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ordered`
--

CREATE TABLE `ordered` (
  `id` int(11) NOT NULL,
  `time` date NOT NULL,
  `status` int(11) DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `notes` varchar(300) COLLATE utf32_unicode_ci NOT NULL,
  `extra_address` varchar(300) COLLATE utf32_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ordered`
--

INSERT INTO `ordered` (`id`, `time`, `status`, `user_id`, `notes`, `extra_address`) VALUES
(11, '2020-05-01', 2, 12, '', ''),
(12, '2020-05-01', 2, 12, 'dahjldhaildhjiopạuwipo  ', ''),
(13, '2020-05-13', 2, 13, '', ''),
(14, '2020-05-13', 2, 13, '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `brand_id` int(11) NOT NULL,
  `keyword` varchar(200) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `short_desc` varchar(300) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `status` int(11) NOT NULL COMMENT 'mois hay cu',
  `weight` float NOT NULL,
  `size` varchar(200) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `selled` int(10) DEFAULT '0',
  `quantity_product` int(11) DEFAULT '5'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `brand_id`, `keyword`, `short_desc`, `status`, `weight`, `size`, `selled`, `quantity_product`) VALUES
(29, 'TÃºi xÃºc xáº¯c cho tráº» sÆ¡ sinh', 120000, 10, 'Äá»“ chÆ¡i tráº» em', 'Äá»“ chÆ¡i vui nhá»™n cho bÃ© ', 1, 1, '35*20*7', 0, 5),
(30, 'Äá»“ chÆ¡i cÅ©i hÃ¬nh cÃºn con', 145000, 13, 'Äá»“ chÆ¡i tráº» em', 'Äá»“ chÆ¡i vui nhá»™n cho bÃ©', 1, 1, '25*20*30', 0, 5),
(31, 'ÄÃ n vá»‹t con Ä‘Ã¡nh trá»‘ng', 135000, 9, 'Äá»“ chÆ¡i Ã¢m nháº¡c', 'Äá»“ chÆ¡i vui nhá»™n cho bÃ©', 1, 1, '25*20*30', 0, 5),
(32, 'Äá»“ chÆ¡i thá» con Ä‘Ã¡nh trá»‘ng', 75000, 12, 'Äá»“ chÆ¡i Ã¢m nháº¡c', 'Äá»“ chÆ¡i Ã¢m nháº¡c vui nhá»™n cho bÃ©', 1, 1, '15*5*3', 0, 5),
(33, 'ÄÃ n nháº¡c hÃ¬nh con heo', 150000, 9, ' [Má»›i 100% Full box]', 'Äá»“ chÆ¡i Ã¢m nháº¡c vui nhá»™n cho bÃ©', 1, 1, '15*10*3', 0, 5),
(34, 'Äá»“ chÆ¡i Robot cÃ³ nháº¡c', 350000, 9, 'Äá»“ chÆ¡i Ã¢m nháº¡c', 'Äá»“ chÆ¡i Robot Ã¢m nháº¡c vui nhá»™n cho bÃ©', 1, 1, '25*30*20', 0, 5),
(35, 'Tháº£m chÆ¡i mÃ¡t xa cho tráº»', 95000, 9, 'Äá»“ chÆ¡i tráº» em', 'Ä‘á»“ chÆ¡i cho tráº» sÆ¡ sinh', 1, 1, '40*30*2', 0, 5),
(37, 'TÃºi xÃºc xáº¯c cho tráº» sÆ¡ sinh', 125000, 13, 'Äá»“ chÆ¡i tráº» em', 'Äá»“ chÆ¡i vui nhá»™n cho bÃ© ', 1, 1, '35*25*20', 0, 5),
(38, 'ThÃº bÃ´ng lion ngá»™ nghÄ©nh', 85000, 17, 'Äá»“ chÆ¡i tráº» em', 'Äá»“ chÆ¡i thÃº bÃ´ng cho bÃ©', 1, 1, '20*17*15', 0, 5),
(39, 'Äá»“ chÆ¡i mÃ´ hÃ¬nh siÃªu anh hÃ¹ng', 305000, 9, ' [Má»›i 100% Full box]', 'Äá»“ chÆ¡i Robot   cho bÃ©', 1, 1, '25*20*20', 0, 5),
(40, 'Robot Batman', 305000, 17, ' [Má»›i 100% Full box]', 'Äá»“ chÆ¡i mÃ´ hÃ¬nh siÃªu anh hÃ¹ng', 1, 1, '25*20*15', 0, 5),
(41, 'Báº£ng cÃ¡t váº½ cho bÃ©', 200000, 13, 'Äá»“ chÆ¡i tráº» em', 'Äá»“ chÆ¡i vui nhá»™n cho bÃ©', 1, 1, '35*20*3 ', 0, 5),
(43, 'Äá»“ chÆ¡i xáº¿p hÃ¬nh quÃ¢n Ä‘á»™i', 320000, 12, ' [Má»›i 100% Full box]', 'Äá»“ chÆ¡i vui nhá»™n cho bÃ©', 1, 1, '25*20*30', 0, 5),
(44, 'Äá»“ chÆ¡i xáº¿p hÃ¬nh cÃ´ng trÆ°á»ng', 320000, 9, ' [Má»›i 100% Full box]', 'Äá»“ chÆ¡i vui nhá»™n cho bÃ©', 1, 1, '25*20*20', 0, 5),
(45, 'Bá»™ Ä‘á»“ dÃ¹ng há»c táº­p dá»… thÆ°Æ¡ng cho bÃ©', 45000, 11, 'Äá»“ dÃ¹ng há»c táº­p', 'Äá»“ dÃ¹ng há»c táº­p cho bÃ©', 1, 1, '25*20*15', 0, 5),
(46, 'Báº£ng chá»¯ cÃ¡i vÃ  que tÃ­nh cho tráº» ', 125000, 10, ' [Má»›i 100% Full box]', 'Äá»“ dÃ¹ng há»c táº­p cho bÃ©', 1, 1, '25*20*20', 0, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_orders`
--

CREATE TABLE `products_orders` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `quantity` int(10) NOT NULL COMMENT 'quntity of product'
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_orders`
--

INSERT INTO `products_orders` (`id`, `product_id`, `order_id`, `quantity`) VALUES
(2, 1, 11, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `tittle` varchar(200) COLLATE utf32_unicode_ci NOT NULL,
  `img` varchar(300) COLLATE utf32_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `tittle`, `img`, `product_id`) VALUES
(3, 'Äá»“ chÆ¡i Ã¢m nháº¡c, Ä‘Ã n vá»‹t con Ä‘Ã¡nh trá»‘ng', '1620805456dan-vit-con-danh-trong.1620808989.1620809046.1620809106.1620809371.1620809466.1620809526.png', 3),
(4, 'Äá»“ chÆ¡i thÃ´ng minh-bá»™ bÃ n tÃ­nh cho bÃ©', 'do-choi-ban-tinh-hinh-huou-cy-ys601b-1.png', 8),
(5, 'Äá»“ chÆ¡i cho tráº» sÆ¡ sinh-  Ä‘á»“ chÆ¡i treo cÅ©i cho bÃ©', '1620950561do-choi-treo-cui-hinh-cun-con-hw-668-25-1.jpg', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf32_unicode_ci NOT NULL,
  `address` varchar(300) COLLATE utf32_unicode_ci DEFAULT 'unknow',
  `city` varchar(300) COLLATE utf32_unicode_ci DEFAULT 'unknow',
  `dob` varchar(300) COLLATE utf32_unicode_ci DEFAULT '2020-04-25',
  `phone` varchar(300) COLLATE utf32_unicode_ci DEFAULT 'unknow',
  `full_name` varchar(300) COLLATE utf32_unicode_ci DEFAULT 'unknow',
  `email` varchar(200) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cate_product`
--
ALTER TABLE `cate_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ordered`
--
ALTER TABLE `ordered`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products_orders`
--
ALTER TABLE `products_orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT cho bảng `cate_product`
--
ALTER TABLE `cate_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT cho bảng `detail`
--
ALTER TABLE `detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT cho bảng `img`
--
ALTER TABLE `img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT cho bảng `ordered`
--
ALTER TABLE `ordered`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT cho bảng `products_orders`
--
ALTER TABLE `products_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
