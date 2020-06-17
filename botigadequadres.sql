-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2020 at 12:30 PM
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
-- Database: `botigadequadres`
--

-- --------------------------------------------------------

--
-- Table structure for table `comprador`
--

CREATE TABLE `comprador` (
  `id_comprador` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `cognom` varchar(30) NOT NULL,
  `DNI` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `quadres`
--

CREATE TABLE `quadres` (
  `id_quadre` int(11) NOT NULL,
  `preu` smallint(6) NOT NULL,
  `autor` varchar(30) NOT NULL DEFAULT 'anonim',
  `id_comprador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comprador`
--
ALTER TABLE `comprador`
  ADD KEY `id_comprador` (`id_comprador`);

--
-- Indexes for table `quadres`
--
ALTER TABLE `quadres`
  ADD PRIMARY KEY (`id_quadre`),
  ADD KEY `id_comprador` (`id_comprador`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `quadres`
--
ALTER TABLE `quadres`
  ADD CONSTRAINT `quadres_ibfk_1` FOREIGN KEY (`id_comprador`) REFERENCES `comprador` (`id_comprador`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
