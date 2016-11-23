-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2016 at 07:20 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `araf`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `idAdmin` int(11) NOT NULL,
  `AdminName` varchar(45) NOT NULL,
  `AdminPassword` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idAdmin`, `AdminName`, `AdminPassword`) VALUES
(1, 'adnan', '12345'),
(2, 'araf', '54321');

-- --------------------------------------------------------

--
-- Table structure for table `appointed`
--

CREATE TABLE IF NOT EXISTS `appointed` (
`idappointed` int(11) NOT NULL,
  `client` varchar(45) DEFAULT NULL,
  `cell` varchar(45) DEFAULT NULL,
  `mechanic` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `car` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appointed`
--

INSERT INTO `appointed` (`idappointed`, `client`, `cell`, `mechanic`, `date`, `car`) VALUES
(2, 'rony', '01921202010', 'rakib', '2016-07-21', NULL),
(3, 'zishan', '01700000000', 'rakib', '2016-07-21', NULL),
(4, 'argha', '01900000000', 'rakib', '2016-07-21', NULL),
(5, 'adnan', '01600000000', 'araf', '2016-07-21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
`idClient` int(11) NOT NULL,
  `ClientName` varchar(45) NOT NULL,
  `ClientAddress` varchar(45) DEFAULT NULL,
  `ClientPhn` varchar(45) DEFAULT NULL,
  `ClientCarLicense` varchar(45) DEFAULT NULL,
  `ClientCarEngine` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`idClient`, `ClientName`, `ClientAddress`, `ClientPhn`, `ClientCarLicense`, `ClientCarEngine`) VALUES
(1, 'tanzi', 'mirpur', '01671892984', 'abc-345', 'mustang-369'),
(2, 'ashik', 'mohakhali', '01836646663', 'ark-123', 'ark-123'),
(3, 'rony', 'mohakhali', '01921202010', 'mst-350', 'abc-123'),
(4, 'zishan', 'mohakhali', '01700000000', 'ark-123', 'ark-123'),
(5, 'argha', 'mohakhali', '01900000000', 'mst-350', 'abc-123'),
(6, 'adnan', 'mohakhali', '01600000000', 'ark-123', 'ark-123'),
(12, 'adnan', 'mohakhali', '01600000000', 'ark-123', 'fff-230'),
(13, 'adnan', 'mohakhali', '01600000000', 'mst-350', 'ddd-333'),
(14, 'rahat', 'mohakhali', '01500000000', 'mst-350', 'rat-111'),
(15, 'rahat', 'mohakhali', '01500000000', 'mst-350', 'rat-222');

-- --------------------------------------------------------

--
-- Table structure for table `mechanic`
--

CREATE TABLE IF NOT EXISTS `mechanic` (
  `idMechanic` int(11) NOT NULL,
  `MechanicName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mechanic`
--

INSERT INTO `mechanic` (`idMechanic`, `MechanicName`) VALUES
(1, 'araf'),
(2, 'asif'),
(3, 'shams'),
(4, 'rakib'),
(5, 'junayed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`idAdmin`), ADD UNIQUE KEY `AdminName_UNIQUE` (`AdminName`);

--
-- Indexes for table `appointed`
--
ALTER TABLE `appointed`
 ADD PRIMARY KEY (`idappointed`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
 ADD PRIMARY KEY (`idClient`);

--
-- Indexes for table `mechanic`
--
ALTER TABLE `mechanic`
 ADD PRIMARY KEY (`idMechanic`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointed`
--
ALTER TABLE `appointed`
MODIFY `idappointed` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
MODIFY `idClient` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
