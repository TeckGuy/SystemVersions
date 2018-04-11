-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2018 at 10:28 AM
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
(1, 'Test123', 'Test123', 200, 1600, 11600, 0, 0, 0, 0, 11600, 'Saturday, 07 April 2018, 08:49:07.221 AM'),
(2, 'Test123', 'rev', 20, 32, 232, 20, 32, 232, 0, 0, 'Tuesday, 10 April 2018, 06:55:36.848 PM'),
(3, 'rrrrrrr', 'rrrrrrr', 30, 48, 348, 0, 0, 0, 0, 348, 'Tuesday, 10 April 2018, 08:04:32.756 PM'),
(4, 'GTR', 'GTR', 300, 960, 6960, 68, 217.6, 1577.6, 0, 5382.4, 'Wednesday, 11 April 2018, 09:30:47.160 AM'),
(5, 'Lamborghini', 'veneno', 500, 0, 10000, 30, 0, 600, 0, 9400, 'Wednesday, 11 April 2018, 09:32:33.151 AM'),
(6, '100877', '100877', 33, 0, 3080, 10, 21.12, 153.12, 0, 2926.88, 'Wednesday, 11 April 2018, 09:37:00.841 AM'),
(7, '100875', '100875', 33, 0, 3080, 20, 42.24, 306.24, 0, 2773.76, 'Wednesday, 11 April 2018, 09:43:07.296 AM'),
(8, '1111', '11111', 111, 1971.36, 14292.36, 20, 355.2, 2575.2, 0, 11717.16, 'Wednesday, 11 April 2018, 10:06:47.605 AM');

-- --------------------------------------------------------

--
-- Table structure for table `pastsoldrecords`
--

