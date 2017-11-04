-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2017 at 08:22 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sdp`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `sell` int(11) DEFAULT NULL,
  `shop_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `quantity`, `price`, `sell`, `shop_id`) VALUES
(14, 'biskut', '1234', 10, 100, 5),
(34, 'Medicine', '123', 500, 78, 8),
(35, 'Medicine', '123', 500, 78, 8),
(36, 'DariMilk', '500', 6000, 12000, 8),
(37, 'bb', '12', 50, 6660, 8),
(38, 'Po', '123', 6000, 8900, 8);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `res_id` int(11) NOT NULL,
  `Email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`res_id`, `Email`, `password`) VALUES
(8, 'Mehadi', '88'),
(15, 'foysal.gmail.com', '1234'),
(29, 'gg', '33'),
(30, 'hjh', 'hjbcf'),
(31, 'yhh', 'ghh'),
(32, 'yhh', 'ghh'),
(33, 'bappy', 'bappy'),
(38, 'babppy', 'bbv'),
(39, 'Swagato', '123'),
(40, 'Ss', '12345'),
(41, 'das', '123'),
(42, 'fg', 'h'),
(43, 'Mahmud', '39'),
(44, 'Avi', '11'),
(47, 'dd', '12'),
(48, 'foysal.gmail.com', '1234'),
(49, 'das@', 'err'),
(50, 'pk', '123'),
(51, 'kk', 'u'),
(52, 'hasan', '123'),
(53, 'shlsbbr@gmail.com', '123abc'),
(54, '', ''),
(55, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `shop_id` int(11) NOT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `res_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`shop_id`, `shop_name`, `category`, `res_id`) VALUES
(4, 'foysal.gmail.com', 'hhh', NULL),
(5, 'foysal.gmail.com', 'hhh', NULL),
(6, 'hhh', 'd', NULL),
(7, 'hhh', 'd', NULL),
(8, 'hhh', 'd', 8),
(9, 'bbvv', 'vnccg', 13),
(10, 'gjb', 'gnbb', 38),
(11, 'Swagato', 'Generalshop', 39),
(12, 'tt', 'ee', 40),
(13, 'rahim store', 'pharmacy', 41),
(14, 'hh', 'yy', 42),
(15, 'a', 'medicine', 43),
(19, 'ff', 'sd', 47),
(20, 'up', 'yt', 49),
(21, 'mnl', 'oi', 50),
(22, 'rrh', 'rt', 51),
(23, 'rrh', 'rt', 51),
(24, 'qq', 'ee', 52);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `shop_id` (`shop_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`res_id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`shop_id`),
  ADD KEY `res_id` (`res_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `res_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `shop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`shop_id`);

--
-- Constraints for table `shop`
--
ALTER TABLE `shop`
  ADD CONSTRAINT `shop_ibfk_1` FOREIGN KEY (`res_id`) REFERENCES `registration` (`res_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
