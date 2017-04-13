-- phpMyAdmin SQL Dump

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+08:00";

--
-- Database: `hems`
--

--
-- Table Structure for table `asset_registry`
--

CREATE TABLE IF NOT EXISTS `asset_registry` (
	`asset_id` int(11) NOT NULL AUTO_INCREMENT,
	`asset_name` varchar(255) NOT NULL,
	`asset_category` varchar(255) NOT NULL,
	`asset_owner_name` varchar(255) NOT NULL,
	`asset_description` varchar(255) NOT NULL,
	`asset_quantity` varchar(255) NOT NULL,
	`asset_model_number` varchar(255) NOT NULL,
	`asset_serial_number` varchar(255) NOT NULL,
	`asset_vendor_name` varchar(255) NOT NULL,
	`asset_date_purchased` date NOT NULL,
	`asset_purchase_value` varchar(255) NOT NULL,
	`asset_warranty_period` varchar(255) NOT NULL,
	`asset_current_status` varchar(255) NOT NULL,
	`asset_location` varchar(4) NOT NULL,
	PRIMARY KEY(`asset_id`)
)ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- DUMPING DATA INTO `asset_registry`
--
INSERT INTO `asset_registry` (`asset_id`, `asset_name`, `asset_category`, `asset_owner_name`, `asset_description`, `asset_quantity`, `asset_model_number`, `asset_serial_number`, `asset_vendor_name`, `asset_date_purchased`, `asset_purchase_value`, `asset_warranty_period`, `asset_current_status`, `asset_location`) VALUES
(1, 'Seagate 500 GB ST500DM002', 'Internal HDD', 'MMP - PRS - Alain', 'Internal HDD', '1', 'ST500DM002', 'S9A04E6Q', 'Microgold', '2016-01-07', '2225.00', '1 year', 'In Use', 'F1');
							  `

