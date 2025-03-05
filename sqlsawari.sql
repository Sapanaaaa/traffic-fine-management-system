-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2023 at 06:13 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `driver`
--

-- --------------------------------------------------------

--
-- Table structure for table `fine`
--

CREATE TABLE `fine` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `fine_date` date NOT NULL DEFAULT current_timestamp(),
  `fine_type` varchar(20) NOT NULL,
  `fine_amount` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Pending',
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `vehicle_no` int(50) NOT NULL,
  `lno` int(50) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_lno` (`lno`),
  UNIQUE KEY `unique_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Dumping data for table `fine`
--

INSERT INTO `fine` (`user_id`, `fine_date`, `fine_type`, `fine_amount`, `status`, `description`) VALUES
(1, '2023-007-19', '100', 1000, 'Paid', 'Drinking alcohol'),
(1, '2023-08-19', '105', 3000, 'Pending', 'carrying overload goods'),
(2, '2023-08-19', '102', 2000, 'Paid', 'parking in no parking area'),
(2, '2023-08-20', '104', 1000, 'Paid', 'one way'),
(1, '2023-09-07', '100', 5000, 'Paid', 'sorry '),
(1, '2023-09-25', '105', 700, 'Paid', 'lll');


--
-- Table structure for table `admin`
--
CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

