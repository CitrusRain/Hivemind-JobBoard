-- phpMyAdmin SQL Dump
-- version 4.0.9deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 30, 2014 at 07:07 PM
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
-- Table structure for table `Jobs`
--

CREATE TABLE IF NOT EXISTS `Jobs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EmployerID` int(11) NOT NULL,
  `DatePosted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Title` varchar(50) NOT NULL,
  `Location` varchar(150) NOT NULL,
  `Description` text NOT NULL,
  `QuestionList1` int(11) NOT NULL,
  `QuestionList2` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `Jobs`
--

INSERT INTO `Jobs` (`ID`, `EmployerID`, `DatePosted`, `Title`, `Location`, `Description`, `QuestionList1`, `QuestionList2`) VALUES
(3, 1, '2014-10-30 17:54:43', 'Application Tester', 'Online', 'Test to see that the new job form works properly.', 1, 2),
(4, 1, '2014-10-30 18:20:31', 'Job 2', 'Ohio', 'Stare at goats on a daily basis using developed skills yadda yadda yadda...\r\n\r\nLooking for someone with a Master''s Degree and 10 years experience.', 2, 0),
(5, 1, '2014-10-30 19:07:12', 'Cashier', 'Florence, Kentucky', 'Check people out.', 2, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
