-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2017 at 10:38 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `NationalID` int(8) NOT NULL,
  `username` varchar(50) NOT NULL,
  `personalnumber` varchar(50) NOT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `Salary` double DEFAULT NULL,
  `Payed` double DEFAULT NULL,
  `Balance` double DEFAULT NULL,
  `LastEdited` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`NationalID`, `username`, `personalnumber`, `password`, `Salary`, `Payed`, `Balance`, `LastEdited`) VALUES
(31407936, 'TechGuy', '6668', '93f725a07423fe1c889f448b33d21f46', 12000, 1100, 10900, 'Tuesday, 12 September 2017, 10:34:26.244 PM');

-- --------------------------------------------------------

--
-- Table structure for table `pastrecords`
--

CREATE TABLE `pastrecords` (
  `Mname` varchar(100) NOT NULL,
  `Mserial` varchar(100) NOT NULL,
  `StockIn` double NOT NULL,
  `StockInCost` double NOT NULL,
  `StockOut` double NOT NULL,
  `StockOutCost` double NOT NULL,
  `Profit` double NOT NULL,
  `Loss` double NOT NULL,
  `LastEdited` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pastrecords`
--

INSERT INTO `pastrecords` (`Mname`, `Mserial`, `StockIn`, `StockInCost`, `StockOut`, `StockOutCost`, `Profit`, `Loss`, `LastEdited`) VALUES
('Nissan', 'GTR', 43, 12900, 5, 1545, 0, 11355, 'Tuesday, 19 September 2017, 07:34:09.468 PM');

-- --------------------------------------------------------

--
-- Table structure for table `paymentrecords`
--

CREATE TABLE `paymentrecords` (
  `Cname` varchar(100) NOT NULL,
  `CIdentity` varchar(100) NOT NULL,
  `Tcost` double NOT NULL,
  `Payed` double NOT NULL,
  `Balance` double NOT NULL,
  `Dpayed` date NOT NULL,
  `LastEdited` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentrecords`
--

INSERT INTO `paymentrecords` (`Cname`, `CIdentity`, `Tcost`, `Payed`, `Balance`, `Dpayed`, `LastEdited`) VALUES
('TechGuy', '31407936', 12000, 1000, 11000, '2017-09-12', 'Tuesday, 12 September 2017, 10:25:16.698 PM'),
('TechTest', '12345678', 5000, 200, 4800, '2017-09-12', 'Tuesday, 12 September 2017, 10:26:02.607 PM'),
('Japan', 'Nissan', 12900, 800, 12100, '2017-09-12', 'Tuesday, 12 September 2017, 10:27:29.480 PM'),
('TechGuy', '31407936', 12000, 1100, 10900, '2017-09-12', 'Tuesday, 12 September 2017, 10:34:26.244 PM'),
('Japan', 'Nissan', 12900, 900, 12000, '2017-09-12', 'Tuesday, 12 September 2017, 10:46:30.643 PM'),
('Nelson', '30848957', 10000, 1000, 9000, '2017-09-17', 'Sunday, 17 September 2017, 05:39:41.177 PM'),
('TechTest', '12345678', 5000, 3200, 1800, '2017-09-18', 'Monday, 18 September 2017, 12:59:21.119 AM'),
('Nelson', '30848957', 10000, 5000, 9000, '2017-09-19', 'Tuesday, 19 September 2017, 07:09:47.637 PM'),
('Nelson luo', '30848957', 12000, 2000, 10000, '2017-09-19', 'Tuesday, 19 September 2017, 07:09:47.637 PM'),
('Nelson luo', '30848957', 12000, 2000, 10000, '2017-09-19', 'Tuesday, 19 September 2017, 07:09:47.637 PM'),
('TechTest', '12345678', 5000, 4000, 1000, '2017-09-19', 'Tuesday, 19 September 2017, 07:09:47.637 PM'),
('Nelson luo', '30848957', 12000, 2100, 9900, '2017-09-19', 'Tuesday, 19 September 2017, 07:09:47.637 PM'),
('Nelson luo', '30848957', 12000, 0, 9900, '2017-09-19', 'Tuesday, 19 September 2017, 07:20:22.831 PM'),
('Japan', 'Nissan', 12900, 0, 12000, '2017-09-19', 'Tuesday, 19 September 2017, 07:21:23.590 PM'),
('Nelson luo', '30848957', 12000, 100, 9800, '2017-09-19', 'Tuesday, 19 September 2017, 07:23:14.361 PM'),
('Nelson luo', '30848957', 12000, 102, 9800, '2017-09-19', 'Tuesday, 19 September 2017, 07:23:14.361 PM'),
('Nelson luo', '30848957', 12000, 102, 9800, '2017-09-19', 'Tuesday, 19 September 2017, 07:23:14.361 PM');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `Mname` varchar(100) NOT NULL,
  `Mserial` varchar(200) NOT NULL,
  `Mquantity` double NOT NULL,
  `Mcost` double NOT NULL,
  `Mtotalcost` double NOT NULL,
  `Medate` date NOT NULL,
  `Msection` varchar(50) NOT NULL,
  `Mprescription` varchar(20) NOT NULL,
  `Mdistributer` varchar(50) NOT NULL,
  `Mcategory` varchar(50) NOT NULL,
  `Mreport` text NOT NULL,
  `LastEdited` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`Mname`, `Mserial`, `Mquantity`, `Mcost`, `Mtotalcost`, `Medate`, `Msection`, `Mprescription`, `Mdistributer`, `Mcategory`, `Mreport`, `LastEdited`) VALUES
