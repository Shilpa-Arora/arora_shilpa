-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2016 at 01:40 AM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_foody`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_menu`
--

CREATE TABLE `db_menu` (
  `menu_id` int(50) NOT NULL,
  `menu_name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_menu`
--

INSERT INTO `db_menu` (`menu_id`, `menu_name`) VALUES
(1, 'Starters'),
(2, 'Salads'),
(3, 'Sandwiches'),
(4, 'Pasta'),
(5, 'Desserts');

-- --------------------------------------------------------

--
-- Table structure for table `db_menuitems`
--

CREATE TABLE `db_menuitems` (
  `menu_id` int(50) NOT NULL,
  `item_id` int(50) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `Price` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_menuitems`
--

INSERT INTO `db_menuitems` (`menu_id`, `item_id`, `item_name`, `Price`) VALUES
(1, 1, 'PIGS IN A BLANKET', '$6.75'),
(1, 2, 'POUTINE', '$8.25'),
(1, 3, 'HUMMUS AND PITA', '$7.75'),
(1, 4, 'FRIES', '$5.99'),
(1, 5, 'GARLIC BREAD', '$7'),
(1, 6, 'CRISPY CUPS', '$8.95'),
(2, 7, 'CAESAR', '$7.25'),
(2, 8, 'HOUSE', '$7.25'),
(2, 9, 'STRAVO', '$11.75'),
(2, 10, 'GREEK', '$8.95'),
(3, 11, 'GARLIC CHICKEN ON A BUN', '$8.95'),
(3, 12, 'VEAL ON A BUN', '$9.25'),
(3, 13, 'CHICKEN FINGERS AND FRIES', '$10.25'),
(3, 14, 'CHICKEN CHIMII', '$8.50'),
(3, 15, 'CHICKEN PARMESAN', '$9.25'),
(4, 16, 'CARBONARA', '$12.75'),
(4, 17, 'LASAGNA', '$12.75'),
(4, 18, 'SPAGHETTI', '$9.50'),
(4, 19, 'BOLOGNESE', '$13.50'),
(4, 20, 'CARBONARA', '$12.75'),
(4, 21, 'LASAGNA', '$12.75'),
(4, 22, 'SPAGHETTI', '$9.50'),
(4, 23, 'BOLOGNESE', '$13.50'),
(4, 24, 'CARBONARA', '$12.75'),
(4, 25, 'LASAGNA', '$12.75'),
(4, 26, 'SPAGHETTI', '$9.50'),
(4, 27, 'BOLOGNESE', '$13.50'),
(4, 28, 'CARBONARA', '$12.75'),
(4, 29, 'LASAGNA', '$12.75'),
(4, 30, 'SPAGHETTI', '$9.50'),
(4, 31, 'BOLOGNESE', '$13.50'),
(4, 32, 'MUSHROOM PASTA', '$10.75'),
(5, 33, 'ICE CREAM SUNDAE', '$7.95'),
(5, 34, 'FRUIT CREPE', '$10.95'),
(5, 35, 'CAKES', 'Starts from $35'),
(5, 36, 'COOKIES', '$2'),
(5, 37, 'BUTTER TARTS', '$2.50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_menu`
--
ALTER TABLE `db_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `db_menuitems`
--
ALTER TABLE `db_menuitems`
  ADD PRIMARY KEY (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_menu`
--
ALTER TABLE `db_menu`
  MODIFY `menu_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `db_menuitems`
--
ALTER TABLE `db_menuitems`
  MODIFY `item_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
