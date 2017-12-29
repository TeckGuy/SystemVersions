-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2017 at 01:18 PM
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
(31407936, 'TechGuy', '6668', '93f725a07423fe1c889f448b33d21f46', 120000, 110000, 10000, 'Sunday, 03 December 2017, 03:23:48.254 PM');

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
('ABZ', 'ABZ', 100, 10000, 11, 1050, 0, 8950, 'Sunday, 17 December 2017, 07:49:19.325 AM'),
('Bugatti', 'B', 100, 10000, 89, 11900, 1900, 0, 'Friday, 22 December 2017, 09:26:44.009 PM'),
('nn', 'jj', 99, 891, 0, 0, 0, 891, 'Tuesday, 19 December 2017, 01:08:28.208 AM'),
('Aston', 'Martin', 50, 10000, 0, 0, 0, 10000, 'Tuesday, 19 December 2017, 12:31:58.140 AM'),
('gr', 'rgrtg', 54, 5400, 0, 0, 0, 5400, 'Friday, 24 November 2017, 12:45:13.215 AM'),
('rr', 'rtr', 4, 80, 0, 0, 0, 80, 'Friday, 22 December 2017, 09:26:17.024 PM'),
('Panado', 'sdhg', 500, 7500, 389, 5885, 0, 1615, 'Tuesday, 12 December 2017, 11:10:24.406 AM');

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
('ABZ Limited', 'ABZ', 10000, 5000, 5000, '2017-11-22', 'Wednesday, 22 November 2017, 10:41:20.921 PM'),
('Fhony', 'Dicophenac', 4000, 200, 3800, '2017-11-24', 'Friday, 24 November 2017, 12:05:24.093 AM'),
('Fhony', 'Dicophenac', 4000, 200, 3800, '2017-11-24', 'Friday, 24 November 2017, 12:05:24.093 AM'),
('Fhony', 'Dicophenac', 4000, 1200, 2800, '2017-11-24', 'Friday, 24 November 2017, 12:05:24.093 AM'),
('TechGuy', '31407936', 120000, 110000, 10000, '2017-12-03', 'Sunday, 03 December 2017, 03:23:48.254 PM'),
('TechUser', '12345678', 5000, 1000, 4000, '2017-12-03', 'Sunday, 03 December 2017, 03:24:11.525 PM'),
('TechUser', '12345678', 5000, 1500, 3500, '2017-12-03', 'Sunday, 03 December 2017, 03:30:57.816 PM'),
('TechUser', '12345678', 10000, 1000, 9000, '2017-12-10', 'Sunday, 10 December 2017, 10:23:52.033 PM'),
('Germany', 'Bugatti', 10000, 1000, 9000, '2017-12-10', 'Sunday, 10 December 2017, 10:24:35.558 PM'),
('TechUser', '12345678', 10000, 1500, 8500, '2017-12-10', 'Sunday, 10 December 2017, 10:27:31.260 PM'),
('user', '87654321', 2000, 100, 1900, '2017-12-11', 'Monday, 11 December 2017, 06:38:49.539 PM'),
('Vincent Ososi Oisebe', '87654321', 50000, 8800, 41200, '2017-12-17', 'Sunday, 17 December 2017, 08:10:32.585 AM'),
('Vincent Ososi Oisebe', '87654321', 50000, 9000, 41000, '2017-12-17', 'Sunday, 17 December 2017, 08:10:32.585 AM'),
('rfr', 'rr', 80, 50, 30, '2017-12-18', 'Monday, 18 December 2017, 10:50:05.063 PM'),
('Vincent Ososi Oisebe', '87654321', 50000, 10000, 40000, '2017-12-22', 'Friday, 22 December 2017, 08:07:15.177 PM'),
('ABZ Limited', 'ABZ', 10000, 5600, 4400, '2017-12-22', 'Friday, 22 December 2017, 09:25:08.132 PM'),
('Vincent Ososi Oisebe', '87654321', 50000, 15000, 35000, '2017-12-22', 'Friday, 22 December 2017, 10:07:10.217 PM'),
('TechUser', '12345678', 10000, 2000, 8000, '2017-12-22', 'Friday, 22 December 2017, 10:21:37.951 PM'),
('TechUser', '12345678', 10000, 4000, 6000, '2017-12-22', 'Friday, 22 December 2017, 10:21:37.951 PM');

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
  `UpdatedOn` varchar(100) NOT NULL,
  `LastEdited` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`Mname`, `Mserial`, `Mquantity`, `Mcost`, `Mtotalcost`, `Medate`, `Msection`, `Mprescription`, `Mdistributer`, `Mcategory`, `Mreport`, `UpdatedOn`, `LastEdited`) VALUES
