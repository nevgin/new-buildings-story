-- phpMyAdmin SQL Dump
-- version 4.0.6deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 02, 2014 at 08:09 PM
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
-- Table structure for table `snapshots_260214`
--

CREATE TABLE IF NOT EXISTS `snapshots_260214` (
  `snapId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `flatId` int(10) unsigned DEFAULT NULL,
  `bId` mediumint(8) unsigned NOT NULL,
  `sectId` smallint(5) unsigned DEFAULT NULL,
  `extFlatId` mediumint(8) unsigned DEFAULT NULL,
  `flStatus` smallint(5) unsigned DEFAULT NULL,
  `flPrice` int(10) unsigned DEFAULT NULL,
  `snapDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`snapId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=218 ;

--
-- Dumping data for table `snapshots_260214`
--

INSERT INTO `snapshots_260214` (`snapId`, `flatId`, `bId`, `sectId`, `extFlatId`, `flStatus`, `flPrice`, `snapDate`) VALUES
(1, NULL, 1, NULL, 126634, 1, 7133184, '2014-02-05 08:00:00'),
(2, NULL, 1, NULL, 126635, 1, 9282851, '2014-02-05 08:00:00'),
(3, NULL, 1, NULL, 126638, 1, 9235176, '2014-02-05 08:00:00'),
(4, NULL, 1, NULL, 126639, 1, 7081584, '2014-02-05 08:00:00'),
(5, NULL, 1, NULL, 126629, 1, 9282851, '2014-02-05 08:00:00'),
(6, NULL, 1, NULL, 126623, 1, 9282851, '2014-02-05 08:00:00'),
(7, NULL, 1, NULL, 126872, 1, 7162080, '2014-02-05 08:00:00'),
(8, NULL, 1, NULL, 126877, 1, 7161048, '2014-02-05 08:00:00'),
(9, NULL, 1, NULL, 126646, 1, 4876008, '2014-02-05 08:00:00'),
(10, NULL, 1, NULL, 127112, 1, 7161048, '2014-02-05 08:00:00'),
(11, NULL, 1, NULL, 127117, 1, 7161048, '2014-02-05 08:00:00'),
(12, NULL, 1, NULL, 127000, 1, 4464390, '2014-02-05 08:00:00'),
(13, NULL, 1, NULL, 126920, 1, 4100011, '2014-02-05 08:00:00'),
(14, NULL, 1, NULL, 127352, 1, 7162080, '2014-02-05 08:00:00'),
(15, NULL, 1, NULL, 127613, 1, 7176528, '2014-02-05 08:00:00'),
(16, NULL, 1, NULL, 127547, 1, 7141758, '2014-02-05 08:00:00'),
(17, NULL, 1, NULL, 127555, 1, 8003394, '2014-02-05 08:00:00'),
(18, NULL, 1, NULL, 127536, 1, 7141758, '2014-02-05 08:00:00'),
(19, NULL, 1, NULL, 127538, 1, 7579152, '2014-02-05 08:00:00'),
(20, NULL, 1, NULL, 127525, 1, 7141758, '2014-02-05 08:00:00'),
(21, NULL, 1, NULL, 127514, 1, 7141758, '2014-02-05 08:00:00'),
(22, NULL, 1, NULL, 127522, 1, 8003394, '2014-02-05 08:00:00'),
(23, NULL, 1, NULL, 127481, 1, 7106988, '2014-02-05 08:00:00'),
(24, NULL, 1, NULL, 127390, 1, 7886214, '2014-02-05 08:00:00'),
(25, NULL, 1, NULL, 127365, 1, 4922248, '2014-02-05 08:00:00'),
(26, NULL, 1, NULL, 127366, 1, 4922248, '2014-02-05 08:00:00'),
(27, NULL, 1, NULL, 127368, 1, 7808094, '2014-02-05 08:00:00'),
(28, NULL, 1, NULL, 127669, 1, 8518718, '2014-02-05 08:00:00'),
(29, NULL, 2, NULL, 127903, 1, 7691203, '2014-02-05 08:00:00'),
(30, NULL, 2, NULL, 127904, 1, 9088929, '2014-02-05 08:00:00'),
(31, NULL, 2, NULL, 127905, 1, 8583666, '2014-02-05 08:00:00'),
(32, NULL, 2, NULL, 127912, 1, 7625475, '2014-02-05 08:00:00'),
(33, NULL, 2, NULL, 127893, 1, 7691203, '2014-02-05 08:00:00'),
(34, NULL, 2, NULL, 127894, 1, 9088929, '2014-02-05 08:00:00'),
(35, NULL, 2, NULL, 127902, 1, 7625475, '2014-02-05 08:00:00'),
(36, NULL, 2, NULL, 127883, 1, 7691203, '2014-02-05 08:00:00'),
(37, NULL, 2, NULL, 127884, 1, 9088929, '2014-02-05 08:00:00'),
(38, NULL, 2, NULL, 127892, 1, 7625475, '2014-02-05 08:00:00'),
(39, NULL, 2, NULL, 127873, 1, 7691203, '2014-02-05 08:00:00'),
(40, NULL, 2, NULL, 127874, 1, 9088929, '2014-02-05 08:00:00'),
(41, NULL, 2, NULL, 127882, 1, 7625475, '2014-02-05 08:00:00'),
(42, NULL, 2, NULL, 127863, 1, 7691203, '2014-02-05 08:00:00'),
(43, NULL, 2, NULL, 127872, 1, 7625475, '2014-02-05 08:00:00'),
(44, NULL, 2, NULL, 127853, 1, 7691203, '2014-02-05 08:00:00'),
(45, NULL, 2, NULL, 127854, 1, 9088929, '2014-02-05 08:00:00'),
(46, NULL, 2, NULL, 127862, 1, 7625475, '2014-02-05 08:00:00'),
(47, NULL, 2, NULL, 127843, 1, 7653758, '2014-02-05 08:00:00'),
(48, NULL, 2, NULL, 127844, 1, 9044244, '2014-02-05 08:00:00'),
(49, NULL, 2, NULL, 127833, 1, 7653758, '2014-02-05 08:00:00'),
(50, NULL, 2, NULL, 127842, 1, 7588350, '2014-02-05 08:00:00'),
(51, NULL, 2, NULL, 127823, 1, 7653758, '2014-02-05 08:00:00'),
(52, NULL, 2, NULL, 127824, 1, 9044244, '2014-02-05 08:00:00'),
(53, NULL, 2, NULL, 127832, 1, 7588350, '2014-02-05 08:00:00'),
(54, NULL, 2, NULL, 127814, 1, 9044244, '2014-02-05 08:00:00'),
(55, NULL, 2, NULL, 127822, 1, 7588350, '2014-02-05 08:00:00'),
(56, NULL, 2, NULL, 127794, 1, 8999559, '2014-02-05 08:00:00'),
(57, NULL, 2, NULL, 127802, 1, 7551225, '2014-02-05 08:00:00'),
(58, NULL, 2, NULL, 127784, 1, 8999559, '2014-02-05 08:00:00'),
(59, NULL, 2, NULL, 127785, 1, 8562771, '2014-02-05 08:00:00'),
(60, NULL, 2, NULL, 127792, 1, 7551225, '2014-02-05 08:00:00'),
(61, NULL, 2, NULL, 127774, 1, 8999559, '2014-02-05 08:00:00'),
(62, NULL, 2, NULL, 127775, 1, 8562771, '2014-02-05 08:00:00'),
(63, NULL, 2, NULL, 127764, 1, 8999559, '2014-02-05 08:00:00'),
(64, NULL, 2, NULL, 127754, 1, 8999559, '2014-02-05 08:00:00'),
(65, NULL, 2, NULL, 127755, 1, 8562771, '2014-02-05 08:00:00'),
(66, NULL, 2, NULL, 127694, 1, 8910189, '2014-02-05 08:00:00'),
(67, NULL, 2, NULL, 127695, 1, 8562771, '2014-02-05 08:00:00'),
(68, NULL, 2, NULL, 128212, 1, 5453951, '2014-02-05 08:00:00'),
(69, NULL, 2, NULL, 128213, 1, 5245727, '2014-02-05 08:00:00'),
(70, NULL, 2, NULL, 128224, 1, 5341163, '2014-02-05 08:00:00'),
(71, NULL, 2, NULL, 128199, 1, 5453951, '2014-02-05 08:00:00'),
(72, NULL, 2, NULL, 128211, 1, 5341163, '2014-02-05 08:00:00'),
(73, NULL, 2, NULL, 128198, 1, 5341163, '2014-02-05 08:00:00'),
(74, NULL, 2, NULL, 128524, 1, 5436599, '2014-02-05 08:00:00'),
(75, NULL, 2, NULL, 128525, 1, 5363937, '2014-02-05 08:00:00'),
(76, NULL, 2, NULL, 128536, 1, 5411655, '2014-02-05 08:00:00'),
(77, NULL, 2, NULL, 128511, 1, 5436599, '2014-02-05 08:00:00'),
(78, NULL, 2, NULL, 128523, 1, 5411655, '2014-02-05 08:00:00'),
(79, NULL, 2, NULL, 128499, 1, 5363937, '2014-02-05 08:00:00'),
(80, NULL, 2, NULL, 128486, 1, 5363937, '2014-02-05 08:00:00'),
(81, NULL, 2, NULL, 128497, 1, 5411655, '2014-02-05 08:00:00'),
(83, NULL, 1, NULL, 127617, 1, 5014728, '2014-02-05 08:00:00'),
(84, NULL, 1, NULL, 127621, 1, 8042454, '2014-02-05 08:00:00'),
(85, NULL, 1, NULL, 126623, 3, 9282851, '2014-02-14 08:00:00'),
(86, NULL, 1, NULL, 126629, 3, 9282851, '2014-02-14 08:00:00'),
(87, NULL, 1, NULL, 126638, 3, 9235176, '2014-02-14 08:00:00'),
(88, NULL, 1, NULL, 126639, 3, 7081584, '2014-02-14 08:00:00'),
(89, NULL, 1, NULL, 126646, 3, 4876008, '2014-02-14 08:00:00'),
(90, NULL, 1, NULL, 126920, 3, 4100011, '2014-02-14 08:00:00'),
(91, NULL, 1, NULL, 127365, 3, 4922248, '2014-02-14 08:00:00'),
(92, NULL, 1, NULL, 127366, 3, 4922248, '2014-02-14 08:00:00'),
(93, NULL, 1, NULL, 127390, 3, 7886214, '2014-02-14 08:00:00'),
(94, NULL, 1, NULL, 127481, 3, 7106988, '2014-02-14 08:00:00'),
(95, NULL, 1, NULL, 127522, 3, 8003394, '2014-02-14 08:00:00'),
(96, NULL, 1, NULL, 127525, 3, 7141758, '2014-02-14 08:00:00'),
(97, NULL, 1, NULL, 127538, 3, 7579152, '2014-02-14 08:00:00'),
(98, NULL, 1, NULL, 127555, 3, 8003394, '2014-02-14 08:00:00'),
(99, NULL, 1, NULL, 127617, 3, 5014728, '2014-02-14 08:00:00'),
(100, NULL, 1, NULL, 127621, 3, 8042454, '2014-02-14 08:00:00'),
(101, NULL, 1, NULL, 127669, 3, 8518718, '2014-02-14 08:00:00'),
(102, NULL, 2, NULL, 127695, 3, 8562771, '2014-02-14 08:00:00'),
(103, NULL, 2, NULL, 127755, 3, 8562771, '2014-02-14 08:00:00'),
(104, NULL, 2, NULL, 127775, 3, 8562771, '2014-02-14 08:00:00'),
(105, NULL, 2, NULL, 127802, 3, 7551225, '2014-02-14 08:00:00'),
(106, NULL, 2, NULL, 127823, 3, 7653758, '2014-02-14 08:00:00'),
(107, NULL, 2, NULL, 128198, 3, 5341163, '2014-02-14 08:00:00'),
(108, NULL, 2, NULL, 128199, 3, 5453951, '2014-02-14 08:00:00'),
(109, NULL, 2, NULL, 128213, 3, 5245727, '2014-02-14 08:00:00'),
(110, NULL, 2, NULL, 128486, 3, 5363937, '2014-02-14 08:00:00'),
(111, NULL, 2, NULL, 128497, 3, 5411655, '2014-02-14 08:00:00'),
(112, NULL, 2, NULL, 128499, 3, 5363937, '2014-02-14 08:00:00'),
(113, NULL, 2, NULL, 128511, 3, 5436599, '2014-02-14 08:00:00'),
(114, NULL, 2, NULL, 128523, 3, 5411655, '2014-02-14 08:00:00'),
(115, NULL, 2, NULL, 128525, 3, 5363937, '2014-02-14 08:00:00'),
(116, NULL, 1, NULL, 126538, 1, 6082560, '2014-02-14 08:00:00'),
(117, NULL, 1, NULL, 126669, 1, 4200000, '2014-02-14 08:00:00'),
(118, NULL, 1, NULL, 127277, 1, 7118137, '2014-02-14 08:00:00'),
(119, NULL, 1, NULL, 127357, 1, 7152792, '2014-02-14 08:00:00'),
(120, NULL, 2, NULL, 127804, 1, 9044244, '2014-02-14 08:00:00'),
(121, NULL, 2, NULL, 127805, 1, 8562771, '2014-02-14 08:00:00'),
(122, NULL, 2, NULL, 127886, 1, 6796562, '2014-02-14 08:00:00'),
(123, NULL, 2, NULL, 128378, 1, 6728684, '2014-02-14 08:00:00'),
(124, NULL, 1, NULL, 126538, 3, 6082560, '2014-02-26 08:00:00'),
(125, NULL, 1, NULL, 126877, 3, 7161048, '2014-02-26 08:00:00'),
(126, NULL, 1, NULL, 127277, 3, 7118137, '2014-02-26 08:00:00'),
(127, NULL, 1, NULL, 127352, 3, 7162080, '2014-02-26 08:00:00'),
(128, NULL, 1, NULL, 127514, 3, 7141758, '2014-02-26 08:00:00'),
(129, NULL, 1, NULL, 127536, 3, 7141758, '2014-02-26 08:00:00'),
(130, NULL, 1, NULL, 127547, 3, 7141758, '2014-02-26 08:00:00'),
(131, NULL, 2, NULL, 127785, 3, 8562771, '2014-02-26 08:00:00'),
(132, NULL, 2, NULL, 127792, 3, 7551225, '2014-02-26 08:00:00'),
(133, NULL, 2, NULL, 127804, 3, 9044244, '2014-02-26 08:00:00'),
(134, NULL, 2, NULL, 127805, 3, 8562771, '2014-02-26 08:00:00'),
(135, NULL, 2, NULL, 127814, 3, 9044244, '2014-02-26 08:00:00'),
(136, NULL, 2, NULL, 127844, 3, 9044244, '2014-02-26 08:00:00'),
(137, NULL, 2, NULL, 127886, 3, 6796562, '2014-02-26 08:00:00'),
(138, NULL, 2, NULL, 127894, 3, 9088929, '2014-02-26 08:00:00'),
(139, NULL, 2, NULL, 127912, 3, 7625475, '2014-02-26 08:00:00'),
(140, NULL, 2, NULL, 128211, 3, 5341163, '2014-02-26 08:00:00'),
(141, NULL, 2, NULL, 128212, 3, 5453951, '2014-02-26 08:00:00'),
(142, NULL, 2, NULL, 128224, 3, 5341163, '2014-02-26 08:00:00'),
(143, NULL, 2, NULL, 128378, 3, 6728684, '2014-02-26 08:00:00'),
(144, NULL, 2, NULL, 128536, 3, 5411655, '2014-02-26 08:00:00'),
(145, NULL, 1, NULL, 126638, 1, 9227966, '2014-02-26 08:00:00'),
(146, NULL, 2, NULL, 127835, 1, 8646351, '2014-02-26 08:00:00'),
(147, NULL, 2, NULL, 128180, 1, 4100000, '2014-02-26 08:00:00'),
(148, NULL, 2, NULL, 128222, 1, 6858144, '2014-02-26 08:00:00'),
(149, NULL, 2, NULL, 128488, 1, 4100000, '2014-02-26 08:00:00'),
(155, NULL, 1, NULL, 126634, 1, 7202304, '2014-02-26 08:00:00'),
(156, NULL, 1, NULL, 126635, 1, 9377141, '2014-02-26 08:00:00'),
(157, NULL, 1, NULL, 126669, 1, 4200000, '2014-02-26 08:00:00'),
(158, NULL, 1, NULL, 126872, 1, 7231480, '2014-02-26 08:00:00'),
(159, NULL, 1, NULL, 127000, 1, 4464390, '2014-02-26 08:00:00'),
(160, NULL, 1, NULL, 127112, 1, 7230438, '2014-02-26 08:00:00'),
(161, NULL, 1, NULL, 127117, 1, 7230438, '2014-02-26 08:00:00'),
(162, NULL, 1, NULL, 127357, 1, 7222102, '2014-02-26 08:00:00'),
(163, NULL, 1, NULL, 127368, 1, 7886214, '2014-02-26 08:00:00'),
(164, NULL, 1, NULL, 127613, 1, 7246068, '2014-02-26 08:00:00'),
(165, NULL, 2, NULL, 127694, 1, 8999559, '2014-02-26 08:00:00'),
(166, NULL, 2, NULL, 127754, 1, 9088929, '2014-02-26 08:00:00'),
(167, NULL, 2, NULL, 127764, 1, 9088929, '2014-02-26 08:00:00'),
(168, NULL, 2, NULL, 127774, 1, 9088929, '2014-02-26 08:00:00'),
(169, NULL, 2, NULL, 127784, 1, 9088929, '2014-02-26 08:00:00'),
(170, NULL, 2, NULL, 127794, 1, 9088929, '2014-02-26 08:00:00'),
(171, NULL, 2, NULL, 127822, 1, 7662600, '2014-02-26 08:00:00'),
(172, NULL, 2, NULL, 127824, 1, 9133614, '2014-02-26 08:00:00'),
(173, NULL, 2, NULL, 127832, 1, 7662600, '2014-02-26 08:00:00'),
(174, NULL, 2, NULL, 127833, 1, 7728648, '2014-02-26 08:00:00'),
(175, NULL, 2, NULL, 127842, 1, 7662600, '2014-02-26 08:00:00'),
(176, NULL, 2, NULL, 127843, 1, 7728648, '2014-02-26 08:00:00'),
(177, NULL, 2, NULL, 127853, 1, 7766093, '2014-02-26 08:00:00'),
(178, NULL, 2, NULL, 127854, 1, 9178299, '2014-02-26 08:00:00'),
(179, NULL, 2, NULL, 127862, 1, 7699725, '2014-02-26 08:00:00'),
(180, NULL, 2, NULL, 127863, 1, 7766093, '2014-02-26 08:00:00'),
(181, NULL, 2, NULL, 127872, 1, 7699725, '2014-02-26 08:00:00'),
(182, NULL, 2, NULL, 127873, 1, 7766093, '2014-02-26 08:00:00'),
(183, NULL, 2, NULL, 127874, 1, 9178299, '2014-02-26 08:00:00'),
(184, NULL, 2, NULL, 127882, 1, 7699725, '2014-02-26 08:00:00'),
(185, NULL, 2, NULL, 127883, 1, 7766093, '2014-02-26 08:00:00'),
(186, NULL, 2, NULL, 127884, 1, 9178299, '2014-02-26 08:00:00'),
(187, NULL, 2, NULL, 127892, 1, 7699725, '2014-02-26 08:00:00'),
(188, NULL, 2, NULL, 127893, 1, 7766093, '2014-02-26 08:00:00'),
(189, NULL, 2, NULL, 127902, 1, 7699725, '2014-02-26 08:00:00'),
(190, NULL, 2, NULL, 127903, 1, 7766093, '2014-02-26 08:00:00'),
(191, NULL, 2, NULL, 127904, 1, 9178299, '2014-02-26 08:00:00'),
(192, NULL, 2, NULL, 127905, 1, 8667246, '2014-02-26 08:00:00'),
(193, NULL, 2, NULL, 128524, 1, 5486729, '2014-02-26 08:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
