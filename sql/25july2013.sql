-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 25, 2013 at 05:50 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `oil_price`
--

-- --------------------------------------------------------

--
-- Table structure for table `in_diesel`
--

CREATE TABLE IF NOT EXISTS `in_diesel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `in_diesel`
--

INSERT INTO `in_diesel` (`id`, `date`, `price`) VALUES
(1, '2012-12-21', 75.44),
(2, '2012-09-02', 75.12),
(3, '2012-06-19', 66.064),
(4, '2012-03-26', 65.456),
(5, '2012-02-24', 65.456),
(6, '2012-01-26', 65.456),
(7, '2012-01-18', 65.456),
(8, '2011-10-10', 65.456),
(9, '2011-08-26', 65.456),
(10, '2011-07-10', 65.456),
(11, '2011-06-11', 65.792),
(12, '2011-05-07', 60.4),
(13, '2011-03-12', 60.4),
(14, '2010-12-18', 60.4),
(15, '2010-12-06', 60.4),
(16, '2010-07-06', 64.16),
(17, '2010-05-11', 60.816),
(18, '2010-04-22', 60.816),
(19, '2010-03-14', 56.752),
(20, '2010-02-17', 52.592),
(21, '2010-02-06', 52.592),
(22, '2010-01-08', 52.592),
(23, '2009-11-17', 52.592),
(24, '2009-03-03', 49.376),
(25, '2009-02-02', 49.376),
(26, '2008-12-26', 52.576),
(27, '2008-12-03', 55.776),
(28, '2008-11-01', 55.68),
(29, '2008-10-25', 55.68),
(30, '2008-06-09', 55.68),
(31, '2008-06-04', 50.88),
(32, '2008-05-14', 50.88),
(33, '2007-12-26', 49.216),
(34, '2007-12-06', 49.216),
(35, '2007-11-08', 49.216),
(36, '2007-10-25', 49.216),
(37, '2007-10-25', 49.216),
(38, '2007-08-05', 49.216),
(39, '2007-04-10', 48.4),
(40, '2006-10-31', 48.72),
(41, '2006-09-26', 48.72),
(42, '2006-03-03', 48.72),
(43, '2006-02-17', 48.72),
(44, '2005-08-18', 48.72),
(45, '2005-06-21', 42.32),
(46, '2005-02-12', 42.048),
(47, '2005-01-10', 42.048),
(48, '2004-07-19', 38.656);

-- --------------------------------------------------------

--
-- Table structure for table `in_kerosene`
--

CREATE TABLE IF NOT EXISTS `in_kerosene` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `in_kerosene`
--

INSERT INTO `in_kerosene` (`id`, `date`, `price`) VALUES
(1, '2012-12-21', 23.728),
(2, '2012-09-02', 23.728),
(3, '2012-06-19', 23.728),
(4, '2012-03-26', 23.728),
(5, '2012-02-24', 23.728),
(6, '2012-01-26', 23.728),
(7, '2012-01-18', 23.728),
(8, '2011-10-10', 23.728),
(9, '2011-08-26', 23.728),
(10, '2011-07-10', 23.728),
(11, '2011-06-11', 23.728),
(12, '2011-05-07', 19.712),
(13, '2011-03-12', 19.712),
(14, '2010-12-18', 19.712),
(15, '2010-12-06', 19.712),
(16, '2010-07-06', 19.712),
(17, '2010-05-11', 14.544),
(18, '2010-04-22', 14.544),
(19, '2010-03-14', 14.544),
(20, '2010-02-17', 14.544),
(21, '2010-02-06', 14.544),
(22, '2010-01-08', 14.544),
(23, '2009-11-17', 14.544),
(24, '2009-03-03', 14.544),
(25, '2009-02-02', 14.544),
(26, '2008-12-26', 14.544),
(27, '2008-12-03', 14.544),
(28, '2008-11-01', 14.544),
(29, '2008-10-25', 14.544),
(30, '2008-06-09', 14.544),
(31, '2008-06-04', 14.544),
(32, '2008-05-14', 14.544),
(33, '2007-12-26', 14.544),
(34, '2007-12-06', 14.544),
(35, '2007-11-08', 14.544),
(36, '2007-10-25', 14.544),
(37, '2007-10-25', 14.544),
(38, '2007-08-05', 14.544),
(39, '2007-04-10', 14.544),
(40, '2006-10-31', 14.544),
(41, '2006-09-26', 14.544),
(42, '2006-03-03', 14.48),
(43, '2006-02-17', 14.48),
(44, '2005-08-18', 14.432),
(45, '2005-06-21', 14.432),
(46, '2005-02-12', 14.432),
(47, '2005-01-10', 14.432),
(48, '2004-07-19', 14.432);

-- --------------------------------------------------------

--
-- Table structure for table `in_lpgas`
--

CREATE TABLE IF NOT EXISTS `in_lpgas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `in_petrol`
--

