-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2016 at 10:54 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `databasecancau`
--

-- --------------------------------------------------------

--
-- Table structure for table `linkhinh`
--

CREATE TABLE `linkhinh` (
  `MaSP` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `linkhinh`
--

INSERT INTO `linkhinh` (`MaSP`, `Link`, `caption`) VALUES
('00001', 'images/img/_14_1593.JPG', 'NFT'),
('00001', 'images/img/_14_1593.JPG', 'NFT'),
('00001', 'images/img/_14_1593.JPG', 'NFT'),
('00001', 'images/img/_14_1593.JPG', 'NFT');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `ID` int(10) NOT NULL,
  `Name` varchar(500) NOT NULL,
  `ParentID` int(10) NOT NULL,
  `Active` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`ID`, `Name`, `ParentID`, `Active`) VALUES
(1, 'OITM', 0, 1),
(2, 'OING', 0, 1),
(3, 'OITB', 0, 1),
(4, 'ORMC', 0, 1),
(5, 'SLIDER', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oing`
--

CREATE TABLE `oing` (
  `MaNganh` varchar(10) NOT NULL,
  `TenNganh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oing`
--

INSERT INTO `oing` (`MaNganh`, `TenNganh`) VALUES
('01', 'Máy câu'),
('02', 'Cần câu'),
('03', 'Dây câu'),
('04', 'Lưỡi'),
('05', 'Phụ kiện'),
('06', 'Thời trang'),
('07', 'Mồi giả');

-- --------------------------------------------------------

--
-- Table structure for table `oitb`
--

CREATE TABLE `oitb` (
  `MaLoai` varchar(10) NOT NULL,
  `TenLoai` varchar(255) NOT NULL,
  `MaNganh` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oitb`
--

INSERT INTO `oitb` (`MaLoai`, `TenLoai`, `MaNganh`) VALUES
('0101', 'Máy đứng', '01'),
('0102', 'Máy ngang', '01'),
('0201', 'Cần lure đứng', '02'),
('0202', 'Cần lure ngang', '02'),
('0203', 'Cần 2 khúc sông hồ', '02'),
('0204', 'Cần 3 khúc sông hồ', '02'),
('0205', 'Cần JIG biển', '02'),
('0206', 'Cần ISO', '02');

-- --------------------------------------------------------

--
-- Table structure for table `oitm`
--

CREATE TABLE `oitm` (
  `MaSP` varchar(10) DEFAULT NULL,
  `TenSP` varchar(255) DEFAULT NULL,
  `MaNganh` varchar(10) DEFAULT NULL,
  `MaLoai` varchar(10) DEFAULT NULL,
  `MaNhan` varchar(10) DEFAULT NULL,
  `TenNganh` varchar(255) DEFAULT NULL,
  `TenLoai` varchar(255) DEFAULT NULL,
  `TenNhan` varchar(255) DEFAULT NULL,
  `MaNguoiTao` varchar(255) DEFAULT NULL,
  `TenNguoiTao` varchar(255) DEFAULT NULL,
  `NgayTao` date DEFAULT NULL,
  `SuDung` varchar(255) DEFAULT NULL,
  `TinhTrang` varchar(255) DEFAULT NULL,
  `TenVietTat` varchar(255) DEFAULT NULL,
  `MoTa` varchar(255) DEFAULT NULL,
  `Mau` varchar(10) DEFAULT NULL,
  `QLTonKho` varchar(10) DEFAULT NULL,
  `QLSerial` varchar(10) DEFAULT NULL,
  `MaNCC` varchar(10) DEFAULT NULL,
  `TenNCC` varchar(10) DEFAULT NULL,
  `Link` varchar(255) DEFAULT NULL,
  `HinhAnh` varchar(255) DEFAULT NULL,
  `ChieuDai` varchar(50) DEFAULT NULL,
  `CanNang` varchar(50) DEFAULT NULL,
  `DoSau` varchar(50) DEFAULT NULL,
  `Lure` varchar(50) DEFAULT NULL,
  `Line` varchar(50) DEFAULT NULL,
  `PE` varchar(50) DEFAULT NULL,
  `Ring` varchar(50) DEFAULT NULL,
  `Hook` varchar(50) DEFAULT NULL,
  `SoKhoen` varchar(50) DEFAULT NULL,
  `Khoen` varchar(50) DEFAULT NULL,
  `Blank` varchar(50) DEFAULT NULL,
  `Bu` varchar(50) DEFAULT NULL,
  `Pat` varchar(50) DEFAULT NULL,
  `Tua` varchar(50) DEFAULT NULL,
  `Thang` varchar(50) DEFAULT NULL,
  `BacDan` varchar(50) DEFAULT NULL,
  `CongNghe` varchar(50) DEFAULT NULL,
  `Size` varchar(50) DEFAULT NULL,
  `LoaiDay` varchar(50) DEFAULT NULL,
  `Gia` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oitm`
--

INSERT INTO `oitm` (`MaSP`, `TenSP`, `MaNganh`, `MaLoai`, `MaNhan`, `TenNganh`, `TenLoai`, `TenNhan`, `MaNguoiTao`, `TenNguoiTao`, `NgayTao`, `SuDung`, `TinhTrang`, `TenVietTat`, `MoTa`, `Mau`, `QLTonKho`, `QLSerial`, `MaNCC`, `TenNCC`, `Link`, `HinhAnh`, `ChieuDai`, `CanNang`, `DoSau`, `Lure`, `Line`, `PE`, `Ring`, `Hook`, `SoKhoen`, `Khoen`, `Blank`, `Bu`, `Pat`, `Tua`, `Thang`, `BacDan`, `CongNghe`, `Size`, `LoaiDay`, `Gia`) VALUES
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL);
INSERT INTO `oitm` (`MaSP`, `TenSP`, `MaNganh`, `MaLoai`, `MaNhan`, `TenNganh`, `TenLoai`, `TenNhan`, `MaNguoiTao`, `TenNguoiTao`, `NgayTao`, `SuDung`, `TinhTrang`, `TenVietTat`, `MoTa`, `Mau`, `QLTonKho`, `QLSerial`, `MaNCC`, `TenNCC`, `Link`, `HinhAnh`, `ChieuDai`, `CanNang`, `DoSau`, `Lure`, `Line`, `PE`, `Ring`, `Hook`, `SoKhoen`, `Khoen`, `Blank`, `Bu`, `Pat`, `Tua`, `Thang`, `BacDan`, `CongNghe`, `Size`, `LoaiDay`, `Gia`) VALUES
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL),
('00001', 'NFT Super 60 - 300', '02', '0204', 'NFT', 'Cần câu', 'Cần 3 khúc sông hồ', 'NFT', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NFT Super 60 -300', 'NULL', 'Trắng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1593.JPG', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', NULL, NULL),
('00002', 'Daiwa T3 MX', '01', '0102', 'Dai', 'Máy câu', 'Máy ngang', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Đen', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1594.JPG', 'NULL', 'NULL', '190', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '8.1:1', '5kg', '7', 'NULL', 'NULL', NULL, NULL),
('00003', 'Daiwa Emblem 5000C', '01', '0101', 'Dai', 'Máy câu', 'Máy đứng', 'Daiwa', 'user1', 'Tuấn', '2016-04-12', 'A', '90%', 'NULL', 'NULL', 'Bạc, vàng', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1595.JPG', 'NULL', 'NULL', '240', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '4.8:1', '7kg', '6', 'NULL', 'NULL', NULL, NULL),
('00004', 'Rebar X8', '03', '0301', 'Reb', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2016-04-12', 'NULL', 'NULL', 'NULL', 'NULL', '5 màu', '1', 'NULL', 'NULL', NULL, 'images/img/_14_1596.JPG', 'NULL', '100m', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', '2.0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ormc`
--

CREATE TABLE `ormc` (
  `MaNhan` varchar(10) NOT NULL,
  `TenNhan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ormc`
--

INSERT INTO `ormc` (`MaNhan`, `TenNhan`) VALUES
('00001', 'nhan1');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `Caption` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Link` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Active` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`Caption`, `Link`, `Active`) VALUES
('Câu Cá 1', 'images/1.png', 'A'),
('Câu Cá 2', 'images/2.png', 'B'),
('Câu Cá 3', 'images/Untitled1111.png', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `usermenber`
--

CREATE TABLE `usermenber` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `displayname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `insertdate` date DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usermenber`
--

INSERT INTO `usermenber` (`id`, `username`, `password`, `displayname`, `email`, `birthday`, `insertdate`, `image`, `role`) VALUES
(1, 'admin', 'admin', 'Nguyễn Hoàng Tuấn', 'admin@gmail.com', '2016-04-01', '2016-04-01', '/images/admin.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `usermenber`
--
ALTER TABLE `usermenber`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `usermenber`
--
ALTER TABLE `usermenber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
