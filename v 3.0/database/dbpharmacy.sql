-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2018 at 08:04 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

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
(31407936, 'TechGuy', '6668', '93f725a07423fe1c889f448b33d21f46', 10000, 1000, 9000, 'Monday, 01 January 2018, 05:07:09.141 PM'),
(87654321, 'mercy', '777', NULL, 7000, NULL, 7000, 'Friday, 05 January 2018, 09:45:53.525 AM');

-- --------------------------------------------------------

--
-- Table structure for table `pastrecords`
--

CREATE TABLE `pastrecords` (
  `Mname` varchar(100) NOT NULL,
  `Mserial` varchar(100) NOT NULL,
  `StockIn` double NOT NULL,
  `TaxIn` double NOT NULL,
  `StockInCost` double NOT NULL,
  `StockOut` double NOT NULL,
  `TaxOut` double NOT NULL,
  `StockOutCost` double NOT NULL,
  `Profit` double NOT NULL,
  `Loss` double NOT NULL,
  `LastEdited` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pastrecords`
--

INSERT INTO `pastrecords` (`Mname`, `Mserial`, `StockIn`, `TaxIn`, `StockInCost`, `StockOut`, `TaxOut`, `StockOutCost`, `Profit`, `Loss`, `LastEdited`) VALUES
('Lamboghini', 'Bull', 10, 32, 232, 10, 40, 290, 58, 0, 'Wednesday, 03 January 2018, 10:03:58.594 PM'),
('vv', 'fff', 5, 0, 20, 0, 0, 0, 0, 20, 'Thursday, 04 January 2018, 09:30:18.665 PM');

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
('TechUser', '12345678', 5000, 1000, 4000, '2018-01-01', 'Monday, 01 January 2018, 05:07:09.141 PM'),
('TechGuy', '31407936', 10000, 1000, 9000, '2018-01-01', 'Monday, 01 January 2018, 05:07:09.141 PM'),
('TechUser', '12345678', 5000, 1090, 3910, '2018-01-03', 'Wednesday, 03 January 2018, 09:58:19.925 PM'),
('Italy', 'Lamboghini', 232, 12, 220, '2018-01-03', 'Wednesday, 03 January 2018, 10:07:34.395 PM');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `Mname` varchar(100) NOT NULL,
  `Mserial` varchar(200) NOT NULL,
  `Mquantity` double NOT NULL,
  `Mcost` double NOT NULL,
  `TotalTax` double NOT NULL,
  `Mtotalcost` double NOT NULL,
  `Medate` date NOT NULL,
  `Msection` varchar(50) NOT NULL,
  `Mprescription` varchar(20) NOT NULL,
  `Mdistributer` varchar(50) NOT NULL,
  `Mcategory` varchar(50) NOT NULL,
  `Mreport` text NOT NULL,
  `TaxType` varchar(50) NOT NULL,
  `UpdatedOn` varchar(100) NOT NULL,
  `LastEdited` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`Mname`, `Mserial`, `Mquantity`, `Mcost`, `TotalTax`, `Mtotalcost`, `Medate`, `Msection`, `Mprescription`, `Mdistributer`, `Mcategory`, `Mreport`, `TaxType`, `UpdatedOn`, `LastEdited`) VALUES
('Nissan', 'GTR', 0, 100, -1328, -9628, '2018-01-31', 'Dispensary', '1X4', 'Japan', 'nismo', 'Racing Car', 'Taxable', 'Monday, 01 January 2018, 05:07:36.546 PM', 'Monday, 01 January 2018, 05:07:36.546 PM'),
('hh', 'hh', 7, 6, 6.72, 48.72, '2018-01-05', 'Dispensary', '787', 'nn', 'nn', 'nnn', 'Taxable', 'Friday, 05 January 2018, 09:44:08.588 AM', 'Friday, 05 January 2018, 09:44:08.588 AM'),
('Ferrari', 'LaFerrari', 65, 200, 704, 5104, '2018-01-31', 'Display', '1x3', 'U.S.A', 'Red One', 'Racing Super Car', 'Taxable', 'Monday, 01 January 2018, 05:16:00.498 PM', 'Monday, 01 January 2018, 05:16:00.498 PM'),
('66', 'uiu', 94, 4, 0, 376, '2018-01-11', 'Display', 'uiyt', 'hh', 'yy', 'nn', 'Non-taxable', 'Friday, 05 January 2018, 09:44:08.588 AM', 'Friday, 05 January 2018, 09:44:08.588 AM');

-- --------------------------------------------------------

--
-- Table structure for table `tablecritical`
--

CREATE TABLE `tablecritical` (
  `Mname` varchar(100) NOT NULL,
  `Mserial` varchar(200) NOT NULL,
  `StockIn` double NOT NULL,
  `TaxIn` double NOT NULL,
  `StockInCost` double NOT NULL,
  `StockOut` double NOT NULL,
  `TaxOut` double NOT NULL,
  `StockOutCost` double NOT NULL,
  `Profit` double NOT NULL,
  `Loss` double NOT NULL,
  `UpdatedOn` varchar(100) NOT NULL,
  `LastEdited` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tablecritical`
--

INSERT INTO `tablecritical` (`Mname`, `Mserial`, `StockIn`, `TaxIn`, `StockInCost`, `StockOut`, `TaxOut`, `StockOutCost`, `Profit`, `Loss`, `UpdatedOn`, `LastEdited`) VALUES
('Nissan', 'GTR', 100, 1600, 11600, 100, 2928, 21228, 9628, 0, 'Friday, 05 January 2018, 09:47:24.667 AM', 'Monday, 01 January 2018, 05:17:27.060 PM'),
('hh', 'hh', 7, 6.72, 48.72, 0, 0, 0, 0, 48.72, 'Friday, 05 January 2018, 09:47:24.667 AM', 'Friday, 05 January 2018, 09:47:24.667 AM'),
('Ferrari', 'LaFerrari', 100, 3200, 23200, 27, 864, 6264, 0, 16936, 'Friday, 05 January 2018, 09:47:24.667 AM', 'Monday, 01 January 2018, 05:17:27.060 PM'),
('66', 'uiu', 99, 0, 396, 5, 0, 20, 0, 376, 'Friday, 05 January 2018, 09:47:24.667 AM', 'Friday, 05 January 2018, 09:47:24.667 AM');

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
('Bull', 'Italy', 'Lamboghini', 10, 232, 12, 220, 'Wednesday, 03 January 2018, 10:07:34.395 PM'),
('fff', 'dd', 'vv', 5, 20, NULL, 20, 'Thursday, 04 January 2018, 09:28:32.723 PM'),
('GTR', 'Japan', 'Nissan', 100, 11600, NULL, 11600, 'Monday, 01 January 2018, 05:07:36.546 PM'),
('hh', 'nn', 'hh', 7, 48.72, NULL, 48.72, 'Friday, 05 January 2018, 09:44:08.588 AM'),
('LaFerrari', 'U.S.A', 'Ferrari', 100, 23200, NULL, 23200, 'Monday, 01 January 2018, 05:16:00.498 PM'),
('uiu', 'hh', '66', 99, 396, NULL, 396, 'Friday, 05 January 2018, 09:44:08.588 AM');

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
  `TotalTax` double NOT NULL,
  `Tamount` double NOT NULL,
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

INSERT INTO `tablesell` (`Mname`, `Mserial`, `Mtotalquantity`, `Bcost`, `Mcost`, `TotalTax`, `Tamount`, `Mtotalcost`, `CashPaid`, `ChangePaid`, `Msolddate`, `LastEdited`, `Invoice`) VALUES
('Nissan', 'GTR', 4, 100, 100, 64, 400, 464, 400, 0, '2018-01-01', 'Monday, 01 January 2018, 06:46:41.619 PM', '-1498992335'),
('Ferrari', 'LaFerrari', 5, 200, 200, 160, 1000, 1160, 1000, 0, '2018-01-01', 'Monday, 01 January 2018, 07:00:18.692 PM', '-694111214'),
('Nissan', 'GTR', 3, 100, 100, 48, 300, 348, 500, 200, '2018-01-03', 'Wednesday, 03 January 2018, 09:15:24.782 AM', '-735233232'),
('Nissan', 'GTR', 5, 100, 100, 80, 500, 580, 700, 200, '2018-01-04', 'Thursday, 04 January 2018, 08:44:10.808 AM', '2088150140'),
('Ferrari', 'LaFerrari', 5, 200, 200, 160, 1000, 1160, 1000, 0, '2018-01-04', 'Thursday, 04 January 2018, 08:49:29.807 AM', '761457484'),
('Nissan', 'GTR', 2, 100, 100, 32, 200, 232, 200, 0, '2018-01-04', 'Thursday, 04 January 2018, 09:52:50.560 AM', '-771878605'),
('Ferrari', 'GTR', 4, 200, 200, 128, 800, 928, 1000, 200, '2018-01-04', 'Thursday, 04 January 2018, 09:54:38.157 AM', '-1197019868'),
('Nissan', 'GTR', 2, 100, 100, 32, 200, 232, 400, 200, '2018-01-04', 'Thursday, 04 January 2018, 10:08:26.585 AM', '-1317631827'),
('Ferrari', 'LaFerrari', 4, 200, 200, 128, 800, 928, 1000, 200, '2018-01-04', 'Thursday, 04 January 2018, 10:20:24.343 AM', '2001861050'),
('Nissan', 'GTR', 1, 100, 100, 16, 100, 116, 100, 0, '2018-01-04', 'Thursday, 04 January 2018, 10:22:44.213 AM', '-1802376842'),
('Nissan', 'GTR', 79, 100, 200, 2528, 15800, 18328, 16000, 200, '2018-01-04', 'Thursday, 04 January 2018, 03:20:37.183 PM', '220920935'),
('Ferrari', 'LaFerrari', 8, 200, 200, 256, 1600, 1856, 2000, 400, '2018-01-05', 'Friday, 05 January 2018, 08:28:20.739 AM', '-1548844140'),
('Ferrari', 'LaFerrari', 5, 200, 200, 160, 1000, 1160, 1000, 0, '2018-01-05', 'Friday, 05 January 2018, 09:41:13.357 AM', '-287982819'),
('66', 'uiu', 5, 4, 4, 0, 20, 20, 50, 30, '2018-01-05', 'Friday, 05 January 2018, 09:46:43.066 AM', '1894247581');

-- --------------------------------------------------------

--
-- Table structure for table `tablestockin`
--

CREATE TABLE `tablestockin` (
  `Mname` varchar(100) NOT NULL,
  `Mserial` varchar(200) NOT NULL,
  `Mtotalquantity` double NOT NULL,
  `TotalTax` double NOT NULL,
  `Mtotalcost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tablestockin`
--

INSERT INTO `tablestockin` (`Mname`, `Mserial`, `Mtotalquantity`, `TotalTax`, `Mtotalcost`) VALUES
('Nissan', 'GTR', 100, 1600, 11600),
('hh', 'hh', 7, 6.72, 48.72),
('Ferrari', 'LaFerrari', 100, 3200, 23200),
('66', 'uiu', 99, 0, 396);

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
(12345678, 'TechUser', '6668', '93f725a07423fe1c889f448b33d21f46', 5000, 1090, 3910, 'Wednesday, 03 January 2018, 09:58:19.925 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`NationalID`),
  ADD UNIQUE KEY `personalnumber` (`personalnumber`),
  ADD UNIQUE KEY `NationalID` (`NationalID`);

--
-- Indexes for table `pastrecords`
--
ALTER TABLE `pastrecords`
  ADD PRIMARY KEY (`Mserial`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`Mserial`),
  ADD UNIQUE KEY `Mserial` (`Mserial`);

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
  ADD UNIQUE KEY `personalnumber` (`personalnumber`),
  ADD UNIQUE KEY `NationalID` (`NationalID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