CREATE TABLE `pastsoldrecords` (
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
-- Dumping data for table `pastsoldrecords`
--

INSERT INTO `pastsoldrecords` (`ID`, `Mname`, `Mserial`, `Mtotalquantity`, `Bcost`, `Mcost`, `TotalTax`, `Tamount`, `Mtotalcost`, `CashPaid`, `ChangePaid`, `Msolddate`, `LastEdited`, `Invoice`) VALUES
(1, '1111', '11111', 1, 111, 111, 17.76, 111, 128.76, 111, 0, '2018-04-11', 'Wednesday, 11 April 2018, 10:03:15.437 AM', '1740880893437'),
(2, '1111', '11111', 1, 111, 111, 17.76, 111, 128.76, 111, 0, '2018-04-11', 'Wednesday, 11 April 2018, 10:04:45.253 AM', '-720528185253'),
(3, '1111', '11111', 1, 111, 111, 17.76, 111, 128.76, 111, 0, '2018-04-11', 'Wednesday, 11 April 2018, 10:04:55.726 AM', '1204189708726'),
(4, '1111', '11111', 1, 111, 111, 17.76, 111, 128.76, 1111, 1000, '2018-04-11', 'Wednesday, 11 April 2018, 10:05:05.992 AM', '677660523992'),
(6, '1111', '11111', 1, 111, 111, 17.76, 111, 128.76, 111, 0, '2018-04-11', 'Wednesday, 11 April 2018, 10:05:35.426 AM', '1963116115426'),
(7, '1111', '11111', 1, 111, 111, 17.76, 111, 128.76, 111, 0, '2018-04-11', 'Wednesday, 11 April 2018, 10:05:44.543 AM', '2112213901543'),
(8, '1111', '11111', 1, 111, 111, 17.76, 111, 128.76, 111, 0, '2018-04-11', 'Wednesday, 11 April 2018, 10:05:53.956 AM', '-2133383690956'),
(9, '1111', '11111', 12, 111, 111, 213.12, 1332, 1545.12, 2111, 779, '2018-04-11', 'Wednesday, 11 April 2018, 10:06:04.346 AM', '311576619346');

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
(2, 'Test123', '12345678', 3000, 100, 2900, '2018-04-10', 'Tuesday, 10 April 2018, 09:38:08.425 AM'),
(3, 'Test123', '12345678', 3000, 600, 2400, '2018-04-10', 'Tuesday, 10 April 2018, 08:12:51.407 PM'),
(4, 'Test123', '12345678', 3000, 2600, 400, '2018-04-10', 'Tuesday, 10 April 2018, 08:12:51.407 PM'),
(5, 'boom', 'Test123', 232, 200, 32, '2018-04-10', 'Tuesday, 10 April 2018, 08:15:39.980 PM'),
(6, 'rrrrrrr', 'rrrrrrr', 348, 300, 48, '2018-04-10', 'Tuesday, 10 April 2018, 08:15:39.980 PM'),
(7, 'japan', 'GTR', 6960, 6000, 960, '2018-04-10', 'Tuesday, 10 April 2018, 08:15:39.980 PM');

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
(1, '111', '1111', 1103, 11, 11, 1941.28, 14074.28, '2018-04-30', 'Dispensary', '1111', '111', '111', '1111', 'Taxable', 'Wednesday, 11 April 2018, 09:55:12.507 AM', 'Wednesday, 11 April 2018, 09:55:12.507 AM');

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
(1, '2018-04-12', 'Wednesday, 11 April 2018', '9764b3e480d579097d8d2a2d7ab01ffbba3188c01e42f8462c7365ff2fa2ed9a27c2bee90af253aeb967b5fc793b40c06bb1539be061ff50a2e57966ab4b5466');

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
(1, '111', '1111', 1111, 1955.36, 14176.36, 8, 14.080000000000002, 102.08, 0, 14074.28, 'Wednesday, 11 April 2018, 11:24:36.206 AM', 'Wednesday, 11 April 2018, 10:04:30.485 AM');

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
(1, 'GTR', 'japan', 'GTR', 300, 6960, 6000, 960, 'Tuesday, 10 April 2018, 08:15:39.980 PM'),
(2, 'veneno', 'Italy', 'Lamborghini', 500, 10000, NULL, 10000, 'Saturday, 07 April 2018, 08:46:26.613 AM'),
(4, 'rev', 'boom', 'Test123', 20, 232, 200, 32, 'Tuesday, 10 April 2018, 08:15:39.980 PM'),
(5, 'fdf', 'dfd', 'tets', 20, 232, NULL, 232, 'Sunday, 08 April 2018, 05:31:32.470 PM'),
(6, 'rrrrrrr', 'rrrrrrr', 'rrrrrrr', 30, 348, 300, 48, 'Tuesday, 10 April 2018, 08:15:39.980 PM'),
(7, '1111', '111', '111', 1111, 14176.36, NULL, 14176.36, 'Wednesday, 11 April 2018, 09:55:12.507 AM'),
(8, '11111', '1111', '1111', 111, 14292.36, NULL, 14292.36, 'Wednesday, 11 April 2018, 10:02:16.752 AM');

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
(10, '111', '1111', 5, 11, 11, 8.8, 55, 63.8, 55, 0, '2018-04-11', 'Wednesday, 11 April 2018, 11:17:25.269 AM', '-1634989860269'),
(11, '111', '1111', 3, 11, 11, 5.28, 33, 38.28, 33, 0, '2018-04-11', 'Wednesday, 11 April 2018, 11:18:05.737 AM', '-701288619737');

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
(1, '111', '1111', 1111, 1955.36, 14176.36);

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
(12345678, 'Test123', '123', '8cafed2235386cc5855e75f0d34f103ccc183912e5f02446b77c66539f776e4bf2bf87339b4518a7cb1c2441c568b0f8', 3000, 2600, 400, 'Tuesday, 10 April 2018, 08:12:51.407 PM');

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
-- Indexes for table `pastsoldrecords`
--
ALTER TABLE `pastsoldrecords`
  ADD PRIMARY KEY (`ID`);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pastsoldrecords`
--
ALTER TABLE `pastsoldrecords`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `paymentrecords`
--
ALTER TABLE `paymentrecords`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `systemtimer`
--
ALTER TABLE `systemtimer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tablecritical`
--
ALTER TABLE `tablecritical`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tabledistributers`
--
ALTER TABLE `tabledistributers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tablesell`
--
ALTER TABLE `tablesell`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tablestockin`
--
ALTER TABLE `tablestockin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
