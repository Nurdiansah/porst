-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 05, 2020 at 04:23 
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ekanuri`
--

-- --------------------------------------------------------

--
-- Table structure for table `actual_jobordertruck`
--

CREATE TABLE IF NOT EXISTS `actual_jobordertruck` (
`id_at` int(12) NOT NULL,
  `time_at` datetime NOT NULL,
  `deskripsi_cargo_at` text,
  `id_djotruck` int(12) NOT NULL,
  `id_jobordertruck` varchar(15) NOT NULL,
  `nm_company_at` varchar(50) DEFAULT NULL,
  `nm_barang_at` varchar(50) DEFAULT NULL,
  `nm_kegiatan_at` varchar(15) DEFAULT NULL,
  `production_at` varchar(15) DEFAULT NULL,
  `no_po_at` varchar(15) DEFAULT NULL,
  `p_cargo_at` decimal(6,2) NOT NULL,
  `l_cargo_at` decimal(6,2) NOT NULL,
  `t_cargo_at` decimal(6,2) NOT NULL,
  `volume_cargo_at` decimal(6,2) NOT NULL,
  `ton_cargo_at` decimal(6,2) NOT NULL,
  `revton_cargo_at` decimal(6,2) NOT NULL,
  `qty_cargo_at` int(11) NOT NULL,
  `satuan_cargo_at` varchar(15) DEFAULT NULL,
  `keterangan_at` varchar(50) DEFAULT NULL,
  `status_cargo_at` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actual_jobordertruck`
--

