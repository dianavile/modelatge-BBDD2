-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2020 at 03:12 PM
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
-- Database: `culdampolla_opticadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `empleat`
--

CREATE TABLE `empleat` (
  `empleatID` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `marcaulleresID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `proveïdor`
--

CREATE TABLE `proveïdor` (
  `ProveïdorID` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `adresa` text NOT NULL DEFAULT 'adreça: ["carrer","nr","pis","porta","ciutat","codi_postal", "pais"]\'',
  `telefon` varchar(20) NOT NULL DEFAULT '[+""]-"12345678"',
  `fax` varchar(20) NOT NULL,
  `NIF` int(11) NOT NULL,
  `marcaulleresID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ulleres`
--

CREATE TABLE `ulleres` (
  `ulleresID` int(11) NOT NULL,
  `marcaulleresID` varchar(20) NOT NULL,
  `graduaciovidre` varchar(30) NOT NULL DEFAULT '["esquerra", "dreta"]',
  `muntura` varchar(30) NOT NULL,
  `colormuntura` varchar(30) NOT NULL,
  `colorvidre` varchar(30) NOT NULL DEFAULT '["esquerra", "dreta"]',
  `preu` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `empleat`
--
ALTER TABLE `empleat`
  ADD UNIQUE KEY `empleatID` (`empleatID`),
  ADD KEY `marcaulleresID` (`marcaulleresID`) USING BTREE;

--
-- Indexes for table `proveïdor`
--
ALTER TABLE `proveïdor`
  ADD PRIMARY KEY (`marcaulleresID`),
  ADD UNIQUE KEY `ProveïdorID` (`ProveïdorID`);

--
-- Indexes for table `ulleres`
--
ALTER TABLE `ulleres`
  ADD UNIQUE KEY `ulleresID` (`ulleresID`),
  ADD KEY `marcaulleresID` (`marcaulleresID`) USING BTREE;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `empleat`
--
ALTER TABLE `empleat`
  ADD CONSTRAINT `empleat_ibfk_1` FOREIGN KEY (`marcaulleresID`) REFERENCES `proveïdor` (`marcaulleresID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ulleres`
--
ALTER TABLE `ulleres`
  ADD CONSTRAINT `ulleres_ibfk_1` FOREIGN KEY (`marcaulleresID`) REFERENCES `proveïdor` (`marcaulleresID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
