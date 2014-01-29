-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 29, 2014 at 10:02 PM
-- Server version: 5.5.35
-- PHP Version: 5.4.4-14+deb7u7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `beer`
--

-- --------------------------------------------------------

--
-- Table structure for table `Beer`
--

CREATE TABLE IF NOT EXISTS `Beer` (
  `Tap` int(11) DEFAULT NULL,
  `Beer` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `Brewery` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `Style` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `ABV` varchar(5) COLLATE latin1_german2_ci DEFAULT NULL,
  `IBU` int(11) DEFAULT NULL,
  `SRM` double DEFAULT NULL,
  `Description` text COLLATE latin1_german2_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `Beer`
--

INSERT INTO `Beer` (`Tap`, `Beer`, `Brewery`, `Style`, `ABV`, `IBU`, `SRM`, `Description`) VALUES
(0, 'Coronita', 'Corona', 'Mexican Lager', '4.6 %', 1, 5, ''),
(3, 'Monumental', 'Port City', 'IPA', '6.3 %', 57, 9, 'Rich copper color and intensely hoppy. Exhibits floral notes, flavors of citrus and resin, combined with delicious caramel background notes. '),
(NULL, 'Nugget Nectar', 'Troegs', 'Amber Ale', '7.5', 93, 14, 'Will take hopheads to nirvana with a heady collection of Nugget, Warrior and Tomahawk hops. Intense malt and hop flavors!'),
(2, 'Pale Ale', 'Homebrewed', 'American Pale Ale', '5.2%', 36, 12, 'A crisp American Pale Ale, reminiscent of Odell Brewing''s 5 Barrel Pale Ale. Hoppy aroma with a slightly sweet taste of lemon, basil, and thyme.'),
(NULL, '90 IPA', 'Dogfish Head Brewery', 'IPA', '9.0%', 2, 8, ''),
(0, 'Brooklyn Lager', 'Brooklyn Brewery', 'Lager', '5.2 %', 1, 20, ''),
(0, 'Boston Lager', 'Samuel Adams', 'Lager', '4.8 %', 1, 15, ''),
(0, 'Fosters', 'Fosters', 'Lager', '4 %', 1, 8, ''),
(0, 'Corona', 'Corona', 'Mexican Lager', '4.6 %', 1, 5, ''),
(0, 'Corona Light', 'Corona', 'Mexican Lager', '3.7 %', 0, 5, ''),
(1, 'Fat Tire', 'New Belgium', 'Amber Ale', '5.2%', 22, 10, 'Toasty malt, gentle sweetness, flash of fresh hop bitterness. The malt and hops are perfectly balanced.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
