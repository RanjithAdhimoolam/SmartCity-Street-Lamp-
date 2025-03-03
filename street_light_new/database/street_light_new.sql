-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 20, 2019 at 01:25 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `street_light_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `street_det`
--

CREATE TABLE `street_det` (
  `id` int(11) NOT NULL,
  `city` varchar(30) NOT NULL,
  `area` varchar(30) NOT NULL,
  `street` varchar(30) NOT NULL,
  `light` varchar(10) NOT NULL,
  `level` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `not_work` int(11) NOT NULL,
  `abnormal` int(11) NOT NULL,
  `alert_st` int(11) NOT NULL,
  `dtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `street_det`
--

INSERT INTO `street_det` (`id`, `city`, `area`, `street`, `light`, `level`, `status`, `not_work`, `abnormal`, `alert_st`, `dtime`) VALUES
(1, 'Trichy', 'Teppakulam', 'Nandhikoil', 'L1', 3, 0, 0, 0, 0, '2019-02-20 18:47:26'),
(2, 'Trichy', 'Teppakulam', 'Nandhikoil', 'L2', 3, 0, 0, 0, 0, '2019-02-20 18:47:26'),
(3, 'Trichy', 'Teppakulam', 'Nandhikoil', 'L3', 3, 0, 0, 1, 0, '2019-02-20 18:47:26'),
(4, 'Trichy', 'Teppakulam', 'NSB Road', 'L4', 3, 0, 1, 0, 0, '2019-02-20 18:47:26'),
(5, 'Trichy', 'Teppakulam', 'NSB Road', 'L5', 3, 0, 0, 1, 0, '2019-02-20 18:47:26'),
(6, 'Trichy', 'Teppakulam', 'NSB Road', 'L6', 3, 0, 0, 1, 0, '2019-02-20 18:47:26'),
(7, 'Trichy', 'Market', 'Big Street', 'L7', 3, 0, 0, 1, 0, '2019-02-20 18:47:26'),
(8, 'Trichy', 'Market', 'Big Street', 'L8', 3, 0, 0, 0, 0, '2019-02-20 18:47:26'),
(9, 'Trichy', 'Market', 'Big Street', 'L9', 3, 0, 1, 0, 0, '2019-02-20 18:47:26'),
(10, 'Trichy', 'Market', 'Small Street', 'L10', 3, 0, 0, 0, 0, '2019-02-20 18:47:26'),
(11, 'Trichy', 'Market', 'Small Street', 'L11', 3, 0, 1, 0, 0, '2019-02-20 18:47:26'),
(12, 'Trichy', 'Market', 'Small Street', 'L12', 3, 0, 0, 0, 0, '2019-02-20 18:47:26');

-- --------------------------------------------------------

--
-- Table structure for table `street_login`
--

CREATE TABLE `street_login` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `light1` int(11) NOT NULL,
  `light2` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `message` varchar(30) NOT NULL,
  `light_mode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `street_login`
--

INSERT INTO `street_login` (`username`, `password`, `light1`, `light2`, `level`, `message`, `light_mode`) VALUES
('admin', 'admin', 0, 0, 3, '', 0),
('server', '1234', 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `street_usage`
--

CREATE TABLE `street_usage` (
  `id` int(11) NOT NULL,
  `light` varchar(10) NOT NULL,
  `seconds` int(11) NOT NULL,
  `power_usage` double NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `street_usage`
--

INSERT INTO `street_usage` (`id`, `light`, `seconds`, `power_usage`, `month`, `year`) VALUES
(1, 'L1', 320, 3.3333333333333, 11, 2018),
(2, 'L2', 320, 3.3333333333333, 11, 2018),
(3, 'L3', 320, 3.3333333333333, 11, 2018),
(4, 'L4', 320, 3.3333333333333, 11, 2018),
(5, 'L5', 320, 3.3333333333333, 11, 2018),
(6, 'L6', 320, 3.3333333333333, 11, 2018),
(7, 'L7', 320, 3.3333333333333, 11, 2018),
(8, 'L8', 320, 3.3333333333333, 11, 2018),
(9, 'L9', 320, 3.3333333333333, 11, 2018),
(10, 'L10', 320, 3.3333333333333, 11, 2018),
(11, 'L11', 320, 3.3333333333333, 11, 2018),
(12, 'L12', 320, 3.3333333333333, 11, 2018),
(13, 'L1', 200, 3.3333333333333, 12, 2018),
(14, 'L2', 200, 3.3333333333333, 12, 2018),
(15, 'L3', 200, 3.3333333333333, 12, 2018),
(16, 'L4', 200, 3.3333333333333, 12, 2018),
(17, 'L5', 200, 3.3333333333333, 12, 2018),
(18, 'L6', 200, 3.3333333333333, 12, 2018),
(19, 'L7', 200, 3.3333333333333, 12, 2018),
(20, 'L8', 200, 3.3333333333333, 12, 2018),
(21, 'L9', 200, 3.3333333333333, 12, 2018),
(22, 'L10', 200, 3.3333333333333, 12, 2018),
(23, 'L11', 200, 3.3333333333333, 12, 2018),
(24, 'L12', 200, 3.3333333333333, 12, 2018),
(25, 'L1', 80, 1.3333333333333, 1, 2019),
(26, 'L2', 80, 1.3333333333333, 1, 2019),
(27, 'L3', 60, 1, 1, 2019),
(28, 'L4', 80, 1.3333333333333, 1, 2019),
(29, 'L5', 80, 1.3333333333333, 1, 2019),
(30, 'L6', 80, 1.3333333333333, 1, 2019),
(31, 'L7', 20, 0, 1, 2019),
(32, 'L8', 80, 1.3333333333333, 1, 2019),
(33, 'L9', 80, 1.3333333333333, 1, 2019),
(34, 'L10', 80, 1.3333333333333, 1, 2019),
(35, 'L11', 80, 1.3333333333333, 1, 2019),
(36, 'L12', 80, 1.3333333333333, 1, 2019),
(37, 'L1', 2810, 46.833333333333, 2, 2019),
(38, 'L2', 3570, 59.5, 2, 2019),
(39, 'L3', 3150, 52.5, 2, 2019),
(40, 'L4', 2220, 37, 2, 2019),
(41, 'L5', 1620, 27, 2, 2019),
(42, 'L6', 4440, 74, 2, 2019),
(43, 'L7', 4040, 67.333333333333, 2, 2019),
(44, 'L8', 3110, 51.833333333333, 2, 2019),
(45, 'L9', 2940, 49, 2, 2019),
(46, 'L10', 3580, 59.666666666667, 2, 2019),
(47, 'L11', 2620, 43.666666666667, 2, 2019),
(48, 'L12', 3500, 58.333333333333, 2, 2019);