CREATE TABLE IF NOT EXISTS `in_petrol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `in_petrol`
--

INSERT INTO `in_petrol` (`id`, `date`, `price`) VALUES
(1, '2012-12-21', 107.584),
(2, '2012-09-02', 109.536),
(3, '2012-06-19', 108.448),
(4, '2012-03-26', 105.024),
(5, '2012-02-24', 105.024),
(6, '2012-01-26', 105.024),
(7, '2012-01-18', 105.024),
(8, '2011-10-10', 106.272),
(9, '2011-08-26', 101.92),
(10, '2011-07-10', 101.392),
(11, '2011-06-11', 93.392),
(12, '2011-05-07', 93.392),
(13, '2011-03-12', 93.392),
(14, '2010-12-18', 84.656),
(15, '2010-12-06', 84.656),
(16, '2010-07-06', 82.288),
(17, '2010-05-11', 76.688),
(18, '2010-04-22', 76.688),
(19, '2010-03-14', 75.888),
(20, '2010-02-17', 75.888),
(21, '2010-02-06', 71.552),
(22, '2010-01-08', 71.552),
(23, '2009-11-17', 71.552),
(24, '2009-03-03', 64.992),
(25, '2009-02-02', 64.992),
(26, '2008-12-26', 72.992),
(27, '2008-12-03', 80.992),
(28, '2008-11-01', 80.992),
(29, '2008-10-25', 80.992),
(30, '2008-06-09', 80.896),
(31, '2008-06-04', 72.896),
(32, '2008-05-14', 72.896),
(33, '2007-12-26', 69.632),
(34, '2007-12-06', 69.632),
(35, '2007-11-08', 69.632),
(36, '2007-10-25', 69.632),
(37, '2007-10-25', 69.632),
(38, '2007-08-05', 69.632),
(39, '2007-04-10', 68.56),
(40, '2006-10-31', 71.76),
(41, '2006-09-26', 74.96),
(42, '2006-03-03', 69.584),
(43, '2006-02-17', 69.584),
(44, '2005-08-18', 69.584),
(45, '2005-06-21', 64.784),
(46, '2005-02-12', 60.56),
(47, '2005-01-10', 60.56),
(48, '2004-07-19', 58.896);

-- --------------------------------------------------------

--
-- Table structure for table `np_diesel`
--

CREATE TABLE IF NOT EXISTS `np_diesel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `np_diesel`
--

INSERT INTO `np_diesel` (`id`, `date`, `price`) VALUES
(1, '2012-12-21', 99),
(2, '2012-09-02', 97),
(3, '2012-06-19', 93),
(4, '2012-03-26', 89),
(5, '2012-02-24', 85),
(6, '2012-01-26', 81),
(7, '2012-01-18', 85),
(8, '2011-10-10', 76),
(9, '2011-08-26', 75),
(10, '2011-07-10', 73.5),
(11, '2011-06-11', 68.5),
(12, '2011-05-07', 68.5),
(13, '2011-03-12', 68.5),
(14, '2010-12-18', 68.5),
(15, '2010-12-06', 68.5),
(16, '2010-07-06', 65.5),
(17, '2010-05-11', 63),
(18, '2010-04-22', 63),
(19, '2010-03-14', 61),
(20, '2010-02-17', 59),
(21, '2010-02-06', 58),
(22, '2010-01-08', 58),
(23, '2009-11-17', 58),
(24, '2009-03-03', 55),
(25, '2009-02-02', 57.5),
(26, '2008-12-26', 59.5),
(27, '2008-12-03', 60.5),
(28, '2008-11-01', 65),
(29, '2008-10-25', 70),
(30, '2008-06-09', 70),
(31, '2008-06-04', 56.25),
(32, '2008-05-14', 56.25),
(33, '2007-12-26', 56.25),
(34, '2007-12-06', 56.25),
(35, '2007-11-08', 56.25),
(36, '2007-10-25', 56.25),
(37, '2007-10-25', 56.25),
(38, '2007-08-05', 53.15),
(39, '2007-04-10', 53.15),
(40, '2006-10-31', 53.15),
(41, '2006-09-26', 53.15),
(42, '2006-03-03', 53.15),
(43, '2006-02-17', 52.5),
(44, '2005-08-18', 46),
(45, '2005-06-21', 41),
(46, '2005-02-12', 41),
(47, '2005-01-10', 41),
(48, '2004-07-19', 35),
(49, '2004-08-12', 31),
(50, '2003-05-08', 31),
(51, '2003-04-20', 33.5),
(52, '2003-03-25', 35.5),
(53, '2002-11-23', 26.5),
(54, '2001-01-17', 26.5),
(55, '2000-11-16', 27.5),
(56, '2000-10-14', 27.5),
(57, '2000-05-28', 23),
(58, '1999-10-27', 23),
(59, '1999-01-14', 15.5),
(60, '1998-07-17', 16.5),
(61, '1997-07-11', 15.5),
(62, '1997-06-25', 15.5),
(63, '1997-06-13', 17.5),
(64, '1997-04-15', 14),
(65, '1996-08-17', 14),
(66, '1996-06-16', 14),
(67, '1996-07-11', 14),
(68, '1996-04-04', 13.5);

