-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2017 at 06:52 AM
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
(12343212, 'vinny', 'job', NULL, 90, NULL, 90, 'Monday, 25 September 2017, 01:20:34.484 AM'),
(12345654, 'boss', 'sds', NULL, 79, NULL, 79, 'Monday, 25 September 2017, 01:21:35.766 AM'),
(12700000, 'Gosling', '4545', NULL, 700000, 200000, 500000, 'Friday, 22 September 2017, 11:45:21.060 AM'),
(31407936, 'TechGuy', '6668', '93f725a07423fe1c889f448b33d21f46', 180000, 5000, 175000, 'Thursday, 21 September 2017, 12:31:57.834 PM'),
(98765434, 'job', 'k', NULL, 90, NULL, 90, 'Monday, 25 September 2017, 01:21:35.766 AM');

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
('ABZ', 'ABZ1', 6, 420, 2, 140, 0, 280, 'Friday, 22 September 2017, 11:44:37.764 AM'),
('Diclofenac', 'hj', 100, 1000, 0, 0, 0, 1000, 'Friday, 22 September 2017, 02:22:25.324 PM'),
('trg', 'trgr', 434, 140616, 0, 0, 0, 140616, 'Monday, 25 September 2017, 12:23:29.214 AM');

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
('Japan', 'Nissan', 113100, 3100, 110000, '2017-09-21', 'Thursday, 21 September 2017, 12:30:35.302 PM'),
('USA', 'Ford', 154000, 4000, 150000, '2017-09-21', 'Thursday, 21 September 2017, 12:30:35.302 PM'),
('TechTest', '87654321', 20000, 5000, 15000, '2017-09-21', 'Thursday, 21 September 2017, 12:31:57.834 PM'),
('TechGuy', '31407936', 180000, 5000, 175000, '2017-09-21', 'Thursday, 21 September 2017, 12:31:57.834 PM'),
('TechTest', '87654321', 20000, 5200, 14800, '2017-09-21', 'Thursday, 21 September 2017, 05:23:37.025 PM'),
('ABZ', 'ABZ', 420, 100, 320, '2017-09-22', 'Friday, 22 September 2017, 11:43:23.288 AM'),
('Gosling', '12700000', 700000, 200000, 500000, '2017-09-22', 'Friday, 22 September 2017, 11:45:21.060 AM'),
('Afya', 'Diclofenac', 1000, 500, 500, '2017-09-22', 'Friday, 22 September 2017, 02:20:38.775 PM'),
('Afya', '32145687', 6000, 500, 5500, '2017-09-22', 'Friday, 22 September 2017, 02:23:26.233 PM');

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
('56546', '54654', 564654, 5464564, 3085587920856, '2017-11-27', 'Dispensary', 'hgnhgn', 'hgngh', 'hnghn', 'hgnghngh', 'Monday, 25 September 2017, 02:24:41.790 AM'),
('Diclofenac', 'AF', 124, 15, 1860, '2017-09-29', 'Dispensary', '1X2', 'East End', 'generic', 'Pain killer', 'Sunday, 24 September 2017, 11:14:29.377 AM'),
('fbfg', 'gbfgb', 54353, 4535, 246490855, '2017-12-31', 'Dispensary', ' b hgnhgh', 'ngngh', 'hgnhgn', 'hngnghnghnghngh', 'Monday, 25 September 2017, 02:27:04.698 AM'),
('gnhn', 'ghng', 5453, 435353, 2373979909, '2017-09-21', 'Display', 'hngh', 'hngn', 'nhgngh', 'hnghn', 'Monday, 25 September 2017, 02:24:41.790 AM'),
('Ford', 'GT', 193, 770, 148610, '2017-09-29', 'Dispensary', 'Mustang', 'USA', 'V8', 'USA Racing Car USA Racing CarUSA Racing CarUSA Racing CarUSA Racing CarUSA Racing CarUSA Racing CarUSA Racing CarUSA Racing CarUSA Racing CarUSA Racing CarUSA Racing CarUSA Racing CarUSA Racing CarUSA Racing CarUSA Racing CarUSA Racing CarUSA Racing Car', 'Sunday, 24 September 2017, 07:35:06.346 PM'),
('Nissan', 'GTR', 36, 870, 39220, '2017-11-10', 'Display', 'Nismo', 'Japan', 'V6', 'Racing Car', 'Thursday, 21 September 2017, 01:13:50.711 AM'),
('dfhgmhm', 'hgmghm', 543545, 43534, 23662688030, '2017-11-13', 'Control Drugs', 'grgreg', 'rgerge', 'greger', 'regergerger', 'Monday, 25 September 2017, 02:06:45.721 AM'),
('trgrtnhg', 'hgmgmgh', 4365342, 4534534, 19794791720628, '2017-11-27', 'Display', 'rgehg', 'hrhrth', 'trhrhr', 'trhrth', 'Monday, 25 September 2017, 02:06:01.763 AM'),
('mjnhgn', 'hmjhmjh', 654, 4564, 2984856, '2017-11-22', 'Dispensary', 'thth', 'tyht', 'htyht', 'yhth', 'Monday, 25 September 2017, 02:24:41.790 AM'),
('hghn', 'hnghn', 564, 5464, 3081696, '2017-11-29', 'Display', 'nghnhg', 'hgngh', 'hgngn', 'hgnghng', 'Monday, 25 September 2017, 02:24:41.790 AM'),
('hrt', 'hrthr', 5454, 4535, 24733890, '2017-12-31', 'Dispensary', 'bfgb', 'bgfb', 'gbfb', 'gfbfgbf', 'Monday, 25 September 2017, 02:27:04.698 AM'),
('trhr', 'hthth', 54656, 65464, 3578000384, '2017-11-27', 'Dispensary', 'hgnghn', 'ghnghn', 'hgnghn', 'hnghnghmhjmhj', 'Monday, 25 September 2017, 02:28:47.369 AM'),
('trhrt', 'hthyht', 5464, 5464, 29855296, '2017-11-27', 'Dispensary', 'nhgnghn', 'hngngh', 'hgnghn', 'hngnhg', 'Monday, 25 September 2017, 02:24:41.790 AM'),
('java', 'java', 25, 700, 17500, '2017-09-26', 'Dispensary', '1x3', 'oracle', '1', 'programming java', 'Monday, 25 September 2017, 12:59:11.033 AM'),
('rgerhgrnj', 'jtyjtyjyt', 543645649, 5464654, 2.970835370390446e15, '2017-10-31', 'Dispensary', '45y45y4', '45y4y', 'yryh45y', '45y45y45y', 'Monday, 25 September 2017, 02:03:55.474 AM'),
('Lamborghini', 'L', 201, 850, 170880, '2017-12-25', 'Control Drugs', 'Veneno', 'Italy', 'V12', 'Italian bull figth Racing Car', 'Thursday, 21 September 2017, 12:33:33.654 PM'),
('hrhrt', 'mhj,jh', 435345, 45353, 19744201785, '2017-11-29', 'Display', 'grhgr', 'rntrh', 'trhrth', 'htrhrthr', 'Monday, 25 September 2017, 02:06:01.763 AM'),
('mmghm', 'mhjmhjm', 56456, 54654, 3085546224, '2017-12-26', 'Dispensary', 'hnhgn', 'hgngn', 'hgngn', 'hgnghnghn', 'Monday, 25 September 2017, 02:10:26.329 AM'),
('hjmhjm', 'mjhhjm', 6456, 54645, 352788120, '2017-11-27', 'Dispensary', 'hgnmghm', 'mhghm', 'hmghm', 'hmghmgh', 'Monday, 25 September 2017, 02:28:47.369 AM'),
('nhgnghn', 'nghnghn', 6565, 56565, 371349225, '2017-12-31', 'Dispensary', 'nghng', 'hgngh', 'hgnghn', 'ghgnghngh', 'Monday, 25 September 2017, 02:27:04.698 AM'),
('y454', 'nghnhg', 54654, 45645, 2494681830, '2017-11-27', 'Dispensary', 'ghn gh', 'gh nhg', 'bn bn', 'nhgjhgjhg', 'Monday, 25 September 2017, 02:24:41.790 AM'),
('435gbhgn', 'nghnhgn6', 54, 544, 29376, '2017-11-30', 'Control Drugs', 'gnghn', 'hgngn', 'hgnghn', 'hgnghngh', 'Monday, 25 September 2017, 02:24:41.790 AM'),
('ythyhnt', 'ntyntyn', 564564, 4565464, 2577496617696, '2017-11-27', 'Dispensary', 'ghnhgn', 'hgnghn', 'nhgngh', 'hgnhgnghngh', 'Monday, 25 September 2017, 02:24:41.790 AM'),
('rgerg', 'regeg', 3435345, 435345, 1495560269025, '2017-09-28', 'Control Drugs', 'regerg', 'regege', 'ergeg', 'ergergre', 'Monday, 25 September 2017, 02:03:55.474 AM'),
('etet', 'regerge', 543543, 4353, 2366042679, '2017-09-27', 'Dispensary', 'ergerge', 'gregege', 'gegeg', 'ergegergerg', 'Monday, 25 September 2017, 02:03:55.474 AM'),
('reert', 'regregher', 3534324, 3242342, 11459487146808, '2017-09-30', 'Display', 'reger', 'rege', 'ergeg', 'regegre', 'Monday, 25 September 2017, 02:03:55.474 AM'),
('bg', 'rgerge', 4324, 322342, 1393806808, '2017-09-24', 'Display', 'freg', 'regre', 'rege', 'regegegrg', 'Monday, 25 September 2017, 02:00:38.764 AM'),
('htyhty', 'ththt', 544545, 4535, 2469511575, '2017-12-31', 'Dispensary', 'grtgrtr', 'ggtrg', 'gtrgrt', 'trgrtgrt', 'Monday, 25 September 2017, 02:27:04.698 AM'),
('tjrtjrtjrt', 'tjrtjrt', 43543534, 43534534, 1.895647461403156e15, '2017-11-30', 'Control Drugs', 'rhrthrth', 'htrhrt', 'trhrthr', 'trhrthrthtr', 'Monday, 25 September 2017, 02:06:45.721 AM'),
('tbtntyn', 'tntynt', 43453, 43535, 1891726355, '2017-11-26', 'Display', 'hth', 'ythyth', 'hythty', 'ythtyhty', 'Monday, 25 September 2017, 02:29:48.728 AM'),
('trhtrht', 'trhrhr', 4535, 4354, 19745390, '2017-09-26', 'Display', 'bgrg', 'rgerg', 'erger', 'rgegerge', 'Monday, 25 September 2017, 02:03:55.474 AM'),
('thrhtr', 'trhrhytj', 56464, 54654645, 3086019875280, '2017-10-29', 'Control Drugs', 'rhrth', 'htrhrt', 'trhrth', 'rhrthrth', 'Monday, 25 September 2017, 02:03:55.474 AM'),
('jytjt', 'tyjtyjt', 435345, 43535, 18952744575, '2017-09-27', 'Dispensary', 'fdbdf', 'dfgdfg', 'fdgdfg', 'fdgfgdfgdfgdfbfdbnfgngfnghnf', 'Monday, 25 September 2017, 02:06:45.721 AM'),
('htyh', 'yhyth54', 4545, 5445, 24747525, '2017-12-31', 'Control Drugs', 'thth', 'htht', 'htrhrt', 'thrrthrt', 'Monday, 25 September 2017, 02:27:04.698 AM'),
('tytjyuj', 'ytjtyjy', 6567, 765, 5023755, '2017-11-29', 'Display', 'hgmjh', 'jmhmj', 'jmhmh', 'jhmhjmhj', 'Monday, 25 September 2017, 02:06:45.721 AM'),
('htyhty', 'ytjuyjuy', 4324, 4234, 18307816, '2017-11-26', 'Display', 'fgngfn', 'ngfnf', 'nfgnfg', 'nfgnfgngf', 'Monday, 25 September 2017, 02:29:48.728 AM'),
('yujyuj', 'yujyuj', 6557, 6765, 44358105, '2017-11-27', 'Dispensary', 'jytjttyjt', 'jtyt', 'jtyjyt', 'jyytjt', 'Monday, 25 September 2017, 02:28:47.369 AM');

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
('56546', '54654', 564654, 3085587920856, 0, 0, 0, 3085587920856, 'Monday, 25 September 2017, 02:31:06.641 AM'),
('Diclofenac', 'AF', 100, 1500, 96, 7425, 5925, 0, 'Friday, 22 September 2017, 02:10:15.819 PM'),
('fbfg', 'gbfgb', 54353, 246490855, 0, 0, 0, 246490855, 'Monday, 25 September 2017, 02:31:06.641 AM'),
('gnhn', 'ghng', 5453, 2373979909, 0, 0, 0, 2373979909, 'Monday, 25 September 2017, 02:31:06.641 AM'),
('Ford', 'GT', 200, 154000, 7, 5390, 0, 148610, 'Thursday, 21 September 2017, 01:30:22.250 AM'),
('Nissan', 'GTR', 130, 113100, 94, 73880, 0, 39220, 'Thursday, 21 September 2017, 01:30:22.250 AM'),
('dfhgmhm', 'hgmghm', 543545, 23662688030, 0, 0, 0, 23662688030, 'Monday, 25 September 2017, 02:11:51.352 AM'),
('trgrtnhg', 'hgmgmgh', 4365346, 19794809858764, 4, 18138136, 0, 19794791720628, 'Monday, 25 September 2017, 02:11:51.352 AM'),
('mjnhgn', 'hmjhmjh', 654, 2984856, 0, 0, 0, 2984856, 'Monday, 25 September 2017, 02:31:06.641 AM'),
('hghn', 'hnghn', 564, 3081696, 0, 0, 0, 3081696, 'Monday, 25 September 2017, 02:31:06.641 AM'),
('hrt', 'hrthr', 5454, 24733890, 0, 0, 0, 24733890, 'Monday, 25 September 2017, 02:31:06.641 AM'),
('trhr', 'hthth', 54656, 3578000384, 0, 0, 0, 3578000384, 'Monday, 25 September 2017, 02:31:06.641 AM'),
('trhrt', 'hthyht', 5464, 29855296, 0, 0, 0, 29855296, 'Monday, 25 September 2017, 02:31:06.641 AM'),
('java', 'java', 50, 35000, 25, 17500, 0, 17500, 'Monday, 25 September 2017, 01:00:17.775 AM'),
('rgerhgrnj', 'jtyjtyjyt', 543645654, 2.970835397713716e15, 5, 27323270, 0, 2.970835370390446e15, 'Monday, 25 September 2017, 02:11:51.352 AM'),
('Lamborghini', 'L', 230, 195500, 29, 24620, 0, 170880, 'Thursday, 21 September 2017, 01:07:14.153 PM'),
('hrhrt', 'mhj,jh', 435345, 19744201785, 0, 0, 0, 19744201785, 'Monday, 25 September 2017, 02:11:51.352 AM'),
('mmghm', 'mhjmhjm', 56456, 3085546224, 0, 0, 0, 3085546224, 'Monday, 25 September 2017, 02:11:51.352 AM'),
('hjmhjm', 'mjhhjm', 6456, 352788120, 0, 0, 0, 352788120, 'Monday, 25 September 2017, 02:31:06.641 AM'),
('nhgnghn', 'nghnghn', 6565, 371349225, 0, 0, 0, 371349225, 'Monday, 25 September 2017, 02:31:06.641 AM'),
('y454', 'nghnhg', 54654, 2494681830, 0, 0, 0, 2494681830, 'Monday, 25 September 2017, 02:31:06.641 AM'),
('435gbhgn', 'nghnhgn6', 54, 29376, 0, 0, 0, 29376, 'Monday, 25 September 2017, 02:31:06.641 AM'),
('ythyhnt', 'ntyntyn', 564564, 2577496617696, 0, 0, 0, 2577496617696, 'Monday, 25 September 2017, 02:31:06.641 AM'),
('rgerg', 'regeg', 3435345, 1495560269025, 0, 0, 0, 1495560269025, 'Monday, 25 September 2017, 02:11:51.352 AM'),
('etet', 'regerge', 543543, 2366042679, 0, 0, 0, 2366042679, 'Monday, 25 September 2017, 02:11:51.352 AM'),
('reert', 'regregher', 3534324, 11459487146808, 0, 0, 0, 11459487146808, 'Monday, 25 September 2017, 02:11:51.352 AM'),
('bg', 'rgerge', 4324, 1393806808, 0, 0, 0, 1393806808, 'Monday, 25 September 2017, 02:03:21.229 AM'),
('htyhty', 'ththt', 544545, 2469511575, 0, 0, 0, 2469511575, 'Monday, 25 September 2017, 02:31:06.641 AM'),
('tjrtjrtjrt', 'tjrtjrt', 43543534, 1.895647461403156e15, 0, 0, 0, 1.895647461403156e15, 'Monday, 25 September 2017, 02:11:51.352 AM'),
('tbtntyn', 'tntynt', 43453, 1891726355, 0, 0, 0, 1891726355, 'Monday, 25 September 2017, 02:31:06.641 AM'),
('trhtrht', 'trhrhr', 4535, 19745390, 0, 0, 0, 19745390, 'Monday, 25 September 2017, 02:11:51.352 AM'),
('thrhtr', 'trhrhytj', 56464, 3086019875280, 0, 0, 0, 3086019875280, 'Monday, 25 September 2017, 02:11:51.352 AM'),
('jytjt', 'tyjtyjt', 435345, 18952744575, 0, 0, 0, 18952744575, 'Monday, 25 September 2017, 02:11:51.352 AM'),
('htyh', 'yhyth54', 4545, 24747525, 0, 0, 0, 24747525, 'Monday, 25 September 2017, 02:31:06.641 AM'),
('tytjyuj', 'ytjtyjy', 6567, 5023755, 0, 0, 0, 5023755, 'Monday, 25 September 2017, 02:11:51.352 AM'),
('htyhty', 'ytjuyjuy', 4324, 18307816, 0, 0, 0, 18307816, 'Monday, 25 September 2017, 02:31:06.641 AM'),
('yujyuj', 'yujyuj', 6565, 44412225, 8, 54120, 0, 44358105, 'Monday, 25 September 2017, 02:31:06.641 AM');

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
('54654', 'hgngh', '56546', 564654, 3085587920856, NULL, 3085587920856, 'Monday, 25 September 2017, 02:24:41.790 AM'),
('ABZ1', 'ABZ', 'ABZ', 6, 420, 100, 320, 'Friday, 22 September 2017, 11:43:23.288 AM'),
('AF', 'East End', 'Diclofenac', 100, 1500, NULL, 1500, 'Friday, 22 September 2017, 02:05:14.004 PM'),
('gbfgb', 'ngngh', 'fbfg', 54353, 246490855, NULL, 246490855, 'Monday, 25 September 2017, 02:27:04.698 AM'),
('ghng', 'hngn', 'gnhn', 5453, 2373979909, NULL, 2373979909, 'Monday, 25 September 2017, 02:24:41.790 AM'),
('GT', 'USA', 'Ford', 200, 154000, 4000, 150000, 'Thursday, 21 September 2017, 12:30:35.302 PM'),
('GTR', 'Japan', 'Nissan', 130, 113100, 3100, 110000, 'Thursday, 21 September 2017, 12:30:35.302 PM'),
('hgmghm', 'rgerge', 'dfhgmhm', 543545, 23662688030, NULL, 23662688030, 'Monday, 25 September 2017, 02:06:45.721 AM'),
('hgmgmgh', 'hrhrth', 'trgrtnhg', 4365346, 19794809858764, NULL, 19794809858764, 'Monday, 25 September 2017, 02:06:01.763 AM'),
('hj', 'Afya', 'Diclofenac', 100, 1000, 500, 500, 'Friday, 22 September 2017, 02:20:38.775 PM'),
('hmjhmjh', 'tyht', 'mjnhgn', 654, 2984856, NULL, 2984856, 'Monday, 25 September 2017, 02:24:41.790 AM'),
('hnghn', 'hgngh', 'hghn', 564, 3081696, NULL, 3081696, 'Monday, 25 September 2017, 02:24:41.790 AM'),
('hrthr', 'bgfb', 'hrt', 5454, 24733890, NULL, 24733890, 'Monday, 25 September 2017, 02:27:04.698 AM'),
('hthth', 'ghnghn', 'trhr', 54656, 3578000384, NULL, 3578000384, 'Monday, 25 September 2017, 02:28:47.369 AM'),
('hthyht', 'hngngh', 'trhrt', 5464, 29855296, NULL, 29855296, 'Monday, 25 September 2017, 02:24:41.790 AM'),
('java', 'oracle', 'java', 50, 35000, NULL, 35000, 'Monday, 25 September 2017, 12:59:11.033 AM'),
('jtyjtyjyt', '45y4y', 'rgerhgrnj', 543645654, 2.970835397713716e15, NULL, 2.970835397713716e15, 'Monday, 25 September 2017, 02:03:55.474 AM'),
('L', 'Italy', 'Lamborghini', 230, 195500, NULL, 195500, 'Thursday, 21 September 2017, 12:33:33.654 PM'),
('mhj,jh', 'rntrh', 'hrhrt', 435345, 19744201785, NULL, 19744201785, 'Monday, 25 September 2017, 02:06:01.763 AM'),
('mhjmhjm', 'hgngn', 'mmghm', 56456, 3085546224, NULL, 3085546224, 'Monday, 25 September 2017, 02:10:26.329 AM'),
('mjhhjm', 'mhghm', 'hjmhjm', 6456, 352788120, NULL, 352788120, 'Monday, 25 September 2017, 02:28:47.369 AM'),
('nghnghn', 'hgngh', 'nhgnghn', 6565, 371349225, NULL, 371349225, 'Monday, 25 September 2017, 02:27:04.698 AM'),
('nghnhg', 'gh nhg', 'y454', 54654, 2494681830, NULL, 2494681830, 'Monday, 25 September 2017, 02:24:41.790 AM'),
('nghnhgn6', 'hgngn', '435gbhgn', 54, 29376, NULL, 29376, 'Monday, 25 September 2017, 02:24:41.790 AM'),
('ntyntyn', 'hgnghn', 'ythyhnt', 564564, 2577496617696, NULL, 2577496617696, 'Monday, 25 September 2017, 02:24:41.790 AM'),
('regeg', 'regege', 'rgerg', 3435345, 1495560269025, NULL, 1495560269025, 'Monday, 25 September 2017, 02:03:55.474 AM'),
('regerge', 'gregege', 'etet', 543543, 2366042679, NULL, 2366042679, 'Monday, 25 September 2017, 02:03:55.474 AM'),
('regregher', 'rege', 'reert', 3534324, 11459487146808, NULL, 11459487146808, 'Monday, 25 September 2017, 02:03:55.474 AM'),
('rgerge', 'regre', 'bg', 4324, 1393806808, NULL, 1393806808, 'Monday, 25 September 2017, 02:00:38.764 AM'),
('ththt', 'ggtrg', 'htyhty', 544545, 2469511575, NULL, 2469511575, 'Monday, 25 September 2017, 02:27:04.698 AM'),
('tjrtjrt', 'htrhrt', 'tjrtjrtjrt', 43543534, 1.895647461403156e15, NULL, 1.895647461403156e15, 'Monday, 25 September 2017, 02:06:45.721 AM'),
('tntynt', 'ythyth', 'tbtntyn', 43453, 1891726355, NULL, 1891726355, 'Monday, 25 September 2017, 02:29:48.728 AM'),
('trgr', 'rge', 'trg', 434, 140616, NULL, 140616, 'Sunday, 24 September 2017, 11:57:03.211 PM'),
('trhrhr', 'rgerg', 'trhtrht', 4535, 19745390, NULL, 19745390, 'Monday, 25 September 2017, 02:03:55.474 AM'),
('trhrhytj', 'htrhrt', 'thrhtr', 56464, 3086019875280, NULL, 3086019875280, 'Monday, 25 September 2017, 02:03:55.474 AM'),
('tyjtyjt', 'dfgdfg', 'jytjt', 435345, 18952744575, NULL, 18952744575, 'Monday, 25 September 2017, 02:06:45.721 AM'),
('yhyth54', 'htht', 'htyh', 4545, 24747525, NULL, 24747525, 'Monday, 25 September 2017, 02:27:04.698 AM'),
('ytjtyjy', 'jmhmj', 'tytjyuj', 6567, 5023755, NULL, 5023755, 'Monday, 25 September 2017, 02:06:45.721 AM'),
('ytjuyjuy', 'ngfnf', 'htyhty', 4324, 18307816, NULL, 18307816, 'Monday, 25 September 2017, 02:29:48.728 AM'),
('yujyuj', 'jtyt', 'yujyuj', 6565, 44412225, NULL, 44412225, 'Monday, 25 September 2017, 02:28:47.369 AM');

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
('Nissan', 'GTR', 5, 870, 870, 4350, 4400, 50, '2017-09-21', 'Thursday, 21 September 2017, 01:15:20.945 AM', '-1234026621'),
('Nissan', 'GTR', 1, 870, 870, 870, 900, 30, '2017-09-21', 'Thursday, 21 September 2017, 01:19:58.845 AM', '1991981201'),
('Ford', 'GT', 1, 770, 770, 770, 1000, 230, '2017-09-21', 'Thursday, 21 September 2017, 01:30:05.342 AM', '1533665314'),
('Lamborghini', 'L', 1, 850, 820, 820, 850, 30, '2017-09-21', 'Thursday, 21 September 2017, 12:37:05.592 PM', '-1761791439'),
('Ford', 'GT', 1, 770, 770, 770, 2000, 1230, '2017-09-21', 'Thursday, 21 September 2017, 12:51:45.534 PM', '-1351348685'),
('Ford', 'GT', 1, 770, 770, 770, 780, 10, '2017-09-21', 'Thursday, 21 September 2017, 12:55:45.791 PM', '-1025336355'),
('Lamborghini', 'L', 1, 850, 850, 850, 50000, 49150, '2017-09-21', 'Thursday, 21 September 2017, 12:57:44.007 PM', '-1371656152'),
('Lamborghini', 'L', 3, 850, 850, 2550, 3000, 450, '2017-09-21', 'Thursday, 21 September 2017, 01:05:15.656 PM', '1025629960'),
('Nissan', 'GTR', 2, 870, 870, 1740, 1800, 60, '2017-09-21', 'Thursday, 21 September 2017, 01:09:26.122 PM', '2047188951'),
('Lamborghini', 'L', 12, 850, 850, 10200, 11000, 800, '2017-09-21', 'Thursday, 21 September 2017, 01:21:08.458 PM', '806165043'),
('Ford', 'GTR', 1, 770, 770, 770, 1000, 230, '2017-09-21', 'Thursday, 21 September 2017, 05:24:48.466 PM', '2101517196'),
('Diclofenac', 'AF', 10, 15, 15, 150, 200, 50, '2017-09-22', 'Friday, 22 September 2017, 02:06:38.314 PM', '-818381254'),
('Diclofenac', 'AF', 1, 15, 15, 15, 20, 5, '2017-09-23', 'Saturday, 23 September 2017, 03:59:01.597 PM', '-2139362501'),
('Diclofenac', 'AF', 2, 15, 15, 30, 100, 70, '2017-09-23', 'Saturday, 23 September 2017, 04:01:50.160 PM', '-1918542953'),
('Diclofenac', 'AF', 5, 15, 15, 75, 100, 25, '2017-09-23', 'Saturday, 23 September 2017, 04:03:57.004 PM', '1653961541'),
('Diclofenac', 'AF', 2, 15, 15, 30, 50, 20, '2017-09-23', 'Saturday, 23 September 2017, 04:06:28.679 PM', '-2090065070'),
('Diclofenac', 'AF', 2, 15, 15, 30, 50, 20, '2017-09-24', 'Sunday, 24 September 2017, 09:53:04.930 AM', '-1241213301'),
('Diclofenac', 'AF', 4, 15, 15, 60, 500, 440, '2017-09-24', 'Sunday, 24 September 2017, 09:53:04.930 AM', '-1241213301'),
('Nissan', 'AF', 7, 870, 870, 6090, 50000, 43910, '2017-09-24', 'Sunday, 24 September 2017, 09:53:04.930 AM', '-1241213301'),
('Nissan', 'GTR', 5, 870, 870, 4350, 5000, 650, '2017-09-24', 'Sunday, 24 September 2017, 09:57:07.212 AM', '1289834862'),
('Diclofenac', 'AF', 7, 15, 15, 105, 120, 15, '2017-09-24', 'Sunday, 24 September 2017, 11:13:50.432 AM', '-1858684290'),
('Diclofenac', 'AF', 7, 15, 15, 105, 120, 15, '2017-09-24', 'Sunday, 24 September 2017, 11:15:32.651 AM', '-1563494036'),
('Diclofenac', 'AF', 5, 15, 15, 75, 100, 25, '2017-09-24', 'Sunday, 24 September 2017, 11:19:15.791 AM', '631507620'),
('Diclofenac', 'AF', 4, 15, 15, 60, 60, 0, '2017-09-24', 'Sunday, 24 September 2017, 11:22:11.004 AM', '572109189'),
('Diclofenac', 'AF', 1, 15, 15, 15, 20, 5, '2017-09-24', 'Sunday, 24 September 2017, 11:26:20.262 AM', '-1696665097'),
('Diclofenac', 'AF', 2, 15, 15, 30, 100, 70, '2017-09-24', 'Sunday, 24 September 2017, 11:33:15.675 AM', '-911105590'),
('Diclofenac', 'AF', 4, 15, 15, 60, 100, 40, '2017-09-24', 'Sunday, 24 September 2017, 11:38:15.283 AM', '-514452493'),
('Ford', 'GT', 4, 770, 770, 3080, 4000, 920, '2017-09-24', 'Sunday, 24 September 2017, 11:41:57.773 AM', '348087837'),
('Diclofenac', 'AF', 5, 15, 15, 75, 100, 25, '2017-09-24', 'Sunday, 24 September 2017, 11:51:54.728 AM', '-1935075923'),
('Diclofenac', 'AF', 4, 15, 15, 60, 111, 51, '2017-09-24', 'Sunday, 24 September 2017, 12:01:44.381 PM', '-126322495'),
('Diclofenac', 'AF', 6, 15, 15, 90, 100, 10, '2017-09-24', 'Sunday, 24 September 2017, 12:06:13.927 PM', '-1928697594'),
('Diclofenac', 'AF', 2, 15, 15, 30, 56, 26, '2017-09-24', 'Sunday, 24 September 2017, 04:35:30.591 PM', '-638308090'),
('Diclofenac', 'AF', 2, 15, 15, 30, 40, 10, '2017-09-24', 'Sunday, 24 September 2017, 04:37:40.126 PM', '758669779'),
('Diclofenac', 'AF', 2, 15, 15, 30, 100, 70, '2017-09-24', 'Sunday, 24 September 2017, 04:39:41.979 PM', '-1197201249'),
('Diclofenac', 'AF', 2, 15, 15, 30, 100, 70, '2017-09-24', 'Sunday, 24 September 2017, 04:54:34.692 PM', '887273932'),
('Diclofenac', 'AF', 2, 15, 15, 30, 100, 70, '2017-09-24', 'Sunday, 24 September 2017, 04:57:14.799 PM', '-1994223469'),
('Diclofenac', 'AF', 3, 15, 15, 45, 100, 55, '2017-09-24', 'Sunday, 24 September 2017, 04:58:59.898 PM', '818966197'),
('Diclofenac', 'AF', 5, 15, 15, 75, 1000, 925, '2017-09-24', 'Sunday, 24 September 2017, 05:11:14.504 PM', '96713491'),
('Lamborghini', 'L', 4, 850, 850, 3400, 4000, 600, '2017-09-24', 'Sunday, 24 September 2017, 05:20:55.088 PM', '1098579230'),
('Ford', 'GTR', 78, 770, 770, 60060, 61000, 940, '2017-09-24', 'Sunday, 24 September 2017, 05:20:55.088 PM', '1098579230'),
('Lamborghini', 'L', 8, 850, 850, 6800, 7000, 200, '2017-09-25', 'Monday, 25 September 2017, 12:04:14.010 AM', '-128968771'),
('java', 'java', 7, 700, 700, 4900, 5000, 100, '2017-09-25', 'Monday, 25 September 2017, 01:53:52.559 AM', '446197846'),
('java', 'java', 4, 700, 700, 2800, 3000, 200, '2017-09-25', 'Monday, 25 September 2017, 01:54:33.464 AM', '759893270'),
('Nissan', 'GTR', 2, 870, 870, 1740, 2000, 260, '2017-09-25', 'Monday, 25 September 2017, 01:58:24.716 AM', '565070724'),
('java', 'java', 4, 700, 700, 2800, 3000, 200, '2017-09-25', 'Monday, 25 September 2017, 02:02:10.674 AM', '-2070633417'),
('trgrtnhg', 'hgmgmgh', 4, 4534534, 4534534, 18138136, 4040140404, 4022002268, '2017-09-25', 'Monday, 25 September 2017, 02:30:36.367 AM', '-717393683'),
('rgerhgrnj', 'jtyjtyjyt', 5, 5464654, 5464654, 27323270, 555555555, 528232285, '2017-09-25', 'Monday, 25 September 2017, 02:34:07.711 AM', '993531520'),
('yujyuj', 'yujyuj', 8, 6765, 6765, 54120, 515155, 461035, '2017-09-25', 'Monday, 25 September 2017, 02:34:47.616 AM', '-442964266'),
('java', 'java', 5, 700, 700, 3500, 4000, 500, '2017-09-25', 'Monday, 25 September 2017, 07:29:21.439 AM', '290596412'),
('java', 'java', 5, 700, 700, 3500, 4000, 500, '2017-09-25', 'Monday, 25 September 2017, 07:32:08.076 AM', '369411913');

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
('56546', '54654', 564654, 3085587920856),
('Diclofenac', 'AF', 100, 1500),
('fbfg', 'gbfgb', 54353, 246490855),
('gnhn', 'ghng', 5453, 2373979909),
('Ford', 'GT', 200, 154000),
('Nissan', 'GTR', 130, 113100),
('dfhgmhm', 'hgmghm', 543545, 23662688030),
('trgrtnhg', 'hgmgmgh', 4365346, 19794809858764),
('mjnhgn', 'hmjhmjh', 654, 2984856),
('hghn', 'hnghn', 564, 3081696),
('hrt', 'hrthr', 5454, 24733890),
('trhr', 'hthth', 54656, 3578000384),
('trhrt', 'hthyht', 5464, 29855296),
('java', 'java', 50, 35000),
('rgerhgrnj', 'jtyjtyjyt', 543645654, 2.970835397713716e15),
('Lamborghini', 'L', 230, 195500),
('hrhrt', 'mhj,jh', 435345, 19744201785),
('mmghm', 'mhjmhjm', 56456, 3085546224),
('hjmhjm', 'mjhhjm', 6456, 352788120),
('nhgnghn', 'nghnghn', 6565, 371349225),
('y454', 'nghnhg', 54654, 2494681830),
('435gbhgn', 'nghnhgn6', 54, 29376),
('ythyhnt', 'ntyntyn', 564564, 2577496617696),
('rgerg', 'regeg', 3435345, 1495560269025),
('etet', 'regerge', 543543, 2366042679),
('reert', 'regregher', 3534324, 11459487146808),
('bg', 'rgerge', 4324, 1393806808),
('htyhty', 'ththt', 544545, 2469511575),
('tjrtjrtjrt', 'tjrtjrt', 43543534, 1.895647461403156e15),
('tbtntyn', 'tntynt', 43453, 1891726355),
('trhtrht', 'trhrhr', 4535, 19745390),
('thrhtr', 'trhrhytj', 56464, 3086019875280),
('jytjt', 'tyjtyjt', 435345, 18952744575),
('htyh', 'yhyth54', 4545, 24747525),
('tytjyuj', 'ytjtyjy', 6567, 5023755),
('htyhty', 'ytjuyjuy', 4324, 18307816),
('yujyuj', 'yujyuj', 6565, 44412225);

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
(9876543, 'urber', 'jay', NULL, 80, NULL, 80, 'Monday, 25 September 2017, 01:20:34.484 AM'),
(32145687, 'Afya', '4444', NULL, 6000, 500, 5500, 'Friday, 22 September 2017, 02:23:26.233 PM'),
(45678987, 'java', 'java', NULL, 70, NULL, 70, 'Monday, 25 September 2017, 01:19:41.371 AM'),
(87654321, 'TechTest', '2222', 'd9f9133fb120cd6096870bc2b496805b', 20000, 5200, 14800, 'Thursday, 21 September 2017, 05:23:37.025 PM'),
(89009766, 'jay', 'yaj', NULL, 7, NULL, 7, 'Monday, 25 September 2017, 01:21:35.766 AM');

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
