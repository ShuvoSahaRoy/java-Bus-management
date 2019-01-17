-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2018 at 09:46 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `busmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `Name` char(50) NOT NULL,
  `username` char(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `Name`, `username`, `password`) VALUES
(1, 'Mona', 'mona', '123'),
(2, 'Mona', 'mona', '123'),
(1001, 'Mona', 'mona', '123'),
(1002, 'shuvo', 'shuvo', '123');

-- --------------------------------------------------------

--
-- Table structure for table `assign_bus`
--

CREATE TABLE `assign_bus` (
  `Assign_id` int(11) NOT NULL,
  `Employee_id` int(5) DEFAULT NULL,
  `bus_no` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assign_bus`
--

INSERT INTO `assign_bus` (`Assign_id`, `Employee_id`, `bus_no`) VALUES
(1, 1, '45');

-- --------------------------------------------------------

--
-- Table structure for table `bus_details`
--

CREATE TABLE `bus_details` (
  `id` int(11) NOT NULL,
  `bus_no` varchar(50) NOT NULL,
  `bus_source` varchar(50) NOT NULL,
  `bus_dest` varchar(50) NOT NULL,
  `Movement` char(11) NOT NULL,
  `bus_date` varchar(50) NOT NULL,
  `bus_time` varchar(10) NOT NULL,
  `Price` int(11) NOT NULL,
  `Seat` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_details`
--

INSERT INTO `bus_details` (`id`, `bus_no`, `bus_source`, `bus_dest`, `Movement`, `bus_date`, `bus_time`, `Price`, `Seat`) VALUES
(2, 'SJ-1001', 'Dhaka', 'Noakhali', 'UP', '27--08--2018', '4PM', 400, '55'),
(3, '45', 'ds', 'df', 'UP', '28--08--2018', '4Pm', 450, '55');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Employee_id` int(2) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Employee_id`, `Name`) VALUES
(1, 'asd'),
(2, 'abc'),
(3, 'fdf');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(11) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Web_Url` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `First_Name`, `Last_Name`, `Username`, `Password`, `Email`, `Web_Url`) VALUES
(1, 'as', 'fgf', 'asd', 'dsafds', 'dfrh', 'dfg'),
(2, 'a', 'b', 'ab', '123', 'ab123', 'cc'),
(3, 'Shuvo', 'Saha', 'shuvosaha', '123', 'sshuvo', 'cc'),
(4, 'Shuvo', 'Saha', 'sshuvo', '123', 'sshuvo548@gmail.com', 'no'),
(545, 'abc', 'abc', 'abc', 'abc', 'abc', 'abc'),
(707, 'a', 'abc', 'abc', 'abc', 'abc', 'abc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_bus`
--
ALTER TABLE `assign_bus`
  ADD PRIMARY KEY (`Assign_id`),
  ADD KEY `Employee_id` (`Employee_id`),
  ADD KEY `bus_no` (`bus_no`);

--
-- Indexes for table `bus_details`
--
ALTER TABLE `bus_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bus_no` (`bus_no`) USING BTREE;

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Employee_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bus_details`
--
ALTER TABLE `bus_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assign_bus`
--
ALTER TABLE `assign_bus`
  ADD CONSTRAINT `assign_bus_ibfk_1` FOREIGN KEY (`Employee_id`) REFERENCES `employee` (`Employee_id`),
  ADD CONSTRAINT `assign_bus_ibfk_2` FOREIGN KEY (`bus_no`) REFERENCES `bus_details` (`bus_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