('Bugatti', 'B', 0, 920, 0, '2017-09-29', 'Display', 'Chirono', 'Germany', 'V16', 'Super Germany Racing Car', 'Wednesday, 20 September 2017, 09:14:21.758 PM');

-- --------------------------------------------------------

--
-- Table structure for table `tablecritical`
--

CREATE TABLE `tablecritical` (
  `Mname` varchar(100) NOT NULL,
  `Mserial` varchar(200) NOT NULL,
  `StockIn` double NOT NULL,
  `StockInCost` double NOT NULL,
  `StockOut` double NOT NULL,
  `StockOutCost` double NOT NULL,
  `Profit` double NOT NULL,
  `Loss` double NOT NULL,
  `LastEdited` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tablecritical`
--

INSERT INTO `tablecritical` (`Mname`, `Mserial`, `StockIn`, `StockInCost`, `StockOut`, `StockOutCost`, `Profit`, `Loss`, `LastEdited`) VALUES
('Bugatti', 'B', 53, 48760, 31, 28520, 0, 20240, 'Tuesday, 19 September 2017, 07:17:33.143 PM');

-- --------------------------------------------------------

--
-- Table structure for table `tabledistributers`
--

CREATE TABLE `tabledistributers` (
  `Mserial` varchar(200) NOT NULL,
  `Dname` varchar(50) NOT NULL,
  `Mname` varchar(100) NOT NULL,
  `Mquantity` double NOT NULL,
  `Mtotalcost` double NOT NULL,
  `Payed` double DEFAULT NULL,
  `Balance` double NOT NULL,
  `LastEdited` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabledistributers`
--

INSERT INTO `tabledistributers` (`Mserial`, `Dname`, `Mname`, `Mquantity`, `Mtotalcost`, `Payed`, `Balance`, `LastEdited`) VALUES
('B', 'Germany', 'Bugatti', 53, 48760, NULL, 48760, 'Tuesday, 19 September 2017, 07:15:37.882 PM'),
('GTR', 'Japan', 'Nissan', 43, 12900, 0, 0, 'Tuesday, 19 September 2017, 07:21:23.590 PM');

-- --------------------------------------------------------

--
-- Table structure for table `tablesell`
--

CREATE TABLE `tablesell` (
  `Mname` varchar(100) NOT NULL,
  `Mserial` varchar(200) NOT NULL,
  `Mtotalquantity` double NOT NULL,
  `Bcost` double NOT NULL,
  `Mcost` double NOT NULL,
  `Mtotalcost` double NOT NULL,
  `CashPaid` double NOT NULL,
  `ChangePaid` double NOT NULL,
  `Msolddate` date NOT NULL,
  `LastEdited` varchar(100) NOT NULL,
  `Invoice` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tablesell`
--

INSERT INTO `tablesell` (`Mname`, `Mserial`, `Mtotalquantity`, `Bcost`, `Mcost`, `Mtotalcost`, `CashPaid`, `ChangePaid`, `Msolddate`, `LastEdited`, `Invoice`) VALUES
('Bugatti', 'B', 1, 920, 920, 920, 980, 60, '2017-09-20', 'Wednesday, 20 September 2017, 10:33:10.463 PM', '-1899023172'),
('Bugatti', 'B', 3, 920, 920, 2760, 3000, 240, '2017-09-20', 'Wednesday, 20 September 2017, 10:38:57.452 PM', '-129569715'),
('Bugatti', 'B', 3, 920, 920, 2760, 10000, 7240, '2017-09-20', 'Wednesday, 20 September 2017, 10:40:04.505 PM', '-914980898'),
('Bugatti', 'B', 3, 920, 920, 2760, 3000, 240, '2017-09-20', 'Wednesday, 20 September 2017, 10:41:38.938 PM', '-388410533'),
('Bugatti', 'B', 1, 920, 920, 920, 960, 40, '2017-09-20', 'Wednesday, 20 September 2017, 10:44:15.425 PM', '-292919003'),
('Bugatti', 'B', 5, 920, 920, 4600, 20000, 15400, '2017-09-20', 'Wednesday, 20 September 2017, 10:45:55.645 PM', '1805081666'),
('Bugatti', 'B', 4, 920, 920, 3680, 4000, 320, '2017-09-20', 'Wednesday, 20 September 2017, 10:46:49.164 PM', '-1778260557'),
('Bugatti', 'B', 4, 920, 920, 3680, 4000, 320, '2017-09-20', 'Wednesday, 20 September 2017, 10:48:39.938 PM', '-164819114'),
('Bugatti', 'B', 2, 920, 920, 1840, 1900, 60, '2017-09-20', 'Wednesday, 20 September 2017, 10:50:35.630 PM', '1591921275'),
('Bugatti', 'B', 4, 920, 920, 3680, 4000, 320, '2017-09-20', 'Wednesday, 20 September 2017, 10:52:12.268 PM', '-699203263'),
('Bugatti', 'B', 1, 920, 920, 920, 1000, 80, '2017-09-20', 'Wednesday, 20 September 2017, 10:55:23.052 PM', '1445945333'),
('Bugatti', 'B', 2, 920, 920, 1840, 23232, 21392, '2017-09-20', 'Wednesday, 20 September 2017, 11:25:28.032 PM', '1851140787'),
('Bugatti', 'B', 1, 920, 920, 920, 950, 30, '2017-09-20', 'Wednesday, 20 September 2017, 11:29:42.499 PM', '768258366');

-- --------------------------------------------------------

--
-- Table structure for table `tablestockin`
--

CREATE TABLE `tablestockin` (
  `Mname` varchar(100) NOT NULL,
  `Mserial` varchar(200) NOT NULL,
  `Mtotalquantity` double NOT NULL,
  `Mtotalcost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tablestockin`
--

INSERT INTO `tablestockin` (`Mname`, `Mserial`, `Mtotalquantity`, `Mtotalcost`) VALUES
('Bugatti', 'B', 53, 48760);

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `NationalID` int(8) NOT NULL,
  `username` varchar(50) NOT NULL,
  `personalnumber` varchar(100) NOT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `Salary` double DEFAULT NULL,
  `Payed` double DEFAULT NULL,
  `Balance` double DEFAULT NULL,
  `LastEdited` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`NationalID`, `username`, `personalnumber`, `password`, `Salary`, `Payed`, `Balance`, `LastEdited`) VALUES
(12345678, 'TechTest', '3545', NULL, 5000, 4000, 1000, 'Tuesday, 19 September 2017, 07:09:47.637 PM'),
(30848957, 'Nelson luo', '7777', NULL, 12000, 102, 9800, 'Tuesday, 19 September 2017, 07:23:14.361 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`NationalID`),
  ADD UNIQUE KEY `personalnumber` (`personalnumber`);

--
-- Indexes for table `pastrecords`
--
ALTER TABLE `pastrecords`
  ADD PRIMARY KEY (`Mserial`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`Mserial`);

--
-- Indexes for table `tablecritical`
--
ALTER TABLE `tablecritical`
  ADD PRIMARY KEY (`Mserial`);

--
-- Indexes for table `tabledistributers`
--
ALTER TABLE `tabledistributers`
  ADD PRIMARY KEY (`Mserial`);

--
-- Indexes for table `tablestockin`
--
ALTER TABLE `tablestockin`
  ADD PRIMARY KEY (`Mserial`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`NationalID`),
  ADD UNIQUE KEY `personalnumber` (`personalnumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
