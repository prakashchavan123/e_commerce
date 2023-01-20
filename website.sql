-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2023 at 01:39 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_address`
--

CREATE TABLE `add_address` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_address`
--

INSERT INTO `add_address` (`id`, `name`, `address`) VALUES
(1, 'Arvind', 'nikjoj[okjodm'),
(2, 'Arvind', 'nikjoj[okjodm'),
(3, 'Prakash', 'Vatsalatai Naik Nagar'),
(4, 'Prakash', 'Vatsalatai Naik Nagar'),
(5, 'Arkhgvkhjg', 'ukgulihijp'),
(6, 'ydufukholij;oj', 'dyfuglihoiyffuyg'),
(7, 'iyugiuyg', 'UHIUHBUBKJB'),
(8, 'ffhfgjhjf', 'fxcgjjmkmfxc'),
(9, 'dvgfdsgg', 'edgfrgvrf'),
(10, 'Prakash', 'Tilak nagar'),
(11, 'Mangesh', 'Tilak Nagar near railway station'),
(12, 'jpijpjndpj', 'pjpojojsofpvj'),
(13, 'yyfgiyug', 'ufigouh'),
(14, 'utfdiyguo', 'ifuokuo'),
(15, 'utfdiyguo', 'ifuokuo'),
(16, 'fykbbuhuh', 'utfdytfgiugiu'),
(17, 'nijnu', 'bvkhjvbkhvy'),
(18, 'ygyigouhoiu', 'iyufugouhguo'),
(19, 'hvhyvghkvbk', 'gvkgkuhuh'),
(20, 'Mangesh', 'Tilak Nagar and kaccha road'),
(21, 'Mangesh', 'Tilak Nagar and kaccha road'),
(22, 'jvkgvkgUG', 'UGVUGVKJUBK'),
(23, 'hvbjhb', 'ohoihiojhnoilj'),
(24, 'ihnbljhijf', 'uohoiuhjij'),
(25, 'ytdfytfdtf', 'edstrsdrdyt'),
(26, 'Prakash', 'jgcvjygiugiouhg'),
(27, 'Pralljiyohugyg', 'jubujhblhli'),
(28, 'Mangesh', 'kuvguhpj'),
(29, 'hoihjiojhid', 'iphjpijo'),
(30, 'yguhoij', 'yjoijhoihjoihoij'),
(31, 'Amar', 'Malad west near kandivali'),
(32, 'Pralljiyohugyg', 'jubujhblhli'),
(33, 'Ajay nalavade', 'kandivali west'),
(34, 'sonu', 'tgtyitguyfuuhuoho'),
(35, 'yfkgkug', 'uygfyftgtfuyfgu'),
(36, 'uughjgb', 'fcfgftgtgfdf'),
(37, 'uughjgb', 'fcfgftgtgfdf');

-- --------------------------------------------------------

--
-- Table structure for table `add_product`
--

CREATE TABLE `add_product` (
  `id` int(10) NOT NULL,
  `product_name` varchar(25) NOT NULL,
  `price` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart_list`
--

CREATE TABLE `cart_list` (
  `id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_list`
--

INSERT INTO `cart_list` (`id`, `product_id`, `user_id`) VALUES
(1, 3, 12),
(2, 2, 12),
(3, 3, 12),
(4, 5, 12),
(5, 4, 15),
(6, 3, 16),
(7, 5, 18),
(8, 2, 19),
(9, 5, 20),
(10, 2, 21),
(11, 3, 22),
(12, 2, 23),
(13, 3, 24),
(14, 2, 25),
(15, 2, 26);

-- --------------------------------------------------------

--
-- Table structure for table `cart_product`
--

CREATE TABLE `cart_product` (
  `id` int(10) NOT NULL,
  `product_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_confirm`
--

CREATE TABLE `order_confirm` (
  `id` int(10) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `user_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_confirm`
--

INSERT INTO `order_confirm` (`id`, `product_id`, `user_id`) VALUES
(1, '[3,2,3,5]', 13),
(2, '[3,2,3,5,4]', 15),
(3, '[3,2,3,5,4,3]', 16),
(4, '[3,2,3,5,4,3]', 16),
(5, '[3,2,3,5,4,3,5]', 18),
(6, '[3,2,3,5,4,3,5]', 18),
(7, '[3,2,3,5,4,3,5,2]', 19),
(8, '[3,2,3,5,4,3,5,2]', 19),
(9, '[3,2,3,5,4,3,5,2,5]', 20),
(10, '[3,2,3,5,4,3,5,2,5,2]', 21),
(11, '[3,2,3,5,4,3,5,2,5,2,3]', 22),
(12, '[3,2,3,5,4,3,5,2,5,2,3,2]', 23),
(13, '[3,2,3,5,4,3,5,2]', 19),
(14, '[3,2,3,5,4,3,5,2,5,2,3,2]', 19);

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(10) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `price` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `product_name`, `price`) VALUES
(2, 'Oppo123', 2345678),
(3, 'Samsung', 12367),
(4, 'Samsung', 12367),
(5, 'Oppo', 979679);

-- --------------------------------------------------------

--
-- Table structure for table `sign_up`
--

CREATE TABLE `sign_up` (
  `user_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sign_up`
--

INSERT INTO `sign_up` (`user_id`, `name`, `password`) VALUES
(1, 'Prakash', 'Prakash@123'),
(2, 'vivo', ''),
(3, 'mangesh', 'Mangesh@123'),
(4, 'hdtfhdfh', '8888'),
(5, 'vinay', '5e35r4e'),
(6, 'ggggg', 'fffff'),
(7, 'Prakash', 'Sonu@123'),
(8, 'Prakash', 'Sonu@123'),
(9, 'sgesg', 'hbdhbhrrh'),
(10, 'dtghdtgje', 'xdtgvrthuy'),
(11, 'yiygiuhg', 'uyuytfuydf'),
(12, 'vinay', '12345'),
(13, 'Sonu', 'Sonu@123'),
(14, 'Mangesh', 'Mangesh@123'),
(15, 'ryjyhkt', 'ugbviklu'),
(16, 'Mangesh', 'Mangesh@123'),
(17, 'hvhblknkl;', 'ughoijpiojkpo'),
(18, 'fuytfuygy', 'yfygyiuugku'),
(19, 'Prakash', 'Prakash@123'),
(20, 'Mangesh', 'iphjoiuhoijh'),
(21, 'lihgouyhpuj', 'hbnijo;j;okj'),
(22, 'jnbijipj', 'jpjpokpoj'),
(23, 'Amar', 'Amar@123'),
(24, 'Mangesh ', 'Tjnnlnmlk'),
(25, 'SSuureesh', 'hhuuhhijoojj'),
(26, 'gvjhhbbb', 'vjvdgguy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_address`
--
ALTER TABLE `add_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_product`
--
ALTER TABLE `add_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_confirm`
--
ALTER TABLE `order_confirm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sign_up`
--
ALTER TABLE `sign_up`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_address`
--
ALTER TABLE `add_address`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `add_product`
--
ALTER TABLE `add_product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_list`
--
ALTER TABLE `cart_list`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_confirm`
--
ALTER TABLE `order_confirm`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sign_up`
--
ALTER TABLE `sign_up`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
