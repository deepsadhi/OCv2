-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 22, 2013 at 08:58 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=76 ;

--
-- Dumping data for table `in_diesel`
--

INSERT INTO `in_diesel` (`id`, `date`, `price`) VALUES
(1, '2013-07-01', 80.416),
(2, '2013-06-01', 80.4),
(3, '2013-05-23', 79.504),
(4, '2013-05-11', 79.504),
(5, '2013-04-16', 77.872),
(6, '2013-04-01', 77.808),
(7, '2013-03-22', 77.872),
(8, '2013-02-16', 77.056),
(9, '2013-01-17', 76.24),
(10, '2013-01-01', 75.44),
(11, '2012-10-27', 75.44),
(12, '2012-09-14', 75.12),
(13, '2012-08-01', 66.112),
(14, '2012-07-25', 66.064),
(15, '2012-06-18', 66.064),
(16, '2011-11-01', 65.456),
(17, '2011-07-08', 65.456),
(18, '2011-07-01', 65.456),
(19, '2011-06-25', 65.792),
(20, '2010-11-02', 60.4),
(21, '2010-09-08', 60.4),
(22, '2010-06-26', 64.16),
(23, '2010-04-01', 60.96),
(24, '2010-02-27', 56.752),
(25, '2009-07-02', 52.592),
(26, '2009-01-29', 49.376),
(27, '2008-12-06', 52.576),
(28, '2008-11-06', 55.776),
(29, '2008-07-16', 55.776),
(30, '2008-06-06', 55.68),
(31, '2008-05-24', 50.88),
(32, '2008-02-15', 50.816),
(33, '2007-06-06', 49.216),
(34, '2007-05-16', 48.4),
(35, '2007-03-01', 48.4),
(36, '2007-02-16', 48.4),
(37, '2006-12-01', 50),
(38, '2006-11-30', 50),
(39, '2006-09-06', 48.72),
(40, '2006-06-20', 51.6),
(41, '2006-06-10', 51.952),
(42, '2006-06-05', 51.952),
(43, '2005-09-06', 48.72),
(44, '2005-06-20', 45.52),
(45, '2005-04-05', 42.32),
(46, '2005-04-01', 45.152),
(47, '2004-11-04', 42.048),
(48, '2004-07-31', 38.656),
(49, '2004-06-15', 36.384),
(50, '2003-12-31', 34.768),
(51, '2003-12-12', 33.168),
(52, '2003-10-16', 31.568),
(53, '2003-08-31', 32.528),
(54, '2003-06-01', 30.528),
(55, '2003-05-16', 30.688),
(56, '2003-04-26', 32.192),
(57, '2003-04-16', 33.792),
(58, '2003-04-01', 35.392),
(59, '2003-03-16', 35.392),
(60, '2003-03-01', 33.936),
(61, '2003-02-01', 31.744),
(62, '2003-01-03', 30.512),
(63, '2003-01-01', 31.152),
(64, '2002-12-01', 28.896),
(65, '2002-11-16', 29.712),
(66, '2002-11-16', 30.8),
(67, '2002-10-17', 30.768),
(68, '2002-10-01', 30.256),
(69, '2002-09-16', 29.888),
(70, '2002-09-01', 29.344),
(71, '2002-08-16', 28.88),
(72, '2002-08-01', 29.168),
(73, '2002-07-01', 29.168),
(74, '2002-06-16', 29.168),
(75, '2002-06-04', 28.784);

-- --------------------------------------------------------

--
-- Table structure for table `in_kerosene`
--

CREATE TABLE IF NOT EXISTS `in_kerosene` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `in_kerosene`
--

INSERT INTO `in_kerosene` (`id`, `date`, `price`) VALUES
(1, '2012-04-01', 23.728),
(2, '2011-06-25', 23.728),
(3, '2010-06-26', 19.712),
(4, '2006-05-25', 14.544),
(5, '2006-04-01', 14.544),
(6, '2005-11-01', 14.48),
(7, '2005-09-01', 14.432),
(8, '2005-04-01', 14.432),
(9, '2004-11-05', 14.432),
(10, '2004-07-04', 14.432),
(11, '2004-06-16', 14.432);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=92 ;