-- --------------------------------------------------------

--
-- Table structure for table `np_kerosene`
--

CREATE TABLE IF NOT EXISTS `np_kerosene` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `np_kerosene`
--

INSERT INTO `np_kerosene` (`id`, `date`, `price`) VALUES
(1, '2012-12-21', 99),
(2, '2012-09-02', 97),
(3, '2012-06-19', 93),
(4, '2012-03-26', 89),
(5, '2012-02-24', 85),
(6, '2012-01-26', 81),
(7, '2012-01-18', 85),
(8, '2011-10-10', 76),
(9, '2011-08-26', 75),
(10, '2011-07-10', 73.5),
(11, '2011-06-11', 68.5),
(12, '2011-05-07', 68.5),
(13, '2011-03-12', 68.5),
(14, '2010-12-18', 68.5),
(15, '2010-12-06', 68.5),
(16, '2010-07-06', 65.5),
(17, '2010-05-11', 63),
(18, '2010-04-22', 63),
(19, '2010-03-14', 61),
(20, '2010-02-17', 59),
(21, '2010-02-06', 58),
(22, '2010-01-08', 58),
(23, '2009-11-17', 58),
(24, '2009-03-03', 55),
(25, '2009-02-02', 57.5),
(26, '2008-12-26', 59.5),
(27, '2008-12-03', 60.5),
(28, '2008-11-01', 65),
(29, '2008-10-25', 65),
(30, '2008-06-09', 65),
(31, '2008-06-04', 51.2),
(32, '2008-05-14', 51.2),
(33, '2007-12-26', 51.2),
(34, '2007-12-06', 51.2),
(35, '2007-11-08', 51.2),
(36, '2007-10-25', 51.2),
(37, '2007-10-25', 51.2),
(38, '2007-08-05', 47.65),
(39, '2007-04-10', 47.65),
(40, '2006-10-31', 47.65),
(41, '2006-09-26', 47.65),
(42, '2006-03-03', 47.65),
(43, '2006-02-17', 47.65),
(44, '2005-08-18', 39),
(45, '2005-06-21', 34),
(46, '2005-02-12', 34),
(47, '2005-01-10', 36),
(48, '2004-07-19', 28),
(49, '2004-08-12', 24),
(50, '2003-05-08', 24),
(51, '2003-04-20', 27),
(52, '2003-03-25', 28),
(53, '2002-11-23', 17),
(54, '2001-01-17', 17),
(55, '2000-11-16', 22),
(56, '2000-10-14', 26),
(57, '2000-05-28', 13),
(58, '1999-10-27', 13),
(59, '1999-01-14', 10.5),
(60, '1998-07-17', 10.5),
(61, '1997-07-11', 10.5),
(62, '1997-06-25', 10.5),
(63, '1997-06-13', 11),
(64, '1997-04-15', 9.5),
(65, '1996-08-17', 9.5),
(66, '1996-06-16', 9.5),
(67, '1996-07-11', 9.5),
(68, '1996-04-04', 9.5);

-- --------------------------------------------------------

--
-- Table structure for table `np_lpgas`
--

