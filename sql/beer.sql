-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 15, 2014 at 05:39 PM
-- Server version: 5.5.31
-- PHP Version: 5.4.4-14+deb7u5

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
  `Hops` double DEFAULT NULL,
  `SRM` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `Beer`
--

INSERT INTO `Beer` (`Tap`, `Beer`, `Brewery`, `Style`, `ABV`, `Hops`, `SRM`) VALUES
(1, 'Coronita', 'Corona', 'Mexican Lager', '4.6 %', 1, 5),
(0, 'Winter Zest', 'Carling', 'Low Alcohol Lager', '2.8 %', 1, 4),
(2, 'Guinness', 'Guinness', 'Stout', '4.1 %', 1, 23),
(0, 'Toffee Apple Cider', 'Brothers', 'Cider', '4 %', 0, 3),
(0, 'Carlsberg', 'Carlsberg', 'Lager', '5 %', 2, 7),
(0, 'Original Apple Cider', 'Brothers', 'Cider', '4.7 %', 1, 3),
(5, 'Bittersweet Apple Cider', 'Brothers', 'Cider', '5.5%', 1, 3),
(0, 'Tutti Frutti Pear Cider', 'Brothers', 'Cider', '4 %', 1, 99),
(0, 'Double Chocolate Stout', 'Young''s', 'Stout', '5.2 %', 0, 30),
(0, 'Stella 4', 'Stella Artois', 'Lager', '4 %', 2, 9),
(0, 'Stella', 'Stella Artois', 'Lager', '5.2 %', 2, 9),
(0, 'Sole Star', 'Adnams', 'Low Alcohol Ale', '2.8%', 3, 12),
(0, 'Summer Zest', 'Carling', 'Low Alcohol Lager', '2.8 %', 1, 4),
(0, 'Alcohol Free', 'Becks', 'Low Alcohol Lager', '0 %', 2, 6),
(0, 'Farm Pressed Medium Cider', 'Perry''s', 'Cider', '5 %', 3, 9),
(0, '2011 Vintage Cider', 'Henry Weston', 'Cider', '8.2 %', 2, 10),
(0, 'Crabbies', 'Crabbies', 'Ginger Beer', '4 %', 0, 5),
(0, 'Mythos', 'Mythos', 'Lager', '4.7 %', 1, 5),
(0, 'Vintage Reserve', 'Bulmers', 'Cider', '5.5 %', 1, 3),
(0, 'Mocha Beer', 'Batemans', 'Stout', '6 %', 0, 25),
(0, 'Pumpking', 'Wychwood Brewery', 'Seasonal Ale', '4.2 %', 2, 17),
(0, 'Rudolph', 'White Horse', 'Seasonal Ale', '4.8 %', 2, 12),
(0, 'Black Cherry Cider', 'Bulmers', 'Cider', '4 %', 0, 99),
(0, 'Peach & Apricot Cider', 'Rekorderlig', 'Cider', '4 %', 0, 5),
(0, 'Ginger Zest', 'Carling', 'Low Alcohol Lager', '2.8 %', 1, 6),
(0, 'Jaipur IPA', 'Thornbridge', 'IPA', '5.9 %', 2, 15),
(0, 'Brooklyn Lager', 'Brooklyn Brewery', 'Lager', '5.2 %', 1, 20),
(0, 'Boston Lager', 'Samuel Adams', 'Lager', '4.8 %', 1, 15),
(0, 'Spindrift', 'Adnams', 'Blonde', '5 %', 1, 10),
(0, 'Carling Cider', 'Carling', 'Cider', '4.5 %', 1, 5),
(0, 'Magners', 'Magners', 'Cider', '4.5 %', 1, 5),
(0, 'Fosters', 'Fosters', 'Lager', '4 %', 1, 8),
(0, 'Corona', 'Corona', 'Mexican Lager', '4.6 %', 1, 5),
(0, 'Strawberry Cider', 'Brothers', 'Cider', '4 %', 0, 98),
(0, 'Corona Light', 'Corona', 'Mexican Lager', '3.7 %', 0, 5),
(0, 'Strawberry and Lime Cider', 'Kopparberg', 'Cider', '4 %', 0, 98),
(0, 'Pear Cider', 'Kopparberg', 'Cider', '4.5 %', 0, 4),
(0, 'Naked Apple Cider', 'Kopparberg', 'Cider', '4.5 %', 0, 4),
(0, 'Blueberry Cider', 'St. Helier', 'Cider', '5 %', 0, 97);

