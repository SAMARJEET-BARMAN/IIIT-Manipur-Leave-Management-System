-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 24, 2020 at 06:26 AM
-- Server version: 5.7.30-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `LMS`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `userid` varchar(10) NOT NULL,
  `emailid` varchar(30) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `password` varchar(10) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`userid`, `emailid`, `name`, `password`, `createdon`) VALUES
('S107150010', 'd@iiitmanipur.ac.in', 'Dr. ast', 'abc123', '2020-03-11 17:06:21'),
('18010201', 'ece@iiitmanipur.ac.in', 'Dr. ece', 'abc123', '2020-03-11 16:25:19'),
('F105160021', 'kisorjit@iiitmanipur.ac.in', 'Dr. Kisorjit', 'F105160021', '2020-06-06 07:12:31'),
('F105160022', 'n@iiitmanipur.ac.in', 'Dr. N', 'F105160022', '2020-03-11 13:48:45'),
('18030101', 'na@iiitmanipur.ac.in', 'Dr. Na', 'abc123', '2020-03-11 17:07:21'),
('18030102', 'na@iiitmanipur.ac.in', 'Dr. Na', 'abc123', '2020-03-11 17:07:21'),
('F105160020', 'nsaharia@iiitmanipur.ac.in', 'Dr. Navanath Saahria', 'F105160020', '2020-03-11 13:48:45'),
('S107150014', 'rnd@iiitmanipur.ac.in', 'Dr. rnd', 'abc123', '2020-03-11 17:06:21'),
('S107150015', 'rnd@iiitmanipur.ac.in', 'Dr. rnd', 'abc123', '2020-03-11 17:06:21'),
('18010101', 'samarjeet@iiitmanipur.ac.in', 'Dr. Samarjeet', 'abc123', '2020-03-11 16:25:19'),
('S107150012', 'sd@iiitmanipur.ac.in', 'Dr. as', 'abc123', '2020-03-11 17:06:21'),
('S107150013', 'sd@iiitmanipur.ac.in', 'Dr. as', 'abc123', '2020-03-11 17:06:21');

-- --------------------------------------------------------

--
-- Table structure for table `leave_applied`
--

