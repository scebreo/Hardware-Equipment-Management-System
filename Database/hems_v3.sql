-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2017 at 08:10 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hems`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` 
(
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL DEFAULT '0',
  `department` int(11) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `userno` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `fname`, `lname`, `mname`, `gender`, `department`, `username`, `password`, `type`, `userno`) VALUES
(2, 'Mark Daniel', 'Mondejar', 'Sambade', 1, 8, 'mark123', 'kram321', 3, 2013100239),
(3, 'Kent Wendell','Curato', 'Pogi', 1, 8, 'kent123','curato123',2,2012100123),
(1, 'Sebastian', 'Ebreo', 'Cornel', 1, 2, 'baysti14', 'baste123', 4, 2013100235),
(4, 'Albert','Mojica','Moji',1,7,'bert123','mojica321',4,20121232);

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE IF NOT EXISTS `equipments` 
(
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pcn` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `serial` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `equipments`
--

INSERT INTO `equipments` (`id`, `pcn`, `description`, `model`, `serial`, `status`, `type`, `brand`, `stock`) VALUES
(3,'222','Radeon HD Graphics X1500','X1500','RDNHE012EA57',2,'HD Graphics','Radeon',1),
		


-- --------------------------------------------------------

--
-- Table structure for table 'service_requests'
--




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
