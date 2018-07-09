-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2018 at 01:42 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voting_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `c_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `ward_no` int(10) NOT NULL,
  `vote` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`c_id`, `name`, `ward_no`, `vote`) VALUES
('1', 'naveen', 10, 0),
('2', 'shiv', 20, 0),
('C13', 'harrison', 1, 0),
('C74', 'harrison', 7, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD KEY `c_id` (`c_id`),
  ADD KEY `name` (`name`),
  ADD KEY `ward_no` (`ward_no`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `candidate` (`c_id`),
  ADD CONSTRAINT `result_ibfk_2` FOREIGN KEY (`name`) REFERENCES `candidate` (`name`),
  ADD CONSTRAINT `result_ibfk_3` FOREIGN KEY (`ward_no`) REFERENCES `candidate` (`ward_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
