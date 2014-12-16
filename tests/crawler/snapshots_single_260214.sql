-- phpMyAdmin SQL Dump
-- version 4.0.6deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 02, 2014 at 08:10 PM
-- Server version: 5.5.35-0ubuntu0.13.10.2
-- PHP Version: 5.5.3-1ubuntu2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bcrawler_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `snapshots_single_260214`
--

CREATE TABLE IF NOT EXISTS `snapshots_single_260214` (
  `snapId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `flatId` int(10) unsigned DEFAULT NULL,
  `bId` mediumint(8) unsigned NOT NULL,
  `sectId` smallint(5) unsigned DEFAULT NULL,
  `extFlatId` mediumint(8) unsigned DEFAULT NULL,
  `flStatus` smallint(5) unsigned DEFAULT NULL,
  `flPrice` int(10) unsigned DEFAULT NULL,
  `snapDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`snapId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `snapshots_single_260214`
--

INSERT INTO `snapshots_single_260214` (`snapId`, `flatId`, `bId`, `sectId`, `extFlatId`, `flStatus`, `flPrice`, `snapDate`) VALUES
(1, NULL, 1, NULL, 126634, 1, 7202304, '2014-02-26 08:00:00'),
(2, NULL, 1, NULL, 126635, 1, 9377141, '2014-02-26 08:00:00'),
(3, NULL, 1, NULL, 126638, 1, 9227966, '2014-02-26 08:00:00'),
(4, NULL, 1, NULL, 126872, 1, 7231480, '2014-02-26 08:00:00'),
(5, NULL, 1, NULL, 126669, 1, 4200000, '2014-02-26 08:00:00'),
(6, NULL, 1, NULL, 127112, 1, 7230438, '2014-02-26 08:00:00'),
(7, NULL, 1, NULL, 127117, 1, 7230438, '2014-02-26 08:00:00'),
(8, NULL, 1, NULL, 127000, 1, 4464390, '2014-02-26 08:00:00'),
(9, NULL, 1, NULL, 127357, 1, 7222102, '2014-02-26 08:00:00'),
(10, NULL, 1, NULL, 127613, 1, 7246068, '2014-02-26 08:00:00'),
(11, NULL, 1, NULL, 127368, 1, 7886214, '2014-02-26 08:00:00'),
(12, NULL, 2, NULL, 127903, 1, 7766093, '2014-02-26 08:00:00'),
(13, NULL, 2, NULL, 127904, 1, 9178299, '2014-02-26 08:00:00'),
(14, NULL, 2, NULL, 127905, 1, 8667246, '2014-02-26 08:00:00'),
(15, NULL, 2, NULL, 127893, 1, 7766093, '2014-02-26 08:00:00'),
(16, NULL, 2, NULL, 127902, 1, 7699725, '2014-02-26 08:00:00'),
(17, NULL, 2, NULL, 127883, 1, 7766093, '2014-02-26 08:00:00'),
(18, NULL, 2, NULL, 127884, 1, 9178299, '2014-02-26 08:00:00'),
(19, NULL, 2, NULL, 127892, 1, 7699725, '2014-02-26 08:00:00'),
(20, NULL, 2, NULL, 127873, 1, 7766093, '2014-02-26 08:00:00'),
(21, NULL, 2, NULL, 127874, 1, 9178299, '2014-02-26 08:00:00'),
(22, NULL, 2, NULL, 127882, 1, 7699725, '2014-02-26 08:00:00'),
(23, NULL, 2, NULL, 127863, 1, 7766093, '2014-02-26 08:00:00'),
(24, NULL, 2, NULL, 127872, 1, 7699725, '2014-02-26 08:00:00'),
(25, NULL, 2, NULL, 127853, 1, 7766093, '2014-02-26 08:00:00'),
(26, NULL, 2, NULL, 127854, 1, 9178299, '2014-02-26 08:00:00'),
(27, NULL, 2, NULL, 127862, 1, 7699725, '2014-02-26 08:00:00'),
(28, NULL, 2, NULL, 127843, 1, 7728648, '2014-02-26 08:00:00'),
(29, NULL, 2, NULL, 127833, 1, 7728648, '2014-02-26 08:00:00'),
(30, NULL, 2, NULL, 127835, 1, 8646351, '2014-02-26 08:00:00'),
(31, NULL, 2, NULL, 127842, 1, 7662600, '2014-02-26 08:00:00'),
(32, NULL, 2, NULL, 127824, 1, 9133614, '2014-02-26 08:00:00'),
(33, NULL, 2, NULL, 127832, 1, 7662600, '2014-02-26 08:00:00'),
(34, NULL, 2, NULL, 127822, 1, 7662600, '2014-02-26 08:00:00'),
(35, NULL, 2, NULL, 127794, 1, 9088929, '2014-02-26 08:00:00'),
(36, NULL, 2, NULL, 127784, 1, 9088929, '2014-02-26 08:00:00'),
(37, NULL, 2, NULL, 127774, 1, 9088929, '2014-02-26 08:00:00'),
(38, NULL, 2, NULL, 127764, 1, 9088929, '2014-02-26 08:00:00'),
(39, NULL, 2, NULL, 127754, 1, 9088929, '2014-02-26 08:00:00'),
(40, NULL, 2, NULL, 127694, 1, 8999559, '2014-02-26 08:00:00'),
(41, NULL, 2, NULL, 128222, 1, 6858144, '2014-02-26 08:00:00'),
(42, NULL, 2, NULL, 128180, 1, 4100000, '2014-02-26 08:00:00'),
(43, NULL, 2, NULL, 128524, 1, 5486729, '2014-02-26 08:00:00'),
(44, NULL, 2, NULL, 128488, 1, 4100000, '2014-02-26 08:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;