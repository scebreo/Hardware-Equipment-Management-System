-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2017 at 05:09 PM
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

CREATE TABLE `accounts` (
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
(7, 'Sebastian', 'Ebreo', 'baste', 1, 7, 'baste123', 'ebreo123', 1, 2013100567),
(8, 'Albert John', 'Mojica', 'Moji', 1, 2, 'bert123', 'moj321', 4, 2012123342),
(9, 'Matthew', 'Alabado', 'matthew', 1, 6, 'matt123', 'alabado321', 2, 2013100346);

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
  `id` int(11) NOT NULL,
  `pcn` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `inclusion` int(20) NOT NULL DEFAULT '0',
  `serial` varchar(255) NOT NULL,
  `vendor` varchar(250) NOT NULL,
  `warranty` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `location` int(11) NOT NULL DEFAULT '0',
  `order_date` date NOT NULL,
  `equipment_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equipments`
--

INSERT INTO `equipments` (`id`, `pcn`, `name`, `inclusion`, `serial`, `vendor`, `warranty`, `price`, `qty`, `status`, `location`, `order_date`, `equipment_status`) VALUES
(1, 'MMP - PRS - 12C (02-CPU06-090)', 'NEC (Core I3) CPU only "1 set" ', 6, '0X012951A', 'PC PARK', '1 year ', 5, 1, 3, 1, '2017-04-10', 1),
(2, 'Mark', 'mouse', 2, 'jkajwekj21', 'villman', '1 year ', 1000, 1, 2, 1, '2017-04-12', 1),
(3, 'Mark', 'keyboard', 3, 'kasjdkj', 'pcexpress', '1 year ', 1500, 0, 1, 1, '2017-04-12', 1),
(4, '-', 'mouse', 2, 'asdasdad', 'villman', '1 year ', 1000, 1, 2, 1, '2017-04-12', 1),
(5, 'kent', 'mouse', 2, 'asdasdas', 'villman', '1 year ', 1000, 1, 1, 1, '2017-04-11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `supervisor_service`
--

CREATE TABLE `supervisor_service` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `facility` int(11) NOT NULL DEFAULT '0',
  `department` int(11) NOT NULL DEFAULT '0',
  `superior` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `pcn` varchar(255) NOT NULL,
  `hardware` varchar(255) NOT NULL,
  `problem_description` varchar(255) NOT NULL,
  `reported_by` varchar(255) NOT NULL,
  `received_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `technician_service`
--

CREATE TABLE `technician_service` (
  `id` int(11) NOT NULL,
  `problem_id` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `PCN` varchar(255) NOT NULL,
  `tech_assessment` varchar(255) DEFAULT NULL,
  `resources` varchar(255) DEFAULT NULL,
  `handled_by` varchar(255) DEFAULT NULL,
  `turn_over_to` varchar(255) DEFAULT NULL,
  `turn_over_date` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `acknowledge_by_supervisor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supervisor_service`
--
ALTER TABLE `supervisor_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technician_service`
--
ALTER TABLE `technician_service`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `equipments`
--
ALTER TABLE `equipments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `supervisor_service`
--
ALTER TABLE `supervisor_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `technician_service`
--
ALTER TABLE `technician_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