--
-- Dumping data for table `in_petrol`
--

INSERT INTO `in_petrol` (`id`, `date`, `price`) VALUES
(1, '2013-07-01', 109.728),
(2, '2013-06-29', 109.728),
(3, '2013-06-16', 106.224),
(4, '2013-06-01', 102.384),
(5, '2013-05-23', 100.944),
(6, '2013-05-01', 100.944),
(7, '2013-04-16', 105.744),
(8, '2013-04-02', 107.664),
(9, '2013-04-01', 109.296),
(10, '2013-03-16', 109.344),
(11, '2013-03-02', 113.184),
(12, '2013-02-16', 110.496),
(13, '2013-01-18', 107.616),
(14, '2013-01-16', 108.096),
(15, '2013-01-01', 107.584),
(16, '2012-11-16', 107.584),
(17, '2012-10-27', 109.104),
(18, '2012-10-09', 108.64),
(19, '2012-08-01', 109.536),
(20, '2012-07-25', 109.568),
(21, '2012-07-24', 109.568),
(22, '2012-06-29', 108.448),
(23, '2012-06-18', 112.384),
(24, '2012-06-03', 113.856),
(25, '2012-05-24', 117.088),
(26, '2011-12-01', 105.024),
(27, '2011-11-16', 106.272),
(28, '2011-11-04', 109.824),
(29, '2011-09-16', 106.944),
(30, '2011-07-01', 101.92),
(31, '2011-05-15', 101.392),
(32, '2011-03-02', 93.392),
(33, '2011-01-16', 93.392),
(34, '2010-12-16', 89.392),
(35, '2010-11-09', 84.656),
(36, '2010-11-02', 84.144),
(37, '2010-10-17', 84.144),
(38, '2010-09-21', 82.928),
(39, '2010-09-08', 82.496),
(40, '2010-06-26', 82.288),
(41, '2010-04-01', 76.688),
(42, '2010-02-27', 75.888),
(43, '2009-07-02', 71.552),
(44, '2009-01-29', 64.992),
(45, '2008-12-06', 72.992),
(46, '2008-11-06', 80.992),
(47, '2008-07-16', 80.992),
(48, '2008-06-06', 80.896),
(49, '2008-05-24', 72.896),
(50, '2008-02-15', 72.832),
(51, '2007-06-06', 69.632),
(52, '2007-05-16', 68.56),
(53, '2007-03-01', 68.56),
(54, '2007-02-16', 68.56),
(55, '2006-11-30', 71.76),
(56, '2006-06-20', 74.96),
(57, '2006-06-05', 76.016),
(58, '2005-09-06', 69.584),
(59, '2005-06-20', 64.784),
(60, '2005-04-05', 60.784),
(61, '2005-04-01', 60.784),
(62, '2004-11-15', 60.544),
(63, '2004-11-04', 62.4),
(64, '2004-07-31', 58.896),
(65, '2004-06-15', 57.136),
(66, '2003-12-31', 53.92),
(67, '2003-12-12', 52.32),
(68, '2003-10-16', 50.72),
(69, '2003-08-31', 51.84),
(70, '2003-06-01', 48.48),
(71, '2003-05-16', 48.64),
(72, '2003-04-26', 50.384),
(73, '2003-04-16', 51.984),
(74, '2003-04-01', 53.584),
(75, '2003-03-16', 53.584),
(76, '2003-03-01', 36.96),
(77, '2003-02-01', 49.136),
(78, '2003-01-16', 48.528),
(79, '2003-01-03', 47.888),
(80, '2002-12-01', 46.256),
(81, '2002-11-16', 47.312),
(82, '2002-11-01', 48.416),
(83, '2002-10-17', 48.384),
(84, '2002-10-01', 47.856),
(85, '2002-09-16', 47.456),
(86, '2002-09-01', 46.72),
(87, '2002-08-16', 46.4),
(88, '2002-08-01', 46.688),
(89, '2002-07-01', 46.688),
(90, '2002-06-16', 46.688),
(91, '2002-06-04', 47.904);

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