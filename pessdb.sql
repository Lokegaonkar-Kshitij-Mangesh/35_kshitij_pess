-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2022 at 11:24 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pessdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `dispatch`
--

CREATE TABLE `dispatch` (
  `incident_id` int(11) NOT NULL,
  `patrolcar_id` varchar(10) NOT NULL,
  `time_dispatched` datetime NOT NULL,
  `time_arrived` datetime DEFAULT NULL,
  `time_completed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dispatch`
--

INSERT INTO `dispatch` (`incident_id`, `patrolcar_id`, `time_dispatched`, `time_arrived`, `time_completed`) VALUES
(1, 'QX3334E', '2022-03-05 14:23:15', '2022-03-08 13:39:56', '2022-03-08 15:05:59'),
(867492, 'QX1111A', '2022-02-10 07:26:23', '2022-02-10 07:26:23', NULL),
(867492, 'QX1123V', '2022-02-10 07:29:23', '2022-02-10 07:29:23', NULL),
(867506, 'QX1123V', '2022-03-05 14:34:54', '2022-03-08 13:34:30', NULL),
(867507, 'QX222B', '2022-03-05 14:42:16', '2022-03-08 15:25:46', '2022-03-08 15:26:44'),
(867508, 'QX5521W', '2022-03-05 16:20:04', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `incident`
--

CREATE TABLE `incident` (
  `incident_id` int(11) NOT NULL,
  `caller_name` varchar(30) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `incident_type_id` varchar(3) NOT NULL,
  `incident_locations` varchar(50) NOT NULL,
  `incident_desc` varchar(100) NOT NULL,
  `incident_status_id` varchar(1) NOT NULL,
  `time_called` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident`
--

INSERT INTO `incident` (`incident_id`, `caller_name`, `phone_number`, `incident_type_id`, `incident_locations`, `incident_desc`, `incident_status_id`, `time_called`) VALUES
(1, 'David', '8123456', '060', 'Outside ITE CW', 'Car clashed with van', '3', '2022-02-06 23:33:01'),
(2, 'Iversion', '91234567', '020', 'Jurong', 'Testing', '1', '2022-02-08 13:41:57'),
(3, 'Slim Shady', '84567676', '020', '369 Yung An Rd 610369', 'Hello, come help', '1', '2022-02-10 06:15:31'),
(4, 'Pale Jerry', '97865457', '050', '456 Han An Road 610456', 'Hi mom', '3', '2022-02-09 13:17:39'),
(5, 'David', '91234566', '010', 'CCK', 'Fine At CCK', '1', '2022-03-02 17:18:44'),
(6, 'David', '91234553', '050', 'Jurong', 'A Tree Has Fallen In Lego City', '1', '2022-03-03 14:50:32'),
(867492, 'Hale Harry', '85014256', '010', '378 Rung An Street 610378', 'Where are you?', '2', '2022-02-10 06:16:03'),
(867497, 'Julian', '91234556', '060', 'Yishun', 'Hey', '1', '2022-03-03 15:10:25'),
(867498, 'James', '9888679', '030', 'Hougang', 'Thief at shopping mall', '2', '2022-03-05 13:51:06'),
(867499, 'James', '9888679', '030', 'Hougang', 'Thief at shopping mall', '2', '2022-03-05 13:51:26'),
(867500, 'James', '9888679', '030', 'Hougang', 'Thief at shopping mall', '2', '2022-03-05 13:52:24'),
(867501, 'James', '81274553', '030', 'Hougang', 'Robbery At shopping mall', '2', '2022-03-05 13:53:01'),
(867502, 'James', '61234569', '030', 'Hougang', 'Thief at shopping mall', '2', '2022-03-05 13:54:14'),
(867503, 'Glenn', '91234433', '050', 'Yew Tee', 'Tree fallen', '2', '2022-03-05 14:10:53'),
(867504, 'Glenn', '91234433', '050', 'Yew Tee', 'Tree fallen', '2', '2022-03-05 14:11:19'),
(867505, 'Glenn', '91234433', '050', 'Yew Tee', 'Tree fallen', '2', '2022-03-05 14:12:00'),
(867506, 'Thomas', '81231242', '070', 'Tampines', 'Painting outside house', '2', '2022-03-05 14:34:54'),
(867507, 'Fanny', '8123456', '080', 'Pasir Ris', 'Flooding', '3', '2022-03-05 14:42:16'),
(867508, 'David', '91234553', '020', 'CCK', 'hi', '2', '2022-03-05 16:20:04');

-- --------------------------------------------------------

--
-- Table structure for table `incident_status`
--

CREATE TABLE `incident_status` (
  `incident_status_id` varchar(1) NOT NULL,
  `incident_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident_status`
--

INSERT INTO `incident_status` (`incident_status_id`, `incident_status_desc`) VALUES
('1', 'Pending'),
('2', 'Dispatched'),
('3', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `incident_type`
--

CREATE TABLE `incident_type` (
  `incident_type_id` varchar(3) NOT NULL,
  `incident_type_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident_type`
--

INSERT INTO `incident_type` (`incident_type_id`, `incident_type_desc`) VALUES
('010', 'Fire'),
('020', 'Riot'),
('030', 'Burglary'),
('040', 'Domestic Voilent'),
('050', 'Fallen Tree'),
('060', 'Traffic Accident'),
('070', 'Loan Shark'),
('080', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar`
--

CREATE TABLE `patrolcar` (
  `patrolcar_id` varchar(10) NOT NULL,
  `patrolcar_status_id` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patrolcar`
--

INSERT INTO `patrolcar` (`patrolcar_id`, `patrolcar_status_id`) VALUES
('QX1123V', '1'),
('QX5521W', '1'),
('QX222B', '3'),
('QX233A', '3'),
('QX3334E', '3'),
('QX555T', '3'),
('QX7774', '3'),
('QX8885', '3'),
('QX999E', '3'),
('QX1111A', '4');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar_status`
--

CREATE TABLE `patrolcar_status` (
  `patrolcar_status_id` varchar(1) NOT NULL,
  `patrolcar_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patrolcar_status`
--

INSERT INTO `patrolcar_status` (`patrolcar_status_id`, `patrolcar_status_desc`) VALUES
('4', 'Arrived'),
('1', 'Dispatched'),
('3', 'Free'),
('2', 'Patrol');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD PRIMARY KEY (`incident_id`,`patrolcar_id`),
  ADD KEY `patrolcar_id` (`patrolcar_id`);

--
-- Indexes for table `incident`
--
ALTER TABLE `incident`
  ADD PRIMARY KEY (`incident_id`),
  ADD KEY `incident_type_id` (`incident_type_id`,`incident_status_id`),
  ADD KEY `incident_type_id_2` (`incident_type_id`,`incident_status_id`),
  ADD KEY `incident_status_id` (`incident_status_id`);

--
-- Indexes for table `incident_status`
--
ALTER TABLE `incident_status`
  ADD PRIMARY KEY (`incident_status_id`);

--
-- Indexes for table `incident_type`
--
ALTER TABLE `incident_type`
  ADD PRIMARY KEY (`incident_type_id`);

--
-- Indexes for table `patrolcar`
--
ALTER TABLE `patrolcar`
  ADD PRIMARY KEY (`patrolcar_id`),
  ADD KEY `patrolcar_status_id` (`patrolcar_status_id`);

--
-- Indexes for table `patrolcar_status`
--
ALTER TABLE `patrolcar_status`
  ADD PRIMARY KEY (`patrolcar_status_id`),
  ADD KEY `incident_status_desc` (`patrolcar_status_desc`),
  ADD KEY `incident_status_desc_2` (`patrolcar_status_desc`),
  ADD KEY `patrolcar_status_id` (`patrolcar_status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `incident`
--
ALTER TABLE `incident`
  MODIFY `incident_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=867523;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD CONSTRAINT `dispatch_ibfk_1` FOREIGN KEY (`patrolcar_id`) REFERENCES `patrolcar` (`patrolcar_id`),
  ADD CONSTRAINT `dispatch_ibfk_2` FOREIGN KEY (`incident_id`) REFERENCES `incident` (`incident_id`);

--
-- Constraints for table `incident`
--
ALTER TABLE `incident`
  ADD CONSTRAINT `incident_ibfk_1` FOREIGN KEY (`incident_type_id`) REFERENCES `incident_type` (`incident_type_id`),
  ADD CONSTRAINT `incident_ibfk_2` FOREIGN KEY (`incident_status_id`) REFERENCES `incident_status` (`incident_status_id`);

--
-- Constraints for table `patrolcar`
--
ALTER TABLE `patrolcar`
  ADD CONSTRAINT `patrolcar_ibfk_1` FOREIGN KEY (`patrolcar_status_id`) REFERENCES `patrolcar_status` (`patrolcar_status_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
