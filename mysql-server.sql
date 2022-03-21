-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql-server
-- Generation Time: Mar 21, 2022 at 05:04 AM
-- Server version: 8.0.19
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--
CREATE DATABASE IF NOT EXISTS `store` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `store`;

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

CREATE TABLE `order_table` (
  `order_id` int NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `billing_id` int NOT NULL,
  `quantity` bigint NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_table`
--

INSERT INTO `order_table` (`order_id`, `user_id`, `product_id`, `billing_id`, `quantity`, `status`) VALUES
(1, 1, 1, 3, 101, 'Pending'),
(2, 3, 3, 4, 1, 'Order Placed'),
(3, 3, 1, 4, 1, 'Order Placed');

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `pay_id` int NOT NULL,
  `cardName` varchar(50) NOT NULL,
  `cardNumber` int NOT NULL,
  `cardExpiry` int NOT NULL,
  `cvv` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`pay_id`, `cardName`, `cardNumber`, `cardExpiry`, `cvv`) VALUES
(1, 'eeeeeeee', 66, 66, 66),
(2, 'ssss', 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int NOT NULL,
  `category` varchar(50) NOT NULL,
  `imgName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category`, `imgName`) VALUES
(1, 'poco', 10000, 'electronics', 'image (8).png'),
(3, 'fan', 34, 'electronics', 'image (6).png'),
(4, 'A.C.', 45000, 'electronics', 'image (8).png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `full_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `full_name`, `email`, `password`, `role`, `status`) VALUES
(1, 'saurabh', 'kanaujia', 'adm@gmail.com', '12', 'admin', 'Approved'),
(3, 'utkarsh', 'baj', 'u@gmail.com', '12', 'customer', 'Approved'),
(4, 'varun', 'varun', 'varun@gmail.com', 'varun', 'customer', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `user_billing_details`
--

CREATE TABLE `user_billing_details` (
  `pid` int NOT NULL,
  `billing_country` varchar(50) NOT NULL,
  `billing_first_name` varchar(50) NOT NULL,
  `billing_last_name` varchar(50) NOT NULL,
  `billing_address_1` varchar(50) NOT NULL,
  `billing_address_2` varchar(50) NOT NULL,
  `billing_postcode` int NOT NULL,
  `billing_state` varchar(50) NOT NULL,
  `billing_email` varchar(50) NOT NULL,
  `billing_phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_billing_details`
--

INSERT INTO `user_billing_details` (`pid`, `billing_country`, `billing_first_name`, `billing_last_name`, `billing_address_1`, `billing_address_2`, `billing_postcode`, `billing_state`, `billing_email`, `billing_phone`) VALUES
(1, 'Ind', 'test', 'done', 'vidh', 'gulati', 123, 'india', 'e@g.cpmeeee', '90'),
(2, 'Ind', 'test', 'done', 'vidh', 'gulati', 123, 'india', 'e@g.cpmeeee', '90'),
(3, '', 'sasa', 'aaa', 'asass', 'sasasssssssssss', 32233, 'wwwwwwwwwwwwww', 'adm@gmail.com', '12'),
(4, '', 'utkarsh', 'baj', 'ss', 'ssk', 2255, 'ojk', 'u@gmail.com', '5444554443');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_table`
--
ALTER TABLE `order_table`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_billing_details`
--
ALTER TABLE `user_billing_details`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_table`
--
ALTER TABLE `order_table`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `pay_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_billing_details`
--
ALTER TABLE `user_billing_details`
  MODIFY `pid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