CREATE TABLE `leave_applied` (
  `lid` int(255) NOT NULL,
  `userid` varchar(10) NOT NULL,
  `Nature` varchar(30) DEFAULT NULL,
  `Departuredate` varchar(100) NOT NULL,
  `Departuretime` varchar(100) NOT NULL,
  `Arrivaldate` varchar(100) NOT NULL,
  `Arrivaltime` varchar(100) NOT NULL,
  `NOD` decimal(11,1) DEFAULT NULL,
  `ROL` varchar(1000) NOT NULL,
  `AnswerSLP` varchar(100) DEFAULT NULL,
  `fromSLP` varchar(100) DEFAULT NULL,
  `toSLP` varchar(100) DEFAULT NULL,
  `status` varchar(1000) NOT NULL DEFAULT 'Pending for Approve',
  `remark` varchar(1000) NOT NULL DEFAULT 'No Remark from Admin',
  `AppliedOn` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `section` varchar(1000) DEFAULT NULL,
  `Designation` varchar(1000) DEFAULT NULL,
  `Supervisor` varchar(1000) DEFAULT 'No Supervisor'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_applied`
--

INSERT INTO `leave_applied` (`lid`, `userid`, `Nature`, `Departuredate`, `Departuretime`, `Arrivaldate`, `Arrivaltime`, `NOD`, `ROL`, `AnswerSLP`, `fromSLP`, `toSLP`, `status`, `remark`, `AppliedOn`, `section`, `Designation`, `Supervisor`) VALUES
(71, '18010201', 'Academic', '2020-06-08', 'Forenoon', '2020-06-09', 'Forenoon', NULL, 'gf', 'NULL', '', '', 'Approved', 'rsty', '2020-06-22 14:18:17.260556', 'ECE', 'Student', 'No Supervisor'),
(72, '18030102', 'Academic', '2020-06-08', 'Forenoon', '2020-06-09', 'Forenoon', NULL, 'fgh', 'NULL', '', '', 'Approved', 'rftyh', '2020-06-22 14:15:28.536904', 'ECE', 'Student', 'F105160020'),
(74, 'S107150012', 'Casual Leave (CL)', '2020-06-08', 'Forenoon', '2020-06-09', 'Forenoon', NULL, 'fgh', 'Required', '2020-06-08', '2020-06-09', 'Pending for Approve', 'No Remark from Admin', '2020-06-07 13:31:44.974696', 'CSE', 'staff', 'No Supervisor'),
(77, 'F105160020', 'Casual Leave (CL)', '2020-06-23', 'Forenoon', '2020-06-24', 'Forenoon', '2.5', 'dfs', 'Required', '2020-06-23', '2020-06-24', 'Approved', 'gyuiu', '2020-06-22 13:22:04.010110', 'ECE', 'FACULTY', 'No Supervisor'),
(78, '18010201', 'Academic', '2020-06-25', 'Forenoon', '2020-06-27', 'Forenoon', NULL, 'anything', 'NULL', '', '', 'Pending for Approve', 'No Remark from Admin', '2020-06-24 00:22:40.838408', 'ECE', 'Student', 'No Supervisor'),
(79, '18030102', 'Academic', '2020-06-24', 'Forenoon', '2020-06-26', 'Forenoon', NULL, 'de', 'NULL', '', '', 'Pending for Approve', 'No Remark from Admin', '2020-06-24 00:24:50.185101', 'ECE', 'Student', 'F105160020'),
(80, '18010201', 'Academic', '2020-06-25', 'Forenoon', '2020-06-27', 'Forenoon', NULL, 'Anything', 'NULL', '', '', 'Approved', 'safe journey', '2020-06-24 00:31:27.234509', 'ECE', 'Student', 'No Supervisor'),
(81, 'F105160022', 'Casual Leave (CL)', '2020-06-25', 'Forenoon', '2020-06-27', 'Forenoon', '2.5', 'anything', 'Required', '2020-06-25', '2020-06-27', 'Pending for Approve', 'No Remark from Admin', '2020-06-24 00:32:26.339670', 'CSE', 'Faculty', 'No Supervisor'),
(82, '18030102', 'Academic', '2020-06-25', 'Forenoon', '2020-06-27', 'Forenoon', NULL, 'anything', 'NULL', '', '', 'Approved', 'safe', '2020-06-24 00:35:24.287871', 'ECE', 'Student', 'F105160020'),
(83, 'F105160020', 'Casual Leave (CL)', '2020-06-25', 'Forenoon', '2020-06-27', 'Forenoon', '2.5', 'anything', 'Not-Required', '', '', 'Approved', 'safe', '2020-06-24 00:37:43.854685', 'ECE', 'FACULTY', 'No Supervisor');

-- --------------------------------------------------------

--
-- Table structure for table `leave_balance`
--

CREATE TABLE `leave_balance` (
  `userid` varchar(100) NOT NULL,
  `lvType` varchar(100) NOT NULL,
  `count` decimal(11,1) DEFAULT NULL,
  `balance` decimal(11,1) DEFAULT NULL,
  `max` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_balance`
--

INSERT INTO `leave_balance` (`userid`, `lvType`, `count`, `balance`, `max`) VALUES
('F105160020', 'Casual Leave (CL)', '2.5', '5.5', 8),
('F105160020', 'Earned Leave (EL)', '0.0', '30.0', 30),
('F105160020', 'Half Pay Leave (HPL)', '0.0', '10.0', 10),
('F105160020', 'Special Casual Leave (SCL)', '0.0', '15.0', 15),
('F105160020', 'Study Leave', '0.0', '732.0', 732),
('F105160022', 'Casual Leave (CL)', '0.0', '8.0', 8),
('F105160022', 'Earned Leave (EL)', '0.0', '30.0', 30),
('F105160022', 'Half Pay Leave (HPL)', '0.0', '10.0', 10),
('F105160022', 'Special Casual Leave (SCL)', '0.0', '15.0', 15),
('F105160022', 'Study Leave', '0.0', '732.0', 732),
('S107150012', 'Casual Leave (CL)', '0.0', '8.0', 8),
('S107150012', 'Earned Leave (EL)', '0.0', '30.0', 30),
('S107150012', 'Half Pay Leave (HPL)', '0.0', '10.0', 10),
('S107150012', 'Special Casual Leave (SCL)', '0.0', '15.0', 15),
('S107150012', 'Study Leave', '0.0', '732.0', 732),
('S107150013', 'Casual Leave (CL)', '0.0', '8.0', 8),
('S107150013', 'Earned Leave (EL)', '0.0', '30.0', 30),
('S107150013', 'Half Pay Leave (HPL)', '0.0', '10.0', 10),
('S107150013', 'Special Casual Leave (SCL)', '0.0', '15.0', 15),
('S107150013', 'Study Leave', '0.0', '732.0', 732),
('S107150015', 'Casual Leave (CL)', '0.0', '8.0', 8),
('S107150015', 'Earned Leave (EL)', '0.0', '30.0', 30),
('S107150015', 'Half Pay Leave (HPL)', '0.0', '10.0', 10),
('S107150015', 'Special Casual Leave (SCL)', '0.0', '15.0', 15),
('S107150015', 'Study Leave', '0.0', '732.0', 732);

-- --------------------------------------------------------

--
-- Table structure for table `sectionHead`
--

CREATE TABLE `sectionHead` (
  `sectionID` varchar(10) DEFAULT NULL,
  `sectionHeadID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sectionHead`
--

INSERT INTO `sectionHead` (`sectionID`, `sectionHeadID`) VALUES
('CSE', 'S107150010'),
('ECE', 'F105160021'),
('RND', 'S107150014');

-- --------------------------------------------------------

--
-- Table structure for table `User_detail`
--

CREATE TABLE `User_detail` (
  `userid` varchar(10) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `section` varchar(100) DEFAULT NULL,
  `designation` varchar(15) DEFAULT NULL,
  `Supervisor` varchar(1000) DEFAULT 'No Supervisor',
  `HOSTELWARDEN` varchar(3) DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User_detail`
--

INSERT INTO `User_detail` (`userid`, `fname`, `lname`, `dob`, `doj`, `gender`, `section`, `designation`, `Supervisor`, `HOSTELWARDEN`) VALUES
('S107150010', 'ak', 'ka', '2020-03-03', '2020-03-27', 'Male', 'CSE', 'staff', 'No Supervisor', 'NO'),
('S107150012', 'ka', 'ak', '2020-03-03', '2020-03-27', 'Male', 'CSE', 'staff', 'No Supervisor', 'NO'),
('S107150013', 'asd', 'sad', '2020-03-18', '2020-03-19', 'Male', 'CSE', 'ASD', 'No Supervisor', 'NO'),
('F105160020', 'SAHA', 'SIR', '2020-04-22', '2020-04-16', 'Male', 'ECE', 'FACULTY', 'No Supervisor', 'NO'),
('F105160021', 'KISO', 'JIT', '2020-04-15', '2020-04-17', 'Male', 'ECE', 'Head', 'No Supervisor', 'NO'),
('18010101', 'Samarjeet', 'Barman', '2020-04-22', '2020-04-24', 'Male', 'CSE', 'Student', 'No Supervisor', 'NO'),
('S107150014', 'gas', 'z', '2020-04-08', '2020-04-17', 'Male', 'RND', 'HEAD', 'No Supervisor', 'NO'),
('S107150015', 'rnd', 'section', '2020-06-16', '2020-06-18', 'Male', 'RND', 'staff', 'No Supervisor', 'NO'),
('18010201', 'dr. ece', 'student', '2020-06-18', '2020-06-19', 'Female', 'ECE', 'Student', 'No Supervisor', 'NO'),
('18030101', 'phdname', 'phdlname', '2020-06-16', '2020-06-26', 'Male', 'ECE', 'Student', 'No Supervisor', 'NO'),
('18030102', 'phdwe', 'phdl', '2020-06-16', '2020-06-19', 'Male', 'ECE', 'Student', 'F105160020', 'NO'),
('F105160022', 'n', 'n', '2020-06-09', '2020-06-18', 'Male', 'CSE', 'Faculty', 'No Supervisor', 'YES');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`emailid`,`userid`),
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `leave_applied`
--
ALTER TABLE `leave_applied`
  ADD PRIMARY KEY (`lid`,`userid`),
  ADD KEY `fkleave_applied` (`userid`);

--
-- Indexes for table `leave_balance`
--
ALTER TABLE `leave_balance`
  ADD PRIMARY KEY (`userid`,`lvType`);

--
-- Indexes for table `sectionHead`
--
ALTER TABLE `sectionHead`
  ADD KEY `fksectionHead` (`sectionHeadID`);

--
-- Indexes for table `User_detail`
--
ALTER TABLE `User_detail`
  ADD KEY `fkUser_detail` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `leave_applied`
--
ALTER TABLE `leave_applied`
  MODIFY `lid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `leave_applied`
--
ALTER TABLE `leave_applied`
  ADD CONSTRAINT `fkleave_applied` FOREIGN KEY (`userid`) REFERENCES `account` (`userid`);

--
-- Constraints for table `leave_balance`
--
ALTER TABLE `leave_balance`
  ADD CONSTRAINT `fkBal` FOREIGN KEY (`userid`) REFERENCES `account` (`userid`);

--
-- Constraints for table `sectionHead`
--
ALTER TABLE `sectionHead`
  ADD CONSTRAINT `fksectionHead` FOREIGN KEY (`sectionHeadID`) REFERENCES `account` (`userid`);

--
-- Constraints for table `User_detail`
--
ALTER TABLE `User_detail`
  ADD CONSTRAINT `fkUser_detail` FOREIGN KEY (`userid`) REFERENCES `account` (`userid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
