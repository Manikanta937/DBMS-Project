-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2019 at 08:34 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `370project`
--

-- --------------------------------------------------------

--
-- Table structure for table `alogin`
--

CREATE TABLE `alogin` (
  `id` int(11) NOT NULL,
  `email` tinytext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alogin`
--

INSERT INTO `alogin` (`id`, `email`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `nid` int(20) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `dept` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `pic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `firstName`, `lastName`, `email`, `password`, `birthday`, `gender`, `contact`, `nid`, `address`, `dept`, `degree`, `pic`) VALUES
(110, 'Jack', 'Sparrow', 'JohnnyDepp@wipro.corp', '9731', '2011-02-01', 'Male', '0187282', 112233, 'Caribbean', 'Management', 'B.Tech', 'images/Jack.jpg'),
(111, 'Jon', 'Snow', 'JonSnow@wipro.corp', '1234', '2018-01-01', 'Male', '0202123', 303, 'Winterfell', 'CSE', 'BSc', 'images/Snow.jpg'),
(106, 'Bobby', 'Brown', 'BobbyBrown@wipro.corp', '2222', '1990-02-02', 'Female', '5252', 6262, 'UK', 'Creative', 'MSc', 'images/Eleven.jpg'),
(104, 'Tim', 'Berling', 'TimBerling@wipro.corp', '1234', '1971-06-28', 'Male', '8585', 5858, 'LA, USA', 'Music', 'BSc', 'images/avicii.jpg'),
(105, 'Lionel ', 'Messi', 'leomessi@wipro.corp', '123', '1990-02-02', 'Male', '7575', 5757, 'Argentina', 'NetworkSecurity', 'MSc', 'images/Leo.jpg'),
(107, 'Gal', 'Gadot', 'wonderwoman@wipro.corp', '2345', '1993-03-03', 'Female', '4545', 5454, 'USA', 'Defense ', 'MS', 'images/Gal.jpg'),
(108, 'Cristiano', 'Ronaldo', 'CR7@wipro.corp', '1234', '1976-04-16', 'Male', '758758', 857857, 'Portugal', 'AI', 'PhD', 'images/CR7.jpeg'),
(101, 'Rohith ','BR', 'Rohith@wipro.corp', '1234', '1985-01-01', 'Male', '852852', 258258, 'USA', 'CSE', 'B.Tech', 'images/.jpg'),
(102, 'Siva', 'Manikanta', 'ManiKanta@wipro.corp', '1234', '2001-08-24', 'Male', '147147', 741741, 'India', 'CSE', 'B.Tech', 'images/.jpeg'),
(109, 'Khabib', 'Nurmagomedov', 'Nurmagomedov@wipro.corp', '264', '2011-02-01', 'Male', '0187282', 112233, 'Russia', 'Management', 'BSc.', 'images/Eagle.jpg'),
(103, 'sai', 'prasad','saiprasad@wipro.corp','1234','1971-12-01','Male','9595',5959,'Chemsford, USA','Creative','MSc','images/.jpg');


--
-- Table structure for table `employee_leave`
--

CREATE TABLE `employee_leave` (
  `id` int(11) DEFAULT NULL,
  `token` int(11) NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `reason` char(100) DEFAULT NULL,
  `status` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_leave`
--

INSERT INTO `employee_leave` (`id`, `token`, `start`, `end`, `reason`, `status`) VALUES
(101, 301, '2021-04-07', '2021-04-08', 'Sick Leave', 'Cancelled'),
(111, 305, '2021-04-07', '2021-04-08', 'Urgent Family issue', 'Approved'),
(103, 306, '2021-04-08', '2021-04-08', 'Concert Tour', 'Approved'),
(107, 307, '2021-04-14', '2021-04-30', 'Feeling Sick', 'Pending'),
(104, 308, '2021-04-26', '2021-04-30', 'Emergency Leave', 'Pending'),
(109, 309, '2021-04-09', '2021-04-13', 'Vacation', 'Pending'),
(108, 310, '2021-04-08', '2021-04-09', 'National Duty', 'Pending'),
(110, 311, '2021-01-06', '2021-01-07', 'health issues', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `pid` int(11) NOT NULL,
  `eid` int(11) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `subdate` date DEFAULT '0000-00-00',
  `mark` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`pid`, `eid`, `pname`, `duedate`, `subdate`, `mark`, `status`) VALUES
(213, 110, 'Database Management', '2021-04-07', '2021-04-04', 10, 'Submitted'),
(214, 111, 'Al Project', '2021-04-10', '0000-00-00', 0, 'Due'),
(215, 104, 'Web Development', '2021-04-19', '2021-04-06', 9, 'Submitted'),
(216, 105, 'Hacking', '2021-05-04', '2021-04-05', 5, 'Submitted'),
(217, 109, 'Do Nothing', '2019-04-02', '0000-00-00', 0, 'Due'),
(218, 104, 'Django Development', '2019-04-03', '0000-00-00', 0, 'Due'),
(219, 110, 'PHP', '2019-04-07', '0000-00-00', 0, 'Due'),
(220, 102, 'Data Analysis', '2021-04-16', '2021-04-04', 8, 'Submitted'),
(221, 102, 'Data Analysis-2', '2021-04-16', '2021-04-04', 7, 'Submitted'),
(222, 106, 'Statistical', '2021-04-19', '2021-04-04', 6, 'Submitted'),
(223, 108, 'Software Testing', '2019-04-09', '2019-04-02', 3, 'Submitted'),
(224, 107, 'Security Check', '2021-04-26', '2021-04-05', 9, 'Submitted'),
(225, 101, 'ML', '2021-04-03', '2021-04-04', 6, 'Submitted');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `eid` int(11) NOT NULL,
  `points` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`eid`, `points`) VALUES
(101, 6),
(102, 15),
(103, 0),
(104, 29),
(105, 5),
(106, 6),
(107, 9),
(108, 3),
(109, 8),
(110, 20),
(111, 0);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `base` int(11) NOT NULL,
  `bonus` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `base`, `bonus`, `total`) VALUES
(101, 85000, 6, 90100),
(102, 47000, 15, 54500),
(103, 78000, 0, 68900),
(104, 105000, 29, 78000),
(105, 60000, 5, 126000),
(106, 65000, 6, 63000),
(107, 77000, 9, 83930),
(108, 50000, 3, 51500),
(109, 45000, 8, 90100),
(110, 55000, 20, 54050),
(111, 16500, 0, 48600);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alogin`
--
ALTER TABLE `alogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD PRIMARY KEY (`token`),
  ADD KEY `employee_leave_ibfk_1` (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `project_ibfk_1` (`eid`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alogin`
--
ALTER TABLE `alogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `employee_leave`
--
ALTER TABLE `employee_leave`
  MODIFY `token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD CONSTRAINT `employee_leave_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rank`
--
ALTER TABLE `rank`
  ADD CONSTRAINT `rank_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
