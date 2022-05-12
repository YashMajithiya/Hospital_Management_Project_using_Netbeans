-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2022 at 10:19 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `java`
--

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patientID` varchar(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contactNumber` varchar(10) DEFAULT NULL,
  `age` varchar(3) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `bloodGroup` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `anyMajorDisease` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientID`, `name`, `contactNumber`, `age`, `gender`, `bloodGroup`, `address`, `anyMajorDisease`) VALUES
('1', 'john', '4523751829', '25', 'Male', 'AB+', 'Tokyo', 'NO'),
('7', 'Jay', '8238139499', '19', 'Male', 'B+', 'Jamnagar', 'no'),
('89', 'priyesh', '6353219059', '19', 'Male', 'A+', 'dhoraji', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `patientreport`
--

CREATE TABLE `patientreport` (
  `patientID` varchar(10) NOT NULL,
  `symptom` varchar(200) DEFAULT NULL,
  `diagnosis` varchar(200) DEFAULT NULL,
  `medicines` varchar(200) DEFAULT NULL,
  `wardReq` varchar(5) DEFAULT NULL,
  `typeWard` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patientreport`
--

INSERT INTO `patientreport` (`patientID`, `symptom`, `diagnosis`, `medicines`, `wardReq`, `typeWard`) VALUES
('1', 'no', 'no', 'no', 'NO', ''),
('7', 'Fever', 'Viral Fever', 'Dcold', 'YES', 'Single');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patientID`);

--
-- Indexes for table `patientreport`
--
ALTER TABLE `patientreport`
  ADD PRIMARY KEY (`patientID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
