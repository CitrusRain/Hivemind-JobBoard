-- phpMyAdmin SQL Dump
-- version 4.0.9deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 22, 2014 at 05:36 PM
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
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `QuestionID` int(11) NOT NULL AUTO_INCREMENT,
  `Contents` text COLLATE utf8_unicode_ci NOT NULL,
  `CreatedBy` int(11) DEFAULT NULL,
  `DatePosted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Type` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'LikeMe1-5' COMMENT 'Determines if a question is set to have a generic answerset or custom answerset.',
  PRIMARY KEY (`QuestionID`),
  KEY `CreatedBy` (`CreatedBy`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`QuestionID`, `Contents`, `CreatedBy`, `DatePosted`, `Type`) VALUES
(4, 'Hello World, How are you?', NULL, '2014-10-22 16:50:15', NULL),
(5, 'Does this work?', NULL, '2014-10-22 16:58:50', NULL),
(6, 'I tend to do things at the last moment', NULL, '2014-10-22 17:12:43', 'LikeMe1-5');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
