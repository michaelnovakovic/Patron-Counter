-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 19, 2019 at 12:46 PM
-- Server version: 5.7.24-log
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `party_count`
--

-- --------------------------------------------------------

--
-- Table structure for table `patroncount`
--

CREATE TABLE `patroncount` (
  `patronId` int(11) NOT NULL,
  `patronCode` varchar(25) NOT NULL,
  `timeofEntry` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patroncount`
--

INSERT INTO `patroncount` (`patronId`, `patronCode`, `timeofEntry`) VALUES
(1, '123456789', '2019-07-19 04:00:00'),
(2, '546859869', '2019-07-19 06:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patroncount`
--
ALTER TABLE `patroncount`
  ADD PRIMARY KEY (`patronId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patroncount`
--
ALTER TABLE `patroncount`
  MODIFY `patronId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
