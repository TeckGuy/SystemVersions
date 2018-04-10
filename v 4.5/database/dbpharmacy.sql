-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2018 at 09:07 AM
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
(31407936, 'TechGuy', '6668', '411c421547c72abf0fd9cb8d0d0f960b19ac74d1f2728ba9e8ab7d156b8dc6ca287a358a0a9e21c5598ea2ead7736a51', 10000, 2222, 7778, 'Monday, 15 January 2018, 10:14:46.626 PM');

-- --------------------------------------------------------

--
-- Table structure for table `pastrecords`
--

CREATE TABLE `pastrecords` (
  `ID` int(11) NOT NULL,
  `Mname` varchar(100) NOT NULL,
  `Mserial` varchar(255) NOT NULL,
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

INSERT INTO `pastrecords` (`ID`, `Mname`, `Mserial`, `StockIn`, `TaxIn`, `StockInCost`, `StockOut`, `TaxOut`, `StockOutCost`, `Profit`, `Loss`, `LastEdited`) VALUES
(1, 'Test123', 'Test123', 200, 1600, 11600, 0, 0, 0, 0, 11600, 'Saturday, 07 April 2018, 08:49:07.221 AM');

-- --------------------------------------------------------

--
-- Table structure for table `paymentrecords`
--

CREATE TABLE `paymentrecords` (
  `ID` int(11) NOT NULL,
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

INSERT INTO `paymentrecords` (`ID`, `Cname`, `CIdentity`, `Tcost`, `Payed`, `Balance`, `Dpayed`, `LastEdited`) VALUES
(1, 'Test123', 'Test123', 11600, 100, 11500, '2018-04-07', 'Saturday, 07 April 2018, 08:49:29.262 AM'),
(2, 'Test123', '12345678', 3000, 100, 2900, '2018-04-10', 'Tuesday, 10 April 2018, 09:38:08.425 AM');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `ID` int(11) NOT NULL,
  `Mname` varchar(100) NOT NULL,
  `Mserial` varchar(255) NOT NULL,
  `Mquantity` double NOT NULL,
  `BuyingPrice` double NOT NULL,
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

INSERT INTO `store` (`ID`, `Mname`, `Mserial`, `Mquantity`, `BuyingPrice`, `Mcost`, `TotalTax`, `Mtotalcost`, `Medate`, `Msection`, `Mprescription`, `Mdistributer`, `Mcategory`, `Mreport`, `TaxType`, `UpdatedOn`, `LastEdited`) VALUES
(1, 'GTR', 'GTR', 232, 20, 20, 742.4, 5382.4, '2018-04-30', 'Display', '1x1', 'japan', 'racing car', 'Cool staff', 'Taxable', 'Saturday, 07 April 2018, 08:46:26.613 AM', 'Saturday, 07 April 2018, 08:46:26.613 AM'),
(2, 'Lamborghini', 'veneno', 470, 20, 20, 0, 9400, '2018-04-30', 'Control Drugs', '1x3', 'Italy', 'generic', 'Italian car', 'Non-taxable', 'Saturday, 07 April 2018, 08:46:26.613 AM', 'Saturday, 07 April 2018, 08:46:26.613 AM'),
(3, 'Test123', 'rev', 13, 10, 10, 20.8, 142.8, '2018-04-30', 'Display', '1x3', 'boom', 'java', 'java', 'Taxable', 'Sunday, 08 April 2018, 05:13:03.187 PM', 'Sunday, 08 April 2018, 05:13:03.187 PM'),
(4, 'tets', 'fdf', 20, 10, 10, 31.999999999999996, 232, '2018-04-04', 'Dispensary', 'dffd', 'dfd', 'dfd', 'rerer', 'Taxable', 'Sunday, 08 April 2018, 05:31:32.470 PM', 'Sunday, 08 April 2018, 05:31:32.470 PM'),
(5, 'rrrrrrr', 'rrrrrrr', 30, 10, 10, 48, 348, '2018-04-10', 'Dispensary', 'rrrrrrr', 'rrrrrrr', 'rrrrrrr', 'rrrrrrr', 'Taxable', 'Tuesday, 10 April 2018, 09:59:25.075 AM', 'Tuesday, 10 April 2018, 09:59:25.075 AM');

-- --------------------------------------------------------

--
-- Table structure for table `systemtimer`
--

CREATE TABLE `systemtimer` (
  `ID` int(11) NOT NULL,
  `Timer` date NOT NULL,
  `SystemLimit` varchar(255) NOT NULL,
  `SecretCode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `systemtimer`
--

INSERT INTO `systemtimer` (`ID`, `Timer`, `SystemLimit`, `SecretCode`) VALUES
(1, '2018-04-11', 'Tuesday, 10 April 2018', 'd9adf9b1e13d06c26d749b3f8b641718fa97da6e534974caea77af5d85382417ab3453694819e9aed297e26eaf0710686952fc7204dc4cb24236d99a4d7acda2');

-- --------------------------------------------------------

--
-- Table structure for table `tablecritical`
--

CREATE TABLE `tablecritical` (
  `ID` int(11) NOT NULL,
  `Mname` varchar(100) NOT NULL,
  `Mserial` varchar(255) NOT NULL,
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

INSERT INTO `tablecritical` (`ID`, `Mname`, `Mserial`, `StockIn`, `TaxIn`, `StockInCost`, `StockOut`, `TaxOut`, `StockOutCost`, `Profit`, `Loss`, `UpdatedOn`, `LastEdited`) VALUES
(1, 'GTR', 'GTR', 300, 960, 6960, 68, 217.6, 1577.6, 0, 5382.4, 'Tuesday, 10 April 2018, 09:56:44.384 AM', 'Saturday, 07 April 2018, 08:49:07.221 AM'),
(2, 'Lamborghini', 'veneno', 500, 0, 10000, 0, 0, 0, 0, 10000, 'Tuesday, 10 April 2018, 09:56:44.384 AM', 'Saturday, 07 April 2018, 08:49:07.221 AM'),
(3, 'Test123', 'rev', 20, 32, 232, 7, 11.2, 81.2, 0, 150.8, 'Tuesday, 10 April 2018, 09:56:44.384 AM', 'Sunday, 08 April 2018, 05:14:06.642 PM'),
(4, 'tets', 'fdf', 20, 32, 232, 0, 0, 0, 0, 232, 'Tuesday, 10 April 2018, 09:56:44.384 AM', 'Sunday, 08 April 2018, 05:39:15.690 PM');

-- --------------------------------------------------------

--
-- Table structure for table `tabledistributers`
--

CREATE TABLE `tabledistributers` (
  `ID` int(11) NOT NULL,
  `Mserial` varchar(255) NOT NULL,
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

INSERT INTO `tabledistributers` (`ID`, `Mserial`, `Dname`, `Mname`, `Mquantity`, `Mtotalcost`, `Payed`, `Balance`, `LastEdited`) VALUES
(1, 'GTR', 'japan', 'GTR', 300, 6960, NULL, 6960, 'Saturday, 07 April 2018, 08:46:26.613 AM'),
(2, 'veneno', 'Italy', 'Lamborghini', 500, 10000, NULL, 10000, 'Saturday, 07 April 2018, 08:46:26.613 AM'),
(3, 'Test123', 'Test123', 'Test123', 200, 11600, 100, 11500, 'Saturday, 07 April 2018, 08:49:29.262 AM'),
(4, 'rev', 'boom', 'Test123', 20, 232, NULL, 232, 'Sunday, 08 April 2018, 05:13:03.187 PM'),
(5, 'fdf', 'dfd', 'tets', 20, 232, NULL, 232, 'Sunday, 08 April 2018, 05:31:32.470 PM'),
(6, 'rrrrrrr', 'rrrrrrr', 'rrrrrrr', 30, 348, NULL, 348, 'Tuesday, 10 April 2018, 09:59:25.075 AM');

-- --------------------------------------------------------

--
-- Table structure for table `tablesell`
--

CREATE TABLE `tablesell` (
  `ID` int(11) NOT NULL,
  `Mname` varchar(100) NOT NULL,
  `Mserial` varchar(255) NOT NULL,
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

INSERT INTO `tablesell` (`ID`, `Mname`, `Mserial`, `Mtotalquantity`, `Bcost`, `Mcost`, `TotalTax`, `Tamount`, `Mtotalcost`, `CashPaid`, `ChangePaid`, `Msolddate`, `LastEdited`, `Invoice`) VALUES
(8, 'GTR', 'GTR', 3, 20, 20, 9.600000000000001, 60, 69.6, 60, 0, '2018-04-08', 'Sunday, 08 April 2018, 06:04:38.522 PM', '27727515522'),
(10, 'GTR', 'GTR', 55, 20, 20, 176, 1100, 1276, 1100, 0, '2018-04-09', 'Sunday, 09 April 2018, 06:10:20.379 PM', '-1188941395379'),
(11, 'GTR', 'GTR', 10, 20, 20, 32, 200, 232, 200, 0, '2018-04-08', 'Sunday, 08 April 2018, 06:35:00.779 PM', '884418576779'),
(12, 'Test123', 'rev', 2, 10, 10, 3.2, 20, 23.2, 20, 0, '2018-04-08', 'Sunday, 08 April 2018, 06:37:12.659 PM', '-2138234097659'),
(13, 'Test123', 'rev', 5, 10, 10, 8, 50, 58, 50, 0, '2018-04-10', 'Tuesday, 10 April 2018, 09:48:03.922 AM', '1563909182922'),
(14, 'Lamborghini', 'veneno', 30, 20, 20, 0, 600, 600, 700, 100, '2018-04-10', 'Tuesday, 10 April 2018, 10:01:21.993 AM', '1215197894993');

-- --------------------------------------------------------

--
-- Table structure for table `tablestockin`
--

CREATE TABLE `tablestockin` (
  `ID` int(11) NOT NULL,
  `Mname` varchar(100) NOT NULL,
  `Mserial` varchar(255) NOT NULL,
  `Mtotalquantity` double NOT NULL,
  `TotalTax` double NOT NULL,
  `Mtotalcost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tablestockin`
--

INSERT INTO `tablestockin` (`ID`, `Mname`, `Mserial`, `Mtotalquantity`, `TotalTax`, `Mtotalcost`) VALUES
(1, 'GTR', 'GTR', 300, 960, 6960),
(2, 'Lamborghini', 'veneno', 500, 0, 10000),
(3, 'Test123', 'rev', 20, 32, 232),
(4, 'tets', 'fdf', 20, 32, 232),
(5, 'rrrrrrr', 'rrrrrrr', 30, 48, 348);

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
(12345678, 'Test123', '123', '8cafed2235386cc5855e75f0d34f103ccc183912e5f02446b77c66539f776e4bf2bf87339b4518a7cb1c2441c568b0f8', 3000, 100, 2900, 'Tuesday, 10 April 2018, 09:38:08.425 AM');

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
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Mserial` (`Mserial`);

--
-- Indexes for table `paymentrecords`
--
ALTER TABLE `paymentrecords`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Mserial` (`Mserial`);

--
-- Indexes for table `systemtimer`
--
ALTER TABLE `systemtimer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tablecritical`
--
ALTER TABLE `tablecritical`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tabledistributers`
--
ALTER TABLE `tabledistributers`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Mserial` (`Mserial`);

--
-- Indexes for table `tablesell`
--
ALTER TABLE `tablesell`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tablestockin`
--
ALTER TABLE `tablestockin`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Mserial` (`Mserial`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`NationalID`),
  ADD UNIQUE KEY `personalnumber` (`personalnumber`),
  ADD UNIQUE KEY `NationalID` (`NationalID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pastrecords`
--
ALTER TABLE `pastrecords`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paymentrecords`
--
ALTER TABLE `paymentrecords`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `systemtimer`
--
ALTER TABLE `systemtimer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tablecritical`
--
ALTER TABLE `tablecritical`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tabledistributers`
--
ALTER TABLE `tabledistributers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tablesell`
--
ALTER TABLE `tablesell`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tablestockin`
--
ALTER TABLE `tablestockin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
