-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2020 at 01:06 PM
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
-- Database: `stube`
--

-- --------------------------------------------------------

--
-- Table structure for table `usuariid`
--

CREATE TABLE `usuariid` (
  `UsuariID` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contraseny` varchar(20) NOT NULL,
  `llistatvideosID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `videoid`
--

CREATE TABLE `videoid` (
  `llistatvideosID` varchar(255) NOT NULL,
  `titol` varchar(60) NOT NULL,
  `descripcio` text NOT NULL,
  `URL` varchar(40) NOT NULL,
  `videoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usuariid`
--
ALTER TABLE `usuariid`
  ADD PRIMARY KEY (`llistatvideosID`),
  ADD UNIQUE KEY `UsuariID` (`UsuariID`);

--
-- Indexes for table `videoid`
--
ALTER TABLE `videoid`
  ADD KEY `llistatvideosID` (`llistatvideosID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `videoid`
--
ALTER TABLE `videoid`
  ADD CONSTRAINT `videoid_ibfk_1` FOREIGN KEY (`llistatvideosID`) REFERENCES `usuariid` (`llistatvideosID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
