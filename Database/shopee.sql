-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2020 at 11:01 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopee`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--
    INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
    ("1","# 170804C","Chuck 70 Archive Paint Splatter High Top","1900","./assets/products/Product-1.jpg",'2020-04-20 12:10:00'), -- Now
    ("2","# 170802C","Chuck 70 Archive Paint Splatter High Top","2000","./assets/products/Product-2.jpg","2020-04-20 12:10:00"),
    ("3","# 170801C","Chuck 70 Archive Paint Splatter High Top","2000","./assets/products/Product-3.jpg","2020-04-20 12:10:00"),
    ("4","# 170367C","Chuck Taylor All Star Renew Sock Knit High Top","2200","./assets/products/Product-4.jpg","2020-04-20 12:10:00"),
    ("5","# 170869C","Chuck Taylor All Star Crater Knit High Top","2100","./assets/products/Product-5.jpg","2020-04-20 12:10:00"),
    ("6","# 170868C","Chuck Taylor All Star Crater Knit High Top","2100","./assets/products/Product-6.jpg","2020-04-20 12:10:00"),
    ("7","# 170867C","Chuck 70 Explore a Better World High Top","2000","./assets/products/Product-7.jpg","2020-04-20 12:10:00"),
    ("8","# 171243C","Converse x Chinatown Market x NBA Chuck 70 High-Top [Limited Edition]","2800","./assets/products/Product-8.jpg","2020-04-20 12:10:00"),
    ("9","# 171242C","Converse x Chinatown Market x NBA Chuck 70 High-Top [Limited Edition]","2800","./assets/products/Product-9.jpg","2020-04-20 12:10:00"),
    ("10","# 170059C","Chuck 70 Patchwork Nu-Madic High-Top [Limited Edition]","2200","./assets/products/Product-10.jpg","2020-04-20 12:10:00"),
    ("11","# 571119C","Chuck Taylor All Star Lift Valentine's Day High-Top","1800","./assets/products/Product-11.jpg","2020-04-20 12:10:00"),
    ("12","# 570311C","Chuck Taylor All Star Explore Roots High Top","1600","./assets/products/Product-12.jpg","2020-04-20 12:10:00"),
    ("13","# 170464C","Chuck Taylor All Star High-Top","1600","./assets/products/Product-13.jpg","2020-04-20 12:10:00"),
    ("14","# 170108C","Chuck Taylor All Star High-Top","1600","./assets/products/Product-14.jpg","2020-04-20 12:10:00"),
    ("15","# 170128C","Chuck 70 Explore Roots High Top","2000","./assets/products/Product-15.jpg","2020-04-20 12:10:00"),
    ("16","# 170139C","Chuck Taylor All Star CX Explore Roots Low Top","2200","./assets/products/Product-16.jpg","2020-04-20 12:10:00"),
    ("17","# 170138CC","Chuck Taylor All Star CX Explore Roots High Top","2300","./assets/products/Product-17.jpg","2020-04-20 12:10:00"),
    ("18","# 169526C","Chuck 70 Tape Seam Hi-Vis High-Top","2400","./assets/products/Product-18.jpg","2020-04-20 12:10:00"),
    ("19","# 169451C","Chuck Taylor All Star Hi-Vis High-Top","1600","./assets/products/Product-19.jpg","2020-04-20 12:10:00"),
    ("20","# 168578V","Chuck Taylor All Star Low-Top","1400","./assets/products/Product-20.jpg","2020-04-20 12:10:00"),
    ("21","# 168628C","Chuck 70 Rivals Low-Top","2100","./assets/products/Product-21.jpg","2020-04-20 12:10:00"),
    ("22","# 168595C","Renew Chuck Taylor All Star High-Top","1600","./assets/products/Product-22.jpg","2020-04-20 12:10:00"),
    ("23","# 168593V","Renew Chuck Taylor All Star High-Top","1600","./assets/products/Product-23.jpg","2020-04-20 12:10:00"),
    ("24","# 168697V","Chuck 70 High-Top -Mi Gente","1600","./assets/products/Product-24.jpg","2020-04-20 12:10:00");

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

  INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `register_date`) VALUES
  (1, 'Daily', 'Tuition', '2020-03-28 13:07:17'),
  (2, 'Akshay', 'Kashyap', '2020-03-28 13:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `user`
--


--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