INSERT INTO `actual_jobordertruck` (`id_at`, `time_at`, `deskripsi_cargo_at`, `id_djotruck`, `id_jobordertruck`, `nm_company_at`, `nm_barang_at`, `nm_kegiatan_at`, `production_at`, `no_po_at`, `p_cargo_at`, `l_cargo_at`, `t_cargo_at`, `volume_cargo_at`, `ton_cargo_at`, `revton_cargo_at`, `qty_cargo_at`, `satuan_cargo_at`, `keterangan_at`, `status_cargo_at`) VALUES
(9, '2020-07-22 16:27:21', 'Offloading Medco', 1, 'JT00002', 'PT.ASW', 'Chemical', 'OFFLOADING', 'Production', '', '0.61', '0.63', '0.63', '1.92', '1.50', '1.92', 1, 'Unit', 'To Jetty', 1),
(10, '2020-07-22 16:27:28', 'Offloading Medco', 4, 'JT00002', 'PT.ABC', 'Pallet', 'OFFLOADING', 'Production', '0001', '0.61', '0.61', '0.61', '1.80', '1.00', '1.80', 1, 'Unit', 'To Jetty', 1),
(11, '2020-07-22 16:28:35', 'Offloading Medco', 3, 'JT00002', 'PT.ABC', 'Pallet', 'OFFLOADING', 'Production', '', '0.61', '0.62', '0.62', '1.86', '1.50', '1.86', 1, 'Unit', 'To Jetty', 1),
(12, '2020-07-22 16:30:10', 'Offloading Medco', 4, 'JT00002', 'PT.ABC', 'Pallet', 'OFFLOADING', 'Production', '0001', '1.22', '1.21', '1.22', '1.80', '1.00', '1.80', 1, 'Unit', 'To Jetty', 1),
(13, '2020-07-23 11:52:03', 'Offloading Medco', 1, 'JT00002', 'PT.ASW', 'Chemical', 'OFFLOADING', 'Production', '', '1.22', '1.25', '1.26', '1.92', '1.50', '1.92', 1, 'Unit', 'To Jetty', 1),
(14, '2020-07-23 11:52:10', 'Offloading Medco', 2, 'JT00002', 'PT. Labror', 'Pallet', 'OFFLOADING', 'Production', '', '0.63', '0.63', '0.25', '39.07', '25.00', '39.07', 50, 'Unit', 'To Jetty', 1),
(15, '2020-07-23 11:52:15', 'Offloading Medco', 3, 'JT00002', 'PT.ABC', 'Pallet', 'OFFLOADING', 'Production', '', '1.22', '1.23', '1.24', '1.86', '1.50', '1.86', 1, 'Unit', 'To Jetty', 1),
(16, '2020-07-23 11:52:22', 'Offloading Medco', 2, 'JT00002', 'PT. Labror', 'Pallet', 'OFFLOADING', 'Production', '', '1.25', '1.25', '0.50', '39.07', '25.00', '39.07', 50, 'Unit', 'To Jetty', 1),
(17, '2020-07-23 14:50:02', 'Offloading Premier', 5, 'JT00003', 'PT.ASW', 'Pallet', 'OFFLOADING', 'Production', '0001', '0.62', '0.60', '0.60', '1.77', '1.00', '1.77', 1, 'Unit', 'To Jetty', 1),
(18, '2020-07-23 15:04:36', 'Offloading Premier', 5, 'JT00003', 'PT.ASW', 'Pallet', 'OFFLOADING', 'Production', '0001', '1.23', '1.20', '1.20', '1.77', '1.00', '1.77', 1, 'Unit', 'To Warehouse', 1),
(19, '2020-07-23 15:49:16', 'Offloading Medco', 6, 'JT00001', 'PT.ASW', 'Pallet', 'OFFLOADING', 'Production', '0002', '0.24', '0.27', '0.29', '2.34', '3.60', '3.60', 1, 'Unit', 'To Jetty', 1),
(20, '2020-07-23 15:52:39', 'Offloading Medco', 6, 'JT00001', 'PT.ASW', 'Pallet', 'OFFLOADING', 'Production', '0002', '0.61', '0.67', '0.72', '4.67', '7.20', '7.20', 2, 'Unit', 'To Warehouse', 1),
(21, '2020-07-23 15:54:10', 'Offloading Medco', 6, 'JT00001', 'PT.ASW', 'Pallet', 'OFFLOADING', 'Production', '0002', '1.22', '1.33', '1.44', '4.67', '7.20', '7.20', 2, 'Unit', 'To Jetty', 1),
(22, '2020-07-23 15:56:45', 'Loading Medco', 7, 'JT00001', 'PT.ASW', 'Chemical', 'LOADING', 'Production', '0001', '0.30', '0.30', '0.30', '3.38', '2.40', '3.38', 1, 'Unit', 'From Warehouse', 1),
(23, '2020-07-23 17:55:23', 'Loading Medco', 7, 'JT00001', 'PT.ASW', 'Chemical', 'LOADING', 'Production', '0001', '0.75', '0.75', '0.75', '6.75', '4.80', '6.75', 2, 'Unit', 'From Jetty', 1),
(24, '2020-07-23 17:55:51', 'Loading Medco', 7, 'JT00001', 'PT.ASW', 'Chemical', 'LOADING', 'Production', '0001', '1.50', '1.50', '1.50', '6.75', '4.80', '6.75', 2, 'Unit', 'From Jetty', 1),
(25, '2020-07-27 12:45:29', 'Offloading Medco', 8, 'JT00001', 'PT.ABC', 'Chemical', 'OFFLOADING', 'Production', '0003', '1.22', '1.22', '1.22', '1.82', '1.00', '1.82', 1, 'Unit', 'To Jetty', 1),
(26, '2020-07-27 12:46:06', 'Offloading Medco', 9, 'JT00001', 'PT.ABC', 'Chemical Drum', 'OFFLOADING', 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.30', '1.73', 1, 'Pallet', 'To Jetty', 1),
(27, '2020-07-27 12:46:27', 'Offloading Medco', 9, 'JT00001', 'PT.ABC', 'Chemical Drum', 'OFFLOADING', 'Production', '0001', '1.20', '1.20', '1.20', '3.46', '2.60', '3.46', 2, 'Pallet', 'To Jetty', 1),
(28, '2020-07-27 12:47:24', 'Offloading Medco', 9, 'JT00001', 'PT.ABC', 'Chemical Drum', 'OFFLOADING', 'Production', '0001', '1.20', '1.20', '1.20', '3.46', '2.60', '3.46', 2, 'Pallet', 'To Jetty', 1),
(29, '2020-07-27 12:47:28', 'Loading Medco', 10, 'JT00001', 'PT.ABC', 'Chemical', 'OFFLOADING', 'Production', '0002', '1.20', '1.20', '1.20', '1.73', '1.40', '1.73', 1, 'Pallet', 'To Jetty', 1),
(30, '2020-07-27 12:47:32', 'Loading Medco', 10, 'JT00001', 'PT.ABC', 'Chemical', 'OFFLOADING', 'Production', '0002', '1.20', '1.20', '1.20', '3.45', '2.80', '3.45', 2, 'Pallet', 'To Jetty', 1);

-- --------------------------------------------------------

--
-- Table structure for table `actual_moving`
--

CREATE TABLE IF NOT EXISTS `actual_moving` (
`id_as` int(12) NOT NULL,
  `time_as` datetime NOT NULL,
  `deskripsi_cargo_as` text,
  `id_cargo` int(12) NOT NULL,
  `id_moving` varchar(15) NOT NULL,
  `nm_company_as` varchar(50) DEFAULT NULL,
  `nm_barang_as` varchar(50) DEFAULT NULL,
  `nm_kegiatan_as` varchar(15) DEFAULT NULL,
  `production_as` varchar(15) DEFAULT NULL,
  `no_po_as` varchar(15) DEFAULT NULL,
  `p_cargo_as` decimal(6,2) NOT NULL,
  `l_cargo_as` decimal(6,2) NOT NULL,
  `t_cargo_as` decimal(6,2) NOT NULL,
  `volume_cargo_as` decimal(6,2) NOT NULL,
  `ton_cargo_as` decimal(6,2) NOT NULL,
  `revton_cargo_as` decimal(6,2) NOT NULL,
  `qty_cargo_as` int(11) NOT NULL,
  `satuan_cargo_as` varchar(15) DEFAULT NULL,
  `keterangan_as` varchar(50) DEFAULT NULL,
  `lokasi_awal` text,
  `lokasi_akhir` text,
  `status_cargo_as` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actual_moving`
--

INSERT INTO `actual_moving` (`id_as`, `time_as`, `deskripsi_cargo_as`, `id_cargo`, `id_moving`, `nm_company_as`, `nm_barang_as`, `nm_kegiatan_as`, `production_as`, `no_po_as`, `p_cargo_as`, `l_cargo_as`, `t_cargo_as`, `volume_cargo_as`, `ton_cargo_as`, `revton_cargo_as`, `qty_cargo_as`, `satuan_cargo_as`, `keterangan_as`, `lokasi_awal`, `lokasi_akhir`, `status_cargo_as`) VALUES
(12, '2020-07-29 16:57:13', 'Internal Moving PHE', 5, 'TR00001', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.30', '1.73', 1, 'Unit', NULL, 'Yard', 'Warehouse 1', 1),
(13, '2020-07-29 16:57:47', 'Internal Moving PHE', 5, 'TR00001', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.30', '1.73', 1, 'Unit', NULL, 'Yard', 'Warehouse 1', 1),
(14, '2020-07-29 16:57:53', 'Internal Moving PHE', 5, 'TR00001', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.30', '1.73', 1, 'Unit', NULL, 'Yard', 'Warehouse 2', 1),
(15, '2020-07-29 16:58:01', 'Internal Moving PHE', 5, 'TR00001', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '5.18', '3.90', '5.18', 3, 'Unit', NULL, 'Yard', 'Warehouse 2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `actual_stacking`
--

CREATE TABLE IF NOT EXISTS `actual_stacking` (
`id_as` int(12) NOT NULL,
  `time_as` datetime NOT NULL,
  `deskripsi_cargo_as` text,
  `id_cargo` int(12) NOT NULL,
  `id_stacking` varchar(15) NOT NULL,
  `nm_company_as` varchar(50) DEFAULT NULL,
  `nm_barang_as` varchar(50) DEFAULT NULL,
  `nm_kegiatan_as` varchar(15) DEFAULT NULL,
  `production_as` varchar(15) DEFAULT NULL,
  `no_po_as` varchar(15) DEFAULT NULL,
  `p_cargo_as` decimal(6,2) NOT NULL,
  `l_cargo_as` decimal(6,2) NOT NULL,
  `t_cargo_as` decimal(6,2) NOT NULL,
  `volume_cargo_as` decimal(6,2) NOT NULL,
  `ton_cargo_as` decimal(6,2) NOT NULL,
  `revton_cargo_as` decimal(6,2) NOT NULL,
  `qty_cargo_as` int(11) NOT NULL,
  `satuan_cargo_as` varchar(15) DEFAULT NULL,
  `keterangan_as` varchar(50) DEFAULT NULL,
  `lokasi_awal` text,
  `lokasi_akhir` text,
  `status_cargo_as` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actual_stacking`
--

INSERT INTO `actual_stacking` (`id_as`, `time_as`, `deskripsi_cargo_as`, `id_cargo`, `id_stacking`, `nm_company_as`, `nm_barang_as`, `nm_kegiatan_as`, `production_as`, `no_po_as`, `p_cargo_as`, `l_cargo_as`, `t_cargo_as`, `volume_cargo_as`, `ton_cargo_as`, `revton_cargo_as`, `qty_cargo_as`, `satuan_cargo_as`, `keterangan_as`, `lokasi_awal`, `lokasi_akhir`, `status_cargo_as`) VALUES
(1, '2020-07-28 13:21:01', 'Stacking Medco', 1, 'ST00001', 'PT.ASW', 'Chemical Drum', NULL, 'Production', '0002', '1.20', '1.20', '1.20', '1.73', '1.30', '1.73', 1, 'Pallet', NULL, 'Yard', 'Warehouse 1', 1),
(2, '2020-07-28 13:33:07', 'Stacking Medco', 1, 'ST00001', 'PT.ASW', 'Chemical Drum', NULL, 'Production', '0002', '1.20', '1.20', '1.20', '1.73', '1.30', '1.73', 1, 'Pallet', NULL, 'Yard', 'Warehouse 1', 1),
(3, '2020-07-28 13:33:16', 'Stacking Medco', 1, 'ST00001', 'PT.ASW', 'Chemical Drum', NULL, 'Production', '0002', '1.20', '1.20', '1.20', '1.73', '1.30', '1.73', 1, 'Pallet', NULL, 'Yard', 'Warehouse 1', 1),
(4, '2020-07-28 13:36:18', 'Stacking Medco', 2, 'ST00001', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.30', '1.73', 1, 'Pallet', NULL, 'Yard', 'Warehouse 1', 1),
(5, '2020-07-28 13:36:31', 'Stacking Medco', 2, 'ST00001', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.30', '1.73', 1, 'Pallet', NULL, 'Yard', 'Warehouse 2', 1),
(6, '2020-07-28 13:36:39', 'Stacking Medco', 2, 'ST00001', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.30', '1.73', 1, 'Pallet', NULL, 'Yard', 'Warehouse 2', 1),
(7, '2020-07-28 13:36:47', 'Stacking Medco', 2, 'ST00001', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.30', '1.73', 1, 'Pallet', NULL, 'Yard', 'Warehouse 1', 1),
(8, '2020-07-28 13:36:53', 'Stacking Medco', 2, 'ST00001', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.30', '1.73', 1, 'Pallet', NULL, 'Yard', 'Warehouse 1', 1),
(9, '2020-07-28 13:48:58', 'Stacking Medco', 3, 'ST00001', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.20', '1.73', 1, 'Pallet', NULL, 'Yard', 'Warehouse 1', 1),
(10, '2020-07-28 13:49:10', 'Stacking Medco', 3, 'ST00001', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '3.45', '2.40', '3.45', 2, 'Pallet', NULL, 'Yard', 'Warehouse 1', 1),
(11, '2020-07-28 14:51:36', 'Stacking Star Energy', 4, 'ST00002', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.50', '1.73', 1, 'Unit', NULL, 'Jetty', 'Warehouse 1', 1),
(12, '2020-07-29 16:53:41', 'Stacking Star Energy', 4, 'ST00002', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.50', '1.73', 1, 'Unit', NULL, 'Yard', 'Warehouse 1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `actual_stevedoring`
--

CREATE TABLE IF NOT EXISTS `actual_stevedoring` (
`id_as` bigint(20) NOT NULL,
  `id_joborder` varchar(15) NOT NULL,
  `id_jenis` varchar(15) NOT NULL,
  `time_as` datetime NOT NULL,
  `doc_no_as` varchar(15) NOT NULL,
  `qty_as` int(5) NOT NULL,
  `rincian_cargo` varchar(250) NOT NULL,
  `m3_as` decimal(6,2) NOT NULL,
  `ton_as` decimal(6,2) NOT NULL,
  `revton_as` decimal(6,2) NOT NULL,
  `remarks_as` varchar(50) DEFAULT NULL,
  `row_version` varchar(15) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=681 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `actual_stevedoring`
--

INSERT INTO `actual_stevedoring` (`id_as`, `id_joborder`, `id_jenis`, `time_as`, `doc_no_as`, `qty_as`, `rincian_cargo`, `m3_as`, `ton_as`, `revton_as`, `remarks_as`, `row_version`, `keterangan`) VALUES
(5, 'JV00001', '6', '2020-01-17 17:59:52', '123', 2, 'Food Stuff', '85.76', '16.00', '85.76', 'Indocaten', '1', ''),
(6, 'JV00001', '6', '2020-01-17 18:01:11', '123', 1, 'Food Stuff', '42.88', '8.00', '42.88', 'Indocaten', '1', 'To Jetty'),
(7, 'JV00001', '7', '2020-01-17 18:01:53', '15999', 5, 'Food STUFF  PT.INDOCATEN', '194.29', '40.00', '194.29', 'Indocaten', '1', 'To Jetty'),
(8, 'JV00001', '7', '2020-01-17 18:02:10', '15999', 3, 'Food STUFF  PT.INDOCATEN', '116.57', '24.00', '116.57', 'Indocaten', '1', 'To Yard'),
(9, 'JV00001', '7', '2020-01-20 11:53:10', '15998', 1, 'Food STUFF  PT.STM', '38.86', '8.00', '38.86', 'Inco', '1', 'To Jetty'),
(10, 'JV00001', '7', '2020-01-20 11:53:13', '15999', 2, 'Food STUFF  PT.INDOCATEN', '77.72', '16.00', '77.72', 'Indocaten', '1', 'To Jetty'),
(11, 'JV00001', '8', '2020-01-20 11:53:17', '321', 5, 'TOTE TANK MEDCO', '11.95', '2.35', '11.95', 'Medco', '1', 'To Jetty'),
(12, 'JV00001', '8', '2020-01-20 16:08:37', '543', 2, 'TOTE TANK PREMIER OIL', '4.78', '6.34', '6.34', 'Premier Oil', '1', 'Not Available'),
(13, 'JV00001', '8', '2020-01-20 16:08:50', '543', 3, 'TOTE TANK PREMIER OIL', '7.17', '9.51', '9.51', 'Premier Oil', '1', 'To Jetty'),
(14, 'JV00002', '7', '2020-02-06 14:08:26', '1500002', 1, 'DNV Container 10 FT', '18.90', '3.00', '18.90', 'Medco Energi', '1', 'To Jetty'),
(15, 'JV00003', '24', '2020-02-12 14:46:18', '170001', 6, 'Empty Dry Container 20FT', '112.92', '24.00', '112.92', 'GDSK', '1', 'To Trucking'),
(16, 'JV00003', '25', '2020-02-12 14:46:43', '170004', 3, 'Chiller Container 20FT', '56.46', '12.00', '56.46', 'GDSK', '1', 'To Trucking'),
(17, 'JV00003', '15', '2020-02-12 14:47:03', '170002', 1, 'Offshore Basket C/w Sling', '2.25', '7.00', '7.00', 'CSOL', '1', 'To Trucking'),
(18, 'JV00003', '25', '2020-02-12 14:47:22', '170004', 2, 'Chiller Container 20FT', '37.64', '8.00', '37.64', 'GDSK', '1', 'To Trucking'),
(19, 'JV00003', '11', '2020-02-12 14:47:42', '170005', 4, 'Container Waste PPLi', '150.00', '60.00', '150.00', 'PPLi', '1', 'To Jetty'),
(20, 'JV00003', '6', '2020-02-12 14:47:55', '170003', 3, 'Container Waste Organik ', '128.64', '12.00', '128.64', 'Medco Energi', '1', 'To Jetty'),
(21, 'JV00003', '14', '2020-02-12 14:48:11', '170010', 6, 'Empty T/Tank', '24.30', '18.00', '24.30', 'Champion', '1', 'To Jetty'),
(22, 'JV00003', '28', '2020-02-12 14:48:33', '170008', 7, 'Cylinder Rack Nitrogen', '18.76', '10.50', '18.76', 'Sarku', '1', 'To Jetty'),
(23, 'JV00003', '14', '2020-02-12 14:48:44', '170010', 4, 'Empty T/Tank', '16.20', '12.00', '16.20', 'Champion', '1', 'To Jetty'),
(24, 'JV00004', '6', '2020-05-28 14:05:50', '1500001', 6, 'Empty Food Container 20FT ', '257.28', '18.00', '257.28', 'GDSK', '1', 'To Jetty'),
(25, 'JV00004', '6', '2020-05-28 14:07:07', '1500001', 4, 'Empty Food Container 20FT ', '171.52', '12.00', '171.52', 'GDSK', '1', 'To Jetty'),
(26, 'JV00004', '6', '2020-05-28 14:07:29', '15002130', 4, 'Waske Organic Container', '171.52', '32.00', '171.52', 'Medco Energi', '1', 'To Jetty'),
(27, 'JV00004', '11', '2020-05-28 14:08:00', '1500011', 2, 'Container Limbah B3', '75.00', '16.00', '75.00', 'PPLi', '1', 'To Trucking'),
(28, 'JV00004', '7', '2020-05-28 14:08:25', '15002126', 5, 'Container PO', '94.50', '12.50', '94.50', 'Medco Energi', '1', 'To Jetty'),
(29, 'JV00004', '30', '2020-05-28 14:20:26', '15002121', 20, 'Oli Drum Pertamina', '33.20', '1.70', '33.20', 'Segara Permai', '1', 'To Jetty'),
(30, 'JV00004', '31', '2020-05-28 14:21:02', '1500211', 100, 'Paletan Chemical', '158.00', '100.00', '158.00', 'Baker Huges', '1', 'To Jetty'),
(31, 'JV00004', '31', '2020-05-28 14:22:56', '1500211', 100, 'Paletan Chemical', '158.00', '100.00', '158.00', 'Baker Huges', '1', 'To Jetty'),
(32, 'JV00006', '10', '2020-07-03 13:46:04', '220002', 3, 'testing', '12.15', '30.00', '30.00', 'test', '1', 'From Trucking'),
(33, 'JV00007', '24', '2020-07-06 08:31:01', '180001', 5, 'Empty Dry Food Container', '94.10', '20.00', '94.10', 'GDSK', '1', 'To Trucking'),
(34, 'JV00007', '11', '2020-07-06 08:31:38', '180002', 2, 'Container Limbah', '75.00', '30.00', '75.00', 'PPLi', '1', 'To Trucking'),
(35, 'JV00007', '7', '2020-07-06 08:32:04', '180005', 6, 'Chiller Food Container', '113.40', '30.00', '113.40', 'GDSK', '1', 'To Jetty'),
(36, 'JV00007', '34', '2020-07-06 08:32:29', '180004', 4, 'Offshore Basket', '74.88', '48.00', '74.88', 'Baker Huges', '1', 'To Jetty'),
(37, 'JV00007', '29', '2020-07-06 08:33:22', '180003', 40, 'Palet Chemical', '57.60', '40.00', '57.60', 'Baker Huges', '1', 'To Jetty'),
(38, 'JV00007', '29', '2020-07-06 08:34:51', '180003', 60, 'Palet Chemical', '86.40', '60.00', '86.40', 'Baker Huges', '1', 'To Jetty'),
(39, 'JV00008', '29', '2020-07-06 13:48:53', '180003', 50, 'Chemical Barite', '72.00', '50.00', '72.00', 'Baker', '1', 'To Jetty'),
(40, 'JV00008', '29', '2020-07-06 13:50:06', '180003', 50, 'Chemical Barite', '72.00', '50.00', '72.00', 'Baker', '1', 'To Jetty'),
(41, 'JV00008', '24', '2020-07-06 14:08:46', '180001', 6, 'Dry Food Container 20 FT', '112.92', '24.00', '112.92', 'Indocaten', '1', 'To Jetty'),
(42, 'JV00008', '15', '2020-07-06 14:19:38', '180002', 2, 'Offshore Basket', '4.50', '20.00', '20.00', 'Baker', '1', 'To Jetty'),
(43, 'JV00008', '37', '2020-07-06 14:19:51', '180004', 1, 'Life Raft', '1.35', '0.30', '1.35', 'Champion', '1', 'To Warehouse'),
(44, 'JV00008', '10', '2020-07-06 14:20:03', '180005', 2, 'IBC TANK EMPTY', '8.10', '2.00', '8.10', 'Champion', '2', 'To Trucking'),
(45, 'JV00005', '6', '2020-07-09 16:00:04', '1500031660', 3, 'Opentop Container PPLi', '128.64', '49.20', '128.64', 'PPLi', '1', 'To Trucking'),
(46, 'JV00005', '6', '2020-07-09 16:00:38', '1500029081', 6, 'Empty Food Stuff', '257.28', '21.00', '257.28', 'GDSK', '1', 'To Jetty'),
(47, 'JV00005', '6', '2020-07-09 16:01:00', '1500031902', 1, 'Sarku Equipment', '42.88', '5.00', '42.88', 'Sarku', '1', 'To Trucking'),
(48, 'JV00005', '6', '2020-07-09 16:01:13', '1500029082', 3, 'Empty Food Stuff', '128.64', '8.50', '128.64', 'Indoship', '1', 'To Jetty'),
(49, 'JV00005', '7', '2020-07-09 16:01:32', '1500029083', 1, 'Offshore Container', '18.90', '4.00', '18.90', 'OSCT', '1', 'To Trucking'),
(50, 'JV00005', '6', '2020-07-09 16:01:48', '1500031660', 2, 'Opentop Container PPLi', '85.76', '32.80', '85.76', 'PPLi', '1', 'To Trucking'),
(51, 'JV00005', '32', '2020-07-09 16:02:00', '150004', 50, 'Chemical MI Swaco', '86.50', '50.00', '86.50', 'MI Swaco', '1', 'To Jetty'),
(52, 'JV00005', '32', '2020-07-09 16:02:30', '150004', 103, 'Chemical MI Swaco', '178.19', '103.00', '178.19', 'MI Swaco', '1', 'To Jetty'),
(53, 'JV00002', '6', '2020-07-09 16:20:59', '1500001', 2, 'Empty Dry Container 20 FT', '85.76', '6.00', '85.76', 'GDSK', '1', 'To Jetty'),
(54, 'JV00009', '45', '2020-07-10 09:32:47', '0039', 1, 'ToteTank OFH-1280', '5.05', '1.40', '5.05', 'Champion', '1', 'To Trucking'),
(55, 'JV00009', '38', '2020-07-10 09:33:12', '0003', 1, 'Waste Skip FEL-279', '4.88', '1.04', '4.88', 'Wastec', '1', 'To Trucking'),
(56, 'JV00009', '38', '2020-07-10 09:33:39', '0002', 1, 'Waste Skip FEL-278', '4.88', '1.60', '4.88', 'Wastec', '3', 'To Trucking'),
(57, 'JV00009', '38', '2020-07-10 09:34:07', '0009', 1, 'Waste Skip FEL-296', '4.88', '2.00', '4.88', 'Wastec', '1', 'To Yard'),
(58, 'JV00009', '44', '2020-07-10 09:34:43', '0034', 1, '20FT Half Opentop Container OEGU 2442286', '19.11', '3.50', '19.11', 'PMB', '1', 'To Jetty'),
(59, 'JV00009', '47', '2020-07-10 09:36:02', '0041', 1, 'Cylinder Rack R-POI', '2.79', '0.50', '2.79', 'Arkadia', '1', 'To Yard'),
(60, 'JV00009', '38', '2020-07-10 09:36:58', '0005', 1, 'Waste Skip FEL-285', '4.88', '1.22', '4.88', 'Wastec', '1', 'To Yard'),
(61, 'JV00009', '38', '2020-07-10 09:37:24', '0004', 1, 'Waste Skip FEL-280', '4.88', '1.22', '4.88', 'Wastec', '1', 'To Yard'),
(62, 'JV00009', '38', '2020-07-10 09:37:42', '0006', 1, 'Waste Skip FEL-289', '4.88', '2.00', '4.88', 'Wastec', '1', 'To Yard'),
(63, 'JV00009', '38', '2020-07-10 09:38:00', '0007', 1, 'Waste Skip FEL-290', '4.88', '3.83', '4.88', 'Wastec', '1', 'To Yard'),
(64, 'JV00009', '38', '2020-07-10 09:38:01', '0007', 1, 'Waste Skip FEL-290', '0.00', '0.00', '0.00', 'Wastec', '1', 'To Yard'),
(65, 'JV00009', '38', '2020-07-10 09:38:13', '0008', 1, 'Waste Skip FEL-291', '4.88', '1.55', '4.88', 'Wastec', '1', 'To Yard'),
(66, 'JV00009', '38', '2020-07-10 09:38:24', '0010', 1, 'Waste Skip FEL-300', '4.88', '1.65', '4.88', 'Wastec', '1', 'To Yard'),
(67, 'JV00009', '43', '2020-07-10 09:40:00', '0027', 1, '10FT Half Open Top Container OEGU 1441897', '9.38', '2.00', '9.38', 'PMB', '1', 'To Jetty'),
(68, 'JV00009', '43', '2020-07-10 09:41:07', '0029', 1, '10FT Open Top Container OEGU 1442126', '9.38', '2.10', '9.38', 'PMB', '1', 'To Jetty'),
(69, 'JV00009', '43', '2020-07-10 09:41:57', '0031', 1, '10FT Half Opentop Container OEGU 1442445', '9.38', '2.00', '9.38', 'PMB', '1', 'To Yard'),
(70, 'JV00009', '43', '2020-07-10 09:44:32', '0026', 1, '10FT Half Open Top Container OEGU 1436648', '9.38', '3.00', '9.38', 'PMB', '1', 'To Jetty'),
(71, 'JV00009', '45', '2020-07-10 09:49:51', '0037', 1, 'ToteTank OFH-1212', '5.05', '1.50', '5.05', 'Champion', '1', 'To Yard'),
(72, 'JV00009', '45', '2020-07-10 09:50:20', '0038', 1, 'ToteTank OFH-1213', '5.05', '1.00', '5.05', 'Champion', '1', 'To Yard'),
(73, 'JV00009', '58', '2020-07-10 09:51:08', '0001', 1, 'Crude Oil Sample Ex MT Nectar', '0.04', '0.01', '0.04', 'Premier Oil', '1', 'To Warehouse'),
(74, 'JV00009', '43', '2020-07-10 09:52:06', '0028', 1, '10FT Open Top Container OEGU 1442110', '9.38', '3.20', '9.38', 'PMB', '1', 'To Jetty'),
(75, 'JV00009', '43', '2020-07-10 09:54:27', '0030', 1, '10FT Half Opentop Container OEGU 1442131', '9.38', '2.00', '9.38', 'PMB', '1', 'To Jetty'),
(76, 'JV00009', '7', '2020-07-10 09:59:19', '0011', 1, '10FT LLE Container', '18.90', '6.00', '18.90', 'Premier Oil', '1', 'To Yard'),
(77, 'JV00009', '40', '2020-07-10 10:06:44', '0024', 1, '10FT Dry Food Container No.OEGU 1200544', '18.01', '2.17', '18.01', 'BBS', '1', 'To Trucking'),
(78, 'JV00009', '40', '2020-07-10 10:10:02', '0025', 1, '10FT Dry Food Container No.OEGU 1201366', '18.01', '2.50', '18.01', 'BBS', '1', 'To Trucking'),
(79, 'JV00009', '44', '2020-07-10 10:14:33', '0033', 1, '20FT Opentop Container OEGU 2437633', '19.11', '4.00', '19.11', 'PMB', '1', 'To Jetty'),
(80, 'JV00009', '44', '2020-07-10 10:19:43', '0032', 1, '20FT Opentop Container OEGU 2437593', '19.11', '4.00', '19.11', 'PMB', '1', 'To Jetty'),
(81, 'JV00009', '44', '2020-07-10 10:22:04', '0035', 1, '20FT Half Opentop Container OEGU 2445710', '19.11', '3.20', '19.11', 'PMB', '1', 'To Jetty'),
(82, 'JV00009', '44', '2020-07-10 10:25:30', '0036', 1, '20FT Half Opentop Container OEGU 2445768', '19.11', '5.67', '19.11', 'PMB', '1', 'To Jetty'),
(83, 'JV00009', '41', '2020-07-10 10:30:45', '0021', 1, '10FT Food Container No.OEGU 1009348', '19.04', '2.50', '19.04', 'BBS', '1', 'To Trucking'),
(84, 'JV00009', '40', '2020-07-10 10:33:27', '0020', 1, '10FT Food Container No.OEG 1009097', '18.01', '3.00', '18.01', 'BBS', '1', 'To Trucking'),
(85, 'JV00009', '41', '2020-07-10 10:36:01', '0022', 1, '10FT Food Container No.OEGU 1009498', '19.04', '2.50', '19.04', 'BBS', '1', 'To Trucking'),
(86, 'JV00009', '40', '2020-07-10 10:36:22', '0023', 1, '10FT Chiller Food Container OEGU 1009498', '18.01', '2.50', '18.01', 'BBS', '1', 'To Trucking'),
(87, 'JV00009', '46', '2020-07-10 10:45:55', '0040', 1, 'Empty Nitrogen Rack', '1.75', '0.90', '1.75', 'Premier Oil', '1', 'To Trucking'),
(88, 'JV00009', '39', '2020-07-10 10:53:10', '0013', 1, 'Mini Container OEG-690567', '8.75', '1.85', '8.75', 'PMB', '1', 'To Yard'),
(89, 'JV00009', '39', '2020-07-10 10:56:01', '0019', 1, 'Mini Container OEG-697627', '8.75', '1.76', '8.75', 'PMB', '1', 'To Yard'),
(90, 'JV00009', '39', '2020-07-10 10:57:57', '0014', 1, 'Mini Container OEG-690574', '8.75', '1.85', '8.75', 'PMB', '1', 'To Yard'),
(91, 'JV00009', '39', '2020-07-10 11:00:17', '0012', 1, 'Mini Container OEG-690218', '8.75', '2.00', '8.75', 'PMB', '1', 'To Yard'),
(92, 'JV00009', '39', '2020-07-10 11:03:50', '0018', 1, 'Mini Container OEG-697625', '8.75', '1.65', '8.75', 'PMB', '1', 'To Yard'),
(93, 'JV00009', '38', '2020-07-10 11:05:58', '0016', 1, 'Mini Container OEG-696643', '4.88', '1.67', '4.88', 'PMB', '1', 'To Yard'),
(94, 'JV00009', '38', '2020-07-10 11:06:15', '0017', 1, 'Mini Container OEG-696997', '4.88', '1.85', '4.88', 'PMB', '1', 'To Yard'),
(95, 'JV00009', '39', '2020-07-10 11:08:13', '0015', 1, 'Mini Container OEG-690605', '8.75', '1.50', '8.75', 'PMB', '1', 'To Yard'),
(96, 'JV00011', '66', '2020-07-11 01:48:52', '1500033252', 1, 'Domestic Waste', '1.44', '0.23', '1.44', 'Medco Energi', '1', 'To Jetty'),
(97, 'JV00011', '66', '2020-07-11 01:49:48', '1500033252', 1, 'Domestic Waste', '1.44', '0.23', '1.44', 'Medco Energi', '1', 'To Jetty'),
(98, 'JV00011', '66', '2020-07-11 01:50:09', '1500033252', 8, 'Domestic Waste', '11.52', '1.83', '11.52', 'Medco Energi', '1', 'To Jetty'),
(99, 'JV00011', '66', '2020-07-11 01:51:20', '1500033252', 6, 'Domestic Waste', '8.64', '1.38', '8.64', 'Medco Energi', '1', 'To Jetty'),
(100, 'JV00011', '66', '2020-07-11 01:52:04', '1500033252', 1, 'Domestic Waste', '1.44', '0.23', '1.44', 'Medco Energi', '1', 'To Jetty'),
(101, 'JV00011', '66', '2020-07-11 01:54:10', '1500033252', 6, 'Domestic Waste', '8.64', '1.38', '8.64', 'Medco Energi', '1', 'To Jetty'),
(102, 'JV00011', '66', '2020-07-11 01:57:18', '1500033252', 5, 'Domestic Waste', '7.20', '1.15', '7.20', 'Medco Energi', '1', 'To Jetty'),
(103, 'JV00011', '66', '2020-07-11 02:00:03', '1500033252', 5, 'Domestic Waste', '7.20', '1.15', '7.20', 'Medco Energi', '1', 'To Jetty'),
(104, 'JV00011', '66', '2020-07-11 02:01:01', '1500033252', 1, 'Domestic Waste', '1.44', '0.23', '1.44', 'Medco Energi', '1', 'To Jetty'),
(105, 'JV00011', '66', '2020-07-11 02:02:05', '1500033252', 6, 'Domestic Waste', '8.64', '1.37', '8.64', 'Medco Energi', '1', 'To Jetty'),
(106, 'JV00011', '66', '2020-07-11 02:05:11', '1500033252', 6, 'Domestic Waste', '8.64', '1.38', '8.64', 'Medco Energi', '1', 'To Jetty'),
(107, 'JV00011', '66', '2020-07-11 02:07:38', '1500033252', 6, 'Domestic Waste', '8.64', '1.37', '8.64', 'Medco Energi', '1', 'To Jetty'),
(108, 'JV00011', '66', '2020-07-11 02:10:31', '1500033252', 6, 'Domestic Waste', '8.64', '1.38', '8.64', 'Medco Energi', '1', 'To Jetty'),
(109, 'JV00011', '66', '2020-07-11 02:13:44', '1500033252', 6, 'Domestic Waste', '8.64', '1.37', '8.64', 'Medco Energi', '1', 'To Jetty'),
(110, 'JV00011', '66', '2020-07-11 02:16:25', '1500033252', 6, 'Domestic Waste', '8.64', '1.38', '8.64', 'Medco Energi', '1', 'To Jetty'),
(111, 'JV00011', '66', '2020-07-11 02:19:28', '1500033252', 6, 'Domestic Waste', '8.64', '1.37', '8.64', 'Medco Energi', '1', 'To Jetty'),
(112, 'JV00011', '66', '2020-07-11 02:22:31', '1500033252', 6, 'Domestic Waste', '8.64', '1.38', '8.64', 'Medco Energi', '1', 'To Jetty'),
(113, 'JV00011', '66', '2020-07-11 02:24:40', '1500033252', 6, 'Domestic Waste', '8.64', '1.37', '8.64', 'Medco Energi', '1', 'To Jetty'),
(114, 'JV00011', '66', '2020-07-11 02:26:43', '1500033252', 6, 'Domestic Waste', '8.64', '1.38', '8.64', 'Medco Energi', '1', 'To Jetty'),
(115, 'JV00011', '66', '2020-07-11 02:29:00', '1500033252', 3, 'Domestic Waste', '4.32', '0.69', '4.32', 'Medco Energi', '1', 'To Jetty'),
(116, 'JV00011', '96', '2020-07-11 02:34:06', '1500033296', 1, 'Clamp ', '0.18', '0.10', '0.18', 'Sarku', '1', 'To Jetty'),
(117, 'JV00011', '42', '2020-07-11 02:36:17', '1500033266', 1, '10Ft Dry Container FSDG 3168', '20.06', '4.00', '20.06', 'Vantage Drilling', '1', 'To Jetty'),
(118, 'JV00011', '73', '2020-07-11 02:39:41', '00000', 1, 'Rental Blue Rack Acetylene GBR-58', '2.46', '1.00', '2.46', 'Indoship Marina', '1', 'To Jetty'),
(119, 'JV00011', '72', '2020-07-11 02:41:42', '00000', 1, 'Rental Blue Rack Oxygen GBR-56', '2.52', '1.00', '2.52', 'Indoship Marina', '1', 'To Jetty'),
(120, 'JV00011', '79', '2020-07-11 02:43:27', '00000', 1, 'Centrifuge DE-1000 11569514', '8.35', '4.00', '8.35', 'Baroid', '1', 'To Jetty'),
(121, 'JV00011', '87', '2020-07-11 02:46:26', '00000', 1, 'Slurry Skid 11235098', '6.34', '1.00', '6.34', 'Baroid', '1', 'To Jetty'),
(122, 'JV00011', '95', '2020-07-11 08:35:57', '1500033270', 1, 'Offshore Basket SN.CPS-XJK-TBAS-035', '49.53', '8.00', '49.53', 'Halliburton', '1', 'To Jetty'),
(123, 'JV00011', '92', '2020-07-11 08:41:49', '1500033006', 1, 'Offshore Basket SN.TD-CB-14-006', '24.02', '8.00', '24.02', 'Baker Huges', '1', 'To Jetty'),
(124, 'JV00011', '92', '2020-07-11 08:48:54', '1500033008', 1, 'Offshore Basket SN.WI 05695602', '24.02', '8.00', '24.02', 'Weatherford', '1', 'To Jetty'),
(125, 'JV00011', '93', '2020-07-11 08:58:13', '1500033006', 1, 'Offshore Basket SN.Auro 133017', '22.34', '9.00', '22.34', 'Baker Huges', '1', 'To Jetty'),
(126, 'JV00011', '94', '2020-07-11 09:04:59', '1500033298', 1, 'Cargo Basket CBZ 528', '17.71', '8.00', '17.71', 'Sarku', '1', 'To Jetty'),
(127, 'JV00011', '76', '2020-07-11 09:11:40', '1500033266', 1, '3M Half Height Basket Containing Rig Supplies', '8.16', '3.00', '8.16', 'Vantage Drilling', '1', 'To Jetty'),
(128, 'JV00011', '74', '2020-07-11 09:16:37', '1500033266', 1, '4.5M Half Height Basket Containing Rig Supplies', '13.60', '3.00', '13.60', 'Vantage Drilling', '1', 'To Jetty'),
(129, 'JV00011', '99', '2020-07-11 09:23:30', '1500033026', 1, '30FT Basket Aoru 4900176', '30.91', '15.00', '30.91', 'Edgina', '1', 'To Jetty'),
(130, 'JV00011', '91', '2020-07-11 09:31:55', '00000', 1, 'Hose Basket 11829699', '10.49', '3.00', '10.49', 'Baroid', '1', 'To Jetty'),
(131, 'JV00011', '65', '2020-07-11 09:50:11', '1500032891', 1, '20FT Dry Container OEGU 7020533', '38.30', '3.50', '38.30', 'GDSK', '1', 'To Jetty'),
(132, 'JV00011', '65', '2020-07-11 09:54:36', '1500032891', 1, '20FT Dry Container OEGU 7020699', '38.30', '4.00', '38.30', 'GDSK', '1', 'To Jetty'),
(133, 'JV00011', '6', '2020-07-11 10:00:35', '00000', 1, '20FT Container Auro 2601860 ', '42.88', '9.50', '42.88', 'MI  ', '1', 'To Jetty'),
(134, 'JV00011', '81', '2020-07-11 10:07:55', '00000', 1, 'De Press 10592470', '36.35', '12.00', '36.35', 'Baroid', '1', 'To Jetty'),
(135, 'JV00011', '65', '2020-07-11 10:17:30', '00000', 1, '20FT Portable Living Bed Room', '38.30', '5.00', '38.30', 'Indoship Marina', '1', 'To Jetty'),
(136, 'JV00011', '27', '2020-07-11 11:03:51', '1500033215', 1, '20FT Opentop Container BSLU 9203905', '38.44', '10.00', '38.44', 'PPLi', '1', 'To Trucking'),
(137, 'JV00011', '27', '2020-07-11 11:09:14', '1500033268', 1, '20FT Opentop Container BSLU 9203119', '38.44', '15.00', '38.44', 'PPLi', '1', 'To Trucking'),
(138, 'JV00011', '27', '2020-07-11 11:14:12', '1500033215', 1, '20FT Opentop Container BSLU 9204331', '38.44', '12.00', '38.44', 'PPLi', '1', 'To Trucking'),
(139, 'JV00011', '27', '2020-07-11 11:19:54', '1500033215', 1, '20FT Opentop Container BSLU 9204162', '38.44', '10.00', '38.44', 'PPLi', '1', 'To Trucking'),
(140, 'JV00011', '27', '2020-07-11 11:24:55', '1500033268', 1, '20FT Opentop Container BSLU 9721', '38.44', '15.00', '38.44', 'PPLi', '1', 'To Trucking'),
(141, 'JV00011', '27', '2020-07-11 11:31:25', '1500033215', 1, '20FT Opentop Container BSLU 9204326', '38.44', '11.00', '38.44', 'PPLi', '1', 'To Jetty'),
(142, 'JV00011', '27', '2020-07-11 11:39:35', '1500033215', 1, '20FT Opentop COntainer BSLU 9203741', '38.44', '10.00', '38.44', 'PPLi', '1', 'To Jetty'),
(143, 'JV00011', '80', '2020-07-11 13:50:17', '00000', 1, 'Stand Centrfuge 13441833', '5.21', '2.00', '5.21', 'Baroid', '1', 'To Yard'),
(144, 'JV00011', '80', '2020-07-11 14:00:16', '00000', 1, 'Stand Centrifuge 13441832', '5.21', '2.00', '5.21', 'Baroid', '1', 'To Yard'),
(145, 'JV00011', '73', '2020-07-11 14:13:02', '00000', 1, 'Rental Blue Rack Nitrogen GBR-51', '2.46', '1.00', '2.46', 'Indoship Marina', '1', 'To Yard'),
(146, 'JV00011', '63', '2020-07-11 14:14:52', '1500032731', 1, 'IBC Staraid S-9433 ', '2.39', '0.30', '2.39', 'Luas Birus Utama', '1', 'To Yard'),
(147, 'JV00011', '60', '2020-07-11 14:16:31', '1500032727', 1, 'Liferaft Viking', '0.72', '0.25', '0.72', 'Segara Permai', '1', 'To Yard'),
(148, 'JV00011', '59', '2020-07-11 14:16:57', '1500032889', 1, 'Firex Dry Powder for Hydrotest', '0.21', '0.15', '0.21', 'Segara Permai', '1', 'To Yard'),
(149, 'JV00011', '60', '2020-07-11 14:18:39', '1500032729', 1, 'Liferaft Zodiac', '0.72', '0.25', '0.72', 'Segara Permai', '1', 'To Yard'),
(150, 'JV00011', '68', '2020-07-11 14:19:20', '1500033272', 1, 'Webing bekas', '1.44', '0.10', '1.44', 'CKB', '1', 'To Yard'),
(151, 'JV00011', '98', '2020-07-11 14:20:51', '1500033024', 1, 'TAS', '0.04', '0.10', '0.10', 'Schlumberger', '1', 'To Yard'),
(152, 'JV00011', '97', '2020-07-11 14:24:41', '1500033024', 1, 'Clamp For As', '0.29', '0.10', '0.29', 'Schlumberger', '1', 'To Yard'),
(153, 'JV00011', '70', '2020-07-11 14:25:05', '1500033272', 1, 'Ban Bekas', '1.00', '0.07', '1.00', 'CKB', '1', 'To Yard'),
(154, 'JV00011', '85', '2020-07-11 14:27:18', '00000', 1, 'Feed Pump PSI Max 2000', '1.30', '1.00', '1.30', 'Baroid', '1', 'To Yard'),
(155, 'JV00011', '71', '2020-07-11 14:30:49', '1500033272', 1, 'Tower Lamp', '1.50', '0.25', '1.50', 'CKB', '1', 'To Yard'),
(156, 'JV00011', '69', '2020-07-11 14:31:06', '1500033272', 1, 'Sling Bekas', '0.72', '0.17', '0.72', 'CKB', '1', 'To Yard'),
(157, 'JV00011', '69', '2020-07-11 14:33:42', '1500033272', 2, 'Sling Bekas', '1.44', '0.33', '1.44', 'CKB', '1', 'To Yard'),
(158, 'JV00011', '84', '2020-07-11 14:35:41', '00000', 1, 'Pipe Casing 10"x 2.5M , 4 Joint', '1.42', '1.50', '1.50', 'Baroid', '1', 'To Yard'),
(159, 'JV00011', '83', '2020-07-11 14:37:27', '00000', 1, 'Housing Auger , Greeting 3 Ea', '1.57', '1.00', '1.57', 'Baroid', '1', 'To Yard'),
(160, 'JV00011', '89', '2020-07-11 14:39:20', '00000', 1, 'Feed Pump , Red Colour 13426444', '1.30', '1.00', '1.30', 'Baroid', '1', 'To Yard'),
(161, 'JV00011', '70', '2020-07-11 14:42:13', '1500033272', 1, 'Ban Bekas', '1.00', '0.07', '1.00', 'CKB', '1', 'To Yard'),
(162, 'JV00011', '70', '2020-07-11 14:44:15', '1500033272', 1, 'Ban Bekas', '1.00', '0.07', '1.00', 'CKB', '1', 'To Yard'),
(163, 'JV00011', '61', '2020-07-11 14:47:14', '1500032731', 1, 'Empty ToteTank Starpol S-9284', '2.39', '0.30', '2.39', 'Luas Birus Utama', '1', 'To Yard'),
(164, 'JV00011', '64', '2020-07-11 14:47:30', '1500032731', 1, 'Empty ToteTank Starbreak S-9524', '3.26', '0.20', '3.26', 'Luas Birus Utama', '1', 'To Yard'),
(165, 'JV00011', '90', '2020-07-11 14:48:50', '00000', 1, 'Effluent Tank 12 BBL', '2.16', '1.50', '2.16', 'Baroid', '1', 'To Yard'),
(166, 'JV00011', '85', '2020-07-11 14:49:07', '00000', 1, 'Feed Pump PSI Max  2000', '1.30', '1.00', '1.30', 'Baroid', '1', 'To Yard'),
(167, 'JV00011', '86', '2020-07-11 14:51:57', '00000', 1, 'Twin Pod 11566506', '5.94', '1.50', '5.94', 'Baroid', '1', 'To Yard'),
(168, 'JV00011', '72', '2020-07-11 14:55:03', '00000', 1, 'Rental Blue Rack Nitrogen GBR-43', '2.52', '1.00', '2.52', 'Indoship Marina', '1', 'To Yard'),
(169, 'JV00011', '78', '2020-07-11 14:55:25', '1500033266', 1, 'Gas Bottle Rack BSL 16622', '3.33', '0.70', '3.33', 'Vantage Drilling', '1', 'To Yard'),
(170, 'JV00011', '78', '2020-07-11 14:56:41', '1500033266', 1, 'Gas Bottle Rack BSL 16694', '3.33', '0.70', '3.33', 'Vantage Drilling', '1', 'To Yard'),
(171, 'JV00011', '77', '2020-07-11 14:57:11', '1500033266', 1, 'Gas Bottle Rack TD-GB-16-030', '4.05', '0.82', '4.05', 'Vantage Drilling', '1', 'To Yard'),
(172, 'JV00011', '77', '2020-07-11 14:57:36', '1500033266', 1, 'Gas Bottle Rack TD-GB-16-017', '4.05', '0.82', '4.05', 'Vantage Drilling', '1', 'To Yard'),
(173, 'JV00011', '72', '2020-07-11 14:58:54', '00000', 1, 'Full NItrogen Cylinder GBR-49', '2.52', '1.00', '2.52', 'Indoship Marina', '1', 'To Yard'),
(174, 'JV00011', '61', '2020-07-11 14:59:39', '1500032731', 1, 'Empty ToteTank Starpol S-9284', '2.39', '0.30', '2.39', 'Luas Birus Utama', '1', 'To Yard'),
(175, 'JV00011', '85', '2020-07-11 15:00:02', '00000', 1, 'Feed Pump , Red Colour 13426445', '1.20', '1.00', '1.20', 'Baroid', '1', 'To Yard'),
(176, 'JV00011', '88', '2020-07-11 15:01:04', '00000', 1, 'Filtration Tool Box ', '1.32', '1.00', '1.32', 'Baroid', '1', 'To Yard'),
(177, 'JV00011', '79', '2020-07-11 15:01:32', '00000', 1, 'Centrifuge DE-1000 11506576', '8.35', '4.00', '8.35', 'Baroid', '1', 'To Yard'),
(178, 'JV00011', '82', '2020-07-11 15:04:52', '00000', 1, 'Screw Conveyor Motor Drive ', '0.88', '1.00', '1.00', 'Baroid', '1', 'To Yard'),
(179, 'JV00011', '69', '2020-07-11 15:08:44', '1500033272', 2, 'Sling Bekas', '1.44', '0.33', '1.44', 'CKB', '1', 'To Yard'),
(180, 'JV00011', '70', '2020-07-11 15:10:38', '1500033272', 2, 'Ban Bekas', '2.00', '0.13', '2.00', 'CKB', '1', 'To Yard'),
(181, 'JV00011', '69', '2020-07-11 15:11:03', '1500033272', 1, 'Sling Bekas', '0.72', '0.17', '0.72', 'CKB', '1', 'To Yard'),
(182, 'JV00011', '70', '2020-07-11 15:12:17', '1500033272', 1, 'Ban Bekas', '1.00', '0.07', '1.00', 'CKB', '1', 'To Yard'),
(183, 'JV00011', '9', '2020-07-11 15:14:34', '1300014990', 1, 'Chemical , Glycol', '2.39', '2.50', '2.50', 'Luas Birus Utama', '1', 'To Yard'),
(184, 'JV00011', '9', '2020-07-11 15:16:23', '1300014990', 1, 'Chemical Luas Birus 9441 (T/T Reject)', '2.39', '2.50', '2.50', 'Luas Birus Utama', '1', 'To Yard'),
(185, 'JV00011', '9', '2020-07-11 15:18:06', '1300014990', 1, 'Chemical ,Luas Birus  9442 (T/T Reject)', '2.39', '2.50', '2.50', 'Luas Birus Utama', '1', 'To Yard'),
(186, 'JV00011', '66', '2020-07-11 15:19:25', '1500033252', 4, 'Domestic Waste', '5.76', '0.91', '5.76', 'Medco Energi', '1', 'To Jetty'),
(187, 'JV00012', '100', '2020-07-15 19:50:00', '1034331', 1, '20FT Container CCLU 1034331', '37.50', '3.50', '37.50', 'Vantage Drilling', '1', 'To Jetty'),
(188, 'JV00012', '100', '2020-07-15 19:54:53', '1500033386', 1, 'Empty Opentop 20FT SN.OEGU 2501882', '37.50', '3.50', '37.50', 'Medco Energi', '1', 'To Jetty'),
(189, 'JV00012', '100', '2020-07-15 20:00:05', '1511593', 1, '20FT COntainer OEGU 1511593', '37.50', '4.00', '37.50', 'Vantage Drilling', '1', 'To Jetty'),
(190, 'JV00012', '100', '2020-07-15 20:03:18', '1500033386', 1, 'Empty Opentop Container 20FT SN.OEGU 2501861', '37.50', '3.50', '37.50', 'Medco Energi', '1', 'To Jetty'),
(191, 'JV00012', '109', '2020-07-15 20:10:54', '00000', 6, 'Waste Limbah Domestic', '6.00', '1.04', '6.00', 'Medco Energi', '1', 'To Jetty'),
(192, 'JV00012', '109', '2020-07-15 20:16:29', '00000', 8, 'Waste Limbah Domestic', '8.00', '1.38', '8.00', 'Medco Energi', '1', 'To Jetty'),
(193, 'JV00012', '109', '2020-07-15 20:21:15', '00000', 8, 'Waste Limbah Domestic', '8.00', '1.38', '8.00', 'Medco Energi', '1', 'To Jetty'),
(194, 'JV00012', '109', '2020-07-15 20:26:23', '00000', 7, 'Waste Limbah Domestic', '7.00', '1.21', '7.00', 'Medco Energi', '1', 'To Jetty'),
(195, 'JV00012', '109', '2020-07-15 20:26:53', '00000', 1, 'Waste Limbah Domestic', '1.00', '0.17', '1.00', 'Medco Energi', '1', 'To Jetty'),
(196, 'JV00012', '109', '2020-07-15 20:31:29', '00000', 8, 'Waste Limbah Domestic', '8.00', '1.38', '8.00', 'Medco Energi', '1', 'To Jetty'),
(197, 'JV00012', '109', '2020-07-15 20:37:41', '00000', 9, 'Waste Limbah Domestic', '9.00', '1.56', '9.00', 'Medco Energi', '1', 'To Jetty'),
(198, 'JV00012', '109', '2020-07-15 20:43:38', '00000', 8, 'Waste Limbah Domestic', '8.00', '1.38', '8.00', 'Medco Energi', '1', 'To Jetty'),
(199, 'JV00012', '109', '2020-07-15 20:50:43', '00000', 8, 'Waste Limbah Domestic', '8.00', '1.38', '8.00', 'Medco Energi', '1', 'To Jetty'),
(200, 'JV00012', '109', '2020-07-15 20:57:14', '00000', 8, 'Waste Limbah Domestic', '8.00', '1.39', '8.00', 'Medco Energi', '1', 'To Jetty'),
(201, 'JV00012', '109', '2020-07-15 21:02:13', '00000', 8, 'Waste Limbah Domestic', '8.00', '1.38', '8.00', 'Medco Energi', '1', 'To Jetty'),
(202, 'JV00012', '109', '2020-07-15 21:06:58', '00000', 2, 'Waste Limbah Domestic', '2.00', '0.35', '2.00', 'Medco Energi', '1', 'To Jetty'),
(203, 'JV00012', '100', '2020-07-16 02:17:18', '6053058', 1, '20FT Food Container KKTU', '37.50', '3.00', '37.50', 'GDSK', '1', 'To Jetty'),
(204, 'JV00012', '100', '2020-07-16 02:21:17', '1500032342', 1, 'White Container Consist Of Pick Up Box', '37.50', '5.00', '37.50', 'PT.CHAS', '1', 'To Jetty'),
(205, 'JV00012', '100', '2020-07-16 02:27:11', '7541095', 1, '20FT Food Container NYKU', '37.50', '3.00', '37.50', 'GDSK', '1', 'To Jetty'),
(206, 'JV00012', '130', '2020-07-16 02:33:35', '1500033425', 1, '14.3 M Offshore Basket SN.TD-CB-14-011', '24.54', '4.00', '24.54', 'Baker Huges', '1', 'To Jetty'),
(207, 'JV00012', '117', '2020-07-16 02:38:57', '1500033320', 1, 'Offshore Basket SN.B6106', '9.04', '3.50', '9.04', 'Wira Insani', '1', 'To Jetty'),
(208, 'JV00012', '121', '2020-07-16 02:42:34', '1500033415', 1, 'Sparepart Basket SN.JA 361', '9.40', '5.00', '9.40', 'Dowell Anadrill', '1', 'To Jetty'),
(209, 'JV00012', '123', '2020-07-16 02:46:39', '1500033421', 1, 'Completion Tool Box SN.CPS-XJK-TB-11', '2.92', '1.50', '2.92', 'Halliburton', '1', 'To Jetty'),
(210, 'JV00012', '131', '2020-07-16 02:50:13', '1500033324', 1, 'Offshore Basket SN.TD-CB-10-009', '22.82', '3.50', '22.82', 'Baker Huges', '1', 'To Jetty'),
(211, 'JV00012', '124', '2020-07-16 02:57:19', '1500033425', 1, '34FT Basket SN.M-PB-34-1055/MOOU 1229214', '16.07', '3.00', '16.07', 'Baker Huges', '1', 'To Jetty'),
(212, 'JV00012', '126', '2020-07-16 03:12:37', '1500033441', 1, 'Basket TD-CB-8-006', '13.94', '6.50', '13.94', 'Schlumberger', '1', 'To Jetty'),
(213, 'JV00012', '132', '2020-07-16 03:17:14', '1500033320', 1, 'Offshore Basket SN.B1401', '22.31', '6.00', '22.31', 'Wira Insani', '1', 'To Jetty'),
(214, 'JV00012', '100', '2020-07-16 03:25:25', '1500033435', 1, '20FT Close TOP ISO Container OEGU 000604-6', '37.50', '7.00', '37.50', 'Medco Energi', '1', 'To Jetty'),
(215, 'JV00012', '100', '2020-07-16 03:29:45', '7546651', 1, '20FT Food Container NYKU', '37.50', '3.00', '37.50', 'GDSK', '1', 'To Jetty'),
(216, 'JV00012', '100', '2020-07-16 03:34:55', '7020615', 1, '20FT Food COntainer TAHU', '37.50', '2.50', '37.50', 'GDSK', '1', 'To Jetty'),
(217, 'JV00012', '100', '2020-07-16 03:40:29', '6050146', 1, '20FT Food Container KKTU', '37.50', '3.00', '37.50', 'GDSK', '1', 'To Jetty'),
(218, 'JV00012', '100', '2020-07-16 03:44:01', '9456341', 1, '20FT Food Container GESU', '37.50', '3.00', '37.50', 'GDSK', '1', 'To Jetty'),
(219, 'JV00012', '100', '2020-07-16 03:50:48', '3117666', 1, '20FT Food Container CRLU', '37.50', '3.00', '37.50', 'GDSK', '1', 'To Jetty'),
(220, 'JV00012', '122', '2020-07-16 09:03:37', '1500033415', 1, 'Batch Mixer', '24.38', '14.80', '24.38', 'Dowell Anadrill', '1', 'To Trucking'),
(221, 'JV00012', '118', '2020-07-16 10:26:53', '1500033322', 1, 'Logging Unit SN.OLU-MA-5028', '30.96', '7.50', '30.96', 'Dowell Anadrill', '1', 'To Trucking'),
(222, 'JV00012', '131', '2020-07-16 10:46:58', '1500033322', 1, '13.3 M Offshore Baasket SN.AORU 133107', '22.82', '9.00', '22.82', 'Dowell Anadrill', '1', 'To Jetty'),
(223, 'JV00012', '128', '2020-07-16 10:51:37', '1500033358', 1, 'Wooden Box COnsist off : Lifting Beam ID.SLB 17093', '0.34', '0.20', '0.34', 'Heru Wicaksono', '1', 'To Trucking'),
(224, 'JV00012', '100', '2020-07-16 14:07:44', '1500033177', 1, 'MT DNV Container 20FT SN.Aoru 360091-3', '37.50', '5.00', '37.50', 'Sarku', '1', 'To Jetty'),
(225, 'JV00012', '100', '2020-07-16 14:08:11', '1500033177', 1, 'MT DNV Container 20FT SN.Aoru 360132-9', '37.50', '5.00', '37.50', 'Sarku', '1', 'To Jetty'),
(226, 'JV00012', '100', '2020-07-16 14:11:42', '1500033213', 1, '20FT AORUO 3601334', '37.50', '5.00', '37.50', 'Romario Putra Pratama', '1', 'To Jetty'),
(227, 'JV00012', '6', '2020-07-16 14:20:32', 'Star energ', 1, 'Kontener', '42.88', '3.00', '42.88', 'Star energy', '2', 'To Jetty'),
(228, 'JV00012', '107', '2020-07-16 14:32:52', '1500033333', 1, 'Container warna biru KWS003', '18.30', '1.00', '18.30', 'Medco Energi', '1', 'To Jetty'),
(229, 'JV00012', '106', '2020-07-16 14:34:47', '8028890', 1, '20FT Food Container CNHU', '18.75', '2.00', '18.75', 'GDSK', '1', 'To Jetty'),
(230, 'JV00012', '101', '2020-07-16 14:37:02', '1500033177', 1, 'MT Half Container 10FT SN.HOP-03/C10/08/09', '11.25', '1.50', '11.25', 'Medco Energi', '1', 'To Jetty'),
(231, 'JV00012', '104', '2020-07-16 14:40:12', '1500032942', 1, 'Empty Tote Tank S-9282 ,Tank Number LBU-2019-080', '2.16', '0.30', '2.16', 'PT.LBU JKT', '1', 'To Jetty'),
(232, 'JV00012', '104', '2020-07-16 14:40:48', '1500032942', 1, 'Empty Tote Tank S-9282 , Tank Number LBU-2019-0048', '2.16', '0.30', '2.16', 'PT.LBU JKT', '1', 'To Jetty'),
(233, 'JV00012', '104', '2020-07-16 14:43:13', '1500032942', 1, 'Empty Tote Tank S-965ND , Tank Number LBU-2019-002', '2.16', '0.30', '2.16', 'PT.LBU JKT', '1', 'To Jetty'),
(234, 'JV00012', '104', '2020-07-16 14:44:09', '1500032942', 1, 'Empty Tote Tank S-9282 , Tank Number RTF-09', '2.16', '0.30', '2.16', 'PT.LBU JKT', '1', 'To Jetty'),
(235, 'JV00012', '104', '2020-07-16 14:45:20', '1500032942', 1, 'Empty Tote Tank S-965ND , Tank Number LBU-2019-007', '2.16', '0.30', '2.16', 'PT.LBU JKT', '1', 'To Jetty'),
(236, 'JV00012', '111', '2020-07-16 14:45:59', '1500032864', 1, 'Material Cylinder Empty Helium,Hydrogen & Nitrogen', '2.74', '1.00', '2.74', 'Medco Energi', '1', 'To Jetty'),
(237, 'JV00012', '108', '2020-07-16 14:51:09', '1500033333', 1, 'Cradel kwr gbr 109 + kwr gbr 110', '1.00', '2.00', '2.00', 'Medco Energi', '3', 'To Jetty'),
(238, 'JV00012', '102', '2020-07-16 14:51:26', '1500033075', 1, 'Cylinder Rack Including Nitrogen MT Botol', '1.00', '1.50', '1.50', 'Sarku', '1', 'To Jetty'),
(239, 'JV00012', '104', '2020-07-16 14:52:56', '1500032942', 1, 'Empty Tote Tank S-965ND , Tank Number LBU-2019-0114', '2.16', '0.30', '2.16', 'PT.LBU JKT', '1', 'To Jetty'),
(240, 'JV00012', '104', '2020-07-16 14:53:20', '1500032942', 1, 'Empty Tote Tank Ex Chemical IR-2316 , No TT Tank T-5', '2.16', '0.30', '2.16', 'PT.LBU JKT', '1', 'To Jetty'),
(241, 'JV00012', '104', '2020-07-16 14:53:39', '1500032942', 1, 'Empty Tote Tank S-965ND , Tank Number LBU-2019-0056', '2.16', '0.30', '2.16', 'PT.LBU JKT', '1', 'To Jetty'),
(242, 'JV00012', '119', '2020-07-16 14:54:11', '1500033360', 1, 'Mud Logging Mini Container N 06-GEO 0414', '2.56', '1.00', '2.56', 'Geoservice', '1', 'To Jetty'),
(243, 'JV00012', '119', '2020-07-16 14:54:34', '1500033360', 1, 'Mud Logging Mini Container D 04-GEO-0410', '2.56', '1.00', '2.56', 'Geoservice', '1', 'To Jetty'),
(244, 'JV00012', '105', '2020-07-16 15:00:37', '1500033326', 4, '4 Unit Liferaft Inside 20FT Basket OEGU 2440616', '8.00', '0.80', '8.00', 'Segara Permai', '1', 'To Jetty'),
(245, 'JV00012', '125', '2020-07-16 15:04:03', '00002', 1, 'Mini Container c/o Coring Equipment', '17.50', '3.50', '17.50', 'NOV', '1', 'To Jetty'),
(246, 'JV00012', '10', '2020-07-16 15:04:31', '1500033433', 1, 'Argon For Refill', '4.05', '1.50', '4.05', 'Medco Energi', '1', 'To Jetty'),
(247, 'JV00012', '113', '2020-07-16 15:05:55', '1500032849', 1, 'Material Gas Booster 1Bh/Box', '13.50', '4.00', '13.50', 'Sembodo Suroso', '1', 'To Jetty'),
(248, 'JV00012', '115', '2020-07-16 15:06:55', '1300014948', 1, 'Connector 3/8" Tube OD X 1/2" MNPT 316', '0.00', '0.03', '0.03', 'Medco Energi', '1', 'To Jetty'),
(249, 'JV00012', '127', '2020-07-16 15:08:16', '34934421', 1, 'Drilling JAR 7" SN.3493442-1', '0.30', '1.00', '1.00', 'Baker Huges', '1', 'To Jetty'),
(250, 'JV00012', '127', '2020-07-16 15:08:31', '1703790', 1, 'Drilling JAR 7" SN.1703790-1', '0.30', '1.00', '1.00', 'Baker Huges', '1', 'To Jetty'),
(251, 'JV00012', '103', '2020-07-16 15:09:05', '1500033088', 1, '20 Ea Firex Dry Powder (Hydrtest)', '1.73', '0.10', '1.73', 'Segara Permai', '3', 'To Jetty'),
(252, 'JV00012', '112', '2020-07-16 15:09:28', '1500032962', 1, 'Liferaft Capasitas 25 Pax', '1.44', '0.30', '1.44', 'Medco Energi', '1', 'To Jetty'),
(253, 'JV00012', '106', '2020-07-16 15:09:53', '1500033435', 1, '10FT Close TOP ISO Container OEGU 0006133', '18.75', '3.00', '18.75', 'Medco Energi', '1', 'To Jetty'),
(254, 'JV00012', '110', '2020-07-16 15:10:22', '00001', 1, '20FT Container ISO OEGU 000610-7', '36.97', '3.50', '36.97', 'Medco Energi', '1', 'To Jetty'),
(268, 'JV00013', '36', '2020-07-21 19:54:14', '00022', 1, 'Calcium Chloride', '1.73', '1.00', '1.73', 'Dowel Schlumberger', '1', 'From Jetty'),
(269, 'JV00013', '36', '2020-07-21 19:59:23', '00022', 1, 'Calcium Chloride', '1.73', '1.00', '1.73', 'Dowel Schlumberger', '1', 'From Jetty'),
(270, 'JV00013', '36', '2020-07-21 20:00:45', '00022', 1, 'Calcium Chloride', '1.73', '1.00', '1.73', 'Dowel Schlumberger', '1', 'From Jetty'),
(271, 'JV00013', '29', '2020-07-21 20:02:05', '00028', 1, 'D320 (2677 gal)', '1.44', '0.60', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(272, 'JV00013', '36', '2020-07-21 20:02:32', '00022', 1, 'Calcium Chloride', '1.73', '1.00', '1.73', 'Dowel Schlumberger', '1', 'From Jetty'),
(273, 'JV00013', '29', '2020-07-21 20:03:20', '00028', 1, 'D320 (2677 gal)', '1.44', '0.60', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(274, 'JV00013', '36', '2020-07-21 20:03:42', '00022', 1, 'Calcium Chloride', '1.73', '1.00', '1.73', 'Dowel Schlumberger', '1', 'From Jetty'),
(275, 'JV00013', '36', '2020-07-21 20:04:19', '00022', 1, 'Calcium Chloride', '1.73', '1.00', '1.73', 'Dowel Schlumberger', '1', 'From Jetty'),
(276, 'JV00013', '36', '2020-07-21 20:05:35', '00022', 1, 'Calcium Chloride', '1.73', '1.00', '1.73', 'Dowel Schlumberger', '1', 'From Jetty'),
(277, 'JV00013', '36', '2020-07-21 20:06:56', '00022', 1, 'Calcium Chloride', '1.73', '1.00', '1.73', 'Dowel Schlumberger', '1', 'From Jetty'),
(278, 'JV00013', '36', '2020-07-21 20:08:14', '00022', 1, 'Calcium Chloride', '1.73', '1.00', '1.73', 'Dowel Schlumberger', '1', 'From Jetty'),
(279, 'JV00013', '36', '2020-07-21 20:09:33', '00022', 1, 'Calcium Chloride', '1.73', '1.00', '1.73', 'Dowel Schlumberger', '1', 'From Jetty'),
(280, 'JV00013', '29', '2020-07-21 20:11:12', '00024', 1, 'D124 (3BB - 3300)', '1.44', '0.67', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(281, 'JV00013', '29', '2020-07-21 20:13:00', '00024', 1, 'D124 (3BB - 3300)', '1.44', '0.67', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(282, 'JV00013', '29', '2020-07-21 20:16:32', '00024', 1, 'D124 (3BB - 3300)', '1.44', '0.67', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(283, 'JV00013', '29', '2020-07-21 20:17:16', '00029', 1, 'D080 (530 gal)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(284, 'JV00013', '29', '2020-07-21 20:18:51', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Yard'),
(285, 'JV00013', '29', '2020-07-21 20:19:43', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(286, 'JV00013', '29', '2020-07-21 20:20:29', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Yard'),
(287, 'JV00013', '29', '2020-07-21 20:21:08', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Yard'),
(288, 'JV00013', '29', '2020-07-21 20:21:39', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(289, 'JV00013', '29', '2020-07-21 20:22:36', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(290, 'JV00013', '29', '2020-07-21 20:23:21', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(291, 'JV00013', '29', '2020-07-21 20:23:57', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(292, 'JV00013', '29', '2020-07-21 20:24:47', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(293, 'JV00013', '29', '2020-07-21 20:25:26', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(294, 'JV00013', '29', '2020-07-21 20:26:09', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(295, 'JV00013', '29', '2020-07-21 20:26:56', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(296, 'JV00013', '29', '2020-07-21 20:27:38', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(297, 'JV00013', '29', '2020-07-21 20:28:27', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(298, 'JV00013', '29', '2020-07-21 20:29:06', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(299, 'JV00013', '29', '2020-07-21 20:29:29', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(300, 'JV00013', '29', '2020-07-21 20:30:19', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(301, 'JV00013', '29', '2020-07-21 20:30:56', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(302, 'JV00013', '29', '2020-07-21 20:31:23', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(303, 'JV00013', '29', '2020-07-21 20:32:15', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Yard'),
(304, 'JV00013', '29', '2020-07-21 20:32:45', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Yard'),
(305, 'JV00013', '29', '2020-07-21 20:33:21', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(306, 'JV00013', '29', '2020-07-21 20:33:58', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(307, 'JV00013', '29', '2020-07-21 20:34:29', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(308, 'JV00013', '29', '2020-07-21 20:35:09', '00028', 1, 'D320 (2677 gal)', '1.44', '0.60', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(309, 'JV00013', '29', '2020-07-21 20:35:34', '00028', 1, 'D320 (2677 gal)', '1.44', '0.60', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(310, 'JV00013', '29', '2020-07-21 20:36:06', '00028', 1, 'D320 (2677 gal)', '1.44', '0.60', '1.44', 'Dowel Schlumberger', '1', 'From Yard'),
(311, 'JV00013', '29', '2020-07-21 20:36:40', '00028', 1, 'D320 (2677 gal)', '1.44', '0.60', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(312, 'JV00013', '29', '2020-07-21 20:37:27', '00028', 1, 'D320 (2677 gal)', '1.44', '0.60', '1.44', 'Dowel Schlumberger', '1', 'From Trucking'),
(313, 'JV00013', '29', '2020-07-21 20:38:01', '00034', 31, 'Semen 3 Roda', '44.64', '31.00', '44.64', 'Medco', '2', 'From Yard'),
(314, 'JV00013', '10', '2020-07-21 20:38:19', '00035', 16, 'IBC Tank Schlumberfer', '64.80', '19.20', '64.80', 'Schlumberger', '2', 'From Jetty'),
(315, 'JV00013', '36', '2020-07-21 20:38:34', '00036', 2, 'Chemical Drum', '3.46', '1.60', '3.46', 'Schlumberger', '2', 'From Jetty'),
(316, 'JV00013', '29', '2020-07-21 20:39:03', '00026', 3, 'D256 (1060 gal)', '4.32', '2.00', '4.32', 'Dowel Schlumberger', '1', 'From Jetty'),
(317, 'JV00013', '29', '2020-07-21 20:40:29', '00027', 2, 'D145A (424 gal)', '2.88', '1.00', '2.88', 'Dowel Schlumberger', '1', 'From Yard'),
(318, 'JV00013', '29', '2020-07-21 20:41:52', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Yard'),
(319, 'JV00013', '29', '2020-07-21 20:43:24', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Yard'),
(320, 'JV00013', '29', '2020-07-21 20:45:06', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Yard'),
(321, 'JV00013', '29', '2020-07-21 20:47:01', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Yard'),
(322, 'JV00013', '29', '2020-07-21 20:48:37', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Yard'),
(323, 'JV00013', '29', '2020-07-21 20:51:00', '00027', 1, 'D145A (424 gal)', '1.44', '0.50', '1.44', 'Dowel Schlumberger', '1', 'From Yard'),
(324, 'JV00013', '29', '2020-07-21 20:52:16', '00027', 1, 'D145A (424 gal)', '1.44', '0.50', '1.44', 'Dowel Schlumberger', '1', 'From Yard'),
(325, 'JV00013', '29', '2020-07-21 20:54:01', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Yard'),
(326, 'JV00013', '139', '2020-07-21 21:05:13', '00010', 4, 'Casing 9-5/8"', '3.16', '3.50', '3.50', 'PPLi', '3', 'From Trucking'),
(327, 'JV00013', '139', '2020-07-21 21:19:11', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(328, 'JV00013', '139', '2020-07-21 21:23:53', '00010', 1, 'Casing 9-5/8"', '0.79', '0.88', '0.88', 'PPLi', '3', 'From Trucking'),
(329, 'JV00013', '139', '2020-07-21 21:28:35', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(330, 'JV00013', '139', '2020-07-21 21:32:45', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(331, 'JV00013', '139', '2020-07-21 21:39:13', '00010', 2, 'Casing 9-5/8"', '1.58', '1.75', '1.75', 'PPLi', '3', 'From Trucking'),
(332, 'JV00013', '139', '2020-07-21 21:44:39', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(333, 'JV00013', '139', '2020-07-21 21:48:16', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(334, 'JV00013', '139', '2020-07-21 21:52:38', '00010', 2, 'Casing 9-5/8"', '1.58', '1.75', '1.75', 'PPLi', '3', 'From Trucking'),
(335, 'JV00013', '139', '2020-07-21 21:57:08', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(336, 'JV00013', '139', '2020-07-21 22:01:00', '00010', 1, 'Casing 9-5/8"', '0.79', '0.88', '0.88', 'PPLi', '3', 'From Trucking'),
(337, 'JV00013', '139', '2020-07-21 22:11:49', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(338, 'JV00013', '139', '2020-07-21 22:15:36', '00010', 1, 'Casing 9-5/8"', '0.79', '0.88', '0.88', 'PPLi', '3', 'From Trucking'),
(339, 'JV00013', '139', '2020-07-21 22:22:07', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(340, 'JV00013', '139', '2020-07-21 22:26:13', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(341, 'JV00013', '139', '2020-07-21 22:31:19', '00010', 2, 'Casing 9-5/8"', '1.58', '1.75', '1.75', 'PPLi', '3', 'From Trucking'),
(342, 'JV00013', '139', '2020-07-21 22:37:04', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(343, 'JV00013', '139', '2020-07-21 22:42:12', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(344, 'JV00013', '139', '2020-07-21 22:45:37', '00010', 2, 'Casing 9-5/8"', '1.58', '1.75', '1.75', 'PPLi', '3', 'From Trucking'),
(345, 'JV00013', '139', '2020-07-21 22:49:21', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(346, 'JV00013', '139', '2020-07-21 22:53:26', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(347, 'JV00013', '139', '2020-07-21 22:57:01', '00010', 2, 'Casing 9-5/8"', '1.58', '1.75', '1.75', 'PPLi', '3', 'From Trucking'),
(348, 'JV00013', '139', '2020-07-21 23:06:58', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(349, 'JV00013', '139', '2020-07-21 23:13:27', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(350, 'JV00013', '139', '2020-07-21 23:17:17', '00010', 2, 'Casing 9-5/8"', '1.58', '1.75', '1.75', 'PPLi', '3', 'From Trucking'),
(351, 'JV00013', '139', '2020-07-21 23:23:54', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(352, 'JV00013', '139', '2020-07-21 23:28:34', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(353, 'JV00013', '139', '2020-07-21 23:31:51', '00010', 1, 'Casing 9-5/8"', '0.79', '0.88', '0.88', 'PPLi', '3', 'From Trucking'),
(354, 'JV00013', '29', '2020-07-22 08:34:25', '00038', 2, 'NaCL', '2.88', '2.00', '2.88', 'Halliburton', '2', 'From Trucking'),
(355, 'JV00013', '29', '2020-07-22 08:44:07', '00038', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '2', 'From Trucking'),
(356, 'JV00013', '29', '2020-07-22 08:52:24', '00038', 3, 'NaCL', '4.32', '3.00', '4.32', 'Halliburton', '2', 'From Trucking'),
(357, 'JV00013', '29', '2020-07-22 09:00:16', '00038', 5, 'NaCL', '7.20', '5.00', '7.20', 'Halliburton', '2', 'From Trucking'),
(358, 'JV00013', '29', '2020-07-22 09:14:26', '00038', 9, 'NaCL', '12.96', '9.00', '12.96', 'Halliburton', '2', 'From Trucking'),
(359, 'JV00013', '29', '2020-07-22 09:21:43', '00038', 5, 'NaCL', '7.20', '5.00', '7.20', 'Halliburton', '2', 'From Trucking'),
(360, 'JV00013', '29', '2020-07-22 09:29:08', '00038', 5, 'NaCL', '7.20', '5.00', '7.20', 'Halliburton', '2', 'From Trucking'),
(361, 'JV00013', '29', '2020-07-22 09:54:41', '00038', 10, 'NaCL', '14.40', '10.00', '14.40', 'Halliburton', '2', 'From Trucking'),
(362, 'JV00013', '29', '2020-07-22 10:16:37', '00038', 10, 'NaCL', '14.40', '10.00', '14.40', 'Halliburton', '3', 'From Trucking'),
(363, 'JV00013', '29', '2020-07-22 10:32:49', '00039', 10, 'NaCL', '14.40', '10.00', '14.40', 'Halliburton', '2', 'From Trucking'),
(364, 'JV00013', '29', '2020-07-22 10:48:25', '00039', 10, 'NaCL', '14.40', '10.00', '14.40', 'Halliburton', '2', 'From Trucking'),
(365, 'JV00013', '29', '2020-07-22 11:05:46', '00039', 10, 'NaCL', '14.40', '10.00', '14.40', 'Halliburton', '2', 'From Trucking'),
(366, 'JV00013', '29', '2020-07-22 11:22:42', '00039', 15, 'NaCL', '21.60', '15.00', '21.60', 'Halliburton', '2', 'From Trucking'),
(367, 'JV00013', '139', '2020-07-22 13:22:11', '00010', 41, 'Casing 9-5/8"', '32.39', '35.88', '35.88', 'PPLi', '3', 'From Trucking'),
(368, 'JV00013', '138', '2020-07-22 13:22:41', '00009', 36, 'Casing 13-3/8"', '60.48', '72.73', '72.73', 'PPLi', '1', 'From Trucking'),
(369, 'JV00013', '29', '2020-07-22 13:31:49', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(370, 'JV00013', '29', '2020-07-22 13:35:23', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(371, 'JV00013', '29', '2020-07-22 13:36:57', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty');
INSERT INTO `actual_stevedoring` (`id_as`, `id_joborder`, `id_jenis`, `time_as`, `doc_no_as`, `qty_as`, `rincian_cargo`, `m3_as`, `ton_as`, `revton_as`, `remarks_as`, `row_version`, `keterangan`) VALUES
(372, 'JV00013', '29', '2020-07-22 13:37:52', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(373, 'JV00013', '29', '2020-07-22 13:39:09', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(374, 'JV00013', '29', '2020-07-22 13:40:21', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(375, 'JV00013', '29', '2020-07-22 13:42:37', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(376, 'JV00013', '29', '2020-07-22 13:43:43', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(377, 'JV00013', '29', '2020-07-22 13:44:58', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(378, 'JV00013', '29', '2020-07-22 13:46:10', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(379, 'JV00013', '29', '2020-07-22 13:47:17', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(380, 'JV00013', '29', '2020-07-22 13:48:43', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(381, 'JV00013', '29', '2020-07-22 13:49:56', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(382, 'JV00013', '29', '2020-07-22 13:51:08', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(383, 'JV00013', '29', '2020-07-22 13:52:33', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(384, 'JV00013', '29', '2020-07-22 13:54:08', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(385, 'JV00013', '29', '2020-07-22 13:55:35', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(386, 'JV00013', '138', '2020-07-22 14:06:16', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(387, 'JV00013', '138', '2020-07-22 14:27:36', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(388, 'JV00013', '138', '2020-07-22 14:32:24', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(389, 'JV00013', '138', '2020-07-22 14:48:25', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(390, 'JV00013', '138', '2020-07-22 14:52:56', '00009', 1, 'Casing 13-3/8"', '1.68', '2.02', '2.02', 'PPLi', '1', 'From Jetty'),
(391, 'JV00013', '138', '2020-07-22 14:56:51', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(392, 'JV00013', '138', '2020-07-22 15:02:54', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(393, 'JV00013', '138', '2020-07-22 15:07:57', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(394, 'JV00013', '138', '2020-07-22 15:11:06', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(395, 'JV00013', '138', '2020-07-22 15:15:22', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(396, 'JV00013', '138', '2020-07-22 15:21:18', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(397, 'JV00013', '138', '2020-07-22 15:27:13', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(398, 'JV00013', '138', '2020-07-22 15:32:01', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(399, 'JV00013', '138', '2020-07-22 15:48:34', '00009', 1, 'Casing 13-3/8"', '1.68', '2.02', '2.02', 'PPLi', '1', 'From Jetty'),
(400, 'JV00013', '138', '2020-07-22 15:52:36', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(401, 'JV00013', '138', '2020-07-22 15:57:22', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(402, 'JV00013', '138', '2020-07-22 16:00:15', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(403, 'JV00013', '138', '2020-07-22 16:04:00', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(404, 'JV00013', '138', '2020-07-22 16:07:43', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(405, 'JV00013', '138', '2020-07-22 16:12:13', '00009', 1, 'Casing 13-3/8"', '1.68', '2.02', '2.02', 'PPLi', '1', 'From Jetty'),
(406, 'JV00013', '138', '2020-07-22 16:15:56', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(407, 'JV00013', '138', '2020-07-22 16:19:11', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(408, 'JV00013', '138', '2020-07-22 16:22:37', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(409, 'JV00013', '138', '2020-07-22 16:26:31', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(410, 'JV00013', '138', '2020-07-22 16:30:44', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(411, 'JV00013', '138', '2020-07-22 16:33:43', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(412, 'JV00013', '138', '2020-07-22 16:36:57', '00009', 1, 'Casing 13-3/8"', '1.68', '2.02', '2.02', 'PPLi', '1', 'From Jetty'),
(413, 'JV00013', '138', '2020-07-22 16:40:45', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(414, 'JV00013', '138', '2020-07-22 16:45:14', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(415, 'JV00013', '138', '2020-07-22 16:48:48', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(416, 'JV00013', '138', '2020-07-22 16:55:11', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(417, 'JV00013', '138', '2020-07-22 17:00:03', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(418, 'JV00013', '138', '2020-07-22 17:03:20', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(419, 'JV00013', '138', '2020-07-22 17:07:08', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(420, 'JV00013', '138', '2020-07-22 17:10:32', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(421, 'JV00013', '138', '2020-07-22 17:15:34', '00009', 3, 'Casing 13-3/8"', '5.04', '6.07', '6.07', 'PPLi', '1', 'From Jetty'),
(422, 'JV00013', '138', '2020-07-22 17:16:52', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(423, 'JV00013', '138', '2020-07-22 17:22:23', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(424, 'JV00013', '138', '2020-07-22 20:15:53', '00009', 3, 'Casing 13-3/8"', '5.04', '6.07', '6.07', 'PPLi', '1', 'From Jetty'),
(425, 'JV00013', '138', '2020-07-22 20:21:57', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(426, 'JV00013', '138', '2020-07-22 20:25:49', '00009', 3, 'Casing 13-3/8"', '5.04', '6.07', '6.07', 'PPLi', '1', 'From Jetty'),
(427, 'JV00013', '138', '2020-07-22 20:31:14', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(428, 'JV00013', '138', '2020-07-22 20:35:52', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(429, 'JV00013', '138', '2020-07-22 20:39:36', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(430, 'JV00013', '138', '2020-07-22 20:43:10', '00009', 3, 'Casing 13-3/8"', '5.04', '6.07', '6.07', 'PPLi', '1', 'From Jetty'),
(431, 'JV00013', '138', '2020-07-22 20:47:01', '00009', 3, 'Casing 13-3/8"', '5.04', '6.07', '6.07', 'PPLi', '1', 'From Jetty'),
(432, 'JV00013', '138', '2020-07-22 20:50:48', '00009', 1, 'Casing 13-3/8"', '1.68', '2.02', '2.02', 'PPLi', '1', 'From Jetty'),
(433, 'JV00013', '139', '2020-07-22 22:29:55', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Jetty'),
(434, 'JV00013', '139', '2020-07-22 22:36:18', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Jetty'),
(435, 'JV00013', '139', '2020-07-22 22:41:24', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Jetty'),
(436, 'JV00013', '139', '2020-07-22 22:46:34', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Jetty'),
(437, 'JV00013', '139', '2020-07-22 22:51:58', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Jetty'),
(438, 'JV00013', '139', '2020-07-22 22:56:35', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Jetty'),
(439, 'JV00013', '139', '2020-07-22 23:00:46', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Jetty'),
(440, 'JV00013', '139', '2020-07-22 23:05:30', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Jetty'),
(441, 'JV00013', '139', '2020-07-22 23:10:19', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Jetty'),
(442, 'JV00013', '139', '2020-07-22 23:15:59', '00010', 1, 'Casing 9-5/8"', '0.79', '0.88', '0.88', 'PPLi', '3', 'From Jetty'),
(443, 'JV00013', '139', '2020-07-22 23:19:52', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Jetty'),
(444, 'JV00013', '139', '2020-07-22 23:24:05', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Jetty'),
(445, 'JV00013', '139', '2020-07-23 08:45:57', '00010', 6, 'Casing 9-5/8"', '4.74', '5.25', '5.25', 'PPLi', '3', 'From Yard'),
(446, 'JV00013', '139', '2020-07-23 09:07:24', '00010', 10, 'Casing 9-5/8"', '7.90', '8.75', '8.75', 'PPLi', '3', 'From Jetty'),
(447, 'JV00013', '139', '2020-07-23 09:36:15', '00010', 19, 'Casing 9-5/8"', '15.01', '16.63', '16.63', 'PPLi', '3', 'From Jetty'),
(448, 'JV00013', '133', '2020-07-23 10:08:24', '00001', 3, 'Conductor 30"', '23.04', '8.35', '23.04', 'SAKA', '1', 'From Trucking'),
(449, 'JV00013', '133', '2020-07-23 10:09:39', '00001', 3, 'Conductor 30"', '23.04', '8.35', '23.04', 'SAKA', '1', 'From Trucking'),
(450, 'JV00013', '133', '2020-07-23 10:10:25', '00001', 3, 'Conductor 30"', '23.04', '8.35', '23.04', 'SAKA', '1', 'From Trucking'),
(451, 'JV00013', '139', '2020-07-23 13:26:06', '00010', 71, 'Casing 9-5/8"', '56.09', '62.13', '62.13', 'PPLi', '3', 'From Jetty'),
(452, 'JV00013', '140', '2020-07-23 14:02:51', '00011', 3, 'Pup Joint 4-1/2" TS Blue', '3.27', '1.26', '3.27', 'Terubuk', '1', 'From Jetty'),
(453, 'JV00013', '139', '2020-07-23 14:03:25', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Jetty'),
(454, 'JV00013', '139', '2020-07-23 14:12:35', '00010', 2, 'Casing 9-5/8"', '1.58', '1.75', '1.75', 'PPLi', '3', 'From Jetty'),
(455, 'JV00013', '139', '2020-07-23 14:16:11', '00010', 1, 'Casing 9-5/8"', '0.79', '0.88', '0.88', 'PPLi', '3', 'From Jetty'),
(456, 'JV00013', '139', '2020-07-23 14:19:59', '00010', 1, 'Casing 9-5/8"', '0.79', '0.88', '0.88', 'PPLi', '3', 'From Jetty'),
(457, 'JV00013', '139', '2020-07-23 14:24:08', '00010', 2, 'Casing 9-5/8"', '1.58', '1.75', '1.75', 'PPLi', '3', 'From Jetty'),
(458, 'JV00013', '139', '2020-07-23 14:28:08', '00010', 1, 'Casing 9-5/8"', '0.79', '0.88', '0.88', 'PPLi', '3', 'From Jetty'),
(459, 'JV00013', '139', '2020-07-23 14:32:02', '00010', 2, 'Casing 9-5/8"', '1.58', '1.75', '1.75', 'PPLi', '3', 'From Jetty'),
(460, 'JV00013', '139', '2020-07-23 14:35:23', '00010', 1, 'Casing 9-5/8"', '0.79', '0.88', '0.88', 'PPLi', '3', 'From Jetty'),
(461, 'JV00013', '137', '2020-07-23 15:08:05', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(462, 'JV00013', '137', '2020-07-23 15:14:24', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(463, 'JV00013', '137', '2020-07-23 15:16:17', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(464, 'JV00013', '137', '2020-07-23 15:18:34', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(465, 'JV00013', '137', '2020-07-23 15:24:59', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(466, 'JV00013', '137', '2020-07-23 15:25:54', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(467, 'JV00013', '137', '2020-07-23 15:34:37', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(468, 'JV00013', '137', '2020-07-23 15:37:02', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(469, 'JV00013', '137', '2020-07-23 15:38:32', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(470, 'JV00013', '137', '2020-07-23 15:41:09', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(471, 'JV00013', '137', '2020-07-23 15:43:30', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(472, 'JV00013', '137', '2020-07-23 15:45:06', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(473, 'JV00013', '72', '2020-07-23 15:51:25', '00032', 1, 'Nitrogen Bottle Rack', '2.54', '1.00', '2.54', 'Belida', '1', 'From Yard'),
(474, 'JV00013', '72', '2020-07-23 15:58:33', '00032', 1, 'Nitrogen Bottle Rack', '2.54', '1.00', '2.54', 'Belida', '1', 'From Yard'),
(475, 'JV00013', '72', '2020-07-23 16:02:04', '00032', 1, 'Nitrogen Bottle Rack', '2.54', '1.00', '2.54', 'Belida', '1', 'From Yard'),
(476, 'JV00006', '10', '2020-07-24 10:15:59', '220002', 2, 'testing', '8.10', '20.00', '20.00', 'test', '1', 'From Trucking'),
(477, 'JV00006', '10', '2020-07-24 10:16:39', '220002', 4, 'testing', '16.20', '40.00', '40.00', 'test', '1', 'From Jetty'),
(478, 'JV00014', '100', '2020-07-24 10:39:54', '0001', 2, 'EMPTY DNV CONTAINER 20 FT', '75.00', '6.00', '75.00', 'DNV', '1', 'To Trucking'),
(479, 'JV00015', '54', '2020-07-24 10:40:30', 'A0002', 1, 'HALF OPEN TOP CONTAINER 10 FT', '9.44', '2.00', '9.44', 'Star Energy', '1', 'To Jetty'),
(480, 'JV00014', '48', '2020-07-24 10:40:57', '0002', 1, 'Dry Food Container 20 FT', '37.77', '3.00', '37.77', 'GDSK', '1', 'To Jetty'),
(481, 'JV00015', '10', '2020-07-24 10:41:24', 'A0001', 1, 'EMPTY IBC TANK', '4.05', '0.05', '4.05', 'Champion', '1', 'To Jetty'),
(482, 'JV00015', '10', '2020-07-24 10:41:36', 'A0001', 1, 'EMPTY IBC TANK', '4.05', '0.05', '4.05', 'Champion', '1', 'To Jetty'),
(483, 'JV00015', '10', '2020-07-24 10:42:20', 'A0001', 1, 'EMPTY IBC TANK', '4.05', '0.05', '4.05', 'Champion', '1', 'To Jetty'),
(484, 'JV00015', '54', '2020-07-24 10:42:35', 'A0002', 1, 'HALF OPEN TOP CONTAINER 10 FT', '9.44', '2.00', '9.44', 'Star Energy', '1', 'To Jetty'),
(485, 'JV00015', '10', '2020-07-24 10:42:47', 'A0001', 1, 'EMPTY IBC TANK', '4.05', '0.05', '4.05', 'Champion', '1', 'To Jetty'),
(486, 'JV00015', '10', '2020-07-24 10:42:59', 'A0001', 1, 'EMPTY IBC TANK', '4.05', '0.05', '4.05', 'Champion', '1', 'To Jetty'),
(487, 'JV00015', '10', '2020-07-24 10:43:08', 'A0001', 1, 'EMPTY IBC TANK', '4.05', '0.05', '4.05', 'Champion', '1', 'To Jetty'),
(488, 'JV00015', '10', '2020-07-24 10:43:26', 'A0001', 1, 'EMPTY IBC TANK', '4.05', '0.05', '4.05', 'Champion', '1', 'To Jetty'),
(489, 'JV00015', '10', '2020-07-24 10:43:39', 'A0001', 1, 'EMPTY IBC TANK', '4.05', '0.05', '4.05', 'Champion', '1', 'To Jetty'),
(490, 'JV00014', '48', '2020-07-24 10:44:02', '0002', 1, 'Dry Food Container 20 FT', '37.77', '3.00', '37.77', 'GDSK', '1', 'To Jetty'),
(491, 'JV00013', '137', '2020-07-24 13:57:59', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(492, 'JV00013', '137', '2020-07-24 14:06:30', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(493, 'JV00013', '137', '2020-07-24 14:12:50', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(494, 'JV00013', '137', '2020-07-24 14:15:11', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(495, 'JV00013', '137', '2020-07-24 14:17:56', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(496, 'JV00013', '137', '2020-07-24 14:20:13', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(497, 'JV00013', '137', '2020-07-24 14:23:23', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(498, 'JV00013', '137', '2020-07-24 14:25:52', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(499, 'JV00013', '137', '2020-07-24 14:30:33', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(500, 'JV00013', '137', '2020-07-24 14:32:19', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(501, 'JV00013', '137', '2020-07-24 14:34:54', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(502, 'JV00013', '137', '2020-07-24 14:37:18', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(503, 'JV00013', '137', '2020-07-24 14:44:49', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(504, 'JV00013', '137', '2020-07-24 14:49:48', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(505, 'JV00013', '137', '2020-07-24 14:52:45', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(506, 'JV00013', '137', '2020-07-24 14:55:20', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(507, 'JV00013', '137', '2020-07-24 14:58:09', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(508, 'JV00013', '137', '2020-07-24 15:01:29', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(509, 'JV00013', '137', '2020-07-24 15:04:27', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(510, 'JV00013', '137', '2020-07-24 15:06:55', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(511, 'JV00013', '137', '2020-07-24 15:08:52', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(512, 'JV00013', '137', '2020-07-24 15:10:26', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(513, 'JV00013', '137', '2020-07-24 15:12:09', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(514, 'JV00013', '93', '2020-07-24 15:23:14', '00007', 1, 'Offshore Basket , Dump Irom', '22.34', '12.00', '22.34', 'Anadril', '1', 'From Trucking'),
(515, 'JV00013', '93', '2020-07-24 15:36:15', '00006', 1, 'Offshore Basket 2Ea Mud Motor', '22.34', '10.00', '22.34', 'Anadril', '1', 'From Trucking'),
(516, 'JV00013', '93', '2020-07-24 15:39:38', '00004', 1, 'Offshore basket , 2 Ea Telescope', '22.34', '10.00', '22.34', 'Anadril', '1', 'From Trucking'),
(517, 'JV00013', '134', '2020-07-24 15:51:25', '00002', 1, 'OST Basket', '10.54', '9.00', '10.54', 'Testing', '1', 'From Jetty'),
(518, 'JV00013', '149', '2020-07-24 15:57:32', '00018', 1, 'Offshore Basket 13.3 SNTBA', '22.48', '12.00', '22.48', 'Terubuk', '1', 'From Jetty'),
(519, 'JV00013', '152', '2020-07-24 16:06:53', '00030', 1, 'Offshore Basket Aoru', '6.39', '6.00', '6.39', 'Dowel Schlumberger', '1', 'From Jetty'),
(520, 'JV00013', '137', '2020-07-24 16:24:28', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(521, 'JV00013', '133', '2020-07-24 16:33:25', '00001', 1, 'Conductor 30"', '7.68', '2.78', '7.68', 'SAKA', '1', 'From Jetty'),
(522, 'JV00013', '133', '2020-07-24 16:44:48', '00001', 1, 'Conductor 30"', '7.68', '2.78', '7.68', 'SAKA', '1', 'From Jetty'),
(523, 'JV00013', '133', '2020-07-24 16:53:29', '00001', 1, 'Conductor 30"', '7.68', '2.78', '7.68', 'SAKA', '1', 'From Jetty'),
(524, 'JV00013', '133', '2020-07-28 08:23:48', '00001', 11, 'Conductor 30"', '84.48', '30.61', '84.48', 'SAKA', '1', 'Not Available'),
(525, 'JV00013', '135', '2020-07-28 08:25:09', '00003', 4, 'Propane Rack', '7.52', '1.50', '7.52', 'Testing', '1', 'Not Available'),
(526, 'JV00013', '136', '2020-07-28 08:25:34', '00005', 1, 'Radio Active Source', '6.75', '2.00', '6.75', 'Anadril', '1', 'Not Available'),
(527, 'JV00013', '137', '2020-07-28 08:25:48', '00008', 14, 'Cutting Skip', '89.04', '14.00', '89.04', 'PPLi', '1', 'Not Available'),
(528, 'JV00013', '142', '2020-07-28 08:26:03', '00012', 2, 'Pup Joint 4-1/2" Vam Top', '2.12', '1.26', '2.12', 'Terubuk', '1', 'Not Available'),
(529, 'JV00013', '141', '2020-07-28 08:26:18', '00013', 38, 'Tubing Claim Protector', '37.62', '0.59', '37.62', 'Terubuk', '1', 'Not Available'),
(530, 'JV00013', '144', '2020-07-28 08:26:44', '00014', 8, 'RE-Entry Guide\r\n\r\n\r\n', '0.96', '0.06', '0.96', 'Terubuk', '1', 'Not Available'),
(531, 'JV00013', '145', '2020-07-28 08:27:04', '00015', 8, 'W/O Replacement DTD', '8.72', '0.15', '8.72', 'Terubuk', '1', 'Not Available'),
(532, 'JV00013', '146', '2020-07-28 08:28:05', '00016', 1, 'Assy 4-1/2" ', '0.75', '0.24', '0.75', 'Terubuk', '1', 'Not Available'),
(533, 'JV00013', '148', '2020-07-28 08:29:09', '00017', 2, 'Packer VGP ', '1.48', '0.20', '1.48', 'Terubuk', '1', 'Not Available'),
(534, 'JV00013', '150', '2020-07-28 08:30:08', '00019', 1, 'Sea Container , Jack Baker + Fishing Tools', '38.70', '12.00', '38.70', 'Terubuk', '1', 'Not Available'),
(535, 'JV00013', '151', '2020-07-28 08:30:37', '00020', 6, '20FT Open Top Container ', '207.36', '15.00', '207.36', 'Terubuk', '1', 'Not Available'),
(536, 'JV00013', '36', '2020-07-28 08:31:00', '00021', 120, 'Sodium Chloride', '207.60', '120.00', '207.60', 'Dowel Schlumberger', '1', 'Not Available'),
(537, 'JV00013', '29', '2020-07-28 08:31:33', '00023', 40, '0907 (40 BE)', '57.60', '40.00', '57.60', 'Dowel Schlumberger', '1', 'Not Available'),
(538, 'JV00013', '72', '2020-07-28 08:32:15', '00031', 6, 'NItrogen Bottle rack', '15.24', '6.00', '15.24', 'Belida', '1', 'Not Available'),
(539, 'JV00013', '153', '2020-07-28 08:32:26', '00033', 2, 'Sea Container Various Equipment', '75.00', '14.00', '75.00', 'Barakuda', '1', 'Not Available'),
(540, 'JV00013', '29', '2020-07-28 10:52:27', '00039', 48, 'NaCL', '69.12', '48.00', '69.12', 'Halliburton', '3', 'Not Available'),
(541, 'JV00016', '100', '2020-08-01 14:35:47', '7541095', 1, '20Ft Container NYKU', '37.50', '3.50', '37.50', 'GDSK', '1', 'To Jetty'),
(542, 'JV00016', '100', '2020-08-01 14:38:12', '7020831', 1, '20FT Container TAHU', '37.50', '2.50', '37.50', 'GDSK', '1', 'To Jetty'),
(543, 'JV00016', '100', '2020-08-01 14:40:16', '7020750', 1, '20Ft Container TAHU', '37.50', '3.50', '37.50', 'GDSK', '1', 'To Jetty'),
(544, 'JV00016', '65', '2020-08-01 14:42:22', '1500033302', 1, '20FT Container TAHU ', '38.30', '2.50', '38.30', 'GDSK', '1', 'To Jetty'),
(545, 'JV00016', '66', '2020-08-01 14:46:47', '00002', 6, 'Bag Plastic Waste', '8.64', '0.68', '8.64', 'Medco Energi', '1', 'To Jetty'),
(546, 'JV00016', '66', '2020-08-01 14:47:33', '00002', 1, 'Bag Plastic Waste', '1.44', '0.11', '1.44', 'Medco Energi', '1', 'To Jetty'),
(547, 'JV00016', '66', '2020-08-01 14:48:42', '00002', 6, 'Bag Plastic Waste', '8.64', '0.68', '8.64', 'Medco Energi', '1', 'To Jetty'),
(548, 'JV00016', '66', '2020-08-01 14:51:06', '00002', 6, 'Bag Plastic Waste', '8.64', '0.68', '8.64', 'Medco Energi', '1', 'To Jetty'),
(549, 'JV00016', '66', '2020-08-01 14:54:15', '00002', 6, 'Bag Plastic Waste', '8.64', '0.68', '8.64', 'Medco Energi', '1', 'To Jetty'),
(550, 'JV00016', '66', '2020-08-01 14:56:53', '00002', 6, 'Bag Plastic Waste', '8.64', '0.68', '8.64', 'Medco Energi', '1', 'To Jetty'),
(551, 'JV00016', '66', '2020-08-01 14:59:32', '00002', 6, 'Bag Plastic Waste', '8.64', '0.68', '8.64', 'Medco Energi', '1', 'To Jetty'),
(552, 'JV00016', '66', '2020-08-01 15:02:12', '00002', 6, 'Bag Plastic Waste', '8.64', '0.68', '8.64', 'Medco Energi', '1', 'To Jetty'),
(553, 'JV00016', '66', '2020-08-01 15:05:00', '00002', 6, 'Bag Plastic Waste', '8.64', '0.68', '8.64', 'Medco Energi', '1', 'To Jetty'),
(554, 'JV00016', '66', '2020-08-01 15:06:22', '00002', 4, 'Bag Plastic Waste', '5.76', '0.45', '5.76', 'Medco Energi', '1', 'To Jetty'),
(555, 'JV00016', '66', '2020-08-01 15:07:22', '00001', 2, 'Bag Paper Trash', '2.88', '0.24', '2.88', 'Medco Energi', '1', 'To Jetty'),
(556, 'JV00016', '66', '2020-08-01 15:09:52', '00001', 6, 'Bag Paper Trash', '8.64', '0.71', '8.64', 'Medco Energi', '1', 'To Jetty'),
(557, 'JV00016', '66', '2020-08-01 15:12:37', '00001', 6, 'Bag Paper Trash', '8.64', '0.71', '8.64', 'Medco Energi', '1', 'To Jetty'),
(558, 'JV00016', '66', '2020-08-01 15:15:19', '00001', 6, 'Bag Paper Trash', '8.64', '0.72', '8.64', 'Medco Energi', '1', 'To Jetty'),
(559, 'JV00016', '66', '2020-08-01 15:19:55', '00001', 6, 'Bag Paper Trash', '8.64', '0.71', '8.64', 'Medco Energi', '1', 'To Jetty'),
(560, 'JV00016', '66', '2020-08-01 15:22:10', '00001', 6, 'Bag Paper Trash', '8.64', '0.72', '8.64', 'Medco Energi', '1', 'To Jetty'),
(561, 'JV00016', '66', '2020-08-01 15:24:22', '00001', 6, 'Bag Paper Trash', '8.64', '0.71', '8.64', 'Medco Energi', '1', 'To Jetty'),
(562, 'JV00016', '66', '2020-08-01 15:27:36', '00001', 4, 'Bag Paper Trash', '5.76', '0.48', '5.76', 'Medco Energi', '1', 'To Jetty'),
(563, 'JV00016', '202', '2020-08-01 16:35:29', '1500033619', 1, 'Bouy', '3.38', '1.50', '3.38', 'SLB', '1', 'To Jetty'),
(564, 'JV00016', '100', '2020-08-01 16:36:00', '6052827', 1, '20FT Container KKTU', '37.50', '3.50', '37.50', 'GDSK', '1', 'To Jetty'),
(565, 'JV00016', '126', '2020-08-01 16:38:51', '1500033619', 1, '8.3 M Cargo Basket ID 28476', '13.94', '3.50', '13.94', 'SLB', '1', 'To Jetty'),
(566, 'JV00016', '132', '2020-08-01 16:43:26', '1500033472', 1, '14.3M Offshore Basket SN.B 1404', '22.31', '5.50', '22.31', 'Baker Hughes', '1', 'To Jetty'),
(567, 'JV00016', '201', '2020-08-01 16:54:29', '1500033619', 1, 'Skor Bottle ID SLB 25398 / 641402H', '9.88', '5.50', '9.88', 'SLB', '1', 'To Jetty'),
(568, 'JV00016', '100', '2020-08-01 16:57:20', '1032370', 1, '20FT Container CCLU', '37.50', '3.50', '37.50', 'GDSK', '1', 'To Jetty'),
(569, 'JV00016', '100', '2020-08-01 16:59:16', '1027862', 1, '20FT Container CCLU', '37.50', '3.50', '37.50', 'GDSK', '1', 'To Jetty'),
(570, 'JV00016', '100', '2020-08-01 17:05:21', '5752702', 1, '20FT Container DVRU', '37.50', '3.50', '37.50', 'GDSK', '1', 'To Jetty'),
(571, 'JV00016', '100', '2020-08-01 17:09:08', '2601330', 1, 'Offshore Container 20FT SN.AORU 2601330', '37.50', '14.00', '37.50', 'MI Swaco', '1', 'To Jetty'),
(572, 'JV00016', '173', '2020-08-01 17:10:11', '1500033542', 1, 'Half Container 10FT', '8.14', '2.00', '8.14', 'Dowell Anadrill', '1', 'To Jetty'),
(573, 'JV00016', '168', '2020-08-01 19:46:50', '1500033455', 1, 'Mud Logging Unit', '48.09', '14.00', '48.09', 'Geoservice', '1', 'To Jetty'),
(574, 'JV00016', '66', '2020-08-01 19:58:12', '1500033570', 1, 'Wooden Box : King Nipple & Gasket', '1.44', '0.30', '1.44', 'Halliburton', '1', 'To Jetty'),
(575, 'JV00016', '100', '2020-08-01 20:06:33', '1500033713', 1, '20FT Container S/N  OEGU 000605', '37.50', '13.00', '37.50', 'Medco Energi', '1', 'To Jetty'),
(576, 'JV00016', '218', '2020-08-01 20:26:38', '1500033742', 1, '13.3M Offshore Basket SN.AORU 133012', '20.75', '4.50', '20.75', 'Baker Hughes', '1', 'To Jetty'),
(577, 'JV00016', '34', '2020-08-01 20:33:44', '1500033742', 1, '13.3M Offshore Basket SN.TD-CB-13-012', '18.72', '6.00', '18.72', 'Baker Hughes', '1', 'To Jetty'),
(578, 'JV00016', '207', '2020-08-01 20:43:07', '1500033619', 1, 'Winch Skid unit ID.WDDS-A 722', '10.16', '7.50', '10.16', 'SLB', '1', 'To Jetty'),
(579, 'JV00016', '65', '2020-08-01 20:50:23', 'OEGU 16700', 1, '20FT Container', '38.30', '8.00', '38.30', 'Medco Energi', '1', 'To Jetty'),
(580, 'JV00016', '212', '2020-08-01 20:58:01', '1500033570', 1, 'Basket AORU 4602870', '21.14', '7.50', '21.14', 'Halliburton', '1', 'To Jetty'),
(581, 'JV00016', '178', '2020-08-01 21:03:46', '1500033463', 1, 'Steel Basket TD-CB-12-011', '20.66', '9.00', '20.66', 'NOV', '1', 'To Jetty'),
(582, 'JV00016', '174', '2020-08-01 21:16:52', '1500033542', 1, 'Basket TD-CB-12-003', '20.94', '12.50', '20.94', 'Dowell Anadrill', '1', 'To Jetty'),
(583, 'JV00016', '167', '2020-08-01 21:21:57', '1500033582', 1, 'Iso Tank 9602', '39.92', '23.00', '39.92', 'PPLi', '1', 'To Jetty'),
(584, 'JV00016', '167', '2020-08-01 21:31:54', '1500033582', 1, 'Opentop Container 20FT BSLU', '39.92', '12.00', '39.92', 'PPLi', '1', 'To Jetty'),
(585, 'JV00016', '167', '2020-08-01 21:44:19', '1500033582', 1, 'Opentop Container 20FT BSLU 9202940', '39.92', '10.00', '39.92', 'PPLi', '1', 'To Jetty'),
(586, 'JV00016', '206', '2020-08-01 21:54:20', '1500033619', 1, 'Wireline Generator ID.GSU-LWU 002', '2.50', '1.00', '2.50', 'SLB', '1', 'To Jetty'),
(587, 'JV00016', '208', '2020-08-01 21:58:06', '1500033619', 1, 'Logging Cabin ID.CCL-LWU 002', '14.74', '1.70', '14.74', 'SLB', '1', 'To Jetty'),
(588, 'JV00016', '219', '2020-08-01 22:01:53', '1500033562', 1, 'Multi Split Power Pack 103198', '7.02', '4.50', '7.02', 'Halliburton', '1', 'To Jetty'),
(589, 'JV00016', '158', '2020-08-01 22:04:31', '1500033364', 1, 'N2 Tank', '18.97', '6.00', '18.97', 'Ronard', '1', 'To Jetty'),
(590, 'JV00016', '215', '2020-08-01 22:11:28', '1500033635', 1, 'Offshore Container 10FT SN.FSDG 3165', '20.25', '2.50', '20.25', 'Vintage', '1', 'To Jetty'),
(591, 'JV00016', '126', '2020-08-01 22:16:23', '1500033619', 1, '8.3M Cargo Basket ID.TD-CB-8002', '13.94', '3.00', '13.94', 'SLB', '1', 'To Jetty'),
(592, 'JV00016', '27', '2020-08-01 22:18:42', '1500033570', 1, 'Opentop container 20FT AORU 3601910', '38.44', '9.50', '38.44', 'Halliburton', '1', 'To Jetty'),
(593, 'JV00016', '100', '2020-08-01 22:20:30', '0006051', 1, '20FT Container ', '37.50', '7.00', '37.50', 'Medco Energi', '1', 'To Jetty'),
(594, 'JV00016', '215', '2020-08-01 22:21:22', '1500033635', 1, 'Offshore Container 10FT SN.FSDG 3165', '20.25', '3.00', '20.25', 'Vintage', '1', 'To Jetty'),
(595, 'JV00016', '165', '2020-08-01 22:28:05', '1500033673', 1, 'Water Bag ', '2.25', '1.00', '2.25', 'Indospec Asia', '1', 'To Jetty'),
(596, 'JV00016', '105', '2020-08-01 22:31:27', '1500033621', 2, 'Liferaft', '4.00', '1.00', '4.00', 'Segara Permai', '1', 'To Jetty'),
(597, 'JV00016', '105', '2020-08-01 22:32:59', '1500033621', 1, 'Liferaft', '2.00', '0.50', '2.00', 'Segara Permai', '1', 'To Jetty'),
(598, 'JV00016', '66', '2020-08-01 22:35:35', '80813004', 1, 'D168', '1.44', '1.50', '1.50', 'Dowell Anadrill', '1', 'To Jetty'),
(599, 'JV00016', '66', '2020-08-01 22:36:21', 'CY80813004', 1, 'D193', '1.44', '1.00', '1.44', 'Dowell Anadrill', '1', 'To Jetty'),
(600, 'JV00016', '105', '2020-08-01 22:37:16', '1500033621', 1, 'Liferaft', '2.00', '0.50', '2.00', 'Segara Permai', '1', 'To Jetty'),
(601, 'JV00016', '102', '2020-08-01 22:38:49', '15000536', 2, '4 Box + 1 Plt Part VRU', '2.00', '0.80', '2.00', 'Eka Maulana', '1', 'To Jetty'),
(602, 'JV00016', '154', '2020-08-01 22:39:52', '1500033118', 1, 'Sertification Inflatable Liferaft', '1.65', '0.50', '1.65', 'Segara Permai', '1', 'To Jetty'),
(603, 'JV00016', '222', '2020-08-01 22:40:40', '1500033617', 1, 'Paint Material Sea Barrier', '0.05', '0.50', '0.50', 'Dimas Chandra', '1', 'To Jetty'),
(604, 'JV00016', '221', '2020-08-01 22:42:19', '1500033767', 1, 'Prowell Lifting Sling unit *Rejected = 3 set', '1.01', '0.50', '1.01', 'Interwell', '1', 'To Jetty'),
(605, 'JV00016', '205', '2020-08-01 22:43:56', '1500033619', 1, 'Wireline Power Pack ID.DAPS-A 3734', '7.49', '3.50', '7.49', 'SLB', '1', 'To Jetty'),
(606, 'JV00016', '216', '2020-08-01 22:46:27', '1500033635', 1, 'Half Container 20FT SN.FSHH6244', '22.50', '4.00', '22.50', 'Vintage', '1', 'To Jetty'),
(607, 'JV00016', '209', '2020-08-01 22:49:29', '1500033619', 2, 'Wooden Box  ', '1.90', '1.00', '1.90', 'SLB', '1', 'To Jetty'),
(608, 'JV00016', '154', '2020-08-01 22:51:35', '1500033118', 1, 'Sertification Inflatable Liferaft', '1.65', '0.50', '1.65', 'Segara Permai', '1', 'To Jetty'),
(609, 'JV00016', '105', '2020-08-01 22:52:19', '1500033621', 2, 'Liferaft', '4.00', '1.00', '4.00', 'Segara Permai', '1', 'To Jetty'),
(610, 'JV00016', '7', '2020-08-01 22:52:58', '23000146', 1, 'Container AORU 23000146 ', '18.90', '3.50', '18.90', 'Well Tec', '1', 'To Jetty'),
(611, 'JV00016', '66', '2020-08-01 22:54:41', '80813004', 1, 'D168', '1.44', '1.50', '1.50', 'Dowell Anadrill', '1', 'To Jetty'),
(612, 'JV00016', '66', '2020-08-01 22:56:52', '80813004', 1, 'D168', '1.44', '1.50', '1.50', 'Dowell Anadrill', '1', 'To Jetty'),
(613, 'JV00016', '156', '2020-08-01 22:59:00', '1500033536', 1, 'Part VRU', '1.00', '1.52', '1.52', 'Eka Maulana', '1', 'To Jetty'),
(614, 'JV00016', '160', '2020-08-01 23:01:07', '1500033623', 1, 'Cylinder Rack SEU-53-RAC009-03', '1.50', '0.50', '1.50', 'Sarku', '1', 'To Jetty'),
(615, 'JV00016', '155', '2020-08-01 23:01:39', '1500033544', 1, 'Cylinder Rack  MOCW-RACK-ACE', '2.10', '0.50', '2.10', 'Alfons Wirahadikususma', '1', 'To Jetty'),
(616, 'JV00016', '155', '2020-08-01 23:03:30', '1500033623', 1, 'Cylinder Rack MOCW-Rack-OXY-04', '2.10', '2.10', '2.10', 'Sarku', '1', 'To Jetty'),
(617, 'JV00016', '155', '2020-08-01 23:04:10', '1500033544', 1, 'Cylinder Rack  MOCW-RACK-OXY', '2.10', '4.00', '4.00', 'Alfons Wirahadikususma', '1', 'To Jetty'),
(618, 'JV00016', '198', '2020-08-01 23:07:07', '1205-46', 1, 'DNV Box SN.Yap 1205-46', '4.20', '2.50', '4.20', 'Nabors', '1', 'To Jetty'),
(619, 'JV00016', '185', '2020-08-01 23:08:07', '047', 1, 'Transport Frame SN.C-TFPT-047', '4.06', '2.50', '4.06', 'Nabors', '1', 'To Jetty'),
(620, 'JV00016', '181', '2020-08-01 23:09:37', 'SN 1092-2', 1, 'HYD Power Unit , Diesel', '5.75', '2.50', '5.75', 'Nabors', '1', 'To Jetty'),
(621, 'JV00016', '189', '2020-08-01 23:12:43', '0157-1-500', 1, 'Hyd Power unit Electric', '3.75', '2.50', '3.75', 'Nabors', '1', 'To Jetty'),
(622, 'JV00016', '182', '2020-08-01 23:13:27', 'SN 9187', 1, 'Power Unit Electric', '4.49', '2.50', '4.49', 'Nabors', '1', 'To Jetty'),
(623, 'JV00016', '190', '2020-08-01 23:15:47', '1205-25', 1, 'Offshore Basket SN.Yap-1205-25', '3.70', '4.50', '4.50', 'Nabors', '1', 'To Jetty'),
(624, 'JV00016', '177', '2020-08-01 23:17:13', '1500033463', 1, 'Steel Box CS-003', '1.70', '0.50', '1.70', 'NOV', '1', 'To Jetty'),
(625, 'JV00016', '185', '2020-08-01 23:18:52', '045', 1, 'Transport Frame SN.C-TFPT-045', '4.06', '2.50', '4.06', 'Nabors', '1', 'To Jetty'),
(626, 'JV00016', '184', '2020-08-01 23:21:22', '019', 1, 'Transport Frame SN.C-TFPT-019', '4.56', '2.50', '4.56', 'Nabors', '1', 'To Jetty'),
(627, 'JV00016', '197', '2020-08-01 23:25:07', '120762', 1, 'Basket SN.Yap 1207-62', '5.04', '2.00', '5.04', 'Nabors', '1', 'To Jetty'),
(628, 'JV00016', '198', '2020-08-01 23:26:09', '1500033707', 1, 'DNV Box SN.Yap 1207-59', '4.20', '3.00', '4.20', 'Nabors', '1', 'To Jetty'),
(629, 'JV00016', '108', '2020-08-01 23:29:05', 'SLB 12162', 1, 'Metal Box , SLB 12162', '1.00', '1.50', '1.50', 'Dowell Anadrill', '1', 'To Jetty'),
(630, 'JV00016', '198', '2020-08-02 01:35:37', '1205-31', 1, 'DNV Box SN.Yap 1205-31', '4.20', '2.50', '4.20', 'Nabors', '1', 'To Jetty'),
(631, 'JV00016', '186', '2020-08-02 01:36:46', '0042', 1, 'Transport Frame SN , C-PFPT-0042', '4.32', '2.50', '4.32', 'Nabors', '1', 'To Jetty'),
(632, 'JV00016', '195', '2020-08-02 01:38:08', '1103-02', 1, 'Basket SN.Yap 1103-02', '3.24', '1.50', '3.24', 'Nabors', '1', 'To Jetty'),
(633, 'JV00016', '192', '2020-08-02 01:38:49', '045', 1, 'Break Out Vise ', '3.79', '2.00', '3.79', 'Nabors', '1', 'To Jetty'),
(634, 'JV00016', '193', '2020-08-02 01:39:29', '1207-53', 1, 'Offshore Basket SN.Yap-1207-53', '3.78', '2.00', '3.78', 'Nabors', '1', 'To Jetty'),
(635, 'JV00016', '183', '2020-08-02 01:39:58', 'Yap 1103-0', 1, 'DNV Box SN.Yap 1103-05', '4.19', '3.00', '4.19', 'Nabors', '1', 'To Jetty'),
(636, 'JV00016', '155', '2020-08-02 01:44:50', '1500033623', 1, 'Cylinder Rack : SEU-53-ROX016', '2.10', '1.50', '2.10', 'Sarku', '1', 'To Jetty'),
(637, 'JV00016', '179', '2020-08-02 01:45:54', '1500033463', 1, '6FT Mini Container , Medco', '8.10', '3.00', '8.10', 'Medco Energi', '1', 'To Jetty'),
(638, 'JV00016', '61', '2020-08-02 01:47:44', '1500033538', 1, 'Empty Tote Tank Ex Chemical', '2.39', '1.00', '2.39', 'Luas Birus Utama', '1', 'To Jetty'),
(639, 'JV00016', '61', '2020-08-02 01:48:21', '1500033631', 1, 'Empty Tote Tank S - 9441', '2.39', '1.00', '2.39', 'Luas Birus Utama', '1', 'To Jetty'),
(640, 'JV00016', '161', '2020-08-02 01:48:35', '1500033631', 1, 'Empty Tote Tank SZB - 4431', '3.07', '1.00', '3.07', 'Luas Birus Utama', '1', 'To Jetty'),
(641, 'JV00016', '61', '2020-08-02 01:48:52', '1500033631', 1, 'Empty Tote Tank S - 965 ND', '2.39', '1.00', '2.39', 'Luas Birus Utama', '1', 'To Jetty'),
(642, 'JV00016', '161', '2020-08-02 01:49:29', '1500033631', 1, 'Empty Tote Tank S - 9432', '3.07', '1.00', '3.07', 'Luas Birus Utama', '1', 'To Jetty'),
(643, 'JV00016', '61', '2020-08-02 01:52:12', '1500033631', 1, 'Empty Tote Tank S-9523', '2.39', '1.00', '2.39', 'Luas Birus Utama', '1', 'To Jetty'),
(644, 'JV00016', '162', '2020-08-02 01:52:47', '1500033631', 1, 'Empty Tote Tank S - 965 ND', '5.05', '1.00', '5.05', 'Luas Birus Utama', '1', 'To Jetty'),
(645, 'JV00016', '162', '2020-08-02 01:52:59', '1500033631', 1, 'Empty Tote Tank S - 9282', '5.05', '1.00', '5.05', 'Luas Birus Utama', '1', 'To Jetty'),
(646, 'JV00016', '61', '2020-08-02 01:53:15', '1500033631', 1, 'Empty Tote Tank S - 9653', '2.39', '1.00', '2.39', 'Luas Birus Utama', '1', 'To Jetty'),
(647, 'JV00016', '61', '2020-08-02 01:53:40', '1500033546', 1, 'Empty Chemical Starhib WMS-697', '2.39', '1.00', '2.39', 'Luas Birus Utama', '1', 'To Jetty'),
(648, 'JV00016', '61', '2020-08-02 01:53:53', '1500033546', 1, 'Empty Chemical Starhib WMS-965', '2.39', '1.00', '2.39', 'Luas Birus Utama', '1', 'To Jetty'),
(649, 'JV00016', '61', '2020-08-02 01:54:10', '1500033631', 1, 'Empty Tote Tank S - 9282', '2.39', '1.00', '2.39', 'Luas Birus Utama', '1', 'To Jetty'),
(650, 'JV00016', '160', '2020-08-02 01:58:06', '1500033623', 1, 'Cylinder Rack SEU-53-RAC009', '1.50', '0.50', '1.50', 'Sarku', '1', 'To Jetty'),
(651, 'JV00016', '214', '2020-08-02 02:07:07', '1500033572', 1, 'Panel Cutting Dryer complete with 4 legs', '2.59', '2.00', '2.59', 'Halliburton', '1', 'To Jetty'),
(652, 'JV00016', '166', '2020-08-02 02:07:24', '1500033679', 1, 'REntal Blue Rack Acetelene', '2.88', '1.50', '2.88', 'Indoship Marine', '1', 'To Jetty'),
(653, 'JV00016', '204', '2020-08-02 02:10:10', '1500033619', 1, 'Dog House ID SLB-GSU-6MDG-001', '20.16', '8.00', '20.16', 'SLB', '1', 'To Jetty'),
(654, 'JV00016', '108', '2020-08-02 02:12:59', '1500033619', 1, 'Fishing Kit ID JAO-FB-1309', '1.00', '1.00', '1.00', 'SLB', '1', 'To Jetty'),
(655, 'JV00016', '203', '2020-08-02 02:13:35', '1500033619', 1, 'WAC-SS 0642/SLB 05819', '15.00', '3.50', '15.00', 'SLB', '1', 'To Jetty'),
(656, 'JV00016', '213', '2020-08-02 02:15:50', '1500033572', 1, 'Cutting Dryer complete with 75 HP Electrik', '12.32', '4.00', '12.32', 'Halliburton', '1', 'To Jetty'),
(657, 'JV00016', '211', '2020-08-02 02:16:28', '1500033570', 1, 'Tool Box c/w 4 legs Sling & Shackle', '1.89', '1.00', '1.89', 'Halliburton', '1', 'To Jetty'),
(658, 'JV00016', '157', '2020-08-02 02:18:36', '1500033335', 1, 'Rack TBR c/w Sling', '3.75', '1.50', '3.75', 'Medco Energi', '1', 'To Jetty'),
(659, 'JV00016', '169', '2020-08-02 02:19:09', '1500033576', 1, 'Cylinder Rack SN BSU', '4.19', '1.50', '4.19', 'Sarku', '1', 'To Jetty'),
(660, 'JV00016', '131', '2020-08-02 02:21:33', '1500033542', 1, 'Empty 12.3 M Offshore Basket', '22.82', '4.00', '22.82', 'Dowell Anadrill', '1', 'To Jetty'),
(661, 'JV00016', '159', '2020-08-02 02:21:59', '1500033389', 1, 'Cylinder Rack 16 BR', '4.21', '1.50', '4.21', 'Medco Energi', '1', 'To Jetty'),
(662, 'JV00016', '166', '2020-08-02 02:22:16', '1500033679', 1, 'REntal Blue Rack  Oxygen', '2.88', '1.50', '2.88', 'Indoship Marine', '1', 'To Jetty'),
(663, 'JV00016', '170', '2020-08-02 02:23:29', '1500033576', 1, 'Cylinder Rack SN BSU AR 001', '1.55', '1.50', '1.55', 'Sarku', '1', 'To Jetty'),
(664, 'JV00016', '65', '2020-08-02 02:24:11', '1500033846', 1, 'Mobile Grasscutter , Type Raider', '38.30', '2.50', '38.30', 'GDSK', '1', 'To Jetty'),
(665, 'JV00016', '220', '2020-08-02 02:26:36', '1500033910', 1, 'Skid Ganzet 180 KVA SN.SEU-52-FGN 001-05', '16.56', '4.00', '16.56', 'Halliburton', '1', 'To Jetty'),
(666, 'JV00016', '176', '2020-08-02 02:26:59', '1500033463', 2, 'Lay Down Cradle ', '22.40', '0.50', '22.40', 'NOV', '1', 'To Jetty'),
(667, 'JV00016', '102', '2020-08-02 02:28:24', '15000536', 1, '4 Box + 1 Plt Part VRU', '1.00', '0.40', '1.00', 'Eka Maulana', '1', 'To Jetty'),
(668, 'JV00016', '102', '2020-08-02 02:29:09', '15000536', 1, '4 Box + 1 Plt Part VRU', '1.00', '0.40', '1.00', 'Eka Maulana', '1', 'To Jetty'),
(669, 'JV00016', '102', '2020-08-02 02:37:33', '15000536', 1, '4 Box + 1 Plt Part VRU', '1.00', '0.40', '1.00', 'Eka Maulana', '1', 'To Jetty'),
(670, 'JV00016', '187', '2020-08-02 02:42:52', 'RS-030', 1, 'RIg Up Stand , RS-030', '6.16', '2.50', '6.16', 'Nabors', '1', 'To Jetty'),
(671, 'JV00016', '39', '2020-08-02 02:43:02', '1500033619', 1, 'Mini Container ID JAO -BB 1306', '8.75', '3.00', '8.75', 'SLB', '1', 'To Jetty'),
(672, 'JV00016', '210', '2020-08-02 02:43:12', '1500033570', 1, 'Holding Tank with 4 lega sling', '2.16', '1.30', '2.16', 'Halliburton', '1', 'To Jetty'),
(673, 'JV00016', '183', '2020-08-02 02:43:31', 'SN.Yap 120', 1, 'DNV Box SN.Yap 1205-48', '4.19', '5.00', '5.00', 'Nabors', '1', 'To Jetty'),
(674, 'JV00016', '172', '2020-08-02 02:43:47', '1500033609', 1, '6FT Container Medco', '8.67', '2.50', '8.67', 'Medco Energi', '1', 'To Jetty'),
(675, 'JV00016', '165', '2020-08-02 02:43:56', '1500033673', 1, 'Water Bag ', '2.25', '1.00', '2.25', 'Indospec Asia', '1', 'To Jetty'),
(676, 'JV00016', '217', '2020-08-02 02:45:11', '00004', 1, 'Wooden Box Mud Lab Testing Equipment', '1.20', '0.50', '1.20', 'Baroid', '1', 'To Jetty'),
(677, 'JV00016', '171', '2020-08-02 02:45:19', '1500033607', 1, '6FT Container AME 5816', '8.59', '2.50', '8.59', 'Medco Energi', '1', 'To Jetty'),
(678, 'JV00016', '202', '2020-08-02 02:45:44', '15000170', 1, 'D-Air 2', '3.38', '1.00', '3.38', 'Halliburton', '1', 'To Jetty'),
(679, 'JV00002', '14', '2020-08-03 11:29:07', '1500003', 1, 'Empty Tote Tank', '4.05', '0.25', '4.05', 'Champion', '1', 'To Jetty'),
(680, 'JV00002', '10', '2020-08-03 11:31:02', '1500004', 1, 'Empty IBC Tank', '4.05', '0.50', '4.05', 'Champion', '1', 'To Jetty');

-- --------------------------------------------------------

--
-- Table structure for table `alat_berat`
--

CREATE TABLE IF NOT EXISTS `alat_berat` (
`id_alatberat` int(11) NOT NULL,
  `nm_alatberat` varchar(30) NOT NULL,
  `jns_alatberat` varchar(30) NOT NULL,
  `area_alatberat` varchar(20) NOT NULL,
  `status_alatberat` varchar(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alat_berat`
--

INSERT INTO `alat_berat` (`id_alatberat`, `nm_alatberat`, `jns_alatberat`, `area_alatberat`, `status_alatberat`) VALUES
(1, 'CRANE KATO R-32 70 TON', 'CRANE', 'KJ4', '0'),
(2, 'CRANE KATO R-33 70 TON', 'CRANE', 'KJ4', '0'),
(3, 'CRANE KATO R-35 70 TON', 'CRANE', 'KJ4', '0'),
(4, 'FORKLIFT KALMAR F-19 15 TON', 'FORKLIFT', 'KJ4', '0'),
(5, 'FORKLIFT F-35  8 TON', 'FORKLIFT', 'KJ4', '0'),
(6, 'FORKLIFT F-33  3,5 TON', 'FORKLIFT', 'KJ4', '0'),
(7, 'FORKLIFT F-32  3,5 TON', 'FORKLIFT', 'KJ4', '0'),
(8, 'FORKLIFT F-31 3,5 TON', 'FORKLIFT', 'KJ4', '0'),
(9, 'TRAILER 40 FT B.9239 IL', 'TRAILER', 'KJ4', '0'),
(10, 'TRUCK 3/4 B.9136 IT', 'TRUCK', 'KJ4', '0'),
(11, 'FORKLIFT F-34  8 TON', 'FORKLIFT', 'KJ4', '0'),
(12, 'Tambah CRANE KATO R-32 70 TON', 'CRANE', 'KJ4', '0'),
(13, 'CRANE TEREX DEMAG', 'CRANE', 'KJ4', '0'),
(14, 'CRANE TADANO', 'CRANE', 'KJ4', '0'),
(15, 'Crane R34 cap 60 Ton', 'CRANE', 'KJ1', '0'),
(16, 'Crane R36 cap 110 Ton', 'CRANE', 'KJ1', '0'),
(17, 'Forklift F08 cap 2,5 Ton', 'FORKLIFT', 'KJ1', '0'),
(18, 'Forklift F10 cap 3,5 Ton', 'FORKLIFT', 'KJ1', '0'),
(19, 'Forklift F14 cap 3 Ton', 'FORKLIFT', 'KJ1', '0'),
(20, 'Forklift F15 cap 3 Ton', 'FORKLIFT', 'KJ1', '0'),
(21, 'Forklift F18 cap 8 Ton', 'FORKLIFT', 'KJ1', '0'),
(22, 'Crane kato R32 70 ton', 'CRANE', 'KJ4', '0');

-- --------------------------------------------------------

--
-- Table structure for table `bkk`
--

CREATE TABLE IF NOT EXISTS `bkk` (
`id_bkk` int(11) NOT NULL,
  `nm_vendor` varchar(50) NOT NULL,
  `no_bkk` varchar(30) DEFAULT NULL,
  `tgl_pengajuan` date DEFAULT NULL,
  `tgl_pengajuankasir` date DEFAULT NULL,
  `tgl_verifikasimanager` date DEFAULT NULL,
  `tgl_verifikasidireksi` date DEFAULT NULL,
  `tgl_bkk` date NOT NULL,
  `terbilang_bkk` varchar(100) NOT NULL,
  `nocek_bkk` varchar(20) DEFAULT NULL,
  `keterangan` varchar(200) NOT NULL,
  `nilai_bkk` int(10) NOT NULL,
  `ppn_bkk` int(10) NOT NULL DEFAULT '0',
  `bll_bkk` int(10) NOT NULL,
  `jml_bkk` decimal(10,0) NOT NULL,
  `bank_tujuan` varchar(20) NOT NULL,
  `norek_tujuan` varchar(20) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `id_divisi` varchar(15) NOT NULL,
  `id_pemohon` varchar(15) NOT NULL,
  `id_manager` varchar(15) DEFAULT NULL,
  `id_gm` varchar(15) DEFAULT NULL,
  `id_direktur` varchar(15) DEFAULT NULL,
  `dari_bank` varchar(15) DEFAULT NULL,
  `dari_rekening` varchar(15) DEFAULT NULL,
  `doc_lpj` varchar(100) NOT NULL DEFAULT '0',
  `status_bkk` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bkk`
--

INSERT INTO `bkk` (`id_bkk`, `nm_vendor`, `no_bkk`, `tgl_pengajuan`, `tgl_pengajuankasir`, `tgl_verifikasimanager`, `tgl_verifikasidireksi`, `tgl_bkk`, `terbilang_bkk`, `nocek_bkk`, `keterangan`, `nilai_bkk`, `ppn_bkk`, `bll_bkk`, `jml_bkk`, `bank_tujuan`, `norek_tujuan`, `invoice`, `id_divisi`, `id_pemohon`, `id_manager`, `id_gm`, `id_direktur`, `dari_bank`, `dari_rekening`, `doc_lpj`, `status_bkk`) VALUES
(1, 'PT.Hipernet Indota', '016/BKK/EN/IX/19', '2019-09-26', '2019-09-26', '2019-09-26', '2019-09-26', '2019-09-26', 'Enam Juta Lima Ratus Enam Ribu ', '-', 'PEMBAYARAN INTERNET KJ4 PRIODE AGUSTUS 2019', 5909091, 10, 6000, '6506000', 'BCA', '00086002954', 'PT_EKA_NURI-2019-09.pdf', '2', '24', '31', NULL, '32', 'MANDIRI', '1408', 'contohlpj.pdf', '7'),
(2, 'PT. REMALA ABADI', NULL, '2019-10-01', NULL, NULL, NULL, '0000-00-00', 'Lima Juta Lima Ratus  Ribu ', NULL, 'Pembayaran Internet Hayam Wuruk Priode Oktober', 5000000, 10, 0, '5500000', 'BCA', '2303003614', 'INV_RA01-5746_01_10.19.pdf', '2', '24', NULL, NULL, NULL, NULL, NULL, '0', '3'),
(3, 'indihome', NULL, '2019-10-07', NULL, NULL, NULL, '0000-00-00', 'Tiga Ratus Sebelas Ribu ', NULL, 'Internet KJ5', 280000, 10, 3000, '311000', 'Virtual Account Mand', '90000000123', 'indihome_9014009006304201906.pdf', '2', '24', NULL, NULL, NULL, NULL, NULL, '0', '1'),
(4, 'PT. REMALA ABADI', NULL, '2019-10-01', '2019-10-08', '2019-10-08', '2019-10-08', '0000-00-00', 'Lima Juta Lima Ratus  Ribu ', NULL, 'Pembayaran Internet KJ4 Bandwith 10 Mbps', 5000000, 10, 0, '5500000', 'BCA', '2303003614', 'INV_RA01-5746_01_10.19.pdf', '2', '24', '31', NULL, '32', NULL, NULL, '0', '6'),
(8, 'INDIHOME', NULL, '2019-10-01', NULL, NULL, NULL, '0000-00-00', 'Tiga Ratus Sebelas Ribu ', NULL, 'Pembayaran Internet KJ5 ', 280000, 10, 3000, '311000', 'BCA', '2303003614', 'indihome_9014009006304201910.pdf', '2', '24', NULL, NULL, NULL, NULL, NULL, '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
`id_client` int(15) NOT NULL,
  `kd_client` varchar(10) DEFAULT NULL,
  `nm_client` varchar(50) NOT NULL,
  `no_kontrak` varchar(50) DEFAULT NULL,
  `deskripsi_kontrak` text,
  `tgl_awal` datetime DEFAULT NULL,
  `tgl_akhir` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id_client`, `kd_client`, `nm_client`, `no_kontrak`, `deskripsi_kontrak`, `tgl_awal`, `tgl_akhir`) VALUES
(1, 'PHE', 'PERTAMINA HULU ENERGI', 'No.Contract: 332004155', 'Shorebase rental & Material Handling services\r\n', '2018-09-06 00:00:00', '2022-12-14 00:00:00'),
(2, 'PREM', 'PREMIER OIL', 'No. Contract: CO-17142359', 'Provision Integrated shorebase\r\n', '2017-08-15 00:00:00', '2022-08-14 00:00:00'),
(3, 'MEDC', 'MEDCO ENERGY', 'No.Contract: BF12635', 'Jakarta Staging Services\r\n', '2018-12-18 00:00:00', '2019-04-17 00:00:00'),
(4, 'STAR', 'STAR ENERGY', ' No.Contract: 4200002570', 'Provision Jakarta Warehouse & Stevedoring ervices\r\n', '2017-07-01 00:00:00', '2019-06-30 00:00:00'),
(5, 'PETRO', 'PETROGAS', 'No.Contract: PBL-2019-003', 'Transit Whs Rental & Management services contract', '2019-01-01 00:00:00', '2020-10-14 00:00:00'),
(6, 'CONO', 'CONOCO', NULL, NULL, NULL, NULL),
(7, 'BAK', 'BAKER', 'No.Contract: 004/CTRK/BAKER/XI/16/RA', '2000 sqm  covered storage and 7950 sqm open storage\r\n', '2018-02-28 00:00:00', '2019-08-31 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `detail_joborder`
--

CREATE TABLE IF NOT EXISTS `detail_joborder` (
  `id_cargo` varchar(15) NOT NULL,
  `id_joborder` varchar(15) CHARACTER SET latin1 NOT NULL,
  `id_jenis` varchar(15) NOT NULL,
  `timeCargo` time DEFAULT NULL,
  `doc_no` varchar(10) NOT NULL,
  `qty_cargo` int(5) NOT NULL,
  `rincian_cargo` varchar(250) NOT NULL,
  `m3_cargo` decimal(6,2) NOT NULL,
  `ton_cargo` decimal(6,2) NOT NULL,
  `revton_cargo` decimal(6,2) NOT NULL,
  `remarks_cargo` varchar(50) DEFAULT NULL,
  `status_cargo` varchar(15) NOT NULL DEFAULT '1',
  `cargo_final` varchar(15) NOT NULL DEFAULT '0',
  `row_version` varchar(15) NOT NULL DEFAULT '1',
  `keterangan` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `detail_joborder`
--

INSERT INTO `detail_joborder` (`id_cargo`, `id_joborder`, `id_jenis`, `timeCargo`, `doc_no`, `qty_cargo`, `rincian_cargo`, `m3_cargo`, `ton_cargo`, `revton_cargo`, `remarks_cargo`, `status_cargo`, `cargo_final`, `row_version`, `keterangan`) VALUES
('IC000039', 'JV00001', '7', NULL, '15998', 0, 'Food STUFF  PT.STM', '0.00', '0.00', '0.00', 'Inco', '1', '0', '1', NULL),
('IC000040', 'JV00001', '7', NULL, '15999', 0, 'Food STUFF  PT.INDOCATEN', '0.00', '0.00', '0.00', 'Indocaten', '1', '0', '1', NULL),
('IC000041', 'JV00001', '6', NULL, '123', 0, 'Food Stuff', '0.00', '0.00', '0.00', 'Indocaten', '1', '0', '1', NULL),
('IC000042', 'JV00001', '8', NULL, '321', 0, 'TOTE TANK MEDCO', '0.00', '0.00', '0.00', 'Medco', '1', '0', '1', NULL),
('IC000043', 'JV00001', '8', NULL, '543', 0, 'TOTE TANK PREMIER OIL', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000045', 'JV00002', '7', NULL, '1500002', 2, 'DNV Container 10 FT', '37.80', '6.00', '37.80', 'Medco Energi', '1', '0', '1', NULL),
('IC000048', 'JV00002', '18', NULL, '1500005', 1, 'Iron Basket , c/w Lifting Set', '9.65', '4.00', '9.65', 'Halliburton', '1', '0', '1', NULL),
('IC000049', 'JV00002', '6', NULL, '1500001', 4, 'Empty Dry Container 20 FT', '171.52', '10.00', '171.52', 'GDSK', '1', '0', '3', NULL),
('IC000051', 'JV00002', '14', NULL, '1500003', 15, 'Empty Tote Tank', '60.75', '3.75', '60.75', 'Champion', '1', '0', '1', NULL),
('IC000052', 'JV00002', '10', NULL, '1500004', 15, 'Empty IBC Tank', '60.75', '7.50', '60.75', 'Champion', '1', '0', '1', NULL),
('IC000053', 'JV00003', '24', NULL, '170001', 0, 'Empty Dry Container 20FT', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000054', 'JV00003', '11', NULL, '170005', 0, 'Container Waste PPLi', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000055', 'JV00003', '6', NULL, '170003', 0, 'Container Waste Organik ', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000056', 'JV00003', '15', NULL, '170002', 0, 'Offshore Basket C/w Sling', '0.00', '0.00', '0.00', 'CSOL', '1', '0', '1', NULL),
('IC000057', 'JV00003', '25', NULL, '170004', 0, 'Chiller Container 20FT', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000058', 'JV00003', '14', NULL, '170010', 0, 'Empty T/Tank', '0.00', '0.00', '0.00', 'Champion', '1', '0', '1', NULL),
('IC000059', 'JV00003', '28', NULL, '170008', 0, 'Cylinder Rack Nitrogen', '0.00', '0.00', '0.00', 'Sarku', '1', '0', '1', NULL),
('IC000060', 'JV00004', '6', NULL, '1500001', 0, 'Empty Food Container 20FT ', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000061', 'JV00004', '11', NULL, '1500011', 0, 'Container Limbah B3', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000062', 'JV00004', '31', NULL, '1500211', 0, 'Paletan Chemical', '0.00', '0.00', '0.00', 'Baker Huges', '1', '0', '1', NULL),
('IC000063', 'JV00004', '30', NULL, '15002121', 0, 'Oli Drum Pertamina', '0.00', '0.00', '0.00', 'Segara Permai', '1', '0', '1', NULL),
('IC000064', 'JV00004', '7', NULL, '15002126', 0, 'Container PO', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000065', 'JV00004', '6', NULL, '15002130', 0, 'Waske Organic Container', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000066', 'JV00005', '32', NULL, '150004', 0, 'Chemical MI Swaco', '0.00', '0.00', '0.00', 'MI Swaco', '1', '0', '1', NULL),
('IC000067', 'JV00005', '6', NULL, '1500029081', 0, 'Empty Food Stuff', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000068', 'JV00005', '6', NULL, '1500031902', 0, 'Sarku Equipment', '0.00', '0.00', '0.00', 'Sarku', '1', '0', '1', NULL),
('IC000069', 'JV00005', '6', NULL, '1500029082', 0, 'Empty Food Stuff', '0.00', '0.00', '0.00', 'Indoship', '1', '0', '1', NULL),
('IC000070', 'JV00005', '7', NULL, '1500029083', 0, 'Offshore Container', '0.00', '0.00', '0.00', 'OSCT', '1', '0', '1', NULL),
('IC000071', 'JV00005', '6', NULL, '1500031660', 0, 'Opentop Container PPLi', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000072', 'JV00006', '10', NULL, '220002', 0, 'testing', '0.00', '0.00', '0.00', 'test', '1', '0', '1', NULL),
('IC000073', 'JV00007', '24', NULL, '180001', 0, 'Empty Dry Food Container', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000074', 'JV00007', '11', NULL, '180002', 0, 'Container Limbah', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000075', 'JV00007', '29', NULL, '180003', 0, 'Palet Chemical', '0.00', '0.00', '0.00', 'Baker Huges', '1', '0', '1', NULL),
('IC000076', 'JV00007', '34', NULL, '180004', 0, 'Offshore Basket', '0.00', '0.00', '0.00', 'Baker Huges', '1', '0', '1', NULL),
('IC000077', 'JV00007', '7', NULL, '180005', 0, 'Chiller Food Container', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000078', 'JV00008', '24', NULL, '180001', 0, 'Dry Food Container 20 FT', '0.00', '0.00', '0.00', 'Indocaten', '1', '0', '1', NULL),
('IC000079', 'JV00008', '15', NULL, '180002', 0, 'Offshore Basket', '0.00', '0.00', '0.00', 'Baker', '1', '0', '1', NULL),
('IC000080', 'JV00008', '29', NULL, '180003', 0, 'Chemical Barite', '0.00', '0.00', '0.00', 'Baker', '1', '0', '1', NULL),
('IC000081', 'JV00008', '37', NULL, '180004', 0, 'Life Raft', '0.00', '0.00', '0.00', 'Champion', '1', '0', '1', NULL),
('IC000082', 'JV00008', '10', NULL, '180005', 0, 'IBC TANK EMPTY', '0.00', '0.00', '0.00', 'Champion', '1', '0', '2', NULL),
('IC000083', 'JV00009', '58', NULL, '0001', 0, 'Crude Oil Sample Ex MT Nectar', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000084', 'JV00009', '38', NULL, '0002', 0, 'Waste Skip FEL-278', '0.00', '0.00', '0.00', 'Wastec', '1', '0', '3', NULL),
('IC000085', 'JV00009', '38', NULL, '0003', 0, 'Waste Skip FEL-279', '0.00', '0.00', '0.00', 'Wastec', '1', '0', '1', NULL),
('IC000086', 'JV00009', '38', NULL, '0004', 0, 'Waste Skip FEL-280', '0.00', '0.00', '0.00', 'Wastec', '1', '0', '1', NULL),
('IC000087', 'JV00009', '38', NULL, '0005', 0, 'Waste Skip FEL-285', '0.00', '0.00', '0.00', 'Wastec', '1', '0', '1', NULL),
('IC000088', 'JV00009', '38', NULL, '0006', 0, 'Waste Skip FEL-289', '0.00', '0.00', '0.00', 'Wastec', '1', '0', '1', NULL),
('IC000089', 'JV00009', '38', NULL, '0007', -1, 'Waste Skip FEL-290', '0.00', '0.00', '0.00', 'Wastec', '1', '0', '1', NULL),
('IC000090', 'JV00009', '38', NULL, '0008', 0, 'Waste Skip FEL-291', '0.00', '0.00', '0.00', 'Wastec', '1', '0', '1', NULL),
('IC000091', 'JV00009', '38', NULL, '0009', 0, 'Waste Skip FEL-296', '0.00', '0.00', '0.00', 'Wastec', '1', '0', '1', NULL),
('IC000092', 'JV00009', '38', NULL, '0010', 0, 'Waste Skip FEL-300', '0.00', '0.00', '0.00', 'Wastec', '1', '0', '1', NULL),
('IC000093', 'JV00009', '7', NULL, '0011', 0, '10FT LLE Container', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000094', 'JV00009', '39', NULL, '0012', 0, 'Mini Container OEG-690218', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000095', 'JV00009', '39', NULL, '0013', 0, 'Mini Container OEG-690567', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000096', 'JV00009', '39', NULL, '0014', 0, 'Mini Container OEG-690574', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000097', 'JV00009', '39', NULL, '0015', 0, 'Mini Container OEG-690605', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000098', 'JV00009', '38', NULL, '0016', 0, 'Mini Container OEG-696643', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000099', 'JV00009', '38', NULL, '0017', 0, 'Mini Container OEG-696997', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000100', 'JV00009', '39', NULL, '0018', 0, 'Mini Container OEG-697625', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000101', 'JV00009', '39', NULL, '0019', 0, 'Mini Container OEG-697627', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000102', 'JV00009', '40', NULL, '0020', 0, '10FT Food Container No.OEG 1009097', '0.00', '0.00', '0.00', 'BBS', '1', '0', '1', NULL),
('IC000103', 'JV00009', '41', NULL, '0021', 0, '10FT Food Container No.OEGU 1009348', '0.00', '0.00', '0.00', 'BBS', '1', '0', '1', NULL),
('IC000104', 'JV00009', '41', NULL, '0022', 0, '10FT Food Container No.OEGU 1009498', '0.00', '0.00', '0.00', 'BBS', '1', '0', '1', NULL),
('IC000105', 'JV00009', '40', NULL, '0023', 0, '10FT Chiller Food Container OEGU 1009498', '0.00', '0.00', '0.00', 'BBS', '1', '0', '1', NULL),
('IC000106', 'JV00009', '40', NULL, '0024', 0, '10FT Dry Food Container No.OEGU 1200544', '0.00', '0.00', '0.00', 'BBS', '1', '0', '1', NULL),
('IC000107', 'JV00009', '40', NULL, '0025', 0, '10FT Dry Food Container No.OEGU 1201366', '0.00', '0.00', '0.00', 'BBS', '1', '0', '1', NULL),
('IC000108', 'JV00009', '43', NULL, '0026', 0, '10FT Half Open Top Container OEGU 1436648', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000109', 'JV00009', '43', NULL, '0027', 0, '10FT Half Open Top Container OEGU 1441897', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000110', 'JV00009', '43', NULL, '0028', 0, '10FT Open Top Container OEGU 1442110', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000111', 'JV00009', '43', NULL, '0029', 0, '10FT Open Top Container OEGU 1442126', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000112', 'JV00009', '43', NULL, '0030', 0, '10FT Half Opentop Container OEGU 1442131', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000113', 'JV00009', '43', NULL, '0031', 0, '10FT Half Opentop Container OEGU 1442445', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000114', 'JV00009', '44', NULL, '0032', 0, '20FT Opentop Container OEGU 2437593', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000115', 'JV00009', '44', NULL, '0033', 0, '20FT Opentop Container OEGU 2437633', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000116', 'JV00009', '44', NULL, '0034', 0, '20FT Half Opentop Container OEGU 2442286', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000117', 'JV00009', '44', NULL, '0035', 0, '20FT Half Opentop Container OEGU 2445710', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000118', 'JV00009', '44', NULL, '0036', 0, '20FT Half Opentop Container OEGU 2445768', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000119', 'JV00009', '45', NULL, '0037', 0, 'ToteTank OFH-1212', '0.00', '0.00', '0.00', 'Champion', '1', '0', '1', NULL),
('IC000120', 'JV00009', '45', NULL, '0038', 0, 'ToteTank OFH-1213', '0.00', '0.00', '0.00', 'Champion', '1', '0', '1', NULL),
('IC000121', 'JV00009', '45', NULL, '0039', 0, 'ToteTank OFH-1280', '0.00', '0.00', '0.00', 'Champion', '1', '0', '1', NULL),
('IC000122', 'JV00009', '46', NULL, '0040', 0, 'Empty Nitrogen Rack', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000123', 'JV00009', '47', NULL, '0041', 0, 'Cylinder Rack R-POI', '0.00', '0.00', '0.00', 'Arkadia', '1', '0', '1', NULL),
('IC000124', 'JV00002', '11', NULL, '150009', 1, 'Container PPLi', '37.50', '3.00', '37.50', 'Incdocater', '1', '0', '2', NULL),
('IC000125', 'JV00011', '60', NULL, '1500032729', 0, 'Liferaft Zodiac', '0.00', '0.00', '0.00', 'Segara Permai', '1', '0', '1', NULL),
('IC000126', 'JV00011', '60', NULL, '1500032727', 0, 'Liferaft Viking', '0.00', '0.00', '0.00', 'Segara Permai', '1', '0', '1', NULL),
('IC000127', 'JV00011', '59', NULL, '1500032889', 0, 'Firex Dry Powder for Hydrotest', '0.00', '0.00', '0.00', 'Segara Permai', '1', '0', '1', NULL),
('IC000128', 'JV00011', '61', NULL, '1500032731', 0, 'Empty ToteTank Starpol S-9284', '0.00', '0.00', '0.00', 'Luas Birus Utama', '1', '0', '1', NULL),
('IC000129', 'JV00011', '63', NULL, '1500032731', 0, 'IBC Staraid S-9433 ', '0.00', '0.00', '0.00', 'Luas Birus Utama', '1', '0', '1', NULL),
('IC000130', 'JV00011', '61', NULL, '1500032731', 0, 'Empty ToteTank Starpol S-9284', '0.00', '0.00', '0.00', 'Luas Birus Utama', '1', '0', '1', NULL),
('IC000131', 'JV00011', '64', NULL, '1500032731', 0, 'Empty ToteTank Starbreak S-9524', '0.00', '0.00', '0.00', 'Luas Birus Utama', '1', '0', '1', NULL),
('IC000132', 'JV00011', '65', NULL, '1500032891', 0, '20FT Dry Container OEGU 7020699', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000133', 'JV00011', '65', NULL, '1500032891', 0, '20FT Dry Container OEGU 7020533', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000134', 'JV00011', '66', NULL, '1500033252', 0, 'Domestic Waste', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000135', 'JV00011', '9', NULL, '1300014990', 0, 'Chemical Luas Birus 9441 (T/T Reject)', '0.00', '0.00', '0.00', 'Luas Birus Utama', '1', '0', '1', NULL),
('IC000136', 'JV00011', '9', NULL, '1300014990', 0, 'Chemical ,Luas Birus  9442 (T/T Reject)', '0.00', '0.00', '0.00', 'Luas Birus Utama', '1', '0', '1', NULL),
('IC000137', 'JV00011', '9', NULL, '1300014990', 0, 'Chemical , Glycol', '0.00', '0.00', '0.00', 'Luas Birus Utama', '1', '0', '1', NULL),
('IC000138', 'JV00011', '68', NULL, '1500033272', 0, 'Webing bekas', '0.00', '0.00', '0.00', 'CKB', '1', '0', '1', NULL),
('IC000139', 'JV00011', '69', NULL, '1500033272', 0, 'Sling Bekas', '0.00', '0.00', '0.00', 'CKB', '1', '0', '1', NULL),
('IC000140', 'JV00011', '70', NULL, '1500033272', 0, 'Ban Bekas', '0.00', '0.00', '0.00', 'CKB', '1', '0', '1', NULL),
('IC000141', 'JV00011', '71', NULL, '1500033272', 0, 'Tower Lamp', '0.00', '0.00', '0.00', 'CKB', '1', '0', '1', NULL),
('IC000142', 'JV00011', '70', NULL, '1500033272', 0, 'Ban Bekas', '0.00', '0.00', '0.00', 'CKB', '1', '0', '1', NULL),
('IC000143', 'JV00011', '65', NULL, '00000', 0, '20FT Portable Living Bed Room', '0.00', '0.00', '0.00', 'Indoship Marina', '1', '0', '1', NULL),
('IC000144', 'JV00011', '72', NULL, '00000', 0, 'Rental Blue Rack Nitrogen GBR-43', '0.00', '0.00', '0.00', 'Indoship Marina', '1', '0', '1', NULL),
('IC000145', 'JV00011', '73', NULL, '00000', 0, 'Rental Blue Rack Nitrogen GBR-51', '0.00', '0.00', '0.00', 'Indoship Marina', '1', '0', '1', NULL),
('IC000146', 'JV00011', '72', NULL, '00000', 0, 'Rental Blue Rack Oxygen GBR-56', '0.00', '0.00', '0.00', 'Indoship Marina', '1', '0', '1', NULL),
('IC000147', 'JV00011', '73', NULL, '00000', 0, 'Rental Blue Rack Acetylene GBR-58', '0.00', '0.00', '0.00', 'Indoship Marina', '1', '0', '1', NULL),
('IC000148', 'JV00011', '72', NULL, '00000', 0, 'Full NItrogen Cylinder GBR-49', '0.00', '0.00', '0.00', 'Indoship Marina', '1', '0', '1', NULL),
('IC000149', 'JV00011', '27', NULL, '1500033215', 0, '20FT Opentop Container BSLU 9203905', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000150', 'JV00011', '27', NULL, '1500033268', 0, '20FT Opentop Container BSLU 9203119', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000151', 'JV00011', '27', NULL, '1500033268', 0, '20FT Opentop Container BSLU 9721', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000152', 'JV00011', '27', NULL, '1500033215', 0, '20FT Opentop Container BSLU 9204326', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000153', 'JV00011', '27', NULL, '1500033215', 0, '20FT Opentop COntainer BSLU 9203741', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000154', 'JV00011', '27', NULL, '1500033215', 0, '20FT Opentop Container BSLU 9204162', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000155', 'JV00011', '27', NULL, '1500033215', 0, '20FT Opentop Container BSLU 9204331', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000156', 'JV00011', '74', NULL, '1500033266', 0, '4.5M Half Height Basket Containing Rig Supplies', '0.00', '0.00', '0.00', 'Vantage Drilling', '1', '0', '1', NULL),
('IC000157', 'JV00011', '76', NULL, '1500033266', 0, '3M Half Height Basket Containing Rig Supplies', '0.00', '0.00', '0.00', 'Vantage Drilling', '1', '0', '1', NULL),
('IC000158', 'JV00011', '77', NULL, '1500033266', 0, 'Gas Bottle Rack TD-GB-16-017', '0.00', '0.00', '0.00', 'Vantage Drilling', '1', '0', '1', NULL),
('IC000159', 'JV00011', '77', NULL, '1500033266', 0, 'Gas Bottle Rack TD-GB-16-030', '0.00', '0.00', '0.00', 'Vantage Drilling', '1', '0', '1', NULL),
('IC000160', 'JV00011', '78', NULL, '1500033266', 0, 'Gas Bottle Rack BSL 16622', '0.00', '0.00', '0.00', 'Vantage Drilling', '1', '0', '1', NULL),
('IC000161', 'JV00011', '78', NULL, '1500033266', 0, 'Gas Bottle Rack BSL 16694', '0.00', '0.00', '0.00', 'Vantage Drilling', '1', '0', '1', NULL),
('IC000162', 'JV00011', '42', NULL, '1500033266', 0, '10Ft Dry Container FSDG 3168', '0.00', '0.00', '0.00', 'Vantage Drilling', '1', '0', '1', NULL),
('IC000163', 'JV00011', '79', NULL, '00000', 0, 'Centrifuge DE-1000 11506576', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000164', 'JV00011', '79', NULL, '00000', 0, 'Centrifuge DE-1000 11569514', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000165', 'JV00011', '80', NULL, '00000', 0, 'Stand Centrifuge 13441832', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000166', 'JV00011', '80', NULL, '00000', 0, 'Stand Centrfuge 13441833', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000167', 'JV00011', '81', NULL, '00000', 0, 'De Press 10592470', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000168', 'JV00011', '82', NULL, '00000', 0, 'Screw Conveyor Motor Drive ', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000169', 'JV00011', '83', NULL, '00000', 0, 'Housing Auger , Greeting 3 Ea', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000170', 'JV00011', '84', NULL, '00000', 0, 'Pipe Casing 10"x 2.5M , 4 Joint', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000171', 'JV00011', '89', NULL, '00000', 0, 'Feed Pump , Red Colour 13426444', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000172', 'JV00011', '85', NULL, '00000', 0, 'Feed Pump , Red Colour 13426445', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000173', 'JV00011', '86', NULL, '00000', 0, 'Twin Pod 11566506', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000174', 'JV00011', '87', NULL, '00000', 0, 'Slurry Skid 11235098', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000175', 'JV00011', '88', NULL, '00000', 0, 'Filtration Tool Box ', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000176', 'JV00011', '85', NULL, '00000', 0, 'Feed Pump PSI Max 2000', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000177', 'JV00011', '85', NULL, '00000', 0, 'Feed Pump PSI Max  2000', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000178', 'JV00011', '90', NULL, '00000', 0, 'Effluent Tank 12 BBL', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000179', 'JV00011', '91', NULL, '00000', 0, 'Hose Basket 11829699', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000180', 'JV00011', '92', NULL, '1500033008', 0, 'Offshore Basket SN.WI 05695602', '0.00', '0.00', '0.00', 'Weatherford', '1', '0', '1', NULL),
('IC000181', 'JV00011', '93', NULL, '1500033006', 0, 'Offshore Basket SN.Auro 133017', '0.00', '0.00', '0.00', 'Baker Huges', '1', '0', '1', NULL),
('IC000182', 'JV00011', '92', NULL, '1500033006', 0, 'Offshore Basket SN.TD-CB-14-006', '0.00', '0.00', '0.00', 'Baker Huges', '1', '0', '1', NULL),
('IC000183', 'JV00011', '6', NULL, '00000', 0, '20FT Container Auro 2601860 ', '0.00', '0.00', '0.00', 'MI  ', '1', '0', '1', NULL),
('IC000184', 'JV00011', '94', NULL, '1500033298', 0, 'Cargo Basket CBZ 528', '0.00', '0.00', '0.00', 'Sarku', '1', '0', '1', NULL),
('IC000185', 'JV00011', '95', NULL, '1500033270', 0, 'Offshore Basket SN.CPS-XJK-TBAS-035', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL),
('IC000186', 'JV00011', '96', NULL, '1500033296', 0, 'Clamp ', '0.00', '0.00', '0.00', 'Sarku', '1', '0', '1', NULL),
('IC000187', 'JV00011', '97', NULL, '1500033024', 0, 'Clamp For As', '0.00', '0.00', '0.00', 'Schlumberger', '1', '0', '1', NULL),
('IC000188', 'JV00011', '99', NULL, '1500033026', 0, '30FT Basket Aoru 4900176', '0.00', '0.00', '0.00', 'Edgina', '1', '0', '1', NULL),
('IC000189', 'JV00011', '98', NULL, '1500033024', 0, 'TAS', '0.00', '0.00', '0.00', 'Schlumberger', '1', '0', '1', NULL),
('IC000190', 'JV00012', '100', NULL, '1500033177', 0, 'MT DNV Container 20FT SN.Aoru 360132-9', '0.00', '0.00', '0.00', 'Sarku', '1', '0', '1', NULL),
('IC000191', 'JV00012', '100', NULL, '1500033177', 0, 'MT DNV Container 20FT SN.Aoru 360091-3', '0.00', '0.00', '0.00', 'Sarku', '1', '0', '1', NULL),
('IC000192', 'JV00012', '101', NULL, '1500033177', 0, 'MT Half Container 10FT SN.HOP-03/C10/08/09', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000193', 'JV00012', '102', NULL, '1500033075', 0, 'Cylinder Rack Including Nitrogen MT Botol', '0.00', '0.00', '0.00', 'Sarku', '1', '0', '1', NULL),
('IC000194', 'JV00012', '103', NULL, '1500033088', 0, '20 Ea Firex Dry Powder (Hydrtest)', '0.00', '0.00', '0.00', 'Segara Permai', '1', '0', '3', NULL),
('IC000195', 'JV00012', '100', NULL, '1500033213', 0, '20FT AORUO 3601334', '0.00', '0.00', '0.00', 'Romario Putra Pratama', '1', '0', '1', NULL),
('IC000196', 'JV00012', '104', NULL, '1500032942', 0, 'Empty Tote Tank S-9282 , Tank Number LBU-2019-0048', '0.00', '0.00', '0.00', 'PT.LBU JKT', '1', '0', '1', NULL),
('IC000197', 'JV00012', '104', NULL, '1500032942', 0, 'Empty Tote Tank S-965ND , Tank Number LBU-2019-002', '0.00', '0.00', '0.00', 'PT.LBU JKT', '1', '0', '1', NULL),
('IC000198', 'JV00012', '104', NULL, '1500032942', 0, 'Empty Tote Tank Ex Chemical IR-2316 , No TT Tank T-5', '0.00', '0.00', '0.00', 'PT.LBU JKT', '1', '0', '1', NULL),
('IC000199', 'JV00012', '104', NULL, '1500032942', 0, 'Empty Tote Tank S-965ND , Tank Number LBU-2019-0114', '0.00', '0.00', '0.00', 'PT.LBU JKT', '1', '0', '1', NULL),
('IC000200', 'JV00012', '104', NULL, '1500032942', 0, 'Empty Tote Tank S-965ND , Tank Number LBU-2019-0056', '0.00', '0.00', '0.00', 'PT.LBU JKT', '1', '0', '1', NULL),
('IC000201', 'JV00012', '104', NULL, '1500032942', 0, 'Empty Tote Tank S-9282 ,Tank Number LBU-2019-080', '0.00', '0.00', '0.00', 'PT.LBU JKT', '1', '0', '1', NULL),
('IC000202', 'JV00012', '104', NULL, '1500032942', 0, 'Empty Tote Tank S-965ND , Tank Number LBU-2019-007', '0.00', '0.00', '0.00', 'PT.LBU JKT', '1', '0', '1', NULL),
('IC000203', 'JV00012', '104', NULL, '1500032942', 0, 'Empty Tote Tank S-9282 , Tank Number RTF-09', '0.00', '0.00', '0.00', 'PT.LBU JKT', '1', '0', '1', NULL),
('IC000204', 'JV00012', '105', NULL, '1500033326', 0, '4 Unit Liferaft Inside 20FT Basket OEGU 2440616', '0.00', '0.00', '0.00', 'Segara Permai', '1', '0', '1', NULL),
('IC000205', 'JV00012', '100', NULL, '9456341', 0, '20FT Food Container GESU', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000206', 'JV00012', '100', NULL, '6053058', 0, '20FT Food Container KKTU', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000207', 'JV00012', '100', NULL, '7546651', 0, '20FT Food Container NYKU', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000208', 'JV00012', '100', NULL, '6050146', 0, '20FT Food Container KKTU', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000209', 'JV00012', '100', NULL, '7541095', 0, '20FT Food Container NYKU', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000210', 'JV00012', '100', NULL, '3117666', 0, '20FT Food Container CRLU', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000212', 'JV00012', '100', NULL, '7020615', 0, '20FT Food COntainer TAHU', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000213', 'JV00012', '106', NULL, '8028890', 0, '20FT Food Container CNHU', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000214', 'JV00012', '107', NULL, '1500033333', 0, 'Container warna biru KWS003', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000215', 'JV00012', '108', NULL, '1500033333', 0, 'Cradel kwr gbr 109 + kwr gbr 110', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '3', NULL),
('IC000216', 'JV00012', '109', NULL, '00000', 0, 'Waste Limbah Domestic', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000217', 'JV00012', '110', NULL, '00001', 0, '20FT Container ISO OEGU 000610-7', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000218', 'JV00012', '111', NULL, '1500032864', 0, 'Material Cylinder Empty Helium,Hydrogen & Nitrogen', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000219', 'JV00012', '112', NULL, '1500032962', 0, 'Liferaft Capasitas 25 Pax', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000220', 'JV00012', '113', NULL, '1500032849', 0, 'Material Gas Booster 1Bh/Box', '0.00', '0.00', '0.00', 'Sembodo Suroso', '1', '0', '1', NULL),
('IC000221', 'JV00012', '100', NULL, '1500032342', 0, 'White Container Consist Of Pick Up Box', '0.00', '0.00', '0.00', 'PT.CHAS', '1', '0', '1', NULL),
('IC000222', 'JV00012', '100', NULL, '1500033435', 0, '20FT Close TOP ISO Container OEGU 000604-6', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000223', 'JV00012', '115', NULL, '1300014948', 0, 'Connector 3/8" Tube OD X 1/2" MNPT 316', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000224', 'JV00012', '106', NULL, '1500033435', 0, '10FT Close TOP ISO Container OEGU 0006133', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000225', 'JV00012', '10', NULL, '1500033433', 0, 'Argon For Refill', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000226', 'JV00012', '100', NULL, '1500033386', 0, 'Empty Opentop Container 20FT SN.OEGU 2501861', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000227', 'JV00012', '100', NULL, '1500033386', 0, 'Empty Opentop 20FT SN.OEGU 2501882', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000228', 'JV00012', '117', NULL, '1500033320', 0, 'Offshore Basket SN.B6106', '0.00', '0.00', '0.00', 'Wira Insani', '1', '0', '1', NULL),
('IC000229', 'JV00012', '132', NULL, '1500033320', 0, 'Offshore Basket SN.B1401', '0.00', '0.00', '0.00', 'Wira Insani', '1', '0', '1', NULL),
('IC000230', 'JV00012', '131', NULL, '1500033324', 0, 'Offshore Basket SN.TD-CB-10-009', '0.00', '0.00', '0.00', 'Baker Huges', '1', '0', '1', NULL),
('IC000231', 'JV00012', '131', NULL, '1500033322', 0, '13.3 M Offshore Baasket SN.AORU 133107', '0.00', '0.00', '0.00', 'Dowell Anadrill', '1', '0', '1', NULL),
('IC000232', 'JV00012', '118', NULL, '1500033322', 0, 'Logging Unit SN.OLU-MA-5028', '0.00', '0.00', '0.00', 'Dowell Anadrill', '1', '0', '1', NULL),
('IC000233', 'JV00012', '119', NULL, '1500033360', 0, 'Mud Logging Mini Container N 06-GEO 0414', '0.00', '0.00', '0.00', 'Geoservice', '1', '0', '1', NULL),
('IC000234', 'JV00012', '119', NULL, '1500033360', 0, 'Mud Logging Mini Container D 04-GEO-0410', '0.00', '0.00', '0.00', 'Geoservice', '1', '0', '1', NULL),
('IC000235', 'JV00012', '121', NULL, '1500033415', 0, 'Sparepart Basket SN.JA 361', '0.00', '0.00', '0.00', 'Dowell Anadrill', '1', '0', '1', NULL),
('IC000236', 'JV00012', '122', NULL, '1500033415', 0, 'Batch Mixer', '0.00', '0.00', '0.00', 'Dowell Anadrill', '1', '0', '1', NULL),
('IC000237', 'JV00012', '123', NULL, '1500033421', 0, 'Completion Tool Box SN.CPS-XJK-TB-11', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL),
('IC000238', 'JV00012', '124', NULL, '1500033425', 0, '34FT Basket SN.M-PB-34-1055/MOOU 1229214', '0.00', '0.00', '0.00', 'Baker Huges', '1', '0', '1', NULL),
('IC000239', 'JV00012', '130', NULL, '1500033425', 0, '14.3 M Offshore Basket SN.TD-CB-14-011', '0.00', '0.00', '0.00', 'Baker Huges', '1', '0', '1', NULL),
('IC000240', 'JV00012', '100', NULL, '1511593', 0, '20FT COntainer OEGU 1511593', '0.00', '0.00', '0.00', 'Vantage Drilling', '1', '0', '1', NULL),
('IC000241', 'JV00012', '100', NULL, '1034331', 0, '20FT Container CCLU 1034331', '0.00', '0.00', '0.00', 'Vantage Drilling', '1', '0', '1', NULL),
('IC000242', 'JV00012', '125', NULL, '00002', 0, 'Mini Container c/o Coring Equipment', '0.00', '0.00', '0.00', 'NOV', '1', '0', '1', NULL),
('IC000243', 'JV00012', '126', NULL, '1500033441', 0, 'Basket TD-CB-8-006', '0.00', '0.00', '0.00', 'Schlumberger', '1', '0', '1', NULL),
('IC000244', 'JV00012', '127', NULL, '1703790', 0, 'Drilling JAR 7" SN.1703790-1', '0.00', '0.00', '0.00', 'Baker Huges', '1', '0', '1', NULL),
('IC000245', 'JV00012', '127', NULL, '34934421', 0, 'Drilling JAR 7" SN.3493442-1', '0.00', '0.00', '0.00', 'Baker Huges', '1', '0', '1', NULL),
('IC000246', 'JV00012', '128', NULL, '1500033358', 0, 'Wooden Box COnsist off : Lifting Beam ID.SLB 17093', '0.00', '0.00', '0.00', 'Heru Wicaksono', '1', '0', '1', NULL),
('IC000247', 'JV00012', '6', NULL, 'Star energ', 0, 'Kontener', '0.00', '0.00', '0.00', 'Star energy', '1', '0', '2', NULL),
('IC000248', 'JV00013', '133', NULL, '00001', 0, 'Conductor 30"', '0.00', '0.00', '0.00', 'SAKA', '1', '0', '1', NULL),
('IC000249', 'JV00013', '134', NULL, '00002', 0, 'OST Basket', '0.00', '0.00', '0.00', 'Testing', '1', '0', '1', NULL),
('IC000250', 'JV00013', '135', NULL, '00003', 0, 'Propane Rack', '0.00', '0.00', '0.00', 'Testing', '1', '0', '1', NULL),
('IC000251', 'JV00013', '93', NULL, '00004', 0, 'Offshore basket , 2 Ea Telescope', '0.00', '0.00', '0.00', 'Anadril', '1', '0', '1', NULL),
('IC000252', 'JV00013', '136', NULL, '00005', 0, 'Radio Active Source', '0.00', '0.00', '0.00', 'Anadril', '1', '0', '1', NULL),
('IC000253', 'JV00013', '93', NULL, '00006', 0, 'Offshore Basket 2Ea Mud Motor', '0.00', '0.00', '0.00', 'Anadril', '1', '0', '1', NULL),
('IC000254', 'JV00013', '93', NULL, '00007', 0, 'Offshore Basket , Dump Irom', '0.00', '0.00', '0.00', 'Anadril', '1', '0', '1', NULL),
('IC000255', 'JV00013', '137', NULL, '00008', 0, 'Cutting Skip', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000256', 'JV00013', '138', NULL, '00009', 0, 'Casing 13-3/8"', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000257', 'JV00013', '139', NULL, '00010', 0, 'Casing 9-5/8"', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '3', NULL),
('IC000258', 'JV00013', '140', NULL, '00011', 0, 'Pup Joint 4-1/2" TS Blue', '0.00', '0.00', '0.00', 'Terubuk', '1', '0', '1', NULL),
('IC000259', 'JV00013', '142', NULL, '00012', 0, 'Pup Joint 4-1/2" Vam Top', '0.00', '0.00', '0.00', 'Terubuk', '1', '0', '1', NULL),
('IC000260', 'JV00013', '141', NULL, '00013', 0, 'Tubing Claim Protector', '0.00', '0.00', '0.00', 'Terubuk', '1', '0', '1', NULL),
('IC000261', 'JV00013', '144', NULL, '00014', 0, 'RE-Entry Guide\r\n\r\n\r\n', '0.00', '0.00', '0.00', 'Terubuk', '1', '0', '1', NULL),
('IC000262', 'JV00013', '145', NULL, '00015', 0, 'W/O Replacement DTD', '0.00', '0.00', '0.00', 'Terubuk', '1', '0', '1', NULL),
('IC000263', 'JV00013', '146', NULL, '00016', 0, 'Assy 4-1/2" ', '0.00', '0.00', '0.00', 'Terubuk', '1', '0', '1', NULL),
('IC000264', 'JV00013', '148', NULL, '00017', 0, 'Packer VGP ', '0.00', '0.00', '0.00', 'Terubuk', '1', '0', '1', NULL),
('IC000265', 'JV00013', '149', NULL, '00018', 0, 'Offshore Basket 13.3 SNTBA', '0.00', '0.00', '0.00', 'Terubuk', '1', '0', '1', NULL),
('IC000266', 'JV00013', '150', NULL, '00019', 0, 'Sea Container , Jack Baker + Fishing Tools', '0.00', '0.00', '0.00', 'Terubuk', '1', '0', '1', NULL),
('IC000267', 'JV00013', '151', NULL, '00020', 0, '20FT Open Top Container ', '0.00', '0.00', '0.00', 'Terubuk', '1', '0', '1', NULL),
('IC000268', 'JV00013', '36', NULL, '00021', 0, 'Sodium Chloride', '0.00', '0.00', '0.00', 'Dowel Schlumberger', '1', '0', '1', NULL),
('IC000269', 'JV00013', '36', NULL, '00022', 0, 'Calcium Chloride', '0.00', '0.00', '0.00', 'Dowel Schlumberger', '1', '0', '1', NULL),
('IC000270', 'JV00013', '29', NULL, '00023', 0, '0907 (40 BE)', '0.00', '0.00', '0.00', 'Dowel Schlumberger', '1', '0', '1', NULL),
('IC000271', 'JV00013', '29', NULL, '00024', 0, 'D124 (3BB - 3300)', '0.00', '0.00', '0.00', 'Dowel Schlumberger', '1', '0', '1', NULL),
('IC000272', 'JV00013', '29', NULL, '00025', 0, 'D066 (30 BE)', '0.00', '0.00', '0.00', 'Dowel Schlumberger', '1', '0', '1', NULL),
('IC000273', 'JV00013', '29', NULL, '00027', 0, 'D145A (424 gal)', '0.00', '0.00', '0.00', 'Dowel Schlumberger', '1', '0', '1', NULL),
('IC000274', 'JV00013', '29', NULL, '00026', 0, 'D256 (1060 gal)', '0.00', '0.00', '0.00', 'Dowel Schlumberger', '1', '0', '1', NULL),
('IC000275', 'JV00013', '29', NULL, '00028', 0, 'D320 (2677 gal)', '0.00', '0.00', '0.00', 'Dowel Schlumberger', '1', '0', '1', NULL),
('IC000276', 'JV00013', '29', NULL, '00029', 0, 'D080 (530 gal)', '0.00', '0.00', '0.00', 'Dowel Schlumberger', '1', '0', '1', NULL),
('IC000277', 'JV00013', '152', NULL, '00030', 0, 'Offshore Basket Aoru', '0.00', '0.00', '0.00', 'Dowel Schlumberger', '1', '0', '1', NULL),
('IC000278', 'JV00013', '72', NULL, '00031', 0, 'NItrogen Bottle rack', '0.00', '0.00', '0.00', 'Belida', '1', '0', '1', NULL),
('IC000279', 'JV00013', '72', NULL, '00032', 0, 'Nitrogen Bottle Rack', '0.00', '0.00', '0.00', 'Belida', '1', '0', '1', NULL),
('IC000280', 'JV00013', '153', NULL, '00033', 0, 'Sea Container Various Equipment', '0.00', '0.00', '0.00', 'Barakuda', '1', '0', '1', NULL),
('IC000281', 'JV00013', '29', NULL, '00034', 0, 'Semen 3 Roda', '0.00', '0.00', '0.00', 'Medco', '1', '0', '2', NULL),
('IC000282', 'JV00013', '10', NULL, '00035', 0, 'IBC Tank Schlumberfer', '0.00', '0.00', '0.00', 'Schlumberger', '1', '0', '2', NULL),
('IC000283', 'JV00013', '36', NULL, '00036', 0, 'Chemical Drum', '0.00', '0.00', '0.00', 'Schlumberger', '1', '0', '2', NULL),
('IC000284', 'JV00013', '29', NULL, '00038', 0, 'NaCL', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '3', NULL),
('IC000285', 'JV00013', '29', NULL, '00039', 0, 'NaCL', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '3', NULL),
('IC000286', 'JV00014', '100', NULL, '0001', 0, 'EMPTY DNV CONTAINER 20 FT', '0.00', '0.00', '0.00', 'DNV', '1', '0', '1', NULL),
('IC000287', 'JV00014', '48', NULL, '0002', 0, 'Dry Food Container 20 FT', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000288', 'JV00015', '10', NULL, 'A0001', 0, 'EMPTY IBC TANK', '0.00', '0.00', '0.00', 'Champion', '1', '0', '1', NULL),
('IC000289', 'JV00015', '54', NULL, 'A0002', 0, 'HALF OPEN TOP CONTAINER 10 FT', '0.00', '0.00', '0.00', 'Star Energy', '1', '0', '1', NULL),
('IC000290', 'JV00016', '154', NULL, '1500033118', 0, 'Sertification Inflatable Liferaft', '0.00', '0.00', '0.00', 'Segara Permai', '1', '0', '1', NULL),
('IC000291', 'JV00016', '155', NULL, '1500033544', 0, 'Cylinder Rack  MOCW-RACK-OXY', '0.00', '0.00', '0.00', 'Alfons Wirahadikususma', '1', '0', '1', NULL),
('IC000292', 'JV00016', '155', NULL, '1500033544', 0, 'Cylinder Rack  MOCW-RACK-ACE', '0.00', '0.00', '0.00', 'Alfons Wirahadikususma', '1', '0', '1', NULL),
('IC000293', 'JV00016', '102', NULL, '15000536', 0, '4 Box + 1 Plt Part VRU', '0.00', '0.00', '0.00', 'Eka Maulana', '1', '0', '1', NULL),
('IC000294', 'JV00016', '156', NULL, '1500033536', 0, 'Part VRU', '0.00', '0.00', '0.00', 'Eka Maulana', '1', '0', '1', NULL),
('IC000295', 'JV00016', '157', NULL, '1500033335', 0, 'Rack TBR c/w Sling', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000296', 'JV00016', '158', NULL, '1500033364', 0, 'N2 Tank', '0.00', '0.00', '0.00', 'Ronard', '1', '0', '1', NULL),
('IC000297', 'JV00016', '159', NULL, '1500033389', 0, 'Cylinder Rack 16 BR', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000298', 'JV00016', '61', NULL, '1500033546', 0, 'Empty Chemical Starhib WMS-697', '0.00', '0.00', '0.00', 'Luas Birus Utama', '1', '0', '1', NULL),
('IC000299', 'JV00016', '61', NULL, '1500033546', 0, 'Empty Chemical Starhib WMS-965', '0.00', '0.00', '0.00', 'Luas Birus Utama', '1', '0', '1', NULL),
('IC000300', 'JV00016', '61', NULL, '1500033538', 0, 'Empty Tote Tank Ex Chemical', '0.00', '0.00', '0.00', 'Luas Birus Utama', '1', '0', '1', NULL),
('IC000301', 'JV00016', '155', NULL, '1500033623', 0, 'Cylinder Rack : SEU-53-ROX016', '0.00', '0.00', '0.00', 'Sarku', '1', '0', '1', NULL),
('IC000302', 'JV00016', '160', NULL, '1500033623', 0, 'Cylinder Rack SEU-53-RAC009', '0.00', '0.00', '0.00', 'Sarku', '1', '0', '1', NULL),
('IC000303', 'JV00016', '160', NULL, '1500033623', 0, 'Cylinder Rack SEU-53-RAC009-03', '0.00', '0.00', '0.00', 'Sarku', '1', '0', '1', NULL),
('IC000304', 'JV00016', '155', NULL, '1500033623', 0, 'Cylinder Rack MOCW-Rack-OXY-04', '0.00', '0.00', '0.00', 'Sarku', '1', '0', '1', NULL),
('IC000305', 'JV00016', '61', NULL, '1500033631', 0, 'Empty Tote Tank S-9523', '0.00', '0.00', '0.00', 'Luas Birus Utama', '1', '0', '1', NULL),
('IC000306', 'JV00016', '161', NULL, '1500033631', 0, 'Empty Tote Tank S - 9432', '0.00', '0.00', '0.00', 'Luas Birus Utama', '1', '0', '1', NULL),
('IC000307', 'JV00016', '161', NULL, '1500033631', 0, 'Empty Tote Tank SZB - 4431', '0.00', '0.00', '0.00', 'Luas Birus Utama', '1', '0', '1', NULL),
('IC000308', 'JV00016', '61', NULL, '1500033631', 0, 'Empty Tote Tank S - 9441', '0.00', '0.00', '0.00', 'Luas Birus Utama', '1', '0', '1', NULL),
('IC000309', 'JV00016', '61', NULL, '1500033631', 0, 'Empty Tote Tank S - 9282', '0.00', '0.00', '0.00', 'Luas Birus Utama', '1', '0', '1', NULL),
('IC000310', 'JV00016', '61', NULL, '1500033631', 0, 'Empty Tote Tank S - 965 ND', '0.00', '0.00', '0.00', 'Luas Birus Utama', '1', '0', '1', NULL),
('IC000311', 'JV00016', '61', NULL, '1500033631', 0, 'Empty Tote Tank S - 9653', '0.00', '0.00', '0.00', 'Luas Birus Utama', '1', '0', '1', NULL),
('IC000312', 'JV00016', '162', NULL, '1500033631', 0, 'Empty Tote Tank S - 9282', '0.00', '0.00', '0.00', 'Luas Birus Utama', '1', '0', '1', NULL),
('IC000313', 'JV00016', '162', NULL, '1500033631', 0, 'Empty Tote Tank S - 965 ND', '0.00', '0.00', '0.00', 'Luas Birus Utama', '1', '0', '1', NULL),
('IC000314', 'JV00016', '222', NULL, '1500033617', 0, 'Paint Material Sea Barrier', '0.00', '0.00', '0.00', 'Dimas Chandra', '1', '0', '1', NULL),
('IC000315', 'JV00016', '65', NULL, 'OEGU 16700', 0, '20FT Container', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000316', 'JV00016', '66', NULL, '00001', 0, 'Bag Paper Trash', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000317', 'JV00016', '66', NULL, '00002', 0, 'Bag Plastic Waste', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000318', 'JV00016', '100', NULL, '1500033713', 0, '20FT Container S/N  OEGU 000605', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000319', 'JV00016', '165', NULL, '1500033673', 0, 'Water Bag ', '0.00', '0.00', '0.00', 'Indospec Asia', '1', '0', '1', NULL),
('IC000320', 'JV00016', '100', NULL, '0006051', 0, '20FT Container ', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000321', 'JV00016', '100', NULL, '5752702', 0, '20FT Container DVRU', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000322', 'JV00016', '100', NULL, '1027862', 0, '20FT Container CCLU', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000323', 'JV00016', '100', NULL, '6052827', 0, '20FT Container KKTU', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000324', 'JV00016', '100', NULL, '1032370', 0, '20FT Container CCLU', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000325', 'JV00016', '100', NULL, '7541095', 0, '20Ft Container NYKU', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000326', 'JV00016', '100', NULL, '7020750', 0, '20Ft Container TAHU', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000327', 'JV00016', '65', NULL, '1500033846', 0, 'Mobile Grasscutter , Type Raider', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000328', 'JV00016', '100', NULL, '7020831', 0, '20FT Container TAHU', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000329', 'JV00016', '65', NULL, '1500033302', 0, '20FT Container TAHU ', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000330', 'JV00016', '166', NULL, '1500033679', 0, 'REntal Blue Rack  Oxygen', '0.00', '0.00', '0.00', 'Indoship Marine', '1', '0', '1', NULL),
('IC000331', 'JV00016', '166', NULL, '1500033679', 0, 'REntal Blue Rack Acetelene', '0.00', '0.00', '0.00', 'Indoship Marine', '1', '0', '1', NULL),
('IC000332', 'JV00016', '167', NULL, '1500033582', 0, 'Iso Tank 9602', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000333', 'JV00016', '167', NULL, '1500033582', 0, 'Opentop Container 20FT BSLU', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000334', 'JV00016', '167', NULL, '1500033582', 0, 'Opentop Container 20FT BSLU 9202940', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000335', 'JV00016', '168', NULL, '1500033455', 0, 'Mud Logging Unit', '0.00', '0.00', '0.00', 'Geoservice', '1', '0', '1', NULL),
('IC000336', 'JV00016', '169', NULL, '1500033576', 0, 'Cylinder Rack SN BSU', '0.00', '0.00', '0.00', 'Sarku', '1', '0', '1', NULL),
('IC000337', 'JV00016', '170', NULL, '1500033576', 0, 'Cylinder Rack SN BSU AR 001', '0.00', '0.00', '0.00', 'Sarku', '1', '0', '1', NULL),
('IC000338', 'JV00016', '171', NULL, '1500033607', 0, '6FT Container AME 5816', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000339', 'JV00016', '172', NULL, '1500033609', 0, '6FT Container Medco', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000340', 'JV00016', '131', NULL, '1500033542', 0, 'Empty 12.3 M Offshore Basket', '0.00', '0.00', '0.00', 'Dowell Anadrill', '1', '0', '1', NULL),
('IC000341', 'JV00016', '173', NULL, '1500033542', 0, 'Half Container 10FT', '0.00', '0.00', '0.00', 'Dowell Anadrill', '1', '0', '1', NULL),
('IC000342', 'JV00016', '174', NULL, '1500033542', 0, 'Basket TD-CB-12-003', '0.00', '0.00', '0.00', 'Dowell Anadrill', '1', '0', '1', NULL),
('IC000343', 'JV00016', '108', NULL, 'SLB 12162', 0, 'Metal Box , SLB 12162', '0.00', '0.00', '0.00', 'Dowell Anadrill', '1', '0', '1', NULL),
('IC000344', 'JV00016', '66', NULL, 'CY80813004', 0, 'D193', '0.00', '0.00', '0.00', 'Dowell Anadrill', '1', '0', '1', NULL),
('IC000345', 'JV00016', '66', NULL, '80813004', 0, 'D168', '0.00', '0.00', '0.00', 'Dowell Anadrill', '1', '0', '1', NULL),
('IC000346', 'JV00016', '176', NULL, '1500033463', 0, 'Lay Down Cradle ', '0.00', '0.00', '0.00', 'NOV', '1', '0', '1', NULL),
('IC000347', 'JV00016', '177', NULL, '1500033463', 0, 'Steel Box CS-003', '0.00', '0.00', '0.00', 'NOV', '1', '0', '1', NULL),
('IC000348', 'JV00016', '178', NULL, '1500033463', 0, 'Steel Basket TD-CB-12-011', '0.00', '0.00', '0.00', 'NOV', '1', '0', '1', NULL),
('IC000349', 'JV00016', '179', NULL, '1500033463', 0, '6FT Mini Container , Medco', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000350', 'JV00016', '181', NULL, 'SN 1092-2', 0, 'HYD Power Unit , Diesel', '0.00', '0.00', '0.00', 'Nabors', '1', '0', '1', NULL),
('IC000351', 'JV00016', '182', NULL, 'SN 9187', 0, 'Power Unit Electric', '0.00', '0.00', '0.00', 'Nabors', '1', '0', '1', NULL),
('IC000352', 'JV00016', '183', NULL, 'SN.Yap 120', 0, 'DNV Box SN.Yap 1205-48', '0.00', '0.00', '0.00', 'Nabors', '1', '0', '1', NULL),
('IC000353', 'JV00016', '183', NULL, 'Yap 1103-0', 0, 'DNV Box SN.Yap 1103-05', '0.00', '0.00', '0.00', 'Nabors', '1', '0', '1', NULL),
('IC000354', 'JV00016', '184', NULL, '019', 0, 'Transport Frame SN.C-TFPT-019', '0.00', '0.00', '0.00', 'Nabors', '1', '0', '1', NULL),
('IC000355', 'JV00016', '185', NULL, '047', 0, 'Transport Frame SN.C-TFPT-047', '0.00', '0.00', '0.00', 'Nabors', '1', '0', '1', NULL),
('IC000356', 'JV00016', '186', NULL, '0042', 0, 'Transport Frame SN , C-PFPT-0042', '0.00', '0.00', '0.00', 'Nabors', '1', '0', '1', NULL),
('IC000357', 'JV00016', '187', NULL, 'RS-030', 0, 'RIg Up Stand , RS-030', '0.00', '0.00', '0.00', 'Nabors', '1', '0', '1', NULL),
('IC000358', 'JV00016', '189', NULL, '0157-1-500', 0, 'Hyd Power unit Electric', '0.00', '0.00', '0.00', 'Nabors', '1', '0', '1', NULL),
('IC000359', 'JV00016', '190', NULL, '1205-25', 0, 'Offshore Basket SN.Yap-1205-25', '0.00', '0.00', '0.00', 'Nabors', '1', '0', '1', NULL),
('IC000360', 'JV00016', '198', NULL, '1205-46', 0, 'DNV Box SN.Yap 1205-46', '0.00', '0.00', '0.00', 'Nabors', '1', '0', '1', NULL),
('IC000361', 'JV00016', '192', NULL, '045', 0, 'Break Out Vise ', '0.00', '0.00', '0.00', 'Nabors', '1', '0', '1', NULL),
('IC000362', 'JV00016', '193', NULL, '1207-53', 0, 'Offshore Basket SN.Yap-1207-53', '0.00', '0.00', '0.00', 'Nabors', '1', '0', '1', NULL),
('IC000363', 'JV00016', '195', NULL, '1103-02', 0, 'Basket SN.Yap 1103-02', '0.00', '0.00', '0.00', 'Nabors', '1', '0', '1', NULL),
('IC000364', 'JV00016', '197', NULL, '120762', 0, 'Basket SN.Yap 1207-62', '0.00', '0.00', '0.00', 'Nabors', '1', '0', '1', NULL),
('IC000365', 'JV00016', '198', NULL, '1205-31', 0, 'DNV Box SN.Yap 1205-31', '0.00', '0.00', '0.00', 'Nabors', '1', '0', '1', NULL),
('IC000366', 'JV00016', '185', NULL, '045', 0, 'Transport Frame SN.C-TFPT-045', '0.00', '0.00', '0.00', 'Nabors', '1', '0', '1', NULL),
('IC000367', 'JV00016', '198', NULL, '1500033707', 0, 'DNV Box SN.Yap 1207-59', '0.00', '0.00', '0.00', 'Nabors', '1', '0', '1', NULL),
('IC000368', 'JV00016', '105', NULL, '1500033621', 0, 'Liferaft', '0.00', '0.00', '0.00', 'Segara Permai', '1', '0', '1', NULL),
('IC000369', 'JV00016', '126', NULL, '1500033619', 0, '8.3M Cargo Basket ID.TD-CB-8002', '0.00', '0.00', '0.00', 'SLB', '1', '0', '1', NULL),
('IC000370', 'JV00016', '39', NULL, '1500033619', 0, 'Mini Container ID JAO -BB 1306', '0.00', '0.00', '0.00', 'SLB', '1', '0', '1', NULL),
('IC000371', 'JV00016', '201', NULL, '1500033619', 0, 'Skor Bottle ID SLB 25398 / 641402H', '0.00', '0.00', '0.00', 'SLB', '1', '0', '1', NULL),
('IC000372', 'JV00016', '202', NULL, '1500033619', 0, 'Bouy', '0.00', '0.00', '0.00', 'SLB', '1', '0', '1', NULL),
('IC000373', 'JV00016', '203', NULL, '1500033619', 0, 'WAC-SS 0642/SLB 05819', '0.00', '0.00', '0.00', 'SLB', '1', '0', '1', NULL),
('IC000374', 'JV00016', '126', NULL, '1500033619', 0, '8.3 M Cargo Basket ID 28476', '0.00', '0.00', '0.00', 'SLB', '1', '0', '1', NULL),
('IC000375', 'JV00016', '108', NULL, '1500033619', 0, 'Fishing Kit ID JAO-FB-1309', '0.00', '0.00', '0.00', 'SLB', '1', '0', '1', NULL),
('IC000376', 'JV00016', '204', NULL, '1500033619', 0, 'Dog House ID SLB-GSU-6MDG-001', '0.00', '0.00', '0.00', 'SLB', '1', '0', '1', NULL),
('IC000377', 'JV00016', '205', NULL, '1500033619', 0, 'Wireline Power Pack ID.DAPS-A 3734', '0.00', '0.00', '0.00', 'SLB', '1', '0', '1', NULL),
('IC000378', 'JV00016', '206', NULL, '1500033619', 0, 'Wireline Generator ID.GSU-LWU 002', '0.00', '0.00', '0.00', 'SLB', '1', '0', '1', NULL),
('IC000379', 'JV00016', '207', NULL, '1500033619', 0, 'Winch Skid unit ID.WDDS-A 722', '0.00', '0.00', '0.00', 'SLB', '1', '0', '1', NULL),
('IC000380', 'JV00016', '208', NULL, '1500033619', 0, 'Logging Cabin ID.CCL-LWU 002', '0.00', '0.00', '0.00', 'SLB', '1', '0', '1', NULL),
('IC000381', 'JV00016', '209', NULL, '1500033619', 0, 'Wooden Box  ', '0.00', '0.00', '0.00', 'SLB', '1', '0', '1', NULL),
('IC000382', 'JV00016', '210', NULL, '1500033570', 0, 'Holding Tank with 4 lega sling', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL),
('IC000383', 'JV00016', '211', NULL, '1500033570', 0, 'Tool Box c/w 4 legs Sling & Shackle', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL),
('IC000384', 'JV00016', '66', NULL, '1500033570', 0, 'Wooden Box : King Nipple & Gasket', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL),
('IC000385', 'JV00016', '27', NULL, '1500033570', 0, 'Opentop container 20FT AORU 3601910', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL),
('IC000386', 'JV00016', '212', NULL, '1500033570', 0, 'Basket AORU 4602870', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL),
('IC000387', 'JV00016', '202', NULL, '15000170', 0, 'D-Air 2', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL),
('IC000388', 'JV00016', '213', NULL, '1500033572', 0, 'Cutting Dryer complete with 75 HP Electrik', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL),
('IC000389', 'JV00016', '214', NULL, '1500033572', 0, 'Panel Cutting Dryer complete with 4 legs', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL),
('IC000390', 'JV00016', '215', NULL, '1500033635', 0, 'Offshore Container 10FT SN.FSDG 3165', '0.00', '0.00', '0.00', 'Vintage', '1', '0', '1', NULL),
('IC000391', 'JV00016', '215', NULL, '1500033635', 0, 'Offshore Container 10FT SN.FSDG 3165', '0.00', '0.00', '0.00', 'Vintage', '1', '0', '1', NULL),
('IC000392', 'JV00016', '216', NULL, '1500033635', 0, 'Half Container 20FT SN.FSHH6244', '0.00', '0.00', '0.00', 'Vintage', '1', '0', '1', NULL),
('IC000393', 'JV00016', '100', NULL, '2601330', 0, 'Offshore Container 20FT SN.AORU 2601330', '0.00', '0.00', '0.00', 'MI Swaco', '1', '0', '1', NULL),
('IC000394', 'JV00016', '217', NULL, '00004', 0, 'Wooden Box Mud Lab Testing Equipment', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000395', 'JV00016', '132', NULL, '1500033472', 0, '14.3M Offshore Basket SN.B 1404', '0.00', '0.00', '0.00', 'Baker Hughes', '1', '0', '1', NULL),
('IC000396', 'JV00016', '34', NULL, '1500033742', 0, '13.3M Offshore Basket SN.TD-CB-13-012', '0.00', '0.00', '0.00', 'Baker Hughes', '1', '0', '1', NULL),
('IC000397', 'JV00016', '218', NULL, '1500033742', 0, '13.3M Offshore Basket SN.AORU 133012', '0.00', '0.00', '0.00', 'Baker Hughes', '1', '0', '1', NULL),
('IC000398', 'JV00016', '219', NULL, '1500033562', 0, 'Multi Split Power Pack 103198', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL),
('IC000399', 'JV00016', '220', NULL, '1500033910', 0, 'Skid Ganzet 180 KVA SN.SEU-52-FGN 001-05', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL),
('IC000400', 'JV00016', '221', NULL, '1500033767', 0, 'Prowell Lifting Sling unit *Rejected = 3 set', '0.00', '0.00', '0.00', 'Interwell', '1', '0', '1', NULL),
('IC000401', 'JV00016', '7', NULL, '23000146', 0, 'Container AORU 23000146 ', '0.00', '0.00', '0.00', 'Well Tec', '1', '0', '1', NULL);

--
-- Triggers `detail_joborder`
--
DELIMITER //
CREATE TRIGGER `progres_jo` AFTER INSERT ON `detail_joborder`
 FOR EACH ROW BEGIN
	UPDATE job_order SET progres_jo =progres_jo+NEW.ton_cargo
    WHERE id_joborder=NEW.id_joborder;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `detail_jobordertruck`
--

CREATE TABLE IF NOT EXISTS `detail_jobordertruck` (
`id_djotruck` int(12) NOT NULL,
  `id_jobordertruck` varchar(15) NOT NULL,
  `nm_company` varchar(50) DEFAULT NULL,
  `nm_barang` varchar(50) DEFAULT NULL,
  `nm_kegiatan` varchar(15) DEFAULT NULL,
  `production` varchar(15) DEFAULT NULL,
  `no_po` varchar(15) DEFAULT NULL,
  `p_cargo` decimal(6,2) NOT NULL,
  `l_cargo` decimal(6,2) NOT NULL,
  `t_cargo` decimal(6,2) NOT NULL,
  `volume_satuan` decimal(6,2) DEFAULT NULL,
  `ton_satuan` decimal(6,2) DEFAULT NULL,
  `volume_cargo` decimal(6,2) NOT NULL,
  `ton_cargo` decimal(6,2) NOT NULL,
  `revton_cargo` decimal(6,2) NOT NULL,
  `qty_cargo` int(11) NOT NULL,
  `satuan_cargo` varchar(15) DEFAULT NULL,
  `deskripsi_cargo` text,
  `status_cargo` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_jobordertruck`
--

INSERT INTO `detail_jobordertruck` (`id_djotruck`, `id_jobordertruck`, `nm_company`, `nm_barang`, `nm_kegiatan`, `production`, `no_po`, `p_cargo`, `l_cargo`, `t_cargo`, `volume_satuan`, `ton_satuan`, `volume_cargo`, `ton_cargo`, `revton_cargo`, `qty_cargo`, `satuan_cargo`, `deskripsi_cargo`, `status_cargo`) VALUES
(1, 'JT00002', 'PT.ASW', 'Chemical', 'OFFLOADING', 'Production', '', '1.22', '1.25', '1.26', NULL, NULL, '0.00', '0.00', '0.00', 0, 'Unit', 'Offloading Medco', NULL),
(2, 'JT00002', 'PT. Labror', 'Pallet', 'OFFLOADING', 'Production', '', '1.25', '1.25', '0.50', NULL, NULL, '0.00', '0.00', '0.00', 0, 'Unit', 'Offloading Medco', NULL),
(3, 'JT00002', 'PT.ABC', 'Pallet', 'OFFLOADING', 'Production', '', '1.22', '1.23', '1.24', NULL, NULL, '0.00', '0.00', '0.00', 0, 'Unit', 'Offloading Medco', 1),
(4, 'JT00002', 'PT.ABC', 'Pallet', 'OFFLOADING', 'Production', '0001', '1.22', '1.21', '1.22', NULL, NULL, '0.00', '0.00', '0.00', 0, 'Unit', 'Offloading Medco', 1),
(5, 'JT00003', 'PT.ASW', 'Pallet', 'OFFLOADING', 'Production', '0001', '1.23', '1.20', '1.20', NULL, NULL, '0.00', '0.00', '0.00', 0, 'Unit', 'Offloading Premier', 1),
(6, 'JT00001', 'PT.ASW', 'Pallet', 'OFFLOADING', 'Production', '0002', '1.22', '1.33', '1.44', NULL, NULL, '0.00', '0.00', '0.00', 0, 'Unit', 'Offloading Medco', 1),
(7, 'JT00001', 'PT.ASW', 'Chemical', 'LOADING', 'Production', '0001', '1.50', '1.50', '1.50', NULL, NULL, '0.00', '0.00', '0.00', 0, 'Unit', 'Loading Medco', 1),
(8, 'JT00001', 'PT.ABC', 'Chemical', 'OFFLOADING', 'Production', '0003', '1.22', '1.22', '1.22', NULL, NULL, '0.00', '0.00', '0.00', 0, 'Unit', 'Offloading Medco', 1),
(9, 'JT00001', 'PT.ABC', 'Chemical Drum', 'OFFLOADING', 'Production', '0001', '1.20', '1.20', '1.20', NULL, NULL, '0.00', '0.00', '0.00', 0, 'Pallet', 'Offloading Medco', 1),
(10, 'JT00001', 'PT.ABC', 'Chemical', 'OFFLOADING', 'Production', '0002', '1.20', '1.20', '1.20', '1.73', '1.40', '0.00', '0.00', '0.00', 0, 'Pallet', 'Loading Medco', 1),
(11, 'JT00004', 'PT.ABC', 'Chemical Drum', 'OFFLOADING', 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.30', '10.37', '7.80', '10.37', 6, 'Pallet', 'Offloading Premier', 1),
(12, 'JT00004', 'PT.ABC', 'Chemical Drum', 'OFFLOADING', 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.30', '10.37', '7.80', '10.37', 6, 'Pallet', 'Offloading Premier', 1);

-- --------------------------------------------------------

--
-- Table structure for table `detail_moving`
--

CREATE TABLE IF NOT EXISTS `detail_moving` (
`id_cargo` int(12) NOT NULL,
  `id_moving` varchar(15) NOT NULL,
  `nm_company` varchar(50) DEFAULT NULL,
  `nm_barang` varchar(50) DEFAULT NULL,
  `nm_kegiatan` varchar(15) DEFAULT NULL,
  `production` varchar(15) DEFAULT NULL,
  `no_po` varchar(15) DEFAULT NULL,
  `p_cargo` decimal(6,2) NOT NULL,
  `l_cargo` decimal(6,2) NOT NULL,
  `t_cargo` decimal(6,2) NOT NULL,
  `volume_satuan` decimal(6,2) DEFAULT NULL,
  `ton_satuan` decimal(6,2) DEFAULT NULL,
  `volume_cargo` decimal(6,2) NOT NULL,
  `ton_cargo` decimal(6,2) NOT NULL,
  `revton_cargo` decimal(6,2) NOT NULL,
  `qty_cargo` int(11) NOT NULL,
  `satuan_cargo` varchar(15) DEFAULT NULL,
  `deskripsi_cargo` text,
  `created_on_cargo` datetime DEFAULT NULL,
  `status_cargo` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_moving`
--

INSERT INTO `detail_moving` (`id_cargo`, `id_moving`, `nm_company`, `nm_barang`, `nm_kegiatan`, `production`, `no_po`, `p_cargo`, `l_cargo`, `t_cargo`, `volume_satuan`, `ton_satuan`, `volume_cargo`, `ton_cargo`, `revton_cargo`, `qty_cargo`, `satuan_cargo`, `deskripsi_cargo`, `created_on_cargo`, `status_cargo`) VALUES
(5, 'TR00001', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.30', '0.00', '0.00', '0.00', 0, 'Unit', 'Internal Moving PHE', NULL, 1),
(6, 'TR00002', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.30', '10.37', '7.80', '10.37', 6, 'Pallet', 'Internal Moving Star Energy', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `detail_stacking`
--

CREATE TABLE IF NOT EXISTS `detail_stacking` (
`id_cargo` int(12) NOT NULL,
  `id_stacking` varchar(15) NOT NULL,
  `nm_company` varchar(50) DEFAULT NULL,
  `nm_barang` varchar(50) DEFAULT NULL,
  `nm_kegiatan` varchar(15) DEFAULT NULL,
  `production` varchar(15) DEFAULT NULL,
  `no_po` varchar(15) DEFAULT NULL,
  `p_cargo` decimal(6,2) NOT NULL,
  `l_cargo` decimal(6,2) NOT NULL,
  `t_cargo` decimal(6,2) NOT NULL,
  `volume_satuan` decimal(6,2) DEFAULT NULL,
  `ton_satuan` decimal(6,2) DEFAULT NULL,
  `volume_cargo` decimal(6,2) NOT NULL,
  `ton_cargo` decimal(6,2) NOT NULL,
  `revton_cargo` decimal(6,2) NOT NULL,
  `qty_cargo` int(11) NOT NULL,
  `satuan_cargo` varchar(15) DEFAULT NULL,
  `deskripsi_cargo` text,
  `created_on_cargo` datetime DEFAULT NULL,
  `status_cargo` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_stacking`
--

INSERT INTO `detail_stacking` (`id_cargo`, `id_stacking`, `nm_company`, `nm_barang`, `nm_kegiatan`, `production`, `no_po`, `p_cargo`, `l_cargo`, `t_cargo`, `volume_satuan`, `ton_satuan`, `volume_cargo`, `ton_cargo`, `revton_cargo`, `qty_cargo`, `satuan_cargo`, `deskripsi_cargo`, `created_on_cargo`, `status_cargo`) VALUES
(1, 'ST00001', 'PT.ASW', 'Chemical Drum', NULL, 'Production', '0002', '1.20', '1.20', '1.20', '1.73', '1.30', '0.00', '0.00', '0.00', 0, 'Pallet', 'Stacking Medco', NULL, 1),
(2, 'ST00001', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.30', '0.00', '0.00', '0.00', 0, 'Pallet', 'Stacking Medco', NULL, 1),
(3, 'ST00001', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.20', '0.00', '0.00', '0.00', 0, 'Pallet', 'Stacking Medco', NULL, 1),
(4, 'ST00002', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.50', '1.73', '1.50', '1.73', 1, 'Unit', 'Stacking Star Energy', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doc_lo`
--

CREATE TABLE IF NOT EXISTS `doc_lo` (
`idDocLo` int(30) NOT NULL,
  `id_joborder` varchar(15) NOT NULL,
  `nmDoc` varchar(200) NOT NULL,
  `docLo` varchar(100) NOT NULL,
  `statusDoc` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doc_lo`
--

INSERT INTO `doc_lo` (`idDocLo`, `id_joborder`, `nmDoc`, `docLo`, `statusDoc`) VALUES
(1, '0', 'JR KM Sejahtera 35', 'ALAT BERAT CRANE (1st ) 6 Oct to 6 Nov 18  JC 011.jpg', 0),
(2, '0', 'JR KM.SEJAHTERA 35', 'Contoh dok Manifest.pdf', 0),
(3, '0', 'JR KM.SEJAHTERA 35', 'Dok Job Report Kapal.docx', 0),
(4, '0', 'JR JV00002', 'INV_RA01-5746_01_10.19.pdf', 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
`id_invoice` int(30) NOT NULL,
  `id_joborder` varchar(15) DEFAULT NULL,
  `doc_jolo` varchar(100) DEFAULT NULL,
  `doc_tslo` varchar(100) DEFAULT NULL,
  `doc_manifeslo` varchar(100) DEFAULT NULL,
  `status_invoice` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_barang`
--

CREATE TABLE IF NOT EXISTS `jenis_barang` (
`id_jenis` int(11) NOT NULL,
  `nm_jenis` varchar(255) NOT NULL,
  `p` decimal(6,2) NOT NULL,
  `l` decimal(6,2) NOT NULL,
  `t` decimal(6,2) NOT NULL,
  `satuan_jenis` varchar(50) DEFAULT NULL,
  `volume_jenis` decimal(6,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_barang`
--

INSERT INTO `jenis_barang` (`id_jenis`, `nm_jenis`, `p`, `l`, `t`, `satuan_jenis`, `volume_jenis`) VALUES
(6, 'CONTAINER 20 FT', '6.06', '2.44', '2.90', 'UNIT', '42.88'),
(7, 'CONTAINER 10 FT', '2.99', '2.44', '2.59', 'UNIT', '18.90'),
(9, 'TOTE THANK METHANOL', '1.20', '1.05', '1.90', 'UNIT', '2.39'),
(10, 'IBC Tank', '1.50', '1.50', '1.80', 'UNIT', '4.05'),
(11, 'Container PPLi', '6.00', '2.50', '2.50', 'UNIT', '37.50'),
(12, 'Iso Container PMB 10FT', '3.00', '2.50', '2.50', 'UNIT', '18.75'),
(13, 'Empty Gas Helium Cylinder', '1.50', '1.50', '1.60', 'Rack', '3.60'),
(14, 'Empty Tote Tank', '1.50', '1.50', '1.80', 'UNIT', '4.05'),
(15, 'Offshore Basket COSL', '1.50', '1.50', '1.00', 'Basket', '2.25'),
(16, 'Rack Cylinder BRA', '2.00', '2.00', '2.20', 'Rack', '8.80'),
(17, 'NItrogen Tank , Halliburton', '3.00', '2.50', '2.60', 'UNIT', '19.50'),
(18, 'Iron Basket , Halliburton', '6.70', '1.20', '1.20', 'UNIT', '9.65'),
(19, 'Waste Skip', '3.00', '1.22', '1.40', 'UNIT', '5.12'),
(20, 'Open Top Container 30FT', '9.20', '2.45', '1.49', 'UNIT', '33.58'),
(21, 'Tote Tank HSD', '1.48', '1.38', '2.27', 'UNIT', '4.64'),
(22, 'Cylinder Rack', '1.36', '0.72', '1.50', 'Rack', '1.47'),
(24, 'Dry Container', '2.99', '2.43', '2.59', 'UNIT', '18.82'),
(25, 'Chiller Container ', '2.99', '2.43', '2.59', 'UNIT', '18.82'),
(26, 'Open Top Container 10FT', '2.99', '2.43', '1.28', 'UNIT', '9.30'),
(27, 'Open Top Container 20FT ME', '6.06', '2.44', '2.60', 'UNIT', '38.44'),
(28, 'Cylinder Rack', '1.37', '0.89', '2.20', 'UNIT', '2.68'),
(29, 'Chemical Barite', '1.20', '1.20', '1.00', 'Palet', '1.44'),
(30, 'Oli Drum', '1.20', '1.20', '1.15', 'Palet', '1.66'),
(31, 'Chemical Bentonite', '1.20', '1.20', '1.10', 'Palet', '1.58'),
(32, 'Chemical MI Swaco', '1.20', '1.20', '1.20', 'Palet', '1.73'),
(34, 'Offshore Basket SNI', '13.00', '1.20', '1.20', 'UNIT', '18.72'),
(36, 'Chemical Drum', '1.20', '1.20', '1.20', 'Palet', '1.73'),
(37, 'Life raft', '1.41', '1.20', '0.80', 'W-Box', '1.35'),
(38, 'Waste Skip POI ', '2.06', '1.57', '1.51', 'UNIT', '4.88'),
(39, 'Mini Container', '1.91', '1.66', '2.76', 'UNIT', '8.75'),
(40, 'Food Container 10FT', '3.00', '2.45', '2.45', 'UNIT', '18.01'),
(41, 'Food Container 10FT', '3.00', '2.45', '2.59', 'UNIT', '19.04'),
(42, 'Food Container 10FT', '3.00', '2.44', '2.74', 'UNIT', '20.06'),
(43, 'Half Open Top Container 10FT', '2.99', '2.45', '1.28', 'UNIT', '9.38'),
(44, 'Half Open Top Container 20FT', '6.00', '2.45', '1.30', 'UNIT', '19.11'),
(45, 'Tote Tank OFH', '1.43', '1.43', '2.47', 'UNIT', '5.05'),
(46, 'Cyinder Rack Nitrogen R-POI-14', '1.50', '0.80', '1.46', 'UNIT', '1.75'),
(47, 'Cylinder Rack R-POI-16-11', '1.17', '1.17', '2.04', 'UNIT', '2.79'),
(48, 'Dry Food Container 20FT ', '6.05', '2.42', '2.58', 'UNIT', '37.77'),
(49, 'Chiller Container 20FT', '6.05', '2.42', '2.58', 'UNIT', '37.77'),
(50, 'Cylinder rack Oxygen SE', '1.13', '0.82', '2.01', 'UNIT', '1.86'),
(51, 'Cylinder Rack Acetylene SE', '0.92', '0.62', '1.43', 'UNIT', '0.82'),
(52, 'Cylinder Rack Hellium SE', '0.78', '0.54', '1.86', 'UNIT', '0.78'),
(53, 'Cylinder Rack Freon SE', '0.94', '0.64', '0.13', 'UNIT', '0.08'),
(54, 'Half Open Top Container 10FT SE', '3.00', '2.42', '1.30', 'UNIT', '9.44'),
(55, 'Half Open Top Container 20FT SE', '6.00', '2.42', '1.30', 'UNIT', '18.88'),
(56, 'Crude Oil Sample SE', '0.60', '0.25', '0.20', 'Bag', '0.03'),
(57, 'Crude Oil Sample SE', '0.60', '0.25', '0.20', 'Bag', '0.03'),
(58, 'Crude Oil Sample POI', '0.40', '0.30', '0.30', 'Carton', '0.04'),
(59, 'Firex Dry Powder', '0.70', '0.50', '0.60', 'W/Box', '0.21'),
(60, 'Liferaft', '1.20', '1.20', '0.50', 'Palet', '0.72'),
(61, 'Tote Tank Starpol ', '1.20', '1.05', '1.90', 'T/T', '2.39'),
(63, 'IBC Tank Staraid', '1.20', '1.05', '1.90', 'T/T', '2.39'),
(64, 'Tote Tank Starbreak', '1.60', '1.36', '1.50', 'T/T', '3.26'),
(65, 'Dry Container 20FT ME', '6.06', '2.44', '2.59', 'UNIT', '38.30'),
(66, 'Domestic Waste', '1.20', '1.20', '1.00', 'Bag', '1.44'),
(68, 'Lifting Gear Junk', '1.20', '1.20', '1.00', 'W/Box', '1.44'),
(69, 'Lifting Gear Junk', '1.20', '1.20', '0.50', 'Palet', '0.72'),
(70, 'Part Junk', '1.00', '1.00', '1.00', 'Palet', '1.00'),
(71, 'Tower Lamp', '1.00', '1.00', '1.50', 'UNIT', '1.50'),
(72, 'Cylinder Rack Nitrogen ME ', '1.10', '1.05', '2.18', 'Rack', '2.52'),
(73, 'Cylinder Rack Nitrogen Blue ME', '1.10', '1.05', '2.13', 'Rack', '2.46'),
(74, 'Half height Basket Rig 4.5', '4.57', '2.44', '1.22', 'UNIT', '13.60'),
(75, 'Half height Basket Rig 3', '2.74', '2.44', '1.22', 'UNIT', '8.16'),
(76, 'Half height Basket Rig 3', '2.74', '2.44', '1.22', 'UNIT', '8.16'),
(77, 'Gas Bottle Rack TD', '1.45', '1.24', '2.25', 'Rack', '4.05'),
(78, 'Gas Bottle Rack BSL', '1.27', '1.15', '2.28', 'Rack', '3.33'),
(79, 'Centrfuge DE-1000 ', '2.93', '1.90', '1.50', 'UNIT', '8.35'),
(80, 'Stand Centrifuge ', '3.00', '1.93', '0.90', 'UNIT', '5.21'),
(81, 'De Press', '6.26', '2.37', '2.45', 'UNIT', '36.35'),
(82, 'Screw Conveyor ', '1.40', '0.90', '0.70', 'UNIT', '0.88'),
(83, 'Housing  Auger', '2.80', '0.70', '0.80', 'Bundel', '1.57'),
(84, 'Pipe Casing 10"', '2.90', '0.70', '0.70', 'Bundel', '1.42'),
(85, 'Feed Pump PSI', '2.50', '0.62', '0.84', 'UNIT', '1.30'),
(86, 'Twin Pod', '2.25', '1.20', '2.20', 'UNIT', '5.94'),
(87, 'Slurry Skid', '2.50', '1.45', '1.75', 'UNIT', '6.34'),
(88, 'Filtration Tool Box', '1.20', '1.00', '1.10', 'UNIT', '1.32'),
(89, 'Feed Pump ', '2.50', '0.60', '0.80', 'UNIT', '1.20'),
(90, 'Effluent Tank', '1.50', '1.20', '1.20', 'UNIT', '2.16'),
(91, 'Hose Basket', '7.00', '1.35', '1.11', 'UNIT', '10.49'),
(92, 'Offshore Basket SN', '14.30', '1.20', '1.40', 'UNIT', '24.02'),
(93, 'Offshore Basket SN Auro', '13.30', '1.20', '1.40', 'UNIT', '22.34'),
(94, 'Cargo Basket', '12.30', '1.20', '1.20', 'UNIT', '17.71'),
(95, 'Offshore Basket SN.CPS', '15.40', '2.01', '1.60', 'UNIT', '49.53'),
(96, 'Clamp', '0.50', '0.50', '0.70', 'W/Box', '0.18'),
(97, 'Clamp For As', '0.80', '0.60', '0.60', 'Box', '0.29'),
(98, 'TAS', '1.10', '0.20', '0.20', 'Box', '0.04'),
(99, '30FT Basket AORA', '9.20', '2.40', '1.40', 'UNIT', '30.91'),
(100, 'DNV Container 20FT', '6.00', '2.50', '2.50', 'UNIT', '37.50'),
(101, 'Half Open Top Container 10FT ME', '3.00', '2.50', '1.50', 'UNIT', '11.25'),
(102, 'Cylinder Rack Nitrogen Botol ME', '1.00', '1.00', '1.00', 'UNIT', '1.00'),
(103, 'W/Box ME', '1.20', '1.20', '1.20', 'W/Box', '1.73'),
(104, 'Tote Tank S ME', '1.20', '1.20', '1.50', 'UNIT', '2.16'),
(105, 'Liferaft ME', '2.00', '1.00', '1.00', 'UNIT', '2.00'),
(106, 'Food Container 10FT ME', '3.00', '2.50', '2.50', 'UNIT', '18.75'),
(107, 'Container Biru', '3.00', '2.44', '2.50', 'UNIT', '18.30'),
(108, 'Cradle Kwr', '1.00', '1.00', '1.00', 'UNIT', '1.00'),
(109, 'Limbah Domestic', '1.00', '1.00', '1.00', 'Bag', '1.00'),
(110, 'ISO Container 20FT ME', '6.06', '2.44', '2.50', 'UNIT', '36.97'),
(111, 'Material Cylinder ', '1.20', '1.20', '1.90', 'Rack', '2.74'),
(112, 'Liferaft Plt', '1.20', '1.20', '1.00', 'Palet', '1.44'),
(113, 'Gas Booster', '3.00', '3.00', '1.50', 'UNIT', '13.50'),
(114, 'Handa Carry ME', '0.10', '0.10', '0.10', 'Carton', '0.00'),
(115, 'Handa Carry ME', '0.10', '0.10', '0.10', 'Carton', '0.00'),
(116, 'Rack Argon', '1.50', '1.50', '1.80', 'Rack', '4.05'),
(117, 'Offshore Basket SN Top', '6.28', '1.19', '1.21', 'UNIT', '9.04'),
(118, 'Logging Unit ME', '4.88', '2.44', '2.60', 'UNIT', '30.96'),
(119, 'Mud Logging Mini Container ME', '1.60', '1.60', '1.00', 'UNIT', '2.56'),
(120, 'Sparepart Basket', '3.00', '2.43', '1.29', 'UNIT', '9.40'),
(121, 'Sparepart Basket', '3.00', '2.43', '1.29', 'UNIT', '9.40'),
(122, 'Batch Mixer', '6.50', '2.50', '1.50', 'UNIT', '24.38'),
(123, 'Completion Tool Box ME', '3.14', '1.00', '0.93', 'UNIT', '2.92'),
(124, '34FT Basket SN', '10.30', '1.20', '1.30', 'UNIT', '16.07'),
(125, 'Mini Container ME', '2.50', '2.50', '2.80', 'UNIT', '17.50'),
(126, 'Basket TD-CB', '8.30', '1.20', '1.40', 'UNIT', '13.94'),
(127, 'Drilling JAR 7"', '9.14', '0.18', '0.18', 'Ea', '0.30'),
(128, 'Lifting Beam', '0.70', '0.80', '0.60', 'W/Box', '0.34'),
(130, 'Basket SN TD-CB-14', '14.30', '1.20', '1.43', 'UNIT', '24.54'),
(131, 'Basket SN TD-CB-13', '13.30', '1.20', '1.43', 'UNIT', '22.82');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kegiatan`
--

CREATE TABLE IF NOT EXISTS `jenis_kegiatan` (
`id_jenis` int(15) NOT NULL,
  `nm_jenis` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_kegiatan`
--

INSERT INTO `jenis_kegiatan` (`id_jenis`, `nm_jenis`) VALUES
(1, 'STEVEDORING'),
(2, 'LABOUR'),
(3, 'SPACE RENTAL'),
(4, 'LAND TRANSPORTATION'),
(5, 'FASILITAS'),
(6, 'EQUIPMENT'),
(7, 'BERTHING');

-- --------------------------------------------------------

--
-- Table structure for table `job_order`
--

CREATE TABLE IF NOT EXISTS `job_order` (
  `id_joborder` varchar(15) NOT NULL,
  `nm_kapal` varchar(20) CHARACTER SET utf8 NOT NULL,
  `agen_kapal` varchar(20) CHARACTER SET utf8 NOT NULL,
  `tgl_masuk` date NOT NULL,
  `jm_masuk` time NOT NULL,
  `tgl_keluar` date NOT NULL,
  `jm_keluar` time NOT NULL,
  `pelabuhan_asal` varchar(15) CHARACTER SET utf8 NOT NULL,
  `pelabuhan_tujuan` varchar(15) CHARACTER SET utf8 NOT NULL,
  `id_jenis` int(11) NOT NULL DEFAULT '1',
  `nm_kegiatan` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `id_client` int(11) DEFAULT NULL,
  `document_perintah` varchar(30) CHARACTER SET utf8 NOT NULL,
  `no_wo` varchar(50) DEFAULT NULL,
  `booking_cargo` decimal(6,0) NOT NULL,
  `total_cargo` decimal(6,2) DEFAULT NULL,
  `sandar_kapal` varchar(20) CHARACTER SET utf8 NOT NULL,
  `doc_ptw` varchar(100) CHARACTER SET utf8 NOT NULL,
  `doc_pjsm` varchar(100) CHARACTER SET utf8 NOT NULL,
  `doc_lsap` varchar(100) CHARACTER SET utf8 NOT NULL,
  `alat_berat` varchar(30) NOT NULL,
  `alat_berat2` varchar(30) DEFAULT NULL,
  `alat_berat3` varchar(30) DEFAULT NULL,
  `alat_berat4` varchar(30) DEFAULT NULL,
  `alat_berat5` varchar(30) DEFAULT NULL,
  `alat_beratsewa` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `area` varchar(20) CHARACTER SET utf8 NOT NULL,
  `progres_jo` decimal(6,2) NOT NULL,
  `mulai_kegiatan` datetime DEFAULT NULL,
  `finish_kegiatan` datetime DEFAULT NULL,
  `durasi` varchar(50) DEFAULT NULL,
  `status_jo` int(11) NOT NULL DEFAULT '2',
  `komentar` varchar(300) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_order`
--

INSERT INTO `job_order` (`id_joborder`, `nm_kapal`, `agen_kapal`, `tgl_masuk`, `jm_masuk`, `tgl_keluar`, `jm_keluar`, `pelabuhan_asal`, `pelabuhan_tujuan`, `id_jenis`, `nm_kegiatan`, `id_client`, `document_perintah`, `no_wo`, `booking_cargo`, `total_cargo`, `sandar_kapal`, `doc_ptw`, `doc_pjsm`, `doc_lsap`, `alat_berat`, `alat_berat2`, `alat_berat3`, `alat_berat4`, `alat_berat5`, `alat_beratsewa`, `area`, `progres_jo`, `mulai_kegiatan`, `finish_kegiatan`, `durasi`, `status_jo`, `komentar`) VALUES
('JV00001', 'PAN MARINE', 'KANAYA', '2020-01-08', '20:00:00', '0000-00-00', '00:00:00', 'PAMELOKAN', 'JAKARTA', 1, 'Offloading', 3, 'Email Tanggal 02 Januari 2020', NULL, '0', '577.54', 'JETTY KJ2 A', 'contoh-bukti-pembayaran.pdf', 'contoh-bukti-pembayaran.pdf', 'contoh-bukti-pembayaran.pdf', 'CRANE KATO R-32 70 TON', 'FORKLIFT F-31  3,5 TON', 'FORKLIFT F-32  3,5 TON', 'NULL', 'NULL', 'NULL', 'kj1', '270.20', '2020-01-17 15:07:23', '2020-01-21 15:21:48', '4 hari 0 jam 14 menit ', 6, NULL),
('JV00002', 'KM.Sejahtera 35', 'PT.Sinar Pagoda', '2020-01-29', '03:30:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 27 Januari 2020', NULL, '0', NULL, 'JETTY KJ2 A', 'PTW Medco (1).jpg', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F18 cap 8 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F08 cap 2,5 Ton', 'NULL', 'NULL', 'kj1', '83.00', '2020-02-06 14:07:26', NULL, NULL, 2, NULL),
('JV00003', 'KM.Sejahtera 35', 'PT.Sinar Pagoda', '2020-01-30', '08:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 27 Januari 2020', NULL, '0', '551.92', 'JETTY KJ2 A', 'PTW Medco.jpg', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F18 cap 8 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F08 cap 2,5 Ton', 'NULL', 'NULL', 'kj1', '163.50', '2020-02-12 14:45:39', '2020-02-12 14:49:17', '3 menit ', 4, NULL),
('JV00004', 'KM.Sejahtera 35', 'PT.Sinar Pagoda', '2020-05-21', '23:30:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 18 Mei 2020', NULL, '0', '1119.02', 'JETTY KJ2 A', 'PTW Medco (1).jpg', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'Forklift F08 cap 2,5 Ton', 'NULL', 'NULL', 'kj1', '292.20', '2020-05-28 14:05:29', '2020-05-28 14:23:09', '17 menit ', 4, NULL),
('JV00005', 'KM.Sejahtera 36', 'PT.Sinar Pagoda', '2020-06-03', '07:30:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 31 Mei 2020', NULL, '0', '926.79', 'JETTY KJ2 A', 'PTW Medco (1).jpg', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F18 cap 8 Ton', 'Forklift F15 cap 3 Ton', 'NULL', 'NULL', 'NULL', 'kj1', '273.50', '2020-07-09 15:59:36', '2020-07-09 16:02:37', '3 menit ', 6, NULL),
('JV00006', 'GNA', 'JU', '2020-07-01', '02:01:00', '2020-07-03', '14:12:00', 'MATAK', 'TJ PRIOK', 1, 'Loading', 1, 'TEST/V1/XXX', NULL, '0', '90.00', 'JETTY KJ1', 'ISO2USB.exe', 'ISO2USB.exe', 'ISO2USB.exe', 'CRANE TADANO', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'kj1', '90.00', '2020-07-03 13:45:12', '2020-07-24 10:16:46', '20 hari 20 jam 31 menit ', 4, NULL),
('JV00007', 'KM.Sejahtera 35', 'PT.Sinar Pagoda', '2020-06-27', '05:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 25 Juni 2020', NULL, '0', '501.38', 'JETTY KJ2 A', 'PTW Medco (1).jpg', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F08 cap 2,5 Ton', 'Forklift F15 cap 3 Ton', 'NULL', 'NULL', 'NULL', 'kj1', '228.00', '2020-07-06 08:30:17', '2020-07-06 08:35:02', '4 menit ', 6, NULL),
('JV00008', 'KM. Sejahtera 35', 'Sinar Pagoda', '2020-07-06', '05:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email Tanggal 04 Juli 2020', NULL, '0', '286.37', 'JETTY KJ2 A', 'document_pendukung.pdf', 'document_pendukung.pdf', 'document_pendukung.pdf', 'Crane R36 cap 110 Ton', 'Forklift F08 cap 2,5 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'NULL', 'NULL', 'kj1', '146.30', '2020-07-06 13:47:21', '2020-07-06 14:20:26', '33 menit ', 6, NULL),
('JV00009', 'KM.Sokka', 'PT.Global Trans', '2020-07-10', '06:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 2, 'Email tanggal 08 Juli 2020', NULL, '0', '406.76', 'JETTY KJ1', 'PTW Premier Oil New.pdf', 'PTW Premier Oil PJSM.pdf', 'List Personil & HDE New.xlsx', 'Crane R34 cap 60 Ton', 'Forklift F14 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'Forklift F10 cap 3,5 Ton', 'NULL', 'NULL', 'kj1', '91.39', '2020-07-10 09:21:08', '2020-07-10 11:38:21', '2 jam 17 menit ', 4, NULL),
('JV00010', 'KM.Sejahtera 36', 'PT.Sinar Pagoda', '2020-07-10', '18:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 08 Juli 2020', NULL, '0', NULL, 'JETTY KJ2 A', '1. PTW Cold Work (Legal Size)_BAHASA_13 Sept 2019 rev. (1).pdf', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F08 cap 2,5 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'NULL', 'NULL', 'kj1', '10.00', NULL, NULL, NULL, 1, NULL),
('JV00011', 'KM.Sejahtera 36', 'PT.Sinar Pagoda', '2020-07-10', '18:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 08 Juli 2020', NULL, '0', '942.19', 'JETTY KJ2 A', '1. PTW Cold Work (Legal Size)_BAHASA_13 Sept 2019 rev. (1).pdf', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F08 cap 2,5 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'NULL', 'NULL', 'kj1', '253.12', '2020-07-11 01:46:01', '2020-07-11 15:19:56', '13 jam 33 menit ', 6, NULL),
('JV00012', 'KM.Sejahtera 35', 'PT.Sinar Pagoda', '2020-07-15', '14:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 14 Juli 2020', NULL, '0', '1104.33', 'JETTY KJ2 A', 'PTW Cold Work (Legal Size).pdf', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F08 cap 2,5 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'NULL', 'NULL', 'kj1', '178.13', '2020-07-15 19:43:47', '2020-07-16 15:10:34', '19 jam 26 menit ', 6, NULL),
('JV00013', 'KM.Sejahtera 36', 'PT.Sinar Pagoda', '2020-07-20', '11:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Loading', 3, 'Email tanggal 20 Juli 2020', NULL, '0', '1328.12', 'JETTY KJ2 A', '1. PTW Cold Work (Legal Size)_BAHASA_13 Sept 2019 rev. (1).pdf', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F08 cap 2,5 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'NULL', 'NULL', 'kj1', '1195.80', '2020-07-21 19:53:15', '2020-07-29 14:36:22', '7 hari 18 jam 43 menit ', 4, NULL),
('JV00014', 'KM. SOKKA', 'Transglobal', '2020-07-24', '07:00:00', '0000-00-00', '00:00:00', 'MATAK', 'JAKARTA', 1, 'Offloading', 2, 'EMAIL tanggal 03 Juli 2020', NULL, '0', '150.54', 'JETTY KJ1', 'document_pendukung.pdf', 'document_pendukung.pdf', 'document_pendukung.pdf', 'Crane R34 cap 60 Ton', 'Forklift F14 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'NULL', 'NULL', 'NULL', 'kj1', '12.00', '2020-07-24 10:39:22', '2020-07-24 10:44:11', '4 menit ', 4, '@Hartonos :\r\ntes'),
('JV00015', 'KM. SOKKA', 'Transglobal', '2020-07-24', '07:00:00', '0000-00-00', '00:00:00', 'MATAK', 'JAKARTA', 1, 'Offloading', 4, 'EMAIL tanggal 03 Juli 2020', NULL, '0', '51.28', 'JETTY KJ1', 'document_pendukung.pdf', 'document_pendukung.pdf', 'document_pendukung.pdf', 'Crane R34 cap 60 Ton', 'Forklift F18 cap 8 Ton', 'Forklift F14 cap 3 Ton', 'NULL', 'NULL', 'NULL', 'kj1', '4.40', '2020-07-24 10:39:18', '2020-07-24 10:44:16', '4 menit ', 5, NULL),
('JV00016', 'KM.Sejahtera 35', 'PT.Sinar Pagoda', '2020-08-01', '12:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 30 Juli 2020', 'WO 008/Medco/08/2020', '0', '1492.88', 'JETTY KJ2 A', '1. PTW Cold Work (Legal Size)_BAHASA_13 Sept 2019 rev. (1).pdf', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F08 cap 2,5 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'NULL', 'NULL', 'kj1', '442.40', '2020-08-01 14:29:50', '2020-08-02 02:46:00', '12 jam 16 menit ', 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_ordertruck`
--

CREATE TABLE IF NOT EXISTS `job_ordertruck` (
  `id_jobordertruck` varchar(15) NOT NULL,
  `id_alatberat` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `area` varchar(15) DEFAULT NULL,
  `total_cargo` decimal(6,2) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `mulai_kegiatan` datetime DEFAULT NULL,
  `finish_kegiatan` datetime DEFAULT NULL,
  `durasi` varchar(50) DEFAULT NULL,
  `no_wo` varchar(50) DEFAULT NULL,
  `komentar` text,
  `status_jotruck` varchar(15) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_ordertruck`
--

INSERT INTO `job_ordertruck` (`id_jobordertruck`, `id_alatberat`, `id_client`, `area`, `total_cargo`, `created_on`, `mulai_kegiatan`, `finish_kegiatan`, `durasi`, `no_wo`, `komentar`, `status_jotruck`) VALUES
('JT00001', 8, 3, 'kj1', '50.53', '2020-07-23 14:48:44', '2020-07-23 15:48:44', '2020-07-27 12:49:17', '3 hari 21 jam 0 menit ', '12345', NULL, '5'),
('JT00002', 8, 3, 'kj1', '89.30', '2020-07-22 10:30:51', '2020-07-22 10:49:51', '2020-07-23 13:53:46', '1 hari 3 jam 3 menit ', NULL, NULL, '3'),
('JT00003', 5, 2, 'kj1', '3.54', '2020-07-23 14:42:25', '2020-07-23 14:49:53', '2020-07-23 15:16:55', '27 menit ', NULL, NULL, '3'),
('JT00004', 5, 2, 'kj1', NULL, '2020-07-27 12:51:03', NULL, NULL, NULL, NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `log_system`
--

CREATE TABLE IF NOT EXISTS `log_system` (
`id_log` int(11) NOT NULL,
  `waktu` datetime NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_system`
--

INSERT INTO `log_system` (`id_log`, `waktu`, `nama_user`, `keterangan`) VALUES
(1, '2020-08-05 09:12:10', 'hartono', 'login'),
(2, '2020-08-05 09:14:44', 'hartono', 'login'),
(3, '2020-08-05 09:16:49', 'hartono', 'login'),
(4, '2020-08-05 09:16:53', 'Hartono', 'logout'),
(5, '2020-08-05 09:17:09', 'hartono', 'login'),
(6, '2020-08-05 09:17:40', 'Hartono', 'logout'),
(7, '2020-08-05 09:21:37', 'hartono', 'login'),
(8, '2020-08-05 09:23:35', 'Hartono', 'logout');

-- --------------------------------------------------------

--
-- Table structure for table `moving`
--

CREATE TABLE IF NOT EXISTS `moving` (
  `id_moving` varchar(15) NOT NULL,
  `nm_trailer` varchar(50) DEFAULT NULL,
  `nm_alatberat` varchar(50) DEFAULT NULL,
  `id_client` int(11) NOT NULL,
  `nm_kegiatan` varchar(50) DEFAULT NULL,
  `area` varchar(15) DEFAULT NULL,
  `total_cargo` decimal(6,2) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `mulai_kegiatan` datetime DEFAULT NULL,
  `finish_kegiatan` datetime DEFAULT NULL,
  `durasi` varchar(50) DEFAULT NULL,
  `no_wo` text,
  `komentar` text,
  `status_moving` varchar(15) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `moving`
--

INSERT INTO `moving` (`id_moving`, `nm_trailer`, `nm_alatberat`, `id_client`, `nm_kegiatan`, `area`, `total_cargo`, `created_on`, `mulai_kegiatan`, `finish_kegiatan`, `durasi`, `no_wo`, `komentar`, `status_moving`) VALUES
('TR00001', 'TRAILER 40 FT B.9239 IL', 'CRANE KATO R-33 70 TON', 1, NULL, 'kj1', '10.37', '2020-07-29 15:18:14', '2020-07-29 16:42:21', '2020-07-29 17:05:42', '23 menit ', '987654321', NULL, '5'),
('TR00002', 'TRAILER 40 FT B.9239 IL', 'FORKLIFT F-31 3,5 TON', 4, NULL, 'kj1', NULL, '2020-07-30 09:37:45', NULL, NULL, NULL, NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE IF NOT EXISTS `pengeluaran` (
`id` int(11) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `kode_brg` varchar(5) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tgl_keluar` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id`, `unit`, `kode_brg`, `jumlah`, `tgl_keluar`) VALUES
(3, 'mekanik', 'BR104', 1, '2019-07-31'),
(4, 'mekanik', 'BR095', 2, '2019-07-31'),
(5, 'mekanik', 'BR084', 2, '2019-07-31'),
(6, 'mekanik', 'BR091', 1, '2019-08-22');

--
-- Triggers `pengeluaran`
--
DELIMITER //
CREATE TRIGGER `TG_STOK_UPDATE` AFTER INSERT ON `pengeluaran`
 FOR EACH ROW BEGIN
	update stokbarang SET keluar=keluar + NEW.jumlah, 
	sisa=stok-keluar WHERE 
	kode_brg = NEW.kode_brg;

	update permintaan SET status=1 WHERE kode_brg=NEW.kode_brg AND 
	unit=NEW.unit;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `permintaan`
--

CREATE TABLE IF NOT EXISTS `permintaan` (
`id_permintaan` int(100) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `kode_brg` varchar(5) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tgl_permintaan` date NOT NULL,
  `nama_tukang` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permintaan`
--

INSERT INTO `permintaan` (`id_permintaan`, `unit`, `kode_brg`, `id_jenis`, `jumlah`, `tgl_permintaan`, `nama_tukang`, `status`) VALUES
(8, 'mekanik', 'BR091', 5, 1, '2019-07-31', 'Anang', 1),
(4, 'mekanik', 'BR104', 4, 1, '2019-07-31', 'Anang', 1),
(5, 'mekanik', 'BR091', 5, 1, '2019-07-31', 'Anang', 1),
(6, 'mekanik', 'BR095', 5, 2, '2019-07-31', 'Anang', 1),
(7, 'mekanik', 'BR084', 5, 2, '2019-07-31', 'Agus Priyanti', 1),
(9, 'suleman', 'BR018', 1, 10, '2019-08-02', 'Agus', 0);

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE IF NOT EXISTS `satuan` (
`id_satuan` int(15) NOT NULL,
  `nm_satuan` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`id_satuan`, `nm_satuan`) VALUES
(1, 'JAM'),
(2, 'HARI'),
(3, 'BULAN'),
(4, 'SIFT'),
(5, 'ORANG/HARI'),
(6, 'ORANG/BULAN'),
(7, 'METER'),
(8, 'M3/T'),
(9, 'TON'),
(10, 'TRIP'),
(11, 'KWH');

-- --------------------------------------------------------

--
-- Table structure for table `sementara`
--

CREATE TABLE IF NOT EXISTS `sementara` (
`id_sementara` int(100) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `kode_brg` varchar(5) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tgl_permintaan` date NOT NULL,
  `nama_tukang` varchar(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sementara`
--

INSERT INTO `sementara` (`id_sementara`, `unit`, `kode_brg`, `id_jenis`, `jumlah`, `tgl_permintaan`, `nama_tukang`, `status`) VALUES
(9, 'suleman', 'BR018', 1, 10, '2019-08-02', 'Agus', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stacking`
--

CREATE TABLE IF NOT EXISTS `stacking` (
  `id_stacking` varchar(15) NOT NULL,
  `id_alatberat` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `nm_kegiatan` varchar(50) DEFAULT NULL,
  `area` varchar(15) DEFAULT NULL,
  `total_cargo` decimal(6,2) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `mulai_kegiatan` datetime DEFAULT NULL,
  `finish_kegiatan` datetime DEFAULT NULL,
  `durasi` varchar(50) DEFAULT NULL,
  `no_wo` text,
  `komentar` text,
  `status_stacking` varchar(15) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stacking`
--

INSERT INTO `stacking` (`id_stacking`, `id_alatberat`, `id_client`, `nm_kegiatan`, `area`, `total_cargo`, `created_on`, `mulai_kegiatan`, `finish_kegiatan`, `durasi`, `no_wo`, `komentar`, `status_stacking`) VALUES
('ST00001', 8, 3, 'Stacking', 'kj1', '19.02', '2020-07-28 11:29:38', '2020-07-28 11:57:10', '2020-07-28 13:55:12', '1 jam 58 menit ', '99999', NULL, '5'),
('ST00002', 6, 4, 'Stacking', 'kj1', NULL, '2020-07-28 14:48:43', '2020-07-28 14:51:14', NULL, NULL, NULL, NULL, '2');

-- --------------------------------------------------------

--
-- Table structure for table `stokbarang`
--

CREATE TABLE IF NOT EXISTS `stokbarang` (
  `kode_brg` varchar(5) NOT NULL,
  `id_jenis` int(2) NOT NULL,
  `nama_brg` varchar(30) NOT NULL,
  `satuan` varchar(50) DEFAULT NULL,
  `stok` int(11) NOT NULL,
  `keluar` int(11) DEFAULT '0',
  `sisa` int(11) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `suplier` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stokbarang`
--

INSERT INTO `stokbarang` (`kode_brg`, `id_jenis`, `nama_brg`, `satuan`, `stok`, `keluar`, `sisa`, `tgl_masuk`, `suplier`) VALUES
('BR001', 1, 'Pipa Steel  Ã˜ 2"', 'Meter', 180, 0, 180, '2017-01-08', ''),
('BR002', 1, 'Pipa Steel Ã˜ 4"', 'Meter', 250, 28, 222, '2017-01-15', ''),
('BR003', 1, 'Pipa Steel Ã˜ 6"', 'Meter', 30, 0, 30, '2017-04-17', ''),
('BR004', 1, 'Pipa Steel Ã˜ 8"', 'Meter', 120, 0, 120, '2017-02-14', ''),
('BR005', 1, 'Pipa Steel Ã˜ 12"', 'Meter', 210, 0, 210, '2017-02-14', ''),
('BR006', 1, 'Pipa GS Ã˜ 1/2"', 'Meter', 468, 10, 458, '2017-03-15', ''),
('BR007', 1, 'Pipa GS Ã˜ 3/4"', 'Meter', 248, 10, 238, '2017-03-30', ''),
('BR008', 1, 'Pipa GS Ã˜ 1"', 'Meter', 454, 0, 454, '2017-03-27', ''),
('BR009', 1, 'Pipa PVC Ã˜ 1/2"', 'Meter', 2316, 0, 2316, '2017-04-20', ''),
('BR010', 1, 'Pipa PVC Ã˜ 1"', 'Meter', 230, 0, 230, '2017-05-16', ''),
('BR011', 1, 'Pipa PVC Ã˜ 2"', 'Meter', 350, 0, 350, '2017-05-26', ''),
('BR012', 1, 'Pipa PVC Ã˜ 4"', 'Meter', 300, 0, 300, '2017-04-18', ''),
('BR013', 1, 'Pipa PVC Ã˜ 6"', 'Meter', 400, 0, 400, '2017-04-19', ''),
('BR014', 1, 'Pipa HDPE Ã˜ 25 mm', 'Meter', 4450, 0, 4450, '2017-05-24', ''),
('BR015', 1, 'Pipa HDPE Ã˜ 90 mm', 'Meter', 5887, 0, 5887, '2017-06-20', ''),
('BR016', 1, 'Pipa Stenlis Ã˜ 1"', 'Meter', 6, 0, 6, '2017-06-20', ''),
('BR017', 1, 'Pipa PE Ã˜ 200 mm', 'Meter', 1540, 0, 1540, '2017-06-21', ''),
('BR018', 1, 'Pipa PE Ã˜ 400 mm', 'Meter', 2300, 0, 2300, '2017-05-25', ''),
('BR019', 1, 'Pipa PE Ã˜ 500 mm', 'Meter', 116, 0, 116, '2017-05-30', ''),
('BR020', 1, 'Pipa PE Ã˜ 710 mm', 'Meter', 618, 0, 618, '2017-06-20', ''),
('BR021', 2, 'Meter Air Itron Ã˜ 1"', 'Set', 5100, 0, 5100, '2017-05-16', ''),
('BR022', 2, 'Meter Air Drat Ã˜ 3/4"', 'Buah', 20, 4, 16, '2017-06-19', ''),
('BR023', 2, 'Meter Air Drat Ã˜ 1"', 'Buah', 38, 35, 3, '2017-05-15', ''),
('BR024', 2, 'Meter Air Drat Ã˜ 2"', 'Buah', 20, 5, 15, '2017-05-23', ''),
('BR025', 2, 'Meter Air Drat Ã˜ 3"', 'Buah', 50, 42, 8, '2017-05-24', ''),
('BR026', 2, 'Meter Air Flange Ã˜ 2"', 'Buah', 9, 2, 7, '2017-05-23', ''),
('BR027', 2, 'Meter Air Flange Ã˜ 4"', 'Buah', 14, 0, 14, '2017-06-22', ''),
('BR028', 2, 'Meter Air Flange Ã˜ 8"', 'Buah', 30, 0, 30, '2017-06-20', ''),
('BR029', 2, 'Meter Air Flange Ã˜ 250mm', 'Buah', 30, 8, 22, '2017-05-22', ''),
('BR030', 2, 'Meter Air Barindo Ã˜ 1/2"', 'Set', 12, 0, 12, '2017-07-02', ''),
('BR031', 3, 'Dop PVC Ã˜ 3/4"', 'Buah', 1850, 0, 1850, '2017-06-12', ''),
('BR032', 3, 'Dop PVC Ã˜ 1"', 'Buah', 13, 2, 11, '2017-06-18', ''),
('BR033', 3, 'Dop PVC Ã˜ 2"', 'Buah', 232, 100, 132, '2017-06-20', ''),
('BR034', 3, 'Dop PVC Ã˜ 3"', 'Buah', 20, 7, 13, '2017-06-19', ''),
('BR035', 3, 'Dop PVC Ã˜ 4"', 'Buah', 35, 5, 30, '2017-06-19', ''),
('BR036', 3, 'Bend PVC RR Ã˜ 2x90"', 'Buah', 50, 10, 40, '2017-06-27', ''),
('BR037', 3, 'Bend PVC RR Ã˜ 3x90"', 'Buah', 48, 4, 44, '2017-06-26', ''),
('BR038', 3, 'Bend PVC RR Ã˜ 3x45"', 'Buah', 166, 5, 161, '2017-06-20', ''),
('BR039', 3, 'Bend PVC RR Ã˜ 6x90"', 'Buah', 144, 0, 144, '2017-06-21', ''),
('BR040', 3, 'Bend PVC RR Ã˜ 6x45"', 'Buah', 49, 8, 41, '2017-06-28', ''),
('BR041', 3, 'Faucet Socket PVC Ã˜ 3/4"', 'Buah', 4206, 0, 4206, '2017-06-27', ''),
('BR042', 3, 'Faucet Socket PVC Ã˜ 1"', 'Buah', 1980, 40, 1940, '2017-06-20', ''),
('BR043', 3, 'Faucet Socket PVC Ã˜ 2"', 'Buah', 10, 0, 10, '2017-06-27', ''),
('BR044', 3, 'Faucet Socket PVC Ã˜ 3"', 'Buah', 13, 0, 13, '2017-06-27', ''),
('BR045', 3, 'Faucet Socket PVC Ã˜ 300"', 'Buah', 77, 0, 77, '2017-06-27', ''),
('BR046', 3, 'Kopling Pipa PVC Ã˜ 3/4"', 'Buah', 7469, 0, 7469, '2017-06-27', ''),
('BR047', 3, 'Knee PVC Ã˜ 1/2"', 'Buah', 9187, 0, 9187, '2017-06-25', ''),
('BR048', 3, 'Knee PVC Ã˜ 3/4"', 'Buah', 3169, 0, 3169, '2017-07-28', ''),
('BR049', 3, 'Knee PVC Ã˜ 1"', 'Buah', 22, 0, 22, '2017-06-28', ''),
('BR050', 3, 'Knee PVC Ã˜ 2"', 'Buah', 35, 0, 35, '2017-06-28', ''),
('BR051', 3, 'Knee SC - PVC Ã˜ 2 1/2x90', 'Buah', 1, 0, 1, '2017-06-28', ''),
('BR052', 3, 'Reducer PVC Ã˜ 3x2"', 'Buah', 24, 0, 24, '2017-06-28', ''),
('BR053', 3, 'Reducer PVC Ã˜ 4x2"', 'Buah', 183, 0, 183, '2017-06-28', ''),
('BR054', 3, 'Reducer PVC Ã˜ 4x3"', 'Buah', 143, 0, 143, '2017-06-28', ''),
('BR055', 3, 'Reducer PVC Ã˜ 6x2"', 'Buah', 50, 0, 50, '2017-06-28', ''),
('BR056', 3, 'Reducer PVC Ã˜ 8x6"', 'Buah', 52, 0, 52, '2017-06-30', ''),
('BR057', 3, 'Reducer PVC Ã˜ 8x4"', 'Buah', 54, 0, 54, '2017-06-30', ''),
('BR058', 3, 'Repair Socket PVC Ã˜ 3"', 'Buah', 653, 0, 653, '2017-07-03', ''),
('BR059', 3, 'Repair Socket PVC Ã˜ 4"', 'Buah', 322, 0, 322, '2017-07-04', ''),
('BR060', 3, 'Repair Socket PVC Ã˜ 6"', 'Buah', 40, 0, 40, '2017-07-04', ''),
('BR061', 3, 'Repair Socket PVC Ã˜ 12"', 'Buah', 21, 0, 21, '2017-07-05', ''),
('BR062', 3, 'Sock Reduser Ã˜ 1"', 'Buah', 18, 0, 18, '2017-07-05', ''),
('BR063', 3, 'Sock PVC Ã˜ 2"', 'Buah', 18, 0, 18, '2017-07-06', ''),
('BR064', 3, 'Tee PVC RR Ã˜ 4x3"', 'Buah', 163, 0, 163, '2017-07-06', ''),
('BR065', 3, 'Tee PVC RR Ã˜ 4x4"', 'Buah', 359, 35, 324, '2017-07-03', ''),
('BR066', 3, 'Tee PVC RR Ã˜ 3x3"', 'Buah', 361, 0, 361, '2017-07-06', ''),
('BR067', 3, 'Tee PVC RR Ã˜ 4x2"', 'Buah', 155, 0, 155, '2017-07-05', ''),
('BR068', 3, 'Tee PVC RR Ã˜ 2x2"', 'Buah', 201, 0, 201, '2017-06-30', ''),
('BR069', 3, 'Tee PVC RR Ã˜ 8x6"', 'Buah', 104, 0, 104, '2017-07-05', ''),
('BR070', 3, 'Tee PVC Ã˜ 1/2"', 'Buah', 862, 0, 862, '2017-07-05', ''),
('BR071', 1, 'Pipa Steel Selubung Ã˜ 1100"', 'Meter', 25, 0, 25, '2017-07-03', ''),
('BR072', 1, 'Pipa STC Leaning Ã˜ 300m', 'Meter', 105, 0, 105, '2017-07-03', ''),
('BR073', 1, 'Pipa STC Leaning Ã˜ 600m', 'Meter', 138, 0, 138, '2017-07-03', ''),
('BR074', 1, 'Pipa STC Leaning Ã˜ 200mm', 'Meter', 80, 0, 80, '2017-07-03', ''),
('BR075', 1, 'Pipa STC Leaning Ã˜ 400m', 'Meter', 326, 0, 326, '2017-07-03', ''),
('BR076', 1, 'Pipa PE Ã˜ 315 mm', 'Meter', 1641, 0, 1641, '2017-07-03', ''),
('BR077', 1, 'Pipa PE Ã˜ 160 mm', 'Meter', 5933, 0, 5933, '2017-07-03', ''),
('BR078', 1, 'Pipa PE Ã˜ 110 mm', 'Meter', 16981, 0, 16981, '2017-07-03', ''),
('BR079', 1, 'Pipa PVC Ã˜ 3"', 'Meter', 20, 0, 20, '2017-07-03', ''),
('BR080', 1, 'Pipa PVC Ã˜ 12"', 'Meter', 15, 0, 15, '2017-07-03', ''),
('BR081', 4, 'Minyak Compressor Ã˜ SAE 30', 'Liter', 12, 0, 12, '2017-07-10', ''),
('BR082', 4, 'Minyak Hidrolex Ã˜ SAE 10', 'Liter', 68, 0, 68, '2017-07-05', ''),
('BR083', 5, 'Ampere Meter  800/5A', 'Buah', 9, 0, 9, '2017-07-11', ''),
('BR084', 5, 'Bohlam Control', 'Buah', 17, 2, 15, '2017-07-12', ''),
('BR085', 4, 'Minyak Diala Ã˜ C/B', 'Liter', 180, 0, 180, '2017-07-16', ''),
('BR086', 4, 'Grease Draton', 'Kg', 18, 0, 18, '2017-07-16', ''),
('BR087', 4, 'Oli Gardan Rored Ã˜ SAE 12', 'Liter', 70, 4, 66, '2017-07-16', ''),
('BR088', 5, 'Push Button', 'Buah', 5, 0, 5, '2017-07-16', ''),
('BR089', 5, 'Skun Kabel Ã˜ 50 mm', 'Buah', 95, 0, 95, '2017-07-16', ''),
('BR090', 5, 'Terminal KB SPB Ã˜ 60', 'Buah', 5, 0, 5, '2017-07-16', ''),
('BR091', 5, 'Dynamo  Star Yanmar Ã˜ 12V', 'Buah', 4, 1, 3, '2017-07-16', ''),
('BR092', 5, 'Kabel NYY Ã˜ 2x2,5mm', 'Meter', 100, 0, 100, '2017-07-18', ''),
('BR093', 5, 'Kabel Ties', 'Bungkus', 1, 0, 1, '2017-07-12', ''),
('BR094', 5, 'Time Delay Ã˜ 0-30s', 'Buah', 5, 0, 5, '2017-07-11', ''),
('BR095', 5, 'Konektor Ã˜ 120mm', 'Buah', 8, 2, 6, '2017-07-11', ''),
('BR096', 5, 'Ballast SON Ã˜ 250 Watt', 'Buah', 4, 0, 4, '2017-07-05', ''),
('BR097', 5, 'MCB', 'Buah', 12, 0, 12, '2017-07-09', ''),
('BR098', 5, 'Skun Ã˜ 70', 'Buah', 1500, 0, 1500, '2017-07-10', ''),
('BR099', 5, 'Timer Omron Ã˜ H3CR', 'Buah', 10, 0, 10, '2017-07-02', ''),
('BR100', 4, 'Pelumas Mesran Ã˜ SAE 20-50', 'Liter', 30, 0, 30, '2017-07-10', ''),
('BR101', 4, 'Pelumas Meditran Ã˜ SAE 40', 'Liter', 139, 0, 139, '2017-07-04', ''),
('BR102', 4, 'Gemuk Biasa', 'Kaleng', 10, 0, 10, '2017-07-11', ''),
('BR103', 4, 'Grease SKF LGHP Ã˜ 2/1', 'Kg', 3, 0, 3, '2017-06-26', ''),
('BR104', 4, 'Minyak Oli Ã˜ SAE 90', 'Liter', 10, 1, 9, '2017-07-02', ''),
('BR105', 4, 'Oli Diesel Ã˜ SAE 15W-40', 'Liter', 45, 0, 45, '2017-07-03', ''),
('BR106', 1, 'Pipa Galvanis', 'Meter', 35, 0, 35, '2017-07-18', ''),
('BR107', 2, 'meter air 2002', 'meter', 20, 1, 19, '2017-07-20', 'Adi'),
('BR108', 1, 'pipa 2002', 'meter', 10, 0, 10, '2017-07-21', 'sukiman'),
('BR109', 3, 'Vga to Hdmi', 'Pcs', 1, 0, 1, '2019-07-29', 'CMS'),
('BR110', 3, 'Kabel HDMI 3M', 'unit', 1, 0, 1, '2019-07-31', 'CMS'),
('BR111', 5, 'Filter ', 'Buah', 3, 0, 3, '1900-12-05', 'Cv. Jaya Teknik'),
('BR112', 1, 'Tralon', 'Batang', 200, 0, 200, '2019-08-01', 'TB. Aji Kempet');

-- --------------------------------------------------------

--
-- Table structure for table `tarif_shorebase`
--

CREATE TABLE IF NOT EXISTS `tarif_shorebase` (
`id_tarif` int(15) NOT NULL,
  `nm_kegiatan` varchar(50) NOT NULL,
  `id_jenis` varchar(15) NOT NULL,
  `id_client` varchar(15) NOT NULL,
  `nominal_tarif` bigint(50) NOT NULL,
  `id_satuan` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tarif_shorebase`
--

INSERT INTO `tarif_shorebase` (`id_tarif`, `nm_kegiatan`, `id_jenis`, `id_client`, `nominal_tarif`, `id_satuan`) VALUES
(1, 'Stevedoring And Cargo Handling (Fixed Cost)', '1', '1', 2702716500, '3'),
(2, 'Loading', '1', '2', 272000, '8'),
(3, 'Offloading', '1', '2', 272000, '8'),
(4, 'Loading', '1', '3', 114500, '8'),
(5, 'Offloading', '1', '3', 106000, '8'),
(6, 'Loading', '1', '4', 260000, '8'),
(7, 'Offloading', '1', '4', 260000, '8');

-- --------------------------------------------------------

--
-- Table structure for table `timeline_cargo`
--

CREATE TABLE IF NOT EXISTS `timeline_cargo` (
`id` int(50) NOT NULL,
  `id_joborder` varchar(15) NOT NULL,
  `tanggalCargo` date NOT NULL,
  `startCargo` time NOT NULL,
  `finishCargo` time NOT NULL,
  `statusTimeline` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timeline_cargo`
--

INSERT INTO `timeline_cargo` (`id`, `id_joborder`, `tanggalCargo`, `startCargo`, `finishCargo`, `statusTimeline`) VALUES
(22, 'JV00001', '2019-09-13', '14:00:00', '16:00:00', 0),
(23, 'JV00001', '2019-09-13', '14:00:00', '16:00:00', 1),
(24, 'JV00002', '2019-09-05', '08:00:00', '17:30:00', 1),
(25, 'JV00003', '2019-09-20', '08:20:00', '14:00:00', 1),
(26, 'JV00004', '2019-09-23', '12:05:00', '12:30:00', 1),
(27, 'JV00005', '2019-09-27', '14:48:00', '15:08:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `timeline_joborder`
--

CREATE TABLE IF NOT EXISTS `timeline_joborder` (
`id_timeline` int(11) NOT NULL,
  `id_joborder` varchar(15) CHARACTER SET utf8 NOT NULL,
  `waktu_stop` datetime NOT NULL,
  `waktu_mulaikembali` datetime DEFAULT NULL,
  `keterangan_jeda` varchar(200) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timeline_joborder`
--

INSERT INTO `timeline_joborder` (`id_timeline`, `id_joborder`, `waktu_stop`, `waktu_mulaikembali`, `keterangan_jeda`) VALUES
(2, 'JV00001', '2020-01-18 10:51:04', '2020-01-18 12:50:42', 'Istirahat'),
(3, 'JV00001', '2020-01-20 11:52:46', '2020-01-20 14:52:52', 'Menunggu truck'),
(4, 'JV00004', '2020-05-28 14:09:05', '2020-05-28 14:19:49', 'Istirahat , Persiapan sholat maghrib dan pergantian Crew'),
(5, 'JV00004', '2020-05-28 14:21:36', '2020-05-28 14:22:44', 'Istirahat , lanjut jam 01.10 Wib'),
(6, 'JV00002', '2020-06-25 10:12:29', '2020-06-25 10:12:58', 'makan siang'),
(7, 'JV00007', '2020-07-06 08:33:45', '2020-07-06 08:34:37', 'Stop , Istirahat'),
(8, 'JV00008', '2020-07-06 14:12:07', '2020-07-06 14:17:06', 'Stop Kegiatan Istirahat'),
(9, 'JV00005', '2020-07-09 16:02:11', '2020-07-09 16:02:21', 'Istirahat'),
(10, 'JV00002', '2020-07-09 16:20:45', '2020-07-09 16:20:48', 'Istirahat'),
(11, 'JV00011', '2020-07-11 02:47:14', '2020-07-11 08:33:00', 'Proses buka Palka dan buka lasing'),
(12, 'JV00011', '2020-07-11 10:37:59', '2020-07-11 11:01:33', 'Menunggu trucking dan kapal dalam posisi bunker minyak'),
(13, 'JV00011', '2020-07-11 11:40:19', '2020-07-11 13:44:28', 'Istirahat'),
(14, 'JV00012', '2020-07-15 21:08:09', '2020-07-16 02:14:41', 'Proses buka Palka & buka lasing'),
(15, 'JV00012', '2020-07-16 03:52:08', '2020-07-16 08:48:21', 'Kegiatan unloading vessel stop,istirahat dan dilanjutkan pagi jam 08;00'),
(16, 'JV00012', '2020-07-16 09:47:00', '2020-07-16 09:49:53', 'Menunggu tracking'),
(17, 'JV00012', '2020-07-16 09:52:32', '2020-07-16 10:10:10', 'Menunggu tracking'),
(19, 'JV00012', '2020-07-16 10:57:41', '2020-07-16 13:54:01', 'Hujan'),
(22, 'JV00013', '2020-07-21 23:33:33', '2020-07-22 08:29:29', 'Istirahat'),
(23, 'JV00013', '2020-07-22 08:30:53', '2020-07-22 08:30:59', 'Istirahat'),
(24, 'JV00013', '2020-07-22 11:23:09', '2020-07-22 13:20:08', 'Istirahat'),
(25, 'JV00013', '2020-07-22 17:22:54', '2020-07-22 20:10:59', 'Istirahat..lanjut malam'),
(26, 'JV00013', '2020-07-22 20:51:43', '2020-07-22 22:17:51', 'Offloading truck Conductor 30" - 9 joint'),
(27, 'JV00013', '2020-07-22 23:28:58', '2020-07-23 08:28:51', 'Istirahat..Dinner'),
(28, 'JV00013', '2020-07-23 11:21:01', '2020-07-23 13:24:59', 'Breake, makan siang'),
(29, 'JV00013', '2020-07-23 14:47:11', '2020-07-23 15:04:13', 'Crane ngisi solar'),
(30, 'JV00013', '2020-07-23 16:05:00', '2020-07-24 13:57:44', 'Menunggu cargo yang belum datang'),
(31, 'JV00013', '2020-07-24 17:04:38', '2020-07-24 20:06:33', 'Istirahat'),
(32, 'JV00013', '2020-07-24 20:45:49', '2020-07-28 08:23:01', 'Cargo not avaible'),
(33, 'JV00016', '2020-08-01 15:29:44', '2020-08-01 16:29:41', 'Proses buka palka & buka lasing'),
(34, 'JV00016', '2020-08-01 17:18:33', '2020-08-01 19:38:35', 'Kegiatan unloading vessel break,,di lanjutkan nanti malam'),
(35, 'JV00016', '2020-08-01 23:30:15', '2020-08-02 01:31:37', 'Istirahat malam');

-- --------------------------------------------------------

--
-- Table structure for table `timeline_jobordertruck`
--

CREATE TABLE IF NOT EXISTS `timeline_jobordertruck` (
`id_timeline` int(11) NOT NULL,
  `id_jobordertruck` varchar(15) NOT NULL,
  `waktu_stop` datetime NOT NULL,
  `waktu_mulaikembali` datetime DEFAULT NULL,
  `keterangan_jeda` varchar(200) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `timeline_moving`
--

CREATE TABLE IF NOT EXISTS `timeline_moving` (
`id_timeline` int(11) NOT NULL,
  `id_moving` varchar(15) NOT NULL,
  `waktu_stop` datetime NOT NULL,
  `waktu_mulaikembali` datetime DEFAULT NULL,
  `keterangan_jeda` varchar(200) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timeline_moving`
--

INSERT INTO `timeline_moving` (`id_timeline`, `id_moving`, `waktu_stop`, `waktu_mulaikembali`, `keterangan_jeda`) VALUES
(4, 'TR00001', '2020-07-29 16:44:39', '2020-07-29 16:45:46', 'Test Istirahat');

-- --------------------------------------------------------

--
-- Table structure for table `timeline_stacking`
--

CREATE TABLE IF NOT EXISTS `timeline_stacking` (
`id_timeline` int(11) NOT NULL,
  `id_stacking` varchar(15) NOT NULL,
  `waktu_stop` datetime NOT NULL,
  `waktu_mulaikembali` datetime DEFAULT NULL,
  `keterangan_jeda` varchar(200) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timeline_stacking`
--

INSERT INTO `timeline_stacking` (`id_timeline`, `id_stacking`, `waktu_stop`, `waktu_mulaikembali`, `keterangan_jeda`) VALUES
(1, 'ST00001', '2020-07-28 13:43:58', '2020-07-28 13:48:30', 'Istirahat'),
(2, 'ST00001', '2020-07-28 13:48:39', '2020-07-28 13:48:46', 'Istirahat 2'),
(3, 'ST00002', '2020-07-28 15:01:00', '2020-07-29 16:48:38', 'Istirahat'),
(4, 'ST00002', '2020-07-29 16:53:52', NULL, 'Istirahat');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id_user` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(40) CHARACTER SET utf8 NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 NOT NULL,
  `level` enum('unit_pelayanan','admin_gudang','asisten_manajer','manajer_shorebase','admin_ar','mekanik','kasir','pemohon_kas','tax','supervisor','manager_keuangan','direktur') NOT NULL,
  `id_divisi` varchar(15) DEFAULT NULL,
  `manajer` varchar(50) NOT NULL,
  `asmen` varchar(50) DEFAULT NULL,
  `area` varchar(40) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `email`, `level`, `id_divisi`, `manajer`, `asmen`, `area`) VALUES
(1, 'Admin_opskj4', '827ccb0eea8a706c4c34a16891f84e7b', 'Admin OPS KJ4', 'admin.opskj4@ekanuri.com', 'admin_gudang', NULL, 'Hartono', 'Eman', 'kj4'),
(2, 'Spv_opskj4', '827ccb0eea8a706c4c34a16891f84e7b', 'Eman Sulaeman', 'eman@ekanuri.com', 'asisten_manajer', NULL, 'Hartono', '', 'kj4'),
(14, 'hartono', '8776d72f50bd04f59fedf11fd317d90a', 'Hartono', '', 'manajer_shorebase', NULL, '', '', ''),
(18, 'checker_kj1', '8776d72f50bd04f59fedf11fd317d90a', 'Checker KJ1', 'checker.kj1@gmail.com', 'unit_pelayanan', NULL, 'Hartono', 'Iwan', 'kj1'),
(19, 'checker_kj4', '9e3da5af734c9ad2fc92f814fe9c28d5', 'Checker KJ4', 'checker.kj4@gmail.com', 'unit_pelayanan', NULL, 'Hartono', 'Eman', 'kj4'),
(20, 'Admin_opskj1', '8776d72f50bd04f59fedf11fd317d90a', 'Admin OPS KJ1', 'admin.opskj1@ekanuri.com', 'admin_gudang', NULL, 'Hartono', 'Iwan', 'kj1'),
(21, 'Spv_opskj1', '8776d72f50bd04f59fedf11fd317d90a', 'Indra Setiawan', 'indra.setiawan@ekanuri.com', 'asisten_manajer', NULL, 'Hartono', '', 'kj1'),
(22, 'admin_ar', '1080e3413b11d35b96660bbc61adfe93', 'Komarudin', 'komarudin@ekanuri.com', 'admin_ar', NULL, 'Andrioanto', '', 'hw'),
(23, 'anang', '27fed8cabb9cdcab9791a29cc4d34d4b', 'Anang Murjito', 'anang@ekanuri.com', 'mekanik', NULL, 'Hartono', '', 'KJ2'),
(24, 'admin_it', '02f238cbb13c9dda80fe1d093f4436a4', 'Admin IT', 'admin.it@ekanuri.com', 'pemohon_kas', '2', '', 'Abdul Rozak', '--Pilih Area--'),
(25, 'tax', 'fcdeaa31746e5846a5f2ceabb65f25fc', 'Patra Hambora', 'patra@ekanuri.com', 'tax', '', 'Andrianto', 'Etty ', '--Pilih Area--'),
(26, 'dhika', '0d2fab94da6704708f8eabf28dc68719', 'Dhika', 'dhika@ekanuri.com', 'kasir', '', 'Andrianto', '', '--Pilih Area--'),
(29, 'rozak', 'b9ac461798926f19cede07dd0ae65ff4', 'Abdul Rozak', 'rozak@ekanuri.com', 'supervisor', '2', '', '', '1'),
(31, 'andri', '1080e3413b11d35b96660bbc61adfe93', 'Andrianto', 'andrianto@ekanuri.com', 'manager_keuangan', '4', '', '', '1'),
(32, 'IA', 'b9ac461798926f19cede07dd0ae65ff4', 'Indra Anwar', 'indra@ekanuri.com', 'direktur', ' ', '', '', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actual_jobordertruck`
--
ALTER TABLE `actual_jobordertruck`
 ADD PRIMARY KEY (`id_at`), ADD KEY `id_djotruck` (`id_djotruck`), ADD KEY `id_jobordertruck` (`id_jobordertruck`);

--
-- Indexes for table `actual_moving`
--
ALTER TABLE `actual_moving`
 ADD PRIMARY KEY (`id_as`), ADD KEY `id_cargo` (`id_cargo`), ADD KEY `id_moving` (`id_moving`);

--
-- Indexes for table `actual_stacking`
--
ALTER TABLE `actual_stacking`
 ADD PRIMARY KEY (`id_as`), ADD KEY `id_cargo` (`id_cargo`), ADD KEY `id_stacking` (`id_stacking`);

--
-- Indexes for table `actual_stevedoring`
--
ALTER TABLE `actual_stevedoring`
 ADD PRIMARY KEY (`id_as`), ADD KEY `id_joborder` (`id_joborder`);

--
-- Indexes for table `alat_berat`
--
ALTER TABLE `alat_berat`
 ADD PRIMARY KEY (`id_alatberat`);

--
-- Indexes for table `bkk`
--
ALTER TABLE `bkk`
 ADD PRIMARY KEY (`id_bkk`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
 ADD PRIMARY KEY (`id_client`);

--
-- Indexes for table `detail_joborder`
--
ALTER TABLE `detail_joborder`
 ADD PRIMARY KEY (`id_cargo`), ADD UNIQUE KEY `id_cargo` (`id_cargo`), ADD KEY `id_joborder` (`id_joborder`), ADD KEY `id_joborder_2` (`id_joborder`), ADD KEY `id_joborder_3` (`id_joborder`), ADD KEY `id_joborder_4` (`id_joborder`), ADD KEY `id_joborder_5` (`id_joborder`), ADD KEY `id_joborder_6` (`id_joborder`), ADD KEY `id_joborder_7` (`id_joborder`), ADD KEY `id_joborder_8` (`id_joborder`), ADD KEY `id_joborder_9` (`id_joborder`), ADD KEY `id_joborder_10` (`id_joborder`), ADD KEY `id_joborder_11` (`id_joborder`), ADD KEY `id_joborder_12` (`id_joborder`), ADD KEY `id_joborder_13` (`id_joborder`);

--
-- Indexes for table `detail_jobordertruck`
--
ALTER TABLE `detail_jobordertruck`
 ADD PRIMARY KEY (`id_djotruck`), ADD KEY `id_jobordertruck` (`id_jobordertruck`);

--
-- Indexes for table `detail_moving`
--
ALTER TABLE `detail_moving`
 ADD PRIMARY KEY (`id_cargo`), ADD KEY `id_moving` (`id_moving`);

--
-- Indexes for table `detail_stacking`
--
ALTER TABLE `detail_stacking`
 ADD PRIMARY KEY (`id_cargo`), ADD KEY `id_stacking` (`id_stacking`);

--
-- Indexes for table `doc_lo`
--
ALTER TABLE `doc_lo`
 ADD PRIMARY KEY (`idDocLo`), ADD KEY `id_joborder` (`id_joborder`), ADD KEY `id_joborder_2` (`id_joborder`), ADD KEY `id_joborder_3` (`id_joborder`), ADD KEY `id_joborder_4` (`id_joborder`), ADD KEY `id_joborder_5` (`id_joborder`), ADD KEY `id_joborder_6` (`id_joborder`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
 ADD PRIMARY KEY (`id_invoice`);

--
-- Indexes for table `jenis_barang`
--
ALTER TABLE `jenis_barang`
 ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `jenis_kegiatan`
--
ALTER TABLE `jenis_kegiatan`
 ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `job_order`
--
ALTER TABLE `job_order`
 ADD PRIMARY KEY (`id_joborder`), ADD KEY `id_jenis` (`id_jenis`), ADD KEY `id_client` (`id_client`), ADD KEY `id_jenis_2` (`id_jenis`), ADD KEY `id_client_2` (`id_client`), ADD KEY `id_client_3` (`id_client`), ADD KEY `id_client_4` (`id_client`), ADD KEY `id_client_5` (`id_client`), ADD KEY `id_client_6` (`id_client`), ADD KEY `id_alatberat` (`alat_berat`), ADD KEY `id_alatberat2` (`alat_berat2`), ADD KEY `id_alatberat3` (`alat_berat3`), ADD KEY `id_alatberat4` (`alat_berat4`), ADD KEY `id_alatberat5` (`alat_berat5`);

--
-- Indexes for table `job_ordertruck`
--
ALTER TABLE `job_ordertruck`
 ADD PRIMARY KEY (`id_jobordertruck`), ADD KEY `id_alatberat` (`id_alatberat`), ADD KEY `id_client` (`id_client`);

--
-- Indexes for table `log_system`
--
ALTER TABLE `log_system`
 ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `moving`
--
ALTER TABLE `moving`
 ADD PRIMARY KEY (`id_moving`), ADD KEY `id_alatberat` (`nm_alatberat`), ADD KEY `id_client` (`id_client`), ADD KEY `id_client_2` (`id_client`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permintaan`
--
ALTER TABLE `permintaan`
 ADD PRIMARY KEY (`id_permintaan`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
 ADD PRIMARY KEY (`id_satuan`);

--
-- Indexes for table `sementara`
--
ALTER TABLE `sementara`
 ADD PRIMARY KEY (`id_sementara`);

--
-- Indexes for table `stacking`
--
ALTER TABLE `stacking`
 ADD PRIMARY KEY (`id_stacking`), ADD KEY `id_alatberat` (`id_alatberat`), ADD KEY `id_client` (`id_client`), ADD KEY `id_client_2` (`id_client`);

--
-- Indexes for table `stokbarang`
--
ALTER TABLE `stokbarang`
 ADD PRIMARY KEY (`kode_brg`);

--
-- Indexes for table `tarif_shorebase`
--
ALTER TABLE `tarif_shorebase`
 ADD PRIMARY KEY (`id_tarif`), ADD KEY `id_jenis` (`id_jenis`);

--
-- Indexes for table `timeline_cargo`
--
ALTER TABLE `timeline_cargo`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timeline_joborder`
--
ALTER TABLE `timeline_joborder`
 ADD PRIMARY KEY (`id_timeline`);

--
-- Indexes for table `timeline_jobordertruck`
--
ALTER TABLE `timeline_jobordertruck`
 ADD PRIMARY KEY (`id_timeline`), ADD KEY `id_jobordertruck` (`id_jobordertruck`), ADD KEY `id_jobordertruck_2` (`id_jobordertruck`), ADD KEY `id_jobordertruck_3` (`id_jobordertruck`);

--
-- Indexes for table `timeline_moving`
--
ALTER TABLE `timeline_moving`
 ADD PRIMARY KEY (`id_timeline`), ADD KEY `id_moving` (`id_moving`);

--
-- Indexes for table `timeline_stacking`
--
ALTER TABLE `timeline_stacking`
 ADD PRIMARY KEY (`id_timeline`), ADD KEY `id_stacking` (`id_stacking`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actual_jobordertruck`
--
ALTER TABLE `actual_jobordertruck`
MODIFY `id_at` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `actual_moving`
--
ALTER TABLE `actual_moving`
MODIFY `id_as` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `actual_stacking`
--
ALTER TABLE `actual_stacking`
MODIFY `id_as` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `actual_stevedoring`
--
ALTER TABLE `actual_stevedoring`
MODIFY `id_as` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=681;
--
-- AUTO_INCREMENT for table `alat_berat`
--
ALTER TABLE `alat_berat`
MODIFY `id_alatberat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `bkk`
--
ALTER TABLE `bkk`
MODIFY `id_bkk` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
MODIFY `id_client` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `detail_jobordertruck`
--
ALTER TABLE `detail_jobordertruck`
MODIFY `id_djotruck` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `detail_moving`
--
ALTER TABLE `detail_moving`
MODIFY `id_cargo` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `detail_stacking`
--
ALTER TABLE `detail_stacking`
MODIFY `id_cargo` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `doc_lo`
--
ALTER TABLE `doc_lo`
MODIFY `idDocLo` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
MODIFY `id_invoice` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jenis_barang`
--
ALTER TABLE `jenis_barang`
MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT for table `jenis_kegiatan`
--
ALTER TABLE `jenis_kegiatan`
MODIFY `id_jenis` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `log_system`
--
ALTER TABLE `log_system`
MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `permintaan`
--
ALTER TABLE `permintaan`
MODIFY `id_permintaan` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
MODIFY `id_satuan` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `sementara`
--
ALTER TABLE `sementara`
MODIFY `id_sementara` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tarif_shorebase`
--
ALTER TABLE `tarif_shorebase`
MODIFY `id_tarif` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `timeline_cargo`
--
ALTER TABLE `timeline_cargo`
MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `timeline_joborder`
--
ALTER TABLE `timeline_joborder`
MODIFY `id_timeline` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `timeline_jobordertruck`
--
ALTER TABLE `timeline_jobordertruck`
MODIFY `id_timeline` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `timeline_moving`
--
ALTER TABLE `timeline_moving`
MODIFY `id_timeline` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `timeline_stacking`
--
ALTER TABLE `timeline_stacking`
MODIFY `id_timeline` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `actual_jobordertruck`
--
ALTER TABLE `actual_jobordertruck`
ADD CONSTRAINT `actual_jobordertruck_ibfk_1` FOREIGN KEY (`id_djotruck`) REFERENCES `detail_jobordertruck` (`id_djotruck`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `actual_jobordertruck_ibfk_2` FOREIGN KEY (`id_jobordertruck`) REFERENCES `job_ordertruck` (`id_jobordertruck`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `actual_moving`
--
ALTER TABLE `actual_moving`
ADD CONSTRAINT `actual_moving_ibfk_1` FOREIGN KEY (`id_cargo`) REFERENCES `detail_moving` (`id_cargo`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `actual_moving_ibfk_2` FOREIGN KEY (`id_moving`) REFERENCES `moving` (`id_moving`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `actual_stacking`
--
ALTER TABLE `actual_stacking`
ADD CONSTRAINT `actual_stacking_ibfk_1` FOREIGN KEY (`id_cargo`) REFERENCES `detail_stacking` (`id_cargo`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `actual_stacking_ibfk_2` FOREIGN KEY (`id_stacking`) REFERENCES `stacking` (`id_stacking`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_jobordertruck`
--
ALTER TABLE `detail_jobordertruck`
ADD CONSTRAINT `detail_jobordertruck_ibfk_1` FOREIGN KEY (`id_jobordertruck`) REFERENCES `job_ordertruck` (`id_jobordertruck`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_moving`
--
ALTER TABLE `detail_moving`
ADD CONSTRAINT `detail_moving_ibfk_1` FOREIGN KEY (`id_moving`) REFERENCES `moving` (`id_moving`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_stacking`
--
ALTER TABLE `detail_stacking`
ADD CONSTRAINT `detail_stacking_ibfk_1` FOREIGN KEY (`id_stacking`) REFERENCES `stacking` (`id_stacking`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job_order`
--
ALTER TABLE `job_order`
ADD CONSTRAINT `job_order_ibfk_1` FOREIGN KEY (`id_jenis`) REFERENCES `jenis_kegiatan` (`id_jenis`) ON DELETE NO ACTION ON UPDATE CASCADE,
ADD CONSTRAINT `job_order_ibfk_2` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `job_ordertruck`
--
ALTER TABLE `job_ordertruck`
ADD CONSTRAINT `job_ordertruck_ibfk_1` FOREIGN KEY (`id_alatberat`) REFERENCES `alat_berat` (`id_alatberat`) ON UPDATE CASCADE,
ADD CONSTRAINT `job_ordertruck_ibfk_2` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`) ON UPDATE CASCADE;

--
-- Constraints for table `moving`
--
ALTER TABLE `moving`
ADD CONSTRAINT `moving_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`) ON UPDATE CASCADE;

--
-- Constraints for table `stacking`
--
ALTER TABLE `stacking`
ADD CONSTRAINT `stacking_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`) ON UPDATE CASCADE,
ADD CONSTRAINT `stacking_ibfk_2` FOREIGN KEY (`id_alatberat`) REFERENCES `alat_berat` (`id_alatberat`) ON UPDATE CASCADE;

--
-- Constraints for table `timeline_jobordertruck`
--
ALTER TABLE `timeline_jobordertruck`
ADD CONSTRAINT `timeline_jobordertruck_ibfk_1` FOREIGN KEY (`id_jobordertruck`) REFERENCES `job_ordertruck` (`id_jobordertruck`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `timeline_moving`
--
ALTER TABLE `timeline_moving`
ADD CONSTRAINT `timeline_moving_ibfk_1` FOREIGN KEY (`id_moving`) REFERENCES `moving` (`id_moving`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `timeline_stacking`
--
ALTER TABLE `timeline_stacking`
ADD CONSTRAINT `timeline_stacking_ibfk_1` FOREIGN KEY (`id_stacking`) REFERENCES `stacking` (`id_stacking`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
