-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 12, 2021 at 11:48 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_uts_ketir`
--

-- --------------------------------------------------------

--
-- Table structure for table `disiplin`
--

CREATE TABLE `disiplin` (
  `klasifikasi` varchar(50) DEFAULT NULL COMMENT 'klasifikasi disiplin',
  `kode` varchar(2) NOT NULL DEFAULT '' COMMENT 'Kode disiplin'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `disiplin`
--

INSERT INTO `disiplin` (`klasifikasi`, `kode`) VALUES
('Sangat Kurang', 'E1'),
('Kurang', 'E2'),
('Cukup', 'E3'),
('Baik', 'E4'),
('Sangat Baik', 'E5');

-- --------------------------------------------------------

--
-- Table structure for table `ide`
--

CREATE TABLE `ide` (
  `klasifikasi` varchar(50) DEFAULT NULL COMMENT 'klasifikasi ide',
  `kode` varchar(2) NOT NULL DEFAULT '' COMMENT 'Kode ide'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ide`
--

INSERT INTO `ide` (`klasifikasi`, `kode`) VALUES
('Sangat Kurang', 'H1'),
('Kurang', 'H2'),
('Cukup', 'H3'),
('Baik', 'H4'),
('Sangat Baik', 'H5');

-- --------------------------------------------------------

--
-- Table structure for table `inisiatif`
--

