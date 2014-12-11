-- phpMyAdmin SQL Dump
-- version 4.0.9deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 11, 2014 at 04:20 AM
-- Server version: 5.5.33-1
-- PHP Version: 5.5.6-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `JobBoardDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE IF NOT EXISTS `Users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserAlias` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `Email` varchar(255) COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Not Implemented',
  `Password` varchar(255) COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Not Implemented',
  `Salt` varchar(255) COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Not Implemented',
  `UserFName` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `UserLName` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `GenderID` int(11) DEFAULT NULL,
  `CustomGender` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `Race` int(11) DEFAULT NULL,
  `ZipCode` int(11) DEFAULT NULL,
  `BannerText` varchar(25) COLLATE latin1_general_ci DEFAULT NULL,
  `PremiumHeaderSettings` tinyint(4) unsigned DEFAULT NULL,
  `UserType` varchar(30) COLLATE latin1_general_ci DEFAULT 'User',
  `Bio` text COLLATE latin1_general_ci,
  `JoinDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UserName` (`UserAlias`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `salty` (`Salt`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=502 ;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`ID`, `UserAlias`, `Email`, `Password`, `Salt`, `UserFName`, `UserLName`, `GenderID`, `CustomGender`, `Race`, `ZipCode`, `BannerText`, `PremiumHeaderSettings`, `UserType`, `Bio`, `JoinDate`) VALUES
(501, 'Citrus', NULL, NULL, NULL, 'Ryan', 'Young', 1, NULL, NULL, 15010, NULL, NULL, 'User', NULL, '2014-12-10 05:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
