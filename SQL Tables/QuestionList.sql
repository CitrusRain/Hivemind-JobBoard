-- phpMyAdmin SQL Dump
-- version 4.0.9deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 30, 2014 at 06:21 PM
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
-- Table structure for table `QuestionList`
--

CREATE TABLE IF NOT EXISTS `QuestionList` (
  `ListID` int(11) NOT NULL AUTO_INCREMENT,
  `ListOwnerID` int(11) NOT NULL DEFAULT '0',
  `ListName` varchar(50) NOT NULL,
  PRIMARY KEY (`ListID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `QuestionList`
--

INSERT INTO `QuestionList` (`ListID`, `ListOwnerID`, `ListName`) VALUES
(1, 0, 'Hello List'),
(2, 0, 'List number 2'),
(3, 0, 'List 3');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
