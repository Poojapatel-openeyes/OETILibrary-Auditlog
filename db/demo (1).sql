-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2018 at 11:45 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_log`
--

CREATE TABLE `audit_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `Module_Name` varchar(100) DEFAULT NULL,
  `field_name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `old_value` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `new_value` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `activity` char(6) CHARACTER SET utf8 NOT NULL DEFAULT 'UPDATE',
  `modified` datetime DEFAULT NULL,
  `modified_by_user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `audit_log`
--

INSERT INTO `audit_log` (`id`, `user_id`, `Module_Name`, `field_name`, `old_value`, `new_value`, `activity`, `modified`, `modified_by_user_id`) VALUES
(94, 286, NULL, 'Country', 'rr', NULL, 'Delete', NULL, 0),
(93, 0, NULL, 'CountryAbbreviation', 'sss', 'rr', 'update', NULL, 0),
(92, 0, NULL, 'CountryName', 'ss', 'rr', 'update', NULL, 0),
(91, 0, NULL, 'Country', NULL, 'ss', 'add', NULL, 0),
(90, 285, NULL, 'Country', 'Afghanistan', NULL, 'Delete', NULL, 0),
(89, 0, NULL, 'CountryAbbreviation', 'dcd', 'oo', 'update', NULL, 0),
(88, 0, NULL, 'Country', NULL, 'Afghanistan', 'add', NULL, 0),
(87, 284, NULL, 'Country', 'aa', NULL, 'Delete', NULL, 0),
(86, 0, NULL, 'CountryAbbreviation', 'ee', 'aa', 'update', NULL, 0),
(85, 0, NULL, 'CountryName', 'qq', 'aa', 'update', NULL, 0),
(84, 0, NULL, 'CountryName', 'ee', 'qq', 'update', NULL, 0),
(83, 0, NULL, 'Country', NULL, 'ee', 'add', NULL, 0),
(82, 283, NULL, 'Country', 'Afghanistan', NULL, 'Delete', NULL, 0),
(81, 0, NULL, 'Country', NULL, 'Afghanistan', 'add', NULL, 0),
(80, 282, NULL, 'Country', 'ppq', NULL, 'Delete', NULL, 0),
(79, 0, NULL, 'CountryAbbreviation', 'pp', 'ppe', 'update', NULL, 0),
(78, 0, NULL, 'CountryName', 'pp', 'ppq', 'update', NULL, 0),
(77, 0, NULL, 'Country', NULL, 'pp', 'add', NULL, 0),
(76, 281, NULL, 'Country', 'india', NULL, 'Delete', NULL, 0),
(75, 0, NULL, 'Country', NULL, 'india', 'add', NULL, 0),
(74, 279, NULL, 'Country', 'qq', NULL, 'Delete', NULL, 0),
(73, 280, NULL, 'Country', 'qqq', NULL, 'Delete', NULL, 0),
(72, 0, NULL, 'CountryAbbreviation', 'ee', 'qwq', 'update', NULL, 0),
(71, 0, NULL, 'CountryName', 'wew', 'qqq', 'update', NULL, 0),
(70, 0, NULL, 'CountryName', 'we', 'wew', 'update', NULL, 0),
(69, 0, NULL, 'Country', NULL, 'we', 'add', NULL, 0),
(68, 0, NULL, 'Country', NULL, 'qq', 'add', NULL, 0),
(95, 0, NULL, 'Country', NULL, 'pp', 'add', NULL, 0),
(96, 0, NULL, 'CountryName', 'pp', 'cc', 'update', NULL, 0),
(97, 0, NULL, 'CountryAbbreviation', 'pp', 'cc', 'update', NULL, 0),
(98, 287, NULL, 'Country', 'cc', NULL, 'Delete', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblmstcountry`
--

CREATE TABLE `tblmstcountry` (
  `CountryId` int(11) NOT NULL,
  `CountryName` varchar(100) DEFAULT NULL,
  `CountryAbbreviation` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmstcountry`
--

INSERT INTO `tblmstcountry` (`CountryId`, `CountryName`, `CountryAbbreviation`) VALUES
(271, 'india', 'ind'),
(274, 'canada', 'dcd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_log`
--
ALTER TABLE `audit_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmstcountry`
--
ALTER TABLE `tblmstcountry`
  ADD PRIMARY KEY (`CountryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_log`
--
ALTER TABLE `audit_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `tblmstcountry`
--
ALTER TABLE `tblmstcountry`
  MODIFY `CountryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
