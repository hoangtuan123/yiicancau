-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2016 at 06:06 PM
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
CREATE DATABASE IF NOT EXISTS `databasecancau` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `databasecancau`;

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
(1, 'Menu-1', 0, 1),
(2, 'Menu-2', 0, 1),
(3, 'Menu-3', 0, 1);

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

INSERT INTO `usermenber` (`username`, `password`, `displayname`, `email`, `birthday`, `insertdate`, `image`, `role`) VALUES
('admin', 'admin', 'admin', 'admin@gmail.com', '2016-04-01', '2016-04-01', '/images/admin.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'table', 'as', '{"quick_or_custom":"quick","what":"sql","allrows":"1","output_format":"sendit","filename_template":"@TABLE@","remember_template":"on","charset":"utf-8","compression":"none","maxsize":"","codegen_structure_or_data":"data","codegen_format":"0","csv_separator":",","csv_enclosed":"\\"","csv_escaped":"\\"","csv_terminated":"AUTO","csv_null":"NULL","csv_structure_or_data":"data","excel_null":"NULL","excel_edition":"win","excel_structure_or_data":"data","htmlword_structure_or_data":"structure_and_data","htmlword_null":"NULL","json_structure_or_data":"data","latex_caption":"something","latex_structure_or_data":"structure_and_data","latex_structure_caption":"Structure of table @TABLE@","latex_structure_continued_caption":"Structure of table @TABLE@ (continued)","latex_structure_label":"tab:@TABLE@-structure","latex_relation":"something","latex_comments":"something","latex_mime":"something","latex_columns":"something","latex_data_caption":"Content of table @TABLE@","latex_data_continued_caption":"Content of table @TABLE@ (continued)","latex_data_label":"tab:@TABLE@-data","latex_null":"\\\\textit{NULL}","mediawiki_structure_or_data":"data","mediawiki_caption":"something","mediawiki_headers":"something","ods_null":"NULL","ods_structure_or_data":"data","odt_structure_or_data":"structure_and_data","odt_relation":"something","odt_comments":"something","odt_mime":"something","odt_columns":"something","odt_null":"NULL","pdf_report_title":"","pdf_structure_or_data":"data","phparray_structure_or_data":"data","sql_include_comments":"something","sql_header_comment":"","sql_compatibility":"NONE","sql_structure_or_data":"structure_and_data","sql_create_table":"something","sql_auto_increment":"something","sql_create_view":"something","sql_procedure_function":"something","sql_create_trigger":"something","sql_backquotes":"something","sql_type":"INSERT","sql_insert_syntax":"both","sql_max_query_size":"50000","sql_hex_for_binary":"something","sql_utc_time":"something","texytext_structure_or_data":"structure_and_data","texytext_null":"NULL","xml_structure_or_data":"data","xml_export_events":"something","xml_export_functions":"something","xml_export_procedures":"something","xml_export_tables":"something","xml_export_triggers":"something","xml_export_views":"something","xml_export_contents":"something","yaml_structure_or_data":"data","":null,"lock_tables":null,"csv_removeCRLF":null,"csv_columns":null,"excel_removeCRLF":null,"excel_columns":null,"htmlword_columns":null,"json_pretty_print":null,"ods_columns":null,"sql_dates":null,"sql_relation":null,"sql_mime":null,"sql_use_transaction":null,"sql_disable_fk":null,"sql_views_as_tables":null,"sql_metadata":null,"sql_drop_table":null,"sql_if_not_exists":null,"sql_truncate":null,"sql_delayed":null,"sql_ignore":null,"texytext_columns":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"databasecancau","table":"usermenber"},{"db":"databasecancau","table":"linkhinh"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2016-04-20 03:18:39', '{"lang":"en_GB","collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
