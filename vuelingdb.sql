-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2020 at 11:32 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vuelingdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `avions`
--

CREATE TABLE `avions` (
  `planeID` int(3) NOT NULL,
  `planeCapacity` int(3) NOT NULL,
  `planeModel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `seients_avion`
--

CREATE TABLE `seients_avion` (
  `seatID` varchar(3) DEFAULT NULL,
  `planeID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avions`
--
ALTER TABLE `avions`
  ADD PRIMARY KEY (`planeID`);

--
-- Indexes for table `seients_avion`
--
ALTER TABLE `seients_avion`
  ADD UNIQUE KEY `id_seient` (`seatID`) USING BTREE,
  ADD KEY `planeID` (`planeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `avions`
--
ALTER TABLE `avions`
  MODIFY `planeID` int(3) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `seients_avion`
--
ALTER TABLE `seients_avion`
  ADD CONSTRAINT `seients_avion_ibfk_1` FOREIGN KEY (`planeID`) REFERENCES `avions` (`planeID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