CREATE TABLE IF NOT EXISTS `np_lpgas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `np_lpgas`
--

INSERT INTO `np_lpgas` (`id`, `date`, `price`) VALUES
(1, '2012-12-21', 1470),
(2, '2012-09-02', 1470),
(3, '2012-06-19', 1415),
(4, '2012-03-26', 1415),
(5, '2012-02-24', 1415),
(6, '2012-01-26', 1415),
(7, '2012-01-18', 1500),
(8, '2011-10-10', 1325),
(9, '2011-08-26', 1325),
(10, '2011-07-10', 1325),
(11, '2011-06-11', 1325),
(12, '2011-05-07', 1325),
(13, '2011-03-12', 1325),
(14, '2010-12-18', 1325),
(15, '2010-12-06', 1325),
(16, '2010-07-06', 1250),
(17, '2010-05-11', 1250),
(18, '2010-04-22', 1250),
(19, '2010-03-14', 1250),
(20, '2010-02-17', 1250),
(21, '2010-02-06', 1250),
(22, '2010-01-08', 1250),
(23, '2009-11-17', 1125),
(24, '2009-03-03', 1125),
(25, '2009-02-02', 1125),
(26, '2008-12-26', 1150),
(27, '2008-12-03', 1200),
(28, '2008-11-01', 1200),
(29, '2008-10-25', 1200),
(30, '2008-06-09', 1200),
(31, '2008-06-04', 1100),
(32, '2008-05-14', 1100),
(33, '2007-12-26', 1100),
(34, '2007-12-06', 1100),
(35, '2007-11-08', 1100),
(36, '2007-10-25', 1100),
(37, '2007-10-25', 900),
(38, '2007-08-05', 900),
(39, '2007-04-10', 900),
(40, '2006-10-31', 900),
(41, '2006-09-26', 900),
(42, '2006-03-03', 900),
(43, '2006-02-17', 900),
(44, '2005-08-18', 900),
(45, '2005-06-21', 900),
(46, '2005-02-12', 800),
(47, '2005-01-10', 850),
(48, '2004-07-19', 750),
(49, '2004-08-12', 725),
(50, '2003-05-08', 700),
(51, '2003-04-20', 700),
(52, '2003-03-25', 700),
(53, '2002-11-23', 650),
(54, '2001-01-17', 550),
(55, '2000-11-16', 550),
(56, '2000-10-14', 550),
(57, '2000-05-28', 465),
(58, '1999-10-27', 465),
(59, '1999-01-14', 465),
(60, '1998-07-17', 465),
(61, '1997-07-11', 465);

-- --------------------------------------------------------

--
-- Table structure for table `np_petrol`
--

CREATE TABLE IF NOT EXISTS `np_petrol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `np_petrol`
--

INSERT INTO `np_petrol` (`id`, `date`, `price`) VALUES
(1, '2012-12-21', 123),
(2, '2012-09-02', 125),
(3, '2012-06-19', 120),
(4, '2012-03-26', 120),
(5, '2012-02-24', 116),
(6, '2012-01-26', 112),
(7, '2012-01-18', 115),
(8, '2011-10-10', 105),
(9, '2011-08-26', 102),
(10, '2011-07-10', 102),
(11, '2011-06-11', 102),
(12, '2011-05-07', 97),
(13, '2011-03-12', 97),
(14, '2010-12-18', 88),
(15, '2010-12-06', 88),
(16, '2010-07-06', 85),
(17, '2010-05-11', 82),
(18, '2010-04-22', 82),
(19, '2010-03-14', 80),
(20, '2010-02-17', 77.5),
(21, '2010-02-06', 77.5),
(22, '2010-01-08', 77.5),
(23, '2009-11-17', 77.5),
(24, '2009-03-03', 77.5),
(25, '2009-02-02', 77.5),
(26, '2008-12-26', 80.5),
(27, '2008-12-03', 85.5),
(28, '2008-11-01', 90),
(29, '2008-10-25', 95),
(30, '2008-06-09', 100),
(31, '2008-06-04', 80),
(32, '2008-05-14', 80),
(33, '2007-12-26', 80),
(34, '2007-12-06', 73.5),
(35, '2007-11-08', 73.5),
(36, '2007-10-25', 73.5),
(37, '2007-10-25', 73.5),
(38, '2007-08-05', 67.25),
(39, '2007-04-10', 67.25),
(40, '2006-10-31', 67.25),
(41, '2006-09-26', 67.25),
(42, '2006-03-03', 67.25),
(43, '2006-02-17', 67),
(44, '2005-08-18', 67),
(45, '2005-06-21', 62),
(46, '2005-02-12', 62),
(47, '2005-01-10', 62),
(48, '2004-07-19', 56),
(49, '2004-08-12', 56),
(50, '2003-05-08', 54),
(51, '2003-04-20', 56),
(52, '2003-03-25', 56),
(53, '2002-11-23', 52),
(54, '2001-01-17', 46),
(55, '2000-11-16', 47),
(56, '2000-10-14', 47),
(57, '2000-05-28', 40),
(58, '1999-10-27', 40),
(59, '1999-01-14', 40),
(60, '1998-07-17', 40),
(61, '1997-07-11', 39),
(62, '1997-06-25', 39),
(63, '1997-06-13', 39),
(64, '1997-04-15', 34),
(65, '1996-08-17', 34),
(66, '1996-06-16', 34),
(67, '1996-07-11', 34),
(68, '1996-04-04', 31);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
