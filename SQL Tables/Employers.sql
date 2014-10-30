-- phpMyAdmin SQL Dump
-- version 4.0.9deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 30, 2014 at 07:09 PM
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
-- Table structure for table `Employers`
--

CREATE TABLE IF NOT EXISTS `Employers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EmployerIdentificationNumber` varchar(20) NOT NULL,
  `EmployerName` varchar(150) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `EmployerBio` text NOT NULL,
  `JoinDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `EmployerIdentificationNumber` (`EmployerIdentificationNumber`,`EmployerName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Employers`
--

INSERT INTO `Employers` (`ID`, `EmployerIdentificationNumber`, `EmployerName`, `Location`, `EmployerBio`, `JoinDate`) VALUES
(1, '71-0415188', 'Walmart', 'Rogers, Arkansas', 'Founder of Walmart\r\n\r\nWalmart as we know it today evolved from Sam Walton’s goals for great value and great customer service. “Mr. Sam,” as he was known, believed in leadership through service. This belief that true leadership depends on willing service was the principle on which Walmart was built, and drove the decisions the company has made for the past 50 years. So much of Walmart’s history is tied to the story of Sam Walton himself, and so much of our future will be rooted in Mr. Sam’s principles.? \r\nThe Road to Walmart\r\nSam Walton was born in 1918 in Kingfisher, Oklahoma. In 1942, at the age of 24, he joined the military. He married Helen Robson in 1943. When his military service ended in 1945, Sam and Helen moved to Iowa and then to Newport, Arkansas. During this time, Sam gained early retail experience, eventually operating his own variety store. ?\r\nIn 1950, the Waltons left Newport for Bentonville, where Sam opened Walton’s 5&10 on the downtown square. They chose Bentonville because Helen wanted small-town living, and Sam could take advantage of the different hunting seasons that living at the corner of four states had to offer.\r\nInspired by the early success of his dime store, and driven to bring even greater opportunity and value to his customers, Sam opened the first Walmart in 1962 at the age of 44 in Rogers, Arkansas.?\r\n\r\nChanging the Face of Retail\r\nSam''s competitors thought his idea that a successful business could be built around offering lower prices and great service would never work. As it turned out, the company''s success exceeded even Sam''s expectations. The company went public in 1970, and the proceeds financed a steady expansion of the business. ??Sam credited the rapid growth of Walmart not just to the low costs that attracted his customers, but also to his associates. He relied on them to give customers the great shopping experience that would keep them coming back. Sam shared his vision for the company with associates in a way that was nearly unheard of in the industry. He made them partners in the success of the company, and firmly believed that this partnership was what made Walmart great.\r\n\r\nAs the stores grew, so did Sam''s aspirations. In addition to bringing new approaches and technologies to retail, he also experimented with new store formats—including Sam''s Club and the Walmart Supercenter—and even made the decision to take Walmart into Mexico. Sam''s fearlessness in offering lower prices and bringing Walmart''s value to customers in the U.S. and beyond set a standard for the company that lives on to this day. His strong commitment to service and to the values that help individuals, businesses and the country succeed earned him the Presidential Medal of Freedom, awarded by President George H. W. Bush in 1992.? \r\n\r\nIt was during Sam''s acceptance remarks that he articulated what would come to be Walmart''s official company purpose.\r\n\r\n"If we work together," he said, "we''ll lower the cost of living for everyone...we''ll give the world an opportunity to see what it''s like to save and have a better life."\r\n\r\nToday, "saving people money so they can live better" is the driving force behind everything we do.\r\n\r\nMr. Sam''s Legacy\r\nSam Walton died in 1992, shortly after receiving the Medal of Freedom, but his legacy lives on. To this day, Walmart remains a leader in the retail industry. We are committed not just to expanding the business to better serve our customers, but also to improving the communities we serve through our efforts to constantly improve what we do and how we do it, and through the impacts we''re able to achieve through the Walmart Foundation. Through this daily dedication to our business and our customers, we honor Mr. Sam. ', '2014-10-30 18:42:58');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
