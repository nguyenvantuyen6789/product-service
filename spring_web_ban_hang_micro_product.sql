-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th2 08, 2022 lúc 10:04 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `spring_web_ban_hang_micro_product`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `favourite` tinyint(1) UNSIGNED NOT NULL,
  `gia_con_lai` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `is_visible` int(11) NOT NULL,
  `menu_dong_id` int(11) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` smallint(5) UNSIGNED NOT NULL,
  `sale` tinyint(1) UNSIGNED NOT NULL,
  `sale_percent` varchar(255) DEFAULT NULL,
  `sale_price` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `description`, `favourite`, `gia_con_lai`, `image_name`, `is_visible`, `menu_dong_id`, `price`, `product_name`, `quantity`, `sale`, `sale_percent`, `sale_price`) VALUES
(1, 'Xe đẹp 2021', 0, '315.000.000', 'vinfast-lux-sa-2_0-ra-mat-tai-viet-nam.jpg', 1, 6, '350.000.000', 'Ô tô Vinfast', 0, 0, '10', '35.000.000'),
(5, 'Xe đẹp 2021', 0, '1.360.000.000', 'mercedes-s500-2021-autodaily-46.jpg', 1, 4, '1.700.000.000', 'Mercedes', 0, 0, '20', '340.000.000'),
(6, 'Xe đẹp 2021', 1, '1.029.000.000', 'gia-xe-toyota-camry-20g-2021-muaxebanxe-com-30.jpg', 1, 1, '1.029.000.000', 'Toyota camry', 0, 1, '', NULL),
(10, 'Xe đẹp 2021', 0, '296.100.000', '640-kia-morning-2021-ra-mat-tai-viet-nam.jfif', 1, 1, '329.000.000', 'Kia Morning', 0, 1, '10', '32.900.000'),
(11, 'Xe đẹp 2021', 0, '478.000.000', 'toyota-vios.jpg', 1, 13, '478.000.000', 'Toyota Vios', 0, 0, '', '478.000.000'),
(33, 'Xe đẹp 2021', 0, '378,000,000', 'honda-brio.jpg', 0, 1, '420.000.000', 'Honda Brio', 0, 0, '10', '42,000,000'),
(36, 'Xe đẹp 2021', 1, '40,000,000', '640-kia-morning-2021-ra-mat-tai-viet-nam.jfif', 1, 1, '50.000.000', 'Kia Đỏ', 0, 0, '20', '10,000,000'),
(43, '', 0, '', 'Soi.jpg', 1, 1, '1', 'tttt', 0, 0, '', ''),
(44, '', 0, '', '', 0, 1, '0', 'sp1', 0, 0, '', ''),
(46, '', 0, '', '', 1, 1, '0', 'sp10', 0, 0, '', ''),
(47, '', 0, '', '', 1, 1, '0', 'sp1', 0, 0, '', ''),
(48, 'Xe Mecedes đẳng cấp', 1, '1.600.000.000đ', 'mecedes.png', 1, 1, '2.000.000.000đ', 'Mecedes', 15, 1, '20%', '400.000.000đ'),
(49, 'Xe Mecedes đẳng cấp', 1, '1.600.000.000đ', 'mecedes.png', 1, 1, '2.000.000.000đ', 'Mecedes 2', 15, 1, '20%', '400.000.000đ');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