-- --------------------------------------------------------

--
-- Table structure for table `BeerStock`
--

CREATE TABLE IF NOT EXISTS `BeerStock` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Beer` varchar(255) COLLATE latin1_german2_ci NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Reason` varchar(255) COLLATE latin1_german2_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Beer` (`Beer`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci AUTO_INCREMENT=97 ;

--
-- Dumping data for table `BeerStock`
--

INSERT INTO `BeerStock` (`ID`, `Beer`, `Quantity`, `Date`, `Reason`) VALUES
(10, 'Coronita', 3570, '2013-04-14 15:35:45', 'Stock Update'),
(11, 'Bittersweet Apple Cider', 1000, '2013-04-14 15:35:45', 'Stock'),
(12, 'Carlsberg', 8360, '2013-04-14 15:35:45', 'Stock'),
(13, 'Double Chocolate Stout', 500, '2013-04-14 15:35:45', 'Stock'),
(14, 'Sole Star', 3500, '2013-04-14 15:35:45', 'Stock'),
(15, 'Stella 4', 0, '2013-04-14 15:35:45', 'Stock'),
(17, 'Toffee Apple Cider', 0, '2013-04-14 15:35:45', 'Stock'),
(18, 'Winter Zest', 4620, '2013-04-14 15:35:45', 'Stock'),
(24, 'Vintage Reserve', 0, '2013-04-14 15:35:45', 'Stock Update'),
(19, 'Alcohol Free', 1925, '2013-04-14 15:35:45', 'Stock'),
(20, 'Farm Pressed Medium Cider', 500, '2013-04-14 15:35:45', 'Stock'),
(21, '2011 Vintage Cider', 500, '0000-00-00 00:00:00', 'Stock'),
(22, 'Crabbies', 330, '2013-04-14 15:35:45', 'Stock'),
(23, 'Mythos', 0, '2013-04-14 15:35:45', 'Stock'),
(25, 'Mocha Beer', 500, '2013-04-14 15:35:45', 'Stock Update'),
(26, 'Pumpking', 500, '2013-04-14 15:35:45', 'Stock Update'),
(27, 'Rudolph', 500, '2013-04-14 15:35:45', 'Stock Update'),
(32, 'Ginger Zest', 2310, '2013-04-14 15:39:52', 'Stock'),
(30, 'Black Cherry Cider', 568, '2013-04-14 15:35:45', 'Stock'),
(31, 'Peach & Apricot Cider', 0, '2013-04-14 15:35:45', 'Stock'),
(33, 'Summer Zest', 1980, '2013-04-16 11:41:42', 'Stock'),
(96, 'Magners', 7040, '2013-05-04 11:06:39', 'Stock'),
(95, 'Carling Cider', 0, '2013-05-04 11:06:06', 'Stock'),
(94, 'Spindrift', 0, '2013-05-04 11:06:06', 'Stock'),
(93, 'Brooklyn Lager', 355, '2013-04-28 10:27:53', 'Stock'),
(92, 'Boston Lager', 660, '2013-04-28 10:27:39', 'Stock'),
(91, 'Jaipur IPA', 500, '2013-04-28 10:27:39', 'Stock');

-- --------------------------------------------------------

--
-- Table structure for table `readings`
--

CREATE TABLE IF NOT EXISTS `readings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_time` datetime DEFAULT NULL,
  `temperature` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `readings`
--

INSERT INTO `readings` (`id`, `date_time`, `temperature`) VALUES
(1, '2013-04-15 11:09:41', 21),
(2, '2013-04-15 11:09:49', 21.5);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
