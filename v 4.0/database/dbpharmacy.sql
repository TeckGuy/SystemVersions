-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2018 at 07:29 PM
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
('200126', '200126', 33, 0, 3080, 10, 21.12, 153.12, 0, 2926.88, 'Monday, 26 March 2018, 06:09:00.488 PM'),
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
('dd', 'dd', 1089, 900, 189, '2018-03-19', 'Monday, 19 March 2018, 10:15:00.968 PM'),
('dd', 'dd', 1089, 0, 189, '2018-03-27', 'Tuesday, 27 March 2018, 08:24:08.767 AM'),
('fdfd', 'fdf', 3025, 300, 2725, '2018-03-27', 'Tuesday, 27 March 2018, 08:24:08.767 AM');

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
('AA', 'AA', 98, 15, 0, 1470, '2018-04-30', 'Control Drugs', '1X2', 'AA', 'AA', 'AA', 'Non-taxable', 'Tuesday, 27 March 2018, 08:39:06.157 AM', 'Tuesday, 27 March 2018, 08:39:06.157 AM'),
('ABZ', 'ABX123', 43, 50, 344, 2494, '2018-04-30', 'Display', '1x1', 'ABZ', 'generic', 'Fungal ', 'Taxable', 'Tuesday, 27 March 2018, 08:36:24.358 AM', 'Tuesday, 27 March 2018, 08:36:24.358 AM'),
('Test123', 'Test123', 52, 40, 332.79999999999995, 2412.800000000001, '2018-04-30', 'Control Drugs', '1x4', 'Test123', 'Test123', 'Test123', 'Taxable', 'Tuesday, 27 March 2018, 08:42:26.318 AM', 'Tuesday, 27 March 2018, 08:42:26.318 AM');

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
('AA', 'AA', 100, 0, 1500, 2, 0, 30, 0, 1470, 'Monday, 02 April 2018, 08:25:59.770 PM', 'Tuesday, 27 March 2018, 08:40:57.152 AM'),
('ABZ', 'ABX123', 100, 800, 5800, 57, 456, 3306, 0, 2494, 'Monday, 02 April 2018, 08:25:59.770 PM', 'Tuesday, 27 March 2018, 08:37:11.943 AM'),
('Test123', 'Test123', 200, 1280, 9280, 148, 947.2, 6867.2, 0, 2412.8, 'Monday, 02 April 2018, 08:25:59.770 PM', 'Tuesday, 27 March 2018, 08:43:44.674 AM');

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
('343', '343', '343', 234, 874851.12, NULL, 874851.12, 'Monday, 26 March 2018, 05:53:56.167 PM'),
('AA', 'AA', 'AA', 100, 1500, NULL, 1500, 'Tuesday, 27 March 2018, 08:39:06.157 AM'),
('ABX123', 'ABZ', 'ABZ', 100, 5800, NULL, 5800, 'Tuesday, 27 March 2018, 08:36:24.358 AM'),
('ddd', 'dd', 'dd', 33, 1089, 0, 0, 'Tuesday, 27 March 2018, 08:24:08.767 AM'),
('dfd', 'fdfd', 'fdf', 55, 3025, 300, 2725, 'Tuesday, 27 March 2018, 08:24:08.767 AM'),
('rr', 'rr', 'rr', 33, 1263.24, NULL, 1263.24, 'Sunday, 21 January 2018, 09:16:32.105 PM'),
('Test123', 'Test123', 'Test123', 200, 9280, NULL, 9280, 'Tuesday, 27 March 2018, 08:42:26.318 AM');

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
('ABZ', 'ABX123', 12, 50, 50, 96, 600, 696, 600, 0, '2018-03-27', 'Tuesday, 27 March 2018, 08:37:39.220 AM', '767475603'),
('Test123', 'Test123', 12, 40, 40, 76.80000000000001, 480, 556.8, 500, 20, '2018-03-27', 'Tuesday, 27 March 2018, 08:43:09.237 AM', '-1918081371'),
('ABZ', 'ABX123', 30, 50, 50, 240, 1500, 1740, 1500, 0, '2018-03-28', 'Wednesday, 28 March 2018, 07:25:21.869 PM', '-726146511'),
('Test123', 'Test123', 80, 40, 40, 512, 3200, 3712, 3200, 0, '2018-03-28', 'Wednesday, 28 March 2018, 07:28:44.352 PM', '-316516519'),
('Test123', 'Test123', 8, 40, 40, 51.2, 320, 371.2, 500, 180, '2018-03-28', 'Wednesday, 28 March 2018, 07:29:46.484 PM', '808104632'),
('Test123', 'Test123', 5, 40, 40, 32, 200, 232, 200, 0, '2018-04-02', 'Monday, 02 April 2018, 07:59:37.404 PM', '660027495'),
('ABZ', 'ABX123', 3, 50, 50, 24, 150, 174, 200, 50, '2018-04-02', 'Monday, 02 April 2018, 08:07:21.665 PM', '1666922151'),
('AA', 'AA', 2, 15, 15, 0, 30, 30, 60, 30, '2018-04-02', 'Monday, 02 April 2018, 08:10:20.843 PM', '-1349223418'),
('Test123', 'Test123', 10, 40, 40, 64, 400, 464, 500, 100, '2018-04-02', 'Monday, 02 April 2018, 08:13:32.574 PM', '1955954308'),
('ABZ', 'ABX123', 12, 50, 50, 96, 600, 696, 600, 0, '2018-04-02', 'Monday, 02 April 2018, 08:21:44.150 PM', '-1470696860'),
('Test123', 'Test123', 33, 40, 40, 211.20000000000002, 1320, 1531.2, 1400, 80, '2018-04-02', 'Monday, 02 April 2018, 08:22:02.823 PM', '446642234');

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
('AA', 'AA', 100, 0, 1500),
('ABZ', 'ABX123', 100, 800, 5800),
('Test123', 'Test123', 200, 1280, 9280);

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
