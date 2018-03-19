-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2018 at 08:29 PM
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
(31407936, 'TechGuy', '6668', '9066704f28272d74038923fa685ecf795dc154ea63f761db337552a50fdf61e0327dd7479b95e9592b4e59193c2620f4', 10000, 2222, 7778, 'Monday, 15 January 2018, 10:14:46.626 PM');

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
('fdf', 'dfd', 55, 0, 3025, 0, 0, 0, 0, 3025, 'Monday, 19 March 2018, 10:16:54.299 PM');

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
('dd', 'dd', 1089, 900, 189, '2018-03-19', 'Monday, 19 March 2018, 10:15:00.968 PM');

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
('dd', 'ddd', 21, 33, 0, 693, '2018-03-31', 'Dispensary', 'ddd', 'dd', 'dd', 'ddd', 'Non-taxable', 'Monday, 19 March 2018, 10:19:40.327 PM', 'Monday, 19 March 2018, 10:05:21.313 PM'),
('rr', 'rr', 13, 33, 68.96, 429, '2018-01-30', 'Display', 'rr', 'rr', 'rr', 'dddd', 'Taxable', 'Monday, 19 March 2018, 10:19:40.327 PM', 'Sunday, 21 January 2018, 09:16:32.105 PM');

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
('dd', 'ddd', 33, 0, 1089, 12, 0, 396, 0, 693, 'Monday, 19 March 2018, 10:25:36.796 PM', 'Monday, 19 March 2018, 10:13:25.070 PM'),
('rr', 'rr', 33, 174.24, 1263.24, 20, 105.28, 763.2800000000001, 0, 499.9599999999999, 'Monday, 19 March 2018, 10:25:36.796 PM', 'Sunday, 28 January 2018, 06:02:10.349 PM');

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
('ddd', 'dd', 'dd', 33, 1089, 900, 189, 'Monday, 19 March 2018, 10:15:00.968 PM'),
('dfd', 'fdfd', 'fdf', 55, 3025, NULL, 3025, 'Monday, 19 March 2018, 10:15:35.117 PM'),
('rr', 'rr', 'rr', 33, 1263.24, NULL, 1263.24, 'Sunday, 21 January 2018, 09:16:32.105 PM');

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
('rr', 'rr', 4, 33, 33, 21.12, 132, 153.12, 150, 18, '2018-01-21', 'Sunday, 21 January 2018, 09:16:55.857 PM', '2061721806'),
('rr', 'rr', 6, 33, 33, 31.68, 198, 229.68, 200, 2, '2018-01-21', 'Sunday, 21 January 2018, 09:19:12.015 PM', '-918030527'),
('rr', 'rr', 5, 33, 33, 26.400000000000002, 165, 191.4, 200, 35, '2018-01-21', 'Sunday, 21 January 2018, 09:26:00.047 PM', '164494844'),
('rr', 'rr', 3, 33, 33, 15.84, 99, 114.84, 100, 1, '2018-01-21', 'Sunday, 21 January 2018, 09:56:44.701 PM', '-822946564'),
('', 'rr', 2, 0, 32, 10.24, 64, 74.24, 323232, 323168, '2018-03-19', 'Monday, 19 March 2018, 09:34:44.647 PM', '284222060'),
('dd', 'ddd', 4, 33, 33, 0, 132, 132, 200, 68, '2018-03-19', 'Monday, 19 March 2018, 10:09:56.150 PM', '759125831'),
('dd', 'ddd', 8, 33, 33, 0, 264, 264, 844, 580, '2018-03-19', 'Monday, 19 March 2018, 10:11:39.257 PM', '1993969601');

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
('dd', 'ddd', 33, 0, 1089),
('rr', 'rr', 33, 174.24, 1263.24);

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
(12345678, 'Max', '6668', '8cafed2235386cc5855e75f0d34f103ccc183912e5f02446b77c66539f776e4bf2bf87339b4518a7cb1c2441c568b0f8', 5000, NULL, 5000, 'Tuesday, 06 February 2018, 04:24:42.708 PM');

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
