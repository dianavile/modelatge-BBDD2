-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2020 at 02:27 PM
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
-- Database: `xarxasocialdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `fotos`
--

CREATE TABLE `fotos` (
  `codiID` int(11) NOT NULL,
  `URL` varchar(50) NOT NULL,
  `usuariID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `usuari`
--

CREATE TABLE `usuari` (
  `UsuariID` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contraseny` varchar(20) NOT NULL,
  `com_conegut` varchar(50) NOT NULL DEFAULT 'amics'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fotos`
--
ALTER TABLE `fotos`
  ADD KEY `usuariID` (`usuariID`);

--
-- Indexes for table `usuari`
--
ALTER TABLE `usuari`
  ADD UNIQUE KEY `UsuariID` (`UsuariID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fotos`
--
ALTER TABLE `fotos`
  ADD CONSTRAINT `fotos_ibfk_1` FOREIGN KEY (`usuariID`) REFERENCES `usuari` (`UsuariID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
