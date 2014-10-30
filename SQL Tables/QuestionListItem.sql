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
-- Table structure for table `QuestionListItem`
--

CREATE TABLE IF NOT EXISTS `QuestionListItem` (
  `ListID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL,
  `CorrectAnswer` char(11) NOT NULL,
  `PointsScored` int(11) NOT NULL DEFAULT '5',
  PRIMARY KEY (`ListID`,`QuestionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `QuestionListItem`
--

INSERT INTO `QuestionListItem` (`ListID`, `QuestionID`, `CorrectAnswer`, `PointsScored`) VALUES
(0, 12, 'c', 5),
(1, 4, 'b', 0),
(1, 6, 'c', 5),
(2, 4, 'e', 5);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
