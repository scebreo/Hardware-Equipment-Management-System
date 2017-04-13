-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2017 at 02:12 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hems`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL DEFAULT '0',
  `department` int(11) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `userno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `fname`, `lname`, `mname`, `gender`, `department`, `username`, `password`, `type`, `userno`) VALUES
(4, 'Mark', 'Mondejar', 'Sambade', 1, 8, 'mark123', 'kram321', 3, 2013100239),
(6, 'Kenth Wendell', 'Curato', 'Pogi', 1, 8, 'kent123', 'curato123', 2, 2012100452),
(7, 'Sebastian', 'Ebreo', 'baste', 1, 7, 'baste123', 'ebreo456', 1, 2013100567),
(8, 'Albert John', 'Mojica', 'Moji', 1, 2, 'bert123', 'moj321', 4, 2012123342);

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE IF NOT EXISTS `equipments` (
  `id` int(11) NOT NULL,
  `pcn` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `serial` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equipments`
--

INSERT INTO `equipments` (`id`, `pcn`, `description`, `model`, `serial`, `status`, `type`, `brand`, `stock`) VALUES
(3, 'RHDX1500-012', 'Kent', 'Radeon HD Graphics X1500', 'RDNHE012EA57', 1, 'HD Graphics X1500', 'Radeon', 1),
(5, 'HDDE01', 'Sebastian', 'Hard Disk SSD', 'H012EA021', 1, '500GB', 'SEAGATE', 1),
(10, 'MNTR012', 'Kent', 'Viewsonic 28" LED Monitor VX2858SML', 'MNTRVE213QA', 1, 'LED Monitor VX2858SML', 'Viewsonic ', 1),
(13, 'PROC01', 'Mark', 'Intel i7 Processor', 'PROC01E23', 1, 'proc01', 'INTEL', 1),
(14, 'MOUSE03', 'Mark', 'RazerTX03 Mouse', 'RZR032E2', 1, 'mouse razer type 1', 'Razer', 1),
(15, 'KYBRD05', 'Mark', 'Razer Keyboard v5', 'KYBRDRZR0323E', 1, 'kybrd05', 'RAZER', 1),
(16, 'MMC021A', 'Mark', 'Memory Card Kingston 4GB', 'MMC021KNGSTN1', 1, 'Kingston 4GB', 'KINGSTON', 1),
(17, 'FLSHDRV-237', '-', 'San Disk Cruzer Switch', 'SDCZ52-018G', 2, '16GB', 'San Disk', 1),
(18, 'UPS-105', 'Mark', 'APC 625 VA UPS BX625CIMS', '3B1607X02620', 1, 'UPS BX625CIMS', 'APC', 1),
(19, 'MMRY-051', '-', 'Kingston 4GB DDR3 memory', 'N/A', 2, '4GB DDR3', 'Kingston', 1),
(21, 'VC-013', '-', 'Nvidia AGP Video card', 'B0407233416', 2, 'AGP ', 'Nvidia', 1),
(22, 'MOUSE-52', 'Kent', 'A4 Tech N - 708X Padless Optical Mouse', 'N / A', 1, ' 708X Padless Optical ', 'A4 Tech', 1),
(23, 'WMIC-03', 'Sebastian', 'CS-RCA RM200 Wireless MIC (Pair)', 'A110500143429', 1, 'RM200 Wireless MIC', 'CS-RCA', 1),
(24, 'PRC-012', '-', 'NEC (Core I3) CPU only "1 set" ', '04004711A', 2, 'Core I3', 'NEC', 1);

-- --------------------------------------------------------

--
-- Table structure for table 'service'
--

CREATE TABLE IF NOT EXISTS 'service' (
	`id` int(11) NOT NULL,
	`facility` int(11) NOT NULL DEFAULT '0',
	`department` int(11) NOT NULL DEFAULT '0',
	`superior` varchar(255) NOT NULL,
	`location` varchar(255) NOT NULL,
	`PCN` varchar(255) NOT NULL,
	`hardware` varchar(255) NOT NULL,
	`problem_description` varchar(255) NOT NULL,
	`time_date` varchar(255) NOT NULL,
	`reported_by` varchar(255) NOT NULL,
	`received_by` varchar(255),
	`status` int(11) NOT NULL DEFAULT '0',
	`tech_assessment` varchar(255),
	`resources` varchar(255),
	`handled_by` varchar(255),
	`turn_over_to` varchar(255),
	`turn_over_date` varchar(255),
	`acknowledge_by_supervisor` varchar(255),
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ---------------------------------------------------

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `facility`, `department`, `superior`, `location`, `pcn`, `hardware`, `problem_description`, `time_date`, `reported_by`, `received_by`, `status`, `tech_assessment`, `resources`, `handled_by`, `turn_over_to`, `turn_over_date`, `acknowledge_by_supervisor`) VALUES
(1, 1, 5, 'Mark Mondejar', 'Second floor row A5 phase 2', 'MOUSE-42, Keyboard-23', 'Mouse, Keyboard', 'Sir nasira po mouse ko ayaw mag click', '10:32 AM , March 24, 2017', 'Sebastian Supervisor', ' ',1,' ', ' ',' ', ' ', ' ', ' ');


--
-- index table `service`
--
ALTER TABLE `service`	
	ADD PRIMARY KEY ('id');
	
--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY ('id');

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`id`);


--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `equipments`
--
ALTER TABLE `equipments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
