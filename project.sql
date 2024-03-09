-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2019 at 08:56 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `campany`
--

CREATE TABLE `campany` (
  `serial` int(11) NOT NULL,
  `kid` int(11) DEFAULT NULL,
  `kname` varchar(200) NOT NULL,
  `kaddress` varchar(200) NOT NULL,
  `kphone` varchar(20) NOT NULL,
  `kemail` varchar(200) NOT NULL,
  `web` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `collage`
--

CREATE TABLE `collage` (
  `serial` int(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `cname` varchar(200) NOT NULL,
  `caddress` varchar(200) NOT NULL,
  `cphone` varchar(20) NOT NULL,
  `cemail` varchar(200) NOT NULL,
  `grade` varchar(20) NOT NULL,
  `university` varchar(200) NOT NULL,
  `cwebsite` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `requirement`
--

CREATE TABLE `requirement` (
  `requri` varchar(1000) NOT NULL,
  `noOFVac` int(11) DEFAULT NULL,
  `package` int(11) NOT NULL,
  `ExpDated` varchar(20) DEFAULT NULL,
  `gradeOfClg` varchar(10) NOT NULL,
  `MinCGPA` int(11) DEFAULT NULL,
  `Backlog` int(11) DEFAULT NULL,
  `MaxDrop` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `listOFClg` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sid` int(11) NOT NULL,
  `sname` varchar(200) NOT NULL,
  `semail` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` varchar(20) NOT NULL,
  `collageId` varchar(200) NOT NULL,
  `collageName` varchar(200) DEFAULT NULL,
  `Branch` int(11) NOT NULL,
  `AvgCGPA` int(11) NOT NULL,
  `passingYear` int(11) NOT NULL,
  `tenthMarks` int(11) NOT NULL,
  `twelethMark` int(11) NOT NULL,
  `pdf` varchar(200) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `Exp` int(11) DEFAULT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campany`
--
ALTER TABLE `campany`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `collage`
--
ALTER TABLE `collage`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `campany`
--
ALTER TABLE `campany`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `collage`
--
ALTER TABLE `collage`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
