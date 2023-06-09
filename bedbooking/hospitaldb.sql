-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2023 at 06:45 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitaldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `reg_beds`
--

CREATE TABLE `reg_beds` (
  `id` int(11) NOT NULL,
  `roomNo` varchar(50) NOT NULL,
  `bedNo` varchar(15) NOT NULL,
  `price` int(11) NOT NULL,
  `status1` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_beds`
--

INSERT INTO `reg_beds` (`id`, `roomNo`, `bedNo`, `price`, `status1`) VALUES
(1, 'r1', 'b1', 100, 'booked'),
(2, 'r1', 'b2', 200, 'booked'),
(3, 'r1', 'b3', 150, 'booked'),
(4, 'r2', 'b3', 322, 'booked'),
(5, 'r2', 'b3', 322, 'booked'),
(6, 'r2', 'b3', 322, 'booked'),
(7, 'r2', 'b2', 222, 'booked'),
(9, 'r2', 'b1', 100, 'available');

-- --------------------------------------------------------

--
-- Table structure for table `reg_doctor`
--

CREATE TABLE `reg_doctor` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_doctor`
--

INSERT INTO `reg_doctor` (`id`, `name`, `email`, `address`, `mobile`, `qualification`, `username`, `password`) VALUES
(1, 'John', 'john@gmail.com', 'USA', '12341234', 'Md', 'john', 'john123'),
(2, 'doew', 'doe@gmail.com', 'USA', '12341234', 'Md', 'doe', 'doe123'),
(3, 'doctorwb', 'd4@gmail.com', '12346789', 'abc', 'sss', 'dfourwb', 'dfour'),
(4, 'ppp', 'ppp@gmail.com', 'USA', '12341234', 'Md', 'dppp', 'pppd'),
(5, 'doeweb', 'doeweb@gmail.com', 'USRSW', '12341234', 'Md', 'doeweb', 'doeweb');

-- --------------------------------------------------------

--
-- Table structure for table `reg_manager`
--

CREATE TABLE `reg_manager` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `hospitalname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_manager`
--

INSERT INTO `reg_manager` (`id`, `name`, `email`, `mobile`, `address`, `hospitalname`, `username`, `password`) VALUES
(1, 'mgrone', 'mgr1@gmail.com', '12341234', 'Fr', 'Crescent Hospital', 'mgrone', 'mgr123');

-- --------------------------------------------------------

--
-- Table structure for table `reg_patient`
--

CREATE TABLE `reg_patient` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` varchar(15) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bloodgroup` varchar(10) NOT NULL,
  `symptoms` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `doa` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_patient`
--

INSERT INTO `reg_patient` (`id`, `name`, `age`, `mobile`, `address`, `gender`, `bloodgroup`, `symptoms`, `department`, `doa`, `username`, `password`) VALUES
(2, 'usertwo', '23', '43214321', 'USA', 'male', 'B', 'feverw', 'general', '2023-06-11', 'usertwo', 'user123'),
(4, 'userone', '34', '43214321', 'UK', 'male', 'a', 'kkkk', 'general', '2023-07-06', 'userfour', 'user123'),
(5, 'umgr1', '22', '2222222222', 'dddd', 'on', 'c', 'vvv', 'general', '2023-07-07', 'cccc', 'cccc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reg_beds`
--
ALTER TABLE `reg_beds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_doctor`
--
ALTER TABLE `reg_doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_manager`
--
ALTER TABLE `reg_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_patient`
--
ALTER TABLE `reg_patient`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reg_beds`
--
ALTER TABLE `reg_beds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reg_doctor`
--
ALTER TABLE `reg_doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reg_manager`
--
ALTER TABLE `reg_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reg_patient`
--
ALTER TABLE `reg_patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