('66', '668', 8, 8, 64, '2017-12-20', 'Control Drugs', '78', '5678', '66', '45678', 'Friday, 22 December 2017, 10:49:13.716 PM', 'Tuesday, 19 December 2017, 01:22:12.176 AM'),
('ee', 'ee', 23, 33, 759, '2017-12-26', 'Control Drugs', 'ee', 'ee', 'ee', '333', 'Thursday, 28 December 2017, 10:58:00.675 PM', 'Tuesday, 19 December 2017, 01:27:30.613 AM'),
('f', 'f', 7, 6, 42, '2017-12-19', 'Display', 'f', 'g', 'h', '66', 'Friday, 22 December 2017, 10:54:33.377 PM', 'Tuesday, 19 December 2017, 01:20:44.794 AM'),
('Ferrari', 'FLF', 22, 2000, 44000, '2017-12-31', 'Dispensary', 'Racing', 'Russia', 'Racing', 'This is a Racing Car that is more than 700hp', 'Thursday, 28 December 2017, 10:58:00.675 PM', 'Sunday, 10 December 2017, 10:11:34.353 PM'),
('Nissan', 'GTR', 2, 500, 1000, '2017-12-31', 'Display', 'Racing Car', 'Japan', 'Nismo', 'Racing Car 2017', 'Friday, 22 December 2017, 10:57:16.941 PM', 'Saturday, 02 December 2017, 11:01:10.379 PM'),
('gg', 'hg', 6, 8, 48, '2017-12-28', 'Dispensary', 'yu', 'fgh', 'fgh', 'vbn', 'Friday, 22 December 2017, 10:58:04.017 PM', 'Tuesday, 19 December 2017, 01:21:30.297 AM'),
('Aston', 'Martin', 35, 200, 7000, '2018-12-19', 'Dispensary', 'Volcano', 'Japan', 'Twin Turbo', 'Racing Car', 'Thursday, 28 December 2017, 10:58:00.675 PM', 'Tuesday, 19 December 2017, 12:32:18.663 AM'),
('Koinesegg', 'One', 25, 50, 1250, '2017-12-31', 'Display', '1x1', 'Russia', 'MegaCar', 'Megar car 1341hp', 'Friday, 22 December 2017, 10:49:13.716 PM', 'Tuesday, 19 December 2017, 01:31:00.403 AM'),
('Tata', 'Tata', 117, 100, 11700, '2017-12-26', 'Dispensary', 'heavy', 'engine', 'duty', 'Heavy duty engines', 'Friday, 22 December 2017, 10:50:38.242 PM', 'Tuesday, 19 December 2017, 01:35:02.788 AM'),
('test', 'test', 40, 600, 24000, '2017-12-31', 'Control Drugs', 'test', 'test', 'test', 'test', 'Friday, 22 December 2017, 10:50:04.796 PM', 'Friday, 22 December 2017, 10:50:04.796 PM'),
('Trust', 'tt', 80, 50, 4000, '2017-12-31', 'Dispensary', 'condom', 'trust', 'trust', 'used for protection', 'Friday, 22 December 2017, 10:54:33.377 PM', 'Friday, 22 December 2017, 08:28:23.387 PM'),
('Dicophenac', 'TYR2', 0, 0, 0, '2017-12-25', 'Dispensary', '1X2', 'Fhony', 'generic', 'painkiller java', 'Friday, 22 December 2017, 10:50:38.242 PM', 'Friday, 22 December 2017, 10:42:19.851 PM');

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
  `UpdatedOn` varchar(100) NOT NULL,
  `LastEdited` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tablecritical`
--

INSERT INTO `tablecritical` (`Mname`, `Mserial`, `StockIn`, `StockInCost`, `StockOut`, `StockOutCost`, `Profit`, `Loss`, `UpdatedOn`, `LastEdited`) VALUES
('66', '668', 8, 64, 0, 0, 0, 64, 'Friday, 29 December 2017, 02:55:19.657 AM', 'Tuesday, 19 December 2017, 01:28:29.225 AM'),
('ee', 'ee', 33, 1089, 10, 330, 0, 759, 'Friday, 29 December 2017, 02:55:19.657 AM', 'Tuesday, 19 December 2017, 01:28:29.225 AM'),
('f', 'f', 7, 42, 0, 0, 0, 42, 'Friday, 29 December 2017, 02:55:19.657 AM', 'Tuesday, 19 December 2017, 01:28:29.225 AM'),
('Ferrari', 'FLF', 200, 400000, 199, 398000, 0, 2000, 'Friday, 29 December 2017, 02:55:19.657 AM', 'Sunday, 10 December 2017, 10:14:24.684 PM'),
('Nissan', 'GTR', 100, 50000, 98, 49000, 0, 1000, 'Friday, 29 December 2017, 02:55:19.657 AM', 'Saturday, 02 December 2017, 11:05:50.782 PM'),
('gg', 'hg', 6, 48, 0, 0, 0, 48, 'Friday, 29 December 2017, 02:55:19.657 AM', 'Tuesday, 19 December 2017, 01:28:29.225 AM'),
('Aston', 'Martin', 50, 10000, 15, 2250, 0, 7750, 'Friday, 29 December 2017, 02:55:19.657 AM', 'Tuesday, 19 December 2017, 01:08:28.208 AM'),
('Koinesegg', 'One', 300, 15000, 82, 4100, 0, 10900, 'Friday, 29 December 2017, 02:55:19.657 AM', 'Tuesday, 19 December 2017, 01:32:19.839 AM'),
('Tata', 'Tata', 130, 13000, 13, 1300, 0, 11700, 'Friday, 29 December 2017, 02:55:19.657 AM', 'Tuesday, 19 December 2017, 01:38:10.116 AM'),
('test', 'test', 40, 24000, 0, 0, 0, 24000, 'Friday, 29 December 2017, 02:55:19.657 AM', 'Thursday, 28 December 2017, 10:58:43.524 PM'),
('Trust', 'tt', 100, 5000, 16, 800, 0, 4200, 'Friday, 29 December 2017, 02:55:19.657 AM', 'Friday, 22 December 2017, 08:29:19.989 PM'),
('Dicophenac', 'TYR2', 200, 4000, 190, 3800, 0, 200, 'Friday, 29 December 2017, 02:55:19.657 AM', 'Wednesday, 22 November 2017, 08:52:33.037 PM');

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
('ABZ', 'ABZ Limited', 'ABZ', 100, 10000, 5600, 4400, 'Friday, 22 December 2017, 09:25:08.132 PM'),
('B', 'Germany', 'Bugatti', 100, 10000, 1000, 9000, 'Sunday, 10 December 2017, 10:24:35.558 PM'),
('ee', 'ee', 'ee', 33, 1089, NULL, 1089, 'Tuesday, 19 December 2017, 01:27:30.613 AM'),
('f', 'g', 'f', 7, 42, NULL, 42, 'Tuesday, 19 December 2017, 01:20:44.794 AM'),
('FLF', 'Russia', 'Ferrari', 200, 400000, NULL, 400000, 'Sunday, 10 December 2017, 10:11:34.353 PM'),
('GTR', 'Japan', 'Nissan', 100, 50000, NULL, 50000, 'Saturday, 02 December 2017, 11:01:10.379 PM'),
('hg', 'fgh', 'gg', 6, 48, NULL, 48, 'Tuesday, 19 December 2017, 01:21:30.297 AM'),
('jj', 'jjj', 'nn', 99, 891, NULL, 891, 'Tuesday, 19 December 2017, 01:07:14.997 AM'),
('Martin', 'Japan', 'Aston', 50, 10000, NULL, 10000, 'Tuesday, 19 December 2017, 12:30:06.224 AM'),
('One', 'Russia', 'Koinesegg', 300, 15000, NULL, 15000, 'Tuesday, 19 December 2017, 01:31:00.403 AM'),
('rgrtg', 'rgrg', 'gr', 54, 5400, NULL, 5400, 'Friday, 24 November 2017, 12:44:02.195 AM'),
('rtr', 'rfr', 'rr', 4, 80, 50, 30, 'Monday, 18 December 2017, 10:50:05.063 PM'),
('sdhg', 'Host', 'Panado', 500, 7500, 6666, 834, 'Tuesday, 19 December 2017, 10:40:11.225 PM'),
('Tata', 'engine', 'Tata', 130, 13000, NULL, 13000, 'Tuesday, 19 December 2017, 01:35:02.788 AM'),
('test', 'test', 'test', 40, 24000, NULL, 24000, 'Friday, 22 December 2017, 10:50:04.796 PM'),
('tt', 'trust', 'Trust', 100, 5000, NULL, 5000, 'Friday, 22 December 2017, 08:28:23.387 PM'),
('TYR2', 'Fhony', 'Dicophenac', 200, 4000, 1200, 2800, 'Friday, 24 November 2017, 12:05:24.093 AM');

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
('Dicophenac', 'TYR2', 90, 20, 20, 1800, 2000, 200, '2017-11-22', 'Wednesday, 22 November 2017, 10:58:02.041 PM', '1814919686'),
('Dicophenac', 'TYR2', 100, 20, 20, 2000, 2000, 0, '2017-11-24', 'Friday, 24 November 2017, 12:20:48.947 AM', '-1716417778'),
('Nissan', 'GTR', 1, 500, 500, 500, 1000, 500, '2017-12-02', 'Saturday, 02 December 2017, 11:05:17.171 PM', '882632842'),
('Nissan', 'GTR', 2, 500, 500, 1000, 1000, 0, '2017-12-02', 'Saturday, 02 December 2017, 11:15:25.812 PM', '85174958'),
('Nissan', 'GTR', 1, 500, 500, 500, 1000, 500, '2017-12-02', 'Saturday, 02 December 2017, 11:25:55.024 PM', '-401857417'),
('Nissan', 'GTR', 3, 500, 500, 1500, 2000, 500, '2017-12-05', 'Tuesday, 05 December 2017, 08:13:05.575 AM', '1473445886'),
('Nissan', 'GTR', 3, 500, 500, 1500, 2000, 500, '2017-12-09', 'Saturday, 09 December 2017, 02:39:42.613 PM', '-1076303133'),
('Nissan', 'GTR', 10, 500, 500, 5000, 5000, 0, '2017-12-10', 'Sunday, 10 December 2017, 10:07:31.164 PM', '1011449527'),
('Ferrari', 'FLF', 7, 2000, 2000, 14000, 4000, 0, '2017-12-11', 'Monday, 11 December 2017, 08:23:59.044 AM', '824275995'),
('Ferrari', 'FLF', 7, 2000, 2000, 14000, 2000, 0, '2017-12-11', 'Monday, 11 December 2017, 06:35:11.736 PM', '1093905896'),
('Nissan', 'GTR', 7, 500, 500, 3500, 4000, 500, '2017-12-11', 'Monday, 11 December 2017, 09:58:08.406 PM', '1930142572'),
('Nissan', 'GTR', 2, 500, 500, 1000, 1000, 0, '2017-12-11', 'Monday, 11 December 2017, 10:19:34.897 PM', '-2021605908'),
('Nissan', 'GTR', 3, 500, 500, 1500, 2000, 500, '2017-12-11', 'Monday, 11 December 2017, 10:23:29.999 PM', '-1939094038'),
('Nissan', 'GTR', 5, 500, 500, 2500, 3000, 500, '2017-12-12', 'Tuesday, 12 December 2017, 04:59:40.181 AM', '316151508'),
('Nissan', 'GTR', 6, 500, 500, 3000, 3000, 0, '2017-12-12', 'Tuesday, 12 December 2017, 11:07:11.354 AM', '-580687345'),
('Nissan', 'GTR', 3, 500, 500, 1500, 2000, 500, '2017-12-17', 'Sunday, 17 December 2017, 07:46:16.651 AM', '870128254'),
('Ferrari', 'FLF', 7, 2000, 2000, 14000, 10000, 0, '2017-12-17', 'Sunday, 17 December 2017, 07:47:29.030 AM', '-1890202825'),
('Ferrari', 'FLF', 7, 2000, 2000, 14000, 20000, 0, '2017-12-17', 'Sunday, 17 December 2017, 07:48:00.348 AM', '-290144129'),
('Nissan', 'GTR', 5, 500, 500, 2500, 3000, 500, '2017-12-17', 'Sunday, 17 December 2017, 07:54:42.781 AM', '-342200254'),
('Ferrari', 'FLF', 7, 2000, 2000, 14000, 2000, 0, '2017-12-17', 'Sunday, 17 December 2017, 07:56:33.781 AM', '439901985'),
('Nissan', 'GTR', 5, 500, 500, 2500, 3000, 500, '2017-12-17', 'Sunday, 17 December 2017, 08:03:05.345 AM', '295466251'),
('Ferrari', 'FLF', 7, 2000, 2000, 14000, 4000, 2000, '2017-12-17', 'Sunday, 17 December 2017, 08:04:10.107 AM', '1193044974'),
('Ferrari', 'FLF', 7, 2000, 2000, 14000, 5000, 1000, '2017-12-17', 'Sunday, 17 December 2017, 08:53:24.381 AM', '-984231338'),
('Ferrari', 'FLF', 7, 2000, 2000, 14000, 20000, 4000, '2017-12-17', 'Sunday, 17 December 2017, 08:53:49.664 AM', '1850637667'),
('Nissan', 'GTR', 4, 500, 500, 2000, 2000, 0, '2017-12-17', 'Sunday, 17 December 2017, 08:54:11.306 AM', '180563218'),
('Nissan', 'GTR', 3, 500, 500, 1500, 2000, 500, '2017-12-18', 'Monday, 18 December 2017, 11:23:26.678 PM', '-1034076338'),
('Ferrari', 'FLF', 65, 2000, 2000, 130000, 130000, 0, '2017-12-18', 'Monday, 18 December 2017, 11:26:33.976 PM', '-584031021'),
('Ferrari', 'FLF', 34, 2000, 2000, 68000, 68000, 0, '2017-12-18', 'Monday, 18 December 2017, 11:30:09.244 PM', '1665678921'),
('Nissan', 'GTR', 7, 500, 500, 3500, 4000, 500, '2017-12-18', 'Monday, 18 December 2017, 11:42:19.838 PM', '-1476165372'),
('Nissan', 'GTR', 5, 500, 500, 2500, 2500, 0, '2017-12-18', 'Monday, 18 December 2017, 11:43:39.295 PM', '274290874'),
('Ferrari', 'FLF', 6, 2000, 2000, 12000, 55555, 43555, '2017-12-18', 'Monday, 18 December 2017, 11:49:51.236 PM', '781156917'),
('Ferrari', 'FLF', 3, 2000, 2000, 6000, 6000, 0, '2017-12-18', 'Monday, 18 December 2017, 11:50:20.659 PM', '361284052'),
('Ferrari', 'FLF', 2, 2000, 2000, 4000, 4000, 0, '2017-12-18', 'Monday, 18 December 2017, 11:52:48.365 PM', '-771958960'),
('Ferrari', 'FLF', 5, 2000, 2000, 10000, 10000, 0, '2017-12-18', 'Monday, 18 December 2017, 11:55:58.269 PM', '-1794243869'),
('Ferrari', 'FLF', 2, 2000, 2000, 4000, 4000, 0, '2017-12-18', 'Monday, 18 December 2017, 11:56:48.057 PM', '122108875'),
('Ferrari', 'FLF', 3, 2000, 2000, 6000, 6000, 0, '2017-12-18', 'Monday, 18 December 2017, 11:58:27.651 PM', '917713711'),
('Ferrari', 'FLF', 1, 2000, 2000, 2000, 2000, 0, '2017-12-18', 'Monday, 18 December 2017, 11:59:48.952 PM', '-689908733'),
('Ferrari', 'FLF', 4, 2000, 2000, 8000, 10000, 2000, '2017-12-19', 'Tuesday, 19 December 2017, 12:01:23.266 AM', '-1174013209'),
('Ferrari', 'FLF', 2, 2000, 2000, 4000, 4000, 0, '2017-12-19', 'Tuesday, 19 December 2017, 12:06:29.430 AM', '-445837198'),
('Ferrari', 'FLF', 8, 2000, 2000, 16000, 20000, 4000, '2017-12-19', 'Tuesday, 19 December 2017, 12:06:43.384 AM', '-542740117'),
('Nissan', 'GTR', 5, 500, 500, 2500, 3000, 500, '2017-12-19', 'Tuesday, 19 December 2017, 12:06:59.563 AM', '642001962'),
('Nissan', 'GTR', 7, 500, 500, 3500, 4000, 500, '2017-12-19', 'Tuesday, 19 December 2017, 12:09:09.231 AM', '-1294350995'),
('Ferrari', 'FLF', 6, 2000, 2000, 12000, 12000, 0, '2017-12-19', 'Tuesday, 19 December 2017, 12:11:57.823 AM', '1637038268'),
('Nissan', 'GTR', 3, 500, 500, 1500, 2000, 500, '2017-12-19', 'Tuesday, 19 December 2017, 12:12:10.027 AM', '706395351'),
('Aston', 'Martin', 6, 200, 200, 1200, 1500, 300, '2017-12-19', 'Tuesday, 19 December 2017, 01:08:52.500 AM', '-458204150'),
('Koinesegg', 'One', 6, 50, 50, 300, 500, 200, '2017-12-19', 'Tuesday, 19 December 2017, 01:32:39.877 AM', '-297369712'),
('Tata', 'Tata', 5, 100, 100, 500, 500, 0, '2017-12-19', 'Tuesday, 19 December 2017, 01:36:52.095 AM', '-2041469999'),
('Koinesegg', 'One', 66, 50, 50, 3300, 4000, 700, '2017-12-19', 'Tuesday, 19 December 2017, 01:37:10.741 AM', '-20324488'),
('ee', 'ee', 2, 33, 33, 66, 455, 389, '2017-12-19', 'Tuesday, 19 December 2017, 10:36:55.055 PM', '1967841266'),
('Aston', 'Martin', 4, 200, 200, 800, 1000, 200, '2017-12-19', 'Tuesday, 19 December 2017, 10:41:47.968 PM', '-295985992'),
('Koinesegg', 'Martin', 5, 50, 50, 250, 500, 250, '2017-12-19', 'Tuesday, 19 December 2017, 10:42:41.589 PM', '-1056629282'),
('ee', 'ee', 6, 33, 33, 198, 200, 2, '2017-12-20', 'Wednesday, 20 December 2017, 07:43:43.279 AM', '600164047'),
('Tata', 'Tata', 4, 100, 100, 400, 1000, 600, '2017-12-22', 'Friday, 22 December 2017, 07:56:40.203 PM', '129757422'),
('Trust', 'tt', 6, 50, 50, 300, 500, 200, '2017-12-22', 'Friday, 22 December 2017, 08:30:04.243 PM', '-837001109'),
('Trust', 'tt', 6, 50, 50, 300, 500, 200, '2017-12-22', 'Friday, 22 December 2017, 08:34:53.086 PM', '-1639127623'),
('Nissan', 'GTR', 2, 500, 500, 1000, 1000, 0, '2017-12-22', 'Friday, 22 December 2017, 08:41:12.781 PM', '-730067696'),
('Nissan', 'GTR', 3, 500, 500, 1500, 2000, 500, '2017-12-22', 'Friday, 22 December 2017, 08:45:17.560 PM', '489344848'),
('Ferrari', 'FLF', 2, 2000, 2000, 4000, 4000, 0, '2017-12-22', 'Friday, 22 December 2017, 09:14:50.975 PM', '646992022'),
('Tata', 'Tata', 4, 100, 100, 400, 500, 100, '2017-12-22', 'Friday, 22 December 2017, 09:15:41.747 PM', '-632135577'),
('ee', 'ee', 2, 33, 33, 66, 100, 34, '2017-12-22', 'Friday, 22 December 2017, 09:15:55.248 PM', '1621548043'),
('Nissan', 'GTR', 3, 500, 500, 1500, 3000, 1500, '2017-12-22', 'Friday, 22 December 2017, 10:04:56.969 PM', '2125820531'),
('Koinesegg', 'One', 10, 50, 50, 500, 1000, 500, '2017-12-22', 'Friday, 22 December 2017, 10:24:26.652 PM', '-2047325659'),
('Trust', 'tt', 4, 50, 50, 200, 500, 300, '2017-12-28', 'Thursday, 28 December 2017, 11:02:24.877 PM', '-1015834864'),
('Trust', 'tt', 4, 50, 50, 200, 200, 0, '2017-12-29', 'Friday, 29 December 2017, 04:13:37.558 AM', '1462575424');

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
('66', '668', 8, 64),
('ee', 'ee', 33, 1089),
('f', 'f', 7, 42),
('Ferrari', 'FLF', 200, 400000),
('Nissan', 'GTR', 100, 50000),
('gg', 'hg', 6, 48),
('Aston', 'Martin', 50, 10000),
('Koinesegg', 'One', 300, 15000),
('Tata', 'Tata', 130, 13000),
('test', 'test', 40, 24000),
('Trust', 'tt', 100, 5000),
('Dicophenac', 'TYR2', 200, 4000);

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
(12345678, 'TechUser', '2525', '93f725a07423fe1c889f448b33d21f46', 10000, 4000, 6000, 'Friday, 22 December 2017, 10:21:37.951 PM');

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
  ADD UNIQUE KEY `personalnumber` (`personalnumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