CREATE TABLE `inisiatif` (
  `klasifikasi` varchar(50) DEFAULT NULL COMMENT 'klasifikasi inisiatif',
  `kode` varchar(2) NOT NULL DEFAULT '' COMMENT 'Kode inisiatif'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `inisiatif`
--

INSERT INTO `inisiatif` (`klasifikasi`, `kode`) VALUES
('Sangat Kurang', 'F1'),
('Kurang', 'F2'),
('Cukup', 'F3'),
('Baik', 'F4'),
('Sangat Baik', 'F5');

-- --------------------------------------------------------

--
-- Table structure for table `kematangan`
--

CREATE TABLE `kematangan` (
  `klasifikasi` varchar(50) DEFAULT NULL COMMENT 'klasifikasi kematangan',
  `kode` varchar(2) NOT NULL DEFAULT '' COMMENT 'Kode kematangan'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kematangan`
--

INSERT INTO `kematangan` (`klasifikasi`, `kode`) VALUES
('Sangat Kurang', 'D1'),
('Kurang', 'D2'),
('Cukup', 'D3'),
('Baik', 'D4'),
('Sangat Baik', 'D5');

-- --------------------------------------------------------

--
-- Table structure for table `kerjasama`
--

CREATE TABLE `kerjasama` (
  `klasifikasi` varchar(50) DEFAULT NULL COMMENT 'klasifikasi kerjasama',
  `kode` varchar(2) NOT NULL DEFAULT '' COMMENT 'Kode Kerjasama'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kerjasama`
--

INSERT INTO `kerjasama` (`klasifikasi`, `kode`) VALUES
('Sangat Kurang', 'C1'),
('Kurang', 'C2'),
('Cukup', 'C3'),
('Baik', 'C4'),
('Sangat Baik', 'C5');

-- --------------------------------------------------------

--
-- Table structure for table `kinerja`
--

CREATE TABLE `kinerja` (
  `klasifikasi` varchar(50) DEFAULT NULL COMMENT 'klasifikasi kinerja',
  `kode` varchar(2) NOT NULL DEFAULT '' COMMENT 'Kode kinerja'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kinerja`
--

INSERT INTO `kinerja` (`klasifikasi`, `kode`) VALUES
('Sangat Kurang', 'Z1'),
('Kurang', 'Z2'),
('Cukup', 'Z3'),
('Baik', 'Z4'),
('Sangat Baik', 'Z5');

-- --------------------------------------------------------

--
-- Table structure for table `komunikasi`
--

CREATE TABLE `komunikasi` (
  `klasifikasi` varchar(50) DEFAULT NULL COMMENT 'klasifikasi komunikasi',
  `kode` varchar(2) NOT NULL DEFAULT '' COMMENT 'Kode komunikasi'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `komunikasi`
--

INSERT INTO `komunikasi` (`klasifikasi`, `kode`) VALUES
('Sangat Kurang', 'J1'),
('Kurang', 'J2'),
('Cukup', 'J3'),
('Baik', 'J4'),
('Sangat Baik', 'J5');

-- --------------------------------------------------------

--
-- Table structure for table `loyalitas`
--

CREATE TABLE `loyalitas` (
  `klasifikasi` varchar(50) DEFAULT NULL COMMENT 'klasifikasi loyalitas',
  `kode` varchar(2) NOT NULL DEFAULT '' COMMENT 'Kode loyalitas'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `loyalitas`
--

INSERT INTO `loyalitas` (`klasifikasi`, `kode`) VALUES
('Sangat Kurang', 'G1'),
('Kurang', 'G2'),
('Cukup', 'G3'),
('Baik', 'G4'),
('Sangat Baik', 'G5');

-- --------------------------------------------------------

--
-- Table structure for table `managerial`
--

CREATE TABLE `managerial` (
  `klasifikasi` varchar(50) DEFAULT NULL COMMENT 'klasifikasi managerial',
  `kode` varchar(2) NOT NULL DEFAULT '' COMMENT 'Kode managerial'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `managerial`
--

INSERT INTO `managerial` (`klasifikasi`, `kode`) VALUES
('Sangat Kurang', 'I1'),
('Kurang', 'I2'),
('Cukup', 'I3'),
('Baik', 'I4'),
('Sangat Baik', 'I5');

-- --------------------------------------------------------

--
-- Table structure for table `prestasi_kerja`
--

CREATE TABLE `prestasi_kerja` (
  `klasifikasi` varchar(50) DEFAULT NULL COMMENT 'klasifikasi prestasi kerja',
  `kode` varchar(2) NOT NULL DEFAULT '' COMMENT 'Kode Prestasi'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestasi_kerja`
--

INSERT INTO `prestasi_kerja` (`klasifikasi`, `kode`) VALUES
('Sangat Kurang', 'A1'),
('Kurang', 'A2'),
('Cukup', 'A3'),
('Baik', 'A4'),
('Sangat Baik', 'A5');

-- --------------------------------------------------------

--
-- Table structure for table `sikap_kerja`
--

CREATE TABLE `sikap_kerja` (
  `klasifikasi` varchar(50) DEFAULT NULL COMMENT 'klasifikasi sikap',
  `kode` varchar(2) NOT NULL DEFAULT '' COMMENT 'Kode sikap'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `sikap_kerja`
--

INSERT INTO `sikap_kerja` (`klasifikasi`, `kode`) VALUES
('Sangat Kurang', 'B1'),
('Kurang', 'B2'),
('Cukup', 'B3'),
('Baik', 'B4'),
('Sangat Baik', 'B5');

-- --------------------------------------------------------

--
-- Table structure for table `training`
--

CREATE TABLE `training` (
  `no` int(2) NOT NULL,
  `NIK` varchar(15) DEFAULT NULL COMMENT 'NIK',
  `A` varchar(2) DEFAULT NULL COMMENT 'prestasi kerja',
  `B` varchar(2) DEFAULT NULL COMMENT 'sikap kerja',
  `C` varchar(2) DEFAULT NULL COMMENT 'kerjasama',
  `D` varchar(2) DEFAULT NULL COMMENT 'kematangan',
  `E` varchar(2) DEFAULT NULL COMMENT 'disiplin',
  `F` varchar(2) DEFAULT NULL COMMENT 'inisiatif',
  `G` varchar(2) DEFAULT NULL COMMENT 'loyalitas',
  `H` varchar(2) DEFAULT NULL COMMENT 'ide',
  `I` varchar(2) DEFAULT NULL COMMENT 'managerial',
  `J` varchar(2) DEFAULT NULL COMMENT 'komunikasi',
  `Z` varchar(2) DEFAULT NULL COMMENT 'kinerja (TARGET)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `training`
--

INSERT INTO `training` (`no`, `NIK`, `A`, `B`, `C`, `D`, `E`, `F`, `G`, `H`, `I`, `J`, `Z`) VALUES
(1, 'U1912001', 'A3', 'B2', 'C2', 'D1', 'E2', 'F2', 'G2', 'H3', 'I3', 'J2', 'Z1'),
(2, 'U1912005', 'A5', 'B5', 'C4', 'D4', 'E5', 'F4', 'G4', 'H5', 'I5', 'J4', 'Z5'),
(3, 'U1912006', 'A4', 'B5', 'C5', 'D3', 'E3', 'F4', 'G4', 'H2', 'I3', 'J2', 'Z4'),
(4, 'U1912007', 'A3', 'B4', 'C3', 'D2', 'E3', 'F4', 'G3', 'H3', 'I3', 'J2', 'Z2'),
(5, 'U1912017', 'A5', 'B4', 'C5', 'D5', 'E5', 'F5', 'G5', 'H5', 'I4', 'J5', 'Z5'),
(6, 'U1912013', 'A4', 'B3', 'C4', 'D4', 'E5', 'F2', 'G3', 'H4', 'I2', 'J4', 'Z4'),
(7, 'U1912016', 'A4', 'B3', 'C3', 'D4', 'E3', 'F4', 'G4', 'H3', 'I3', 'J3', 'Z3'),
(8, 'U1912009', 'A2', 'B3', 'C3', 'D2', 'E3', 'F3', 'G1', 'H2', 'I2', 'J1', 'Z1'),
(9, 'TNG1906025', 'A5', 'B4', 'C4', 'D3', 'E4', 'F3', 'G2', 'H4', 'I1', 'J2', 'Z3'),
(10, 'U1912010', 'A5', 'B4', 'C3', 'D2', 'E4', 'F3', 'G5', 'H3', 'I4', 'J3', 'Z4'),
(11, 'TNG1906043', 'A5', 'B5', 'C4', 'D3', 'E4', 'F4', 'G4', 'H3', 'I2', 'J4', 'Z4'),
(12, 'TNG1906051', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(13, 'TNG1906054', 'A5', 'B4', 'C4', 'D4', 'E3', 'F3', 'G5', 'H2', 'I4', 'J3', 'Z4'),
(14, 'TNG1906057', 'A5', 'B5', 'C3', 'D4', 'E4', 'F2', 'G5', 'H4', 'I3', 'J2', 'Z4'),
(15, 'TNG1906030', 'A4', 'B3', 'C4', 'D3', 'E4', 'F3', 'G2', 'H3', 'I3', 'J3', 'Z3'),
(16, 'BPB00HL529', 'A4', 'B4', 'C4', 'D4', 'E3', 'F4', 'G4', 'H4', 'I1', 'J3', 'Z3'),
(17, 'U1912002', 'A5', 'B4', 'C5', 'D4', 'E5', 'F5', 'G5', 'H5', 'I5', 'J4', 'Z5'),
(18, 'BPB00HL536', 'A4', 'B3', 'C3', 'D4', 'E4', 'F3', 'G2', 'H3', 'I1', 'J2', 'Z3'),
(19, 'TNG1906038', 'A5', 'B4', 'C4', 'D3', 'E4', 'F3', 'G4', 'H4', 'I1', 'J2', 'Z3'),
(20, 'BPB00HL510', 'A4', 'B3', 'C4', 'D4', 'E3', 'F4', 'G2', 'H4', 'I3', 'J2', 'Z3'),
(21, 'BPB00HL521', 'A4', 'B4', 'C3', 'D3', 'E4', 'F4', 'G2', 'H4', 'I1', 'J3', 'Z3'),
(22, 'BPB00HL443', 'A4', 'B4', 'C3', 'D3', 'E3', 'F4', 'G4', 'H4', 'I1', 'J2', 'Z3'),
(23, 'TNG19060004', 'A4', 'B3', 'C4', 'D3', 'E4', 'F3', 'G2', 'H4', 'I3', 'J3', 'Z3'),
(24, 'BPB00HL155', 'A3', 'B3', 'C3', 'D1', 'E3', 'F2', 'G1', 'H3', 'I3', 'J2', 'Z1'),
(25, 'BPB00HL537', 'A4', 'B3', 'C4', 'D3', 'E5', 'F4', 'G4', 'H4', 'I2', 'J2', 'Z4'),
(26, 'BPB00HL541', 'A5', 'B3', 'C4', 'D3', 'E3', 'F4', 'G2', 'H3', 'I3', 'J3', 'Z3'),
(27, 'BPB00HL542', 'A4', 'B3', 'C4', 'D3', 'E4', 'F3', 'G2', 'H4', 'I3', 'J3', 'Z3'),
(28, 'U1912015', 'A5', 'B4', 'C5', 'D4', 'E5', 'F5', 'G5', 'H5', 'I4', 'J5', 'Z5'),
(29, 'U1912011', 'A5', 'B4', 'C4', 'D3', 'E4', 'F3', 'G4', 'H4', 'I3', 'J2', 'Z3'),
(30, 'TNG1906052', 'A4', 'B4', 'C3', 'D4', 'E3', 'F4', 'G4', 'H3', 'I1', 'J3', 'Z3'),
(31, 'BPB00HL96', 'A2', 'B2', 'C2', 'D2', 'E2', 'F2', 'G2', 'H3', 'I2', 'J2', 'Z1'),
(32, 'TNG1906045', 'A4', 'B3', 'C3', 'D2', 'E3', 'F3', 'G3', 'H4', 'I3', 'J3', 'Z3'),
(33, 'U1912003', 'A5', 'B4', 'C5', 'D4', 'E5', 'F5', 'G5', 'H5', 'I5', 'J5', 'Z5'),
(34, 'TNG1906035', 'A4', 'B4', 'C4', 'D3', 'E4', 'F3', 'G4', 'H4', 'I1', 'J2', 'Z3'),
(35, 'U1912008', 'A5', 'B4', 'C5', 'D4', 'E5', 'F5', 'G5', 'H5', 'I4', 'J4', 'Z5'),
(36, 'TNG1906032', 'A2', 'B3', 'C3', 'D2', 'E3', 'F2', 'G2', 'H2', 'I2', 'J2', 'Z1'),
(37, 'TNG1906041', 'A4', 'B4', 'C3', 'D4', 'E3', 'F3', 'G2', 'H3', 'I3', 'J3', 'Z3'),
(38, 'U1912014', 'A3', 'B2', 'C2', 'D1', 'E3', 'F2', 'G1', 'H3', 'I3', 'J1', 'Z1'),
(39, 'U1912018', 'A5', 'B4', 'C4', 'D3', 'E4', 'F3', 'G4', 'H4', 'I1', 'J2', 'Z3'),
(40, 'TNG1906033', 'A4', 'B4', 'C4', 'D4', 'E3', 'F4', 'G2', 'H4', 'I3', 'J3', 'Z3'),
(41, 'U1912019', 'A3', 'B4', 'C2', 'D3', 'E3', 'F4', 'G2', 'H3', 'I2', 'J3', 'Z2'),
(42, 'U1912012', 'A5', 'B4', 'C4', 'D3', 'E4', 'F3', 'G4', 'H4', 'I1', 'J3', 'Z3'),
(43, 'TNG1906059', 'A2', 'B3', 'C3', 'D2', 'E2', 'F2', 'G2', 'H3', 'I3', 'J2', 'Z1'),
(44, 'BPB00HL556', 'A5', 'B4', 'C3', 'D4', 'E4', 'F4', 'G4', 'H4', 'I3', 'J4', 'Z3'),
(45, 'BPB0029', 'A4', 'B3', 'C4', 'D4', 'E4', 'F4', 'G2', 'H4', 'I3', 'J2', 'Z3'),
(46, 'BPB0045', 'A4', 'B5', 'C4', 'D3', 'E4', 'F3', 'G5', 'H4', 'I4', 'J3', 'Z4'),
(47, 'BPB0099', 'A5', 'B4', 'C5', 'D3', 'E3', 'F4', 'G4', 'H4', 'I2', 'J4', 'Z4'),
(48, 'BPB0168', 'A5', 'B5', 'C4', 'D3', 'E4', 'F4', 'G4', 'H3', 'I2', 'J4', 'Z4'),
(49, 'BPB0050', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(50, 'BPB0186', 'A5', 'B4', 'C3', 'D4', 'E4', 'F4', 'G4', 'H4', 'I3', 'J4', 'Z3'),
(51, 'BPB0126', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(52, 'BPB0008', 'A5', 'B4', 'C5', 'D4', 'E5', 'F5', 'G5', 'H5', 'I4', 'J4', 'Z5'),
(53, 'BPB0025', 'A5', 'B4', 'C4', 'D3', 'E4', 'F3', 'G4', 'H4', 'I1', 'J2', 'Z3'),
(54, 'BPB00133', 'A5', 'B5', 'C4', 'D3', 'E4', 'F4', 'G4', 'H3', 'I2', 'J4', 'Z4'),
(55, 'BPB0137', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(56, 'BPB0097', 'A5', 'B4', 'C4', 'D4', 'E3', 'F3', 'G5', 'H2', 'I4', 'J3', 'Z4'),
(57, 'BPB0112', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(58, 'BPB0120', 'A4', 'B4', 'C4', 'D4', 'E4', 'F4', 'G4', 'H4', 'I4', 'J3', 'Z4'),
(59, 'BPB0130', 'A5', 'B5', 'C4', 'D3', 'E4', 'F4', 'G4', 'H3', 'I2', 'J4', 'Z4'),
(60, 'BPB0038', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(61, 'BPB0156', 'A5', 'B4', 'C4', 'D4', 'E3', 'F3', 'G5', 'H2', 'I4', 'J3', 'Z4'),
(62, 'BPB0041', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(63, 'BPB0102', 'A4', 'B4', 'C4', 'D4', 'E4', 'F4', 'G4', 'H4', 'I4', 'J3', 'Z4'),
(64, 'BPB0059', 'A5', 'B5', 'C4', 'D3', 'E4', 'F4', 'G4', 'H3', 'I2', 'J4', 'Z4'),
(65, 'BPB0040', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(66, 'BPB0072', 'A5', 'B4', 'C4', 'D4', 'E3', 'F3', 'G5', 'H2', 'I4', 'J3', 'Z4'),
(67, 'BPB0034', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(68, 'BPB0052', 'A5', 'B5', 'C4', 'D3', 'E4', 'F4', 'G4', 'H3', 'I2', 'J4', 'Z4'),
(69, 'BPB0055', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(70, 'BPB0108', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(71, 'BPB0043', 'A4', 'B4', 'C4', 'D4', 'E4', 'F4', 'G4', 'H4', 'I4', 'J3', 'Z4'),
(72, 'BPB0005', 'A5', 'B5', 'C4', 'D3', 'E4', 'F4', 'G4', 'H3', 'I2', 'J4', 'Z4'),
(73, 'BPB0061', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(74, 'BPB0027', 'A5', 'B4', 'C4', 'D4', 'E3', 'F3', 'G5', 'H2', 'I4', 'J3', 'Z4'),
(75, 'BPB0118', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(76, 'BPB0065', 'A4', 'B4', 'C4', 'D4', 'E4', 'F4', 'G4', 'H4', 'I4', 'J3', 'Z4'),
(77, 'BPB0186', 'A5', 'B5', 'C4', 'D3', 'E4', 'F4', 'G4', 'H3', 'I2', 'J4', 'Z4'),
(78, 'BPB00HL509', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(79, 'BPB0162', 'A5', 'B4', 'C4', 'D4', 'E3', 'F3', 'G5', 'H2', 'I4', 'J3', 'Z4'),
(80, 'BPB0071', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(81, 'BPB0030', 'A4', 'B4', 'C4', 'D4', 'E4', 'F4', 'G4', 'H4', 'I4', 'J3', 'Z4'),
(82, 'BPB0056', 'A4', 'B4', 'C4', 'D4', 'E4', 'F4', 'G4', 'H4', 'I4', 'J3', 'Z4'),
(83, 'BPB0046', 'A5', 'B5', 'C4', 'D3', 'E4', 'F4', 'G4', 'H3', 'I2', 'J4', 'Z4'),
(84, 'BPB0116', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(85, 'BPB0006', 'A5', 'B4', 'C4', 'D4', 'E3', 'F3', 'G5', 'H2', 'I4', 'J3', 'Z4'),
(86, 'BPB0106', 'A4', 'B4', 'C4', 'D4', 'E4', 'F4', 'G4', 'H4', 'I4', 'J3', 'Z4'),
(87, 'BPB0089', 'A5', 'B4', 'C5', 'D4', 'E5', 'F5', 'G5', 'H5', 'I5', 'J4', 'Z5'),
(88, 'BPB00119', 'A5', 'B4', 'C5', 'D4', 'E5', 'F5', 'G5', 'H5', 'I4', 'J4', 'Z5'),
(89, 'BPB0154', 'A4', 'B4', 'C4', 'D4', 'E4', 'F4', 'G4', 'H4', 'I4', 'J3', 'Z4'),
(90, 'BPB0177', 'A5', 'B5', 'C4', 'D3', 'E4', 'F4', 'G4', 'H3', 'I2', 'J4', 'Z4'),
(91, 'BPB00HL708', 'A3', 'B3', 'C3', 'D1', 'E3', 'F2', 'G1', 'H3', 'I3', 'J2', 'Z1'),
(92, 'BPB00HL710', 'A5', 'B5', 'C4', 'D3', 'E4', 'F4', 'G4', 'H3', 'I2', 'J4', 'Z4'),
(93, 'BPB00HL711', 'A2', 'B2', 'C2', 'D2', 'E2', 'F2', 'G2', 'H3', 'I2', 'J2', 'Z1'),
(94, 'BPB00HL714', 'A4', 'B3', 'C4', 'D3', 'E4', 'F3', 'G2', 'H4', 'I3', 'J3', 'Z3'),
(95, 'BPB00HL715', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(96, 'BPB00HL717', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(97, 'BPB00HL718', 'A4', 'B4', 'C4', 'D4', 'E3', 'F4', 'G4', 'H4', 'I1', 'J3', 'Z3'),
(98, 'BPB00HL719', 'A4', 'B4', 'C4', 'D4', 'E4', 'F4', 'G4', 'H4', 'I4', 'J3', 'Z4'),
(99, 'BPB00HL720', 'A5', 'B4', 'C3', 'D4', 'E4', 'F3', 'G2', 'H4', 'I3', 'J2', 'Z3'),
(100, 'BPB00HL721', 'A3', 'B3', 'C3', 'D1', 'E3', 'F2', 'G1', 'H3', 'I3', 'J2', 'Z1'),
(101, 'BPB00HL722', 'A3', 'B4', 'C2', 'D3', 'E3', 'F4', 'G2', 'H3', 'I2', 'J3', 'Z2'),
(102, 'BPB00HL723', 'A4', 'B3', 'C4', 'D3', 'E4', 'F3', 'G2', 'H4', 'I3', 'J3', 'Z3'),
(103, 'BPB00HL724', 'A4', 'B3', 'C3', 'D2', 'E3', 'F3', 'G3', 'H4', 'I3', 'J3', 'Z3'),
(104, 'BPB00HL725', 'A4', 'B3', 'C3', 'D2', 'E3', 'F3', 'G3', 'H4', 'I3', 'J3', 'Z3'),
(105, 'BPB00HL727', 'A5', 'B4', 'C3', 'D4', 'E4', 'F3', 'G2', 'H4', 'I3', 'J2', 'Z3'),
(106, 'U1912040', 'A3', 'B4', 'C2', 'D3', 'E3', 'F4', 'G2', 'H3', 'I2', 'J3', 'Z2'),
(107, 'U1912041', 'A4', 'B4', 'C4', 'D4', 'E3', 'F4', 'G4', 'H4', 'I1', 'J3', 'Z3'),
(108, 'U1912042', 'A3', 'B4', 'C2', 'D3', 'E3', 'F4', 'G2', 'H3', 'I2', 'J3', 'Z2'),
(109, 'U1912044', 'A4', 'B4', 'C4', 'D4', 'E3', 'F4', 'G2', 'H4', 'I3', 'J3', 'Z3'),
(110, 'U1912045', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(111, 'U1912046', 'A5', 'B4', 'C4', 'D4', 'E3', 'F3', 'G5', 'H2', 'I4', 'J3', 'Z4'),
(112, 'U1912047', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(113, 'U1912048', 'A4', 'B4', 'C4', 'D4', 'E4', 'F4', 'G4', 'H4', 'I4', 'J3', 'Z4'),
(114, 'U1912049', 'A2', 'B2', 'C2', 'D2', 'E2', 'F2', 'G2', 'H3', 'I2', 'J2', 'Z1'),
(115, 'U1912050', 'A4', 'B4', 'C4', 'D4', 'E4', 'F4', 'G4', 'H4', 'I4', 'J3', 'Z4'),
(116, 'U1912051', 'A3', 'B4', 'C2', 'D3', 'E3', 'F4', 'G2', 'H3', 'I2', 'J3', 'Z2'),
(117, 'U1912053', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(118, 'U1912054', 'A4', 'B4', 'C4', 'D4', 'E4', 'F4', 'G4', 'H4', 'I4', 'J3', 'Z4'),
(119, 'U1912055', 'A3', 'B4', 'C2', 'D3', 'E3', 'F4', 'G2', 'H3', 'I2', 'J3', 'Z2'),
(120, 'U1912056', 'A4', 'B3', 'C3', 'D2', 'E3', 'F3', 'G3', 'H4', 'I3', 'J3', 'Z3'),
(121, 'U1912057', 'A4', 'B4', 'C4', 'D4', 'E3', 'F4', 'G4', 'H4', 'I1', 'J3', 'Z3'),
(122, 'U1912058', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(123, 'BPB00HL728', 'A3', 'B4', 'C2', 'D3', 'E3', 'F4', 'G2', 'H3', 'I2', 'J3', 'Z2'),
(124, 'BPB00HL729', 'A2', 'B2', 'C2', 'D2', 'E2', 'F2', 'G2', 'H3', 'I2', 'J2', 'Z1'),
(125, 'BPB00HL762', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(126, 'U1912061', 'A4', 'B3', 'C3', 'D2', 'E3', 'F3', 'G3', 'H4', 'I3', 'J3', 'Z3'),
(127, 'U1912062', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(128, 'U1912063', 'A5', 'B4', 'C4', 'D4', 'E3', 'F3', 'G5', 'H2', 'I4', 'J3', 'Z4'),
(129, 'U1912064', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(130, 'U1912065', 'A4', 'B4', 'C4', 'D4', 'E4', 'F4', 'G4', 'H4', 'I4', 'J3', 'Z4'),
(131, 'U1912066', 'A3', 'B4', 'C2', 'D3', 'E3', 'F4', 'G2', 'H3', 'I2', 'J3', 'Z2'),
(132, 'U1912067', 'A5', 'B4', 'C4', 'D4', 'E3', 'F3', 'G5', 'H2', 'I4', 'J3', 'Z4'),
(133, 'U1912068', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(134, 'U1912069', 'A3', 'B4', 'C2', 'D3', 'E3', 'F4', 'G2', 'H3', 'I2', 'J3', 'Z2'),
(135, 'U1912071', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(136, 'BPB00HL731', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(137, 'BPB00HL732', 'A4', 'B4', 'C4', 'D4', 'E4', 'F4', 'G4', 'H4', 'I4', 'J3', 'Z4'),
(138, 'BPB00HL733', 'A3', 'B4', 'C2', 'D3', 'E3', 'F4', 'G2', 'H3', 'I2', 'J3', 'Z2'),
(139, 'BPB00HL734', 'A4', 'B3', 'C3', 'D2', 'E3', 'F3', 'G3', 'H4', 'I3', 'J3', 'Z3'),
(140, 'BPB00HL735', 'A3', 'B4', 'C2', 'D3', 'E3', 'F4', 'G2', 'H3', 'I2', 'J3', 'Z2'),
(141, 'BPB00HL736', 'A5', 'B4', 'C4', 'D4', 'E3', 'F3', 'G5', 'H2', 'I4', 'J3', 'Z4'),
(142, 'BPB00HL737', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(143, 'BPB00HL738', 'A4', 'B4', 'C4', 'D4', 'E4', 'F4', 'G4', 'H4', 'I4', 'J3', 'Z4'),
(144, 'BPB00HL739', 'A5', 'B4', 'C4', 'D3', 'E4', 'F3', 'G4', 'H4', 'I1', 'J2', 'Z3'),
(145, 'BPB00HL740', 'A4', 'B4', 'C4', 'D4', 'E3', 'F4', 'G2', 'H4', 'I3', 'J3', 'Z3'),
(146, 'BPB00HL741', 'A4', 'B4', 'C4', 'D4', 'E4', 'F4', 'G4', 'H4', 'I4', 'J3', 'Z4'),
(147, 'BPB00HL742', 'A4', 'B3', 'C3', 'D2', 'E3', 'F3', 'G3', 'H4', 'I3', 'J3', 'Z3'),
(148, 'BPB00HL743', 'A3', 'B4', 'C2', 'D3', 'E3', 'F4', 'G2', 'H3', 'I2', 'J3', 'Z2'),
(149, 'BPB00HL744', 'A5', 'B4', 'C4', 'D4', 'E3', 'F3', 'G5', 'H2', 'I4', 'J3', 'Z4'),
(150, 'BPB00HL745', 'A4', 'B3', 'C3', 'D2', 'E3', 'F3', 'G3', 'H4', 'I3', 'J3', 'Z3'),
(151, 'BPB00HL746', 'A5', 'B4', 'C4', 'D4', 'E3', 'F3', 'G5', 'H2', 'I4', 'J3', 'Z4'),
(152, 'BPB00HL747', 'A3', 'B4', 'C2', 'D3', 'E3', 'F4', 'G2', 'H3', 'I2', 'J3', 'Z2'),
(153, 'U1912088', 'A5', 'B4', 'C4', 'D4', 'E3', 'F3', 'G5', 'H2', 'I4', 'J3', 'Z4'),
(154, 'U1912072', 'A4', 'B3', 'C4', 'D3', 'E4', 'F3', 'G2', 'H4', 'I3', 'J3', 'Z3'),
(155, 'U1912073', 'A5', 'B4', 'C4', 'D4', 'E3', 'F3', 'G5', 'H2', 'I4', 'J3', 'Z4'),
(156, 'U1912074', 'A4', 'B3', 'C3', 'D2', 'E3', 'F3', 'G3', 'H4', 'I3', 'J3', 'Z3'),
(157, 'U1912075', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(158, 'U1912076', 'A4', 'B3', 'C3', 'D2', 'E3', 'F3', 'G3', 'H4', 'I3', 'J3', 'Z3'),
(159, 'U1912077', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(160, 'U1912078', 'A4', 'B4', 'C4', 'D4', 'E3', 'F4', 'G4', 'H4', 'I1', 'J3', 'Z3'),
(161, 'U1912079', 'A5', 'B4', 'C4', 'D4', 'E3', 'F3', 'G5', 'H2', 'I4', 'J3', 'Z4'),
(162, 'U1912080', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(163, 'U1912082', 'A3', 'B4', 'C2', 'D3', 'E3', 'F4', 'G2', 'H3', 'I2', 'J3', 'Z2'),
(164, 'BPB00HL748', 'A4', 'B3', 'C4', 'D3', 'E4', 'F3', 'G2', 'H4', 'I3', 'J3', 'Z3'),
(165, 'BPB00HL749', 'A5', 'B4', 'C4', 'D3', 'E4', 'F3', 'G4', 'H4', 'I1', 'J2', 'Z3'),
(166, 'BPB00HL750', 'A4', 'B4', 'C4', 'D4', 'E3', 'F4', 'G2', 'H4', 'I3', 'J3', 'Z3'),
(167, 'BPB00HL751', 'A4', 'B3', 'C3', 'D2', 'E3', 'F3', 'G3', 'H4', 'I3', 'J3', 'Z3'),
(168, 'BPB00HL752', 'A4', 'B4', 'C4', 'D4', 'E3', 'F4', 'G4', 'H4', 'I1', 'J3', 'Z3'),
(169, 'BPB00HL753', 'A4', 'B3', 'C3', 'D2', 'E3', 'F3', 'G3', 'H4', 'I3', 'J3', 'Z3'),
(170, 'BPB00HL754', 'A4', 'B3', 'C4', 'D3', 'E4', 'F3', 'G2', 'H4', 'I3', 'J3', 'Z3'),
(171, 'BPB00HL756', 'A3', 'B4', 'C2', 'D3', 'E3', 'F4', 'G2', 'H3', 'I2', 'J3', 'Z2'),
(172, 'BPB00HL757', 'A5', 'B4', 'C4', 'D4', 'E3', 'F3', 'G5', 'H2', 'I4', 'J3', 'Z4'),
(173, 'BPB00HL758', 'A5', 'B4', 'C3', 'D4', 'E4', 'F3', 'G2', 'H4', 'I3', 'J2', 'Z3'),
(174, 'BPB00HL759', 'A4', 'B4', 'C4', 'D4', 'E3', 'F4', 'G4', 'H4', 'I1', 'J3', 'Z3'),
(175, 'BPB00HL760', 'A4', 'B3', 'C4', 'D3', 'E4', 'F3', 'G2', 'H4', 'I3', 'J3', 'Z3'),
(176, 'BPB00HL761', 'A4', 'B3', 'C3', 'D2', 'E3', 'F3', 'G3', 'H4', 'I3', 'J3', 'Z3'),
(177, 'U1912087', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(178, 'U1912083', 'A5', 'B4', 'C4', 'D4', 'E3', 'F3', 'G5', 'H2', 'I4', 'J3', 'Z4'),
(179, 'U1912084', 'A4', 'B3', 'C5', 'D4', 'E5', 'F3', 'G3', 'H4', 'I4', 'J2', 'Z4'),
(180, 'U1912085', 'A4', 'B4', 'C4', 'D4', 'E4', 'F4', 'G4', 'H4', 'I4', 'J3', 'Z4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disiplin`
--
ALTER TABLE `disiplin`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `ide`
--
ALTER TABLE `ide`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `inisiatif`
--
ALTER TABLE `inisiatif`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `kematangan`
--
ALTER TABLE `kematangan`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `kerjasama`
--
ALTER TABLE `kerjasama`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `kinerja`
--
ALTER TABLE `kinerja`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `komunikasi`
--
ALTER TABLE `komunikasi`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `loyalitas`
--
ALTER TABLE `loyalitas`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `managerial`
--
ALTER TABLE `managerial`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `prestasi_kerja`
--
ALTER TABLE `prestasi_kerja`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `sikap_kerja`
--
ALTER TABLE `sikap_kerja`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `training`
--
ALTER TABLE `training`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `training`
--
ALTER TABLE `training`
  MODIFY `no` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
