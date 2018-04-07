-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2018 at 07:56 AM
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
(1, 'Test123', 'Test123', 11600, 100, 11500, '2018-04-07', 'Saturday, 07 April 2018, 08:49:29.262 AM');

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
(1, 'GTR', 'GTR', 300, 20, 20, 960, 6960, '2018-04-30', 'Display', '1x1', 'japan', 'racing car', 'Cool staff', 'Taxable', 'Saturday, 07 April 2018, 08:46:26.613 AM', 'Saturday, 07 April 2018, 08:46:26.613 AM'),
(2, 'Lamborghini', 'veneno', 470, 20, 20, 0, 9400, '2018-04-30', 'Control Drugs', '1x3', 'Italy', 'generic', 'Italian car', 'Non-taxable', 'Saturday, 07 April 2018, 08:46:26.613 AM', 'Saturday, 07 April 2018, 08:46:26.613 AM');

-- --------------------------------------------------------

--
-- Table structure for table `systemtimer`
--

CREATE TABLE `systemtimer` (
  `ID` int(11) NOT NULL,
  `Timer` date NOT NULL,
  `SecretCode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `systemtimer`
--

INSERT INTO `systemtimer` (`ID`, `Timer`, `SecretCode`) VALUES
(1, '2018-04-07', '29b6e1dbc5e0aafe408791fbd1c3a14695cfb515201b2e1878ef8df3f8d1f82b84a2a656cfcc25c04842c50b43773da6eed9c90e1b1ea6937bea594cefede13a');

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
(1, 'GTR', 'GTR', 300, 960, 6960, 0, 0, 0, 0, 6960, 'Saturday, 07 April 2018, 08:49:07.221 AM', 'Saturday, 07 April 2018, 08:49:07.221 AM'),
(2, 'Lamborghini', 'veneno', 500, 0, 10000, 30, 0, 600, 0, 9400, 'Saturday, 07 April 2018, 08:49:07.221 AM', 'Saturday, 07 April 2018, 08:49:07.221 AM');

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
(3, 'Test123', 'Test123', 'Test123', 200, 11600, 100, 11500, 'Saturday, 07 April 2018, 08:49:29.262 AM');

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
(1, 'Lamborghini', 'veneno', 30, 20, 20, 0, 600, 600, 600, 0, '2018-04-07', 'Saturday, 07 April 2018, 08:48:13.385 AM', '-883869664');

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
(2, 'Lamborghini', 'veneno', 500, 0, 10000);

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
(12345678, 'Test123', '123', '8cafed2235386cc5855e75f0d34f103ccc183912e5f02446b77c66539f776e4bf2bf87339b4518a7cb1c2441c568b0f8', 3000, NULL, 3000, 'Saturday, 07 April 2018, 08:07:35.839 AM');

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `systemtimer`
--
ALTER TABLE `systemtimer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tablecritical`
--
ALTER TABLE `tablecritical`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tabledistributers`
--
ALTER TABLE `tabledistributers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tablesell`
--
ALTER TABLE `tablesell`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tablestockin`
--
ALTER TABLE `tablestockin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
