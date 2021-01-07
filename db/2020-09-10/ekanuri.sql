-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 11, 2020 at 03:50 
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ekanuri-srv`
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;

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
(30, '2020-07-27 12:47:32', 'Loading Medco', 10, 'JT00001', 'PT.ABC', 'Chemical', 'OFFLOADING', 'Production', '0002', '1.20', '1.20', '1.20', '3.45', '2.80', '3.45', 2, 'Pallet', 'To Jetty', 1),
(31, '2020-08-05 11:17:23', 'Offloading Truck', 13, 'JT00005', 'Segara Permai', 'Liferaft', 'OFFLOADING', '', '001', '1.20', '1.20', '1.00', '1.44', '0.30', '1.44', 1, 'Palet', 'To Jetty', 1),
(32, '2020-08-05 11:17:23', 'Offloading Truck', 13, 'JT00005', 'Segara Permai', 'Liferaft', 'OFFLOADING', '', '001', '1.20', '1.20', '1.00', '1.44', '0.30', '1.44', 1, 'Palet', 'To Jetty', 1),
(33, '2020-08-05 11:17:47', 'Offloading Truck', 13, 'JT00005', 'Segara Permai', 'Liferaft', 'OFFLOADING', '', '001', '1.20', '1.20', '1.00', '1.44', '0.30', '1.44', 1, 'Palet', 'To Jetty', 1),
(34, '2020-08-05 11:17:52', 'Offloading Truck', 13, 'JT00005', 'Segara Permai', 'Liferaft', 'OFFLOADING', '', '001', '1.20', '1.20', '1.00', '1.44', '0.30', '1.44', 1, 'Palet', 'To Jetty', 1),
(35, '2020-08-05 11:17:58', 'Offloading Truck', 13, 'JT00005', 'Segara Permai', 'Liferaft', 'OFFLOADING', '', '001', '1.20', '1.20', '1.00', '1.44', '0.30', '1.44', 1, 'Palet', 'To Jetty', 1),
(36, '2020-08-05 13:56:29', 'Offloading truck', 14, 'JT00006', 'Pt elnusa petrofin', 'Meditran oil', 'OFFLOADING', 'Production', '4400002054', '1.00', '1.00', '1.00', '5.00', '20.00', '20.00', 5, 'Pallet', 'To Warehouse', 1),
(37, '2020-08-07 13:20:37', 'Offloading truck', 15, 'JT00007', 'Pt sulindo jaya abadi', 'Sparepart', 'OFFLOADING', 'Production', '12506/01/00010', '0.00', '0.00', '0.00', '0.00', '0.61', '0.61', 1, 'Wooden box', 'To Warehouse', 1),
(38, '2020-08-07 13:20:55', 'Offloading truck', 15, 'JT00007', 'Pt sulindo jaya abadi', 'Sparepart', 'OFFLOADING', 'Production', '12506/01/00010', '0.00', '0.00', '0.00', '0.00', '0.61', '0.61', 1, 'Wooden box', 'To Warehouse', 1),
(39, '2020-08-07 13:21:20', 'Offloading truck', 15, 'JT00007', 'Pt sulindo jaya abadi', 'Sparepart', 'OFFLOADING', 'Production', '12506/01/00010', '0.00', '0.00', '0.00', '0.00', '0.61', '0.61', 1, 'Wooden box', 'To Warehouse', 1),
(40, '2020-08-07 13:21:27', 'Offloading truck', 15, 'JT00007', 'Pt sulindo jaya abadi', 'Sparepart', 'OFFLOADING', 'Production', '12506/01/00010', '0.00', '0.00', '0.00', '0.00', '0.61', '0.61', 1, 'Wooden box', 'To Warehouse', 1),
(41, '2020-08-07 13:21:40', 'Offloading truck', 15, 'JT00007', 'Pt sulindo jaya abadi', 'Sparepart', 'OFFLOADING', 'Production', '12506/01/00010', '0.00', '0.00', '0.00', '0.00', '0.61', '0.61', 1, 'Wooden box', 'To Warehouse', 1),
(42, '2020-08-07 15:21:27', 'Offloading truck', 16, 'JT00008', 'PT Shentek Teknika Indonesia', 'Plate mild steel', 'OFFLOADING', 'Production', '12490/01/00010', '2.00', '1.00', '0.00', '0.00', '2.10', '2.10', 3, 'Losse', 'To Warehouse', 1),
(43, '2020-08-07 15:21:41', 'Offloading truck', 16, 'JT00008', 'PT Shentek Teknika Indonesia', 'Plate mild steel', 'OFFLOADING', 'Production', '12490/01/00010', '2.00', '1.00', '0.00', '0.00', '2.10', '2.10', 3, 'Losse', 'To Jetty', 1),
(44, '2020-08-07 15:23:36', 'Offloading truck', 16, 'JT00008', 'PT Shentek Teknika Indonesia', 'Plate mild steel', 'OFFLOADING', 'Production', '12490/01/00010', '2.00', '1.00', '0.00', '0.00', '2.80', '2.80', 4, 'Losse', 'To Warehouse', 1),
(45, '2020-08-07 17:49:15', 'Offloading truck', 17, 'JT00009', 'PT Shentek Teknika Indonesia', 'Beam steel', 'OFFLOADING', 'Production', '12490/01/00010', '12.00', '0.00', '0.00', '0.00', '2.00', '2.00', 4, 'Losse', 'To Yard', 1),
(46, '2020-08-07 17:50:42', 'Offloading truck', 17, 'JT00009', 'PT Shentek Teknika Indonesia', 'Beam steel', 'OFFLOADING', 'Production', '12490/01/00010', '12.00', '0.00', '0.00', '0.00', '2.00', '2.00', 4, 'Losse', 'To Yard', 1),
(47, '2020-08-10 10:15:57', 'Offloading Truck Premier Oil', 19, 'JT00011', 'Gearindo', 'W/Box', 'OFFLOADING', 'Production', '002', '0.62', '0.62', '0.83', '0.64', '0.40', '0.64', 2, 'W/Box', 'To Jetty', 1),
(48, '2020-08-13 10:11:30', 'Offloading Premier', 11, 'JT00004', 'PT.ABC', 'Chemical Drum', 'OFFLOADING', 'Production', '0001', '1.20', '1.20', '1.20', '10.37', '7.80', '10.37', 6, 'Pallet', 'To Jetty', 1),
(49, '2020-08-13 10:11:49', 'Offloading Premier', 12, 'JT00004', 'PT.ABC', 'Chemical Drum', 'OFFLOADING', 'Production', '0001', '1.20', '1.20', '1.20', '10.37', '7.80', '10.37', 6, 'Pallet', 'To Jetty', 1),
(50, '2020-08-13 10:14:38', 'Off loading truck premier oil', 25, 'JT00014', 'PT.Mesitech', 'Compressor', 'OFFLOADING', 'Production', '008', '2.57', '1.80', '1.83', '42.33', '8.50', '42.33', 5, 'Unit', 'To Jetty', 1),
(51, '2020-08-13 10:23:18', 'Off loading truck premier oil', 24, 'JT00013', 'PT.Mesitrch', 'Welding machine', 'OFFLOADING', '', '007', '2.00', '1.20', '1.80', '21.60', '6.50', '21.60', 5, 'Unit', 'To Jetty', 1),
(52, '2020-08-13 10:25:33', 'Off loading truck premier oil', 24, 'JT00013', 'PT.Mesitrch', 'Welding machine', 'OFFLOADING', '', '007', '2.00', '1.20', '1.80', '21.60', '6.50', '21.60', 5, 'Unit', 'To Jetty', 1),
(53, '2020-08-13 14:25:51', 'Off loading truck premier oil', 20, 'JT00012', 'PT.Pusuma', 'Pallet flang', 'OFFLOADING', 'Production', '003', '0.20', '0.15', '0.10', '0.00', '0.35', '0.35', 1, 'Pallet', 'To Jetty', 1),
(54, '2020-08-13 14:26:14', 'Off loading truck premier oil', 20, 'JT00012', 'PT.Pusuma', 'Pallet flang', 'OFFLOADING', 'Production', '003', '0.20', '0.15', '0.10', '0.01', '0.35', '0.35', 1, 'Pallet', 'To Jetty', 1),
(55, '2020-08-13 14:26:27', 'Off loading truck premier oil', 20, 'JT00012', 'PT.Pusuma', 'Pallet flang', 'OFFLOADING', 'Production', '003', '0.20', '0.15', '0.10', '0.01', '0.35', '0.35', 1, 'Pallet', 'To Jetty', 1),
(56, '2020-08-14 09:56:59', 'Offloading truck', 26, 'JT00016', 'PT Ekajaya', 'Demulsifier', 'OFFLOADING', 'Production', '12531/01/00010', '1.00', '1.00', '1.00', '1.00', '0.80', '1.00', 1, 'Pallet', 'To Yard', 1),
(57, '2020-08-14 09:57:49', 'Offloading truck', 26, 'JT00016', 'PT Ekajaya', 'Demulsifier', 'OFFLOADING', 'Production', '12531/01/00010', '1.00', '1.00', '1.00', '1.00', '0.80', '1.00', 1, 'Pallet', 'To Yard', 1),
(58, '2020-08-14 09:58:27', 'Offloading truck', 26, 'JT00016', 'PT Ekajaya', 'Demulsifier', 'OFFLOADING', 'Production', '12531/01/00010', '1.00', '1.00', '1.00', '1.00', '0.80', '1.00', 1, 'Pallet', 'To Yard', 1),
(59, '2020-08-14 09:59:20', 'Offloading truck', 26, 'JT00016', 'PT Ekajaya', 'Demulsifier', 'OFFLOADING', 'Production', '12531/01/00010', '1.00', '1.00', '1.00', '1.00', '0.80', '1.00', 1, 'Pallet', 'To Yard', 1),
(60, '2020-08-14 10:00:01', 'Offloading truck', 26, 'JT00016', 'PT Ekajaya', 'Demulsifier', 'OFFLOADING', 'Production', '12531/01/00010', '1.00', '1.00', '1.00', '1.00', '0.80', '1.00', 1, 'Pallet', 'To Yard', 1),
(61, '2020-08-14 10:01:24', 'Offloading truck', 26, 'JT00016', 'PT Ekajaya', 'Demulsifier', 'OFFLOADING', 'Production', '12531/01/00010', '1.00', '1.00', '1.00', '1.00', '0.80', '1.00', 1, 'Pallet', 'To Yard', 1),
(62, '2020-08-14 10:01:43', 'Offloading truck', 26, 'JT00016', 'PT Ekajaya', 'Demulsifier', 'OFFLOADING', 'Production', '12531/01/00010', '1.00', '1.00', '1.00', '1.00', '0.80', '1.00', 1, 'Pallet', 'To Yard', 1),
(63, '2020-08-14 11:31:14', 'Offloading truck', 27, 'JT00017', 'PT Stainless steel primavalve', 'Gate valve', 'OFFLOADING', 'Production', 'CO-20-05-0048', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', 1, 'Wooden box', 'To Warehouse', 1),
(64, '2020-08-14 14:15:57', 'Offloading truck', 28, 'JT00018', 'PT Ardico pratama energi', 'H2S Scavenger', 'OFFLOADING', 'Production', '12495/01/00010', '1.00', '1.00', '1.00', '1.00', '0.80', '1.00', 1, 'Pallet', 'To Warehouse', 1),
(65, '2020-08-14 14:17:19', 'Offloading truck', 28, 'JT00018', 'PT Ardico pratama energi', 'H2S Scavenger', 'OFFLOADING', 'Production', '12495/01/00010', '1.00', '1.00', '1.00', '1.00', '0.80', '1.00', 1, 'Pallet', 'To Warehouse', 1),
(66, '2020-08-14 14:18:42', 'Offloading truck', 28, 'JT00018', 'PT Ardico pratama energi', 'H2S Scavenger', 'OFFLOADING', 'Production', '12495/01/00010', '1.00', '1.00', '1.00', '1.00', '0.80', '1.00', 1, 'Pallet', 'To Warehouse', 1),
(67, '2020-08-14 14:19:50', 'Offloading truck', 28, 'JT00018', 'PT Ardico pratama energi', 'H2S Scavenger', 'OFFLOADING', 'Production', '12495/01/00010', '1.00', '1.00', '1.00', '1.00', '0.80', '1.00', 1, 'Pallet', 'To Warehouse', 1),
(68, '2020-08-14 14:20:16', 'Offloading truck', 28, 'JT00018', 'PT Ardico pratama energi', 'H2S Scavenger', 'OFFLOADING', 'Production', '12495/01/00010', '1.00', '1.00', '1.00', '1.00', '0.80', '1.00', 1, 'Pallet', 'To Warehouse', 1),
(69, '2020-08-14 14:20:31', 'Offloading truck', 28, 'JT00018', 'PT Ardico pratama energi', 'H2S Scavenger', 'OFFLOADING', 'Production', '12495/01/00010', '1.00', '1.00', '1.00', '1.00', '0.80', '1.00', 1, 'Pallet', 'To Warehouse', 1),
(70, '2020-08-14 14:20:49', 'Offloading truck', 28, 'JT00018', 'PT Ardico pratama energi', 'H2S Scavenger', 'OFFLOADING', 'Production', '12495/01/00010', '1.00', '1.00', '1.00', '1.00', '0.80', '1.00', 1, 'Pallet', 'To Warehouse', 1),
(71, '2020-08-18 13:41:00', 'Loading truck', 32, 'JT00019', 'PT Shaftindo energi ', 'Empty oxygen bottle', 'LOADING', 'Production', '4500004603', '1.00', '0.00', '2.00', '0.00', '0.80', '0.80', 1, 'Rack', 'From Warehouse', 1),
(72, '2020-08-18 13:48:30', 'Loading truck', 29, 'JT00019', 'PT Shaftindo energi ', 'Spool', 'LOADING', 'Production', '4500004603', '4.00', '2.00', '0.00', '0.00', '1.20', '1.20', 1, 'Pallet', 'From Warehouse', 1),
(73, '2020-08-18 13:52:27', 'Loading truck', 30, 'JT00019', 'PT Shaftindo energi ', 'Flange', 'OFFLOADING', 'Production', '4500004603', '0.00', '0.00', '0.00', '0.00', '0.33', '0.33', 1, 'Wooden box', 'To Warehouse', 1),
(74, '2020-08-18 13:52:33', 'Loading truck', 31, 'JT00019', 'PT Shaftindo energi ', 'Ball valve', 'OFFLOADING', 'Production', '4500004603', '0.00', '0.00', '0.00', '0.00', '0.30', '0.30', 1, 'Wooden box', 'To Jetty', 1),
(75, '2020-08-18 16:04:40', 'Offloading truck', 33, 'JT00020', 'PT Ida era baru', 'Sparepart', 'OFFLOADING', 'Production', '12464', '0.00', '0.00', '0.00', '0.00', '0.10', '0.10', 1, 'Wooden box', 'To Warehouse', 1),
(76, '2020-08-18 16:04:57', 'Offloading truck', 33, 'JT00020', 'PT Ida era baru', 'Sparepart', 'OFFLOADING', 'Production', '12464', '0.00', '0.00', '0.00', '0.00', '0.10', '0.10', 1, 'Wooden box', 'To Warehouse', 1),
(77, '2020-08-18 16:06:14', 'Offloading truck', 33, 'JT00020', 'PT Ida era baru', 'Sparepart', 'OFFLOADING', 'Production', '12464', '0.00', '0.00', '0.00', '0.00', '0.10', '0.10', 1, 'Wooden box', 'To Warehouse', 1),
(78, '2020-08-18 16:07:05', 'Offloading truck', 33, 'JT00020', 'PT Ida era baru', 'Sparepart', 'OFFLOADING', 'Production', '12464', '0.00', '0.00', '0.00', '0.00', '0.10', '0.10', 1, 'Wooden box', 'To Warehouse', 1),
(79, '2020-08-18 16:07:28', 'Offloading truck', 33, 'JT00020', 'PT Ida era baru', 'Sparepart', 'OFFLOADING', 'Production', '12464', '0.00', '0.00', '0.00', '0.00', '0.11', '0.11', 1, 'Wooden box', 'To Warehouse', 1),
(80, '2020-08-18 16:07:39', 'Offloading truck', 33, 'JT00020', 'PT Ida era baru', 'Sparepart', 'OFFLOADING', 'Production', '12464', '0.00', '0.00', '0.00', '0.00', '0.11', '0.11', 1, 'Wooden box', 'To Warehouse', 1),
(81, '2020-08-19 15:13:51', 'Offloading truck', 34, 'JT00021', 'PT Benvors sarana utama', 'Wellhead penetrator ', 'OFFLOADING', 'Production', '3000005', '1.00', '1.00', '0.00', '0.00', '1.30', '1.30', 2, 'Wooden box', 'To Warehouse', 1),
(82, '2020-08-19 15:15:12', 'Offloading truck', 34, 'JT00021', 'PT Benvors sarana utama', 'Wellhead penetrator ', 'OFFLOADING', 'Production', '3000005', '1.00', '1.00', '0.00', '0.00', '0.65', '0.65', 1, 'Wooden box', 'To Warehouse', 1),
(83, '2020-08-19 15:17:32', 'Offloading truck', 34, 'JT00021', 'PT Benvors sarana utama', 'Wellhead penetrator ', 'OFFLOADING', 'Production', '3000005', '1.00', '1.00', '0.00', '0.00', '1.30', '1.30', 2, 'Wooden box', 'To Warehouse', 1),
(84, '2020-08-20 13:56:55', 'Offloading truck', 35, 'JT00022', 'PT Sucofindo', 'Kompresor', 'OFFLOADING', 'Production', '420000266', '3.00', '2.00', '2.00', '12.00', '0.60', '12.00', 1, 'Unit', 'To Warehouse', 1),
(85, '2020-08-28 10:30:03', 'Offloading Premier', 36, 'JT00015', 'a', 'a', 'OFFLOADING', 'a', 'a', '2.00', '1.00', '1.00', '2.00', '3.00', '3.00', 1, 'Pallet', 'To Jetty', 1),
(86, '2020-09-04 14:18:44', 'Offloading', 37, 'JT00023', 'Champions', 'IBC Tank', 'OFFLOADING', 'Production', '1500033333', '0.35', '0.35', '2.00', '0.24', '2.00', '2.00', 1, 'Unit', 'To Jetty', 1),
(87, '2020-09-04 14:57:11', 'Loading Chemical drum PPLI', 38, 'JT00024', 'PPLI', 'Chemical Drum', 'LOADING', 'Drilling', '002', '1.22', '1.22', '1.00', '1.49', '0.80', '1.49', 1, 'pallet', 'From Jetty', 1),
(88, '2020-09-04 14:57:56', 'Loading Chemical drum PPLI', 38, 'JT00024', 'PPLI', 'Chemical Drum', 'LOADING', 'Drilling', '002', '1.22', '1.22', '1.00', '1.49', '0.80', '1.49', 1, 'pallet', 'From Jetty', 1),
(89, '2020-09-04 15:03:04', 'Loading Chemical drum PPLI', 38, 'JT00024', 'PPLI', 'Chemical Drum', 'LOADING', 'Drilling', '002', '1.22', '1.22', '1.00', '1.49', '0.80', '1.49', 1, 'pallet', 'From Jetty', 1),
(90, '2020-09-04 15:03:13', 'Loading Chemical drum PPLI', 38, 'JT00024', 'PPLI', 'Chemical Drum', 'LOADING', 'Drilling', '002', '1.22', '1.22', '1.00', '1.49', '0.80', '1.49', 1, 'pallet', 'From Jetty', 1),
(91, '2020-09-04 15:06:25', 'Offloading Premier', 36, 'JT00015', 'a', 'a', 'OFFLOADING', 'a', 'a', '2.00', '1.00', '1.00', '8.00', '12.00', '12.00', 4, 'Pallet', 'To Jetty', 1),
(92, '2020-09-04 15:07:03', 'Off loading truck premier oil', 21, 'JT00012', 'PT Pusuma', 'Pallet Flang', 'OFFLOADING', 'Production', '004', '0.15', '0.12', '0.06', '0.00', '0.40', '0.40', 2, 'Pallet', 'To Jetty', 1),
(93, '2020-09-04 15:07:08', 'Off loading ttuck premier oil', 22, 'JT00012', 'PT. Eskimo', 'Wodden box', 'OFFLOADING', 'Production', '005', '1.00', '0.50', '0.50', '0.25', '0.85', '0.85', 1, 'Boks', 'To Jetty', 1),
(94, '2020-09-04 15:07:20', 'Off loading truck premier oil', 23, 'JT00012', 'PT.Wira trans', 'Wodden box', 'OFFLOADING', 'Production', '006', '1.00', '1.00', '0.50', '0.50', '0.09', '0.50', 1, 'Boks', 'To Jetty', 1),
(95, '2020-09-04 15:07:44', 'Off loading truck', 18, 'JT00010', 'PT Gearindo', 'Wodden box', 'OFFLOADING', 'Production', '0001', '0.00', '0.00', '0.00', '0.00', '0.40', '0.40', 2, '', 'To Jetty', 1),
(96, '2020-09-08 10:55:12', 'Offloading truck', 41, 'JT00025', 'Pt elnusa petrofin', 'Meditran oil', 'OFFLOADING', 'Production', '4400002059', '1.17', '1.17', '1.10', '1.51', '0.80', '1.51', 1, 'Pallet', 'To Warehouse', 1),
(97, '2020-09-08 11:08:44', 'Offloading truck', 41, 'JT00025', 'Pt elnusa petrofin', 'Meditran oil', 'OFFLOADING', 'Production', '4400002059', '1.17', '1.17', '1.10', '1.51', '0.80', '1.51', 1, 'Pallet', 'To Warehouse', 1),
(98, '2020-09-08 11:08:44', 'Offloading truck', 41, 'JT00025', 'Pt elnusa petrofin', 'Meditran oil', 'OFFLOADING', 'Production', '4400002059', '1.17', '1.17', '1.10', '1.51', '0.80', '1.51', 1, 'Pallet', 'To Warehouse', 1),
(99, '2020-09-08 11:09:11', 'Offloading truck', 41, 'JT00025', 'Pt elnusa petrofin', 'Meditran oil', 'OFFLOADING', 'Production', '4400002059', '1.17', '1.17', '1.10', '1.51', '0.80', '1.51', 1, 'Pallet', 'To Warehouse', 1),
(100, '2020-09-08 11:09:56', 'Offloading truck', 41, 'JT00025', 'Pt elnusa petrofin', 'Meditran oil', 'OFFLOADING', 'Production', '4400002059', '1.17', '1.17', '1.10', '1.51', '0.80', '1.51', 1, 'Pallet', 'To Warehouse', 1),
(101, '2020-09-08 11:10:45', 'Offloading truck', 41, 'JT00025', 'Pt elnusa petrofin', 'Meditran oil', 'OFFLOADING', 'Production', '4400002059', '1.17', '1.17', '1.10', '1.51', '0.80', '1.51', 1, 'Pallet', 'To Warehouse', 1),
(102, '2020-09-08 11:13:50', 'Offloading truck', 41, 'JT00025', 'Pt elnusa petrofin', 'Meditran oil', 'OFFLOADING', 'Production', '4400002059', '1.17', '1.17', '1.10', '1.51', '0.80', '1.51', 1, 'Pallet', 'To Warehouse', 1),
(103, '2020-09-08 11:14:19', 'Offloading truck', 41, 'JT00025', 'Pt elnusa petrofin', 'Meditran oil', 'OFFLOADING', 'Production', '4400002059', '1.17', '1.17', '1.10', '1.51', '0.80', '1.51', 1, 'Pallet', 'To Warehouse', 1),
(104, '2020-09-08 11:14:39', 'Offloading truck', 41, 'JT00025', 'Pt elnusa petrofin', 'Meditran oil', 'OFFLOADING', 'Production', '4400002059', '1.17', '1.17', '1.10', '1.51', '0.80', '1.51', 1, 'Pallet', 'To Warehouse', 1),
(105, '2020-09-08 11:14:46', 'Offloading truck', 41, 'JT00025', 'Pt elnusa petrofin', 'Meditran oil', 'OFFLOADING', 'Production', '4400002059', '1.17', '1.17', '1.10', '1.51', '0.80', '1.51', 1, 'Pallet', 'To Jetty', 1),
(106, '2020-09-09 13:05:26', 'Offloading truck', 45, 'JT00027', 'PT Anugerah inti mulia ', 'Ethylene glycol', 'OFFLOADING', 'Production', '4400002060', '1.17', '1.17', '1.10', '1.51', '0.90', '1.51', 1, 'Pallet', 'To Warehouse', 1),
(107, '2020-09-09 13:06:34', 'Offloading truck', 45, 'JT00027', 'PT Anugerah inti mulia ', 'Ethylene glycol', 'OFFLOADING', 'Production', '4400002060', '1.17', '1.17', '1.10', '1.51', '0.90', '1.51', 1, 'Pallet', 'To Warehouse', 1),
(108, '2020-09-09 13:08:57', 'Offloading truck', 45, 'JT00027', 'PT Anugerah inti mulia ', 'Ethylene glycol', 'OFFLOADING', 'Production', '4400002060', '1.17', '1.17', '1.10', '1.51', '0.90', '1.51', 1, 'Pallet', 'To Warehouse', 1),
(109, '2020-09-09 13:11:07', 'Offloading truck', 45, 'JT00027', 'PT Anugerah inti mulia ', 'Ethylene glycol', 'OFFLOADING', 'Production', '4400002060', '1.17', '1.17', '1.10', '1.51', '0.90', '1.51', 1, 'Pallet', 'To Warehouse', 1),
(110, '2020-09-09 13:12:43', 'Offloading truck', 45, 'JT00027', 'PT Anugerah inti mulia ', 'Ethylene glycol', 'OFFLOADING', 'Production', '4400002060', '1.17', '1.17', '1.10', '1.51', '0.90', '1.51', 1, 'Pallet', 'To Warehouse', 1),
(111, '2020-09-10 13:05:50', 'Offloading truck', 46, 'JT00028', 'PT Petrolio Travolta', 'Toluene', 'OFFLOADING', 'Production', '4300007998', '1.17', '1.17', '1.10', '1.51', '0.80', '1.51', 1, 'Pallet', 'To Warehouse', 1),
(112, '2020-09-10 13:14:43', 'Offloading truck', 46, 'JT00028', 'PT Petrolio Travolta', 'Toluene', 'OFFLOADING', 'Production', '4300007998', '1.17', '1.17', '1.10', '1.51', '0.80', '1.51', 1, 'Pallet', 'To Warehouse', 1),
(113, '2020-09-10 13:15:05', 'Offloading truck', 46, 'JT00028', 'PT Petrolio Travolta', 'Toluene', 'OFFLOADING', 'Production', '4300007998', '1.17', '1.17', '1.10', '1.51', '0.80', '1.51', 1, 'Pallet', 'To Warehouse', 1),
(114, '2020-09-10 14:06:15', 'Offloading truck', 47, 'JT00028', 'PT Shaftindo energi ', 'Cradle gas bottle', 'OFFLOADING', 'Production', 'Si 191 ctr 121', '1.18', '0.82', '2.01', '1.94', '0.30', '1.94', 1, 'Rack', 'To Warehouse', 1),
(115, '2020-09-10 14:09:36', 'Offloading truck', 49, 'JT00028', 'PT Shaftindo energi ', 'Cradle gas bottle', 'OFFLOADING', 'Production', 'Si 191 ctr 121', '1.13', '0.82', '2.01', '1.86', '0.70', '1.86', 1, 'Rack', 'To Warehouse', 1),
(116, '2020-09-10 14:11:11', 'Offloading truck', 48, 'JT00028', 'PT Shaftindo energi ', 'Cradle gas bottle', 'OFFLOADING', 'Production', 'Si 191 ctr 121', '0.63', '0.63', '1.91', '0.76', '0.37', '0.76', 1, 'Rack', 'To Warehouse', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actual_moving`
--

INSERT INTO `actual_moving` (`id_as`, `time_as`, `deskripsi_cargo_as`, `id_cargo`, `id_moving`, `nm_company_as`, `nm_barang_as`, `nm_kegiatan_as`, `production_as`, `no_po_as`, `p_cargo_as`, `l_cargo_as`, `t_cargo_as`, `volume_cargo_as`, `ton_cargo_as`, `revton_cargo_as`, `qty_cargo_as`, `satuan_cargo_as`, `keterangan_as`, `lokasi_awal`, `lokasi_akhir`, `status_cargo_as`) VALUES
(12, '2020-07-29 16:57:13', 'Internal Moving PHE', 5, 'TR00001', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.30', '1.73', 1, 'Unit', NULL, 'Yard', 'Warehouse 1', 1),
(13, '2020-07-29 16:57:47', 'Internal Moving PHE', 5, 'TR00001', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.30', '1.73', 1, 'Unit', NULL, 'Yard', 'Warehouse 1', 1),
(14, '2020-07-29 16:57:53', 'Internal Moving PHE', 5, 'TR00001', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.30', '1.73', 1, 'Unit', NULL, 'Yard', 'Warehouse 2', 1),
(15, '2020-07-29 16:58:01', 'Internal Moving PHE', 5, 'TR00001', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '5.18', '3.90', '5.18', 3, 'Unit', NULL, 'Yard', 'Warehouse 2', 1),
(16, '2020-09-04 15:09:31', 'Internal Moving Star Energy', 6, 'TR00002', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '10.37', '7.80', '10.37', 6, 'Pallet', NULL, 'yard', 'warehouse', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

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
(12, '2020-07-29 16:53:41', 'Stacking Star Energy', 4, 'ST00002', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.50', '1.73', 1, 'Unit', NULL, 'Yard', 'Warehouse 1', 1),
(13, '2020-08-06 10:26:24', 'Stacking material', 5, 'ST00003', 'Pt elnusa petrofin', 'Meditran oil', NULL, 'Production', '4400002054', '1.00', '1.00', '1.00', '1.00', '0.80', '1.00', 1, 'Pallet', NULL, 'Yard ', 'Gudang', 1),
(14, '2020-08-06 10:27:35', 'Stacking material', 5, 'ST00003', 'Pt elnusa petrofin', 'Meditran oil', NULL, 'Production', '4400002054', '1.00', '1.00', '1.00', '1.00', '0.80', '1.00', 1, 'Pallet', NULL, 'Yard ', 'Gudang', 1),
(15, '2020-08-06 10:27:35', 'Stacking material', 5, 'ST00003', 'Pt elnusa petrofin', 'Meditran oil', NULL, 'Production', '4400002054', '1.00', '1.00', '1.00', '1.00', '0.80', '1.00', 1, 'Pallet', NULL, 'Yard ', 'Gudang', 1),
(16, '2020-08-06 10:27:56', 'Stacking material', 5, 'ST00003', 'Pt elnusa petrofin', 'Meditran oil', NULL, 'Production', '4400002054', '1.00', '1.00', '1.00', '1.00', '0.80', '1.00', 1, 'Pallet', NULL, 'Yard ', 'Gudang', 1),
(17, '2020-08-06 10:28:23', 'Stacking material', 5, 'ST00003', 'Pt elnusa petrofin', 'Meditran oil', NULL, 'Production', '4400002054', '1.00', '1.00', '1.00', '1.00', '0.80', '1.00', 1, 'Pallet', NULL, 'Yard ', 'Gudang', 1),
(18, '2020-09-04 15:08:50', 'Stacking Star Energy', 4, 'ST00002', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.50', '1.73', 1, 'Unit', NULL, 'yard', 'warehouse', 1);

-- --------------------------------------------------------

--
-- Table structure for table `actual_stevedoring`
--

CREATE TABLE IF NOT EXISTS `actual_stevedoring` (
`id_as` bigint(20) NOT NULL,
  `id_joborder` varchar(15) NOT NULL,
  `id_cargo` varchar(15) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=1181 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `actual_stevedoring`
--

INSERT INTO `actual_stevedoring` (`id_as`, `id_joborder`, `id_cargo`, `id_jenis`, `time_as`, `doc_no_as`, `qty_as`, `rincian_cargo`, `m3_as`, `ton_as`, `revton_as`, `remarks_as`, `row_version`, `keterangan`) VALUES
(5, 'JV00001', NULL, '6', '2020-01-17 17:59:52', '123', 2, 'Food Stuff', '85.76', '16.00', '85.76', 'Indocaten', '1', ''),
(6, 'JV00001', NULL, '6', '2020-01-17 18:01:11', '123', 1, 'Food Stuff', '42.88', '8.00', '42.88', 'Indocaten', '1', 'To Jetty'),
(7, 'JV00001', NULL, '7', '2020-01-17 18:01:53', '15999', 5, 'Food STUFF  PT.INDOCATEN', '194.29', '40.00', '194.29', 'Indocaten', '1', 'To Jetty'),
(8, 'JV00001', NULL, '7', '2020-01-17 18:02:10', '15999', 3, 'Food STUFF  PT.INDOCATEN', '116.57', '24.00', '116.57', 'Indocaten', '1', 'To Yard'),
(9, 'JV00001', NULL, '7', '2020-01-20 11:53:10', '15998', 1, 'Food STUFF  PT.STM', '38.86', '8.00', '38.86', 'Inco', '1', 'To Jetty'),
(10, 'JV00001', NULL, '7', '2020-01-20 11:53:13', '15999', 2, 'Food STUFF  PT.INDOCATEN', '77.72', '16.00', '77.72', 'Indocaten', '1', 'To Jetty'),
(11, 'JV00001', NULL, '8', '2020-01-20 11:53:17', '321', 5, 'TOTE TANK MEDCO', '11.95', '2.35', '11.95', 'Medco', '1', 'To Jetty'),
(12, 'JV00001', NULL, '8', '2020-01-20 16:08:37', '543', 2, 'TOTE TANK PREMIER OIL', '4.78', '6.34', '6.34', 'Premier Oil', '1', 'Not Available'),
(13, 'JV00001', NULL, '8', '2020-01-20 16:08:50', '543', 3, 'TOTE TANK PREMIER OIL', '7.17', '9.51', '9.51', 'Premier Oil', '1', 'To Jetty'),
(14, 'JV00002', NULL, '7', '2020-02-06 14:08:26', '1500002', 1, 'DNV Container 10 FT', '18.90', '3.00', '18.90', 'Medco Energi', '1', 'To Jetty'),
(15, 'JV00003', NULL, '24', '2020-02-12 14:46:18', '170001', 6, 'Empty Dry Container 20FT', '112.92', '24.00', '112.92', 'GDSK', '1', 'To Trucking'),
(16, 'JV00003', NULL, '25', '2020-02-12 14:46:43', '170004', 3, 'Chiller Container 20FT', '56.46', '12.00', '56.46', 'GDSK', '1', 'To Trucking'),
(17, 'JV00003', NULL, '15', '2020-02-12 14:47:03', '170002', 1, 'Offshore Basket C/w Sling', '2.25', '7.00', '7.00', 'CSOL', '1', 'To Trucking'),
(18, 'JV00003', NULL, '25', '2020-02-12 14:47:22', '170004', 2, 'Chiller Container 20FT', '37.64', '8.00', '37.64', 'GDSK', '1', 'To Trucking'),
(19, 'JV00003', NULL, '11', '2020-02-12 14:47:42', '170005', 4, 'Container Waste PPLi', '150.00', '60.00', '150.00', 'PPLi', '1', 'To Jetty'),
(20, 'JV00003', NULL, '6', '2020-02-12 14:47:55', '170003', 3, 'Container Waste Organik ', '128.64', '12.00', '128.64', 'Medco Energi', '1', 'To Jetty'),
(21, 'JV00003', NULL, '14', '2020-02-12 14:48:11', '170010', 6, 'Empty T/Tank', '24.30', '18.00', '24.30', 'Champion', '1', 'To Jetty'),
(22, 'JV00003', NULL, '28', '2020-02-12 14:48:33', '170008', 7, 'Cylinder Rack Nitrogen', '18.76', '10.50', '18.76', 'Sarku', '1', 'To Jetty'),
(23, 'JV00003', NULL, '14', '2020-02-12 14:48:44', '170010', 4, 'Empty T/Tank', '16.20', '12.00', '16.20', 'Champion', '1', 'To Jetty'),
(24, 'JV00004', NULL, '6', '2020-05-28 14:05:50', '1500001', 6, 'Empty Food Container 20FT ', '257.28', '18.00', '257.28', 'GDSK', '1', 'To Jetty'),
(25, 'JV00004', NULL, '6', '2020-05-28 14:07:07', '1500001', 4, 'Empty Food Container 20FT ', '171.52', '12.00', '171.52', 'GDSK', '1', 'To Jetty'),
(26, 'JV00004', NULL, '6', '2020-05-28 14:07:29', '15002130', 4, 'Waske Organic Container', '171.52', '32.00', '171.52', 'Medco Energi', '1', 'To Jetty'),
(27, 'JV00004', NULL, '11', '2020-05-28 14:08:00', '1500011', 2, 'Container Limbah B3', '75.00', '16.00', '75.00', 'PPLi', '1', 'To Trucking'),
(28, 'JV00004', NULL, '7', '2020-05-28 14:08:25', '15002126', 5, 'Container PO', '94.50', '12.50', '94.50', 'Medco Energi', '1', 'To Jetty'),
(29, 'JV00004', NULL, '30', '2020-05-28 14:20:26', '15002121', 20, 'Oli Drum Pertamina', '33.20', '1.70', '33.20', 'Segara Permai', '1', 'To Jetty'),
(30, 'JV00004', NULL, '31', '2020-05-28 14:21:02', '1500211', 100, 'Paletan Chemical', '158.00', '100.00', '158.00', 'Baker Huges', '1', 'To Jetty'),
(31, 'JV00004', NULL, '31', '2020-05-28 14:22:56', '1500211', 100, 'Paletan Chemical', '158.00', '100.00', '158.00', 'Baker Huges', '1', 'To Jetty'),
(32, 'JV00006', NULL, '10', '2020-07-03 13:46:04', '220002', 3, 'testing', '12.15', '30.00', '30.00', 'test', '1', 'From Trucking'),
(33, 'JV00007', NULL, '24', '2020-07-06 08:31:01', '180001', 5, 'Empty Dry Food Container', '94.10', '20.00', '94.10', 'GDSK', '1', 'To Trucking'),
(34, 'JV00007', NULL, '11', '2020-07-06 08:31:38', '180002', 2, 'Container Limbah', '75.00', '30.00', '75.00', 'PPLi', '1', 'To Trucking'),
(35, 'JV00007', NULL, '7', '2020-07-06 08:32:04', '180005', 6, 'Chiller Food Container', '113.40', '30.00', '113.40', 'GDSK', '1', 'To Jetty'),
(36, 'JV00007', NULL, '34', '2020-07-06 08:32:29', '180004', 4, 'Offshore Basket', '74.88', '48.00', '74.88', 'Baker Huges', '1', 'To Jetty'),
(37, 'JV00007', NULL, '29', '2020-07-06 08:33:22', '180003', 40, 'Palet Chemical', '57.60', '40.00', '57.60', 'Baker Huges', '1', 'To Jetty'),
(38, 'JV00007', NULL, '29', '2020-07-06 08:34:51', '180003', 60, 'Palet Chemical', '86.40', '60.00', '86.40', 'Baker Huges', '1', 'To Jetty'),
(39, 'JV00008', NULL, '29', '2020-07-06 13:48:53', '180003', 50, 'Chemical Barite', '72.00', '50.00', '72.00', 'Baker', '1', 'To Jetty'),
(40, 'JV00008', NULL, '29', '2020-07-06 13:50:06', '180003', 50, 'Chemical Barite', '72.00', '50.00', '72.00', 'Baker', '1', 'To Jetty'),
(41, 'JV00008', NULL, '24', '2020-07-06 14:08:46', '180001', 6, 'Dry Food Container 20 FT', '112.92', '24.00', '112.92', 'Indocaten', '1', 'To Jetty'),
(42, 'JV00008', NULL, '15', '2020-07-06 14:19:38', '180002', 2, 'Offshore Basket', '4.50', '20.00', '20.00', 'Baker', '1', 'To Jetty'),
(43, 'JV00008', NULL, '37', '2020-07-06 14:19:51', '180004', 1, 'Life Raft', '1.35', '0.30', '1.35', 'Champion', '1', 'To Warehouse'),
(44, 'JV00008', NULL, '10', '2020-07-06 14:20:03', '180005', 2, 'IBC TANK EMPTY', '8.10', '2.00', '8.10', 'Champion', '2', 'To Trucking'),
(45, 'JV00005', NULL, '6', '2020-07-09 16:00:04', '1500031660', 3, 'Opentop Container PPLi', '128.64', '49.20', '128.64', 'PPLi', '1', 'To Trucking'),
(46, 'JV00005', NULL, '6', '2020-07-09 16:00:38', '1500029081', 6, 'Empty Food Stuff', '257.28', '21.00', '257.28', 'GDSK', '1', 'To Jetty'),
(47, 'JV00005', NULL, '6', '2020-07-09 16:01:00', '1500031902', 1, 'Sarku Equipment', '42.88', '5.00', '42.88', 'Sarku', '1', 'To Trucking'),
(48, 'JV00005', NULL, '6', '2020-07-09 16:01:13', '1500029082', 3, 'Empty Food Stuff', '128.64', '8.50', '128.64', 'Indoship', '1', 'To Jetty'),
(49, 'JV00005', NULL, '7', '2020-07-09 16:01:32', '1500029083', 1, 'Offshore Container', '18.90', '4.00', '18.90', 'OSCT', '1', 'To Trucking'),
(50, 'JV00005', NULL, '6', '2020-07-09 16:01:48', '1500031660', 2, 'Opentop Container PPLi', '85.76', '32.80', '85.76', 'PPLi', '1', 'To Trucking'),
(51, 'JV00005', NULL, '32', '2020-07-09 16:02:00', '150004', 50, 'Chemical MI Swaco', '86.50', '50.00', '86.50', 'MI Swaco', '1', 'To Jetty'),
(52, 'JV00005', NULL, '32', '2020-07-09 16:02:30', '150004', 103, 'Chemical MI Swaco', '178.19', '103.00', '178.19', 'MI Swaco', '1', 'To Jetty'),
(53, 'JV00002', NULL, '6', '2020-07-09 16:20:59', '1500001', 2, 'Empty Dry Container 20 FT', '85.76', '6.00', '85.76', 'GDSK', '1', 'To Jetty'),
(54, 'JV00009', NULL, '45', '2020-07-10 09:32:47', '0039', 1, 'ToteTank OFH-1280', '5.05', '1.40', '5.05', 'Champion', '1', 'To Trucking'),
(55, 'JV00009', NULL, '38', '2020-07-10 09:33:12', '0003', 1, 'Waste Skip FEL-279', '4.88', '1.04', '4.88', 'Wastec', '1', 'To Trucking'),
(56, 'JV00009', NULL, '38', '2020-07-10 09:33:39', '0002', 1, 'Waste Skip FEL-278', '4.88', '1.60', '4.88', 'Wastec', '3', 'To Trucking'),
(57, 'JV00009', NULL, '38', '2020-07-10 09:34:07', '0009', 1, 'Waste Skip FEL-296', '4.88', '2.00', '4.88', 'Wastec', '1', 'To Yard'),
(58, 'JV00009', NULL, '44', '2020-07-10 09:34:43', '0034', 1, '20FT Half Opentop Container OEGU 2442286', '19.11', '3.50', '19.11', 'PMB', '1', 'To Jetty'),
(59, 'JV00009', NULL, '47', '2020-07-10 09:36:02', '0041', 1, 'Cylinder Rack R-POI', '2.79', '0.50', '2.79', 'Arkadia', '1', 'To Yard'),
(60, 'JV00009', NULL, '38', '2020-07-10 09:36:58', '0005', 1, 'Waste Skip FEL-285', '4.88', '1.22', '4.88', 'Wastec', '1', 'To Yard'),
(61, 'JV00009', NULL, '38', '2020-07-10 09:37:24', '0004', 1, 'Waste Skip FEL-280', '4.88', '1.22', '4.88', 'Wastec', '1', 'To Yard'),
(62, 'JV00009', NULL, '38', '2020-07-10 09:37:42', '0006', 1, 'Waste Skip FEL-289', '4.88', '2.00', '4.88', 'Wastec', '1', 'To Yard'),
(63, 'JV00009', NULL, '38', '2020-07-10 09:38:00', '0007', 1, 'Waste Skip FEL-290', '4.88', '3.83', '4.88', 'Wastec', '1', 'To Yard'),
(64, 'JV00009', NULL, '38', '2020-07-10 09:38:01', '0007', 1, 'Waste Skip FEL-290', '0.00', '0.00', '0.00', 'Wastec', '1', 'To Yard'),
(65, 'JV00009', NULL, '38', '2020-07-10 09:38:13', '0008', 1, 'Waste Skip FEL-291', '4.88', '1.55', '4.88', 'Wastec', '1', 'To Yard'),
(66, 'JV00009', NULL, '38', '2020-07-10 09:38:24', '0010', 1, 'Waste Skip FEL-300', '4.88', '1.65', '4.88', 'Wastec', '1', 'To Yard'),
(67, 'JV00009', NULL, '43', '2020-07-10 09:40:00', '0027', 1, '10FT Half Open Top Container OEGU 1441897', '9.38', '2.00', '9.38', 'PMB', '1', 'To Jetty'),
(68, 'JV00009', NULL, '43', '2020-07-10 09:41:07', '0029', 1, '10FT Open Top Container OEGU 1442126', '9.38', '2.10', '9.38', 'PMB', '1', 'To Jetty'),
(69, 'JV00009', NULL, '43', '2020-07-10 09:41:57', '0031', 1, '10FT Half Opentop Container OEGU 1442445', '9.38', '2.00', '9.38', 'PMB', '1', 'To Yard'),
(70, 'JV00009', NULL, '43', '2020-07-10 09:44:32', '0026', 1, '10FT Half Open Top Container OEGU 1436648', '9.38', '3.00', '9.38', 'PMB', '1', 'To Jetty'),
(71, 'JV00009', NULL, '45', '2020-07-10 09:49:51', '0037', 1, 'ToteTank OFH-1212', '5.05', '1.50', '5.05', 'Champion', '1', 'To Yard'),
(72, 'JV00009', NULL, '45', '2020-07-10 09:50:20', '0038', 1, 'ToteTank OFH-1213', '5.05', '1.00', '5.05', 'Champion', '1', 'To Yard'),
(73, 'JV00009', NULL, '58', '2020-07-10 09:51:08', '0001', 1, 'Crude Oil Sample Ex MT Nectar', '0.04', '0.01', '0.04', 'Premier Oil', '1', 'To Warehouse'),
(74, 'JV00009', NULL, '43', '2020-07-10 09:52:06', '0028', 1, '10FT Open Top Container OEGU 1442110', '9.38', '3.20', '9.38', 'PMB', '1', 'To Jetty'),
(75, 'JV00009', NULL, '43', '2020-07-10 09:54:27', '0030', 1, '10FT Half Opentop Container OEGU 1442131', '9.38', '2.00', '9.38', 'PMB', '1', 'To Jetty'),
(76, 'JV00009', NULL, '7', '2020-07-10 09:59:19', '0011', 1, '10FT LLE Container', '18.90', '6.00', '18.90', 'Premier Oil', '1', 'To Yard'),
(77, 'JV00009', NULL, '40', '2020-07-10 10:06:44', '0024', 1, '10FT Dry Food Container No.OEGU 1200544', '18.01', '2.17', '18.01', 'BBS', '1', 'To Trucking'),
(78, 'JV00009', NULL, '40', '2020-07-10 10:10:02', '0025', 1, '10FT Dry Food Container No.OEGU 1201366', '18.01', '2.50', '18.01', 'BBS', '1', 'To Trucking'),
(79, 'JV00009', NULL, '44', '2020-07-10 10:14:33', '0033', 1, '20FT Opentop Container OEGU 2437633', '19.11', '4.00', '19.11', 'PMB', '1', 'To Jetty'),
(80, 'JV00009', NULL, '44', '2020-07-10 10:19:43', '0032', 1, '20FT Opentop Container OEGU 2437593', '19.11', '4.00', '19.11', 'PMB', '1', 'To Jetty'),
(81, 'JV00009', NULL, '44', '2020-07-10 10:22:04', '0035', 1, '20FT Half Opentop Container OEGU 2445710', '19.11', '3.20', '19.11', 'PMB', '1', 'To Jetty'),
(82, 'JV00009', NULL, '44', '2020-07-10 10:25:30', '0036', 1, '20FT Half Opentop Container OEGU 2445768', '19.11', '5.67', '19.11', 'PMB', '1', 'To Jetty'),
(83, 'JV00009', NULL, '41', '2020-07-10 10:30:45', '0021', 1, '10FT Food Container No.OEGU 1009348', '19.04', '2.50', '19.04', 'BBS', '1', 'To Trucking'),
(84, 'JV00009', NULL, '40', '2020-07-10 10:33:27', '0020', 1, '10FT Food Container No.OEG 1009097', '18.01', '3.00', '18.01', 'BBS', '1', 'To Trucking'),
(85, 'JV00009', NULL, '41', '2020-07-10 10:36:01', '0022', 1, '10FT Food Container No.OEGU 1009498', '19.04', '2.50', '19.04', 'BBS', '1', 'To Trucking'),
(86, 'JV00009', NULL, '40', '2020-07-10 10:36:22', '0023', 1, '10FT Chiller Food Container OEGU 1009498', '18.01', '2.50', '18.01', 'BBS', '1', 'To Trucking'),
(87, 'JV00009', NULL, '46', '2020-07-10 10:45:55', '0040', 1, 'Empty Nitrogen Rack', '1.75', '0.90', '1.75', 'Premier Oil', '1', 'To Trucking'),
(88, 'JV00009', NULL, '39', '2020-07-10 10:53:10', '0013', 1, 'Mini Container OEG-690567', '8.75', '1.85', '8.75', 'PMB', '1', 'To Yard'),
(89, 'JV00009', NULL, '39', '2020-07-10 10:56:01', '0019', 1, 'Mini Container OEG-697627', '8.75', '1.76', '8.75', 'PMB', '1', 'To Yard'),
(90, 'JV00009', NULL, '39', '2020-07-10 10:57:57', '0014', 1, 'Mini Container OEG-690574', '8.75', '1.85', '8.75', 'PMB', '1', 'To Yard'),
(91, 'JV00009', NULL, '39', '2020-07-10 11:00:17', '0012', 1, 'Mini Container OEG-690218', '8.75', '2.00', '8.75', 'PMB', '1', 'To Yard'),
(92, 'JV00009', NULL, '39', '2020-07-10 11:03:50', '0018', 1, 'Mini Container OEG-697625', '8.75', '1.65', '8.75', 'PMB', '1', 'To Yard'),
(93, 'JV00009', NULL, '38', '2020-07-10 11:05:58', '0016', 1, 'Mini Container OEG-696643', '4.88', '1.67', '4.88', 'PMB', '1', 'To Yard'),
(94, 'JV00009', NULL, '38', '2020-07-10 11:06:15', '0017', 1, 'Mini Container OEG-696997', '4.88', '1.85', '4.88', 'PMB', '1', 'To Yard'),
(95, 'JV00009', NULL, '39', '2020-07-10 11:08:13', '0015', 1, 'Mini Container OEG-690605', '8.75', '1.50', '8.75', 'PMB', '1', 'To Yard'),
(96, 'JV00011', NULL, '66', '2020-07-11 01:48:52', '1500033252', 1, 'Domestic Waste', '1.44', '0.23', '1.44', 'Medco Energi', '1', 'To Jetty'),
(97, 'JV00011', NULL, '66', '2020-07-11 01:49:48', '1500033252', 1, 'Domestic Waste', '1.44', '0.23', '1.44', 'Medco Energi', '1', 'To Jetty'),
(98, 'JV00011', NULL, '66', '2020-07-11 01:50:09', '1500033252', 8, 'Domestic Waste', '11.52', '1.83', '11.52', 'Medco Energi', '1', 'To Jetty'),
(99, 'JV00011', NULL, '66', '2020-07-11 01:51:20', '1500033252', 6, 'Domestic Waste', '8.64', '1.38', '8.64', 'Medco Energi', '1', 'To Jetty'),
(100, 'JV00011', NULL, '66', '2020-07-11 01:52:04', '1500033252', 1, 'Domestic Waste', '1.44', '0.23', '1.44', 'Medco Energi', '1', 'To Jetty'),
(101, 'JV00011', NULL, '66', '2020-07-11 01:54:10', '1500033252', 6, 'Domestic Waste', '8.64', '1.38', '8.64', 'Medco Energi', '1', 'To Jetty'),
(102, 'JV00011', NULL, '66', '2020-07-11 01:57:18', '1500033252', 5, 'Domestic Waste', '7.20', '1.15', '7.20', 'Medco Energi', '1', 'To Jetty'),
(103, 'JV00011', NULL, '66', '2020-07-11 02:00:03', '1500033252', 5, 'Domestic Waste', '7.20', '1.15', '7.20', 'Medco Energi', '1', 'To Jetty'),
(104, 'JV00011', NULL, '66', '2020-07-11 02:01:01', '1500033252', 1, 'Domestic Waste', '1.44', '0.23', '1.44', 'Medco Energi', '1', 'To Jetty'),
(105, 'JV00011', NULL, '66', '2020-07-11 02:02:05', '1500033252', 6, 'Domestic Waste', '8.64', '1.37', '8.64', 'Medco Energi', '1', 'To Jetty'),
(106, 'JV00011', NULL, '66', '2020-07-11 02:05:11', '1500033252', 6, 'Domestic Waste', '8.64', '1.38', '8.64', 'Medco Energi', '1', 'To Jetty'),
(107, 'JV00011', NULL, '66', '2020-07-11 02:07:38', '1500033252', 6, 'Domestic Waste', '8.64', '1.37', '8.64', 'Medco Energi', '1', 'To Jetty'),
(108, 'JV00011', NULL, '66', '2020-07-11 02:10:31', '1500033252', 6, 'Domestic Waste', '8.64', '1.38', '8.64', 'Medco Energi', '1', 'To Jetty'),
(109, 'JV00011', NULL, '66', '2020-07-11 02:13:44', '1500033252', 6, 'Domestic Waste', '8.64', '1.37', '8.64', 'Medco Energi', '1', 'To Jetty'),
(110, 'JV00011', NULL, '66', '2020-07-11 02:16:25', '1500033252', 6, 'Domestic Waste', '8.64', '1.38', '8.64', 'Medco Energi', '1', 'To Jetty'),
(111, 'JV00011', NULL, '66', '2020-07-11 02:19:28', '1500033252', 6, 'Domestic Waste', '8.64', '1.37', '8.64', 'Medco Energi', '1', 'To Jetty'),
(112, 'JV00011', NULL, '66', '2020-07-11 02:22:31', '1500033252', 6, 'Domestic Waste', '8.64', '1.38', '8.64', 'Medco Energi', '1', 'To Jetty'),
(113, 'JV00011', NULL, '66', '2020-07-11 02:24:40', '1500033252', 6, 'Domestic Waste', '8.64', '1.37', '8.64', 'Medco Energi', '1', 'To Jetty'),
(114, 'JV00011', NULL, '66', '2020-07-11 02:26:43', '1500033252', 6, 'Domestic Waste', '8.64', '1.38', '8.64', 'Medco Energi', '1', 'To Jetty'),
(115, 'JV00011', NULL, '66', '2020-07-11 02:29:00', '1500033252', 3, 'Domestic Waste', '4.32', '0.69', '4.32', 'Medco Energi', '1', 'To Jetty'),
(116, 'JV00011', NULL, '96', '2020-07-11 02:34:06', '1500033296', 1, 'Clamp ', '0.18', '0.10', '0.18', 'Sarku', '1', 'To Jetty'),
(117, 'JV00011', NULL, '42', '2020-07-11 02:36:17', '1500033266', 1, '10Ft Dry Container FSDG 3168', '20.06', '4.00', '20.06', 'Vantage Drilling', '1', 'To Jetty'),
(118, 'JV00011', NULL, '73', '2020-07-11 02:39:41', '00000', 1, 'Rental Blue Rack Acetylene GBR-58', '2.46', '1.00', '2.46', 'Indoship Marina', '1', 'To Jetty'),
(119, 'JV00011', NULL, '72', '2020-07-11 02:41:42', '00000', 1, 'Rental Blue Rack Oxygen GBR-56', '2.52', '1.00', '2.52', 'Indoship Marina', '1', 'To Jetty'),
(120, 'JV00011', NULL, '79', '2020-07-11 02:43:27', '00000', 1, 'Centrifuge DE-1000 11569514', '8.35', '4.00', '8.35', 'Baroid', '1', 'To Jetty'),
(121, 'JV00011', NULL, '87', '2020-07-11 02:46:26', '00000', 1, 'Slurry Skid 11235098', '6.34', '1.00', '6.34', 'Baroid', '1', 'To Jetty'),
(122, 'JV00011', NULL, '95', '2020-07-11 08:35:57', '1500033270', 1, 'Offshore Basket SN.CPS-XJK-TBAS-035', '49.53', '8.00', '49.53', 'Halliburton', '1', 'To Jetty'),
(123, 'JV00011', NULL, '92', '2020-07-11 08:41:49', '1500033006', 1, 'Offshore Basket SN.TD-CB-14-006', '24.02', '8.00', '24.02', 'Baker Huges', '1', 'To Jetty'),
(124, 'JV00011', NULL, '92', '2020-07-11 08:48:54', '1500033008', 1, 'Offshore Basket SN.WI 05695602', '24.02', '8.00', '24.02', 'Weatherford', '1', 'To Jetty'),
(125, 'JV00011', NULL, '93', '2020-07-11 08:58:13', '1500033006', 1, 'Offshore Basket SN.Auro 133017', '22.34', '9.00', '22.34', 'Baker Huges', '1', 'To Jetty'),
(126, 'JV00011', NULL, '94', '2020-07-11 09:04:59', '1500033298', 1, 'Cargo Basket CBZ 528', '17.71', '8.00', '17.71', 'Sarku', '1', 'To Jetty'),
(127, 'JV00011', NULL, '76', '2020-07-11 09:11:40', '1500033266', 1, '3M Half Height Basket Containing Rig Supplies', '8.16', '3.00', '8.16', 'Vantage Drilling', '1', 'To Jetty'),
(128, 'JV00011', NULL, '74', '2020-07-11 09:16:37', '1500033266', 1, '4.5M Half Height Basket Containing Rig Supplies', '13.60', '3.00', '13.60', 'Vantage Drilling', '1', 'To Jetty'),
(129, 'JV00011', NULL, '99', '2020-07-11 09:23:30', '1500033026', 1, '30FT Basket Aoru 4900176', '30.91', '15.00', '30.91', 'Edgina', '1', 'To Jetty'),
(130, 'JV00011', NULL, '91', '2020-07-11 09:31:55', '00000', 1, 'Hose Basket 11829699', '10.49', '3.00', '10.49', 'Baroid', '1', 'To Jetty'),
(131, 'JV00011', NULL, '65', '2020-07-11 09:50:11', '1500032891', 1, '20FT Dry Container OEGU 7020533', '38.30', '3.50', '38.30', 'GDSK', '1', 'To Jetty'),
(132, 'JV00011', NULL, '65', '2020-07-11 09:54:36', '1500032891', 1, '20FT Dry Container OEGU 7020699', '38.30', '4.00', '38.30', 'GDSK', '1', 'To Jetty'),
(133, 'JV00011', NULL, '6', '2020-07-11 10:00:35', '00000', 1, '20FT Container Auro 2601860 ', '42.88', '9.50', '42.88', 'MI  ', '1', 'To Jetty'),
(134, 'JV00011', NULL, '81', '2020-07-11 10:07:55', '00000', 1, 'De Press 10592470', '36.35', '12.00', '36.35', 'Baroid', '1', 'To Jetty'),
(135, 'JV00011', NULL, '65', '2020-07-11 10:17:30', '00000', 1, '20FT Portable Living Bed Room', '38.30', '5.00', '38.30', 'Indoship Marina', '1', 'To Jetty'),
(136, 'JV00011', NULL, '27', '2020-07-11 11:03:51', '1500033215', 1, '20FT Opentop Container BSLU 9203905', '38.44', '10.00', '38.44', 'PPLi', '1', 'To Trucking'),
(137, 'JV00011', NULL, '27', '2020-07-11 11:09:14', '1500033268', 1, '20FT Opentop Container BSLU 9203119', '38.44', '15.00', '38.44', 'PPLi', '1', 'To Trucking'),
(138, 'JV00011', NULL, '27', '2020-07-11 11:14:12', '1500033215', 1, '20FT Opentop Container BSLU 9204331', '38.44', '12.00', '38.44', 'PPLi', '1', 'To Trucking'),
(139, 'JV00011', NULL, '27', '2020-07-11 11:19:54', '1500033215', 1, '20FT Opentop Container BSLU 9204162', '38.44', '10.00', '38.44', 'PPLi', '1', 'To Trucking'),
(140, 'JV00011', NULL, '27', '2020-07-11 11:24:55', '1500033268', 1, '20FT Opentop Container BSLU 9721', '38.44', '15.00', '38.44', 'PPLi', '1', 'To Trucking'),
(141, 'JV00011', NULL, '27', '2020-07-11 11:31:25', '1500033215', 1, '20FT Opentop Container BSLU 9204326', '38.44', '11.00', '38.44', 'PPLi', '1', 'To Jetty'),
(142, 'JV00011', NULL, '27', '2020-07-11 11:39:35', '1500033215', 1, '20FT Opentop COntainer BSLU 9203741', '38.44', '10.00', '38.44', 'PPLi', '1', 'To Jetty'),
(143, 'JV00011', NULL, '80', '2020-07-11 13:50:17', '00000', 1, 'Stand Centrfuge 13441833', '5.21', '2.00', '5.21', 'Baroid', '1', 'To Yard'),
(144, 'JV00011', NULL, '80', '2020-07-11 14:00:16', '00000', 1, 'Stand Centrifuge 13441832', '5.21', '2.00', '5.21', 'Baroid', '1', 'To Yard'),
(145, 'JV00011', NULL, '73', '2020-07-11 14:13:02', '00000', 1, 'Rental Blue Rack Nitrogen GBR-51', '2.46', '1.00', '2.46', 'Indoship Marina', '1', 'To Yard'),
(146, 'JV00011', NULL, '63', '2020-07-11 14:14:52', '1500032731', 1, 'IBC Staraid S-9433 ', '2.39', '0.30', '2.39', 'Luas Birus Utama', '1', 'To Yard'),
(147, 'JV00011', NULL, '60', '2020-07-11 14:16:31', '1500032727', 1, 'Liferaft Viking', '0.72', '0.25', '0.72', 'Segara Permai', '1', 'To Yard'),
(148, 'JV00011', NULL, '59', '2020-07-11 14:16:57', '1500032889', 1, 'Firex Dry Powder for Hydrotest', '0.21', '0.15', '0.21', 'Segara Permai', '1', 'To Yard'),
(149, 'JV00011', NULL, '60', '2020-07-11 14:18:39', '1500032729', 1, 'Liferaft Zodiac', '0.72', '0.25', '0.72', 'Segara Permai', '1', 'To Yard'),
(150, 'JV00011', NULL, '68', '2020-07-11 14:19:20', '1500033272', 1, 'Webing bekas', '1.44', '0.10', '1.44', 'CKB', '1', 'To Yard'),
(151, 'JV00011', NULL, '98', '2020-07-11 14:20:51', '1500033024', 1, 'TAS', '0.04', '0.10', '0.10', 'Schlumberger', '1', 'To Yard'),
(152, 'JV00011', NULL, '97', '2020-07-11 14:24:41', '1500033024', 1, 'Clamp For As', '0.29', '0.10', '0.29', 'Schlumberger', '1', 'To Yard'),
(153, 'JV00011', NULL, '70', '2020-07-11 14:25:05', '1500033272', 1, 'Ban Bekas', '1.00', '0.07', '1.00', 'CKB', '1', 'To Yard'),
(154, 'JV00011', NULL, '85', '2020-07-11 14:27:18', '00000', 1, 'Feed Pump PSI Max 2000', '1.30', '1.00', '1.30', 'Baroid', '1', 'To Yard'),
(155, 'JV00011', NULL, '71', '2020-07-11 14:30:49', '1500033272', 1, 'Tower Lamp', '1.50', '0.25', '1.50', 'CKB', '1', 'To Yard'),
(156, 'JV00011', NULL, '69', '2020-07-11 14:31:06', '1500033272', 1, 'Sling Bekas', '0.72', '0.17', '0.72', 'CKB', '1', 'To Yard'),
(157, 'JV00011', NULL, '69', '2020-07-11 14:33:42', '1500033272', 2, 'Sling Bekas', '1.44', '0.33', '1.44', 'CKB', '1', 'To Yard'),
(158, 'JV00011', NULL, '84', '2020-07-11 14:35:41', '00000', 1, 'Pipe Casing 10"x 2.5M , 4 Joint', '1.42', '1.50', '1.50', 'Baroid', '1', 'To Yard'),
(159, 'JV00011', NULL, '83', '2020-07-11 14:37:27', '00000', 1, 'Housing Auger , Greeting 3 Ea', '1.57', '1.00', '1.57', 'Baroid', '1', 'To Yard'),
(160, 'JV00011', NULL, '89', '2020-07-11 14:39:20', '00000', 1, 'Feed Pump , Red Colour 13426444', '1.30', '1.00', '1.30', 'Baroid', '1', 'To Yard'),
(161, 'JV00011', NULL, '70', '2020-07-11 14:42:13', '1500033272', 1, 'Ban Bekas', '1.00', '0.07', '1.00', 'CKB', '1', 'To Yard'),
(162, 'JV00011', NULL, '70', '2020-07-11 14:44:15', '1500033272', 1, 'Ban Bekas', '1.00', '0.07', '1.00', 'CKB', '1', 'To Yard'),
(163, 'JV00011', NULL, '61', '2020-07-11 14:47:14', '1500032731', 1, 'Empty ToteTank Starpol S-9284', '2.39', '0.30', '2.39', 'Luas Birus Utama', '1', 'To Yard'),
(164, 'JV00011', NULL, '64', '2020-07-11 14:47:30', '1500032731', 1, 'Empty ToteTank Starbreak S-9524', '3.26', '0.20', '3.26', 'Luas Birus Utama', '1', 'To Yard'),
(165, 'JV00011', NULL, '90', '2020-07-11 14:48:50', '00000', 1, 'Effluent Tank 12 BBL', '2.16', '1.50', '2.16', 'Baroid', '1', 'To Yard'),
(166, 'JV00011', NULL, '85', '2020-07-11 14:49:07', '00000', 1, 'Feed Pump PSI Max  2000', '1.30', '1.00', '1.30', 'Baroid', '1', 'To Yard'),
(167, 'JV00011', NULL, '86', '2020-07-11 14:51:57', '00000', 1, 'Twin Pod 11566506', '5.94', '1.50', '5.94', 'Baroid', '1', 'To Yard'),
(168, 'JV00011', NULL, '72', '2020-07-11 14:55:03', '00000', 1, 'Rental Blue Rack Nitrogen GBR-43', '2.52', '1.00', '2.52', 'Indoship Marina', '1', 'To Yard'),
(169, 'JV00011', NULL, '78', '2020-07-11 14:55:25', '1500033266', 1, 'Gas Bottle Rack BSL 16622', '3.33', '0.70', '3.33', 'Vantage Drilling', '1', 'To Yard'),
(170, 'JV00011', NULL, '78', '2020-07-11 14:56:41', '1500033266', 1, 'Gas Bottle Rack BSL 16694', '3.33', '0.70', '3.33', 'Vantage Drilling', '1', 'To Yard'),
(171, 'JV00011', NULL, '77', '2020-07-11 14:57:11', '1500033266', 1, 'Gas Bottle Rack TD-GB-16-030', '4.05', '0.82', '4.05', 'Vantage Drilling', '1', 'To Yard'),
(172, 'JV00011', NULL, '77', '2020-07-11 14:57:36', '1500033266', 1, 'Gas Bottle Rack TD-GB-16-017', '4.05', '0.82', '4.05', 'Vantage Drilling', '1', 'To Yard'),
(173, 'JV00011', NULL, '72', '2020-07-11 14:58:54', '00000', 1, 'Full NItrogen Cylinder GBR-49', '2.52', '1.00', '2.52', 'Indoship Marina', '1', 'To Yard'),
(174, 'JV00011', NULL, '61', '2020-07-11 14:59:39', '1500032731', 1, 'Empty ToteTank Starpol S-9284', '2.39', '0.30', '2.39', 'Luas Birus Utama', '1', 'To Yard'),
(175, 'JV00011', NULL, '85', '2020-07-11 15:00:02', '00000', 1, 'Feed Pump , Red Colour 13426445', '1.20', '1.00', '1.20', 'Baroid', '1', 'To Yard'),
(176, 'JV00011', NULL, '88', '2020-07-11 15:01:04', '00000', 1, 'Filtration Tool Box ', '1.32', '1.00', '1.32', 'Baroid', '1', 'To Yard'),
(177, 'JV00011', NULL, '79', '2020-07-11 15:01:32', '00000', 1, 'Centrifuge DE-1000 11506576', '8.35', '4.00', '8.35', 'Baroid', '1', 'To Yard'),
(178, 'JV00011', NULL, '82', '2020-07-11 15:04:52', '00000', 1, 'Screw Conveyor Motor Drive ', '0.88', '1.00', '1.00', 'Baroid', '1', 'To Yard'),
(179, 'JV00011', NULL, '69', '2020-07-11 15:08:44', '1500033272', 2, 'Sling Bekas', '1.44', '0.33', '1.44', 'CKB', '1', 'To Yard'),
(180, 'JV00011', NULL, '70', '2020-07-11 15:10:38', '1500033272', 2, 'Ban Bekas', '2.00', '0.13', '2.00', 'CKB', '1', 'To Yard'),
(181, 'JV00011', NULL, '69', '2020-07-11 15:11:03', '1500033272', 1, 'Sling Bekas', '0.72', '0.17', '0.72', 'CKB', '1', 'To Yard'),
(182, 'JV00011', NULL, '70', '2020-07-11 15:12:17', '1500033272', 1, 'Ban Bekas', '1.00', '0.07', '1.00', 'CKB', '1', 'To Yard'),
(183, 'JV00011', NULL, '9', '2020-07-11 15:14:34', '1300014990', 1, 'Chemical , Glycol', '2.39', '2.50', '2.50', 'Luas Birus Utama', '1', 'To Yard'),
(184, 'JV00011', NULL, '9', '2020-07-11 15:16:23', '1300014990', 1, 'Chemical Luas Birus 9441 (T/T Reject)', '2.39', '2.50', '2.50', 'Luas Birus Utama', '1', 'To Yard'),
(185, 'JV00011', NULL, '9', '2020-07-11 15:18:06', '1300014990', 1, 'Chemical ,Luas Birus  9442 (T/T Reject)', '2.39', '2.50', '2.50', 'Luas Birus Utama', '1', 'To Yard'),
(186, 'JV00011', NULL, '66', '2020-07-11 15:19:25', '1500033252', 4, 'Domestic Waste', '5.76', '0.91', '5.76', 'Medco Energi', '1', 'To Jetty'),
(187, 'JV00012', NULL, '100', '2020-07-15 19:50:00', '1034331', 1, '20FT Container CCLU 1034331', '37.50', '3.50', '37.50', 'Vantage Drilling', '1', 'To Jetty'),
(188, 'JV00012', NULL, '100', '2020-07-15 19:54:53', '1500033386', 1, 'Empty Opentop 20FT SN.OEGU 2501882', '37.50', '3.50', '37.50', 'Medco Energi', '1', 'To Jetty'),
(189, 'JV00012', NULL, '100', '2020-07-15 20:00:05', '1511593', 1, '20FT COntainer OEGU 1511593', '37.50', '4.00', '37.50', 'Vantage Drilling', '1', 'To Jetty'),
(190, 'JV00012', NULL, '100', '2020-07-15 20:03:18', '1500033386', 1, 'Empty Opentop Container 20FT SN.OEGU 2501861', '37.50', '3.50', '37.50', 'Medco Energi', '1', 'To Jetty'),
(191, 'JV00012', NULL, '109', '2020-07-15 20:10:54', '00000', 6, 'Waste Limbah Domestic', '6.00', '1.04', '6.00', 'Medco Energi', '1', 'To Jetty'),
(192, 'JV00012', NULL, '109', '2020-07-15 20:16:29', '00000', 8, 'Waste Limbah Domestic', '8.00', '1.38', '8.00', 'Medco Energi', '1', 'To Jetty'),
(193, 'JV00012', NULL, '109', '2020-07-15 20:21:15', '00000', 8, 'Waste Limbah Domestic', '8.00', '1.38', '8.00', 'Medco Energi', '1', 'To Jetty'),
(194, 'JV00012', NULL, '109', '2020-07-15 20:26:23', '00000', 7, 'Waste Limbah Domestic', '7.00', '1.21', '7.00', 'Medco Energi', '1', 'To Jetty'),
(195, 'JV00012', NULL, '109', '2020-07-15 20:26:53', '00000', 1, 'Waste Limbah Domestic', '1.00', '0.17', '1.00', 'Medco Energi', '1', 'To Jetty'),
(196, 'JV00012', NULL, '109', '2020-07-15 20:31:29', '00000', 8, 'Waste Limbah Domestic', '8.00', '1.38', '8.00', 'Medco Energi', '1', 'To Jetty'),
(197, 'JV00012', NULL, '109', '2020-07-15 20:37:41', '00000', 9, 'Waste Limbah Domestic', '9.00', '1.56', '9.00', 'Medco Energi', '1', 'To Jetty'),
(198, 'JV00012', NULL, '109', '2020-07-15 20:43:38', '00000', 8, 'Waste Limbah Domestic', '8.00', '1.38', '8.00', 'Medco Energi', '1', 'To Jetty'),
(199, 'JV00012', NULL, '109', '2020-07-15 20:50:43', '00000', 8, 'Waste Limbah Domestic', '8.00', '1.38', '8.00', 'Medco Energi', '1', 'To Jetty'),
(200, 'JV00012', NULL, '109', '2020-07-15 20:57:14', '00000', 8, 'Waste Limbah Domestic', '8.00', '1.39', '8.00', 'Medco Energi', '1', 'To Jetty'),
(201, 'JV00012', NULL, '109', '2020-07-15 21:02:13', '00000', 8, 'Waste Limbah Domestic', '8.00', '1.38', '8.00', 'Medco Energi', '1', 'To Jetty'),
(202, 'JV00012', NULL, '109', '2020-07-15 21:06:58', '00000', 2, 'Waste Limbah Domestic', '2.00', '0.35', '2.00', 'Medco Energi', '1', 'To Jetty'),
(203, 'JV00012', NULL, '100', '2020-07-16 02:17:18', '6053058', 1, '20FT Food Container KKTU', '37.50', '3.00', '37.50', 'GDSK', '1', 'To Jetty'),
(204, 'JV00012', NULL, '100', '2020-07-16 02:21:17', '1500032342', 1, 'White Container Consist Of Pick Up Box', '37.50', '5.00', '37.50', 'PT.CHAS', '1', 'To Jetty'),
(205, 'JV00012', NULL, '100', '2020-07-16 02:27:11', '7541095', 1, '20FT Food Container NYKU', '37.50', '3.00', '37.50', 'GDSK', '1', 'To Jetty'),
(206, 'JV00012', NULL, '130', '2020-07-16 02:33:35', '1500033425', 1, '14.3 M Offshore Basket SN.TD-CB-14-011', '24.54', '4.00', '24.54', 'Baker Huges', '1', 'To Jetty'),
(207, 'JV00012', NULL, '117', '2020-07-16 02:38:57', '1500033320', 1, 'Offshore Basket SN.B6106', '9.04', '3.50', '9.04', 'Wira Insani', '1', 'To Jetty'),
(208, 'JV00012', NULL, '121', '2020-07-16 02:42:34', '1500033415', 1, 'Sparepart Basket SN.JA 361', '9.40', '5.00', '9.40', 'Dowell Anadrill', '1', 'To Jetty'),
(209, 'JV00012', NULL, '123', '2020-07-16 02:46:39', '1500033421', 1, 'Completion Tool Box SN.CPS-XJK-TB-11', '2.92', '1.50', '2.92', 'Halliburton', '1', 'To Jetty'),
(210, 'JV00012', NULL, '131', '2020-07-16 02:50:13', '1500033324', 1, 'Offshore Basket SN.TD-CB-10-009', '22.82', '3.50', '22.82', 'Baker Huges', '1', 'To Jetty'),
(211, 'JV00012', NULL, '124', '2020-07-16 02:57:19', '1500033425', 1, '34FT Basket SN.M-PB-34-1055/MOOU 1229214', '16.07', '3.00', '16.07', 'Baker Huges', '1', 'To Jetty'),
(212, 'JV00012', NULL, '126', '2020-07-16 03:12:37', '1500033441', 1, 'Basket TD-CB-8-006', '13.94', '6.50', '13.94', 'Schlumberger', '1', 'To Jetty'),
(213, 'JV00012', NULL, '132', '2020-07-16 03:17:14', '1500033320', 1, 'Offshore Basket SN.B1401', '22.31', '6.00', '22.31', 'Wira Insani', '1', 'To Jetty'),
(214, 'JV00012', NULL, '100', '2020-07-16 03:25:25', '1500033435', 1, '20FT Close TOP ISO Container OEGU 000604-6', '37.50', '7.00', '37.50', 'Medco Energi', '1', 'To Jetty'),
(215, 'JV00012', NULL, '100', '2020-07-16 03:29:45', '7546651', 1, '20FT Food Container NYKU', '37.50', '3.00', '37.50', 'GDSK', '1', 'To Jetty'),
(216, 'JV00012', NULL, '100', '2020-07-16 03:34:55', '7020615', 1, '20FT Food COntainer TAHU', '37.50', '2.50', '37.50', 'GDSK', '1', 'To Jetty'),
(217, 'JV00012', NULL, '100', '2020-07-16 03:40:29', '6050146', 1, '20FT Food Container KKTU', '37.50', '3.00', '37.50', 'GDSK', '1', 'To Jetty'),
(218, 'JV00012', NULL, '100', '2020-07-16 03:44:01', '9456341', 1, '20FT Food Container GESU', '37.50', '3.00', '37.50', 'GDSK', '1', 'To Jetty'),
(219, 'JV00012', NULL, '100', '2020-07-16 03:50:48', '3117666', 1, '20FT Food Container CRLU', '37.50', '3.00', '37.50', 'GDSK', '1', 'To Jetty'),
(220, 'JV00012', NULL, '122', '2020-07-16 09:03:37', '1500033415', 1, 'Batch Mixer', '24.38', '14.80', '24.38', 'Dowell Anadrill', '1', 'To Trucking'),
(221, 'JV00012', NULL, '118', '2020-07-16 10:26:53', '1500033322', 1, 'Logging Unit SN.OLU-MA-5028', '30.96', '7.50', '30.96', 'Dowell Anadrill', '1', 'To Trucking'),
(222, 'JV00012', NULL, '131', '2020-07-16 10:46:58', '1500033322', 1, '13.3 M Offshore Baasket SN.AORU 133107', '22.82', '9.00', '22.82', 'Dowell Anadrill', '1', 'To Jetty'),
(223, 'JV00012', NULL, '128', '2020-07-16 10:51:37', '1500033358', 1, 'Wooden Box COnsist off : Lifting Beam ID.SLB 17093', '0.34', '0.20', '0.34', 'Heru Wicaksono', '1', 'To Trucking'),
(224, 'JV00012', NULL, '100', '2020-07-16 14:07:44', '1500033177', 1, 'MT DNV Container 20FT SN.Aoru 360091-3', '37.50', '5.00', '37.50', 'Sarku', '1', 'To Jetty'),
(225, 'JV00012', NULL, '100', '2020-07-16 14:08:11', '1500033177', 1, 'MT DNV Container 20FT SN.Aoru 360132-9', '37.50', '5.00', '37.50', 'Sarku', '1', 'To Jetty'),
(226, 'JV00012', NULL, '100', '2020-07-16 14:11:42', '1500033213', 1, '20FT AORUO 3601334', '37.50', '5.00', '37.50', 'Romario Putra Pratama', '1', 'To Jetty'),
(227, 'JV00012', NULL, '6', '2020-07-16 14:20:32', 'Star energ', 1, 'Kontener', '42.88', '3.00', '42.88', 'Star energy', '2', 'To Jetty'),
(228, 'JV00012', NULL, '107', '2020-07-16 14:32:52', '1500033333', 1, 'Container warna biru KWS003', '18.30', '1.00', '18.30', 'Medco Energi', '1', 'To Jetty'),
(229, 'JV00012', NULL, '106', '2020-07-16 14:34:47', '8028890', 1, '20FT Food Container CNHU', '18.75', '2.00', '18.75', 'GDSK', '1', 'To Jetty'),
(230, 'JV00012', NULL, '101', '2020-07-16 14:37:02', '1500033177', 1, 'MT Half Container 10FT SN.HOP-03/C10/08/09', '11.25', '1.50', '11.25', 'Medco Energi', '1', 'To Jetty'),
(231, 'JV00012', NULL, '104', '2020-07-16 14:40:12', '1500032942', 1, 'Empty Tote Tank S-9282 ,Tank Number LBU-2019-080', '2.16', '0.30', '2.16', 'PT.LBU JKT', '1', 'To Jetty'),
(232, 'JV00012', NULL, '104', '2020-07-16 14:40:48', '1500032942', 1, 'Empty Tote Tank S-9282 , Tank Number LBU-2019-0048', '2.16', '0.30', '2.16', 'PT.LBU JKT', '1', 'To Jetty'),
(233, 'JV00012', NULL, '104', '2020-07-16 14:43:13', '1500032942', 1, 'Empty Tote Tank S-965ND , Tank Number LBU-2019-002', '2.16', '0.30', '2.16', 'PT.LBU JKT', '1', 'To Jetty'),
(234, 'JV00012', NULL, '104', '2020-07-16 14:44:09', '1500032942', 1, 'Empty Tote Tank S-9282 , Tank Number RTF-09', '2.16', '0.30', '2.16', 'PT.LBU JKT', '1', 'To Jetty'),
(235, 'JV00012', NULL, '104', '2020-07-16 14:45:20', '1500032942', 1, 'Empty Tote Tank S-965ND , Tank Number LBU-2019-007', '2.16', '0.30', '2.16', 'PT.LBU JKT', '1', 'To Jetty'),
(236, 'JV00012', NULL, '111', '2020-07-16 14:45:59', '1500032864', 1, 'Material Cylinder Empty Helium,Hydrogen & Nitrogen', '2.74', '1.00', '2.74', 'Medco Energi', '1', 'To Jetty'),
(237, 'JV00012', NULL, '108', '2020-07-16 14:51:09', '1500033333', 1, 'Cradel kwr gbr 109 + kwr gbr 110', '1.00', '2.00', '2.00', 'Medco Energi', '3', 'To Jetty'),
(238, 'JV00012', NULL, '102', '2020-07-16 14:51:26', '1500033075', 1, 'Cylinder Rack Including Nitrogen MT Botol', '1.00', '1.50', '1.50', 'Sarku', '1', 'To Jetty'),
(239, 'JV00012', NULL, '104', '2020-07-16 14:52:56', '1500032942', 1, 'Empty Tote Tank S-965ND , Tank Number LBU-2019-0114', '2.16', '0.30', '2.16', 'PT.LBU JKT', '1', 'To Jetty'),
(240, 'JV00012', NULL, '104', '2020-07-16 14:53:20', '1500032942', 1, 'Empty Tote Tank Ex Chemical IR-2316 , No TT Tank T-5', '2.16', '0.30', '2.16', 'PT.LBU JKT', '1', 'To Jetty'),
(241, 'JV00012', NULL, '104', '2020-07-16 14:53:39', '1500032942', 1, 'Empty Tote Tank S-965ND , Tank Number LBU-2019-0056', '2.16', '0.30', '2.16', 'PT.LBU JKT', '1', 'To Jetty'),
(242, 'JV00012', NULL, '119', '2020-07-16 14:54:11', '1500033360', 1, 'Mud Logging Mini Container N 06-GEO 0414', '2.56', '1.00', '2.56', 'Geoservice', '1', 'To Jetty'),
(243, 'JV00012', NULL, '119', '2020-07-16 14:54:34', '1500033360', 1, 'Mud Logging Mini Container D 04-GEO-0410', '2.56', '1.00', '2.56', 'Geoservice', '1', 'To Jetty'),
(244, 'JV00012', NULL, '105', '2020-07-16 15:00:37', '1500033326', 4, '4 Unit Liferaft Inside 20FT Basket OEGU 2440616', '8.00', '0.80', '8.00', 'Segara Permai', '1', 'To Jetty'),
(245, 'JV00012', NULL, '125', '2020-07-16 15:04:03', '00002', 1, 'Mini Container c/o Coring Equipment', '17.50', '3.50', '17.50', 'NOV', '1', 'To Jetty'),
(246, 'JV00012', NULL, '10', '2020-07-16 15:04:31', '1500033433', 1, 'Argon For Refill', '4.05', '1.50', '4.05', 'Medco Energi', '1', 'To Jetty'),
(247, 'JV00012', NULL, '113', '2020-07-16 15:05:55', '1500032849', 1, 'Material Gas Booster 1Bh/Box', '13.50', '4.00', '13.50', 'Sembodo Suroso', '1', 'To Jetty'),
(248, 'JV00012', NULL, '115', '2020-07-16 15:06:55', '1300014948', 1, 'Connector 3/8" Tube OD X 1/2" MNPT 316', '0.00', '0.03', '0.03', 'Medco Energi', '1', 'To Jetty'),
(249, 'JV00012', NULL, '127', '2020-07-16 15:08:16', '34934421', 1, 'Drilling JAR 7" SN.3493442-1', '0.30', '1.00', '1.00', 'Baker Huges', '1', 'To Jetty'),
(250, 'JV00012', NULL, '127', '2020-07-16 15:08:31', '1703790', 1, 'Drilling JAR 7" SN.1703790-1', '0.30', '1.00', '1.00', 'Baker Huges', '1', 'To Jetty'),
(251, 'JV00012', NULL, '103', '2020-07-16 15:09:05', '1500033088', 1, '20 Ea Firex Dry Powder (Hydrtest)', '1.73', '0.10', '1.73', 'Segara Permai', '3', 'To Jetty'),
(252, 'JV00012', NULL, '112', '2020-07-16 15:09:28', '1500032962', 1, 'Liferaft Capasitas 25 Pax', '1.44', '0.30', '1.44', 'Medco Energi', '1', 'To Jetty'),
(253, 'JV00012', NULL, '106', '2020-07-16 15:09:53', '1500033435', 1, '10FT Close TOP ISO Container OEGU 0006133', '18.75', '3.00', '18.75', 'Medco Energi', '1', 'To Jetty'),
(254, 'JV00012', NULL, '110', '2020-07-16 15:10:22', '00001', 1, '20FT Container ISO OEGU 000610-7', '36.97', '3.50', '36.97', 'Medco Energi', '1', 'To Jetty'),
(268, 'JV00013', NULL, '36', '2020-07-21 19:54:14', '00022', 1, 'Calcium Chloride', '1.73', '1.00', '1.73', 'Dowel Schlumberger', '1', 'From Jetty'),
(269, 'JV00013', NULL, '36', '2020-07-21 19:59:23', '00022', 1, 'Calcium Chloride', '1.73', '1.00', '1.73', 'Dowel Schlumberger', '1', 'From Jetty'),
(270, 'JV00013', NULL, '36', '2020-07-21 20:00:45', '00022', 1, 'Calcium Chloride', '1.73', '1.00', '1.73', 'Dowel Schlumberger', '1', 'From Jetty'),
(271, 'JV00013', NULL, '29', '2020-07-21 20:02:05', '00028', 1, 'D320 (2677 gal)', '1.44', '0.60', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(272, 'JV00013', NULL, '36', '2020-07-21 20:02:32', '00022', 1, 'Calcium Chloride', '1.73', '1.00', '1.73', 'Dowel Schlumberger', '1', 'From Jetty'),
(273, 'JV00013', NULL, '29', '2020-07-21 20:03:20', '00028', 1, 'D320 (2677 gal)', '1.44', '0.60', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(274, 'JV00013', NULL, '36', '2020-07-21 20:03:42', '00022', 1, 'Calcium Chloride', '1.73', '1.00', '1.73', 'Dowel Schlumberger', '1', 'From Jetty'),
(275, 'JV00013', NULL, '36', '2020-07-21 20:04:19', '00022', 1, 'Calcium Chloride', '1.73', '1.00', '1.73', 'Dowel Schlumberger', '1', 'From Jetty'),
(276, 'JV00013', NULL, '36', '2020-07-21 20:05:35', '00022', 1, 'Calcium Chloride', '1.73', '1.00', '1.73', 'Dowel Schlumberger', '1', 'From Jetty'),
(277, 'JV00013', NULL, '36', '2020-07-21 20:06:56', '00022', 1, 'Calcium Chloride', '1.73', '1.00', '1.73', 'Dowel Schlumberger', '1', 'From Jetty'),
(278, 'JV00013', NULL, '36', '2020-07-21 20:08:14', '00022', 1, 'Calcium Chloride', '1.73', '1.00', '1.73', 'Dowel Schlumberger', '1', 'From Jetty'),
(279, 'JV00013', NULL, '36', '2020-07-21 20:09:33', '00022', 1, 'Calcium Chloride', '1.73', '1.00', '1.73', 'Dowel Schlumberger', '1', 'From Jetty'),
(280, 'JV00013', NULL, '29', '2020-07-21 20:11:12', '00024', 1, 'D124 (3BB - 3300)', '1.44', '0.67', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(281, 'JV00013', NULL, '29', '2020-07-21 20:13:00', '00024', 1, 'D124 (3BB - 3300)', '1.44', '0.67', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(282, 'JV00013', NULL, '29', '2020-07-21 20:16:32', '00024', 1, 'D124 (3BB - 3300)', '1.44', '0.67', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(283, 'JV00013', NULL, '29', '2020-07-21 20:17:16', '00029', 1, 'D080 (530 gal)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(284, 'JV00013', NULL, '29', '2020-07-21 20:18:51', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Yard'),
(285, 'JV00013', NULL, '29', '2020-07-21 20:19:43', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(286, 'JV00013', NULL, '29', '2020-07-21 20:20:29', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Yard'),
(287, 'JV00013', NULL, '29', '2020-07-21 20:21:08', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Yard'),
(288, 'JV00013', NULL, '29', '2020-07-21 20:21:39', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(289, 'JV00013', NULL, '29', '2020-07-21 20:22:36', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(290, 'JV00013', NULL, '29', '2020-07-21 20:23:21', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(291, 'JV00013', NULL, '29', '2020-07-21 20:23:57', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(292, 'JV00013', NULL, '29', '2020-07-21 20:24:47', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(293, 'JV00013', NULL, '29', '2020-07-21 20:25:26', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(294, 'JV00013', NULL, '29', '2020-07-21 20:26:09', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(295, 'JV00013', NULL, '29', '2020-07-21 20:26:56', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(296, 'JV00013', NULL, '29', '2020-07-21 20:27:38', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(297, 'JV00013', NULL, '29', '2020-07-21 20:28:27', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(298, 'JV00013', NULL, '29', '2020-07-21 20:29:06', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(299, 'JV00013', NULL, '29', '2020-07-21 20:29:29', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(300, 'JV00013', NULL, '29', '2020-07-21 20:30:19', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(301, 'JV00013', NULL, '29', '2020-07-21 20:30:56', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(302, 'JV00013', NULL, '29', '2020-07-21 20:31:23', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(303, 'JV00013', NULL, '29', '2020-07-21 20:32:15', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Yard'),
(304, 'JV00013', NULL, '29', '2020-07-21 20:32:45', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Yard'),
(305, 'JV00013', NULL, '29', '2020-07-21 20:33:21', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(306, 'JV00013', NULL, '29', '2020-07-21 20:33:58', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(307, 'JV00013', NULL, '29', '2020-07-21 20:34:29', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(308, 'JV00013', NULL, '29', '2020-07-21 20:35:09', '00028', 1, 'D320 (2677 gal)', '1.44', '0.60', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(309, 'JV00013', NULL, '29', '2020-07-21 20:35:34', '00028', 1, 'D320 (2677 gal)', '1.44', '0.60', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(310, 'JV00013', NULL, '29', '2020-07-21 20:36:06', '00028', 1, 'D320 (2677 gal)', '1.44', '0.60', '1.44', 'Dowel Schlumberger', '1', 'From Yard'),
(311, 'JV00013', NULL, '29', '2020-07-21 20:36:40', '00028', 1, 'D320 (2677 gal)', '1.44', '0.60', '1.44', 'Dowel Schlumberger', '1', 'From Jetty'),
(312, 'JV00013', NULL, '29', '2020-07-21 20:37:27', '00028', 1, 'D320 (2677 gal)', '1.44', '0.60', '1.44', 'Dowel Schlumberger', '1', 'From Trucking'),
(313, 'JV00013', NULL, '29', '2020-07-21 20:38:01', '00034', 31, 'Semen 3 Roda', '44.64', '31.00', '44.64', 'Medco', '2', 'From Yard'),
(314, 'JV00013', NULL, '10', '2020-07-21 20:38:19', '00035', 16, 'IBC Tank Schlumberfer', '64.80', '19.20', '64.80', 'Schlumberger', '2', 'From Jetty'),
(315, 'JV00013', NULL, '36', '2020-07-21 20:38:34', '00036', 2, 'Chemical Drum', '3.46', '1.60', '3.46', 'Schlumberger', '2', 'From Jetty'),
(316, 'JV00013', NULL, '29', '2020-07-21 20:39:03', '00026', 3, 'D256 (1060 gal)', '4.32', '2.00', '4.32', 'Dowel Schlumberger', '1', 'From Jetty'),
(317, 'JV00013', NULL, '29', '2020-07-21 20:40:29', '00027', 2, 'D145A (424 gal)', '2.88', '1.00', '2.88', 'Dowel Schlumberger', '1', 'From Yard'),
(318, 'JV00013', NULL, '29', '2020-07-21 20:41:52', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Yard'),
(319, 'JV00013', NULL, '29', '2020-07-21 20:43:24', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Yard'),
(320, 'JV00013', NULL, '29', '2020-07-21 20:45:06', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Yard'),
(321, 'JV00013', NULL, '29', '2020-07-21 20:47:01', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Yard'),
(322, 'JV00013', NULL, '29', '2020-07-21 20:48:37', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Yard'),
(323, 'JV00013', NULL, '29', '2020-07-21 20:51:00', '00027', 1, 'D145A (424 gal)', '1.44', '0.50', '1.44', 'Dowel Schlumberger', '1', 'From Yard'),
(324, 'JV00013', NULL, '29', '2020-07-21 20:52:16', '00027', 1, 'D145A (424 gal)', '1.44', '0.50', '1.44', 'Dowel Schlumberger', '1', 'From Yard'),
(325, 'JV00013', NULL, '29', '2020-07-21 20:54:01', '00025', 1, 'D066 (30 BE)', '1.44', '1.00', '1.44', 'Dowel Schlumberger', '1', 'From Yard'),
(326, 'JV00013', NULL, '139', '2020-07-21 21:05:13', '00010', 4, 'Casing 9-5/8"', '3.16', '3.50', '3.50', 'PPLi', '3', 'From Trucking'),
(327, 'JV00013', NULL, '139', '2020-07-21 21:19:11', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(328, 'JV00013', NULL, '139', '2020-07-21 21:23:53', '00010', 1, 'Casing 9-5/8"', '0.79', '0.88', '0.88', 'PPLi', '3', 'From Trucking'),
(329, 'JV00013', NULL, '139', '2020-07-21 21:28:35', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(330, 'JV00013', NULL, '139', '2020-07-21 21:32:45', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(331, 'JV00013', NULL, '139', '2020-07-21 21:39:13', '00010', 2, 'Casing 9-5/8"', '1.58', '1.75', '1.75', 'PPLi', '3', 'From Trucking'),
(332, 'JV00013', NULL, '139', '2020-07-21 21:44:39', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(333, 'JV00013', NULL, '139', '2020-07-21 21:48:16', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(334, 'JV00013', NULL, '139', '2020-07-21 21:52:38', '00010', 2, 'Casing 9-5/8"', '1.58', '1.75', '1.75', 'PPLi', '3', 'From Trucking'),
(335, 'JV00013', NULL, '139', '2020-07-21 21:57:08', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(336, 'JV00013', NULL, '139', '2020-07-21 22:01:00', '00010', 1, 'Casing 9-5/8"', '0.79', '0.88', '0.88', 'PPLi', '3', 'From Trucking'),
(337, 'JV00013', NULL, '139', '2020-07-21 22:11:49', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(338, 'JV00013', NULL, '139', '2020-07-21 22:15:36', '00010', 1, 'Casing 9-5/8"', '0.79', '0.88', '0.88', 'PPLi', '3', 'From Trucking'),
(339, 'JV00013', NULL, '139', '2020-07-21 22:22:07', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(340, 'JV00013', NULL, '139', '2020-07-21 22:26:13', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(341, 'JV00013', NULL, '139', '2020-07-21 22:31:19', '00010', 2, 'Casing 9-5/8"', '1.58', '1.75', '1.75', 'PPLi', '3', 'From Trucking'),
(342, 'JV00013', NULL, '139', '2020-07-21 22:37:04', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(343, 'JV00013', NULL, '139', '2020-07-21 22:42:12', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(344, 'JV00013', NULL, '139', '2020-07-21 22:45:37', '00010', 2, 'Casing 9-5/8"', '1.58', '1.75', '1.75', 'PPLi', '3', 'From Trucking'),
(345, 'JV00013', NULL, '139', '2020-07-21 22:49:21', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(346, 'JV00013', NULL, '139', '2020-07-21 22:53:26', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(347, 'JV00013', NULL, '139', '2020-07-21 22:57:01', '00010', 2, 'Casing 9-5/8"', '1.58', '1.75', '1.75', 'PPLi', '3', 'From Trucking'),
(348, 'JV00013', NULL, '139', '2020-07-21 23:06:58', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(349, 'JV00013', NULL, '139', '2020-07-21 23:13:27', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(350, 'JV00013', NULL, '139', '2020-07-21 23:17:17', '00010', 2, 'Casing 9-5/8"', '1.58', '1.75', '1.75', 'PPLi', '3', 'From Trucking'),
(351, 'JV00013', NULL, '139', '2020-07-21 23:23:54', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(352, 'JV00013', NULL, '139', '2020-07-21 23:28:34', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Trucking'),
(353, 'JV00013', NULL, '139', '2020-07-21 23:31:51', '00010', 1, 'Casing 9-5/8"', '0.79', '0.88', '0.88', 'PPLi', '3', 'From Trucking'),
(354, 'JV00013', NULL, '29', '2020-07-22 08:34:25', '00038', 2, 'NaCL', '2.88', '2.00', '2.88', 'Halliburton', '2', 'From Trucking'),
(355, 'JV00013', NULL, '29', '2020-07-22 08:44:07', '00038', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '2', 'From Trucking');
INSERT INTO `actual_stevedoring` (`id_as`, `id_joborder`, `id_cargo`, `id_jenis`, `time_as`, `doc_no_as`, `qty_as`, `rincian_cargo`, `m3_as`, `ton_as`, `revton_as`, `remarks_as`, `row_version`, `keterangan`) VALUES
(356, 'JV00013', NULL, '29', '2020-07-22 08:52:24', '00038', 3, 'NaCL', '4.32', '3.00', '4.32', 'Halliburton', '2', 'From Trucking'),
(357, 'JV00013', NULL, '29', '2020-07-22 09:00:16', '00038', 5, 'NaCL', '7.20', '5.00', '7.20', 'Halliburton', '2', 'From Trucking'),
(358, 'JV00013', NULL, '29', '2020-07-22 09:14:26', '00038', 9, 'NaCL', '12.96', '9.00', '12.96', 'Halliburton', '2', 'From Trucking'),
(359, 'JV00013', NULL, '29', '2020-07-22 09:21:43', '00038', 5, 'NaCL', '7.20', '5.00', '7.20', 'Halliburton', '2', 'From Trucking'),
(360, 'JV00013', NULL, '29', '2020-07-22 09:29:08', '00038', 5, 'NaCL', '7.20', '5.00', '7.20', 'Halliburton', '2', 'From Trucking'),
(361, 'JV00013', NULL, '29', '2020-07-22 09:54:41', '00038', 10, 'NaCL', '14.40', '10.00', '14.40', 'Halliburton', '2', 'From Trucking'),
(362, 'JV00013', NULL, '29', '2020-07-22 10:16:37', '00038', 10, 'NaCL', '14.40', '10.00', '14.40', 'Halliburton', '3', 'From Trucking'),
(363, 'JV00013', NULL, '29', '2020-07-22 10:32:49', '00039', 10, 'NaCL', '14.40', '10.00', '14.40', 'Halliburton', '2', 'From Trucking'),
(364, 'JV00013', NULL, '29', '2020-07-22 10:48:25', '00039', 10, 'NaCL', '14.40', '10.00', '14.40', 'Halliburton', '2', 'From Trucking'),
(365, 'JV00013', NULL, '29', '2020-07-22 11:05:46', '00039', 10, 'NaCL', '14.40', '10.00', '14.40', 'Halliburton', '2', 'From Trucking'),
(366, 'JV00013', NULL, '29', '2020-07-22 11:22:42', '00039', 15, 'NaCL', '21.60', '15.00', '21.60', 'Halliburton', '2', 'From Trucking'),
(367, 'JV00013', NULL, '139', '2020-07-22 13:22:11', '00010', 41, 'Casing 9-5/8"', '32.39', '35.88', '35.88', 'PPLi', '3', 'From Trucking'),
(368, 'JV00013', NULL, '138', '2020-07-22 13:22:41', '00009', 36, 'Casing 13-3/8"', '60.48', '72.73', '72.73', 'PPLi', '1', 'From Trucking'),
(369, 'JV00013', NULL, '29', '2020-07-22 13:31:49', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(370, 'JV00013', NULL, '29', '2020-07-22 13:35:23', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(371, 'JV00013', NULL, '29', '2020-07-22 13:36:57', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(372, 'JV00013', NULL, '29', '2020-07-22 13:37:52', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(373, 'JV00013', NULL, '29', '2020-07-22 13:39:09', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(374, 'JV00013', NULL, '29', '2020-07-22 13:40:21', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(375, 'JV00013', NULL, '29', '2020-07-22 13:42:37', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(376, 'JV00013', NULL, '29', '2020-07-22 13:43:43', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(377, 'JV00013', NULL, '29', '2020-07-22 13:44:58', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(378, 'JV00013', NULL, '29', '2020-07-22 13:46:10', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(379, 'JV00013', NULL, '29', '2020-07-22 13:47:17', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(380, 'JV00013', NULL, '29', '2020-07-22 13:48:43', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(381, 'JV00013', NULL, '29', '2020-07-22 13:49:56', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(382, 'JV00013', NULL, '29', '2020-07-22 13:51:08', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(383, 'JV00013', NULL, '29', '2020-07-22 13:52:33', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(384, 'JV00013', NULL, '29', '2020-07-22 13:54:08', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(385, 'JV00013', NULL, '29', '2020-07-22 13:55:35', '00039', 1, 'NaCL', '1.44', '1.00', '1.44', 'Halliburton', '3', 'From Jetty'),
(386, 'JV00013', NULL, '138', '2020-07-22 14:06:16', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(387, 'JV00013', NULL, '138', '2020-07-22 14:27:36', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(388, 'JV00013', NULL, '138', '2020-07-22 14:32:24', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(389, 'JV00013', NULL, '138', '2020-07-22 14:48:25', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(390, 'JV00013', NULL, '138', '2020-07-22 14:52:56', '00009', 1, 'Casing 13-3/8"', '1.68', '2.02', '2.02', 'PPLi', '1', 'From Jetty'),
(391, 'JV00013', NULL, '138', '2020-07-22 14:56:51', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(392, 'JV00013', NULL, '138', '2020-07-22 15:02:54', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(393, 'JV00013', NULL, '138', '2020-07-22 15:07:57', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(394, 'JV00013', NULL, '138', '2020-07-22 15:11:06', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(395, 'JV00013', NULL, '138', '2020-07-22 15:15:22', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(396, 'JV00013', NULL, '138', '2020-07-22 15:21:18', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(397, 'JV00013', NULL, '138', '2020-07-22 15:27:13', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(398, 'JV00013', NULL, '138', '2020-07-22 15:32:01', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(399, 'JV00013', NULL, '138', '2020-07-22 15:48:34', '00009', 1, 'Casing 13-3/8"', '1.68', '2.02', '2.02', 'PPLi', '1', 'From Jetty'),
(400, 'JV00013', NULL, '138', '2020-07-22 15:52:36', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(401, 'JV00013', NULL, '138', '2020-07-22 15:57:22', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(402, 'JV00013', NULL, '138', '2020-07-22 16:00:15', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(403, 'JV00013', NULL, '138', '2020-07-22 16:04:00', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(404, 'JV00013', NULL, '138', '2020-07-22 16:07:43', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(405, 'JV00013', NULL, '138', '2020-07-22 16:12:13', '00009', 1, 'Casing 13-3/8"', '1.68', '2.02', '2.02', 'PPLi', '1', 'From Jetty'),
(406, 'JV00013', NULL, '138', '2020-07-22 16:15:56', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(407, 'JV00013', NULL, '138', '2020-07-22 16:19:11', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(408, 'JV00013', NULL, '138', '2020-07-22 16:22:37', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(409, 'JV00013', NULL, '138', '2020-07-22 16:26:31', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(410, 'JV00013', NULL, '138', '2020-07-22 16:30:44', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(411, 'JV00013', NULL, '138', '2020-07-22 16:33:43', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(412, 'JV00013', NULL, '138', '2020-07-22 16:36:57', '00009', 1, 'Casing 13-3/8"', '1.68', '2.02', '2.02', 'PPLi', '1', 'From Jetty'),
(413, 'JV00013', NULL, '138', '2020-07-22 16:40:45', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(414, 'JV00013', NULL, '138', '2020-07-22 16:45:14', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(415, 'JV00013', NULL, '138', '2020-07-22 16:48:48', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(416, 'JV00013', NULL, '138', '2020-07-22 16:55:11', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(417, 'JV00013', NULL, '138', '2020-07-22 17:00:03', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(418, 'JV00013', NULL, '138', '2020-07-22 17:03:20', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(419, 'JV00013', NULL, '138', '2020-07-22 17:07:08', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(420, 'JV00013', NULL, '138', '2020-07-22 17:10:32', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(421, 'JV00013', NULL, '138', '2020-07-22 17:15:34', '00009', 3, 'Casing 13-3/8"', '5.04', '6.07', '6.07', 'PPLi', '1', 'From Jetty'),
(422, 'JV00013', NULL, '138', '2020-07-22 17:16:52', '00009', 3, 'Casing 13-3/8"', '5.04', '6.06', '6.06', 'PPLi', '1', 'From Jetty'),
(423, 'JV00013', NULL, '138', '2020-07-22 17:22:23', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(424, 'JV00013', NULL, '138', '2020-07-22 20:15:53', '00009', 3, 'Casing 13-3/8"', '5.04', '6.07', '6.07', 'PPLi', '1', 'From Jetty'),
(425, 'JV00013', NULL, '138', '2020-07-22 20:21:57', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(426, 'JV00013', NULL, '138', '2020-07-22 20:25:49', '00009', 3, 'Casing 13-3/8"', '5.04', '6.07', '6.07', 'PPLi', '1', 'From Jetty'),
(427, 'JV00013', NULL, '138', '2020-07-22 20:31:14', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(428, 'JV00013', NULL, '138', '2020-07-22 20:35:52', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(429, 'JV00013', NULL, '138', '2020-07-22 20:39:36', '00009', 2, 'Casing 13-3/8"', '3.36', '4.04', '4.04', 'PPLi', '1', 'From Jetty'),
(430, 'JV00013', NULL, '138', '2020-07-22 20:43:10', '00009', 3, 'Casing 13-3/8"', '5.04', '6.07', '6.07', 'PPLi', '1', 'From Jetty'),
(431, 'JV00013', NULL, '138', '2020-07-22 20:47:01', '00009', 3, 'Casing 13-3/8"', '5.04', '6.07', '6.07', 'PPLi', '1', 'From Jetty'),
(432, 'JV00013', NULL, '138', '2020-07-22 20:50:48', '00009', 1, 'Casing 13-3/8"', '1.68', '2.02', '2.02', 'PPLi', '1', 'From Jetty'),
(433, 'JV00013', NULL, '139', '2020-07-22 22:29:55', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Jetty'),
(434, 'JV00013', NULL, '139', '2020-07-22 22:36:18', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Jetty'),
(435, 'JV00013', NULL, '139', '2020-07-22 22:41:24', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Jetty'),
(436, 'JV00013', NULL, '139', '2020-07-22 22:46:34', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Jetty'),
(437, 'JV00013', NULL, '139', '2020-07-22 22:51:58', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Jetty'),
(438, 'JV00013', NULL, '139', '2020-07-22 22:56:35', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Jetty'),
(439, 'JV00013', NULL, '139', '2020-07-22 23:00:46', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Jetty'),
(440, 'JV00013', NULL, '139', '2020-07-22 23:05:30', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Jetty'),
(441, 'JV00013', NULL, '139', '2020-07-22 23:10:19', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Jetty'),
(442, 'JV00013', NULL, '139', '2020-07-22 23:15:59', '00010', 1, 'Casing 9-5/8"', '0.79', '0.88', '0.88', 'PPLi', '3', 'From Jetty'),
(443, 'JV00013', NULL, '139', '2020-07-22 23:19:52', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Jetty'),
(444, 'JV00013', NULL, '139', '2020-07-22 23:24:05', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Jetty'),
(445, 'JV00013', NULL, '139', '2020-07-23 08:45:57', '00010', 6, 'Casing 9-5/8"', '4.74', '5.25', '5.25', 'PPLi', '3', 'From Yard'),
(446, 'JV00013', NULL, '139', '2020-07-23 09:07:24', '00010', 10, 'Casing 9-5/8"', '7.90', '8.75', '8.75', 'PPLi', '3', 'From Jetty'),
(447, 'JV00013', NULL, '139', '2020-07-23 09:36:15', '00010', 19, 'Casing 9-5/8"', '15.01', '16.63', '16.63', 'PPLi', '3', 'From Jetty'),
(448, 'JV00013', NULL, '133', '2020-07-23 10:08:24', '00001', 3, 'Conductor 30"', '23.04', '8.35', '23.04', 'SAKA', '1', 'From Trucking'),
(449, 'JV00013', NULL, '133', '2020-07-23 10:09:39', '00001', 3, 'Conductor 30"', '23.04', '8.35', '23.04', 'SAKA', '1', 'From Trucking'),
(450, 'JV00013', NULL, '133', '2020-07-23 10:10:25', '00001', 3, 'Conductor 30"', '23.04', '8.35', '23.04', 'SAKA', '1', 'From Trucking'),
(451, 'JV00013', NULL, '139', '2020-07-23 13:26:06', '00010', 71, 'Casing 9-5/8"', '56.09', '62.13', '62.13', 'PPLi', '3', 'From Jetty'),
(452, 'JV00013', NULL, '140', '2020-07-23 14:02:51', '00011', 3, 'Pup Joint 4-1/2" TS Blue', '3.27', '1.26', '3.27', 'Terubuk', '1', 'From Jetty'),
(453, 'JV00013', NULL, '139', '2020-07-23 14:03:25', '00010', 3, 'Casing 9-5/8"', '2.37', '2.63', '2.63', 'PPLi', '3', 'From Jetty'),
(454, 'JV00013', NULL, '139', '2020-07-23 14:12:35', '00010', 2, 'Casing 9-5/8"', '1.58', '1.75', '1.75', 'PPLi', '3', 'From Jetty'),
(455, 'JV00013', NULL, '139', '2020-07-23 14:16:11', '00010', 1, 'Casing 9-5/8"', '0.79', '0.88', '0.88', 'PPLi', '3', 'From Jetty'),
(456, 'JV00013', NULL, '139', '2020-07-23 14:19:59', '00010', 1, 'Casing 9-5/8"', '0.79', '0.88', '0.88', 'PPLi', '3', 'From Jetty'),
(457, 'JV00013', NULL, '139', '2020-07-23 14:24:08', '00010', 2, 'Casing 9-5/8"', '1.58', '1.75', '1.75', 'PPLi', '3', 'From Jetty'),
(458, 'JV00013', NULL, '139', '2020-07-23 14:28:08', '00010', 1, 'Casing 9-5/8"', '0.79', '0.88', '0.88', 'PPLi', '3', 'From Jetty'),
(459, 'JV00013', NULL, '139', '2020-07-23 14:32:02', '00010', 2, 'Casing 9-5/8"', '1.58', '1.75', '1.75', 'PPLi', '3', 'From Jetty'),
(460, 'JV00013', NULL, '139', '2020-07-23 14:35:23', '00010', 1, 'Casing 9-5/8"', '0.79', '0.88', '0.88', 'PPLi', '3', 'From Jetty'),
(461, 'JV00013', NULL, '137', '2020-07-23 15:08:05', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(462, 'JV00013', NULL, '137', '2020-07-23 15:14:24', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(463, 'JV00013', NULL, '137', '2020-07-23 15:16:17', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(464, 'JV00013', NULL, '137', '2020-07-23 15:18:34', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(465, 'JV00013', NULL, '137', '2020-07-23 15:24:59', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(466, 'JV00013', NULL, '137', '2020-07-23 15:25:54', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(467, 'JV00013', NULL, '137', '2020-07-23 15:34:37', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(468, 'JV00013', NULL, '137', '2020-07-23 15:37:02', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(469, 'JV00013', NULL, '137', '2020-07-23 15:38:32', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(470, 'JV00013', NULL, '137', '2020-07-23 15:41:09', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(471, 'JV00013', NULL, '137', '2020-07-23 15:43:30', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(472, 'JV00013', NULL, '137', '2020-07-23 15:45:06', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(473, 'JV00013', NULL, '72', '2020-07-23 15:51:25', '00032', 1, 'Nitrogen Bottle Rack', '2.54', '1.00', '2.54', 'Belida', '1', 'From Yard'),
(474, 'JV00013', NULL, '72', '2020-07-23 15:58:33', '00032', 1, 'Nitrogen Bottle Rack', '2.54', '1.00', '2.54', 'Belida', '1', 'From Yard'),
(475, 'JV00013', NULL, '72', '2020-07-23 16:02:04', '00032', 1, 'Nitrogen Bottle Rack', '2.54', '1.00', '2.54', 'Belida', '1', 'From Yard'),
(476, 'JV00006', NULL, '10', '2020-07-24 10:15:59', '220002', 2, 'testing', '8.10', '20.00', '20.00', 'test', '1', 'From Trucking'),
(477, 'JV00006', NULL, '10', '2020-07-24 10:16:39', '220002', 4, 'testing', '16.20', '40.00', '40.00', 'test', '1', 'From Jetty'),
(478, 'JV00014', NULL, '100', '2020-07-24 10:39:54', '0001', 2, 'EMPTY DNV CONTAINER 20 FT', '75.00', '6.00', '75.00', 'DNV', '1', 'To Trucking'),
(479, 'JV00015', NULL, '54', '2020-07-24 10:40:30', 'A0002', 1, 'HALF OPEN TOP CONTAINER 10 FT', '9.44', '2.00', '9.44', 'Star Energy', '1', 'To Jetty'),
(480, 'JV00014', NULL, '48', '2020-07-24 10:40:57', '0002', 1, 'Dry Food Container 20 FT', '37.77', '3.00', '37.77', 'GDSK', '1', 'To Jetty'),
(481, 'JV00015', NULL, '10', '2020-07-24 10:41:24', 'A0001', 1, 'EMPTY IBC TANK', '4.05', '0.05', '4.05', 'Champion', '1', 'To Jetty'),
(482, 'JV00015', NULL, '10', '2020-07-24 10:41:36', 'A0001', 1, 'EMPTY IBC TANK', '4.05', '0.05', '4.05', 'Champion', '1', 'To Jetty'),
(483, 'JV00015', NULL, '10', '2020-07-24 10:42:20', 'A0001', 1, 'EMPTY IBC TANK', '4.05', '0.05', '4.05', 'Champion', '1', 'To Jetty'),
(484, 'JV00015', NULL, '54', '2020-07-24 10:42:35', 'A0002', 1, 'HALF OPEN TOP CONTAINER 10 FT', '9.44', '2.00', '9.44', 'Star Energy', '1', 'To Jetty'),
(485, 'JV00015', NULL, '10', '2020-07-24 10:42:47', 'A0001', 1, 'EMPTY IBC TANK', '4.05', '0.05', '4.05', 'Champion', '1', 'To Jetty'),
(486, 'JV00015', NULL, '10', '2020-07-24 10:42:59', 'A0001', 1, 'EMPTY IBC TANK', '4.05', '0.05', '4.05', 'Champion', '1', 'To Jetty'),
(487, 'JV00015', NULL, '10', '2020-07-24 10:43:08', 'A0001', 1, 'EMPTY IBC TANK', '4.05', '0.05', '4.05', 'Champion', '1', 'To Jetty'),
(488, 'JV00015', NULL, '10', '2020-07-24 10:43:26', 'A0001', 1, 'EMPTY IBC TANK', '4.05', '0.05', '4.05', 'Champion', '1', 'To Jetty'),
(489, 'JV00015', NULL, '10', '2020-07-24 10:43:39', 'A0001', 1, 'EMPTY IBC TANK', '4.05', '0.05', '4.05', 'Champion', '1', 'To Jetty'),
(490, 'JV00014', NULL, '48', '2020-07-24 10:44:02', '0002', 1, 'Dry Food Container 20 FT', '37.77', '3.00', '37.77', 'GDSK', '1', 'To Jetty'),
(491, 'JV00013', NULL, '137', '2020-07-24 13:57:59', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(492, 'JV00013', NULL, '137', '2020-07-24 14:06:30', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(493, 'JV00013', NULL, '137', '2020-07-24 14:12:50', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(494, 'JV00013', NULL, '137', '2020-07-24 14:15:11', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(495, 'JV00013', NULL, '137', '2020-07-24 14:17:56', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(496, 'JV00013', NULL, '137', '2020-07-24 14:20:13', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(497, 'JV00013', NULL, '137', '2020-07-24 14:23:23', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(498, 'JV00013', NULL, '137', '2020-07-24 14:25:52', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(499, 'JV00013', NULL, '137', '2020-07-24 14:30:33', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(500, 'JV00013', NULL, '137', '2020-07-24 14:32:19', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(501, 'JV00013', NULL, '137', '2020-07-24 14:34:54', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(502, 'JV00013', NULL, '137', '2020-07-24 14:37:18', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(503, 'JV00013', NULL, '137', '2020-07-24 14:44:49', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(504, 'JV00013', NULL, '137', '2020-07-24 14:49:48', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(505, 'JV00013', NULL, '137', '2020-07-24 14:52:45', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(506, 'JV00013', NULL, '137', '2020-07-24 14:55:20', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(507, 'JV00013', NULL, '137', '2020-07-24 14:58:09', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(508, 'JV00013', NULL, '137', '2020-07-24 15:01:29', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(509, 'JV00013', NULL, '137', '2020-07-24 15:04:27', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(510, 'JV00013', NULL, '137', '2020-07-24 15:06:55', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(511, 'JV00013', NULL, '137', '2020-07-24 15:08:52', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(512, 'JV00013', NULL, '137', '2020-07-24 15:10:26', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(513, 'JV00013', NULL, '137', '2020-07-24 15:12:09', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(514, 'JV00013', NULL, '93', '2020-07-24 15:23:14', '00007', 1, 'Offshore Basket , Dump Irom', '22.34', '12.00', '22.34', 'Anadril', '1', 'From Trucking'),
(515, 'JV00013', NULL, '93', '2020-07-24 15:36:15', '00006', 1, 'Offshore Basket 2Ea Mud Motor', '22.34', '10.00', '22.34', 'Anadril', '1', 'From Trucking'),
(516, 'JV00013', NULL, '93', '2020-07-24 15:39:38', '00004', 1, 'Offshore basket , 2 Ea Telescope', '22.34', '10.00', '22.34', 'Anadril', '1', 'From Trucking'),
(517, 'JV00013', NULL, '134', '2020-07-24 15:51:25', '00002', 1, 'OST Basket', '10.54', '9.00', '10.54', 'Testing', '1', 'From Jetty'),
(518, 'JV00013', NULL, '149', '2020-07-24 15:57:32', '00018', 1, 'Offshore Basket 13.3 SNTBA', '22.48', '12.00', '22.48', 'Terubuk', '1', 'From Jetty'),
(519, 'JV00013', NULL, '152', '2020-07-24 16:06:53', '00030', 1, 'Offshore Basket Aoru', '6.39', '6.00', '6.39', 'Dowel Schlumberger', '1', 'From Jetty'),
(520, 'JV00013', NULL, '137', '2020-07-24 16:24:28', '00008', 1, 'Cutting Skip', '6.36', '1.00', '6.36', 'PPLi', '1', 'From Yard'),
(521, 'JV00013', NULL, '133', '2020-07-24 16:33:25', '00001', 1, 'Conductor 30"', '7.68', '2.78', '7.68', 'SAKA', '1', 'From Jetty'),
(522, 'JV00013', NULL, '133', '2020-07-24 16:44:48', '00001', 1, 'Conductor 30"', '7.68', '2.78', '7.68', 'SAKA', '1', 'From Jetty'),
(523, 'JV00013', NULL, '133', '2020-07-24 16:53:29', '00001', 1, 'Conductor 30"', '7.68', '2.78', '7.68', 'SAKA', '1', 'From Jetty'),
(524, 'JV00013', NULL, '133', '2020-07-28 08:23:48', '00001', 11, 'Conductor 30"', '84.48', '30.61', '84.48', 'SAKA', '1', 'Not Available'),
(525, 'JV00013', NULL, '135', '2020-07-28 08:25:09', '00003', 4, 'Propane Rack', '7.52', '1.50', '7.52', 'Testing', '1', 'Not Available'),
(526, 'JV00013', NULL, '136', '2020-07-28 08:25:34', '00005', 1, 'Radio Active Source', '6.75', '2.00', '6.75', 'Anadril', '1', 'Not Available'),
(527, 'JV00013', NULL, '137', '2020-07-28 08:25:48', '00008', 14, 'Cutting Skip', '89.04', '14.00', '89.04', 'PPLi', '1', 'Not Available'),
(528, 'JV00013', NULL, '142', '2020-07-28 08:26:03', '00012', 2, 'Pup Joint 4-1/2" Vam Top', '2.12', '1.26', '2.12', 'Terubuk', '1', 'Not Available'),
(529, 'JV00013', NULL, '141', '2020-07-28 08:26:18', '00013', 38, 'Tubing Claim Protector', '37.62', '0.59', '37.62', 'Terubuk', '1', 'Not Available'),
(530, 'JV00013', NULL, '144', '2020-07-28 08:26:44', '00014', 8, 'RE-Entry Guide\r\n\r\n\r\n', '0.96', '0.06', '0.96', 'Terubuk', '1', 'Not Available'),
(531, 'JV00013', NULL, '145', '2020-07-28 08:27:04', '00015', 8, 'W/O Replacement DTD', '8.72', '0.15', '8.72', 'Terubuk', '1', 'Not Available'),
(532, 'JV00013', NULL, '146', '2020-07-28 08:28:05', '00016', 1, 'Assy 4-1/2" ', '0.75', '0.24', '0.75', 'Terubuk', '1', 'Not Available'),
(533, 'JV00013', NULL, '148', '2020-07-28 08:29:09', '00017', 2, 'Packer VGP ', '1.48', '0.20', '1.48', 'Terubuk', '1', 'Not Available'),
(534, 'JV00013', NULL, '150', '2020-07-28 08:30:08', '00019', 1, 'Sea Container , Jack Baker + Fishing Tools', '38.70', '12.00', '38.70', 'Terubuk', '1', 'Not Available'),
(535, 'JV00013', NULL, '151', '2020-07-28 08:30:37', '00020', 6, '20FT Open Top Container ', '207.36', '15.00', '207.36', 'Terubuk', '1', 'Not Available'),
(536, 'JV00013', NULL, '36', '2020-07-28 08:31:00', '00021', 120, 'Sodium Chloride', '207.60', '120.00', '207.60', 'Dowel Schlumberger', '1', 'Not Available'),
(537, 'JV00013', NULL, '29', '2020-07-28 08:31:33', '00023', 40, '0907 (40 BE)', '57.60', '40.00', '57.60', 'Dowel Schlumberger', '1', 'Not Available'),
(538, 'JV00013', NULL, '72', '2020-07-28 08:32:15', '00031', 6, 'NItrogen Bottle rack', '15.24', '6.00', '15.24', 'Belida', '1', 'Not Available'),
(539, 'JV00013', NULL, '153', '2020-07-28 08:32:26', '00033', 2, 'Sea Container Various Equipment', '75.00', '14.00', '75.00', 'Barakuda', '1', 'Not Available'),
(540, 'JV00013', NULL, '29', '2020-07-28 10:52:27', '00039', 48, 'NaCL', '69.12', '48.00', '69.12', 'Halliburton', '3', 'Not Available'),
(541, 'JV00016', NULL, '100', '2020-08-01 14:35:47', '7541095', 1, '20Ft Container NYKU', '37.50', '3.50', '37.50', 'GDSK', '1', 'To Jetty'),
(542, 'JV00016', NULL, '100', '2020-08-01 14:38:12', '7020831', 1, '20FT Container TAHU', '37.50', '2.50', '37.50', 'GDSK', '1', 'To Jetty'),
(543, 'JV00016', NULL, '100', '2020-08-01 14:40:16', '7020750', 1, '20Ft Container TAHU', '37.50', '3.50', '37.50', 'GDSK', '1', 'To Jetty'),
(544, 'JV00016', NULL, '65', '2020-08-01 14:42:22', '1500033302', 1, '20FT Container TAHU ', '38.30', '2.50', '38.30', 'GDSK', '1', 'To Jetty'),
(545, 'JV00016', NULL, '66', '2020-08-01 14:46:47', '00002', 6, 'Bag Plastic Waste', '8.64', '0.68', '8.64', 'Medco Energi', '1', 'To Jetty'),
(546, 'JV00016', NULL, '66', '2020-08-01 14:47:33', '00002', 1, 'Bag Plastic Waste', '1.44', '0.11', '1.44', 'Medco Energi', '1', 'To Jetty'),
(547, 'JV00016', NULL, '66', '2020-08-01 14:48:42', '00002', 6, 'Bag Plastic Waste', '8.64', '0.68', '8.64', 'Medco Energi', '1', 'To Jetty'),
(548, 'JV00016', NULL, '66', '2020-08-01 14:51:06', '00002', 6, 'Bag Plastic Waste', '8.64', '0.68', '8.64', 'Medco Energi', '1', 'To Jetty'),
(549, 'JV00016', NULL, '66', '2020-08-01 14:54:15', '00002', 6, 'Bag Plastic Waste', '8.64', '0.68', '8.64', 'Medco Energi', '1', 'To Jetty'),
(550, 'JV00016', NULL, '66', '2020-08-01 14:56:53', '00002', 6, 'Bag Plastic Waste', '8.64', '0.68', '8.64', 'Medco Energi', '1', 'To Jetty'),
(551, 'JV00016', NULL, '66', '2020-08-01 14:59:32', '00002', 6, 'Bag Plastic Waste', '8.64', '0.68', '8.64', 'Medco Energi', '1', 'To Jetty'),
(552, 'JV00016', NULL, '66', '2020-08-01 15:02:12', '00002', 6, 'Bag Plastic Waste', '8.64', '0.68', '8.64', 'Medco Energi', '1', 'To Jetty'),
(553, 'JV00016', NULL, '66', '2020-08-01 15:05:00', '00002', 6, 'Bag Plastic Waste', '8.64', '0.68', '8.64', 'Medco Energi', '1', 'To Jetty'),
(554, 'JV00016', NULL, '66', '2020-08-01 15:06:22', '00002', 4, 'Bag Plastic Waste', '5.76', '0.45', '5.76', 'Medco Energi', '1', 'To Jetty'),
(555, 'JV00016', NULL, '66', '2020-08-01 15:07:22', '00001', 2, 'Bag Paper Trash', '2.88', '0.24', '2.88', 'Medco Energi', '1', 'To Jetty'),
(556, 'JV00016', NULL, '66', '2020-08-01 15:09:52', '00001', 6, 'Bag Paper Trash', '8.64', '0.71', '8.64', 'Medco Energi', '1', 'To Jetty'),
(557, 'JV00016', NULL, '66', '2020-08-01 15:12:37', '00001', 6, 'Bag Paper Trash', '8.64', '0.71', '8.64', 'Medco Energi', '1', 'To Jetty'),
(558, 'JV00016', NULL, '66', '2020-08-01 15:15:19', '00001', 6, 'Bag Paper Trash', '8.64', '0.72', '8.64', 'Medco Energi', '1', 'To Jetty'),
(559, 'JV00016', NULL, '66', '2020-08-01 15:19:55', '00001', 6, 'Bag Paper Trash', '8.64', '0.71', '8.64', 'Medco Energi', '1', 'To Jetty'),
(560, 'JV00016', NULL, '66', '2020-08-01 15:22:10', '00001', 6, 'Bag Paper Trash', '8.64', '0.72', '8.64', 'Medco Energi', '1', 'To Jetty'),
(561, 'JV00016', NULL, '66', '2020-08-01 15:24:22', '00001', 6, 'Bag Paper Trash', '8.64', '0.71', '8.64', 'Medco Energi', '1', 'To Jetty'),
(562, 'JV00016', NULL, '66', '2020-08-01 15:27:36', '00001', 4, 'Bag Paper Trash', '5.76', '0.48', '5.76', 'Medco Energi', '1', 'To Jetty'),
(563, 'JV00016', NULL, '202', '2020-08-01 16:35:29', '1500033619', 1, 'Bouy', '3.38', '1.50', '3.38', 'SLB', '1', 'To Jetty'),
(564, 'JV00016', NULL, '100', '2020-08-01 16:36:00', '6052827', 1, '20FT Container KKTU', '37.50', '3.50', '37.50', 'GDSK', '1', 'To Jetty'),
(565, 'JV00016', NULL, '126', '2020-08-01 16:38:51', '1500033619', 1, '8.3 M Cargo Basket ID 28476', '13.94', '3.50', '13.94', 'SLB', '1', 'To Jetty'),
(566, 'JV00016', NULL, '132', '2020-08-01 16:43:26', '1500033472', 1, '14.3M Offshore Basket SN.B 1404', '22.31', '5.50', '22.31', 'Baker Hughes', '1', 'To Jetty'),
(567, 'JV00016', NULL, '201', '2020-08-01 16:54:29', '1500033619', 1, 'Skor Bottle ID SLB 25398 / 641402H', '9.88', '5.50', '9.88', 'SLB', '1', 'To Jetty'),
(568, 'JV00016', NULL, '100', '2020-08-01 16:57:20', '1032370', 1, '20FT Container CCLU', '37.50', '3.50', '37.50', 'GDSK', '1', 'To Jetty'),
(569, 'JV00016', NULL, '100', '2020-08-01 16:59:16', '1027862', 1, '20FT Container CCLU', '37.50', '3.50', '37.50', 'GDSK', '1', 'To Jetty'),
(570, 'JV00016', NULL, '100', '2020-08-01 17:05:21', '5752702', 1, '20FT Container DVRU', '37.50', '3.50', '37.50', 'GDSK', '1', 'To Jetty'),
(571, 'JV00016', NULL, '100', '2020-08-01 17:09:08', '2601330', 1, 'Offshore Container 20FT SN.AORU 2601330', '37.50', '14.00', '37.50', 'MI Swaco', '1', 'To Jetty'),
(572, 'JV00016', NULL, '173', '2020-08-01 17:10:11', '1500033542', 1, 'Half Container 10FT', '8.14', '2.00', '8.14', 'Dowell Anadrill', '1', 'To Jetty'),
(573, 'JV00016', NULL, '168', '2020-08-01 19:46:50', '1500033455', 1, 'Mud Logging Unit', '48.09', '14.00', '48.09', 'Geoservice', '1', 'To Jetty'),
(574, 'JV00016', NULL, '66', '2020-08-01 19:58:12', '1500033570', 1, 'Wooden Box : King Nipple & Gasket', '1.44', '0.30', '1.44', 'Halliburton', '1', 'To Jetty'),
(575, 'JV00016', NULL, '100', '2020-08-01 20:06:33', '1500033713', 1, '20FT Container S/N  OEGU 000605', '37.50', '13.00', '37.50', 'Medco Energi', '1', 'To Jetty'),
(576, 'JV00016', NULL, '218', '2020-08-01 20:26:38', '1500033742', 1, '13.3M Offshore Basket SN.AORU 133012', '20.75', '4.50', '20.75', 'Baker Hughes', '1', 'To Jetty'),
(577, 'JV00016', NULL, '34', '2020-08-01 20:33:44', '1500033742', 1, '13.3M Offshore Basket SN.TD-CB-13-012', '18.72', '6.00', '18.72', 'Baker Hughes', '1', 'To Jetty'),
(578, 'JV00016', NULL, '207', '2020-08-01 20:43:07', '1500033619', 1, 'Winch Skid unit ID.WDDS-A 722', '10.16', '7.50', '10.16', 'SLB', '1', 'To Jetty'),
(579, 'JV00016', NULL, '65', '2020-08-01 20:50:23', 'OEGU 16700', 1, '20FT Container', '38.30', '8.00', '38.30', 'Medco Energi', '1', 'To Jetty'),
(580, 'JV00016', NULL, '212', '2020-08-01 20:58:01', '1500033570', 1, 'Basket AORU 4602870', '21.14', '7.50', '21.14', 'Halliburton', '1', 'To Jetty'),
(581, 'JV00016', NULL, '178', '2020-08-01 21:03:46', '1500033463', 1, 'Steel Basket TD-CB-12-011', '20.66', '9.00', '20.66', 'NOV', '1', 'To Jetty'),
(582, 'JV00016', NULL, '174', '2020-08-01 21:16:52', '1500033542', 1, 'Basket TD-CB-12-003', '20.94', '12.50', '20.94', 'Dowell Anadrill', '1', 'To Jetty'),
(583, 'JV00016', NULL, '167', '2020-08-01 21:21:57', '1500033582', 1, 'Iso Tank 9602', '39.92', '23.00', '39.92', 'PPLi', '1', 'To Jetty'),
(584, 'JV00016', NULL, '167', '2020-08-01 21:31:54', '1500033582', 1, 'Opentop Container 20FT BSLU', '39.92', '12.00', '39.92', 'PPLi', '1', 'To Jetty'),
(585, 'JV00016', NULL, '167', '2020-08-01 21:44:19', '1500033582', 1, 'Opentop Container 20FT BSLU 9202940', '39.92', '10.00', '39.92', 'PPLi', '1', 'To Jetty'),
(586, 'JV00016', NULL, '206', '2020-08-01 21:54:20', '1500033619', 1, 'Wireline Generator ID.GSU-LWU 002', '2.50', '1.00', '2.50', 'SLB', '1', 'To Jetty'),
(587, 'JV00016', NULL, '208', '2020-08-01 21:58:06', '1500033619', 1, 'Logging Cabin ID.CCL-LWU 002', '14.74', '1.70', '14.74', 'SLB', '1', 'To Jetty'),
(588, 'JV00016', NULL, '219', '2020-08-01 22:01:53', '1500033562', 1, 'Multi Split Power Pack 103198', '7.02', '4.50', '7.02', 'Halliburton', '1', 'To Jetty'),
(589, 'JV00016', NULL, '158', '2020-08-01 22:04:31', '1500033364', 1, 'N2 Tank', '18.97', '6.00', '18.97', 'Ronard', '1', 'To Jetty'),
(590, 'JV00016', NULL, '215', '2020-08-01 22:11:28', '1500033635', 1, 'Offshore Container 10FT SN.FSDG 3165', '20.25', '2.50', '20.25', 'Vintage', '1', 'To Jetty'),
(591, 'JV00016', NULL, '126', '2020-08-01 22:16:23', '1500033619', 1, '8.3M Cargo Basket ID.TD-CB-8002', '13.94', '3.00', '13.94', 'SLB', '1', 'To Jetty'),
(592, 'JV00016', NULL, '27', '2020-08-01 22:18:42', '1500033570', 1, 'Opentop container 20FT AORU 3601910', '38.44', '9.50', '38.44', 'Halliburton', '1', 'To Jetty'),
(593, 'JV00016', NULL, '100', '2020-08-01 22:20:30', '0006051', 1, '20FT Container ', '37.50', '7.00', '37.50', 'Medco Energi', '1', 'To Jetty'),
(594, 'JV00016', NULL, '215', '2020-08-01 22:21:22', '1500033635', 1, 'Offshore Container 10FT SN.FSDG 3165', '20.25', '3.00', '20.25', 'Vintage', '1', 'To Jetty'),
(595, 'JV00016', NULL, '165', '2020-08-01 22:28:05', '1500033673', 1, 'Water Bag ', '2.25', '1.00', '2.25', 'Indospec Asia', '1', 'To Jetty'),
(596, 'JV00016', NULL, '105', '2020-08-01 22:31:27', '1500033621', 2, 'Liferaft', '4.00', '1.00', '4.00', 'Segara Permai', '1', 'To Jetty'),
(597, 'JV00016', NULL, '105', '2020-08-01 22:32:59', '1500033621', 1, 'Liferaft', '2.00', '0.50', '2.00', 'Segara Permai', '1', 'To Jetty'),
(598, 'JV00016', NULL, '66', '2020-08-01 22:35:35', '80813004', 1, 'D168', '1.44', '1.50', '1.50', 'Dowell Anadrill', '1', 'To Jetty'),
(599, 'JV00016', NULL, '66', '2020-08-01 22:36:21', 'CY80813004', 1, 'D193', '1.44', '1.00', '1.44', 'Dowell Anadrill', '1', 'To Jetty'),
(600, 'JV00016', NULL, '105', '2020-08-01 22:37:16', '1500033621', 1, 'Liferaft', '2.00', '0.50', '2.00', 'Segara Permai', '1', 'To Jetty'),
(601, 'JV00016', NULL, '102', '2020-08-01 22:38:49', '15000536', 2, '4 Box + 1 Plt Part VRU', '2.00', '0.80', '2.00', 'Eka Maulana', '1', 'To Jetty'),
(602, 'JV00016', NULL, '154', '2020-08-01 22:39:52', '1500033118', 1, 'Sertification Inflatable Liferaft', '1.65', '0.50', '1.65', 'Segara Permai', '1', 'To Jetty'),
(603, 'JV00016', NULL, '222', '2020-08-01 22:40:40', '1500033617', 1, 'Paint Material Sea Barrier', '0.05', '0.50', '0.50', 'Dimas Chandra', '1', 'To Jetty'),
(604, 'JV00016', NULL, '221', '2020-08-01 22:42:19', '1500033767', 1, 'Prowell Lifting Sling unit *Rejected = 3 set', '1.01', '0.50', '1.01', 'Interwell', '1', 'To Jetty'),
(605, 'JV00016', NULL, '205', '2020-08-01 22:43:56', '1500033619', 1, 'Wireline Power Pack ID.DAPS-A 3734', '7.49', '3.50', '7.49', 'SLB', '1', 'To Jetty'),
(606, 'JV00016', NULL, '216', '2020-08-01 22:46:27', '1500033635', 1, 'Half Container 20FT SN.FSHH6244', '22.50', '4.00', '22.50', 'Vintage', '1', 'To Jetty'),
(607, 'JV00016', NULL, '209', '2020-08-01 22:49:29', '1500033619', 2, 'Wooden Box  ', '1.90', '1.00', '1.90', 'SLB', '1', 'To Jetty'),
(608, 'JV00016', NULL, '154', '2020-08-01 22:51:35', '1500033118', 1, 'Sertification Inflatable Liferaft', '1.65', '0.50', '1.65', 'Segara Permai', '1', 'To Jetty'),
(609, 'JV00016', NULL, '105', '2020-08-01 22:52:19', '1500033621', 2, 'Liferaft', '4.00', '1.00', '4.00', 'Segara Permai', '1', 'To Jetty'),
(610, 'JV00016', NULL, '7', '2020-08-01 22:52:58', '23000146', 1, 'Container AORU 23000146 ', '18.90', '3.50', '18.90', 'Well Tec', '1', 'To Jetty'),
(611, 'JV00016', NULL, '66', '2020-08-01 22:54:41', '80813004', 1, 'D168', '1.44', '1.50', '1.50', 'Dowell Anadrill', '1', 'To Jetty'),
(612, 'JV00016', NULL, '66', '2020-08-01 22:56:52', '80813004', 1, 'D168', '1.44', '1.50', '1.50', 'Dowell Anadrill', '1', 'To Jetty'),
(613, 'JV00016', NULL, '156', '2020-08-01 22:59:00', '1500033536', 1, 'Part VRU', '1.00', '1.52', '1.52', 'Eka Maulana', '1', 'To Jetty'),
(614, 'JV00016', NULL, '160', '2020-08-01 23:01:07', '1500033623', 1, 'Cylinder Rack SEU-53-RAC009-03', '1.50', '0.50', '1.50', 'Sarku', '1', 'To Jetty'),
(615, 'JV00016', NULL, '155', '2020-08-01 23:01:39', '1500033544', 1, 'Cylinder Rack  MOCW-RACK-ACE', '2.10', '0.50', '2.10', 'Alfons Wirahadikususma', '1', 'To Jetty'),
(616, 'JV00016', NULL, '155', '2020-08-01 23:03:30', '1500033623', 1, 'Cylinder Rack MOCW-Rack-OXY-04', '2.10', '2.10', '2.10', 'Sarku', '1', 'To Jetty'),
(617, 'JV00016', NULL, '155', '2020-08-01 23:04:10', '1500033544', 1, 'Cylinder Rack  MOCW-RACK-OXY', '2.10', '4.00', '4.00', 'Alfons Wirahadikususma', '1', 'To Jetty'),
(618, 'JV00016', NULL, '198', '2020-08-01 23:07:07', '1205-46', 1, 'DNV Box SN.Yap 1205-46', '4.20', '2.50', '4.20', 'Nabors', '1', 'To Jetty'),
(619, 'JV00016', NULL, '185', '2020-08-01 23:08:07', '047', 1, 'Transport Frame SN.C-TFPT-047', '4.06', '2.50', '4.06', 'Nabors', '1', 'To Jetty'),
(620, 'JV00016', NULL, '181', '2020-08-01 23:09:37', 'SN 1092-2', 1, 'HYD Power Unit , Diesel', '5.75', '2.50', '5.75', 'Nabors', '1', 'To Jetty'),
(621, 'JV00016', NULL, '189', '2020-08-01 23:12:43', '0157-1-500', 1, 'Hyd Power unit Electric', '3.75', '2.50', '3.75', 'Nabors', '1', 'To Jetty'),
(622, 'JV00016', NULL, '182', '2020-08-01 23:13:27', 'SN 9187', 1, 'Power Unit Electric', '4.49', '2.50', '4.49', 'Nabors', '1', 'To Jetty'),
(623, 'JV00016', NULL, '190', '2020-08-01 23:15:47', '1205-25', 1, 'Offshore Basket SN.Yap-1205-25', '3.70', '4.50', '4.50', 'Nabors', '1', 'To Jetty'),
(624, 'JV00016', NULL, '177', '2020-08-01 23:17:13', '1500033463', 1, 'Steel Box CS-003', '1.70', '0.50', '1.70', 'NOV', '1', 'To Jetty'),
(625, 'JV00016', NULL, '185', '2020-08-01 23:18:52', '045', 1, 'Transport Frame SN.C-TFPT-045', '4.06', '2.50', '4.06', 'Nabors', '1', 'To Jetty'),
(626, 'JV00016', NULL, '184', '2020-08-01 23:21:22', '019', 1, 'Transport Frame SN.C-TFPT-019', '4.56', '2.50', '4.56', 'Nabors', '1', 'To Jetty'),
(627, 'JV00016', NULL, '197', '2020-08-01 23:25:07', '120762', 1, 'Basket SN.Yap 1207-62', '5.04', '2.00', '5.04', 'Nabors', '1', 'To Jetty'),
(628, 'JV00016', NULL, '198', '2020-08-01 23:26:09', '1500033707', 1, 'DNV Box SN.Yap 1207-59', '4.20', '3.00', '4.20', 'Nabors', '1', 'To Jetty'),
(629, 'JV00016', NULL, '108', '2020-08-01 23:29:05', 'SLB 12162', 1, 'Metal Box , SLB 12162', '1.00', '1.50', '1.50', 'Dowell Anadrill', '1', 'To Jetty'),
(630, 'JV00016', NULL, '198', '2020-08-02 01:35:37', '1205-31', 1, 'DNV Box SN.Yap 1205-31', '4.20', '2.50', '4.20', 'Nabors', '1', 'To Jetty'),
(631, 'JV00016', NULL, '186', '2020-08-02 01:36:46', '0042', 1, 'Transport Frame SN , C-PFPT-0042', '4.32', '2.50', '4.32', 'Nabors', '1', 'To Jetty'),
(632, 'JV00016', NULL, '195', '2020-08-02 01:38:08', '1103-02', 1, 'Basket SN.Yap 1103-02', '3.24', '1.50', '3.24', 'Nabors', '1', 'To Jetty'),
(633, 'JV00016', NULL, '192', '2020-08-02 01:38:49', '045', 1, 'Break Out Vise ', '3.79', '2.00', '3.79', 'Nabors', '1', 'To Jetty'),
(634, 'JV00016', NULL, '193', '2020-08-02 01:39:29', '1207-53', 1, 'Offshore Basket SN.Yap-1207-53', '3.78', '2.00', '3.78', 'Nabors', '1', 'To Jetty'),
(635, 'JV00016', NULL, '183', '2020-08-02 01:39:58', 'Yap 1103-0', 1, 'DNV Box SN.Yap 1103-05', '4.19', '3.00', '4.19', 'Nabors', '1', 'To Jetty'),
(636, 'JV00016', NULL, '155', '2020-08-02 01:44:50', '1500033623', 1, 'Cylinder Rack : SEU-53-ROX016', '2.10', '1.50', '2.10', 'Sarku', '1', 'To Jetty'),
(637, 'JV00016', NULL, '179', '2020-08-02 01:45:54', '1500033463', 1, '6FT Mini Container , Medco', '8.10', '3.00', '8.10', 'Medco Energi', '1', 'To Jetty'),
(638, 'JV00016', NULL, '61', '2020-08-02 01:47:44', '1500033538', 1, 'Empty Tote Tank Ex Chemical', '2.39', '1.00', '2.39', 'Luas Birus Utama', '1', 'To Jetty'),
(639, 'JV00016', NULL, '61', '2020-08-02 01:48:21', '1500033631', 1, 'Empty Tote Tank S - 9441', '2.39', '1.00', '2.39', 'Luas Birus Utama', '1', 'To Jetty'),
(640, 'JV00016', NULL, '161', '2020-08-02 01:48:35', '1500033631', 1, 'Empty Tote Tank SZB - 4431', '3.07', '1.00', '3.07', 'Luas Birus Utama', '1', 'To Jetty'),
(641, 'JV00016', NULL, '61', '2020-08-02 01:48:52', '1500033631', 1, 'Empty Tote Tank S - 965 ND', '2.39', '1.00', '2.39', 'Luas Birus Utama', '1', 'To Jetty'),
(642, 'JV00016', NULL, '161', '2020-08-02 01:49:29', '1500033631', 1, 'Empty Tote Tank S - 9432', '3.07', '1.00', '3.07', 'Luas Birus Utama', '1', 'To Jetty'),
(643, 'JV00016', NULL, '61', '2020-08-02 01:52:12', '1500033631', 1, 'Empty Tote Tank S-9523', '2.39', '1.00', '2.39', 'Luas Birus Utama', '1', 'To Jetty'),
(644, 'JV00016', NULL, '162', '2020-08-02 01:52:47', '1500033631', 1, 'Empty Tote Tank S - 965 ND', '5.05', '1.00', '5.05', 'Luas Birus Utama', '1', 'To Jetty'),
(645, 'JV00016', NULL, '162', '2020-08-02 01:52:59', '1500033631', 1, 'Empty Tote Tank S - 9282', '5.05', '1.00', '5.05', 'Luas Birus Utama', '1', 'To Jetty'),
(646, 'JV00016', NULL, '61', '2020-08-02 01:53:15', '1500033631', 1, 'Empty Tote Tank S - 9653', '2.39', '1.00', '2.39', 'Luas Birus Utama', '1', 'To Jetty'),
(647, 'JV00016', NULL, '61', '2020-08-02 01:53:40', '1500033546', 1, 'Empty Chemical Starhib WMS-697', '2.39', '1.00', '2.39', 'Luas Birus Utama', '1', 'To Jetty'),
(648, 'JV00016', NULL, '61', '2020-08-02 01:53:53', '1500033546', 1, 'Empty Chemical Starhib WMS-965', '2.39', '1.00', '2.39', 'Luas Birus Utama', '1', 'To Jetty'),
(649, 'JV00016', NULL, '61', '2020-08-02 01:54:10', '1500033631', 1, 'Empty Tote Tank S - 9282', '2.39', '1.00', '2.39', 'Luas Birus Utama', '1', 'To Jetty'),
(650, 'JV00016', NULL, '160', '2020-08-02 01:58:06', '1500033623', 1, 'Cylinder Rack SEU-53-RAC009', '1.50', '0.50', '1.50', 'Sarku', '1', 'To Jetty'),
(651, 'JV00016', NULL, '214', '2020-08-02 02:07:07', '1500033572', 1, 'Panel Cutting Dryer complete with 4 legs', '2.59', '2.00', '2.59', 'Halliburton', '1', 'To Jetty'),
(652, 'JV00016', NULL, '166', '2020-08-02 02:07:24', '1500033679', 1, 'REntal Blue Rack Acetelene', '2.88', '1.50', '2.88', 'Indoship Marine', '1', 'To Jetty'),
(653, 'JV00016', NULL, '204', '2020-08-02 02:10:10', '1500033619', 1, 'Dog House ID SLB-GSU-6MDG-001', '20.16', '8.00', '20.16', 'SLB', '1', 'To Jetty'),
(654, 'JV00016', NULL, '108', '2020-08-02 02:12:59', '1500033619', 1, 'Fishing Kit ID JAO-FB-1309', '1.00', '1.00', '1.00', 'SLB', '1', 'To Jetty'),
(655, 'JV00016', NULL, '203', '2020-08-02 02:13:35', '1500033619', 1, 'WAC-SS 0642/SLB 05819', '15.00', '3.50', '15.00', 'SLB', '1', 'To Jetty'),
(656, 'JV00016', NULL, '213', '2020-08-02 02:15:50', '1500033572', 1, 'Cutting Dryer complete with 75 HP Electrik', '12.32', '4.00', '12.32', 'Halliburton', '1', 'To Jetty'),
(657, 'JV00016', NULL, '211', '2020-08-02 02:16:28', '1500033570', 1, 'Tool Box c/w 4 legs Sling & Shackle', '1.89', '1.00', '1.89', 'Halliburton', '1', 'To Jetty'),
(658, 'JV00016', NULL, '157', '2020-08-02 02:18:36', '1500033335', 1, 'Rack TBR c/w Sling', '3.75', '1.50', '3.75', 'Medco Energi', '1', 'To Jetty'),
(659, 'JV00016', NULL, '169', '2020-08-02 02:19:09', '1500033576', 1, 'Cylinder Rack SN BSU', '4.19', '1.50', '4.19', 'Sarku', '1', 'To Jetty'),
(660, 'JV00016', NULL, '131', '2020-08-02 02:21:33', '1500033542', 1, 'Empty 12.3 M Offshore Basket', '22.82', '4.00', '22.82', 'Dowell Anadrill', '1', 'To Jetty'),
(661, 'JV00016', NULL, '159', '2020-08-02 02:21:59', '1500033389', 1, 'Cylinder Rack 16 BR', '4.21', '1.50', '4.21', 'Medco Energi', '1', 'To Jetty'),
(662, 'JV00016', NULL, '166', '2020-08-02 02:22:16', '1500033679', 1, 'REntal Blue Rack  Oxygen', '2.88', '1.50', '2.88', 'Indoship Marine', '1', 'To Jetty'),
(663, 'JV00016', NULL, '170', '2020-08-02 02:23:29', '1500033576', 1, 'Cylinder Rack SN BSU AR 001', '1.55', '1.50', '1.55', 'Sarku', '1', 'To Jetty'),
(664, 'JV00016', NULL, '65', '2020-08-02 02:24:11', '1500033846', 1, 'Mobile Grasscutter , Type Raider', '38.30', '2.50', '38.30', 'GDSK', '1', 'To Jetty'),
(665, 'JV00016', NULL, '220', '2020-08-02 02:26:36', '1500033910', 1, 'Skid Ganzet 180 KVA SN.SEU-52-FGN 001-05', '16.56', '4.00', '16.56', 'Halliburton', '1', 'To Jetty'),
(666, 'JV00016', NULL, '176', '2020-08-02 02:26:59', '1500033463', 2, 'Lay Down Cradle ', '22.40', '0.50', '22.40', 'NOV', '1', 'To Jetty'),
(667, 'JV00016', NULL, '102', '2020-08-02 02:28:24', '15000536', 1, '4 Box + 1 Plt Part VRU', '1.00', '0.40', '1.00', 'Eka Maulana', '1', 'To Jetty'),
(668, 'JV00016', NULL, '102', '2020-08-02 02:29:09', '15000536', 1, '4 Box + 1 Plt Part VRU', '1.00', '0.40', '1.00', 'Eka Maulana', '1', 'To Jetty'),
(669, 'JV00016', NULL, '102', '2020-08-02 02:37:33', '15000536', 1, '4 Box + 1 Plt Part VRU', '1.00', '0.40', '1.00', 'Eka Maulana', '1', 'To Jetty'),
(670, 'JV00016', NULL, '187', '2020-08-02 02:42:52', 'RS-030', 1, 'RIg Up Stand , RS-030', '6.16', '2.50', '6.16', 'Nabors', '1', 'To Jetty'),
(671, 'JV00016', NULL, '39', '2020-08-02 02:43:02', '1500033619', 1, 'Mini Container ID JAO -BB 1306', '8.75', '3.00', '8.75', 'SLB', '1', 'To Jetty'),
(672, 'JV00016', NULL, '210', '2020-08-02 02:43:12', '1500033570', 1, 'Holding Tank with 4 lega sling', '2.16', '1.30', '2.16', 'Halliburton', '1', 'To Jetty'),
(673, 'JV00016', NULL, '183', '2020-08-02 02:43:31', 'SN.Yap 120', 1, 'DNV Box SN.Yap 1205-48', '4.19', '5.00', '5.00', 'Nabors', '1', 'To Jetty'),
(674, 'JV00016', NULL, '172', '2020-08-02 02:43:47', '1500033609', 1, '6FT Container Medco', '8.67', '2.50', '8.67', 'Medco Energi', '1', 'To Jetty'),
(675, 'JV00016', NULL, '165', '2020-08-02 02:43:56', '1500033673', 1, 'Water Bag ', '2.25', '1.00', '2.25', 'Indospec Asia', '1', 'To Jetty'),
(676, 'JV00016', NULL, '217', '2020-08-02 02:45:11', '00004', 1, 'Wooden Box Mud Lab Testing Equipment', '1.20', '0.50', '1.20', 'Baroid', '1', 'To Jetty'),
(677, 'JV00016', NULL, '171', '2020-08-02 02:45:19', '1500033607', 1, '6FT Container AME 5816', '8.59', '2.50', '8.59', 'Medco Energi', '1', 'To Jetty'),
(678, 'JV00016', NULL, '202', '2020-08-02 02:45:44', '15000170', 1, 'D-Air 2', '3.38', '1.00', '3.38', 'Halliburton', '1', 'To Jetty'),
(679, 'JV00002', NULL, '14', '2020-08-03 11:29:07', '1500003', 1, 'Empty Tote Tank', '4.05', '0.25', '4.05', 'Champion', '1', 'To Jetty'),
(680, 'JV00002', NULL, '10', '2020-08-03 11:31:02', '1500004', 1, 'Empty IBC Tank', '4.05', '0.50', '4.05', 'Champion', '1', 'To Jetty'),
(681, 'JV00002', 'IC000052', '10', '2020-08-05 10:06:44', '1500004', 1, 'Empty IBC Tank', '4.05', '0.50', '4.05', 'Champion', '1', 'To Jetty'),
(682, 'JV00017', 'IC000402', '38', '2020-08-07 08:46:25', '277', 1, 'Waste Skip ID FEL 277', '5.01', '1.70', '5.01', 'Premier Oil', '1', 'To Yard'),
(683, 'JV00017', 'IC000410', '132', '2020-08-07 08:49:21', '281', 1, 'Waste Skip FEL 281', '5.21', '1.75', '5.21', 'Premier Oil', '1', 'To Yard'),
(684, 'JV00017', 'IC000403', '38', '2020-08-07 08:50:06', '282', 1, 'Waste Skip  NO FEL 282', '5.01', '1.50', '5.01', 'Premier Oil', '1', 'To Yard'),
(685, 'JV00017', 'IC000407', '38', '2020-08-07 08:54:25', '297', 1, 'Waste Skip ID FEL 297', '5.01', '1.60', '5.01', 'Premier Oil', '1', 'To Yard'),
(686, 'JV00018', 'IC000455', '148', '2020-08-07 08:54:29', '001', 2, 'OC Merk Lenovo', '0.18', '0.05', '0.18', 'Star Energy', '1', 'To Jetty'),
(687, 'JV00017', 'IC000424', '137', '2020-08-07 08:57:19', '1437428', 1, '10FT Half Opentop Container OEG-1437428', '9.56', '3.00', '9.56', 'Premier Oil', '1', 'To Yard'),
(688, 'JV00017', 'IC000441', '144', '2020-08-07 09:00:40', '1436545', 1, '10FT opentop Container ', '11.03', '3.00', '11.03', 'Premier Oil', '1', 'To Jetty'),
(689, 'JV00017', 'IC000406', '38', '2020-08-07 09:03:22', '295', 1, 'Waste Skip  NO FEL 295', '5.01', '2.20', '5.01', 'Premier Oil', '1', 'To Yard'),
(690, 'JV00018', 'IC000453', '55', '2020-08-07 09:07:11', 'SE-10', 1, 'Half Opentop Container 20FT', '18.88', '2.50', '18.88', 'Star Energy', '1', 'To Jetty'),
(691, 'JV00017', 'IC000409', '132', '2020-08-07 09:10:18', '272', 1, 'Waste Skip FEL 272', '5.21', '1.50', '5.21', 'Premier Oil', '1', 'To Yard'),
(692, 'JV00017', 'IC000405', '38', '2020-08-07 09:12:40', '287', 1, 'Waste Skip  NO FEL 287', '5.01', '1.60', '5.01', 'Premier Oil', '1', 'To Yard'),
(693, 'JV00018', 'IC000452', '54', '2020-08-07 09:24:56', 'SE-01 , SE', 1, 'Half Opentop Container ', '9.44', '1.50', '9.44', 'Star Energy', '1', 'To Jetty'),
(694, 'JV00018', 'IC000452', '54', '2020-08-07 09:29:02', 'SE-01 , SE', 1, 'Half Opentop Container ', '9.44', '1.50', '9.44', 'Star Energy', '1', 'To Jetty'),
(695, 'JV00017', 'IC000445', '140', '2020-08-07 09:29:25', '2444165', 1, '20FT Opentop Container', '22.05', '4.50', '22.05', 'Premier Oil', '1', 'To Jetty'),
(696, 'JV00017', 'IC000444', '138', '2020-08-07 09:34:28', '2443723', 1, '20FT Opentop Container', '18.97', '3.10', '18.97', 'Premier Oil', '1', 'To Jetty'),
(697, 'JV00017', 'IC000448', '22', '2020-08-07 09:38:12', '16-002', 1, 'Nitrogen Rack', '2.98', '1.60', '2.98', 'Premier Oil', '1', 'To Yard'),
(698, 'JV00017', 'IC000413', '142', '2020-08-07 09:40:11', '01', 1, 'Rack Bottle Gas ID No.01', '1.01', '0.20', '1.01', 'Premier Oil', '1', 'To Yard'),
(699, 'JV00017', 'IC000447', '45', '2020-08-07 09:45:16', '1282', 1, 'ToteTank ID OHF-1282', '5.01', '1.10', '5.01', 'Premier Oil', '1', 'To Yard'),
(700, 'JV00017', 'IC000411', '132', '2020-08-07 09:46:56', '288', 1, 'Waste Skip FEL 288', '5.21', '1.25', '5.21', 'Premier Oil', '1', 'To Yard'),
(701, 'JV00017', 'IC000404', '38', '2020-08-07 09:49:30', '283', 1, 'Waste Skip ID FEL 283', '5.01', '2.00', '5.01', 'Premier Oil', '1', 'To Yard'),
(702, 'JV00017', 'IC000412', '132', '2020-08-07 09:53:01', '299', 1, 'Waste Skip FEL 299', '5.21', '1.30', '5.21', 'Premier Oil', '1', 'To Yard'),
(703, 'JV00017', 'IC000408', '132', '2020-08-07 09:57:19', '271', 1, 'Waste Skip NO FEL 271', '5.21', '1.75', '5.21', 'Premier Oil', '1', 'To Yard'),
(704, 'JV00017', 'IC000443', '44', '2020-08-07 10:02:35', '2440806', 1, '20FT Half Opentop Container', '19.11', '6.00', '19.11', 'Premier Oil', '1', 'To Jetty'),
(705, 'JV00017', 'IC000446', '44', '2020-08-07 10:09:04', '2447035', 1, '20FT Half Opentop Container', '19.11', '6.00', '19.11', 'Premier Oil', '1', 'To Jetty'),
(706, 'JV00017', 'IC000442', '137', '2020-08-07 10:12:02', '1442152', 1, '10FT Half Opentop Container', '9.56', '5.00', '9.56', 'Premier Oil', '1', 'To Jetty');
INSERT INTO `actual_stevedoring` (`id_as`, `id_joborder`, `id_cargo`, `id_jenis`, `time_as`, `doc_no_as`, `qty_as`, `rincian_cargo`, `m3_as`, `ton_as`, `revton_as`, `remarks_as`, `row_version`, `keterangan`) VALUES
(707, 'JV00017', 'IC000425', '137', '2020-08-07 10:14:59', '1441921', 1, '10Ft Half Opentop Container OEG-1441921', '9.56', '3.00', '9.56', 'Premier Oil', '1', 'To Jetty'),
(708, 'JV00017', 'IC000435', '40', '2020-08-07 10:18:11', '1009498', 1, '10FT Food Stuff Container Frez', '18.31', '3.50', '18.31', 'BBS', '1', 'To Trucking'),
(709, 'JV00017', 'IC000438', '40', '2020-08-07 10:20:35', '1200591', 1, '10FT Dry Food Container', '18.31', '2.50', '18.31', 'BBS', '1', 'To Trucking'),
(710, 'JV00017', 'IC000439', '41', '2020-08-07 10:24:03', '1201509', 1, '10FT Dry Container', '18.01', '3.00', '18.01', 'BBS', '1', 'To Trucking'),
(711, 'JV00017', 'IC000437', '41', '2020-08-07 10:26:51', '1009522', 1, '10FT Chiller Food Container', '18.01', '3.00', '18.01', 'BBS', '1', 'To Trucking'),
(712, 'JV00017', 'IC000436', '41', '2020-08-07 10:29:40', '1009100', 1, '10FT Frozen Food Container', '18.01', '3.00', '18.01', 'BBS', '1', 'To Trucking'),
(713, 'JV00018', 'IC000454', '146', '2020-08-07 10:36:01', 'SE-2', 1, 'Empty Container 6FT', '8.55', '1.50', '8.55', 'Star Energy', '1', 'To Jetty'),
(714, 'JV00018', 'IC000451', '49', '2020-08-07 10:36:30', '2007908', 1, 'Dry Container 20FT', '37.77', '3.65', '37.77', 'BBS', '1', 'To Jetty'),
(715, 'JV00018', 'IC000450', '49', '2020-08-07 10:42:29', '0720677', 1, 'Empty Reefer Container 20FT', '37.77', '3.65', '37.77', 'BBS', '1', 'To Jetty'),
(716, 'JV00018', 'IC000449', '49', '2020-08-07 10:47:21', '1189256', 1, 'Dry Container 20FT', '37.77', '3.65', '37.77', 'BBS', '1', 'To Jetty'),
(717, 'JV00017', 'IC000416', '39', '2020-08-07 10:48:55', '690602', 1, 'Mini Container ID OEG 690602', '8.75', '1.50', '8.75', 'Premier Oil', '1', 'To Yard'),
(718, 'JV00017', 'IC000434', '39', '2020-08-07 10:52:52', '697655', 1, 'Mini Container OEG 697655', '8.75', '2.35', '8.75', 'Premier Oil', '1', 'To Yard'),
(719, 'JV00017', 'IC000432', '143', '2020-08-07 10:57:06', '697610', 1, 'MIni Container OEG 697610', '8.87', '1.90', '8.87', 'Premier Oil', '1', 'To Yard'),
(720, 'JV00017', 'IC000421', '39', '2020-08-07 13:34:25', '697030', 1, 'Mini Container ID OEG 697030', '8.75', '1.70', '8.75', 'Premier Oil', '1', 'To Yard'),
(721, 'JV00017', 'IC000415', '39', '2020-08-07 13:39:14', '690218', 1, 'Mini Container ID OEG 690218', '8.75', '1.60', '8.75', 'Premier Oil', '1', 'To Yard'),
(722, 'JV00017', 'IC000427', '39', '2020-08-07 13:39:56', '690567', 1, 'Mini Container OEG 690567', '8.75', '1.60', '8.75', 'Premier Oil', '1', 'To Yard'),
(723, 'JV00017', 'IC000428', '141', '2020-08-07 13:41:19', '021', 1, 'Plastic Box : FPS-DS-Box-21', '4.88', '1.85', '4.88', 'Premier Oil', '1', 'To Yard'),
(724, 'JV00017', 'IC000418', '39', '2020-08-07 13:42:09', '697008', 1, 'Mini Container ID OEG 697008', '8.75', '2.00', '8.75', 'Premier Oil', '1', 'To Yard'),
(725, 'JV00017', 'IC000420', '39', '2020-08-07 13:43:07', '697024', 1, 'Mini Container ID OEG 697024', '8.75', '1.60', '8.75', 'Premier Oil', '1', 'To Yard'),
(726, 'JV00017', 'IC000422', '39', '2020-08-07 13:44:49', '697653', 1, 'Mini Container ID OEG 697653', '8.75', '2.10', '8.75', 'Premier Oil', '1', 'To Yard'),
(727, 'JV00017', 'IC000429', '143', '2020-08-07 13:47:36', '690597', 1, 'Mini Container OEG 690597', '8.87', '2.00', '8.87', 'Premier Oil', '1', 'To Yard'),
(728, 'JV00017', 'IC000419', '39', '2020-08-07 13:49:34', '697023', 1, 'Mini Container ID OEG 697023', '8.75', '2.50', '8.75', 'Premier Oil', '1', 'To Yard'),
(729, 'JV00017', 'IC000414', '39', '2020-08-07 13:52:05', '690215', 1, 'Mini Container ID OEG 690215', '8.75', '1.50', '8.75', 'Premier Oil', '1', 'To Yard'),
(730, 'JV00017', 'IC000433', '141', '2020-08-07 13:54:07', '697628', 1, 'Plastic Box OEG 697628', '4.88', '1.85', '4.88', 'Premier Oil', '1', 'To Yard'),
(731, 'JV00017', 'IC000423', '39', '2020-08-07 13:55:48', '697656', 1, 'Mini Container ID OEG 697656', '8.75', '1.50', '8.75', 'Premier Oil', '1', 'To Yard'),
(732, 'JV00017', 'IC000426', '134', '2020-08-07 13:58:47', '690220', 1, 'Mini Container OEG 690220', '8.12', '2.50', '8.12', 'Premier Oil', '1', 'To Yard'),
(733, 'JV00017', 'IC000417', '39', '2020-08-07 14:01:09', '696644', 1, 'Mini Container ID OEG 696644', '8.75', '1.70', '8.75', 'Premier Oil', '1', 'To Yard'),
(734, 'JV00017', 'IC000430', '143', '2020-08-07 14:03:11', '690614', 1, 'Mini Container 690614', '8.87', '2.40', '8.87', 'Premier Oil', '1', 'To Yard'),
(735, 'JV00017', 'IC000431', '39', '2020-08-07 14:05:14', '696643', 1, 'MIni Container OEG 696643', '8.75', '1.60', '8.75', 'Premier Oil', '1', 'To Yard'),
(736, 'JV00019', 'IC000470', '65', '2020-08-14 19:41:38', '5205070', 1, 'Empty 20FT Container GDSK FSCU 5205070', '38.30', '3.50', '38.30', 'GDSK', '1', 'To Jetty'),
(737, 'JV00019', 'IC000506', '25', '2020-08-14 19:43:23', '3168', 1, 'Empty Container FSDG 3168 ', '18.97', '2.50', '18.97', 'Vantage  ', '1', 'To Jetty'),
(738, 'JV00019', 'IC000473', '65', '2020-08-14 19:48:19', '8026028', 1, 'Empty 20Ft Container GDSK CNHU 8026028', '38.30', '3.50', '38.30', 'GDSK', '1', 'To Jetty'),
(739, 'JV00019', 'IC000463', '66', '2020-08-14 19:55:39', '1500034132', 11, 'Domestic Waste', '15.84', '1.05', '15.84', 'Medco Energi', '1', 'To Jetty'),
(740, 'JV00019', 'IC000463', '66', '2020-08-14 19:57:46', '1500034132', 10, 'Domestic Waste', '14.40', '0.96', '14.40', 'Medco Energi', '1', 'To Jetty'),
(741, 'JV00019', 'IC000463', '66', '2020-08-14 20:01:40', '1500034132', 12, 'Domestic Waste', '17.28', '1.15', '17.28', 'Medco Energi', '1', 'To Jetty'),
(742, 'JV00019', 'IC000463', '66', '2020-08-14 20:05:35', '1500034132', 12, 'Domestic Waste', '17.28', '1.15', '17.28', 'Medco Energi', '1', 'To Jetty'),
(743, 'JV00019', 'IC000463', '66', '2020-08-14 20:09:08', '1500034132', 9, 'Domestic Waste', '12.96', '0.86', '12.96', 'Medco Energi', '1', 'To Jetty'),
(744, 'JV00019', 'IC000463', '66', '2020-08-14 20:13:28', '1500034132', 10, 'Domestic Waste', '14.40', '0.95', '14.40', 'Medco Energi', '1', 'To Jetty'),
(745, 'JV00019', 'IC000463', '66', '2020-08-14 20:17:40', '1500034132', 9, 'Domestic Waste', '12.96', '0.86', '12.96', 'Medco Energi', '1', 'To Jetty'),
(746, 'JV00019', 'IC000463', '66', '2020-08-14 20:21:35', '1500034132', 9, 'Domestic Waste', '12.96', '0.86', '12.96', 'Medco Energi', '1', 'To Jetty'),
(747, 'JV00019', 'IC000463', '66', '2020-08-14 20:24:10', '1500034132', 8, 'Domestic Waste', '11.52', '0.76', '11.52', 'Medco Energi', '1', 'To Jetty'),
(748, 'JV00019', 'IC000468', '65', '2020-08-14 20:56:14', '9456341', 1, 'Empty 20FT Container GDSK GESU 9456341 ', '38.30', '3.50', '38.30', 'GDSK', '1', 'To Jetty'),
(749, 'JV00019', 'IC000469', '65', '2020-08-14 20:58:38', '6053058', 1, 'Empty 20FT Container GDSK KKTU 6053058', '38.30', '3.50', '38.30', 'GDSK', '1', 'To Jetty'),
(750, 'JV00019', 'IC000471', '65', '2020-08-14 21:01:24', '7546651', 1, 'Empty 20FT Container GDSK NYKU 7546651', '38.30', '3.50', '38.30', 'GDSK', '1', 'To Jetty'),
(751, 'JV00019', 'IC000503', '159', '2020-08-14 21:03:39', '9001569', 1, 'AORU 9001569', '5.82', '1.00', '5.82', 'ALTUS', '1', 'To Jetty'),
(752, 'JV00019', 'IC000472', '65', '2020-08-14 21:04:53', '7020533', 1, 'Empty 20FT Container GDSK 7020533', '38.30', '3.50', '38.30', 'GDSK', '1', 'To Jetty'),
(753, 'JV00019', 'IC000466', '65', '2020-08-14 21:08:05', '2503036', 1, '20FT Container O/Side OEGU 2503036', '38.30', '3.45', '38.30', 'PMB', '1', 'To Jetty'),
(754, 'JV00019', 'IC000500', '156', '2020-08-14 21:10:58', 'Yap-1107-2', 1, 'Basket YAP 1107-22', '3.78', '3.00', '3.78', 'Nabors', '1', 'To Jetty'),
(755, 'JV00019', 'IC000498', '155', '2020-08-14 21:13:27', 'IHC 002', 1, 'Skid Frame Power Pack , IHC-002', '13.48', '6.00', '13.48', 'Nabors', '1', 'To Jetty'),
(756, 'JV00019', 'IC000513', '166', '2020-08-14 21:18:22', '1500034032', 1, 'Prowell PCE Rack S/N : W12008855-01', '9.45', '2.50', '9.45', 'Prowell', '1', 'To Jetty'),
(757, 'JV00019', 'IC000510', '162', '2020-08-14 21:21:17', '1500033968', 1, 'SCHL E-Line Basket SN.B 6112', '8.18', '6.00', '8.18', 'Schl E-Line', '1', 'To Jetty'),
(758, 'JV00019', 'IC000477', '151', '2020-08-14 21:24:48', '1500033580', 1, 'Empty Basket 6 Meter , SN.TD-CB-6-001', '20.94', '2.89', '20.94', 'Dowell Anadrill', '1', 'To Jetty'),
(759, 'JV00019', 'IC000480', '124', '2020-08-14 21:28:18', '1500033742', 1, 'Empty Basket TD-CB-10-002', '16.80', '1.96', '16.80', 'Baker Huges', '1', 'To Jetty'),
(760, 'JV00019', 'IC000507', '25', '2020-08-14 21:34:47', '23000207', 1, 'Empty Container AOURU 23000207', '18.97', '3.00', '18.97', 'Vantage  ', '1', 'To Jetty'),
(761, 'JV00019', 'IC000475', '15', '2020-08-14 21:37:03', '1500033542', 1, 'Offshore Basket SN.SLB-08897', '20.59', '4.00', '20.59', 'Dowell Anadrill', '1', 'To Jetty'),
(762, 'JV00019', 'IC000483', '94', '2020-08-14 21:41:14', '1500034000', 1, 'Offshore Basket SN.TD-CB-12-004', '17.71', '13.00', '17.71', 'Baker Huges', '1', 'To Jetty'),
(763, 'JV00019', 'IC000484', '92', '2020-08-14 21:46:03', '1500034000', 1, 'Offshore Basket SN.B 1403', '20.59', '12.00', '20.59', 'Baker Huges', '1', 'To Jetty'),
(764, 'JV00019', 'IC000495', '130', '2020-08-14 21:53:48', '1500034152', 1, 'Offshore Basket SN.Auro 1330130', '24.54', '6.70', '24.54', 'Halliburton', '1', 'To Jetty'),
(765, 'JV00019', 'IC000497', '154', '2020-08-14 22:04:50', 'AH 002', 1, 'Hammer Basket AH 002', '17.10', '17.00', '17.10', 'Nabors', '1', 'To Jetty'),
(766, 'JV00019', 'IC000501', '157', '2020-08-14 22:09:34', '1103-01', 1, 'Basket YAP 1103-01', '3.04', '2.50', '3.04', 'Nabors', '1', 'To Jetty'),
(767, 'JV00019', 'IC000502', '158', '2020-08-14 22:12:44', '4300124', 1, 'Half Height 3M', '10.08', '4.50', '10.08', 'Nabors', '1', 'To Jetty'),
(768, 'JV00019', 'IC000505', '25', '2020-08-14 22:17:07', '23000188', 1, 'Dry Container AOURU', '18.97', '3.50', '18.97', 'Vantage  ', '1', 'To Jetty'),
(769, 'JV00019', 'IC000504', '160', '2020-08-14 22:21:01', '1228650', 1, 'Basket MOOU 1228650', '15.98', '7.50', '15.98', 'ALTUS', '1', 'To Jetty'),
(770, 'JV00019', 'IC000496', '154', '2020-08-14 22:26:21', 'AH 001', 1, 'Hammer Basket AH-01 ', '17.10', '17.00', '17.10', 'Nabors', '1', 'To Jetty'),
(771, 'JV00019', 'IC000482', '65', '2020-08-14 22:35:04', '1034331', 1, 'Empty Container Food Stuff CCLU 1034331', '38.30', '4.00', '38.30', 'Indoship', '1', 'To Jetty'),
(772, 'JV00019', 'IC000481', '65', '2020-08-14 22:40:32', '1515109', 1, 'Empty Container Food Stuff OEGU 1515109', '38.30', '4.30', '38.30', 'Indoship', '1', 'To Jetty'),
(773, 'JV00019', 'IC000461', '65', '2020-08-14 22:46:32', '1500034132', 1, '20FT Container ISO OEGU 0006083', '38.30', '4.50', '38.30', 'Medco Energi', '1', 'To Jetty'),
(774, 'JV00019', 'IC000462', '65', '2020-08-14 22:51:05', '1500034146', 1, '20FT Container ISO , OEGU 0006088', '38.30', '4.00', '38.30', 'Medco Energi', '1', 'To Jetty'),
(775, 'JV00019', 'IC000467', '65', '2020-08-14 22:56:51', '1670023', 1, '20FT Container O/Side 1670023', '38.30', '8.00', '38.30', 'PMB', '1', 'To Jetty'),
(776, 'JV00019', 'IC000509', '161', '2020-08-14 23:01:18', '1500032451', 1, '20FT Sarku Container SN.SEU-51-CNT-020-10', '36.00', '5.60', '36.00', 'Sarku', '1', 'To Jetty'),
(777, 'JV00019', 'IC000492', '100', '2020-08-14 23:06:57', '1500034253', 1, '20FT Opentop Container SN.9729', '37.50', '13.00', '37.50', 'PPLi', '1', 'To Jetty'),
(778, 'JV00019', 'IC000494', '100', '2020-08-14 23:13:35', '1500034253', 1, '20FT Opentop Container SN.9733', '37.50', '10.50', '37.50', 'PPLi', '1', 'To Jetty'),
(779, 'JV00019', 'IC000491', '100', '2020-08-14 23:18:39', '1500034253', 1, '20FT Opentop Container SN.9732', '37.50', '14.00', '37.50', 'PPLi', '1', 'To Jetty'),
(780, 'JV00019', 'IC000493', '100', '2020-08-14 23:25:51', '1500034253', 1, '20FT Opentop Container SN.9722', '37.50', '13.00', '37.50', 'PPLi', '1', 'To Jetty'),
(781, 'JV00019', 'IC000515', '169', '2020-08-15 01:30:35', '1500034032', 1, 'Single RAM BOP Skid', '1.26', '0.20', '1.26', 'Prowell', '1', 'To Jetty'),
(782, 'JV00019', 'IC000514', '168', '2020-08-15 01:31:39', '1500034032', 1, 'Prowell Power Pack', '4.42', '2.50', '4.42', 'Prowell', '1', 'To Jetty'),
(783, 'JV00019', 'IC000517', '172', '2020-08-15 01:33:52', '1500034032', 1, 'Transporter Basket 0214-18-PE-TRB', '4.99', '2.50', '4.99', 'Prowell', '1', 'To Jetty'),
(784, 'JV00019', 'IC000476', '43', '2020-08-15 01:36:35', '1500033580', 1, 'Half Container 10FT SN. OEGU 143622', '9.34', '2.50', '9.34', 'Dowell Anadrill', '1', 'To Jetty'),
(785, 'JV00019', 'IC000516', '170', '2020-08-15 01:38:05', '1500034032', 1, 'Lubricator Basket S/N : 0195-17--PE-LBU', '3.24', '1.30', '3.24', 'Prowell', '1', 'To Jetty'),
(786, 'JV00019', 'IC000512', '165', '2020-08-15 01:39:30', '1500034043', 1, 'Steel Box 0204-18-PE-TB', '5.04', '2.00', '5.04', 'Prowell', '1', 'To Jetty'),
(787, 'JV00019', 'IC000478', '152', '2020-08-15 01:42:38', '1500033572', 1, 'Stand Dryer Complete with 4 Legs sling', '16.10', '2.00', '16.10', 'Halliburton', '1', 'To Jetty'),
(788, 'JV00019', 'IC000485', '153', '2020-08-15 01:47:06', '1500034038', 1, 'Empty Propane Rack SN.STE PR-03', '1.88', '1.00', '1.88', 'Halliburton', '1', 'To Jetty'),
(789, 'JV00019', 'IC000486', '153', '2020-08-15 01:47:31', '1500034156', 1, 'Empty Propane Rack SN.STE PR-05', '1.88', '1.00', '1.88', 'Halliburton', '1', 'To Jetty'),
(790, 'JV00019', 'IC000464', '102', '2020-08-15 01:50:13', '1500034144', 1, 'Cylinder Rack : SEU-53-ROX-016-56', '2.10', '1.00', '2.10', 'Sarku', '1', 'To Jetty'),
(791, 'JV00019', 'IC000465', '102', '2020-08-15 01:50:28', '1500034144', 1, 'Cylinder Rack :SEU-53-ROX-016-27', '2.10', '0.10', '2.10', 'Sarku', '1', 'To Jetty'),
(792, 'JV00019', 'IC000511', '164', '2020-08-15 01:50:53', '1500033903', 1, '2 unit Tool Box Varley SN.01 & 02', '1.84', '1.40', '1.84', 'Varley', '1', 'To Jetty'),
(793, 'JV00019', 'IC000487', '108', '2020-08-15 01:54:40', '1500034154', 1, 'Offshore Box', '1.00', '0.50', '1.00', 'Copi 002', '1', 'To Jetty'),
(794, 'JV00019', 'IC000460', '149', '2020-08-15 02:02:48', '1500015358', 1, 'Box Electrical Distri , 14-WE0024', '0.46', '0.20', '0.46', 'Medco Energi', '1', 'To Jetty'),
(795, 'JV00019', 'IC000458', '37', '2020-08-15 02:03:40', '1500033715', 1, 'Viking Liferaft 25 DKF + SN 12455376', '1.70', '0.90', '1.70', 'Segara Permai', '1', 'To Jetty'),
(796, 'JV00019', 'IC000519', '108', '2020-08-15 02:05:09', '1500034064', 1, 'Liferaft Ex Belanak SN : 4582700300037', '1.00', '0.20', '1.00', 'Segara Permai', '1', 'To Jetty'),
(797, 'JV00019', 'IC000518', '108', '2020-08-15 02:05:21', '1500034064', 1, 'Liferaft Ex Belanak SN : 2045601500278', '1.00', '0.20', '1.00', 'Segara Permai', '1', 'To Jetty'),
(798, 'JV00019', 'IC000520', '173', '2020-08-15 02:08:49', '1500034148', 1, 'Gun Clamp Consist : 2-7/8" 30FT', '3.00', '1.00', '3.00', 'Heru Wicaksono', '1', 'To Jetty'),
(799, 'JV00019', 'IC000479', '26', '2020-08-15 02:12:12', '1500033635', 1, 'Half Container 10FT SN.SFHH 3156', '10.43', '2.50', '10.43', 'Vantage  ', '1', 'To Jetty'),
(800, 'JV00019', 'IC000488', '159', '2020-08-15 02:16:08', '1500034150', 1, 'Basket AORU 4300227', '5.82', '4.00', '5.82', 'Dowell', '1', 'To Jetty'),
(801, 'JV00019', 'IC000456', '37', '2020-08-15 02:19:57', '1500033715', 1, 'Viking Liferaft 25 DK + SN 11178432', '1.70', '0.90', '1.70', 'Segara Permai', '1', 'To Jetty'),
(802, 'JV00019', 'IC000457', '37', '2020-08-15 02:20:05', '1500033715', 1, 'Viking Liferaft 25 DK + SN D-150902', '1.70', '0.90', '1.70', 'Segara Permai', '1', 'To Jetty'),
(803, 'JV00019', 'IC000490', '109', '2020-08-15 02:23:34', '1500034150', 1, 'D-255', '1.21', '1.00', '1.21', 'Dowell', '1', 'To Jetty'),
(804, 'JV00019', 'IC000459', '68', '2020-08-15 02:23:44', '1500033574', 1, 'Lifting Gear Box North Crane', '0.22', '0.10', '0.22', 'Depriwangga', '1', 'To Jetty'),
(805, 'JV00019', 'IC000489', '109', '2020-08-15 02:27:47', '1500034150', 2, 'D-066', '2.42', '2.00', '2.42', 'Dowell', '1', 'To Jetty'),
(806, 'JV00019', 'IC000489', '109', '2020-08-15 02:28:59', '1500034150', 2, 'D-066', '2.42', '2.00', '2.42', 'Dowell', '1', 'To Jetty'),
(807, 'JV00019', 'IC000508', '147', '2020-08-15 02:32:32', '103280-348', 1, 'Power Pack lamor for multi skimmer', '1.59', '1.00', '1.59', 'OSCT', '1', 'To Jetty'),
(808, 'JV00019', 'IC000489', '109', '2020-08-15 02:32:45', '1500034150', 2, 'D-066', '2.42', '2.00', '2.42', 'Dowell', '1', 'To Jetty'),
(809, 'JV00019', 'IC000489', '109', '2020-08-15 02:34:49', '1500034150', 2, 'D-066', '2.42', '2.00', '2.42', 'Dowell', '1', 'To Jetty'),
(810, 'JV00019', 'IC000521', '174', '2020-08-15 02:36:37', '1500034148', 1, 'Gun 1.56" 10FT , GUn 2-7/8" 1FT', '0.50', '1.00', '1.00', 'Heru Wicaksono', '1', 'To Jetty'),
(811, 'JV00019', 'IC000489', '109', '2020-08-15 02:38:20', '1500034150', 2, 'D-066', '2.42', '2.00', '2.42', 'Dowell', '1', 'To Jetty'),
(812, 'JV00019', 'IC000489', '109', '2020-08-15 02:40:33', '1500034150', 2, 'D-066', '2.42', '2.00', '2.42', 'Dowell', '1', 'To Jetty'),
(813, 'JV00019', 'IC000489', '109', '2020-08-15 02:41:54', '1500034150', 2, 'D-066', '2.42', '2.00', '2.42', 'Dowell', '1', 'To Jetty'),
(814, 'JV00019', 'IC000489', '109', '2020-08-15 02:42:37', '1500034150', 2, 'D-066', '2.42', '2.00', '2.42', 'Dowell', '1', 'To Jetty'),
(815, 'JV00019', 'IC000489', '109', '2020-08-15 02:44:25', '1500034150', 2, 'D-066', '2.42', '2.00', '2.42', 'Dowell', '1', 'To Jetty'),
(816, 'JV00019', 'IC000463', '66', '2020-08-15 02:45:58', '1500034132', 9, 'Domestic Waste', '12.96', '0.86', '12.96', 'Medco Energi', '1', 'To Jetty'),
(817, 'JV00019', 'IC000463', '66', '2020-08-15 02:48:13', '1500034132', 9, 'Domestic Waste', '12.96', '0.86', '12.96', 'Medco Energi', '1', 'To Jetty'),
(818, 'JV00019', 'IC000463', '66', '2020-08-15 02:48:29', '1500034132', 4, 'Domestic Waste', '5.76', '0.38', '5.76', 'Medco Energi', '1', 'To Jetty'),
(819, 'JV00019', 'IC000489', '109', '2020-08-15 02:49:05', '1500034150', 2, 'D-066', '2.42', '2.00', '2.42', 'Dowell', '1', 'To Jetty'),
(820, 'JV00019', 'IC000489', '109', '2020-08-15 02:50:35', '1500034150', 2, 'D-066', '2.42', '2.00', '2.42', 'Dowell', '1', 'To Jetty'),
(821, 'JV00019', 'IC000489', '109', '2020-08-15 02:52:32', '1500034150', 2, 'D-066', '2.42', '2.00', '2.42', 'Dowell', '1', 'To Jetty'),
(822, 'JV00019', 'IC000489', '109', '2020-08-15 02:54:50', '1500034150', 2, 'D-066', '2.42', '2.00', '2.42', 'Dowell', '1', 'To Jetty'),
(823, 'JV00019', 'IC000489', '109', '2020-08-15 02:57:08', '1500034150', 2, 'D-066', '2.42', '2.00', '2.42', 'Dowell', '1', 'To Jetty'),
(824, 'JV00019', 'IC000489', '109', '2020-08-15 02:59:08', '1500034150', 2, 'D-066', '2.42', '2.00', '2.42', 'Dowell', '1', 'To Jetty'),
(825, 'JV00019', 'IC000489', '109', '2020-08-15 03:01:26', '1500034150', 2, 'D-066', '2.42', '2.00', '2.42', 'Dowell', '1', 'To Jetty'),
(826, 'JV00019', 'IC000474', '150', '2020-08-15 03:11:03', '1500033609', 1, '1 unit Seatel Antenna Dome VSAT', '25.20', '1.00', '25.20', 'Primacom', '1', 'To Jetty'),
(827, 'JV00019', 'IC000499', '155', '2020-08-15 03:14:59', 'IHC 001', 1, 'Skid Frame Power Pack , IHCoot', '13.48', '6.00', '13.48', 'Nabors', '1', 'To Jetty'),
(828, 'JV00020', 'IC000560', '66', '2020-08-21 01:37:15', '0001', 10, '27 BigBag', '14.40', '2.50', '14.40', 'Medco', '1', 'To Jetty'),
(829, 'JV00020', 'IC000560', '66', '2020-08-21 01:39:46', '0001', 2, '27 BigBag', '2.88', '0.50', '2.88', 'Medco', '1', 'To Jetty'),
(830, 'JV00020', 'IC000560', '66', '2020-08-21 01:41:06', '0001', 15, '27 BigBag', '21.60', '3.75', '21.60', 'Medco', '1', 'To Jetty'),
(831, 'JV00020', 'IC000574', '24', '2020-08-21 02:25:14', '3165', 1, '10FT Container c/w lifting set', '18.97', '3.00', '18.97', 'Vantage Drilling', '1', 'To Jetty'),
(832, 'JV00020', 'IC000575', '24', '2020-08-21 02:25:50', '3167', 1, 'Empty 10FT Container c/w lifting set', '18.97', '3.00', '18.97', 'Vantage Drilling', '1', 'To Jetty'),
(833, 'JV00020', 'IC000553', '65', '2020-08-21 02:26:23', '1500034284', 1, '20FT Container TAHU 7020678', '38.30', '3.50', '38.30', 'GDSK', '1', 'To Jetty'),
(834, 'JV00020', 'IC000578', '65', '2020-08-21 02:28:28', '1021376', 1, 'Empty 20FT Container CCLU 1021376', '38.30', '3.50', '38.30', 'Vantage Drilling', '1', 'To Jetty'),
(835, 'JV00020', 'IC000576', '65', '2020-08-21 02:31:46', '1511593', 1, 'Empty 20FT Dry Container ', '38.30', '4.00', '38.30', 'Vantage Drilling', '1', 'To Jetty'),
(836, 'JV00020', 'IC000556', '65', '2020-08-21 02:35:05', '1500043284', 1, '20FT Container CRLU 3117666', '38.30', '3.50', '38.30', 'GDSK', '1', 'To Jetty'),
(837, 'JV00020', 'IC000583', '189', '2020-08-21 02:41:21', '0004', 1, 'Petroguard 2-3/8" 13 Jts', '2.00', '2.00', '2.00', 'Halliburton', '1', 'To Jetty'),
(838, 'JV00020', 'IC000582', '189', '2020-08-21 02:45:53', '0003', 1, 'Petroguard Adv Mesh 2-3/8" 13 Jts', '2.00', '2.00', '2.00', 'Halliburton', '1', 'To Jetty'),
(839, 'JV00020', 'IC000571', '34', '2020-08-21 02:52:09', 'TD-CB-13-0', 1, 'Offshore Basket TD-CB-13-005', '18.72', '11.00', '18.72', 'Baker Hughes', '1', 'To Jetty'),
(840, 'JV00020', 'IC000573', '34', '2020-08-21 02:56:56', 'TD-CB-13-0', 1, 'Offshore Basket TD-CB-13-010', '18.72', '12.00', '18.72', 'Baker Hughes', '1', 'To Jetty'),
(841, 'JV00020', 'IC000572', '34', '2020-08-21 03:02:33', 'TD-CB-13-0', 1, 'Offshore Basket TD-CB-13-009', '18.72', '9.00', '18.72', 'Baker Hughes', '1', 'To Jetty'),
(842, 'JV00020', 'IC000570', '34', '2020-08-21 03:08:32', 'TD-CB-13-0', 1, 'Offshore Basket SN.TD-CB-13-003', '18.72', '12.00', '18.72', 'Baker Hughes', '1', 'To Jetty'),
(843, 'JV00020', 'IC000580', '162', '2020-08-21 03:14:24', '003 / 1594', 1, 'Schl E-Line Dog House', '36.08', '6.00', '36.08', 'SLB', '1', 'To Jetty'),
(844, 'JV00020', 'IC000557', '65', '2020-08-21 03:22:08', '1500034284', 1, '20FT Container TAHU 7020826', '38.30', '3.00', '38.30', 'GDSK', '1', 'To Jetty'),
(845, 'JV00020', 'IC000569', '65', '2020-08-21 03:25:49', '5732020', 1, '20FT Container MWCU 5732020', '38.30', '3.50', '38.30', 'Vantage Drilling', '1', 'To Jetty'),
(846, 'JV00020', 'IC000561', '138', '2020-08-21 03:31:15', 'H-270', 1, 'Opentop Container H-270', '41.40', '7.00', '41.40', 'Medco', '1', 'To Jetty'),
(847, 'JV00020', 'IC000579', '187', '2020-08-21 03:38:18', '4603223', 1, '6M Half Height Basket ', '21.14', '8.00', '21.14', 'SLB', '1', 'To Jetty'),
(848, 'JV00020', 'IC000552', '65', '2020-08-21 03:49:09', '1500034359', 1, 'Hazardous waste ex operation offshore OEGU 0006112', '38.30', '6.50', '38.30', 'PPLi', '1', 'To Jetty'),
(849, 'JV00020', 'IC000555', '65', '2020-08-21 03:51:31', '1500043284', 1, '20FT Container NYKU', '38.30', '3.50', '38.30', 'GDSK', '1', 'To Jetty'),
(850, 'JV00020', 'IC000551', '65', '2020-08-21 03:55:17', '1500034359', 1, 'Hazardous waste ex operation offshore OEGU 0006072', '38.30', '6.50', '38.30', 'PPLi', '1', 'To Jetty'),
(851, 'JV00020', 'IC000563', '182', '2020-08-21 04:14:40', '0002', 1, 'Dump Truck loses', '13.01', '3.00', '13.01', 'Medco', '1', 'To Jetty'),
(852, 'JV00020', 'IC000563', '182', '2020-08-21 04:24:38', '0002', 1, 'Dump Truck loses', '13.01', '3.00', '13.01', 'Medco', '1', 'To Jetty'),
(853, 'JV00020', 'IC000533', '61', '2020-08-21 08:13:49', '1500034259', 1, 'Empty Tote Tank S-965 ND LBA', '2.39', '0.30', '2.39', 'LBU', '1', 'To Jetty'),
(854, 'JV00020', 'IC000535', '61', '2020-08-21 08:15:41', '1500034259', 1, 'Empty Tote Tank S 965 ND TD-TT 550', '2.39', '0.30', '2.39', 'LBU', '1', 'To Jetty'),
(855, 'JV00020', 'IC000534', '61', '2020-08-21 08:16:05', '1500034259', 1, 'Empty Tote Tank S-9272 LBU', '2.39', '0.30', '2.39', 'LBU', '1', 'To Jetty'),
(856, 'JV00020', 'IC000537', '61', '2020-08-21 08:18:43', '1500034259', 1, 'Empty Tote Tank MEG LBU ', '2.39', '0.30', '2.39', 'LBU', '1', 'To Jetty'),
(857, 'JV00020', 'IC000543', '179', '2020-08-21 08:26:06', '1500033513', 1, 'IBC Tank Starclear 9443 consist Full', '3.05', '2.00', '3.05', 'Luas Birus', '1', 'To Jetty'),
(858, 'JV00020', 'IC000538', '179', '2020-08-21 08:26:25', '1500033513', 1, 'Tote Tank Methanol', '3.05', '1.00', '3.05', 'Champion', '1', 'To Jetty'),
(859, 'JV00020', 'IC000544', '179', '2020-08-21 08:26:51', '1500033513', 1, 'IBC Tank Staralds 9434 consist 1/2 IBC Tank', '3.05', '1.00', '3.05', 'Luas Birus', '1', 'To Jetty'),
(860, 'JV00020', 'IC000539', '179', '2020-08-21 08:27:36', '1500033513', 1, 'IBC Tank Starclear 9443', '3.05', '2.00', '3.05', 'Luas Birus', '1', 'To Jetty'),
(861, 'JV00020', 'IC000542', '179', '2020-08-21 08:29:32', '1500033513', 1, 'IBC Tank SZB-670', '3.05', '2.00', '3.05', 'Luas Birus', '1', 'To Jetty'),
(862, 'JV00020', 'IC000541', '179', '2020-08-21 08:31:27', '1500033513', 1, 'IBC Tank SZB-672', '3.05', '1.20', '3.05', 'Luas Birus', '1', 'To Jetty'),
(863, 'JV00020', 'IC000545', '71', '2020-08-21 08:34:46', '1500034376', 1, 'Cylinder Rack MOWC-RACK-N2-02', '2.42', '1.20', '2.42', 'Alfons Wirahadikusuma', '1', 'To Jetty'),
(864, 'JV00020', 'IC000526', '178', '2020-08-21 08:36:06', '1500034116', 1, 'Cylinder Rack SN KWS GBR 74', '2.88', '1.50', '2.88', 'Sarku', '1', 'To Jetty'),
(865, 'JV00020', 'IC000529', '178', '2020-08-21 08:38:01', '1500034116', 1, 'Cylinder Rack SN KWS GBR 02', '2.88', '1.50', '2.88', 'Sarku', '1', 'To Jetty'),
(866, 'JV00020', 'IC000531', '178', '2020-08-21 08:40:15', '1500034116', 1, 'Cylinder Rack SN KWS BR 075', '2.88', '1.50', '2.88', 'Sarku', '1', 'To Jetty'),
(867, 'JV00020', 'IC000530', '178', '2020-08-21 08:44:07', '1500034116', 1, 'Cylinder Rack SN KWS GBR 79', '2.88', '1.50', '2.88', 'Sarku', '1', 'To Jetty'),
(868, 'JV00020', 'IC000527', '178', '2020-08-21 08:47:03', '1500034116', 1, 'Cylinder Rack SN KWS GBR 31', '2.88', '1.50', '2.88', 'Sarku', '1', 'To Jetty'),
(869, 'JV00020', 'IC000525', '178', '2020-08-21 08:49:04', '1500034116', 1, 'Cylinder Rack SN KWS GBR 41', '2.88', '1.50', '2.88', 'Sarku', '1', 'To Jetty'),
(870, 'JV00020', 'IC000567', '185', '2020-08-21 08:53:50', '45136', 1, 'Empty Offshore Basket FSHH 45136', '13.60', '2.80', '13.60', 'Vantage Drilling', '1', 'To Jetty'),
(871, 'JV00020', 'IC000554', '24', '2020-08-21 08:55:43', '8028890', 1, 'Empty 10FT  Container CNHU ', '18.97', '3.00', '18.97', 'GDSK', '1', 'To Jetty'),
(872, 'JV00020', 'IC000568', '26', '2020-08-21 09:00:15', '3157', 1, 'Empty Offshore Basket FSHH 3157', '8.90', '2.10', '8.90', 'Vantage Drilling', '1', 'To Jetty'),
(873, 'JV00020', 'IC000581', '188', '2020-08-21 09:04:23', '3301466', 1, '6M Opentop Container for grease', '18.97', '4.00', '18.97', 'SLB', '1', 'To Jetty'),
(874, 'JV00020', 'IC000522', '175', '2020-08-21 09:06:15', '1500033669', 2, 'Material Retrofit Ex Battery Charger', '0.40', '2.00', '2.00', 'Shaftindo Jkt', '1', 'To Jetty'),
(875, 'JV00020', 'IC000523', '177', '2020-08-21 09:07:53', '1500034136', 1, '1.6"3 Way Control Valve 8-TCV-7005', '0.35', '2.00', '2.00', 'Dnow', '1', 'To Jetty'),
(876, 'JV00020', 'IC000549', '181', '2020-08-21 09:11:59', '1500034094', 1, 'Flow Meter weight 50 kg', '0.02', '0.05', '0.05', 'Barakuda', '1', 'To Jetty'),
(877, 'JV00020', 'IC000562', '149', '2020-08-21 09:14:22', '1500034351', 1, 'Welding Habitat', '2.30', '0.40', '2.30', 'Chas', '1', 'To Jetty'),
(878, 'JV00020', 'IC000559', '7', '2020-08-21 09:17:49', '0006154', 1, '10FT Container OEGU', '18.90', '3.00', '18.90', 'Medco', '1', 'To Jetty'),
(879, 'JV00020', 'IC000536', '61', '2020-08-21 09:34:15', '1500034259', 1, 'Empty Tote Tank S 965ND LBU', '2.39', '0.30', '2.39', 'LBU', '1', 'To Jetty'),
(880, 'JV00020', 'IC000548', '45', '2020-08-21 09:34:41', '1500033513', 1, 'Empty Tote Tank MEG ', '5.05', '1.00', '5.05', 'Luas Birus', '1', 'To Jetty'),
(881, 'JV00020', 'IC000558', '7', '2020-08-21 09:35:40', '0006149', 1, '10FT Container OEGU ', '18.90', '2.50', '18.90', 'Medco', '1', 'To Jetty'),
(882, 'JV00020', 'IC000564', '183', '2020-08-21 09:42:30', 'TD-GB-16-0', 1, 'Cylinder Rack TD-GB-16-017', '4.05', '2.00', '4.05', 'Vantage Drilling', '1', 'To Jetty'),
(883, 'JV00020', 'IC000566', '184', '2020-08-21 09:44:32', '16694', 1, 'Cylinder Rack BSSL 16694', '3.33', '2.00', '3.33', 'Vantage Drilling', '1', 'To Jetty'),
(884, 'JV00020', 'IC000550', '32', '2020-08-21 09:44:41', '1500033836', 1, 'Hydrotest & Refill Fresh air cylinder bottle', '2.16', '1.00', '2.16', 'Hery Hardiyanto', '1', 'To Jetty'),
(885, 'JV00020', 'IC000540', '179', '2020-08-21 09:44:54', '1500033513', 1, 'IBC Tank Staralds 9434', '3.05', '1.00', '3.05', 'Luas Birus', '1', 'To Jetty'),
(886, 'JV00020', 'IC000524', '102', '2020-08-21 09:45:12', '1500034116', 1, 'Cylinder Rack SN SEU-53-ROX016-7', '2.00', '1.50', '2.00', 'Sarku', '1', 'To Jetty'),
(887, 'JV00020', 'IC000528', '178', '2020-08-21 09:45:21', '1500034116', 1, 'Cylinder Rack SN KWS 36', '2.88', '1.50', '2.88', 'Sar', '1', 'To Jetty'),
(888, 'JV00020', 'IC000546', '180', '2020-08-21 09:45:34', '1500034187', 1, 'Pass Ring Key and Connection', '0.16', '0.07', '0.16', 'Indospec Asia', '1', 'To Jetty'),
(889, 'JV00020', 'IC000546', '180', '2020-08-21 09:46:57', '1500034187', 2, 'Pass Ring Key and Connection', '0.32', '0.13', '0.32', 'Indospec Asia', '1', 'To Jetty'),
(890, 'JV00020', 'IC000532', '178', '2020-08-21 09:48:28', '1500034116', 1, 'Cylinder Rack SN KWS GBR 83', '2.88', '1.50', '2.88', 'Sarku', '1', 'To Jetty'),
(891, 'JV00020', 'IC000547', '61', '2020-08-21 09:48:42', '2019 - 002', 1, 'Empty Tote Tank Ex Chemical S-9284', '2.39', '0.30', '2.39', 'LBU', '1', 'To Jetty'),
(892, 'JV00020', 'IC000565', '184', '2020-08-21 09:48:52', '16622', 1, 'Cylinder Rack BSSL 16622', '3.33', '2.00', '3.33', 'Vantage Drilling', '1', 'To Jetty'),
(893, 'JV00020', 'IC000577', '186', '2020-08-21 09:49:40', '1300015464', 1, 'Casing 13-3/8" ', '1.98', '2.60', '2.60', 'Medco', '1', 'To Jetty'),
(894, 'JV00020', 'IC000577', '186', '2020-08-21 09:52:44', '1300015464', 1, 'Casing 13-3/8" ', '1.98', '2.60', '2.60', 'Medco', '1', 'To Jetty'),
(895, 'JV00022', 'IC000633', '181', '2020-08-23 08:32:28', '001', 1, 'Hand Carry', '0.00', '0.01', '0.01', 'Star Energy', '1', 'To Warehouse'),
(896, 'JV00021', 'IC000622', '193', '2020-08-23 08:32:53', '8-001', 1, 'Cylinder Rack R-POI-8-001', '1.56', '0.50', '1.56', 'Ex FPSO', '1', 'To Yard'),
(897, 'JV00022', 'IC000630', '13', '2020-08-23 08:33:59', 'SE KH-09', 1, 'Empty Bottle Hellium Rack', '3.60', '0.50', '3.60', 'Star Energy', '1', 'To Jetty'),
(898, 'JV00022', 'IC000629', '177', '2020-08-23 08:34:35', 'RH-02', 1, 'Empty Bottle Oxygen Rack', '1.40', '0.45', '1.40', 'Star Energy', '1', 'To Jetty'),
(899, 'JV00021', 'IC000594', '128', '2020-08-23 08:36:40', 'ID No.11', 1, 'Cylinder Rack Empty Argon ID No.11', '3.44', '0.50', '3.44', 'Arkadia', '1', 'To Yard'),
(900, 'JV00021', 'IC000621', '128', '2020-08-23 08:38:53', '16-010', 1, 'Cylinder Rack R-POI-16-010', '3.44', '0.90', '3.44', 'Arkadia', '1', 'To Yard'),
(901, 'JV00021', 'IC000587', '132', '2020-08-23 08:40:11', '284', 1, 'FEL-284', '5.21', '1.30', '5.21', 'Wastec', '1', 'To Yard'),
(902, 'JV00021', 'IC000589', '132', '2020-08-23 08:43:01', '289', 1, 'FEL-289', '5.21', '2.40', '5.21', 'Wastec', '1', 'To Yard'),
(903, 'JV00021', 'IC000586', '132', '2020-08-23 08:45:16', '275', 1, 'FEL-275', '5.21', '2.70', '5.21', 'Wastec', '1', 'To Yard'),
(904, 'JV00021', 'IC000588', '132', '2020-08-23 08:47:40', '286', 1, 'FEL-286', '5.21', '1.60', '5.21', 'Wastec', '1', 'To Yard'),
(905, 'JV00021', 'IC000585', '132', '2020-08-23 08:49:29', '274', 1, 'FEL-274', '5.21', '1.30', '5.21', 'Wastec', '1', 'To Yard'),
(906, 'JV00021', 'IC000590', '132', '2020-08-23 08:51:36', '294', 1, 'FEL-294', '5.21', '1.30', '5.21', 'Wastec', '1', 'To Yard'),
(907, 'JV00021', 'IC000611', '188', '2020-08-23 08:54:19', '1441900', 1, '10FT Opentop Container OEGU-1441900', '9.38', '1.38', '9.38', 'PMB', '1', 'To Yard'),
(908, 'JV00021', 'IC000614', '188', '2020-08-23 08:56:30', '1442445', 1, '10FT Half Opentop Container OEGU-1442445', '9.38', '1.50', '9.38', 'PMB', '1', 'To Jetty'),
(909, 'JV00021', 'IC000603', '39', '2020-08-23 08:58:09', '697030', 1, 'Mini Container OEG-697030', '8.75', '1.57', '8.75', 'PMB', '1', 'To Yard'),
(910, 'JV00021', 'IC000609', '76', '2020-08-23 08:59:52', '1436606', 1, '10Ft Half Open Top Container OEGU-1436606', '9.38', '2.70', '9.38', 'PMB', '1', 'To Jetty'),
(911, 'JV00021', 'IC000613', '188', '2020-08-23 09:02:07', '1442131', 1, '10FT Half Opentop Container OEGU-1442131', '9.38', '2.60', '9.38', 'PMB', '1', 'To Jetty'),
(912, 'JV00021', 'IC000612', '188', '2020-08-23 09:03:52', '1441916', 1, '10FT Half Opentop Container OEGU-1441916', '9.38', '1.50', '9.38', 'PMB', '1', 'To Jetty'),
(913, 'JV00022', 'IC000631', '54', '2020-08-23 09:07:51', 'SE-Ops-1', 1, 'Half Opentop Container 10FT', '9.44', '1.50', '9.44', 'Star Energy', '1', 'To Jetty'),
(914, 'JV00021', 'IC000584', '190', '2020-08-23 09:10:22', '4900197', 1, 'AORU-4900197', '18.97', '6.50', '18.97', 'PMB', '1', 'To Jetty'),
(915, 'JV00021', 'IC000620', '9', '2020-08-23 09:14:12', '1281', 1, 'QHF-1281', '9.11', '1.30', '9.11', 'Champion', '1', 'To Yard'),
(916, 'JV00021', 'IC000592', '9', '2020-08-23 09:15:59', '01010-2', 1, 'Tote Tank ID 01010-2 Empty', '9.11', '1.30', '9.11', 'ANOA', '1', 'To Yard'),
(917, 'JV00021', 'IC000593', '9', '2020-08-23 09:18:20', 'FT-02', 1, 'Tote Tank ID-02 Empty', '9.11', '1.40', '9.11', 'ANOA', '1', 'To Yard'),
(918, 'JV00022', 'IC000624', '146', '2020-08-23 09:20:14', 'SE-3', 1, 'Empty Container 6FT SE', '8.55', '1.50', '8.55', 'Star Energy', '1', 'To Jetty'),
(919, 'JV00021', 'IC000600', '39', '2020-08-23 09:22:22', '690614', 1, 'Mini Container OEG-690614', '8.75', '1.57', '8.75', 'PMB', '1', 'To Yard'),
(920, 'JV00021', 'IC000604', '39', '2020-08-23 09:24:35', '697628', 1, 'Mini Container OEG-697628', '8.75', '1.57', '8.75', 'PMB', '1', 'To Yard'),
(921, 'JV00021', 'IC000596', '39', '2020-08-23 09:26:53', '1213012', 1, 'Mini Container MOOU 1213012', '8.75', '2.70', '8.75', 'AsiaServ', '1', 'To Yard'),
(922, 'JV00021', 'IC000602', '39', '2020-08-23 09:29:00', '697008', 1, 'Mini Container OEG-697008', '8.75', '1.65', '8.75', 'PMB', '1', 'To Yard'),
(923, 'JV00021', 'IC000591', '191', '2020-08-23 09:36:48', '2490A', 1, 'GBCPP-T-2490A', '19.11', '4.00', '19.11', 'Gajah Baru', '1', 'To Yard'),
(924, 'JV00021', 'IC000617', '190', '2020-08-23 09:38:24', '2441084', 1, '20FT Half Opentop Container OEGU-2441084', '18.97', '2.57', '18.97', 'PMB', '1', 'To Jetty'),
(925, 'JV00021', 'IC000615', '44', '2020-08-23 09:43:51', '2437593', 1, '20FT Half Opentop Container OEGU-2437593', '19.11', '5.00', '19.11', 'PMB', '1', 'To Jetty'),
(926, 'JV00022', 'IC000632', '55', '2020-08-23 09:44:15', 'SE-10', 1, 'Half Opentop Container 20FT', '18.88', '2.00', '18.88', 'Star Energy', '1', 'To Jetty'),
(927, 'JV00021', 'IC000619', '44', '2020-08-23 09:47:56', '2441700', 1, '20FT Half Opentop Container OEGU-2441700', '19.11', '2.57', '19.11', 'PMB', '1', 'To Jetty'),
(928, 'JV00021', 'IC000618', '194', '2020-08-23 09:50:21', '2441464', 1, '20FT Organic Waste Container OEGU-2441464', '18.82', '3.20', '18.82', 'Gajah Baru', '1', 'To Yard'),
(929, 'JV00021', 'IC000616', '44', '2020-08-23 09:54:39', '2437633', 1, '20FT Half Opentop Container OEGU-2437633', '19.11', '4.00', '19.11', 'PMB', '1', 'To Yard'),
(930, 'JV00021', 'IC000605', '145', '2020-08-23 09:58:44', '1437393', 1, '10FT Half Open Top Container OEGU 1437393', '9.56', '1.38', '9.56', 'PMB', '1', 'To Jetty'),
(931, 'JV00021', 'IC000610', '137', '2020-08-23 10:01:07', '1436648', 1, '10FT Half Opentop Container OEGU-1436648', '9.56', '3.90', '9.56', 'PMB', '1', 'To Jetty'),
(932, 'JV00021', 'IC000607', '41', '2020-08-23 10:03:45', '1009348', 1, '10FT Chiller Container OEGU-1009348', '18.01', '2.50', '18.01', 'BBS', '1', 'To Trucking'),
(933, 'JV00022', 'IC000628', '49', '2020-08-23 10:18:36', 'Zona 07227', 1, 'Reffer Container 20FT', '37.77', '3.65', '37.77', 'BBS', '1', 'To Jetty'),
(934, 'JV00022', 'IC000625', '49', '2020-08-23 10:18:53', 'AA5-02', 1, 'Dry Container 20FT', '37.77', '3.65', '37.77', 'BBS', '1', 'To Jetty'),
(935, 'JV00021', 'IC000606', '176', '2020-08-23 10:23:08', '1009097', 1, '10FT Chiller Container OEGU-1009097', '18.31', '2.50', '18.31', 'ANOA', '1', 'To Trucking'),
(936, 'JV00022', 'IC000623', '49', '2020-08-23 10:24:00', 'SE-7', 1, 'Container 20FT c/with Sling & shackle', '37.77', '4.50', '37.77', 'Star Energy', '1', 'To Jetty'),
(937, 'JV00022', 'IC000627', '49', '2020-08-23 10:24:37', 'Zona 75497', 1, 'Empty Reffer Container 20FT', '37.77', '3.65', '37.77', 'BBS', '1', 'To Jetty'),
(938, 'JV00021', 'IC000608', '41', '2020-08-23 10:27:42', '1009538', 1, '10FT Chiller Container OEGU-1009538', '18.01', '2.50', '18.01', 'BBS', '1', 'To Trucking'),
(939, 'JV00021', 'IC000601', '39', '2020-08-23 10:29:49', '696929', 1, 'Mini Container OEG696929', '8.75', '1.57', '8.75', 'PMB', '1', 'To Yard'),
(940, 'JV00022', 'IC000626', '49', '2020-08-23 10:33:45', 'IRDU 55287', 1, 'Empty Dry Container 20FT', '37.77', '3.65', '37.77', 'BBS', '1', 'To Jetty'),
(941, 'JV00021', 'IC000599', '39', '2020-08-23 10:34:51', '690599', 1, 'Mini Container OEG-690599', '8.75', '1.57', '8.75', 'PMB', '1', 'To Yard'),
(942, 'JV00021', 'IC000595', '176', '2020-08-23 10:36:44', '1500596', 1, 'Offshore Container LYGU 1500596', '18.31', '2.40', '18.31', 'Nesitor', '1', 'To Trucking'),
(943, 'JV00021', 'IC000598', '39', '2020-08-23 10:37:35', '690574', 1, 'Mini Container OEG-690574', '8.75', '1.80', '8.75', 'PMB', '1', 'To Yard'),
(944, 'JV00021', 'IC000597', '39', '2020-08-23 10:38:18', '690573', 1, 'Mini Container OEG-690573', '8.75', '1.80', '8.75', 'PMB', '1', 'To Yard'),
(945, 'JV00023', 'IC000636', '100', '2020-09-04 11:16:02', '150034284', 1, '20ft Container THU7020826 CW lifting set', '37.50', '3.00', '37.50', 'GDSK', '1', 'To Jetty'),
(946, 'JV00023', 'IC000638', '130', '2020-09-04 11:16:34', '1500034367', 1, 'Offshore basket SN TD-CB13-003 CW lifting Set', '24.54', '12.00', '24.54', 'Vantage Drilling', '1', 'To Jetty'),
(947, 'JV00023', 'IC000635', '61', '2020-09-04 11:19:21', '1500034259', 1, 'EMPTY Tote Tank S-965ND', '2.39', '0.30', '2.39', 'LBU', '1', 'To Warehouse'),
(948, 'JV00023', 'IC000637', '72', '2020-09-04 11:19:42', 'TD-GB-16-0', 1, 'Cylinder rack CW sling and shackle.2 16 ea empty nitrogen bottle', '2.52', '2.00', '2.52', 'Vantage Drilling', '1', 'To Yard'),
(949, 'JV00023', 'IC000634', '175', '2020-09-04 11:19:57', '1500033669', 1, 'Matrial Retrofit Ex Battery Charger', '0.20', '1.00', '1.00', 'Shaftindo Jakarta', '1', 'To Warehouse'),
(950, 'JV00023', 'IC000634', '175', '2020-09-04 11:24:38', '1500033669', 1, 'Matrial Retrofit Ex Battery Charger', '0.20', '1.00', '1.00', 'Shaftindo Jakarta', '1', 'To Warehouse'),
(951, 'JV00002', 'IC000045', '7', '2020-09-04 15:10:13', '1500002', 2, 'DNV Container 10 FT', '37.80', '6.00', '37.80', 'Medco Energi', '1', 'To Jetty'),
(952, 'JV00002', 'IC000048', '18', '2020-09-04 15:10:30', '1500005', 1, 'Iron Basket , c/w Lifting Set', '9.65', '4.00', '9.65', 'Halliburton', '1', 'To Jetty'),
(953, 'JV00002', 'IC000049', '6', '2020-09-04 15:10:41', '1500001', 4, 'Empty Dry Container 20 FT', '171.52', '10.00', '171.52', 'GDSK', '3', 'To Jetty'),
(954, 'JV00002', 'IC000051', '14', '2020-09-04 15:11:01', '1500003', 15, 'Empty Tote Tank', '60.75', '3.75', '60.75', 'Champion', '1', 'To Jetty'),
(955, 'JV00002', 'IC000052', '10', '2020-09-04 15:11:11', '1500004', 14, 'Empty IBC Tank', '56.70', '7.00', '56.70', 'Champion', '1', 'To Jetty'),
(956, 'JV00002', 'IC000639', '36', '2020-09-04 15:14:58', '098', 1, 'MI', '1.73', '0.30', '1.73', 'MI', '2', 'To Jetty'),
(957, 'JV00002', 'IC000124', '12', '2020-09-04 15:44:12', '150009', 1, 'Container PPLi', '37.50', '3.00', '37.50', 'Incdocater', '2', 'To Jetty'),
(958, 'JV00024', 'IC000663', '201', '2020-09-05 22:08:10', '1500034515', 1, 'Tools House Container SN.11574922', '38.30', '10.00', '38.30', 'Hall Testing', '1', 'To Jetty'),
(959, 'JV00024', 'IC000664', '7', '2020-09-05 22:14:02', '0006175', 1, '10FT Container ISO 0006175 , Domestic Waste', '18.90', '3.50', '18.90', 'Medco Energi', '1', 'To Jetty'),
(960, 'JV00024', 'IC000666', '7', '2020-09-05 22:21:05', '0006180', 1, '10FT Container ISO 0006180 , Domestic Waste', '18.90', '3.50', '18.90', 'Medco Energi', '1', 'To Jetty'),
(961, 'JV00024', 'IC000665', '7', '2020-09-05 22:22:04', '0006196', 1, '10FT Container ISO 0006196 , Domestic Waste', '18.90', '3.50', '18.90', 'Medco Energi', '1', 'To Jetty'),
(962, 'JV00024', 'IC000678', '43', '2020-09-05 22:27:17', '1500034495', 1, 'Half Container 10FT SN.OEGU 1438661', '9.34', '4.00', '9.34', 'Dowell Anadrill', '1', 'To Yard'),
(963, 'JV00024', 'IC000667', '7', '2020-09-05 22:28:49', '1200992', 1, '10FT Container DNV OEGU 1200992 , Domestic Waste', '18.90', '3.50', '18.90', 'Medco Energi', '1', 'To Jetty'),
(964, 'JV00024', 'IC000679', '207', '2020-09-05 22:33:11', '1500034495', 1, '6.3M Offshore Basket SN.TD-CB-6-003', '9.83', '4.00', '9.83', 'Dowell Anadrill', '1', 'To Jetty'),
(965, 'JV00024', 'IC000710', '220', '2020-09-05 22:39:03', '1500034873', 1, '20FT DNV Container SN.AORU 2601469', '42.46', '15.00', '42.46', 'Halliburton', '1', 'To Jetty'),
(966, 'JV00024', 'IC000712', '221', '2020-09-05 22:41:10', '1500034883', 1, 'Sample Sea Water 4 CAN', '0.72', '0.10', '0.72', 'Halliburton', '1', 'To Warehouse'),
(967, 'JV00024', 'IC000709', '219', '2020-09-06 01:28:56', '1500034873', 1, '20FT Offshore Basket SN.AORU 1030283', '17.67', '10.00', '17.67', 'Halliburton', '1', 'To Jetty'),
(968, 'JV00024', 'IC000711', '219', '2020-09-06 01:35:50', '1500034873', 1, '10.3M Offshore Basket AORU 1030025', '17.67', '12.00', '17.67', 'Halliburton', '1', 'To Jetty'),
(969, 'JV00024', 'IC000681', '209', '2020-09-06 01:43:44', '1500034495', 1, '12.2M Offshore Basket SN.AORU 1230044', '20.94', '12.00', '20.94', 'Dowell Anadrill', '1', 'To Jetty'),
(970, 'JV00024', 'IC000705', '216', '2020-09-06 01:49:04', 'TD-CB-8-00', 1, '8.3M Cargo Basket ID TD-CB-8-006', '12.78', '4.00', '12.78', 'Schlumberger', '1', 'To Jetty'),
(971, 'JV00024', 'IC000680', '208', '2020-09-06 01:58:25', '1500034495', 1, '12.3M Offshore Basket SN.TD-CB-12-002', '19.19', '14.00', '19.19', 'Dowell Anadrill', '1', 'To Jetty'),
(972, 'JV00024', 'IC000676', '206', '2020-09-06 02:12:52', '1500034491', 1, 'Offshore Basket 40FT SN.CBZ416', '17.86', '4.00', '17.86', 'Altus', '1', 'To Jetty'),
(973, 'JV00024', 'IC000682', '208', '2020-09-06 02:17:10', '1500034495', 1, '12.3M Offshore Basket SN.B 1201', '19.19', '12.00', '19.19', 'Dowell Anadrill', '1', 'To Jetty'),
(974, 'JV00024', 'IC000677', '206', '2020-09-06 02:17:43', '1500034491', 1, 'Offshore Basket 40FT SN.CBZ 529', '17.86', '4.00', '17.86', 'Altus', '1', 'To Jetty'),
(975, 'JV00024', 'IC000670', '205', '2020-09-06 02:30:49', '1500034491', 1, 'Offshore Basket 14M , CBQ 403', '21.22', '4.50', '21.22', 'Altus', '1', 'To Jetty'),
(976, 'JV00024', 'IC000675', '130', '2020-09-06 02:36:48', '1500034491', 1, 'Offshore Basket 14.3M SN , AORU 1430016', '24.54', '4.30', '24.54', 'Altus', '1', 'To Jetty'),
(977, 'JV00024', 'IC000672', '205', '2020-09-06 02:43:56', '1500034491', 1, 'Offshore Basket 14M , CBQ 435', '21.22', '4.50', '21.22', 'Altus', '1', 'To Jetty'),
(978, 'JV00024', 'IC000673', '205', '2020-09-06 02:49:51', '1500034491', 1, 'Offshore Basket 14M , CBQ 436', '21.22', '4.50', '21.22', 'Altus', '1', 'To Jetty'),
(979, 'JV00024', 'IC000674', '205', '2020-09-06 02:55:36', '1500034491', 1, 'Offshore Basket 14M , CBQ 437', '21.22', '4.50', '21.22', 'Altus', '1', 'To Jetty'),
(980, 'JV00024', 'IC000669', '205', '2020-09-06 03:01:12', '1500034491', 1, 'Offshore Basket 14M , CBQ 402', '21.22', '4.50', '21.22', 'Altus', '1', 'To Jetty'),
(981, 'JV00024', 'IC000668', '205', '2020-09-06 03:05:48', '1500034491', 1, 'Offshore Basket 14M , CBQ 401', '21.22', '4.50', '21.22', 'Altus', '1', 'To Jetty'),
(982, 'JV00024', 'IC000671', '205', '2020-09-06 03:13:13', '1500034491', 1, 'Offshore Basket 14M , CBQ 404', '21.22', '6.00', '21.22', 'Altus', '1', 'To Jetty'),
(983, 'JV00024', 'IC000714', '224', '2020-09-06 03:20:35', '1500034361', 1, 'WDDS-A-E-LINE Winch Cable drum Unit ', '10.72', '5.00', '10.72', 'SLB', '1', 'To Jetty'),
(984, 'JV00024', 'IC000647', '24', '2020-09-06 03:28:17', '1500034423', 1, 'Empty Offshore Container 10FT SN AWS-003', '18.97', '1.50', '18.97', 'Mrs.Maria Aling', '1', 'To Yard'),
(985, 'JV00024', 'IC000646', '24', '2020-09-06 03:29:52', '1500034423', 1, 'Offshore Container 10FT SN AORU 2301878', '18.97', '3.00', '18.97', 'Mrs.Maria Aling', '1', 'To Yard'),
(986, 'JV00024', 'IC000657', '201', '2020-09-06 03:37:42', '1500034700', 1, '20FT Close TOP ISO Container OEGU 0006030', '38.30', '5.00', '38.30', 'PPLi', '1', 'To Jetty'),
(987, 'JV00024', 'IC000659', '201', '2020-09-06 03:39:40', '1500034700', 1, '20FT Close TOP ISO Container OEGU 0006107', '38.30', '7.00', '38.30', 'PPLi', '1', 'To Jetty'),
(988, 'JV00024', 'IC000658', '201', '2020-09-06 03:45:33', '1500034700', 1, '20FT Close TOP ISO Container OEGU 0006067', '38.30', '6.00', '38.30', 'PPLi', '1', 'To Jetty'),
(989, 'JV00024', 'IC000715', '225', '2020-09-06 03:46:50', '1500034361', 1, 'CLC-FD Frame S/N 36093', '14.09', '2.50', '14.09', 'SLB', '1', 'To Jetty'),
(990, 'JV00024', 'IC000699', '211', '2020-09-06 09:12:08', '1500034793', 1, '20FT Container SN.BSLU 9203910', '38.44', '15.50', '38.44', 'PPLi', '1', 'To Trucking'),
(991, 'JV00024', 'IC000700', '211', '2020-09-06 09:21:08', '1500034793', 1, '20FT Container BSLU 9203309', '38.44', '14.00', '38.44', 'PPLi', '1', 'To Trucking'),
(992, 'JV00024', 'IC000702', '211', '2020-09-06 09:30:18', '1500034793', 1, '20FT Container SN.BSLU 9204310', '38.44', '15.50', '38.44', 'PPLi', '1', 'To Trucking'),
(993, 'JV00024', 'IC000701', '211', '2020-09-06 09:36:47', '1500034793', 1, '20FT Container SN.BSLU 9203931', '38.44', '15.00', '38.44', 'PPLi', '1', 'To Trucking'),
(994, 'JV00024', 'IC000685', '211', '2020-09-06 09:58:00', '9204305', 1, '20FT Close TOP ISO Container BSLU 9204305', '38.44', '12.00', '38.44', 'PPLi', '1', 'To Jetty'),
(995, 'JV00024', 'IC000686', '211', '2020-09-06 10:17:27', '9723', 1, '20FT Close TOP ISO PPLi Container , PPLi 9723', '38.44', '15.00', '38.44', 'PPLi', '1', 'To Trucking'),
(996, 'JV00024', 'IC000698', '211', '2020-09-06 10:33:43', '1500034793', 1, '20FT Opentop Container SN.PPLi 9728', '38.44', '14.00', '38.44', 'PPLi', '1', 'To Trucking'),
(997, 'JV00024', 'IC000684', '211', '2020-09-06 10:35:07', '9203490', 1, '20FT Close TOP ISO PPLi Container BSLU 9203490', '38.44', '12.00', '38.44', 'PPLi', '1', 'To Jetty'),
(998, 'JV00024', 'IC000687', '211', '2020-09-06 11:12:04', '9605', 1, '1 Unit ISO Tank 9605', '38.44', '25.00', '38.44', 'PPLi', '1', 'To Jetty'),
(999, 'JV00024', 'IC000707', '217', '2020-09-06 13:50:34', '1500034464', 1, 'MDT Sample Terubuk-5', '0.02', '0.20', '0.20', 'Schlumberger', '1', 'To Trucking'),
(1000, 'JV00024', 'IC000689', '212', '2020-09-06 13:53:18', '1500034672', 1, 'Mini Container 6FT AMNE 5441', '8.59', '5.00', '8.59', 'Altus', '1', 'To Yard'),
(1001, 'JV00024', 'IC000683', '210', '2020-09-06 13:54:41', '1500034571', 1, 'Dowell Anadrill Tolls Box SLB 14835', '0.60', '0.50', '0.60', 'Dowell Anadrill', '1', 'To Trucking'),
(1002, 'JV00024', 'IC000716', '226', '2020-09-06 13:58:34', '1500034361', 1, 'DAPS-AB SN 3797', '15.54', '4.00', '15.54', 'SLB', '1', 'To Yard'),
(1003, 'JV00024', 'IC000713', '223', '2020-09-06 13:58:50', '1500034479', 1, 'Drum Box Slickline ', '0.50', '0.50', '0.50', 'SLB', '1', 'To Trucking'),
(1004, 'JV00024', 'IC000640', '195', '2020-09-06 14:00:17', '1500034404', 1, 'Pipe Spool USM (4 Wooden Box ', '2.10', '0.50', '2.10', 'Medco Energi', '1', 'To Yard'),
(1005, 'JV00024', 'IC000641', '196', '2020-09-06 14:02:42', '1500034404', 1, 'Pipe Spool USM (4 Wooden Box) ', '4.00', '1.50', '4.00', 'Medco Energi', '1', 'To Yard'),
(1006, 'JV00024', 'IC000641', '196', '2020-09-06 14:05:05', '1500034404', 1, 'Pipe Spool USM (4 Wooden Box) ', '4.00', '1.50', '4.00', 'Medco Energi', '1', 'To Yard'),
(1007, 'JV00024', 'IC000649', '198', '2020-09-06 14:08:01', '1500034463', 2, 'LIFE RAFT 4 UNIT', '2.40', '2.00', '2.40', 'Segara Permai', '1', 'To Yard'),
(1008, 'JV00024', 'IC000648', '97', '2020-09-06 14:09:45', '1500034461', 1, 'SCBA Cylinder Drager', '0.29', '0.15', '0.29', 'Indo Mitra Jaya', '1', 'To Yard'),
(1009, 'JV00024', 'IC000656', '200', '2020-09-06 14:10:11', '1500034451', 1, 'Motor Electric From Belida Cooler Deck', '0.60', '1.00', '1.00', 'PT.XIS JKT', '1', 'To Yard'),
(1010, 'JV00024', 'IC000649', '198', '2020-09-06 14:10:45', '1500034463', 1, 'LIFE RAFT 4 UNIT', '1.20', '1.00', '1.20', 'Segara Permai', '1', 'To Yard'),
(1011, 'JV00024', 'IC000692', '29', '2020-09-06 14:11:42', '002', 1, 'Baracard 25 SXS', '1.44', '1.00', '1.44', 'Baroid', '1', 'To Trucking'),
(1012, 'JV00024', 'IC000703', '214', '2020-09-06 14:13:22', '1500034825', 1, 'D620 (506 gal)', '1.33', '1.00', '1.33', 'Dowell ', '1', 'To Yard'),
(1013, 'JV00024', 'IC000703', '214', '2020-09-06 14:14:20', '1500034825', 1, 'D620 (506 gal)', '1.33', '1.00', '1.33', 'Dowell ', '1', 'To Yard'),
(1014, 'JV00024', 'IC000653', '61', '2020-09-06 14:20:10', '1500034485', 1, 'Empty Tote Tank S 9282 , LBU-2019-0070', '2.39', '0.30', '2.39', 'Medco Energi', '1', 'To Yard'),
(1015, 'JV00024', 'IC000654', '61', '2020-09-06 14:20:33', '1500034357', 1, 'Empty Tote Tank S 9282 , LBU-2019-0068', '2.39', '0.30', '2.39', 'Medco Energi', '1', 'To Yard'),
(1016, 'JV00024', 'IC000645', '45', '2020-09-06 14:21:11', '1500034357', 1, 'Skid TD-TT-550-086 c/w Lifting Set', '5.05', '1.00', '5.05', 'LBU', '1', 'To Yard'),
(1017, 'JV00024', 'IC000644', '45', '2020-09-06 14:21:35', '1500034357', 1, 'Skid TD-TT-550-122 c/w Lifting Set', '5.05', '1.00', '5.05', 'LBU', '1', 'To Jetty'),
(1018, 'JV00024', 'IC000706', '212', '2020-09-06 14:23:57', 'JAO-BB-130', 1, 'Mini Container ID.JAO-BB-1302', '8.59', '3.00', '8.59', 'Schlumberger', '1', 'To Trucking'),
(1019, 'JV00024', 'IC000688', '212', '2020-09-06 14:24:58', '1500034672', 1, 'Mini Container 6FT AMNE 5829', '8.59', '3.00', '8.59', 'Altus', '1', 'To Yard'),
(1020, 'JV00024', 'IC000690', '212', '2020-09-06 14:27:15', '1500034672', 1, 'Mini Container 6FT AMNE 5806', '8.59', '3.50', '8.59', 'Altus', '1', 'To Yard'),
(1021, 'JV00024', 'IC000708', '218', '2020-09-06 14:28:20', '1500034873', 1, '2.44M TCP Tool Box SN.BDK-TCP-TB-03', '2.37', '3.00', '3.00', 'Halliburton', '1', 'To Yard'),
(1022, 'JV00024', 'IC000642', '195', '2020-09-06 14:30:59', '1500034404', 1, 'Pipe Spool USM (4 Wooden Box)', '2.10', '0.50', '2.10', 'Medco Energi', '1', 'To Yard');
INSERT INTO `actual_stevedoring` (`id_as`, `id_joborder`, `id_cargo`, `id_jenis`, `time_as`, `doc_no_as`, `qty_as`, `rincian_cargo`, `m3_as`, `ton_as`, `revton_as`, `remarks_as`, `row_version`, `keterangan`) VALUES
(1023, 'JV00024', 'IC000649', '198', '2020-09-06 14:31:11', '1500034463', 1, 'LIFE RAFT 4 UNIT', '1.20', '1.00', '1.20', 'Segara Permai', '1', 'To Yard'),
(1024, 'JV00024', 'IC000662', '198', '2020-09-06 14:32:15', '1500034656', 2, 'LIFE RAFT', '2.40', '2.00', '2.40', 'Segara Permai', '1', 'To Yard'),
(1025, 'JV00024', 'IC000650', '197', '2020-09-06 14:35:16', '1500034483', 1, 'Rack FR-002 c/w Lifting Set', '5.85', '1.00', '5.85', 'Medco Energi', '1', 'To Yard'),
(1026, 'JV00024', 'IC000643', '197', '2020-09-06 14:36:04', '1500034353', 1, 'Rack TKC 12 c/w Lifting Set', '5.85', '1.00', '5.85', 'Medco Energi', '1', 'To Yard'),
(1027, 'JV00024', 'IC000655', '45', '2020-09-06 14:39:25', '1500034485', 1, 'Skid TD-TT-550-003', '5.05', '1.00', '5.05', 'Medco Energi', '1', 'To Yard'),
(1028, 'JV00024', 'IC000651', '45', '2020-09-06 14:39:44', '1500034485', 1, 'Skid OHF - 307 c/w Lifting Set', '5.05', '1.00', '5.05', 'Medco Energi', '1', 'To Yard'),
(1029, 'JV00024', 'IC000652', '61', '2020-09-06 14:41:23', '150003485', 1, 'Empty Tote Tank S 9441 , LBU 2019-0101', '2.39', '0.30', '2.39', 'Medco Energi', '1', 'To Yard'),
(1030, 'JV00024', 'IC000660', '202', '2020-09-06 14:43:17', '1500034513', 1, 'Rack No.SEU 53ROXO1631', '2.23', '1.50', '2.23', 'Sarku', '1', 'To Yard'),
(1031, 'JV00024', 'IC000661', '204', '2020-09-06 14:43:38', '1500034513', 1, 'Rack No.16 BR 023 , 16 Bottles', '4.21', '1.50', '4.21', 'Sarku', '1', 'To Yard'),
(1032, 'JV00024', 'IC000696', '29', '2020-09-06 14:55:46', '006', 1, 'Filter 10 Mikron', '1.44', '0.50', '1.44', 'Baroid', '1', 'To Yard'),
(1033, 'JV00024', 'IC000693', '29', '2020-09-06 14:59:18', '003', 1, 'Baracarb120 SXS', '1.44', '1.00', '1.44', 'Baroid', '1', 'To Yard'),
(1034, 'JV00024', 'IC000695', '29', '2020-09-06 15:00:35', '005', 1, 'Filter 2 Mikron', '1.44', '0.50', '1.44', 'Baroid', '1', 'To Trucking'),
(1035, 'JV00024', 'IC000694', '29', '2020-09-06 15:00:55', '004', 7, 'De Material SXS', '10.08', '7.00', '10.08', 'Baroid', '1', 'To Trucking'),
(1036, 'JV00024', 'IC000697', '29', '2020-09-06 15:01:16', '007', 8, 'Barofibre', '11.52', '8.00', '11.52', 'Baroid', '1', 'To Trucking'),
(1037, 'JV00024', 'IC000717', '7', '2020-09-06 15:04:16', '1500034851', 1, '10FT Well Tec.Container SN.M-C-10-1017', '18.90', '3.50', '18.90', 'Well Tech', '1', 'To Trucking'),
(1038, 'JV00024', 'IC000704', '215', '2020-09-06 15:07:39', '1500034825', 10, 'D252 (21000 lbs)', '12.70', '10.00', '12.70', 'Dowell ', '1', 'To Yard'),
(1039, 'JV00024', 'IC000704', '215', '2020-09-06 15:16:01', '1500034825', 10, 'D252 (21000 lbs)', '12.70', '10.00', '12.70', 'Dowell ', '1', 'To Yard'),
(1040, 'JV00024', 'IC000691', '213', '2020-09-06 15:28:09', '001', 10, 'Baracarb 25 Big Bag', '11.60', '10.00', '11.60', 'Baroid', '1', 'To Yard'),
(1041, 'JV00024', 'IC000691', '213', '2020-09-06 15:40:30', '001', 10, 'Baracarb 25 Big Bag', '11.60', '10.00', '11.60', 'Baroid', '1', 'To Yard'),
(1042, 'JV00024', 'IC000704', '215', '2020-09-06 15:50:35', '1500034825', 10, 'D252 (21000 lbs)', '12.70', '10.00', '12.70', 'Dowell ', '1', 'To Trucking'),
(1043, 'JV00024', 'IC000691', '213', '2020-09-06 16:05:23', '001', 13, 'Baracarb 25 Big Bag', '15.08', '13.00', '15.08', 'Baroid', '1', 'To Yard'),
(1044, 'JV00025', 'IC000762', '232', '2020-09-08 13:37:46', '2441150', 1, '20FT Half Opentop Container OEGU-2441150', '18.97', '2.57', '18.97', 'PMB', '1', 'To Yard'),
(1045, 'JV00025', 'IC000764', '232', '2020-09-08 13:39:44', '2445710', 1, '20FT Half Opentop Container OEGU-2445710', '18.97', '2.60', '18.97', 'PMB', '1', 'To Yard'),
(1046, 'JV00026', 'IC000776', '235', '2020-09-08 13:41:39', '5753303', 1, 'Reffer Container 10FT Empty ', '18.73', '2.50', '18.73', 'Baasithu Boga Service', '1', 'To Jetty'),
(1047, 'JV00025', 'IC000753', '41', '2020-09-08 13:44:18', '1200544', 1, '10FT Dry Food Container OEGU-1200544', '18.01', '3.00', '18.01', 'BBS', '1', 'To Trucking'),
(1048, 'JV00025', 'IC000750', '39', '2020-09-08 13:47:03', '697656', 1, 'Mini Container OEG-697656', '8.75', '2.50', '8.75', 'PMB', '1', 'To Trucking'),
(1049, 'JV00025', 'IC000752', '41', '2020-09-08 13:48:48', '1009482', 1, '10FT Chiller Food Container OEGU-1009482', '18.01', '3.00', '18.01', 'BBS', '1', 'To Trucking'),
(1050, 'JV00025', 'IC000727', '45', '2020-09-08 13:51:49', 'FT-03', 1, 'Tote Tank FT-03', '5.05', '1.10', '5.05', 'AGX Platform', '1', 'To Yard'),
(1051, 'JV00026', 'IC000773', '146', '2020-09-08 13:53:13', 'SE-2', 1, 'Empty Container 6FT', '8.55', '1.50', '8.55', 'Star Energy', '1', 'To Jetty'),
(1052, 'JV00026', 'IC000775', '234', '2020-09-08 13:56:03', '0001', 1, 'Yellow Basket C/W Sling and Shackle', '10.36', '0.58', '10.36', 'Shaftindo', '1', 'To Jetty'),
(1053, 'JV00026', 'IC000774', '54', '2020-09-08 14:14:23', 'SE-12', 1, 'Empty Half Opentop Container 10FT', '9.44', '1.50', '9.44', 'Star Energy', '1', 'To Jetty'),
(1054, 'JV00025', 'IC000757', '230', '2020-09-08 14:15:56', '1441921', 1, '10FT Half Opentop COntainer OEGU-1441921', '9.56', '3.00', '9.56', 'PMB', '1', 'To Yard'),
(1055, 'JV00025', 'IC000725', '132', '2020-09-08 14:18:01', 'FEL-305', 1, 'Waste Skip FEL-305', '5.21', '1.03', '5.21', 'Wastec', '1', 'To Yard'),
(1056, 'JV00025', 'IC000722', '132', '2020-09-08 14:19:55', 'FEL-277', 1, 'Waste Skip FEL-277', '5.21', '1.20', '5.21', 'Wastec', '1', 'To Yard'),
(1057, 'JV00025', 'IC000771', '233', '2020-09-08 14:21:49', 'WMES17', 1, 'Welding Machine 17 , Skid : SKWM 17', '6.72', '1.30', '6.72', 'Mesitech', '1', 'To Trucking'),
(1058, 'JV00025', 'IC000768', '233', '2020-09-08 14:26:25', 'WMES12', 1, 'Welding Machine WMES 12 , Skid : SKWM 12', '6.72', '1.30', '6.72', 'Mesitech', '1', 'To Trucking'),
(1059, 'JV00025', 'IC000772', '233', '2020-09-08 14:28:36', 'WMES18', 1, 'Welding Machine WMES 18 , Skid : SKWM 18', '6.72', '1.30', '6.72', 'Mesitech', '1', 'To Trucking'),
(1060, 'JV00026', 'IC000780', '236', '2020-09-08 14:29:48', '0002', 1, 'Rack Bottle Empty CO2', '1.80', '0.25', '1.80', 'Star Energy', '1', 'To Jetty'),
(1061, 'JV00025', 'IC000770', '233', '2020-09-08 14:30:19', 'WMES15', 1, 'Welding Machine WMES 15 , Skid : SKWM 15', '6.72', '1.30', '6.72', 'Mesitech', '1', 'To Yard'),
(1062, 'JV00025', 'IC000769', '233', '2020-09-08 14:31:43', 'WMES13', 1, 'Welding Machine WMES 13 , Skid : SKWM 13', '6.72', '1.30', '6.72', 'Mesitech', '1', 'To Trucking'),
(1063, 'JV00025', 'IC000721', '229', '2020-09-08 14:34:03', 'PDS-400', 1, 'Air Man Compressor PDS-400', '14.85', '2.80', '14.85', 'GB Mechanic', '1', 'To Trucking'),
(1064, 'JV00025', 'IC000763', '231', '2020-09-08 14:37:06', '2437063', 1, '20FT Half Opentop Container OEGU-2437063', '20.47', '6.00', '20.47', 'PMB', '1', 'To Jetty'),
(1065, 'JV00025', 'IC000765', '232', '2020-09-08 14:41:26', '2445768', 1, '20FT Half Opentop COntainer OEGU-2445768', '18.97', '2.60', '18.97', 'PMB', '1', 'To Yard'),
(1066, 'JV00025', 'IC000766', '232', '2020-09-08 14:51:42', '2447164', 1, '20FT Half Opentop Container OEGU-2447164', '18.97', '3.50', '18.97', 'PMB', '1', 'To Jetty'),
(1067, 'JV00025', 'IC000759', '144', '2020-09-08 14:54:27', '1442126', 1, '10FT Half Opentop Container OEGU-1442126', '11.03', '2.00', '11.03', 'PMB', '1', 'To Jetty'),
(1068, 'JV00025', 'IC000758', '144', '2020-09-08 14:57:41', '1442110', 1, '10FT Half Opentop Container OEGU-1442110', '11.03', '1.80', '11.03', 'PMB', '1', 'To Jetty'),
(1069, 'JV00025', 'IC000756', '144', '2020-09-08 15:00:16', '1441541', 1, '10FT Half Opentop COntainer OEGU-1441541', '11.03', '1.80', '11.03', 'PMB', '1', 'To Jetty'),
(1070, 'JV00025', 'IC000760', '144', '2020-09-08 15:02:46', '1442147', 1, '10FT Half Opentop Container OEGU-1442147', '11.03', '6.00', '11.03', 'PMB', '1', 'To Jetty'),
(1071, 'JV00025', 'IC000754', '230', '2020-09-08 15:06:14', '1436545', 1, '10FT Half Opentop Container OEGU-1436545', '9.56', '2.50', '9.56', 'PMB', '1', 'To Jetty'),
(1072, 'JV00025', 'IC000755', '144', '2020-09-08 15:07:15', '1437412', 1, '10Ft Half Opentop Container OEGU-1437412', '11.03', '1.80', '11.03', 'PMB', '1', 'To Jetty'),
(1073, 'JV00025', 'IC000751', '41', '2020-09-08 15:08:39', '1009461', 1, '10FT Chiller Food Container OEGU-1009461', '18.01', '3.00', '18.01', 'BBS', '1', 'To Trucking'),
(1074, 'JV00025', 'IC000736', '134', '2020-09-08 15:09:15', '690582', 1, 'Mini Container OEG-690582', '8.12', '1.60', '8.12', 'PMB', '1', 'To Yard'),
(1075, 'JV00025', 'IC000739', '39', '2020-09-08 15:12:07', '690605', 1, 'Mini Container OEG-690605', '8.75', '2.50', '8.75', 'PMB', '1', 'To Yard'),
(1076, 'JV00025', 'IC000748', '39', '2020-09-08 15:13:37', '697653', 1, 'Mini Container OEG-697653', '8.75', '2.50', '8.75', 'PMB', '1', 'To Yard'),
(1077, 'JV00025', 'IC000744', '134', '2020-09-08 15:15:51', '697025', 1, 'Mini Container OEG-697025', '8.12', '1.60', '8.12', 'PMB', '1', 'To Yard'),
(1078, 'JV00025', 'IC000740', '39', '2020-09-08 15:18:02', '696643', 1, 'Mini Container OEG-696643', '8.75', '2.70', '8.75', 'PMB', '1', 'To Yard'),
(1079, 'JV00025', 'IC000737', '134', '2020-09-08 15:20:43', '690597', 1, 'Mini Container OEG-690597', '8.12', '1.50', '8.12', 'PMB', '1', 'To Yard'),
(1080, 'JV00025', 'IC000745', '39', '2020-09-08 15:22:57', '697030', 1, 'Mini Container OEG-697030', '8.75', '2.60', '8.75', 'PMB', '1', 'To Yard'),
(1081, 'JV00025', 'IC000733', '39', '2020-09-08 15:25:55', '690220', 1, 'Mini Container OEG-690220', '8.75', '2.50', '8.75', 'PMB', '1', 'To Yard'),
(1082, 'JV00025', 'IC000731', '39', '2020-09-08 15:27:05', '690215', 1, 'Mini Container OEG-690215', '8.75', '2.80', '8.75', 'PMB', '1', 'To Yard'),
(1083, 'JV00025', 'IC000747', '134', '2020-09-08 15:29:18', '697627', 1, 'Mini Container OEG-697627', '8.12', '1.60', '8.12', 'PMB', '1', 'To Yard'),
(1084, 'JV00025', 'IC000732', '39', '2020-09-08 15:31:42', '690218', 1, 'Mini Container OEG-690218', '8.75', '2.50', '8.75', 'PMB', '1', 'To Yard'),
(1085, 'JV00025', 'IC000743', '39', '2020-09-08 15:34:31', '697024', 1, 'Mini Container OEG-697024', '8.75', '1.80', '8.75', 'PMB', '1', 'To Yard'),
(1086, 'JV00025', 'IC000742', '134', '2020-09-08 15:36:34', '696997', 1, 'Mini Container OEG-696997', '8.12', '1.50', '8.12', 'PMB', '1', 'To Yard'),
(1087, 'JV00025', 'IC000741', '39', '2020-09-08 15:41:37', '696644', 1, 'Mini Container OEG-696644', '8.75', '2.60', '8.75', 'PMB', '1', 'To Yard'),
(1088, 'JV00025', 'IC000749', '39', '2020-09-08 15:42:37', '697655', 1, 'Mini Container OEG-697655', '8.75', '2.90', '8.75', 'PMB', '1', 'To Yard'),
(1089, 'JV00025', 'IC000718', '227', '2020-09-08 15:44:56', '4602870', 1, '20FT Opentop Container AORU 4602870', '19.76', '7.30', '19.76', 'Mesitech', '1', 'To Jetty'),
(1090, 'JV00025', 'IC000761', '231', '2020-09-08 15:50:22', '2438666', 1, '20FT Half Opentop Container OEGU-2438656', '20.47', '6.40', '20.47', 'PMB', '1', 'To Jetty'),
(1091, 'JV00025', 'IC000730', '227', '2020-09-08 15:56:11', 'GCA-428', 1, '20FT Half Opentop Container GCA-428', '19.76', '9.00', '19.76', 'Mesitech', '1', 'To Jetty'),
(1092, 'JV00025', 'IC000728', '227', '2020-09-08 16:03:53', 'GCA-136', 1, '20Ft Half Opentop Container GCA-136', '19.76', '8.30', '19.76', 'Mesitech', '1', 'To Jetty'),
(1093, 'JV00025', 'IC000729', '227', '2020-09-08 16:04:16', 'GCA-148', 1, '20FT Half Opentop Container GCA-148', '19.76', '8.70', '19.76', 'Mesitech', '1', 'To Jetty'),
(1094, 'JV00025', 'IC000723', '132', '2020-09-08 16:06:02', 'FEL-302', 1, 'Waste Skip FEL-302', '5.21', '1.03', '5.21', 'Wastec', '1', 'To Yard'),
(1095, 'JV00025', 'IC000724', '132', '2020-09-08 16:07:42', 'FEL-304', 1, 'Waste Skip FEL-304', '5.21', '1.03', '5.21', 'Wastec', '1', 'To Yard'),
(1096, 'JV00025', 'IC000726', '132', '2020-09-08 16:10:27', 'FEL-307', 1, 'Waste Skip FEL-307', '5.21', '1.03', '5.21', 'Wastec', '1', 'To Yard'),
(1097, 'JV00026', 'IC000779', '49', '2020-09-08 16:21:31', '3259663', 1, 'Reefer Container 20FT , Contains 143 Ea Aqua', '37.77', '3.65', '37.77', 'Baasithu Boga Service', '1', 'To Trucking'),
(1098, 'JV00026', 'IC000778', '49', '2020-09-08 16:25:03', '2116479', 1, 'Dry Container 20FT , Contains 209 Ea Aqua', '37.77', '3.65', '37.77', 'Baasithu Boga Service', '1', 'To Trucking'),
(1099, 'JV00026', 'IC000777', '49', '2020-09-08 16:27:36', '0720677', 1, 'Reffer Container 20FT EMpty', '37.77', '3.65', '37.77', 'Baasithu Boga Service', '1', 'To Trucking'),
(1100, 'JV00025', 'IC000767', '228', '2020-09-08 16:29:13', '900084', 1, '20FT Closed Container RSTU 900084', '36.32', '12.20', '36.32', 'Conbit', '1', 'To Trucking'),
(1101, 'JV00025', 'IC000720', '228', '2020-09-08 16:34:21', '983006', 1, '20FT Closed Container CBXU 983006', '36.32', '12.00', '36.32', 'Conbit', '1', 'To Trucking'),
(1102, 'JV00025', 'IC000719', '228', '2020-09-08 16:41:44', '000923', 1, '20FT Closed Container CARU 000923', '36.32', '10.10', '36.32', 'Conbit', '1', 'To Trucking'),
(1103, 'JV00025', 'IC000734', '39', '2020-09-08 16:43:30', '690565', 1, 'Mini Container OEG-690565', '8.75', '2.50', '8.75', 'PMB', '1', 'To Yard'),
(1104, 'JV00025', 'IC000735', '39', '2020-09-08 16:45:52', '690573', 1, 'Mini Container OEG-690573', '8.75', '2.40', '8.75', 'PMB', '1', 'To Yard'),
(1105, 'JV00025', 'IC000738', '39', '2020-09-08 16:46:52', '690602', 1, 'Mini Container OEG-690602', '8.75', '2.40', '8.75', 'PMB', '1', 'To Yard'),
(1106, 'JV00025', 'IC000746', '134', '2020-09-08 16:48:57', '697608', 1, 'Mini Container OEG-697608', '8.12', '1.60', '8.12', 'PMB', '1', 'To Yard'),
(1107, 'JV00027', 'IC000783', '201', '2020-09-10 09:07:37', '7020739', 1, '20FT Container GDSK TAHU 7020739', '38.30', '3.50', '38.30', 'GDSK', '1', 'To Trucking'),
(1108, 'JV00027', 'IC000782', '201', '2020-09-10 09:09:12', '7020662', 1, '20FT Container GDSK TAHU 7020662', '38.30', '3.50', '38.30', 'GDSK', '1', 'To Trucking'),
(1109, 'JV00027', 'IC000786', '201', '2020-09-10 09:14:40', '7020615', 1, '20FT Container GDSK TAHU 7020615', '38.30', '3.50', '38.30', 'GDSK', '1', 'To Trucking'),
(1110, 'JV00027', 'IC000838', '66', '2020-09-10 09:19:29', '0002', 13, 'Bag Plastic Waste', '18.72', '4.02', '18.72', 'Medco Energi', '1', 'To Trucking'),
(1111, 'JV00027', 'IC000838', '66', '2020-09-10 09:24:03', '0002', 10, 'Bag Plastic Waste', '14.40', '3.09', '14.40', 'Medco Energi', '1', 'To Trucking'),
(1112, 'JV00027', 'IC000838', '66', '2020-09-10 09:28:30', '0002', 11, 'Bag Plastic Waste', '15.84', '3.40', '15.84', 'Medco Energi', '1', 'To Trucking'),
(1113, 'JV00027', 'IC000838', '66', '2020-09-10 09:31:29', '0002', 11, 'Bag Plastic Waste', '15.84', '3.40', '15.84', 'Medco Energi', '1', 'To Trucking'),
(1114, 'JV00027', 'IC000837', '66', '2020-09-10 09:35:31', '0001', 10, 'Bag Paper Trash', '14.40', '4.17', '14.40', 'Medco Energi', '1', 'To Trucking'),
(1115, 'JV00027', 'IC000837', '66', '2020-09-10 09:36:01', '0001', 15, 'Bag Paper Trash', '21.60', '6.25', '21.60', 'Medco Energi', '1', 'To Trucking'),
(1116, 'JV00027', 'IC000837', '66', '2020-09-10 09:37:29', '0001', 10, 'Bag Paper Trash', '14.40', '4.16', '14.40', 'Medco Energi', '1', 'To Trucking'),
(1117, 'JV00027', 'IC000827', '242', '2020-09-10 09:42:51', '1500035012', 2, 'D080 (1035 Gal)', '3.46', '2.00', '3.46', 'Dowel Schlumberger', '1', 'To Yard'),
(1118, 'JV00027', 'IC000828', '242', '2020-09-10 09:47:08', '1500035012', 2, 'D193 (275 Gal)', '3.46', '2.00', '3.46', 'Dowel Schlumberger', '1', 'To Yard'),
(1119, 'JV00027', 'IC000846', '66', '2020-09-10 09:52:54', '0003', 2, 'D081', '2.88', '0.80', '2.88', 'Dowel Schlumberger', '1', 'To Yard'),
(1120, 'JV00027', 'IC000787', '201', '2020-09-10 10:32:44', '6050146', 1, '20FT Container GDSK KKTU 6050146', '38.30', '3.50', '38.30', 'GDSK', '1', 'To Trucking'),
(1121, 'JV00027', 'IC000785', '201', '2020-09-10 10:36:17', '5752702', 1, '20FT Container GDSK DVRU 5752702', '38.30', '3.50', '38.30', 'GDSK', '1', 'To Trucking'),
(1122, 'JV00027', 'IC000788', '201', '2020-09-10 10:38:34', '6052827', 1, '20FT Container GDSK KKTU 6052827', '38.30', '3.80', '38.30', 'GDSK', '1', 'To Trucking'),
(1123, 'JV00027', 'IC000784', '201', '2020-09-10 10:42:26', '1027862', 1, '20FT Container GDSK CCLU 1027862', '38.30', '3.50', '38.30', 'GDSK', '1', 'To Trucking'),
(1124, 'JV00027', 'IC000845', '201', '2020-09-10 10:45:40', '1500035027', 1, '20Ft Container OEGU 1511593', '38.30', '5.00', '38.30', 'Vantage  ', '1', 'To Yard'),
(1125, 'JV00027', 'IC000797', '74', '2020-09-10 10:50:53', '1500034817', 1, 'Empty 6M H/H Basket C/W Lifting Set', '18.04', '5.00', '18.04', 'Vantage  ', '1', 'To Yard'),
(1126, 'JV00027', 'IC000792', '211', '2020-09-10 10:56:37', '1500034787', 1, '20FT DDC Container S/N , AS-011', '38.44', '8.50', '38.44', 'Ferdy Saputra', '1', 'To Jetty'),
(1127, 'JV00027', 'IC000789', '201', '2020-09-10 11:02:07', '7541095', 1, '20FT Container GDSK NYKU 7541095', '38.30', '3.50', '38.30', 'GDSK', '1', 'To Yard'),
(1128, 'JV00027', 'IC000790', '201', '2020-09-10 11:06:04', '8026028', 1, '20FT Container GDSK CNHU 8026028', '38.30', '3.50', '38.30', 'GDSK', '1', 'To Yard'),
(1129, 'JV00027', 'IC000842', '59', '2020-09-10 11:16:53', '1500034761', 1, 'Firex Rental Dry Powder cap 57 Kg & 9 Kg', '0.21', '0.30', '0.30', 'Segara Permai', '1', 'To Yard'),
(1130, 'JV00027', 'IC000843', '250', '2020-09-10 11:19:15', '1500034861', 1, 'Sertification Inflatable Life Raft Brand RFD cap 10 P', '1.20', '1.00', '1.20', 'Segara Permai', '1', 'To Yard'),
(1131, 'JV00027', 'IC000844', '251', '2020-09-10 11:22:07', '1500034939', 2, 'Air Compressor', '0.20', '0.20', '0.20', 'Atlas Copco', '1', 'To Yard'),
(1132, 'JV00027', 'IC000839', '61', '2020-09-10 11:25:00', '1500034060', 1, 'Empty T/Tank MEG 0105', '2.39', '0.30', '2.39', 'Luas Birus Utama', '1', 'To Yard'),
(1133, 'JV00027', 'IC000841', '61', '2020-09-10 11:26:32', '1500034060', 1, 'Empty T/Tank Starhib WM-596SM LBU-2019-0075', '2.39', '0.30', '2.39', 'LBU', '1', 'To Yard'),
(1134, 'JV00027', 'IC000840', '61', '2020-09-10 11:28:26', '1500034060', 1, 'Empty T/Tank MEG LBU-2019-0058', '2.39', '0.30', '2.39', 'LBU', '1', 'To Yard'),
(1135, 'JV00027', 'IC000793', '211', '2020-09-10 11:34:22', '1500034787', 1, '20FT Open Top Container S/N H-272', '38.44', '11.00', '38.44', 'Ferdy Saputra', '1', 'To Jetty'),
(1136, 'JV00027', 'IC000781', '211', '2020-09-10 11:41:27', '1500034402', 1, '20FT Container H 271 C/W Lifting Set', '38.44', '10.00', '38.44', 'Istana Karang Laut', '1', 'To Trucking'),
(1137, 'JV00027', 'IC000799', '219', '2020-09-10 13:39:29', '1500034873', 1, '10.3 M Offshore Basket SN B.1014', '17.67', '11.50', '17.67', 'Halliburton', '1', 'To Jetty'),
(1138, 'JV00027', 'IC000798', '219', '2020-09-10 13:46:16', '1500034873', 1, '10.3 M Offshore Basket SN AORU 1030262', '17.67', '9.50', '17.67', 'Halliburton', '1', 'To Jetty'),
(1139, 'JV00027', 'IC000809', '240', '2020-09-10 14:01:27', '1500034935', 3, 'Tubing Seamselss 4-1/2"', '0.36', '10.50', '10.50', 'Medco Energi', '1', 'To Jetty'),
(1140, 'JV00027', 'IC000829', '244', '2020-09-10 14:17:14', '1500035027', 3, 'Drill Pipe 5-1/2"  Inches For Inspect (36 joint)', '0.60', '10.30', '10.30', 'Vantage  ', '1', 'To Jetty'),
(1141, 'JV00027', 'IC000796', '238', '2020-09-10 14:33:37', '1500034569', 1, 'Half Container 20FT.SN AORU 4602103', '21.06', '12.00', '21.06', 'ALTUS', '1', 'To Jetty'),
(1142, 'JV00027', 'IC000808', '187', '2020-09-10 14:40:09', '1500034954', 1, '20FT Basket AORU 4602398', '21.14', '5.50', '21.14', 'Solar Alert', '1', 'To Jetty'),
(1143, 'JV00027', 'IC000794', '211', '2020-09-10 14:46:23', '1500034787', 1, '20FT Open Top Container H-337', '38.44', '10.00', '38.44', 'Ferdy Saputra', '1', 'To Jetty'),
(1144, 'JV00027', 'IC000795', '211', '2020-09-10 14:51:50', '1500034787', 1, '20FT Open Top Container H-340', '38.44', '12.00', '38.44', 'Ferdy Saputra', '1', 'To Jetty'),
(1145, 'JV00027', 'IC000804', '211', '2020-09-10 14:57:23', '1500034992', 1, '20FT Opentop Container SN.PPLi 9730', '38.44', '15.00', '38.44', 'PPLi', '1', 'To Jetty'),
(1146, 'JV00027', 'IC000805', '211', '2020-09-10 15:01:12', '1500034992', 1, '20FT Opentop Container SN.PPLi 9725', '38.44', '16.00', '38.44', 'PPLi', '1', 'To Jetty'),
(1147, 'JV00027', 'IC000807', '211', '2020-09-10 15:11:21', '1500034992', 1, '20FT Opentop Container SN.PPLi 9719', '38.44', '15.00', '38.44', 'PPLi', '1', 'To Jetty'),
(1148, 'JV00027', 'IC000806', '211', '2020-09-10 15:16:56', '1500034992', 1, '20FT Opentop Container SN.PPLi 9731', '38.44', '15.00', '38.44', 'PPLi', '1', 'To Jetty'),
(1149, 'JV00027', 'IC000824', '45', '2020-09-10 15:30:26', '1500034998', 1, 'Empty Tote Tank SN : TD-TT-550-114', '5.05', '1.00', '5.05', 'Dowel Schlumberger', '1', 'To Trucking'),
(1150, 'JV00027', 'IC000826', '45', '2020-09-10 15:30:48', '1500034998', 1, 'Empty Tote Tank SN : TD-TT-550-041', '5.05', '1.00', '5.05', 'Dowel Schlumberger', '1', 'To Trucking'),
(1151, 'JV00027', 'IC000825', '45', '2020-09-10 15:32:50', '1500034998', 1, 'Empty Tote Tank SN : TD-TT-550-043', '5.05', '1.00', '5.05', 'Dowel Schlumberger', '1', 'To Trucking'),
(1152, 'JV00027', 'IC000823', '45', '2020-09-10 15:33:12', '1500034998', 1, 'Empty Tote Tank SN : TD-TT-550-112', '5.05', '1.00', '5.05', 'Dowel Schlumberger', '1', 'To Trucking'),
(1153, 'JV00027', 'IC000847', '252', '2020-09-10 15:37:06', '1500034974', 1, 'Primary Box  Explosive (Empty)', '2.12', '0.50', '2.12', 'Halliburton', '1', 'To Yard'),
(1154, 'JV00027', 'IC000848', '253', '2020-09-10 15:37:22', '1500034974', 1, 'Secondary Box Explosive (Empty) SBY-EB-03', '3.77', '0.80', '3.77', 'Halliburton', '1', 'To Yard'),
(1155, 'JV00027', 'IC000836', '248', '2020-09-10 15:40:53', 'GN 010', 1, 'Diesel Brushless Generator MGC 156 Swith S/N AOS GN 010 ', '11.27', '2.50', '11.27', 'Ferdy Saputra', '1', 'To Yard'),
(1156, 'JV00027', 'IC000822', '241', '2020-09-10 15:46:29', '1500034990', 1, 'Empty Cutting Skip 11 Ton c/w Lifting Set LCK 725', '6.23', '1.70', '6.23', 'PPLi', '1', 'To Jetty'),
(1157, 'JV00027', 'IC000812', '241', '2020-09-10 15:47:42', '1500034990', 1, 'Empty Cutting Skip 11 Ton c/w Lifting Set LCK 127', '6.23', '1.70', '6.23', 'PPLi', '1', 'To Jetty'),
(1158, 'JV00027', 'IC000814', '241', '2020-09-10 15:49:23', '1500034990', 1, 'Empty Cutting Skip 11 Ton c/w Lifting Set CMS 0219', '6.23', '1.70', '6.23', 'PPLi', '1', 'To Jetty'),
(1159, 'JV00027', 'IC000818', '241', '2020-09-10 15:52:13', '1500034990', 1, 'Empty Cutting Skip 11 Ton c/w Lifting Set LCK 322', '6.23', '1.70', '6.23', 'PPLi', '1', 'To Jetty'),
(1160, 'JV00027', 'IC000811', '241', '2020-09-10 15:53:40', '1500034990', 1, 'Empty Cutting Skip 11 Ton c/w Lifting Set CMS 0559', '6.23', '1.70', '6.23', 'PPLi', '1', 'To Jetty'),
(1161, 'JV00027', 'IC000820', '241', '2020-09-10 15:56:01', '1500034990', 1, 'Empty Cutting Skip 11 Ton c/w Lifting Set LCK 739', '6.23', '1.70', '6.23', 'PPLi', '1', 'To Jetty'),
(1162, 'JV00027', 'IC000810', '241', '2020-09-10 15:58:00', '1500034990', 1, 'Empty Cutting Skip 11 Ton c/w Lifting Set CMS 0458', '6.23', '1.70', '6.23', 'PPLi', '1', 'To Jetty'),
(1163, 'JV00027', 'IC000821', '241', '2020-09-10 16:00:34', '1500034990', 1, 'Empty Cutting Skip 11 Ton c/w Lifting Set LCK 009', '6.23', '1.70', '6.23', 'PPLi', '1', 'To Jetty'),
(1164, 'JV00027', 'IC000817', '241', '2020-09-10 16:02:19', '1500034990', 1, 'Empty Cutting Skip 11 Ton c/w Lifting Set CMS 0223', '6.23', '1.70', '6.23', 'PPLi', '1', 'To Jetty'),
(1165, 'JV00027', 'IC000815', '241', '2020-09-10 16:04:34', '1500034990', 1, 'Empty Cutting Skip 11 Ton c/w Lifting Set CMS 0234', '6.23', '1.70', '6.23', 'PPLi', '1', 'To Jetty'),
(1166, 'JV00027', 'IC000819', '241', '2020-09-10 16:06:10', '1500034990', 1, 'Empty Cutting Skip 11 Ton c/w Lifting Set CMS 0175', '6.23', '1.70', '6.23', 'PPLi', '1', 'To Jetty'),
(1167, 'JV00027', 'IC000816', '241', '2020-09-10 16:07:53', '1500034990', 1, 'Empty Cutting Skip 11 Ton c/w Lifting Set CMS 0478', '6.23', '1.70', '6.23', 'PPLi', '1', 'To Jetty'),
(1168, 'JV00027', 'IC000813', '241', '2020-09-10 16:10:14', '1500034990', 1, 'Empty Cutting Skip 11 Ton c/w Lifting Set LCK 658', '6.23', '1.70', '6.23', 'PPLi', '1', 'To Jetty'),
(1169, 'JV00027', 'IC000835', '247', '2020-09-10 16:13:11', '016-4', 1, 'Rack SEU-Rox-016-4', '2.03', '1.00', '2.03', 'Sarku', '1', 'To Yard'),
(1170, 'JV00027', 'IC000832', '203', '2020-09-10 16:13:26', '1500034891', 1, 'Rck No.MACRK - 204 c/w Lifting set ', '2.23', '1.50', '2.23', 'Medco Energi', '1', 'To Yard'),
(1171, 'JV00027', 'IC000833', '61', '2020-09-10 16:15:24', '2019-0069', 1, 'MT Tote Tank Ex Chemical MEG LBU-2019-0069', '2.39', '0.30', '2.39', 'LBU', '1', 'To Yard'),
(1172, 'JV00027', 'IC000849', '254', '2020-09-10 16:15:39', '1500034974', 1, 'Secondary Box Explosive (Empty) EWS-EB-01', '2.78', '0.80', '2.78', 'Halliburton', '1', 'To Yard'),
(1173, 'JV00027', 'IC000834', '45', '2020-09-10 16:18:16', '550-100', 1, 'MT Tote Tank Ex Chemical MEG-TT-TT-550-100', '5.05', '1.00', '5.05', 'LBU', '1', 'To Yard'),
(1174, 'JV00027', 'IC000791', '237', '2020-09-10 16:20:30', '1500034787', 1, 'Diving Lars c/w Double Diving Basket', '24.45', '6.50', '24.45', 'Ferdy Saputra', '1', 'To Jetty'),
(1175, 'JV00027', 'IC000802', '31', '2020-09-10 16:28:49', '1500034960', 3, 'EZ-MUL NT', '4.74', '2.55', '4.74', 'Baroid', '1', 'To Yard'),
(1176, 'JV00027', 'IC000803', '31', '2020-09-10 16:29:59', '1500034960', 3, 'INTERMUL NT', '4.74', '2.55', '4.74', 'Baroid', '1', 'To Yard'),
(1177, 'JV00027', 'IC000830', '245', '2020-09-10 16:31:21', '1500034453', 1, 'RR Expansion Valve Chiller LQ unit B Comp A1', '0.30', '0.10', '0.30', 'Spectra Solusindo', '1', 'To Yard'),
(1178, 'JV00027', 'IC000831', '246', '2020-09-10 16:31:37', '1500034649', 4, 'Tools PSV (PT.PJ-TEK Mandiri)', '0.80', '0.30', '0.80', 'Spectra Solusindo', '1', 'To Yard'),
(1179, 'JV00027', 'IC000801', '31', '2020-09-10 16:37:33', '1500034960', 3, 'Baracarb 5 BigBag', '4.74', '3.00', '4.74', 'Baroid', '1', 'To Yard'),
(1180, 'JV00027', 'IC000800', '31', '2020-09-10 16:41:45', '1500034923', 2, 'Baracarb 5 BigBag', '3.16', '2.00', '3.16', 'Baroid', '1', 'To Yard');

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
  `nm_client2` varchar(50) DEFAULT NULL,
  `no_kontrak` varchar(50) DEFAULT NULL,
  `deskripsi_kontrak` text,
  `tgl_awal` datetime DEFAULT NULL,
  `tgl_akhir` datetime DEFAULT NULL,
  `logo_client` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id_client`, `kd_client`, `nm_client`, `nm_client2`, `no_kontrak`, `deskripsi_kontrak`, `tgl_awal`, `tgl_akhir`, `logo_client`) VALUES
(1, 'PHE', 'PERTAMINA HULU ENERGI', 'Pertamina Hulu Energi', 'No.Contract: 332004155', 'Shorebase rental & Material Handling services\r\n', '2018-09-06 00:00:00', '2022-12-14 00:00:00', 'phe.png'),
(2, 'PREM', 'PREMIER OIL', 'Premier Oil', 'No. Contract: CO-17142359', 'Provision Integrated shorebase\r\n', '2017-08-15 00:00:00', '2022-08-14 00:00:00', 'premier-oil.jpg'),
(3, 'MEDC', 'MEDCO ENERGY', 'Medco Energy', 'No.Contract: BF12635', 'Jakarta Staging Services\r\n', '2018-12-18 00:00:00', '2019-04-17 00:00:00', 'medco-energy.jpg'),
(4, 'STAR', 'STAR ENERGY', 'Star Energy', ' No.Contract: 4200002570', 'Provision Jakarta Warehouse & Stevedoring Services', '2017-07-01 00:00:00', '2019-06-30 00:00:00', 'star-energy.png'),
(5, 'PETRO', 'PETROGAS', 'Petrogas', 'No.Contract: PBL-2019-003', 'Transit Whs Rental & Management services contract', '2019-01-01 00:00:00', '2020-10-14 00:00:00', 'petrogas.jpg'),
(6, 'CONO', 'CONOCO', 'Conoco', NULL, NULL, NULL, NULL, NULL),
(7, 'BAK', 'BAKER', 'Baker', 'No.Contract: 004/CTRK/BAKER/XI/16/RA', '2000 sqm  covered storage and 7950 sqm open storage\r\n', '2018-02-28 00:00:00', '2019-08-31 00:00:00', 'baker.jpeg');

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
('IC000045', 'JV00002', '7', NULL, '1500002', 0, 'DNV Container 10 FT', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000048', 'JV00002', '18', NULL, '1500005', 0, 'Iron Basket , c/w Lifting Set', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL),
('IC000049', 'JV00002', '6', NULL, '1500001', 0, 'Empty Dry Container 20 FT', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '3', NULL),
('IC000051', 'JV00002', '14', NULL, '1500003', 0, 'Empty Tote Tank', '0.00', '0.00', '0.00', 'Champion', '1', '0', '1', NULL),
('IC000052', 'JV00002', '10', NULL, '1500004', 0, 'Empty IBC Tank', '0.00', '0.00', '0.00', 'Champion', '1', '0', '1', NULL),
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
('IC000124', 'JV00002', '12', NULL, '150009', 0, 'Container PPLi', '0.00', '0.00', '0.00', 'Incdocater', '1', '0', '2', NULL),
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
('IC000401', 'JV00016', '7', NULL, '23000146', 0, 'Container AORU 23000146 ', '0.00', '0.00', '0.00', 'Well Tec', '1', '0', '1', NULL),
('IC000402', 'JV00017', '38', NULL, '277', 0, 'Waste Skip ID FEL 277', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000403', 'JV00017', '38', NULL, '282', 0, 'Waste Skip  NO FEL 282', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000404', 'JV00017', '38', NULL, '283', 0, 'Waste Skip ID FEL 283', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000405', 'JV00017', '38', NULL, '287', 0, 'Waste Skip  NO FEL 287', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000406', 'JV00017', '38', NULL, '295', 0, 'Waste Skip  NO FEL 295', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000407', 'JV00017', '38', NULL, '297', 0, 'Waste Skip ID FEL 297', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL);
INSERT INTO `detail_joborder` (`id_cargo`, `id_joborder`, `id_jenis`, `timeCargo`, `doc_no`, `qty_cargo`, `rincian_cargo`, `m3_cargo`, `ton_cargo`, `revton_cargo`, `remarks_cargo`, `status_cargo`, `cargo_final`, `row_version`, `keterangan`) VALUES
('IC000408', 'JV00017', '132', NULL, '271', 0, 'Waste Skip NO FEL 271', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000409', 'JV00017', '132', NULL, '272', 0, 'Waste Skip FEL 272', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000410', 'JV00017', '132', NULL, '281', 0, 'Waste Skip FEL 281', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000411', 'JV00017', '132', NULL, '288', 0, 'Waste Skip FEL 288', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000412', 'JV00017', '132', NULL, '299', 0, 'Waste Skip FEL 299', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000413', 'JV00017', '142', NULL, '01', 0, 'Rack Bottle Gas ID No.01', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000414', 'JV00017', '39', NULL, '690215', 0, 'Mini Container ID OEG 690215', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000415', 'JV00017', '39', NULL, '690218', 0, 'Mini Container ID OEG 690218', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000416', 'JV00017', '39', NULL, '690602', 0, 'Mini Container ID OEG 690602', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000417', 'JV00017', '39', NULL, '696644', 0, 'Mini Container ID OEG 696644', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000418', 'JV00017', '39', NULL, '697008', 0, 'Mini Container ID OEG 697008', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000419', 'JV00017', '39', NULL, '697023', 0, 'Mini Container ID OEG 697023', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000420', 'JV00017', '39', NULL, '697024', 0, 'Mini Container ID OEG 697024', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000421', 'JV00017', '39', NULL, '697030', 0, 'Mini Container ID OEG 697030', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000422', 'JV00017', '39', NULL, '697653', 0, 'Mini Container ID OEG 697653', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000423', 'JV00017', '39', NULL, '697656', 0, 'Mini Container ID OEG 697656', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000424', 'JV00017', '137', NULL, '1437428', 0, '10FT Half Opentop Container OEG-1437428', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000425', 'JV00017', '137', NULL, '1441921', 0, '10Ft Half Opentop Container OEG-1441921', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000426', 'JV00017', '134', NULL, '690220', 0, 'Mini Container OEG 690220', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000427', 'JV00017', '39', NULL, '690567', 0, 'Mini Container OEG 690567', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000428', 'JV00017', '141', NULL, '021', 0, 'Plastic Box : FPS-DS-Box-21', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000429', 'JV00017', '143', NULL, '690597', 0, 'Mini Container OEG 690597', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000430', 'JV00017', '143', NULL, '690614', 0, 'Mini Container 690614', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000431', 'JV00017', '39', NULL, '696643', 0, 'MIni Container OEG 696643', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000432', 'JV00017', '143', NULL, '697610', 0, 'MIni Container OEG 697610', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000433', 'JV00017', '141', NULL, '697628', 0, 'Plastic Box OEG 697628', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000434', 'JV00017', '39', NULL, '697655', 0, 'Mini Container OEG 697655', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000435', 'JV00017', '40', NULL, '1009498', 0, '10FT Food Stuff Container Frez', '0.00', '0.00', '0.00', 'BBS', '1', '0', '1', NULL),
('IC000436', 'JV00017', '41', NULL, '1009100', 0, '10FT Frozen Food Container', '0.00', '0.00', '0.00', 'BBS', '1', '0', '1', NULL),
('IC000437', 'JV00017', '41', NULL, '1009522', 0, '10FT Chiller Food Container', '0.00', '0.00', '0.00', 'BBS', '1', '0', '1', NULL),
('IC000438', 'JV00017', '40', NULL, '1200591', 0, '10FT Dry Food Container', '0.00', '0.00', '0.00', 'BBS', '1', '0', '1', NULL),
('IC000439', 'JV00017', '41', NULL, '1201509', 0, '10FT Dry Container', '0.00', '0.00', '0.00', 'BBS', '1', '0', '1', NULL),
('IC000441', 'JV00017', '144', NULL, '1436545', 0, '10FT opentop Container ', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000442', 'JV00017', '137', NULL, '1442152', 0, '10FT Half Opentop Container', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000443', 'JV00017', '44', NULL, '2440806', 0, '20FT Half Opentop Container', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000444', 'JV00017', '138', NULL, '2443723', 0, '20FT Opentop Container', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000445', 'JV00017', '140', NULL, '2444165', 0, '20FT Opentop Container', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000446', 'JV00017', '44', NULL, '2447035', 0, '20FT Half Opentop Container', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000447', 'JV00017', '45', NULL, '1282', 0, 'ToteTank ID OHF-1282', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000448', 'JV00017', '22', NULL, '16-002', 0, 'Nitrogen Rack', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000449', 'JV00018', '49', NULL, '1189256', 0, 'Dry Container 20FT', '0.00', '0.00', '0.00', 'BBS', '1', '0', '1', NULL),
('IC000450', 'JV00018', '49', NULL, '0720677', 0, 'Empty Reefer Container 20FT', '0.00', '0.00', '0.00', 'BBS', '1', '0', '1', NULL),
('IC000451', 'JV00018', '49', NULL, '2007908', 0, 'Dry Container 20FT', '0.00', '0.00', '0.00', 'BBS', '1', '0', '1', NULL),
('IC000452', 'JV00018', '54', NULL, 'SE-01 , SE', 0, 'Half Opentop Container ', '0.00', '0.00', '0.00', 'Star Energy', '1', '0', '1', NULL),
('IC000453', 'JV00018', '55', NULL, 'SE-10', 0, 'Half Opentop Container 20FT', '0.00', '0.00', '0.00', 'Star Energy', '1', '0', '1', NULL),
('IC000454', 'JV00018', '146', NULL, 'SE-2', 0, 'Empty Container 6FT', '0.00', '0.00', '0.00', 'Star Energy', '1', '0', '1', NULL),
('IC000455', 'JV00018', '148', NULL, '001', 0, 'OC Merk Lenovo', '0.00', '0.00', '0.00', 'Star Energy', '1', '0', '1', NULL),
('IC000456', 'JV00019', '37', NULL, '1500033715', 0, 'Viking Liferaft 25 DK + SN 11178432', '0.00', '0.00', '0.00', 'Segara Permai', '1', '0', '1', NULL),
('IC000457', 'JV00019', '37', NULL, '1500033715', 0, 'Viking Liferaft 25 DK + SN D-150902', '0.00', '0.00', '0.00', 'Segara Permai', '1', '0', '1', NULL),
('IC000458', 'JV00019', '37', NULL, '1500033715', 0, 'Viking Liferaft 25 DKF + SN 12455376', '0.00', '0.00', '0.00', 'Segara Permai', '1', '0', '1', NULL),
('IC000459', 'JV00019', '68', NULL, '1500033574', 0, 'Lifting Gear Box North Crane', '0.00', '0.00', '0.00', 'Depriwangga', '1', '0', '1', NULL),
('IC000460', 'JV00019', '149', NULL, '1500015358', 0, 'Box Electrical Distri , 14-WE0024', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000461', 'JV00019', '65', NULL, '1500034132', 0, '20FT Container ISO OEGU 0006083', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000462', 'JV00019', '65', NULL, '1500034146', 0, '20FT Container ISO , OEGU 0006088', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000463', 'JV00019', '66', NULL, '1500034132', 0, 'Domestic Waste', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000464', 'JV00019', '102', NULL, '1500034144', 0, 'Cylinder Rack : SEU-53-ROX-016-56', '0.00', '0.00', '0.00', 'Sarku', '1', '0', '1', NULL),
('IC000465', 'JV00019', '102', NULL, '1500034144', 0, 'Cylinder Rack :SEU-53-ROX-016-27', '0.00', '0.00', '0.00', 'Sarku', '1', '0', '1', NULL),
('IC000466', 'JV00019', '65', NULL, '2503036', 0, '20FT Container O/Side OEGU 2503036', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000467', 'JV00019', '65', NULL, '1670023', 0, '20FT Container O/Side 1670023', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000468', 'JV00019', '65', NULL, '9456341', 0, 'Empty 20FT Container GDSK GESU 9456341 ', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000469', 'JV00019', '65', NULL, '6053058', 0, 'Empty 20FT Container GDSK KKTU 6053058', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000470', 'JV00019', '65', NULL, '5205070', 0, 'Empty 20FT Container GDSK FSCU 5205070', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000471', 'JV00019', '65', NULL, '7546651', 0, 'Empty 20FT Container GDSK NYKU 7546651', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000472', 'JV00019', '65', NULL, '7020533', 0, 'Empty 20FT Container GDSK 7020533', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000473', 'JV00019', '65', NULL, '8026028', 0, 'Empty 20Ft Container GDSK CNHU 8026028', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000474', 'JV00019', '150', NULL, '1500033609', 0, '1 unit Seatel Antenna Dome VSAT', '0.00', '0.00', '0.00', 'Primacom', '1', '0', '1', NULL),
('IC000475', 'JV00019', '15', NULL, '1500033542', 0, 'Offshore Basket SN.SLB-08897', '0.00', '0.00', '0.00', 'Dowell Anadrill', '1', '0', '1', NULL),
('IC000476', 'JV00019', '43', NULL, '1500033580', 0, 'Half Container 10FT SN. OEGU 143622', '0.00', '0.00', '0.00', 'Dowell Anadrill', '1', '0', '1', NULL),
('IC000477', 'JV00019', '151', NULL, '1500033580', 0, 'Empty Basket 6 Meter , SN.TD-CB-6-001', '0.00', '0.00', '0.00', 'Dowell Anadrill', '1', '0', '1', NULL),
('IC000478', 'JV00019', '152', NULL, '1500033572', 0, 'Stand Dryer Complete with 4 Legs sling', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL),
('IC000479', 'JV00019', '26', NULL, '1500033635', 0, 'Half Container 10FT SN.SFHH 3156', '0.00', '0.00', '0.00', 'Vantage  ', '1', '0', '1', NULL),
('IC000480', 'JV00019', '124', NULL, '1500033742', 0, 'Empty Basket TD-CB-10-002', '0.00', '0.00', '0.00', 'Baker Huges', '1', '0', '1', NULL),
('IC000481', 'JV00019', '65', NULL, '1515109', 0, 'Empty Container Food Stuff OEGU 1515109', '0.00', '0.00', '0.00', 'Indoship', '1', '0', '1', NULL),
('IC000482', 'JV00019', '65', NULL, '1034331', 0, 'Empty Container Food Stuff CCLU 1034331', '0.00', '0.00', '0.00', 'Indoship', '1', '0', '1', NULL),
('IC000483', 'JV00019', '94', NULL, '1500034000', 0, 'Offshore Basket SN.TD-CB-12-004', '0.00', '0.00', '0.00', 'Baker Huges', '1', '0', '1', NULL),
('IC000484', 'JV00019', '92', NULL, '1500034000', 0, 'Offshore Basket SN.B 1403', '0.00', '0.00', '0.00', 'Baker Huges', '1', '0', '1', NULL),
('IC000485', 'JV00019', '153', NULL, '1500034038', 0, 'Empty Propane Rack SN.STE PR-03', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL),
('IC000486', 'JV00019', '153', NULL, '1500034156', 0, 'Empty Propane Rack SN.STE PR-05', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL),
('IC000487', 'JV00019', '108', NULL, '1500034154', 0, 'Offshore Box', '0.00', '0.00', '0.00', 'Copi 002', '1', '0', '1', NULL),
('IC000488', 'JV00019', '159', NULL, '1500034150', 0, 'Basket AORU 4300227', '0.00', '0.00', '0.00', 'Dowell', '1', '0', '1', NULL),
('IC000489', 'JV00019', '109', NULL, '1500034150', 0, 'D-066', '0.00', '0.00', '0.00', 'Dowell', '1', '0', '1', NULL),
('IC000490', 'JV00019', '109', NULL, '1500034150', 0, 'D-255', '0.00', '0.00', '0.00', 'Dowell', '1', '0', '1', NULL),
('IC000491', 'JV00019', '100', NULL, '1500034253', 0, '20FT Opentop Container SN.9732', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000492', 'JV00019', '100', NULL, '1500034253', 0, '20FT Opentop Container SN.9729', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000493', 'JV00019', '100', NULL, '1500034253', 0, '20FT Opentop Container SN.9722', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000494', 'JV00019', '100', NULL, '1500034253', 0, '20FT Opentop Container SN.9733', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000495', 'JV00019', '130', NULL, '1500034152', 0, 'Offshore Basket SN.Auro 1330130', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL),
('IC000496', 'JV00019', '154', NULL, 'AH 001', 0, 'Hammer Basket AH-01 ', '0.00', '0.00', '0.00', 'Nabors', '1', '0', '1', NULL),
('IC000497', 'JV00019', '154', NULL, 'AH 002', 0, 'Hammer Basket AH 002', '0.00', '0.00', '0.00', 'Nabors', '1', '0', '1', NULL),
('IC000498', 'JV00019', '155', NULL, 'IHC 002', 0, 'Skid Frame Power Pack , IHC-002', '0.00', '0.00', '0.00', 'Nabors', '1', '0', '1', NULL),
('IC000499', 'JV00019', '155', NULL, 'IHC 001', 0, 'Skid Frame Power Pack , IHCoot', '0.00', '0.00', '0.00', 'Nabors', '1', '0', '1', NULL),
('IC000500', 'JV00019', '156', NULL, 'Yap-1107-2', 0, 'Basket YAP 1107-22', '0.00', '0.00', '0.00', 'Nabors', '1', '0', '1', NULL),
('IC000501', 'JV00019', '157', NULL, '1103-01', 0, 'Basket YAP 1103-01', '0.00', '0.00', '0.00', 'Nabors', '1', '0', '1', NULL),
('IC000502', 'JV00019', '158', NULL, '4300124', 0, 'Half Height 3M', '0.00', '0.00', '0.00', 'Nabors', '1', '0', '1', NULL),
('IC000503', 'JV00019', '159', NULL, '9001569', 0, 'AORU 9001569', '0.00', '0.00', '0.00', 'ALTUS', '1', '0', '1', NULL),
('IC000504', 'JV00019', '160', NULL, '1228650', 0, 'Basket MOOU 1228650', '0.00', '0.00', '0.00', 'ALTUS', '1', '0', '1', NULL),
('IC000505', 'JV00019', '25', NULL, '23000188', 0, 'Dry Container AOURU', '0.00', '0.00', '0.00', 'Vantage  ', '1', '0', '1', NULL),
('IC000506', 'JV00019', '25', NULL, '3168', 0, 'Empty Container FSDG 3168 ', '0.00', '0.00', '0.00', 'Vantage  ', '1', '0', '1', NULL),
('IC000507', 'JV00019', '25', NULL, '23000207', 0, 'Empty Container AOURU 23000207', '0.00', '0.00', '0.00', 'Vantage  ', '1', '0', '1', NULL),
('IC000508', 'JV00019', '147', NULL, '103280-348', 0, 'Power Pack lamor for multi skimmer', '0.00', '0.00', '0.00', 'OSCT', '1', '0', '1', NULL),
('IC000509', 'JV00019', '161', NULL, '1500032451', 0, '20FT Sarku Container SN.SEU-51-CNT-020-10', '0.00', '0.00', '0.00', 'Sarku', '1', '0', '1', NULL),
('IC000510', 'JV00019', '162', NULL, '1500033968', 0, 'SCHL E-Line Basket SN.B 6112', '0.00', '0.00', '0.00', 'Schl E-Line', '1', '0', '1', NULL),
('IC000511', 'JV00019', '164', NULL, '1500033903', 0, '2 unit Tool Box Varley SN.01 & 02', '0.00', '0.00', '0.00', 'Varley', '1', '0', '1', NULL),
('IC000512', 'JV00019', '165', NULL, '1500034043', 0, 'Steel Box 0204-18-PE-TB', '0.00', '0.00', '0.00', 'Prowell', '1', '0', '1', NULL),
('IC000513', 'JV00019', '166', NULL, '1500034032', 0, 'Prowell PCE Rack S/N : W12008855-01', '0.00', '0.00', '0.00', 'Prowell', '1', '0', '1', NULL),
('IC000514', 'JV00019', '168', NULL, '1500034032', 0, 'Prowell Power Pack', '0.00', '0.00', '0.00', 'Prowell', '1', '0', '1', NULL),
('IC000515', 'JV00019', '169', NULL, '1500034032', 0, 'Single RAM BOP Skid', '0.00', '0.00', '0.00', 'Prowell', '1', '0', '1', NULL),
('IC000516', 'JV00019', '170', NULL, '1500034032', 0, 'Lubricator Basket S/N : 0195-17--PE-LBU', '0.00', '0.00', '0.00', 'Prowell', '1', '0', '1', NULL),
('IC000517', 'JV00019', '172', NULL, '1500034032', 0, 'Transporter Basket 0214-18-PE-TRB', '0.00', '0.00', '0.00', 'Prowell', '1', '0', '1', NULL),
('IC000518', 'JV00019', '108', NULL, '1500034064', 0, 'Liferaft Ex Belanak SN : 2045601500278', '0.00', '0.00', '0.00', 'Segara Permai', '1', '0', '1', NULL),
('IC000519', 'JV00019', '108', NULL, '1500034064', 0, 'Liferaft Ex Belanak SN : 4582700300037', '0.00', '0.00', '0.00', 'Segara Permai', '1', '0', '1', NULL),
('IC000520', 'JV00019', '173', NULL, '1500034148', 0, 'Gun Clamp Consist : 2-7/8" 30FT', '0.00', '0.00', '0.00', 'Heru Wicaksono', '1', '0', '1', NULL),
('IC000521', 'JV00019', '174', NULL, '1500034148', 0, 'Gun 1.56" 10FT , GUn 2-7/8" 1FT', '0.00', '0.00', '0.00', 'Heru Wicaksono', '1', '0', '1', NULL),
('IC000522', 'JV00020', '175', NULL, '1500033669', 0, 'Material Retrofit Ex Battery Charger', '0.00', '0.00', '0.00', 'Shaftindo Jkt', '1', '0', '1', NULL),
('IC000523', 'JV00020', '177', NULL, '1500034136', 0, '1.6"3 Way Control Valve 8-TCV-7005', '0.00', '0.00', '0.00', 'Dnow', '1', '0', '1', NULL),
('IC000524', 'JV00020', '102', NULL, '1500034116', 0, 'Cylinder Rack SN SEU-53-ROX016-7', '0.00', '0.00', '0.00', 'Sarku', '1', '0', '1', NULL),
('IC000525', 'JV00020', '178', NULL, '1500034116', 0, 'Cylinder Rack SN KWS GBR 41', '0.00', '0.00', '0.00', 'Sarku', '1', '0', '1', NULL),
('IC000526', 'JV00020', '178', NULL, '1500034116', 0, 'Cylinder Rack SN KWS GBR 74', '0.00', '0.00', '0.00', 'Sarku', '1', '0', '1', NULL),
('IC000527', 'JV00020', '178', NULL, '1500034116', 0, 'Cylinder Rack SN KWS GBR 31', '0.00', '0.00', '0.00', 'Sarku', '1', '0', '1', NULL),
('IC000528', 'JV00020', '178', NULL, '1500034116', 0, 'Cylinder Rack SN KWS 36', '0.00', '0.00', '0.00', 'Sar', '1', '0', '1', NULL),
('IC000529', 'JV00020', '178', NULL, '1500034116', 0, 'Cylinder Rack SN KWS GBR 02', '0.00', '0.00', '0.00', 'Sarku', '1', '0', '1', NULL),
('IC000530', 'JV00020', '178', NULL, '1500034116', 0, 'Cylinder Rack SN KWS GBR 79', '0.00', '0.00', '0.00', 'Sarku', '1', '0', '1', NULL),
('IC000531', 'JV00020', '178', NULL, '1500034116', 0, 'Cylinder Rack SN KWS BR 075', '0.00', '0.00', '0.00', 'Sarku', '1', '0', '1', NULL),
('IC000532', 'JV00020', '178', NULL, '1500034116', 0, 'Cylinder Rack SN KWS GBR 83', '0.00', '0.00', '0.00', 'Sarku', '1', '0', '1', NULL),
('IC000533', 'JV00020', '61', NULL, '1500034259', 0, 'Empty Tote Tank S-965 ND LBA', '0.00', '0.00', '0.00', 'LBU', '1', '0', '1', NULL),
('IC000534', 'JV00020', '61', NULL, '1500034259', 0, 'Empty Tote Tank S-9272 LBU', '0.00', '0.00', '0.00', 'LBU', '1', '0', '1', NULL),
('IC000535', 'JV00020', '61', NULL, '1500034259', 0, 'Empty Tote Tank S 965 ND TD-TT 550', '0.00', '0.00', '0.00', 'LBU', '1', '0', '1', NULL),
('IC000536', 'JV00020', '61', NULL, '1500034259', 0, 'Empty Tote Tank S 965ND LBU', '0.00', '0.00', '0.00', 'LBU', '1', '0', '1', NULL),
('IC000537', 'JV00020', '61', NULL, '1500034259', 0, 'Empty Tote Tank MEG LBU ', '0.00', '0.00', '0.00', 'LBU', '1', '0', '1', NULL),
('IC000538', 'JV00020', '179', NULL, '1500033513', 0, 'Tote Tank Methanol', '0.00', '0.00', '0.00', 'Champion', '1', '0', '1', NULL),
('IC000539', 'JV00020', '179', NULL, '1500033513', 0, 'IBC Tank Starclear 9443', '0.00', '0.00', '0.00', 'Luas Birus', '1', '0', '1', NULL),
('IC000540', 'JV00020', '179', NULL, '1500033513', 0, 'IBC Tank Staralds 9434', '0.00', '0.00', '0.00', 'Luas Birus', '1', '0', '1', NULL),
('IC000541', 'JV00020', '179', NULL, '1500033513', 0, 'IBC Tank SZB-672', '0.00', '0.00', '0.00', 'Luas Birus', '1', '0', '1', NULL),
('IC000542', 'JV00020', '179', NULL, '1500033513', 0, 'IBC Tank SZB-670', '0.00', '0.00', '0.00', 'Luas Birus', '1', '0', '1', NULL),
('IC000543', 'JV00020', '179', NULL, '1500033513', 0, 'IBC Tank Starclear 9443 consist Full', '0.00', '0.00', '0.00', 'Luas Birus', '1', '0', '1', NULL),
('IC000544', 'JV00020', '179', NULL, '1500033513', 0, 'IBC Tank Staralds 9434 consist 1/2 IBC Tank', '0.00', '0.00', '0.00', 'Luas Birus', '1', '0', '1', NULL),
('IC000545', 'JV00020', '71', NULL, '1500034376', 0, 'Cylinder Rack MOWC-RACK-N2-02', '0.00', '0.00', '0.00', 'Alfons Wirahadikusuma', '1', '0', '1', NULL),
('IC000546', 'JV00020', '180', NULL, '1500034187', 0, 'Pass Ring Key and Connection', '0.00', '0.00', '0.00', 'Indospec Asia', '1', '0', '1', NULL),
('IC000547', 'JV00020', '61', NULL, '2019 - 002', 0, 'Empty Tote Tank Ex Chemical S-9284', '0.00', '0.00', '0.00', 'LBU', '1', '0', '1', NULL),
('IC000548', 'JV00020', '45', NULL, '1500033513', 0, 'Empty Tote Tank MEG ', '0.00', '0.00', '0.00', 'Luas Birus', '1', '0', '1', NULL),
('IC000549', 'JV00020', '181', NULL, '1500034094', 0, 'Flow Meter weight 50 kg', '0.00', '0.00', '0.00', 'Barakuda', '1', '0', '1', NULL),
('IC000550', 'JV00020', '32', NULL, '1500033836', 0, 'Hydrotest & Refill Fresh air cylinder bottle', '0.00', '0.00', '0.00', 'Hery Hardiyanto', '1', '0', '1', NULL),
('IC000551', 'JV00020', '65', NULL, '1500034359', 0, 'Hazardous waste ex operation offshore OEGU 0006072', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000552', 'JV00020', '65', NULL, '1500034359', 0, 'Hazardous waste ex operation offshore OEGU 0006112', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000553', 'JV00020', '65', NULL, '1500034284', 0, '20FT Container TAHU 7020678', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000554', 'JV00020', '24', NULL, '8028890', 0, 'Empty 10FT  Container CNHU ', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000555', 'JV00020', '65', NULL, '1500043284', 0, '20FT Container NYKU', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000556', 'JV00020', '65', NULL, '1500043284', 0, '20FT Container CRLU 3117666', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000557', 'JV00020', '65', NULL, '1500034284', 0, '20FT Container TAHU 7020826', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000558', 'JV00020', '7', NULL, '0006149', 0, '10FT Container OEGU ', '0.00', '0.00', '0.00', 'Medco', '1', '0', '1', NULL),
('IC000559', 'JV00020', '7', NULL, '0006154', 0, '10FT Container OEGU', '0.00', '0.00', '0.00', 'Medco', '1', '0', '1', NULL),
('IC000560', 'JV00020', '66', NULL, '0001', 0, '27 BigBag', '0.00', '0.00', '0.00', 'Medco', '1', '0', '1', NULL),
('IC000561', 'JV00020', '138', NULL, 'H-270', 0, 'Opentop Container H-270', '0.00', '0.00', '0.00', 'Medco', '1', '0', '1', NULL),
('IC000562', 'JV00020', '149', NULL, '1500034351', 0, 'Welding Habitat', '0.00', '0.00', '0.00', 'Chas', '1', '0', '1', NULL),
('IC000563', 'JV00020', '182', NULL, '0002', 0, 'Dump Truck loses', '0.00', '0.00', '0.00', 'Medco', '1', '0', '1', NULL),
('IC000564', 'JV00020', '183', NULL, 'TD-GB-16-0', 0, 'Cylinder Rack TD-GB-16-017', '0.00', '0.00', '0.00', 'Vantage Drilling', '1', '0', '1', NULL),
('IC000565', 'JV00020', '184', NULL, '16622', 0, 'Cylinder Rack BSSL 16622', '0.00', '0.00', '0.00', 'Vantage Drilling', '1', '0', '1', NULL),
('IC000566', 'JV00020', '184', NULL, '16694', 0, 'Cylinder Rack BSSL 16694', '0.00', '0.00', '0.00', 'Vantage Drilling', '1', '0', '1', NULL),
('IC000567', 'JV00020', '185', NULL, '45136', 0, 'Empty Offshore Basket FSHH 45136', '0.00', '0.00', '0.00', 'Vantage Drilling', '1', '0', '1', NULL),
('IC000568', 'JV00020', '26', NULL, '3157', 0, 'Empty Offshore Basket FSHH 3157', '0.00', '0.00', '0.00', 'Vantage Drilling', '1', '0', '1', NULL),
('IC000569', 'JV00020', '65', NULL, '5732020', 0, '20FT Container MWCU 5732020', '0.00', '0.00', '0.00', 'Vantage Drilling', '1', '0', '1', NULL),
('IC000570', 'JV00020', '34', NULL, 'TD-CB-13-0', 0, 'Offshore Basket SN.TD-CB-13-003', '0.00', '0.00', '0.00', 'Baker Hughes', '1', '0', '1', NULL),
('IC000571', 'JV00020', '34', NULL, 'TD-CB-13-0', 0, 'Offshore Basket TD-CB-13-005', '0.00', '0.00', '0.00', 'Baker Hughes', '1', '0', '1', NULL),
('IC000572', 'JV00020', '34', NULL, 'TD-CB-13-0', 0, 'Offshore Basket TD-CB-13-009', '0.00', '0.00', '0.00', 'Baker Hughes', '1', '0', '1', NULL),
('IC000573', 'JV00020', '34', NULL, 'TD-CB-13-0', 0, 'Offshore Basket TD-CB-13-010', '0.00', '0.00', '0.00', 'Baker Hughes', '1', '0', '1', NULL),
('IC000574', 'JV00020', '24', NULL, '3165', 0, '10FT Container c/w lifting set', '0.00', '0.00', '0.00', 'Vantage Drilling', '1', '0', '1', NULL),
('IC000575', 'JV00020', '24', NULL, '3167', 0, 'Empty 10FT Container c/w lifting set', '0.00', '0.00', '0.00', 'Vantage Drilling', '1', '0', '1', NULL),
('IC000576', 'JV00020', '65', NULL, '1511593', 0, 'Empty 20FT Dry Container ', '0.00', '0.00', '0.00', 'Vantage Drilling', '1', '0', '1', NULL),
('IC000577', 'JV00020', '186', NULL, '1300015464', 0, 'Casing 13-3/8" ', '0.00', '0.00', '0.00', 'Medco', '1', '0', '1', NULL),
('IC000578', 'JV00020', '65', NULL, '1021376', 0, 'Empty 20FT Container CCLU 1021376', '0.00', '0.00', '0.00', 'Vantage Drilling', '1', '0', '1', NULL),
('IC000579', 'JV00020', '187', NULL, '4603223', 0, '6M Half Height Basket ', '0.00', '0.00', '0.00', 'SLB', '1', '0', '1', NULL),
('IC000580', 'JV00020', '162', NULL, '003 / 1594', 0, 'Schl E-Line Dog House', '0.00', '0.00', '0.00', 'SLB', '1', '0', '1', NULL),
('IC000581', 'JV00020', '188', NULL, '3301466', 0, '6M Opentop Container for grease', '0.00', '0.00', '0.00', 'SLB', '1', '0', '1', NULL),
('IC000582', 'JV00020', '189', NULL, '0003', 0, 'Petroguard Adv Mesh 2-3/8" 13 Jts', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL),
('IC000583', 'JV00020', '189', NULL, '0004', 0, 'Petroguard 2-3/8" 13 Jts', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL),
('IC000584', 'JV00021', '190', NULL, '4900197', 0, 'AORU-4900197', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000585', 'JV00021', '132', NULL, '274', 0, 'FEL-274', '0.00', '0.00', '0.00', 'Wastec', '1', '0', '1', NULL),
('IC000586', 'JV00021', '132', NULL, '275', 0, 'FEL-275', '0.00', '0.00', '0.00', 'Wastec', '1', '0', '1', NULL),
('IC000587', 'JV00021', '132', NULL, '284', 0, 'FEL-284', '0.00', '0.00', '0.00', 'Wastec', '1', '0', '1', NULL),
('IC000588', 'JV00021', '132', NULL, '286', 0, 'FEL-286', '0.00', '0.00', '0.00', 'Wastec', '1', '0', '1', NULL),
('IC000589', 'JV00021', '132', NULL, '289', 0, 'FEL-289', '0.00', '0.00', '0.00', 'Wastec', '1', '0', '1', NULL),
('IC000590', 'JV00021', '132', NULL, '294', 0, 'FEL-294', '0.00', '0.00', '0.00', 'Wastec', '1', '0', '1', NULL),
('IC000591', 'JV00021', '191', NULL, '2490A', 0, 'GBCPP-T-2490A', '0.00', '0.00', '0.00', 'Gajah Baru', '1', '0', '1', NULL),
('IC000592', 'JV00021', '9', NULL, '01010-2', 0, 'Tote Tank ID 01010-2 Empty', '0.00', '0.00', '0.00', 'ANOA', '1', '0', '1', NULL),
('IC000593', 'JV00021', '9', NULL, 'FT-02', 0, 'Tote Tank ID-02 Empty', '0.00', '0.00', '0.00', 'ANOA', '1', '0', '1', NULL),
('IC000594', 'JV00021', '128', NULL, 'ID No.11', 0, 'Cylinder Rack Empty Argon ID No.11', '0.00', '0.00', '0.00', 'Arkadia', '1', '0', '1', NULL),
('IC000595', 'JV00021', '176', NULL, '1500596', 0, 'Offshore Container LYGU 1500596', '0.00', '0.00', '0.00', 'Nesitor', '1', '0', '1', NULL),
('IC000596', 'JV00021', '39', NULL, '1213012', 0, 'Mini Container MOOU 1213012', '0.00', '0.00', '0.00', 'AsiaServ', '1', '0', '1', NULL),
('IC000597', 'JV00021', '39', NULL, '690573', 0, 'Mini Container OEG-690573', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000598', 'JV00021', '39', NULL, '690574', 0, 'Mini Container OEG-690574', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000599', 'JV00021', '39', NULL, '690599', 0, 'Mini Container OEG-690599', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000600', 'JV00021', '39', NULL, '690614', 0, 'Mini Container OEG-690614', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000601', 'JV00021', '39', NULL, '696929', 0, 'Mini Container OEG696929', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000602', 'JV00021', '39', NULL, '697008', 0, 'Mini Container OEG-697008', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000603', 'JV00021', '39', NULL, '697030', 0, 'Mini Container OEG-697030', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000604', 'JV00021', '39', NULL, '697628', 0, 'Mini Container OEG-697628', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000605', 'JV00021', '145', NULL, '1437393', 0, '10FT Half Open Top Container OEGU 1437393', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000606', 'JV00021', '176', NULL, '1009097', 0, '10FT Chiller Container OEGU-1009097', '0.00', '0.00', '0.00', 'ANOA', '1', '0', '1', NULL),
('IC000607', 'JV00021', '41', NULL, '1009348', 0, '10FT Chiller Container OEGU-1009348', '0.00', '0.00', '0.00', 'BBS', '1', '0', '1', NULL),
('IC000608', 'JV00021', '41', NULL, '1009538', 0, '10FT Chiller Container OEGU-1009538', '0.00', '0.00', '0.00', 'BBS', '1', '0', '1', NULL),
('IC000609', 'JV00021', '76', NULL, '1436606', 0, '10Ft Half Open Top Container OEGU-1436606', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000610', 'JV00021', '137', NULL, '1436648', 0, '10FT Half Opentop Container OEGU-1436648', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000611', 'JV00021', '188', NULL, '1441900', 0, '10FT Opentop Container OEGU-1441900', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000612', 'JV00021', '188', NULL, '1441916', 0, '10FT Half Opentop Container OEGU-1441916', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000613', 'JV00021', '188', NULL, '1442131', 0, '10FT Half Opentop Container OEGU-1442131', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000614', 'JV00021', '188', NULL, '1442445', 0, '10FT Half Opentop Container OEGU-1442445', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000615', 'JV00021', '44', NULL, '2437593', 0, '20FT Half Opentop Container OEGU-2437593', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000616', 'JV00021', '44', NULL, '2437633', 0, '20FT Half Opentop Container OEGU-2437633', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000617', 'JV00021', '190', NULL, '2441084', 0, '20FT Half Opentop Container OEGU-2441084', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000618', 'JV00021', '194', NULL, '2441464', 0, '20FT Organic Waste Container OEGU-2441464', '0.00', '0.00', '0.00', 'Gajah Baru', '1', '0', '1', NULL),
('IC000619', 'JV00021', '44', NULL, '2441700', 0, '20FT Half Opentop Container OEGU-2441700', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000620', 'JV00021', '9', NULL, '1281', 0, 'QHF-1281', '0.00', '0.00', '0.00', 'Champion', '1', '0', '1', NULL),
('IC000621', 'JV00021', '128', NULL, '16-010', 0, 'Cylinder Rack R-POI-16-010', '0.00', '0.00', '0.00', 'Arkadia', '1', '0', '1', NULL),
('IC000622', 'JV00021', '193', NULL, '8-001', 0, 'Cylinder Rack R-POI-8-001', '0.00', '0.00', '0.00', 'Ex FPSO', '1', '0', '1', NULL),
('IC000623', 'JV00022', '49', NULL, 'SE-7', 0, 'Container 20FT c/with Sling & shackle', '0.00', '0.00', '0.00', 'Star Energy', '1', '0', '1', NULL),
('IC000624', 'JV00022', '146', NULL, 'SE-3', 0, 'Empty Container 6FT SE', '0.00', '0.00', '0.00', 'Star Energy', '1', '0', '1', NULL),
('IC000625', 'JV00022', '49', NULL, 'AA5-02', 0, 'Dry Container 20FT', '0.00', '0.00', '0.00', 'BBS', '1', '0', '1', NULL),
('IC000626', 'JV00022', '49', NULL, 'IRDU 55287', 0, 'Empty Dry Container 20FT', '0.00', '0.00', '0.00', 'BBS', '1', '0', '1', NULL),
('IC000627', 'JV00022', '49', NULL, 'Zona 75497', 0, 'Empty Reffer Container 20FT', '0.00', '0.00', '0.00', 'BBS', '1', '0', '1', NULL),
('IC000628', 'JV00022', '49', NULL, 'Zona 07227', 0, 'Reffer Container 20FT', '0.00', '0.00', '0.00', 'BBS', '1', '0', '1', NULL),
('IC000629', 'JV00022', '177', NULL, 'RH-02', 0, 'Empty Bottle Oxygen Rack', '0.00', '0.00', '0.00', 'Star Energy', '1', '0', '1', NULL),
('IC000630', 'JV00022', '13', NULL, 'SE KH-09', 0, 'Empty Bottle Hellium Rack', '0.00', '0.00', '0.00', 'Star Energy', '1', '0', '1', NULL),
('IC000631', 'JV00022', '54', NULL, 'SE-Ops-1', 0, 'Half Opentop Container 10FT', '0.00', '0.00', '0.00', 'Star Energy', '1', '0', '1', NULL),
('IC000632', 'JV00022', '55', NULL, 'SE-10', 0, 'Half Opentop Container 20FT', '0.00', '0.00', '0.00', 'Star Energy', '1', '0', '1', NULL),
('IC000633', 'JV00022', '181', NULL, '001', 0, 'Hand Carry', '0.00', '0.00', '0.00', 'Star Energy', '1', '0', '1', NULL),
('IC000634', 'JV00023', '175', NULL, '1500033669', 0, 'Matrial Retrofit Ex Battery Charger', '0.00', '0.00', '0.00', 'Shaftindo Jakarta', '1', '0', '1', NULL),
('IC000635', 'JV00023', '61', NULL, '1500034259', 0, 'EMPTY Tote Tank S-965ND', '0.00', '0.00', '0.00', 'LBU', '1', '0', '1', NULL),
('IC000636', 'JV00023', '100', NULL, '150034284', 0, '20ft Container THU7020826 CW lifting set', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000637', 'JV00023', '72', NULL, 'TD-GB-16-0', 0, 'Cylinder rack CW sling and shackle.2 16 ea empty nitrogen bottle', '0.00', '0.00', '0.00', 'Vantage Drilling', '1', '0', '1', NULL),
('IC000638', 'JV00023', '130', NULL, '1500034367', 0, 'Offshore basket SN TD-CB13-003 CW lifting Set', '0.00', '0.00', '0.00', 'Vantage Drilling', '1', '0', '1', NULL),
('IC000639', 'JV00002', '36', NULL, '098', 0, 'MI', '0.00', '0.00', '0.00', 'MI', '1', '0', '2', NULL),
('IC000640', 'JV00024', '195', NULL, '1500034404', 0, 'Pipe Spool USM (4 Wooden Box ', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000641', 'JV00024', '196', NULL, '1500034404', 0, 'Pipe Spool USM (4 Wooden Box) ', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000642', 'JV00024', '195', NULL, '1500034404', 0, 'Pipe Spool USM (4 Wooden Box)', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000643', 'JV00024', '197', NULL, '1500034353', 0, 'Rack TKC 12 c/w Lifting Set', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000644', 'JV00024', '45', NULL, '1500034357', 0, 'Skid TD-TT-550-122 c/w Lifting Set', '0.00', '0.00', '0.00', 'LBU', '1', '0', '1', NULL),
('IC000645', 'JV00024', '45', NULL, '1500034357', 0, 'Skid TD-TT-550-086 c/w Lifting Set', '0.00', '0.00', '0.00', 'LBU', '1', '0', '1', NULL),
('IC000646', 'JV00024', '24', NULL, '1500034423', 0, 'Offshore Container 10FT SN AORU 2301878', '0.00', '0.00', '0.00', 'Mrs.Maria Aling', '1', '0', '1', NULL),
('IC000647', 'JV00024', '24', NULL, '1500034423', 0, 'Empty Offshore Container 10FT SN AWS-003', '0.00', '0.00', '0.00', 'Mrs.Maria Aling', '1', '0', '1', NULL),
('IC000648', 'JV00024', '97', NULL, '1500034461', 0, 'SCBA Cylinder Drager', '0.00', '0.00', '0.00', 'Indo Mitra Jaya', '1', '0', '1', NULL),
('IC000649', 'JV00024', '198', NULL, '1500034463', 0, 'LIFE RAFT 4 UNIT', '0.00', '0.00', '0.00', 'Segara Permai', '1', '0', '1', NULL),
('IC000650', 'JV00024', '197', NULL, '1500034483', 0, 'Rack FR-002 c/w Lifting Set', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000651', 'JV00024', '45', NULL, '1500034485', 0, 'Skid OHF - 307 c/w Lifting Set', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000652', 'JV00024', '61', NULL, '150003485', 0, 'Empty Tote Tank S 9441 , LBU 2019-0101', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000653', 'JV00024', '61', NULL, '1500034485', 0, 'Empty Tote Tank S 9282 , LBU-2019-0070', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000654', 'JV00024', '61', NULL, '1500034357', 0, 'Empty Tote Tank S 9282 , LBU-2019-0068', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000655', 'JV00024', '45', NULL, '1500034485', 0, 'Skid TD-TT-550-003', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000656', 'JV00024', '200', NULL, '1500034451', 0, 'Motor Electric From Belida Cooler Deck', '0.00', '0.00', '0.00', 'PT.XIS JKT', '1', '0', '1', NULL),
('IC000657', 'JV00024', '201', NULL, '1500034700', 0, '20FT Close TOP ISO Container OEGU 0006030', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000658', 'JV00024', '201', NULL, '1500034700', 0, '20FT Close TOP ISO Container OEGU 0006067', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000659', 'JV00024', '201', NULL, '1500034700', 0, '20FT Close TOP ISO Container OEGU 0006107', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000660', 'JV00024', '202', NULL, '1500034513', 0, 'Rack No.SEU 53ROXO1631', '0.00', '0.00', '0.00', 'Sarku', '1', '0', '1', NULL),
('IC000661', 'JV00024', '204', NULL, '1500034513', 0, 'Rack No.16 BR 023 , 16 Bottles', '0.00', '0.00', '0.00', 'Sarku', '1', '0', '1', NULL),
('IC000662', 'JV00024', '198', NULL, '1500034656', 0, 'LIFE RAFT', '0.00', '0.00', '0.00', 'Segara Permai', '1', '0', '1', NULL),
('IC000663', 'JV00024', '201', NULL, '1500034515', 0, 'Tools House Container SN.11574922', '0.00', '0.00', '0.00', 'Hall Testing', '1', '0', '1', NULL),
('IC000664', 'JV00024', '7', NULL, '0006175', 0, '10FT Container ISO 0006175 , Domestic Waste', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000665', 'JV00024', '7', NULL, '0006196', 0, '10FT Container ISO 0006196 , Domestic Waste', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000666', 'JV00024', '7', NULL, '0006180', 0, '10FT Container ISO 0006180 , Domestic Waste', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000667', 'JV00024', '7', NULL, '1200992', 0, '10FT Container DNV OEGU 1200992 , Domestic Waste', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000668', 'JV00024', '205', NULL, '1500034491', 0, 'Offshore Basket 14M , CBQ 401', '0.00', '0.00', '0.00', 'Altus', '1', '0', '1', NULL),
('IC000669', 'JV00024', '205', NULL, '1500034491', 0, 'Offshore Basket 14M , CBQ 402', '0.00', '0.00', '0.00', 'Altus', '1', '0', '1', NULL),
('IC000670', 'JV00024', '205', NULL, '1500034491', 0, 'Offshore Basket 14M , CBQ 403', '0.00', '0.00', '0.00', 'Altus', '1', '0', '1', NULL),
('IC000671', 'JV00024', '205', NULL, '1500034491', 0, 'Offshore Basket 14M , CBQ 404', '0.00', '0.00', '0.00', 'Altus', '1', '0', '1', NULL),
('IC000672', 'JV00024', '205', NULL, '1500034491', 0, 'Offshore Basket 14M , CBQ 435', '0.00', '0.00', '0.00', 'Altus', '1', '0', '1', NULL),
('IC000673', 'JV00024', '205', NULL, '1500034491', 0, 'Offshore Basket 14M , CBQ 436', '0.00', '0.00', '0.00', 'Altus', '1', '0', '1', NULL),
('IC000674', 'JV00024', '205', NULL, '1500034491', 0, 'Offshore Basket 14M , CBQ 437', '0.00', '0.00', '0.00', 'Altus', '1', '0', '1', NULL),
('IC000675', 'JV00024', '130', NULL, '1500034491', 0, 'Offshore Basket 14.3M SN , AORU 1430016', '0.00', '0.00', '0.00', 'Altus', '1', '0', '1', NULL),
('IC000676', 'JV00024', '206', NULL, '1500034491', 0, 'Offshore Basket 40FT SN.CBZ416', '0.00', '0.00', '0.00', 'Altus', '1', '0', '1', NULL),
('IC000677', 'JV00024', '206', NULL, '1500034491', 0, 'Offshore Basket 40FT SN.CBZ 529', '0.00', '0.00', '0.00', 'Altus', '1', '0', '1', NULL),
('IC000678', 'JV00024', '43', NULL, '1500034495', 0, 'Half Container 10FT SN.OEGU 1438661', '0.00', '0.00', '0.00', 'Dowell Anadrill', '1', '0', '1', NULL),
('IC000679', 'JV00024', '207', NULL, '1500034495', 0, '6.3M Offshore Basket SN.TD-CB-6-003', '0.00', '0.00', '0.00', 'Dowell Anadrill', '1', '0', '1', NULL),
('IC000680', 'JV00024', '208', NULL, '1500034495', 0, '12.3M Offshore Basket SN.TD-CB-12-002', '0.00', '0.00', '0.00', 'Dowell Anadrill', '1', '0', '1', NULL),
('IC000681', 'JV00024', '209', NULL, '1500034495', 0, '12.2M Offshore Basket SN.AORU 1230044', '0.00', '0.00', '0.00', 'Dowell Anadrill', '1', '0', '1', NULL),
('IC000682', 'JV00024', '208', NULL, '1500034495', 0, '12.3M Offshore Basket SN.B 1201', '0.00', '0.00', '0.00', 'Dowell Anadrill', '1', '0', '1', NULL),
('IC000683', 'JV00024', '210', NULL, '1500034571', 0, 'Dowell Anadrill Tolls Box SLB 14835', '0.00', '0.00', '0.00', 'Dowell Anadrill', '1', '0', '1', NULL),
('IC000684', 'JV00024', '211', NULL, '9203490', 0, '20FT Close TOP ISO PPLi Container BSLU 9203490', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000685', 'JV00024', '211', NULL, '9204305', 0, '20FT Close TOP ISO Container BSLU 9204305', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000686', 'JV00024', '211', NULL, '9723', 0, '20FT Close TOP ISO PPLi Container , PPLi 9723', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000687', 'JV00024', '211', NULL, '9605', 0, '1 Unit ISO Tank 9605', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000688', 'JV00024', '212', NULL, '1500034672', 0, 'Mini Container 6FT AMNE 5829', '0.00', '0.00', '0.00', 'Altus', '1', '0', '1', NULL),
('IC000689', 'JV00024', '212', NULL, '1500034672', 0, 'Mini Container 6FT AMNE 5441', '0.00', '0.00', '0.00', 'Altus', '1', '0', '1', NULL),
('IC000690', 'JV00024', '212', NULL, '1500034672', 0, 'Mini Container 6FT AMNE 5806', '0.00', '0.00', '0.00', 'Altus', '1', '0', '1', NULL),
('IC000691', 'JV00024', '213', NULL, '001', 0, 'Baracarb 25 Big Bag', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000692', 'JV00024', '29', NULL, '002', 0, 'Baracard 25 SXS', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000693', 'JV00024', '29', NULL, '003', 0, 'Baracarb120 SXS', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000694', 'JV00024', '29', NULL, '004', 0, 'De Material SXS', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000695', 'JV00024', '29', NULL, '005', 0, 'Filter 2 Mikron', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000696', 'JV00024', '29', NULL, '006', 0, 'Filter 10 Mikron', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000697', 'JV00024', '29', NULL, '007', 0, 'Barofibre', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000698', 'JV00024', '211', NULL, '1500034793', 0, '20FT Opentop Container SN.PPLi 9728', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000699', 'JV00024', '211', NULL, '1500034793', 0, '20FT Container SN.BSLU 9203910', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000700', 'JV00024', '211', NULL, '1500034793', 0, '20FT Container BSLU 9203309', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000701', 'JV00024', '211', NULL, '1500034793', 0, '20FT Container SN.BSLU 9203931', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000702', 'JV00024', '211', NULL, '1500034793', 0, '20FT Container SN.BSLU 9204310', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000703', 'JV00024', '214', NULL, '1500034825', 0, 'D620 (506 gal)', '0.00', '0.00', '0.00', 'Dowell ', '1', '0', '1', NULL),
('IC000704', 'JV00024', '215', NULL, '1500034825', 0, 'D252 (21000 lbs)', '0.00', '0.00', '0.00', 'Dowell ', '1', '0', '1', NULL),
('IC000705', 'JV00024', '216', NULL, 'TD-CB-8-00', 0, '8.3M Cargo Basket ID TD-CB-8-006', '0.00', '0.00', '0.00', 'Schlumberger', '1', '0', '1', NULL),
('IC000706', 'JV00024', '212', NULL, 'JAO-BB-130', 0, 'Mini Container ID.JAO-BB-1302', '0.00', '0.00', '0.00', 'Schlumberger', '1', '0', '1', NULL),
('IC000707', 'JV00024', '217', NULL, '1500034464', 0, 'MDT Sample Terubuk-5', '0.00', '0.00', '0.00', 'Schlumberger', '1', '0', '1', NULL),
('IC000708', 'JV00024', '218', NULL, '1500034873', 0, '2.44M TCP Tool Box SN.BDK-TCP-TB-03', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL),
('IC000709', 'JV00024', '219', NULL, '1500034873', 0, '20FT Offshore Basket SN.AORU 1030283', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL),
('IC000710', 'JV00024', '220', NULL, '1500034873', 0, '20FT DNV Container SN.AORU 2601469', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL),
('IC000711', 'JV00024', '219', NULL, '1500034873', 0, '10.3M Offshore Basket AORU 1030025', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL),
('IC000712', 'JV00024', '221', NULL, '1500034883', 0, 'Sample Sea Water 4 CAN', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL),
('IC000713', 'JV00024', '223', NULL, '1500034479', 0, 'Drum Box Slickline ', '0.00', '0.00', '0.00', 'SLB', '1', '0', '1', NULL),
('IC000714', 'JV00024', '224', NULL, '1500034361', 0, 'WDDS-A-E-LINE Winch Cable drum Unit ', '0.00', '0.00', '0.00', 'SLB', '1', '0', '1', NULL),
('IC000715', 'JV00024', '225', NULL, '1500034361', 0, 'CLC-FD Frame S/N 36093', '0.00', '0.00', '0.00', 'SLB', '1', '0', '1', NULL),
('IC000716', 'JV00024', '226', NULL, '1500034361', 0, 'DAPS-AB SN 3797', '0.00', '0.00', '0.00', 'SLB', '1', '0', '1', NULL),
('IC000717', 'JV00024', '7', NULL, '1500034851', 0, '10FT Well Tec.Container SN.M-C-10-1017', '0.00', '0.00', '0.00', 'Well Tech', '1', '0', '1', NULL),
('IC000718', 'JV00025', '227', NULL, '4602870', 0, '20FT Opentop Container AORU 4602870', '0.00', '0.00', '0.00', 'Mesitech', '1', '0', '1', NULL),
('IC000719', 'JV00025', '228', NULL, '000923', 0, '20FT Closed Container CARU 000923', '0.00', '0.00', '0.00', 'Conbit', '1', '0', '1', NULL),
('IC000720', 'JV00025', '228', NULL, '983006', 0, '20FT Closed Container CBXU 983006', '0.00', '0.00', '0.00', 'Conbit', '1', '0', '1', NULL),
('IC000721', 'JV00025', '229', NULL, 'PDS-400', 0, 'Air Man Compressor PDS-400', '0.00', '0.00', '0.00', 'GB Mechanic', '1', '0', '1', NULL),
('IC000722', 'JV00025', '132', NULL, 'FEL-277', 0, 'Waste Skip FEL-277', '0.00', '0.00', '0.00', 'Wastec', '1', '0', '1', NULL),
('IC000723', 'JV00025', '132', NULL, 'FEL-302', 0, 'Waste Skip FEL-302', '0.00', '0.00', '0.00', 'Wastec', '1', '0', '1', NULL),
('IC000724', 'JV00025', '132', NULL, 'FEL-304', 0, 'Waste Skip FEL-304', '0.00', '0.00', '0.00', 'Wastec', '1', '0', '1', NULL),
('IC000725', 'JV00025', '132', NULL, 'FEL-305', 0, 'Waste Skip FEL-305', '0.00', '0.00', '0.00', 'Wastec', '1', '0', '1', NULL),
('IC000726', 'JV00025', '132', NULL, 'FEL-307', 0, 'Waste Skip FEL-307', '0.00', '0.00', '0.00', 'Wastec', '1', '0', '1', NULL),
('IC000727', 'JV00025', '45', NULL, 'FT-03', 0, 'Tote Tank FT-03', '0.00', '0.00', '0.00', 'AGX Platform', '1', '0', '1', NULL),
('IC000728', 'JV00025', '227', NULL, 'GCA-136', 0, '20Ft Half Opentop Container GCA-136', '0.00', '0.00', '0.00', 'Mesitech', '1', '0', '1', NULL),
('IC000729', 'JV00025', '227', NULL, 'GCA-148', 0, '20FT Half Opentop Container GCA-148', '0.00', '0.00', '0.00', 'Mesitech', '1', '0', '1', NULL),
('IC000730', 'JV00025', '227', NULL, 'GCA-428', 0, '20FT Half Opentop Container GCA-428', '0.00', '0.00', '0.00', 'Mesitech', '1', '0', '1', NULL),
('IC000731', 'JV00025', '39', NULL, '690215', 0, 'Mini Container OEG-690215', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000732', 'JV00025', '39', NULL, '690218', 0, 'Mini Container OEG-690218', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000733', 'JV00025', '39', NULL, '690220', 0, 'Mini Container OEG-690220', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000734', 'JV00025', '39', NULL, '690565', 0, 'Mini Container OEG-690565', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000735', 'JV00025', '39', NULL, '690573', 0, 'Mini Container OEG-690573', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000736', 'JV00025', '134', NULL, '690582', 0, 'Mini Container OEG-690582', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000737', 'JV00025', '134', NULL, '690597', 0, 'Mini Container OEG-690597', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000738', 'JV00025', '39', NULL, '690602', 0, 'Mini Container OEG-690602', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000739', 'JV00025', '39', NULL, '690605', 0, 'Mini Container OEG-690605', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000740', 'JV00025', '39', NULL, '696643', 0, 'Mini Container OEG-696643', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000741', 'JV00025', '39', NULL, '696644', 0, 'Mini Container OEG-696644', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000742', 'JV00025', '134', NULL, '696997', 0, 'Mini Container OEG-696997', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000743', 'JV00025', '39', NULL, '697024', 0, 'Mini Container OEG-697024', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000744', 'JV00025', '134', NULL, '697025', 0, 'Mini Container OEG-697025', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000745', 'JV00025', '39', NULL, '697030', 0, 'Mini Container OEG-697030', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000746', 'JV00025', '134', NULL, '697608', 0, 'Mini Container OEG-697608', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000747', 'JV00025', '134', NULL, '697627', 0, 'Mini Container OEG-697627', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000748', 'JV00025', '39', NULL, '697653', 0, 'Mini Container OEG-697653', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000749', 'JV00025', '39', NULL, '697655', 0, 'Mini Container OEG-697655', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000750', 'JV00025', '39', NULL, '697656', 0, 'Mini Container OEG-697656', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000751', 'JV00025', '41', NULL, '1009461', 0, '10FT Chiller Food Container OEGU-1009461', '0.00', '0.00', '0.00', 'BBS', '1', '0', '1', NULL),
('IC000752', 'JV00025', '41', NULL, '1009482', 0, '10FT Chiller Food Container OEGU-1009482', '0.00', '0.00', '0.00', 'BBS', '1', '0', '1', NULL),
('IC000753', 'JV00025', '41', NULL, '1200544', 0, '10FT Dry Food Container OEGU-1200544', '0.00', '0.00', '0.00', 'BBS', '1', '0', '1', NULL),
('IC000754', 'JV00025', '230', NULL, '1436545', 0, '10FT Half Opentop Container OEGU-1436545', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000755', 'JV00025', '144', NULL, '1437412', 0, '10Ft Half Opentop Container OEGU-1437412', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000756', 'JV00025', '144', NULL, '1441541', 0, '10FT Half Opentop COntainer OEGU-1441541', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000757', 'JV00025', '230', NULL, '1441921', 0, '10FT Half Opentop COntainer OEGU-1441921', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000758', 'JV00025', '144', NULL, '1442110', 0, '10FT Half Opentop Container OEGU-1442110', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000759', 'JV00025', '144', NULL, '1442126', 0, '10FT Half Opentop Container OEGU-1442126', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000760', 'JV00025', '144', NULL, '1442147', 0, '10FT Half Opentop Container OEGU-1442147', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000761', 'JV00025', '231', NULL, '2438666', 0, '20FT Half Opentop Container OEGU-2438656', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000762', 'JV00025', '232', NULL, '2441150', 0, '20FT Half Opentop Container OEGU-2441150', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000763', 'JV00025', '231', NULL, '2437063', 0, '20FT Half Opentop Container OEGU-2437063', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000764', 'JV00025', '232', NULL, '2445710', 0, '20FT Half Opentop Container OEGU-2445710', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000765', 'JV00025', '232', NULL, '2445768', 0, '20FT Half Opentop COntainer OEGU-2445768', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL),
('IC000766', 'JV00025', '232', NULL, '2447164', 0, '20FT Half Opentop Container OEGU-2447164', '0.00', '0.00', '0.00', 'PMB', '1', '0', '1', NULL);
INSERT INTO `detail_joborder` (`id_cargo`, `id_joborder`, `id_jenis`, `timeCargo`, `doc_no`, `qty_cargo`, `rincian_cargo`, `m3_cargo`, `ton_cargo`, `revton_cargo`, `remarks_cargo`, `status_cargo`, `cargo_final`, `row_version`, `keterangan`) VALUES
('IC000767', 'JV00025', '228', NULL, '900084', 0, '20FT Closed Container RSTU 900084', '0.00', '0.00', '0.00', 'Conbit', '1', '0', '1', NULL),
('IC000768', 'JV00025', '233', NULL, 'WMES12', 0, 'Welding Machine WMES 12 , Skid : SKWM 12', '0.00', '0.00', '0.00', 'Mesitech', '1', '0', '1', NULL),
('IC000769', 'JV00025', '233', NULL, 'WMES13', 0, 'Welding Machine WMES 13 , Skid : SKWM 13', '0.00', '0.00', '0.00', 'Mesitech', '1', '0', '1', NULL),
('IC000770', 'JV00025', '233', NULL, 'WMES15', 0, 'Welding Machine WMES 15 , Skid : SKWM 15', '0.00', '0.00', '0.00', 'Mesitech', '1', '0', '1', NULL),
('IC000771', 'JV00025', '233', NULL, 'WMES17', 0, 'Welding Machine 17 , Skid : SKWM 17', '0.00', '0.00', '0.00', 'Mesitech', '1', '0', '1', NULL),
('IC000772', 'JV00025', '233', NULL, 'WMES18', 0, 'Welding Machine WMES 18 , Skid : SKWM 18', '0.00', '0.00', '0.00', 'Mesitech', '1', '0', '1', NULL),
('IC000773', 'JV00026', '146', NULL, 'SE-2', 0, 'Empty Container 6FT', '0.00', '0.00', '0.00', 'Star Energy', '1', '0', '1', NULL),
('IC000774', 'JV00026', '54', NULL, 'SE-12', 0, 'Empty Half Opentop Container 10FT', '0.00', '0.00', '0.00', 'Star Energy', '1', '0', '1', NULL),
('IC000775', 'JV00026', '234', NULL, '0001', 0, 'Yellow Basket C/W Sling and Shackle', '0.00', '0.00', '0.00', 'Shaftindo', '1', '0', '1', NULL),
('IC000776', 'JV00026', '235', NULL, '5753303', 0, 'Reffer Container 10FT Empty ', '0.00', '0.00', '0.00', 'Baasithu Boga Service', '1', '0', '1', NULL),
('IC000777', 'JV00026', '49', NULL, '0720677', 0, 'Reffer Container 20FT EMpty', '0.00', '0.00', '0.00', 'Baasithu Boga Service', '1', '0', '1', NULL),
('IC000778', 'JV00026', '49', NULL, '2116479', 0, 'Dry Container 20FT , Contains 209 Ea Aqua', '0.00', '0.00', '0.00', 'Baasithu Boga Service', '1', '0', '1', NULL),
('IC000779', 'JV00026', '49', NULL, '3259663', 0, 'Reefer Container 20FT , Contains 143 Ea Aqua', '0.00', '0.00', '0.00', 'Baasithu Boga Service', '1', '0', '1', NULL),
('IC000780', 'JV00026', '236', NULL, '0002', 0, 'Rack Bottle Empty CO2', '0.00', '0.00', '0.00', 'Star Energy', '1', '0', '1', NULL),
('IC000781', 'JV00027', '211', NULL, '1500034402', 0, '20FT Container H 271 C/W Lifting Set', '0.00', '0.00', '0.00', 'Istana Karang Laut', '1', '0', '1', NULL),
('IC000782', 'JV00027', '201', NULL, '7020662', 0, '20FT Container GDSK TAHU 7020662', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000783', 'JV00027', '201', NULL, '7020739', 0, '20FT Container GDSK TAHU 7020739', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000784', 'JV00027', '201', NULL, '1027862', 0, '20FT Container GDSK CCLU 1027862', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000785', 'JV00027', '201', NULL, '5752702', 0, '20FT Container GDSK DVRU 5752702', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000786', 'JV00027', '201', NULL, '7020615', 0, '20FT Container GDSK TAHU 7020615', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000787', 'JV00027', '201', NULL, '6050146', 0, '20FT Container GDSK KKTU 6050146', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000788', 'JV00027', '201', NULL, '6052827', 0, '20FT Container GDSK KKTU 6052827', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000789', 'JV00027', '201', NULL, '7541095', 0, '20FT Container GDSK NYKU 7541095', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000790', 'JV00027', '201', NULL, '8026028', 0, '20FT Container GDSK CNHU 8026028', '0.00', '0.00', '0.00', 'GDSK', '1', '0', '1', NULL),
('IC000791', 'JV00027', '237', NULL, '1500034787', 0, 'Diving Lars c/w Double Diving Basket', '0.00', '0.00', '0.00', 'Ferdy Saputra', '1', '0', '1', NULL),
('IC000792', 'JV00027', '211', NULL, '1500034787', 0, '20FT DDC Container S/N , AS-011', '0.00', '0.00', '0.00', 'Ferdy Saputra', '1', '0', '1', NULL),
('IC000793', 'JV00027', '211', NULL, '1500034787', 0, '20FT Open Top Container S/N H-272', '0.00', '0.00', '0.00', 'Ferdy Saputra', '1', '0', '1', NULL),
('IC000794', 'JV00027', '211', NULL, '1500034787', 0, '20FT Open Top Container H-337', '0.00', '0.00', '0.00', 'Ferdy Saputra', '1', '0', '1', NULL),
('IC000795', 'JV00027', '211', NULL, '1500034787', 0, '20FT Open Top Container H-340', '0.00', '0.00', '0.00', 'Ferdy Saputra', '1', '0', '1', NULL),
('IC000796', 'JV00027', '238', NULL, '1500034569', 0, 'Half Container 20FT.SN AORU 4602103', '0.00', '0.00', '0.00', 'ALTUS', '1', '0', '1', NULL),
('IC000797', 'JV00027', '74', NULL, '1500034817', 0, 'Empty 6M H/H Basket C/W Lifting Set', '0.00', '0.00', '0.00', 'Vantage  ', '1', '0', '1', NULL),
('IC000798', 'JV00027', '219', NULL, '1500034873', 0, '10.3 M Offshore Basket SN AORU 1030262', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL),
('IC000799', 'JV00027', '219', NULL, '1500034873', 0, '10.3 M Offshore Basket SN B.1014', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL),
('IC000800', 'JV00027', '31', NULL, '1500034923', 0, 'Baracarb 5 BigBag', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000801', 'JV00027', '31', NULL, '1500034960', 0, 'Baracarb 5 BigBag', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000802', 'JV00027', '31', NULL, '1500034960', 0, 'EZ-MUL NT', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000803', 'JV00027', '31', NULL, '1500034960', 0, 'INTERMUL NT', '0.00', '0.00', '0.00', 'Baroid', '1', '0', '1', NULL),
('IC000804', 'JV00027', '211', NULL, '1500034992', 0, '20FT Opentop Container SN.PPLi 9730', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000805', 'JV00027', '211', NULL, '1500034992', 0, '20FT Opentop Container SN.PPLi 9725', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000806', 'JV00027', '211', NULL, '1500034992', 0, '20FT Opentop Container SN.PPLi 9731', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000807', 'JV00027', '211', NULL, '1500034992', 0, '20FT Opentop Container SN.PPLi 9719', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000808', 'JV00027', '187', NULL, '1500034954', 0, '20FT Basket AORU 4602398', '0.00', '0.00', '0.00', 'Solar Alert', '1', '0', '1', NULL),
('IC000809', 'JV00027', '240', NULL, '1500034935', 0, 'Tubing Seamselss 4-1/2"', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000810', 'JV00027', '241', NULL, '1500034990', 0, 'Empty Cutting Skip 11 Ton c/w Lifting Set CMS 0458', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000811', 'JV00027', '241', NULL, '1500034990', 0, 'Empty Cutting Skip 11 Ton c/w Lifting Set CMS 0559', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000812', 'JV00027', '241', NULL, '1500034990', 0, 'Empty Cutting Skip 11 Ton c/w Lifting Set LCK 127', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000813', 'JV00027', '241', NULL, '1500034990', 0, 'Empty Cutting Skip 11 Ton c/w Lifting Set LCK 658', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000814', 'JV00027', '241', NULL, '1500034990', 0, 'Empty Cutting Skip 11 Ton c/w Lifting Set CMS 0219', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000815', 'JV00027', '241', NULL, '1500034990', 0, 'Empty Cutting Skip 11 Ton c/w Lifting Set CMS 0234', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000816', 'JV00027', '241', NULL, '1500034990', 0, 'Empty Cutting Skip 11 Ton c/w Lifting Set CMS 0478', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000817', 'JV00027', '241', NULL, '1500034990', 0, 'Empty Cutting Skip 11 Ton c/w Lifting Set CMS 0223', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000818', 'JV00027', '241', NULL, '1500034990', 0, 'Empty Cutting Skip 11 Ton c/w Lifting Set LCK 322', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000819', 'JV00027', '241', NULL, '1500034990', 0, 'Empty Cutting Skip 11 Ton c/w Lifting Set CMS 0175', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000820', 'JV00027', '241', NULL, '1500034990', 0, 'Empty Cutting Skip 11 Ton c/w Lifting Set LCK 739', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000821', 'JV00027', '241', NULL, '1500034990', 0, 'Empty Cutting Skip 11 Ton c/w Lifting Set LCK 009', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000822', 'JV00027', '241', NULL, '1500034990', 0, 'Empty Cutting Skip 11 Ton c/w Lifting Set LCK 725', '0.00', '0.00', '0.00', 'PPLi', '1', '0', '1', NULL),
('IC000823', 'JV00027', '45', NULL, '1500034998', 0, 'Empty Tote Tank SN : TD-TT-550-112', '0.00', '0.00', '0.00', 'Dowel Schlumberger', '1', '0', '1', NULL),
('IC000824', 'JV00027', '45', NULL, '1500034998', 0, 'Empty Tote Tank SN : TD-TT-550-114', '0.00', '0.00', '0.00', 'Dowel Schlumberger', '1', '0', '1', NULL),
('IC000825', 'JV00027', '45', NULL, '1500034998', 0, 'Empty Tote Tank SN : TD-TT-550-043', '0.00', '0.00', '0.00', 'Dowel Schlumberger', '1', '0', '1', NULL),
('IC000826', 'JV00027', '45', NULL, '1500034998', 0, 'Empty Tote Tank SN : TD-TT-550-041', '0.00', '0.00', '0.00', 'Dowel Schlumberger', '1', '0', '1', NULL),
('IC000827', 'JV00027', '242', NULL, '1500035012', 0, 'D080 (1035 Gal)', '0.00', '0.00', '0.00', 'Dowel Schlumberger', '1', '0', '1', NULL),
('IC000828', 'JV00027', '242', NULL, '1500035012', 0, 'D193 (275 Gal)', '0.00', '0.00', '0.00', 'Dowel Schlumberger', '1', '0', '1', NULL),
('IC000829', 'JV00027', '244', NULL, '1500035027', 0, 'Drill Pipe 5-1/2"  Inches For Inspect (36 joint)', '0.00', '0.00', '0.00', 'Vantage  ', '1', '0', '1', NULL),
('IC000830', 'JV00027', '245', NULL, '1500034453', 0, 'RR Expansion Valve Chiller LQ unit B Comp A1', '0.00', '0.00', '0.00', 'Spectra Solusindo', '1', '0', '1', NULL),
('IC000831', 'JV00027', '246', NULL, '1500034649', 0, 'Tools PSV (PT.PJ-TEK Mandiri)', '0.00', '0.00', '0.00', 'Spectra Solusindo', '1', '0', '1', NULL),
('IC000832', 'JV00027', '203', NULL, '1500034891', 0, 'Rck No.MACRK - 204 c/w Lifting set ', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000833', 'JV00027', '61', NULL, '2019-0069', 0, 'MT Tote Tank Ex Chemical MEG LBU-2019-0069', '0.00', '0.00', '0.00', 'LBU', '1', '0', '1', NULL),
('IC000834', 'JV00027', '45', NULL, '550-100', 0, 'MT Tote Tank Ex Chemical MEG-TT-TT-550-100', '0.00', '0.00', '0.00', 'LBU', '1', '0', '1', NULL),
('IC000835', 'JV00027', '247', NULL, '016-4', 0, 'Rack SEU-Rox-016-4', '0.00', '0.00', '0.00', 'Sarku', '1', '0', '1', NULL),
('IC000836', 'JV00027', '248', NULL, 'GN 010', 0, 'Diesel Brushless Generator MGC 156 Swith S/N AOS GN 010 ', '0.00', '0.00', '0.00', 'Ferdy Saputra', '1', '0', '1', NULL),
('IC000837', 'JV00027', '66', NULL, '0001', 0, 'Bag Paper Trash', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000838', 'JV00027', '66', NULL, '0002', 0, 'Bag Plastic Waste', '0.00', '0.00', '0.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000839', 'JV00027', '61', NULL, '1500034060', 0, 'Empty T/Tank MEG 0105', '0.00', '0.00', '0.00', 'Luas Birus Utama', '1', '0', '1', NULL),
('IC000840', 'JV00027', '61', NULL, '1500034060', 0, 'Empty T/Tank MEG LBU-2019-0058', '0.00', '0.00', '0.00', 'LBU', '1', '0', '1', NULL),
('IC000841', 'JV00027', '61', NULL, '1500034060', 0, 'Empty T/Tank Starhib WM-596SM LBU-2019-0075', '0.00', '0.00', '0.00', 'LBU', '1', '0', '1', NULL),
('IC000842', 'JV00027', '59', NULL, '1500034761', 0, 'Firex Rental Dry Powder cap 57 Kg & 9 Kg', '0.00', '0.00', '0.00', 'Segara Permai', '1', '0', '1', NULL),
('IC000843', 'JV00027', '250', NULL, '1500034861', 0, 'Sertification Inflatable Life Raft Brand RFD cap 10 P', '0.00', '0.00', '0.00', 'Segara Permai', '1', '0', '1', NULL),
('IC000844', 'JV00027', '251', NULL, '1500034939', 0, 'Air Compressor', '0.00', '0.00', '0.00', 'Atlas Copco', '1', '0', '1', NULL),
('IC000845', 'JV00027', '201', NULL, '1500035027', 0, '20Ft Container OEGU 1511593', '0.00', '0.00', '0.00', 'Vantage  ', '1', '0', '1', NULL),
('IC000846', 'JV00027', '66', NULL, '0003', 0, 'D081', '0.00', '0.00', '0.00', 'Dowel Schlumberger', '1', '0', '1', NULL),
('IC000847', 'JV00027', '252', NULL, '1500034974', 0, 'Primary Box  Explosive (Empty)', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL),
('IC000848', 'JV00027', '253', NULL, '1500034974', 0, 'Secondary Box Explosive (Empty) SBY-EB-03', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL),
('IC000849', 'JV00027', '254', NULL, '1500034974', 0, 'Secondary Box Explosive (Empty) EWS-EB-01', '0.00', '0.00', '0.00', 'Halliburton', '1', '0', '1', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

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
(11, 'JT00004', 'PT.ABC', 'Chemical Drum', 'OFFLOADING', 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.30', '0.00', '0.00', '0.00', 0, 'Pallet', 'Offloading Premier', 1),
(12, 'JT00004', 'PT.ABC', 'Chemical Drum', 'OFFLOADING', 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.30', '0.00', '0.00', '0.00', 0, 'Pallet', 'Offloading Premier', 1),
(13, 'JT00005', 'Segara Permai', 'Liferaft', 'OFFLOADING', '', '001', '1.20', '1.20', '1.00', '1.44', '0.30', '0.00', '0.00', '0.00', 0, 'Palet', 'Offloading Truck', 1),
(14, 'JT00006', 'Pt elnusa petrofin', 'Meditran oil', 'OFFLOADING', 'Production', '4400002054', '1.00', '1.00', '1.00', '1.00', '4.00', '0.00', '0.00', '0.00', 0, 'Pallet', 'Offloading truck', 1),
(15, 'JT00007', 'Pt sulindo jaya abadi', 'Sparepart', 'OFFLOADING', 'Production', '12506/01/00010', '0.00', '0.00', '0.00', '0.00', '0.61', '0.00', '0.00', '0.00', 0, 'Wooden box', 'Offloading truck', 1),
(16, 'JT00008', 'PT Shentek Teknika Indonesia', 'Plate mild steel', 'OFFLOADING', 'Production', '12490/01/00010', '2.00', '1.00', '0.00', '0.00', '0.70', '0.00', '0.00', '0.00', 0, 'Losse', 'Offloading truck', 1),
(17, 'JT00009', 'PT Shentek Teknika Indonesia', 'Beam steel', 'OFFLOADING', 'Production', '12490/01/00010', '12.00', '0.00', '0.00', '0.00', '0.50', '0.00', '0.00', '0.00', 0, 'Losse', 'Offloading truck', 1),
(18, 'JT00010', 'PT Gearindo', 'Wodden box', 'OFFLOADING', 'Production', '0001', '0.00', '0.00', '0.00', '0.00', '0.20', '0.00', '0.00', '0.00', 0, '', 'Off loading truck', 1),
(19, 'JT00011', 'Gearindo', 'W/Box', 'OFFLOADING', 'Production', '002', '0.62', '0.62', '0.83', '0.32', '0.20', '0.00', '0.00', '0.00', 0, 'W/Box', 'Offloading Truck Premier Oil', 1),
(20, 'JT00012', 'PT.Pusuma', 'Pallet flang', 'OFFLOADING', 'Production', '003', '0.20', '0.15', '0.10', '0.00', '0.35', '0.00', '0.00', '0.00', 0, 'Pallet', 'Off loading truck premier oil', 1),
(21, 'JT00012', 'PT Pusuma', 'Pallet Flang', 'OFFLOADING', 'Production', '004', '0.15', '0.12', '0.06', '0.00', '0.20', '0.00', '0.00', '0.00', 0, 'Pallet', 'Off loading truck premier oil', 1),
(22, 'JT00012', 'PT. Eskimo', 'Wodden box', 'OFFLOADING', 'Production', '005', '1.00', '0.50', '0.50', '0.25', '0.85', '0.00', '0.00', '0.00', 0, 'Boks', 'Off loading ttuck premier oil', 1),
(23, 'JT00012', 'PT.Wira trans', 'Wodden box', 'OFFLOADING', 'Production', '006', '1.00', '1.00', '0.50', '0.50', '0.09', '0.00', '0.00', '0.00', 0, 'Boks', 'Off loading truck premier oil', 1),
(24, 'JT00013', 'PT.Mesitrch', 'Welding machine', 'OFFLOADING', '', '007', '2.00', '1.20', '1.80', '4.32', '1.30', '0.00', '0.00', '0.00', 0, 'Unit', 'Off loading truck premier oil', 1),
(25, 'JT00014', 'PT.Mesitech', 'Compressor', 'OFFLOADING', 'Production', '008', '2.57', '1.80', '1.83', '8.47', '1.70', '0.00', '0.00', '0.00', 0, 'Unit', 'Off loading truck premier oil', 1),
(26, 'JT00016', 'PT Ekajaya', 'Demulsifier', 'OFFLOADING', 'Production', '12531/01/00010', '1.00', '1.00', '1.00', '1.00', '0.80', '0.00', '0.00', '0.00', 0, 'Pallet', 'Offloading truck', 1),
(27, 'JT00017', 'PT Stainless steel primavalve', 'Gate valve', 'OFFLOADING', 'Production', 'CO-20-05-0048', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', 0, 'Wooden box', 'Offloading truck', 1),
(28, 'JT00018', 'PT Ardico pratama energi', 'H2S Scavenger', 'OFFLOADING', 'Production', '12495/01/00010', '1.00', '1.00', '1.00', '1.00', '0.80', '0.00', '0.00', '0.00', 0, 'Pallet', 'Offloading truck', 1),
(29, 'JT00019', 'PT Shaftindo energi ', 'Spool', 'LOADING', 'Production', '4500004603', '4.00', '2.00', '0.00', '0.00', '1.20', '0.00', '0.00', '0.00', 0, 'Pallet', 'Loading truck', 1),
(30, 'JT00019', 'PT Shaftindo energi ', 'Flange', 'OFFLOADING', 'Production', '4500004603', '0.00', '0.00', '0.00', '0.00', '0.33', '0.00', '0.00', '0.00', 0, 'Wooden box', 'Loading truck', 1),
(31, 'JT00019', 'PT Shaftindo energi ', 'Ball valve', 'OFFLOADING', 'Production', '4500004603', '0.00', '0.00', '0.00', '0.00', '0.30', '0.00', '0.00', '0.00', 0, 'Wooden box', 'Loading truck', 1),
(32, 'JT00019', 'PT Shaftindo energi ', 'Empty oxygen bottle', 'LOADING', 'Production', '4500004603', '1.00', '0.00', '2.00', '0.00', '0.80', '0.00', '0.00', '0.00', 0, 'Rack', 'Loading truck', 1),
(33, 'JT00020', 'PT Ida era baru', 'Sparepart', 'OFFLOADING', 'Production', '12464', '0.00', '0.00', '0.00', '0.00', '0.10', '0.00', '0.00', '0.00', 0, 'Wooden box', 'Offloading truck', 1),
(34, 'JT00021', 'PT Benvors sarana utama', 'Wellhead penetrator ', 'OFFLOADING', 'Production', '3000005', '1.00', '1.00', '0.00', '0.00', '0.65', '0.00', '0.00', '0.00', 0, 'Wooden box', 'Offloading truck', 1),
(35, 'JT00022', 'PT Sucofindo', 'Kompresor', 'OFFLOADING', 'Production', '420000266', '3.00', '2.00', '2.00', '12.00', '0.60', '0.00', '0.00', '0.00', 0, 'Unit', 'Offloading truck', 1),
(36, 'JT00015', 'a', 'a', 'OFFLOADING', 'a', 'a', '2.00', '1.00', '1.00', '2.00', '3.00', '0.00', '0.00', '0.00', 0, 'Pallet', 'Offloading Premier', 1),
(37, 'JT00023', 'Champions', 'IBC Tank', 'OFFLOADING', 'Production', '1500033333', '0.35', '0.35', '2.00', '0.24', '2.00', '0.00', '0.00', '0.00', 0, 'Unit', 'Offloading', 1),
(38, 'JT00024', 'PPLI', 'Chemical Drum', 'LOADING', 'Drilling', '002', '1.22', '1.22', '1.00', '1.49', '0.80', '0.00', '0.00', '0.00', 0, 'pallet', 'Loading Chemical drum PPLI', 1),
(41, 'JT00025', 'Pt elnusa petrofin', 'Meditran oil', 'OFFLOADING', 'Production', '4400002059', '1.17', '1.17', '1.10', '1.51', '0.80', '0.00', '0.00', '0.00', 0, 'Pallet', 'Offloading truck', 1),
(42, 'JT00026', 'PT Mesitech', 'Compressor', 'LOADING', 'Production', '0001', '3.50', '1.50', '1.60', '8.40', '2.80', '16.80', '5.60', '16.80', 2, 'Unit', 'Loading truck', 1),
(43, 'JT00026', 'PT.Mesitech', 'Compressor', 'OFFLOADING', 'Production', '0001', '2.50', '1.50', '1.60', '6.00', '2.80', '12.00', '5.60', '12.00', 2, 'Unit', 'Loading truck', 1),
(44, 'JT00026', 'PT.BennLine', 'Half Open Top 20 ft', 'LOADING', 'Production', '0001', '6.00', '2.50', '1.30', '19.50', '4.60', '39.00', '9.20', '39.00', 2, 'Unit', 'Loading truck', 1),
(45, 'JT00027', 'PT Anugerah inti mulia ', 'Ethylene glycol', 'OFFLOADING', 'Production', '4400002060', '1.17', '1.17', '1.10', '1.51', '0.90', '0.00', '0.00', '0.00', 0, 'Pallet', 'Offloading truck', 1),
(46, 'JT00028', 'PT Petrolio Travolta', 'Toluene', 'OFFLOADING', 'Production', '4300007998', '1.17', '1.17', '1.10', '1.51', '0.80', '0.00', '0.00', '0.00', 0, 'Pallet', 'Offloading truck', 1),
(47, 'JT00028', 'PT Shaftindo energi ', 'Cradle gas bottle', 'OFFLOADING', 'Production', 'Si 191 ctr 121', '1.18', '0.82', '2.01', '1.94', '0.30', '0.00', '0.00', '0.00', 0, 'Rack', 'Offloading truck', 1),
(48, 'JT00028', 'PT Shaftindo energi ', 'Cradle gas bottle', 'OFFLOADING', 'Production', 'Si 191 ctr 121', '0.63', '0.63', '1.91', '0.76', '0.37', '0.00', '0.00', '0.00', 0, 'Rack', 'Offloading truck', 1),
(49, 'JT00028', 'PT Shaftindo energi ', 'Cradle gas bottle', 'OFFLOADING', 'Production', 'Si 191 ctr 121', '1.13', '0.82', '2.01', '1.86', '0.70', '0.00', '0.00', '0.00', 0, 'Rack', 'Offloading truck', 1);

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
(6, 'TR00002', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.30', '0.00', '0.00', '0.00', 0, 'Pallet', 'Internal Moving Star Energy', NULL, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_stacking`
--

INSERT INTO `detail_stacking` (`id_cargo`, `id_stacking`, `nm_company`, `nm_barang`, `nm_kegiatan`, `production`, `no_po`, `p_cargo`, `l_cargo`, `t_cargo`, `volume_satuan`, `ton_satuan`, `volume_cargo`, `ton_cargo`, `revton_cargo`, `qty_cargo`, `satuan_cargo`, `deskripsi_cargo`, `created_on_cargo`, `status_cargo`) VALUES
(1, 'ST00001', 'PT.ASW', 'Chemical Drum', NULL, 'Production', '0002', '1.20', '1.20', '1.20', '1.73', '1.30', '0.00', '0.00', '0.00', 0, 'Pallet', 'Stacking Medco', NULL, 1),
(2, 'ST00001', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.30', '0.00', '0.00', '0.00', 0, 'Pallet', 'Stacking Medco', NULL, 1),
(3, 'ST00001', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.20', '0.00', '0.00', '0.00', 0, 'Pallet', 'Stacking Medco', NULL, 1),
(4, 'ST00002', 'PT.ABC', 'Chemical Drum', NULL, 'Production', '0001', '1.20', '1.20', '1.20', '1.73', '1.50', '0.00', '0.00', '0.00', 0, 'Unit', 'Stacking Star Energy', NULL, 1),
(5, 'ST00003', 'Pt elnusa petrofin', 'Meditran oil', NULL, 'Production', '4400002054', '1.00', '1.00', '1.00', '1.00', '0.80', '0.00', '0.00', '0.00', 0, 'Pallet', 'Stacking material', NULL, 1),
(6, 'ST00004', 'PT Premier Oil', 'Half Open Top 20 ft', NULL, 'Production', '004', '6.00', '2.50', '1.30', '19.50', '3.50', '78.00', '14.00', '78.00', 4, 'Unit', 'Segergasi material eks KM Sokka', NULL, 1),
(7, 'ST00004', 'PT.Mesitech', 'Compressor', NULL, 'Production', '0001', '2.50', '1.50', '1.60', '6.00', '2.80', '6.00', '2.80', '6.00', 1, 'Unit', 'Loading truck', NULL, 1),
(8, 'ST00004', 'PT.BennLine', 'Half Open Top 20 ft', NULL, 'Production', '0001', '6.00', '2.50', '1.30', '19.50', '3.50', '39.00', '7.00', '39.00', 2, 'Unit', 'Loading truck', NULL, 1),
(9, 'ST00004', 'PT.Mesitech', 'Compressor', NULL, 'Production', '0001', '2.50', '1.50', '1.60', '6.00', '2.80', '30.00', '14.00', '30.00', 5, 'Unit', 'Loading truck', NULL, 1),
(10, 'ST00004', 'PT.Premier Oil', 'Half Open Top 20 ft', NULL, 'Production', '0001', '6.00', '2.50', '1.30', '19.50', '2.70', '39.00', '5.40', '39.00', 2, 'Unit', 'Segergasi material eks KM Sokka', NULL, 1),
(11, 'ST00005', 'PT Premier Oil', 'Countainer 6 ft', NULL, 'Production', '0001', '1.90', '1.60', '2.80', '8.51', '1.50', '119.17', '21.00', '119.17', 14, 'Unit', 'Segergasi n stacking material eks KM Sokka', NULL, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_barang`
--

INSERT INTO `jenis_barang` (`id_jenis`, `nm_jenis`, `p`, `l`, `t`, `satuan_jenis`, `volume_jenis`) VALUES
(6, 'CONTAINER 20 FT', '6.06', '2.44', '2.90', 'UNIT', '42.88'),
(7, 'CONTAINER 10 FT', '2.99', '2.44', '2.59', 'UNIT', '18.90'),
(9, 'TOTE THANK POI', '1.82', '1.82', '2.75', 'UNIT', '9.11'),
(10, 'IBC Tank', '1.50', '1.50', '1.80', 'UNIT', '4.05'),
(12, 'Iso Container PMB 10FT', '3.00', '2.50', '2.50', 'UNIT', '18.75'),
(13, 'Empty Gas Helium Cylinder', '1.50', '1.50', '1.60', 'Rack', '3.60'),
(14, 'Empty Tote Tank', '1.50', '1.50', '1.80', 'UNIT', '4.05'),
(15, 'Offshore Basket SN-SLB-08897', '12.00', '1.20', '1.43', 'Basket', '20.59'),
(16, 'Rack Cylinder BRA', '2.00', '2.00', '2.20', 'Rack', '8.80'),
(17, 'NItrogen Tank , Halliburton', '3.00', '2.50', '2.60', 'UNIT', '19.50'),
(18, 'Iron Basket , Halliburton', '6.70', '1.20', '1.20', 'UNIT', '9.65'),
(19, 'Waste Skip', '3.00', '1.22', '1.40', 'UNIT', '5.12'),
(20, 'Open Top Container 30FT', '9.20', '2.45', '1.49', 'UNIT', '33.58'),
(21, 'Tote Tank HSD', '1.48', '1.38', '2.27', 'UNIT', '4.64'),
(22, 'Cylinder Rack Nitrogen POI', '1.18', '1.18', '2.14', 'Rack', '2.98'),
(24, 'Dry Container 10FT', '2.99', '2.44', '2.60', 'UNIT', '18.97'),
(25, 'Chiller Container ', '2.99', '2.44', '2.60', 'UNIT', '18.97'),
(26, 'Half Container 10FT SN-FSHH', '2.99', '2.44', '1.22', 'UNIT', '8.90'),
(27, 'Open Top Container 20FT ME', '6.06', '2.44', '2.60', 'UNIT', '38.44'),
(28, 'Cylinder Rack', '1.37', '0.89', '2.20', 'UNIT', '2.68'),
(29, 'Chemical Barite', '1.20', '1.20', '1.00', 'Palet', '1.44'),
(30, 'Oli Drum', '1.20', '1.20', '1.15', 'Palet', '1.66'),
(31, 'Chemical Bentonite', '1.20', '1.20', '1.10', 'Palet', '1.58'),
(32, 'Chemical MI Swaco', '1.20', '1.20', '1.50', 'UNIT', '2.16'),
(34, 'Offshore Basket SNI', '13.00', '1.20', '1.20', 'UNIT', '18.72'),
(36, 'Chemical Drum', '1.20', '1.20', '1.20', 'Palet', '1.73'),
(37, 'Liferaft Viking', '1.70', '1.00', '1.00', 'W/Box', '1.70'),
(38, 'Waste Skip POI ', '2.06', '1.51', '1.61', 'UNIT', '5.01'),
(39, 'Mini Container POI', '1.91', '1.66', '2.76', 'UNIT', '8.75'),
(40, 'Food Container 10FT POI 1', '3.05', '2.45', '2.45', 'UNIT', '18.31'),
(41, 'Food Container 10FT POI', '3.00', '2.45', '2.45', 'UNIT', '18.01'),
(42, 'Food Container 10FT', '3.00', '2.44', '2.74', 'UNIT', '20.06'),
(43, 'Half Open Top Container 10FT SN  ME', '2.99', '2.44', '1.28', 'UNIT', '9.34'),
(44, 'Half Open Top Container 20FT POI', '6.00', '2.45', '1.30', 'UNIT', '19.11'),
(45, 'Tote Tank OFH', '1.43', '1.43', '2.47', 'UNIT', '5.05'),
(46, 'Cyinder Rack Nitrogen R-POI-14', '1.50', '0.80', '1.46', 'UNIT', '1.75'),
(47, 'Cylinder Rack R-POI-16-11', '1.17', '1.17', '2.04', 'UNIT', '2.79'),
(49, 'Chiller Container 20FT', '6.05', '2.42', '2.58', 'UNIT', '37.77'),
(50, 'Cylinder rack Oxygen SE', '1.13', '0.82', '2.01', 'UNIT', '1.86'),
(51, 'Cylinder Rack Acetylene SE', '0.92', '0.62', '1.43', 'UNIT', '0.82'),
(52, 'Cylinder Rack Hellium SE', '0.93', '0.55', '1.26', 'UNIT', '0.64'),
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
(68, 'Lifting Gear Box', '0.90', '0.60', '0.40', 'W/Box', '0.22'),
(69, 'Lifting Gear Junk', '1.20', '1.20', '0.50', 'Palet', '0.72'),
(70, 'Part Junk', '1.00', '1.00', '1.00', 'Palet', '1.00'),
(71, 'Cylinder Rack MOWC', '1.10', '1.10', '2.00', 'UNIT', '2.42'),
(72, 'Cylinder Rack Nitrogen ME ', '1.10', '1.05', '2.18', 'Rack', '2.52'),
(73, 'Cylinder Rack Nitrogen Blue ME', '1.10', '1.05', '2.13', 'Rack', '2.46'),
(74, 'Half height Basket Rig 4.5', '6.06', '2.44', '1.22', 'UNIT', '18.04'),
(75, 'Half height Basket Rig 3', '2.74', '2.44', '1.22', 'UNIT', '8.16'),
(76, 'Half Opentop Container 10FT POI 3', '2.99', '2.45', '1.28', 'UNIT', '9.38'),
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
(92, 'Offshore Basket SN-B-1403', '14.30', '1.20', '1.20', 'UNIT', '20.59'),
(93, 'Offshore Basket SN Auro', '13.30', '1.20', '1.40', 'UNIT', '22.34'),
(94, 'Cargo Basket', '12.30', '1.20', '1.20', 'UNIT', '17.71'),
(95, 'Offshore Basket SN.CPS', '15.40', '2.01', '1.60', 'UNIT', '49.53'),
(96, 'Clamp', '0.50', '0.50', '0.70', 'W/Box', '0.18'),
(97, 'Clamp For As', '0.80', '0.60', '0.60', 'Box', '0.29'),
(98, 'TAS', '1.10', '0.20', '0.20', 'Box', '0.04'),
(99, '30FT Basket AORA', '9.20', '2.40', '1.40', 'UNIT', '30.91'),
(100, 'DNV Container 20FT', '6.00', '2.50', '2.50', 'UNIT', '37.50'),
(101, 'Half Open Top Container 10FT ME', '3.00', '2.50', '1.50', 'UNIT', '11.25'),
(102, 'Cylinder Rack SN SEU-53', '1.00', '1.00', '2.00', 'UNIT', '2.00'),
(103, 'W/Box ME', '1.20', '1.20', '1.20', 'W/Box', '1.73'),
(104, 'Tote Tank S ME', '1.20', '1.20', '1.50', 'UNIT', '2.16'),
(105, 'Liferaft ME', '2.00', '1.00', '1.00', 'UNIT', '2.00'),
(106, 'Food Container 10FT ME', '3.00', '2.50', '2.50', 'UNIT', '18.75'),
(107, 'Container Biru', '3.00', '2.44', '2.50', 'UNIT', '18.30'),
(108, 'Cradle Kwr', '1.00', '1.00', '1.00', 'UNIT', '1.00'),
(109, 'D-066', '1.10', '1.10', '1.00', 'Palet', '1.21'),
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
(124, 'Empty Basket TD-CB 10', '10.00', '1.20', '1.40', 'Unit', '16.80'),
(125, 'Mini Container ME', '2.50', '2.50', '2.80', 'UNIT', '17.50'),
(126, 'Basket TD-CB', '8.30', '1.20', '1.40', 'UNIT', '13.94'),
(127, 'Drilling JAR 7"', '9.14', '0.18', '0.18', 'Ea', '0.30'),
(128, 'Cylinder Rack POI Argon', '0.80', '2.11', '2.04', 'UNIT', '3.44'),
(130, 'Basket SN TD-CB-14', '14.30', '1.20', '1.43', 'UNIT', '24.54'),
(131, 'Basket SN TD-CB-13', '13.30', '1.20', '1.43', 'UNIT', '22.82'),
(132, 'Waste Skip POI 1', '2.06', '1.57', '1.61', 'UNIT', '5.21'),
(134, 'Mini Container POI 1', '1.82', '2.45', '1.82', 'UNIT', '8.12'),
(137, '10Ft Half Opentop Container POI', '3.00', '2.45', '1.30', 'UNIT', '9.56'),
(138, '20FT Opentop H-270', '6.06', '2.44', '2.80', 'UNIT', '41.40'),
(140, '20FT Opentop POI 1', '6.00', '2.45', '1.50', 'UNIT', '22.05'),
(141, 'Plastic Box POI', '2.06', '1.57', '1.51', 'UNIT', '4.88'),
(142, 'Rack Bottle Gas', '0.75', '0.75', '1.80', 'Rack', '1.01'),
(143, 'Mini Container POI 2', '1.91', '1.67', '2.78', 'UNIT', '8.87'),
(144, 'Half Opentop 10FT POI', '3.00', '2.45', '1.50', 'UNIT', '11.03'),
(145, 'Half Opentop 10FT POI 1', '3.05', '2.45', '1.28', 'UNIT', '9.56'),
(146, '6FT Container SE ', '1.82', '1.82', '2.58', 'UNIT', '8.55'),
(147, 'Power Pack', '1.47', '0.93', '1.16', 'Unit', '1.59'),
(148, 'PC Mex Lenovo', '0.90', '0.20', '0.50', 'W/Box', '0.09'),
(149, 'Welding Habitat', '1.20', '1.20', '1.60', 'W/Box', '2.30'),
(150, 'Seatel Antena', '3.00', '3.00', '2.80', 'Unit', '25.20'),
(151, 'Empty Basket 6 Mtr', '6.00', '2.44', '1.43', 'Unit', '20.94'),
(152, 'Stand Dryer ', '3.70', '2.90', '1.50', 'Unit', '16.10'),
(153, 'Propane Rack SN', '1.06', '1.06', '1.67', 'Unit', '1.88'),
(154, 'Hammer Basket', '10.00', '1.00', '1.71', 'Unit', '17.10'),
(155, 'Skid Frame', '3.50', '1.54', '2.50', 'Unit', '13.48'),
(156, 'Basket YAP', '1.83', '1.72', '1.20', 'Unit', '3.78'),
(157, 'Basket YAP 01', '1.82', '1.52', '1.10', 'Unit', '3.04'),
(158, 'Half Height', '3.00', '2.40', '1.40', 'Unit', '10.08'),
(159, 'Auro ', '3.00', '2.00', '0.97', 'Unit', '5.82'),
(160, 'Basket MOOU', '4.58', '2.44', '1.43', 'Unit', '15.98'),
(161, 'Sarku Container', '6.00', '2.40', '2.50', 'Unit', '36.00'),
(162, 'E-Line Dog House', '6.06', '2.44', '2.44', 'UNIT', '36.08'),
(163, 'Line Basket', '6.20', '1.10', '1.20', 'UNIT', '8.18'),
(164, 'Varley', '1.20', '0.90', '1.70', 'UNIT', '1.84'),
(165, 'Steel Box MEPN', '3.00', '1.20', '1.40', 'UNIT', '5.04'),
(166, 'Prowell PCE', '3.50', '1.80', '1.50', 'UNIT', '9.45'),
(167, 'Prowell Single Drum', '2.30', '1.20', '1.50', 'UNIT', '4.14'),
(168, 'Prowell Power Pack', '2.30', '1.20', '1.60', 'UNIT', '4.42'),
(169, 'Single RAM', '1.80', '0.50', '1.40', 'UNIT', '1.26'),
(170, 'Lubricator Basket', '3.00', '1.20', '0.90', 'UNIT', '3.24'),
(171, 'Lubricator Basket', '3.00', '1.20', '0.90', 'UNIT', '3.24'),
(172, 'Transporter Basket', '2.40', '1.60', '1.30', 'UNIT', '4.99'),
(173, 'Gun Clamp', '10.00', '1.00', '0.30', 'Clamp', '3.00'),
(174, 'Gun Clamp 01', '1.00', '1.00', '0.50', 'Palet', '0.50'),
(175, 'Battery Charger', '0.80', '0.50', '0.50', 'W/Box', '0.20'),
(176, 'Offshore Container POI', '3.05', '2.45', '2.45', 'UNIT', '18.31'),
(177, 'Empty Bottle  Oxygen SE', '1.00', '0.70', '2.00', 'UNIT', '1.40'),
(178, 'Cylinder Rack SN KWS GBR', '1.20', '1.20', '2.00', 'UNIT', '2.88'),
(179, 'IBC Tank Methanol', '1.43', '1.42', '1.50', 'UNIT', '3.05'),
(180, 'Pass Ring Key', '0.80', '0.50', '0.40', 'Bundel', '0.16'),
(181, 'Flow Meter', '0.10', '0.10', '0.20', 'Can', '0.00'),
(182, 'Dump Truck Loses', '6.02', '2.02', '1.07', 'UNIT', '13.01'),
(183, 'Cylinder Rack TD-GB', '1.45', '1.24', '2.25', 'UNIT', '4.05'),
(184, 'Cylinder Rack BSSL', '1.27', '1.15', '2.28', 'UNIT', '3.33'),
(185, 'Offshore Basket FSHH', '4.57', '2.44', '1.22', 'UNIT', '13.60'),
(186, 'Casing 13-3/8"', '12.00', '0.50', '0.33', 'Bundel', '1.98'),
(187, '6M Half Height Basket', '6.06', '2.44', '1.43', 'UNIT', '21.14'),
(188, '3M Open Top Container', '2.99', '2.45', '1.28', 'UNIT', '9.38'),
(189, 'Petroguard', '8.00', '0.50', '0.50', 'W/Box', '2.00'),
(190, '30FT Half Opentop Container', '6.05', '2.45', '1.28', 'UNIT', '18.97'),
(191, 'ISO Tank MEG POI', '3.00', '2.45', '2.60', 'UNIT', '19.11'),
(192, 'Cylinder Rack Acetylene POI', '1.35', '0.72', '1.60', 'UNIT', '1.56'),
(193, 'Cylinder Rack Acetylene POI', '1.35', '0.72', '1.60', 'UNIT', '1.56'),
(194, 'Container Waste POI', '6.00', '2.45', '1.28', 'UNIT', '18.82'),
(195, 'Pipe Spool USM', '2.10', '1.00', '1.00', 'Box', '2.10'),
(196, 'Pipe Spool USM 01', '4.00', '1.00', '1.00', 'Box', '4.00'),
(197, 'Rack TKC 12', '2.55', '1.40', '1.64', 'UNIT', '5.85'),
(198, 'LIFE RAFT ME', '1.50', '0.80', '1.00', 'Crate', '1.20'),
(199, 'Motor Electric', '1.20', '1.00', '0.50', 'Crate', '0.60'),
(200, 'Motor Electric', '1.20', '1.00', '0.50', 'Crate', '0.60'),
(201, 'ISO Container 20FT ME 01', '6.06', '2.44', '2.59', 'UNIT', '38.30'),
(202, 'Rack Argon 01', '1.04', '1.06', '2.02', 'UNIT', '2.23'),
(203, 'Rack Argon 01', '1.04', '1.06', '2.02', 'UNIT', '2.23'),
(204, 'Rack N2', '1.41', '1.37', '2.18', 'UNIT', '4.21'),
(205, 'Offshore Basket 14M', '14.26', '1.20', '1.24', 'UNIT', '21.22'),
(206, 'Offshore Basket 40FT', '12.00', '1.20', '1.24', 'UNIT', '17.86'),
(207, 'Offshore Basket 003', '6.30', '1.20', '1.30', 'UNIT', '9.83'),
(208, 'Basket 12.3 ME', '12.30', '1.20', '1.30', 'UNIT', '19.19'),
(209, 'Basket 12.2 ME', '12.20', '1.20', '1.43', 'UNIT', '20.94'),
(210, 'Tolls Box', '2.40', '0.50', '0.50', 'S/Box', '0.60'),
(211, 'Container PPLi', '6.06', '2.44', '2.60', 'UNIT', '38.44'),
(212, 'Mini Container ME 02 ', '1.59', '1.85', '2.92', 'UNIT', '8.59'),
(213, 'Baracarb', '1.10', '1.05', '1.00', 'Palet', '1.16'),
(214, 'D620', '1.10', '1.10', '1.10', 'Palet', '1.33'),
(215, 'D252', '1.10', '1.05', '1.10', 'Palet', '1.27'),
(216, 'Cargo Basket 01 ME', '8.30', '1.10', '1.40', 'UNIT', '12.78'),
(217, 'Sample Terubuk', '0.20', '0.30', '0.40', 'Box', '0.02'),
(218, 'TCP Tool Box', '2.44', '0.98', '0.99', 'S/Box', '2.37'),
(219, 'Basket 10.3 ME', '10.30', '1.20', '1.43', 'UNIT', '17.67'),
(220, 'Container DNV', '6.10', '2.40', '2.90', 'UNIT', '42.46'),
(221, 'Sample Sea Water', '1.20', '1.20', '0.50', 'Palet', '0.72'),
(222, 'Slickline', '1.20', '0.70', '0.60', 'UNIT', '0.50'),
(223, 'Slickline', '1.20', '0.70', '0.60', 'UNIT', '0.50'),
(224, 'Winch Cable', '2.34', '2.14', '2.14', 'UNIT', '10.72'),
(225, 'CLC Frame', '2.30', '2.15', '2.85', 'UNIT', '14.09'),
(226, 'DAPS', '2.44', '2.44', '2.61', 'UNIT', '15.54'),
(227, 'Half Opentop Container 20FT POI 01', '6.30', '2.45', '1.28', 'UNIT', '19.76'),
(228, '20FT Closed Container ', '6.05', '2.45', '2.45', 'UNIT', '36.32'),
(229, 'AirMan Compressor', '3.70', '1.80', '2.23', 'UNIT', '14.85'),
(230, 'Half Opentop 10FT POI 2', '3.05', '2.45', '1.28', 'UNIT', '9.56'),
(231, 'Container POI', '6.58', '2.43', '1.28', 'UNIT', '20.47'),
(232, '20FT Opentop POI 2', '6.05', '2.45', '1.28', 'UNIT', '18.97'),
(233, 'Welding Machine POI', '2.05', '1.80', '1.82', 'UNIT', '6.72'),
(234, 'Yellow Basket SE', '6.30', '1.15', '1.43', 'UNIT', '10.36'),
(235, 'Reffer Container 10FT SE', '3.00', '2.42', '2.58', 'UNIT', '18.73'),
(236, 'Rack CO2 SE', '0.80', '1.50', '1.50', 'Rack', '1.80'),
(237, 'Diving Lars', '4.10', '2.25', '2.65', 'UNIT', '24.45'),
(238, '6M Half Height Basket', '6.06', '2.43', '1.43', 'UNIT', '21.06'),
(239, 'Tubing Seamselss', '9.60', '0.11', '0.11', 'Bundel', '0.12'),
(240, 'Tubing Seamselss', '9.60', '0.11', '0.11', 'Bundel', '0.12'),
(241, 'Cutting Skip ME', '2.20', '1.84', '1.54', 'UNIT', '6.23'),
(242, 'D080', '1.20', '1.00', '1.44', 'Palet', '1.73'),
(243, 'D110', '1.20', '1.20', '0.60', 'Palet', '0.86'),
(244, 'Drill Pipe', '12.00', '0.13', '0.13', 'Bundel', '0.20'),
(245, 'Expansion Valve', '1.00', '0.35', '0.85', 'Box', '0.30'),
(246, 'Tools PSV', '0.90', '0.30', '0.75', 'PKGS', '0.20'),
(247, 'Rack SEU', '1.02', '1.05', '1.90', 'UNIT', '2.03'),
(248, 'Diesel Brushless', '3.30', '1.40', '2.44', 'UNIT', '11.27'),
(249, 'Firex Dry Powder', '1.00', '1.00', '1.30', 'Carton', '1.30'),
(250, 'Sertification', '1.50', '0.80', '1.00', 'Carton', '1.20'),
(251, 'Air Compressor', '0.70', '0.40', '0.37', 'W/Box', '0.10'),
(252, 'Primary Box', '1.20', '1.20', '1.47', 'UNIT', '2.12'),
(253, 'Secondary Box 01', '1.60', '1.10', '2.14', 'UNIT', '3.77'),
(254, 'Second Box 02', '1.15', '1.15', '2.10', 'UNIT', '2.78');

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
  `kode_jovessel` varchar(15) DEFAULT NULL,
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
  `id_checker` int(15) DEFAULT NULL,
  `komentar` varchar(300) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_order`
--

INSERT INTO `job_order` (`id_joborder`, `kode_jovessel`, `nm_kapal`, `agen_kapal`, `tgl_masuk`, `jm_masuk`, `tgl_keluar`, `jm_keluar`, `pelabuhan_asal`, `pelabuhan_tujuan`, `id_jenis`, `nm_kegiatan`, `id_client`, `document_perintah`, `no_wo`, `booking_cargo`, `total_cargo`, `sandar_kapal`, `doc_ptw`, `doc_pjsm`, `doc_lsap`, `alat_berat`, `alat_berat2`, `alat_berat3`, `alat_berat4`, `alat_berat5`, `alat_beratsewa`, `area`, `progres_jo`, `mulai_kegiatan`, `finish_kegiatan`, `durasi`, `status_jo`, `id_checker`, `komentar`) VALUES
('JV00001', 'JV2-00001', 'PAN MARINE', 'KANAYA', '2020-01-08', '20:00:00', '0000-00-00', '00:00:00', 'PAMELOKAN', 'JAKARTA', 1, 'Offloading', 3, 'Email Tanggal 02 Januari 2020', NULL, '0', '577.54', 'JETTY KJ2 A', 'contoh-bukti-pembayaran.pdf', 'contoh-bukti-pembayaran.pdf', 'contoh-bukti-pembayaran.pdf', 'CRANE KATO R-32 70 TON', 'FORKLIFT F-31  3,5 TON', 'FORKLIFT F-32  3,5 TON', 'NULL', 'NULL', 'NULL', 'kj2', '270.20', '2020-01-17 15:07:23', '2020-01-21 15:21:48', '4 hari 0 jam 14 menit ', 6, NULL, NULL),
('JV00002', 'JV2-00002', 'KM.Sejahtera 35', 'PT.Sinar Pagoda', '2020-01-29', '03:30:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 27 Januari 2020', NULL, '0', '492.46', 'JETTY KJ2 A', 'PTW Medco (1).jpg', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F18 cap 8 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F08 cap 2,5 Ton', 'NULL', 'NULL', 'kj2', '83.30', '2020-02-06 14:07:26', '2020-09-04 15:44:26', '29 hari 1 jam 37 menit ', 4, NULL, NULL),
('JV00003', 'JV2-00003', 'KM.Sejahtera 35', 'PT.Sinar Pagoda', '2020-01-30', '08:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 27 Januari 2020', NULL, '0', '551.92', 'JETTY KJ2 A', 'PTW Medco.jpg', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F18 cap 8 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F08 cap 2,5 Ton', 'NULL', 'NULL', 'kj2', '163.50', '2020-02-12 14:45:39', '2020-02-12 14:49:17', '3 menit ', 4, NULL, NULL),
('JV00004', 'JV2-00004', 'KM.Sejahtera 35', 'PT.Sinar Pagoda', '2020-05-21', '23:30:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 18 Mei 2020', NULL, '0', '1119.02', 'JETTY KJ2 A', 'PTW Medco (1).jpg', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'Forklift F08 cap 2,5 Ton', 'NULL', 'NULL', 'kj2', '292.20', '2020-05-28 14:05:29', '2020-05-28 14:23:09', '17 menit ', 4, NULL, NULL),
('JV00005', 'JV2-00005', 'KM.Sejahtera 36', 'PT.Sinar Pagoda', '2020-06-03', '07:30:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 31 Mei 2020', NULL, '0', '926.79', 'JETTY KJ2 A', 'PTW Medco (1).jpg', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F18 cap 8 Ton', 'Forklift F15 cap 3 Ton', 'NULL', 'NULL', 'NULL', 'kj2', '273.50', '2020-07-09 15:59:36', '2020-07-09 16:02:37', '3 menit ', 6, NULL, NULL),
('JV00006', 'JV1-00001', 'GNA', 'JU', '2020-07-01', '02:01:00', '2020-07-03', '14:12:00', 'MATAK', 'TJ PRIOK', 1, 'Loading', 1, 'TEST/V1/XXX', NULL, '0', '90.00', 'JETTY KJ1', 'ISO2USB.exe', 'ISO2USB.exe', 'ISO2USB.exe', 'CRANE TADANO', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'kj1', '90.00', '2020-07-03 13:45:12', '2020-07-24 10:16:46', '20 hari 20 jam 31 menit ', 4, NULL, NULL),
('JV00007', 'JV2-00006', 'KM.Sejahtera 35', 'PT.Sinar Pagoda', '2020-06-27', '05:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 25 Juni 2020', NULL, '0', '501.38', 'JETTY KJ2 A', 'PTW Medco (1).jpg', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F08 cap 2,5 Ton', 'Forklift F15 cap 3 Ton', 'NULL', 'NULL', 'NULL', 'kj2', '228.00', '2020-07-06 08:30:17', '2020-07-06 08:35:02', '4 menit ', 6, NULL, NULL),
('JV00008', 'JV2-00007', 'KM. Sejahtera 35', 'Sinar Pagoda', '2020-07-06', '05:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email Tanggal 04 Juli 2020', NULL, '0', '286.37', 'JETTY KJ2 A', 'document_pendukung.pdf', 'document_pendukung.pdf', 'document_pendukung.pdf', 'Crane R36 cap 110 Ton', 'Forklift F08 cap 2,5 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'NULL', 'NULL', 'kj2', '146.30', '2020-07-06 13:47:21', '2020-07-06 14:20:26', '33 menit ', 6, NULL, NULL),
('JV00009', 'JV1-00002', 'KM.Sokka', 'PT.Global Trans', '2020-07-10', '06:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 2, 'Email tanggal 08 Juli 2020', NULL, '0', '406.76', 'JETTY KJ1', 'PTW Premier Oil New.pdf', 'PTW Premier Oil PJSM.pdf', 'List Personil & HDE New.xlsx', 'Crane R34 cap 60 Ton', 'Forklift F14 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'Forklift F10 cap 3,5 Ton', 'NULL', 'NULL', 'kj1', '91.39', '2020-07-10 09:21:08', '2020-07-10 11:38:21', '2 jam 17 menit ', 4, NULL, NULL),
('JV00010', 'JV2-00008', 'KM.Sejahtera 36', 'PT.Sinar Pagoda', '2020-07-10', '18:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 08 Juli 2020', NULL, '0', NULL, 'JETTY KJ2 A', '1. PTW Cold Work (Legal Size)_BAHASA_13 Sept 2019 rev. (1).pdf', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F08 cap 2,5 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'NULL', 'NULL', 'kj2', '10.00', NULL, NULL, NULL, 1, NULL, NULL),
('JV00011', 'JV2-00009', 'KM.Sejahtera 36', 'PT.Sinar Pagoda', '2020-07-10', '18:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 08 Juli 2020', NULL, '0', '942.19', 'JETTY KJ2 A', '1. PTW Cold Work (Legal Size)_BAHASA_13 Sept 2019 rev. (1).pdf', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F08 cap 2,5 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'NULL', 'NULL', 'kj2', '253.12', '2020-07-11 01:46:01', '2020-07-11 15:19:56', '13 jam 33 menit ', 6, NULL, NULL),
('JV00012', 'JV2-00010', 'KM.Sejahtera 35', 'PT.Sinar Pagoda', '2020-07-15', '14:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 14 Juli 2020', NULL, '0', '1104.33', 'JETTY KJ2 A', 'PTW Cold Work (Legal Size).pdf', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F08 cap 2,5 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'NULL', 'NULL', 'kj2', '178.13', '2020-07-15 19:43:47', '2020-07-16 15:10:34', '19 jam 26 menit ', 6, NULL, NULL),
('JV00013', 'JV2-00011', 'KM.Sejahtera 36', 'PT.Sinar Pagoda', '2020-07-20', '11:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Loading', 3, 'Email tanggal 20 Juli 2020', NULL, '0', '1328.12', 'JETTY KJ2 A', '1. PTW Cold Work (Legal Size)_BAHASA_13 Sept 2019 rev. (1).pdf', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F08 cap 2,5 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'NULL', 'NULL', 'kj2', '1195.80', '2020-07-21 19:53:15', '2020-07-29 14:36:22', '7 hari 18 jam 43 menit ', 4, NULL, NULL),
('JV00014', 'JV1-00003', 'KM. SOKKA', 'Transglobal', '2020-07-24', '07:00:00', '0000-00-00', '00:00:00', 'MATAK', 'JAKARTA', 1, 'Offloading', 2, 'EMAIL tanggal 03 Juli 2020', NULL, '0', '150.54', 'JETTY KJ1', 'document_pendukung.pdf', 'document_pendukung.pdf', 'document_pendukung.pdf', 'Crane R34 cap 60 Ton', 'Forklift F14 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'NULL', 'NULL', 'NULL', 'kj1', '12.00', '2020-07-24 10:39:22', '2020-07-24 10:44:11', '4 menit ', 4, NULL, '@Hartonos :\r\ntes'),
('JV00015', 'JV1-00004', 'KM. SOKKA', 'Transglobal', '2020-07-24', '07:00:00', '0000-00-00', '00:00:00', 'MATAK', 'JAKARTA', 1, 'Offloading', 4, 'EMAIL tanggal 03 Juli 2020', NULL, '0', '51.28', 'JETTY KJ1', 'document_pendukung.pdf', 'document_pendukung.pdf', 'document_pendukung.pdf', 'Crane R34 cap 60 Ton', 'Forklift F18 cap 8 Ton', 'Forklift F14 cap 3 Ton', 'NULL', 'NULL', 'NULL', 'kj1', '4.40', '2020-07-24 10:39:18', '2020-07-24 10:44:16', '4 menit ', 6, NULL, NULL),
('JV00016', 'JV2-00012', 'KM.Sejahtera 35', 'PT.Sinar Pagoda', '2020-08-01', '12:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 30 Juli 2020', 'WO 008/Medco/08/2020', '0', '1492.88', 'JETTY KJ2 A', '1. PTW Cold Work (Legal Size)_BAHASA_13 Sept 2019 rev. (1).pdf', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F08 cap 2,5 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'NULL', 'NULL', 'kj2', '442.40', '2020-08-01 14:29:50', '2020-08-02 02:46:00', '12 jam 16 menit ', 6, NULL, NULL),
('JV00017', 'JV1-00005', 'KM.Sokka', 'PT.Global Trans', '2020-08-06', '20:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 2, 'Email tanggal 04 Agustus 2020', 'WO No : 2775/VIII/priok/logistik/2020', '0', '432.95', 'JETTY KJ1', 'PTW Premier.pdf', 'PTW Premier (1).pdf', 'List Personil & HDE New.xlsx', 'Crane R34 cap 60 Ton', 'Forklift F10 cap 3,5 Ton', 'Forklift F14 cap 3 Ton', 'NULL', 'NULL', 'NULL', 'kj1', '111.40', '2020-08-07 08:45:46', '2020-08-07 14:05:34', '5 jam 19 menit ', 6, NULL, NULL),
('JV00018', 'JV1-00006', 'KM.Sokka', 'PT.Global Trans', '2020-08-06', '20:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 4, 'Email tanggal 04 Agustus 2020', 'WO No : 001/VIII/SE/2020', '0', '159.80', 'JETTY KJ1', 'PTW Premier.pdf', 'PTW Premier (1).pdf', 'List Personil & HDE New.xlsx', 'Crane R34 cap 60 Ton', 'Forklift F14 cap 3 Ton', 'Forklift F10 cap 3,5 Ton', 'NULL', 'NULL', 'NULL', 'kj1', '18.00', '2020-08-07 08:54:10', '2020-08-07 10:48:01', '1 jam 53 menit ', 6, NULL, NULL),
('JV00019', 'JV2-00013', 'KM.Sejahtera 36', 'PT.Sinar Pagoda', '2020-08-14', '07:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email Tanggal 13 Agustus 2020', 'WO 011/Medco/08/2020', '0', '1252.39', 'JETTY KJ2 A', 'PTW Cold Work (Legal Size).pdf', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F08 cap 2,5 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'NULL', 'NULL', 'kj2', '303.50', '2020-08-14 19:39:16', '2020-08-15 03:15:09', '7 jam 35 menit ', 6, NULL, NULL),
('JV00020', 'JV2-00014', 'KM..Sejahtera 35', 'PT.Sinar Pagoda', '2020-08-21', '01:30:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email Tanggal 19 Agustus 2020', 'WO 013/Medco/08/2020', '0', '816.38', 'JETTY KJ2 A', 'IMG-20200820-WA0340.jpg', 'IMG-20200820-WA0341.jpg', 'IMG-20200819-WA0122.jpg', 'Crane R36 cap 110 Ton', 'Forklift F08 cap 2,5 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'NULL', 'NULL', 'kj2', '187.20', '2020-08-21 01:32:55', '2020-08-21 09:53:10', '8 jam 20 menit ', 6, NULL, NULL),
('JV00021', 'JV1-00007', 'KM.Sokka', 'PT.Global Trans', '2020-08-22', '23:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 2, 'Email tanggal 19 Agustus 2020', 'WO No : 2804/VIII/priok/logistik/2020', '0', '417.64', 'JETTY KJ1', 'PTW Premier.pdf', 'PTW Premier (1).pdf', 'List Personil & HDE New.xlsx', 'Crane R34 cap 60 Ton', 'Forklift F14 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'Forklift F10 cap 3,5 Ton', 'NULL', 'NULL', 'kj1', '86.10', '2020-08-23 08:32:00', '2020-08-23 10:38:35', '2 jam 6 menit ', 6, NULL, NULL),
('JV00022', 'JV1-00008', 'KM.Sokka', 'PT.Global Trans', '2020-08-22', '23:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 4, 'Email Tanggal 19 Agustus 2020', 'WO No : 009/VIII/SE/2020', '0', '230.73', 'JETTY KJ1', 'IMG-20200822-WA0449.jpg', 'IMG-20200822-WA0448.jpg', 'IMG-20200822-WA0447.jpg', 'Crane R34 cap 60 Ton', 'Forklift F14 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'Forklift F10 cap 3,5 Ton', 'NULL', 'NULL', 'kj1', '25.06', '2020-08-23 08:32:01', '2020-08-23 10:33:52', '2 jam 1 menit ', 6, NULL, NULL),
('JV00023', 'JV1-00009', 'KM. SOKKA', 'Global Trans', '2020-09-05', '07:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 2, 'Email tanggal 02 September 202', 'WO/401/IX/2020', '0', '68.95', 'JETTY KJ1', 'ptw.pdf', 'pjsm.pdf', 'lsap.pdf', 'Crane R34 cap 60 Ton', 'Forklift F14 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'NULL', 'NULL', 'NULL', 'kj1', '19.30', '2020-09-04 11:08:49', '2020-09-04 11:26:31', '17 menit ', 6, NULL, NULL),
('JV00024', 'JV2-00015', 'KM.Sejahtera 36', 'PT.Sinar Pagoda', '2020-09-05', '23:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 03 Septmber 2020', 'WO 011/Medco/08/2020', '0', '1261.80', 'JETTY KJ2 A', 'PTW Medco (1).jpg', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'Forklift F08 cap 2,5 Ton', 'NULL', 'NULL', 'kj2', '454.65', '2020-09-05 22:07:36', '2020-09-07 07:38:21', '1 hari 9 jam 30 menit ', 5, NULL, NULL),
('JV00025', 'JV1-00010', 'KM.Sokka', 'PT.Global Trans', '2020-09-08', '07:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 2, 'Email tanggal 07 September 202', 'WO No : 2834/VIII/priok/logistik/2020', '0', '683.89', 'JETTY KJ1', 'PTW Premier.2.pdf', 'PTW Premier.1.pdf', 'List Personil & HDE New.xlsx', 'Crane R34 cap 60 Ton', 'Forklift F18 cap 8 Ton', 'Forklift F14 cap 3 Ton', 'NULL', 'NULL', 'NULL', 'kj1', '179.09', '2020-09-08 13:37:10', '2020-09-08 17:02:07', '3 jam 24 menit ', 5, NULL, NULL),
('JV00026', 'JV1-00011', 'KM.Sokka', 'PT.Global Trans', '2020-09-08', '07:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 4, 'Email tanggal 07 September 202', 'WO No : 010/VIII/SE/2020', '0', '162.19', 'JETTY KJ1', 'PTW Premier.2.pdf', 'PTW Premier.1.pdf', 'List Personil & HDE New.xlsx', 'Crane R34 cap 60 Ton', 'Forklift F18 cap 8 Ton', 'Forklift F14 cap 3 Ton', 'NULL', 'NULL', 'NULL', 'kj1', '18.43', '2020-09-08 13:37:59', '2020-09-08 16:27:47', '2 jam 49 menit ', 5, NULL, NULL),
('JV00027', 'JV2-00016', 'KM.Sejahtera 35', 'PT.Sinar Pagoda', '2020-09-10', '08:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 09 September 202', NULL, '0', '1154.97', 'JETTY KJ2 A', '1. PTW Cold Work (Legal Size)_BAHASA_13 Sept 2019 rev. (1).pdf', 'PJSM Medco.jpg', 'List Alat & Kendaraan KJ1 - 2.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F18 cap 8 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F08 cap 2,5 Ton', 'NULL', 'NULL', 'kj2', '301.83', '2020-09-10 09:05:26', '2020-09-10 16:45:06', '7 jam 39 menit ', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_ordertruck`
--

CREATE TABLE IF NOT EXISTS `job_ordertruck` (
  `id_jobordertruck` varchar(15) NOT NULL,
  `kode_lotruck` varchar(15) DEFAULT NULL,
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
  `id_checker` varchar(15) DEFAULT NULL,
  `status_jotruck` varchar(15) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_ordertruck`
--

INSERT INTO `job_ordertruck` (`id_jobordertruck`, `kode_lotruck`, `id_alatberat`, `id_client`, `area`, `total_cargo`, `created_on`, `mulai_kegiatan`, `finish_kegiatan`, `durasi`, `no_wo`, `komentar`, `id_checker`, `status_jotruck`) VALUES
('JT00001', 'JT2-00001', 8, 3, 'kj2', '50.53', '2020-07-23 14:48:44', '2020-07-23 15:48:44', '2020-07-27 12:49:17', '3 hari 21 jam 0 menit ', '12345', NULL, NULL, '5'),
('JT00002', 'JT2-00002', 8, 3, 'kj2', '89.30', '2020-07-22 10:30:51', '2020-07-22 10:49:51', '2020-07-23 13:53:46', '1 hari 3 jam 3 menit ', NULL, NULL, NULL, '3'),
('JT00003', 'JT1-00001', 5, 2, 'kj1', '3.54', '2020-07-23 14:42:25', '2020-07-23 14:49:53', '2020-07-23 15:16:55', '27 menit ', NULL, NULL, NULL, '3'),
('JT00004', 'JT1-00002', 5, 2, 'kj1', '20.74', '2020-07-27 12:51:03', '2020-08-13 10:11:01', '2020-08-13 10:12:49', '1 menit ', NULL, NULL, NULL, '3'),
('JT00005', 'JT1-00003', 18, 2, 'kj1', '7.20', '2020-08-05 11:14:30', '2020-08-05 11:17:08', '2020-08-05 11:18:07', '0 menit ', '12345', NULL, NULL, '5'),
('JT00006', 'JT1-00004', 19, 4, 'kj1', '20.00', '2020-08-05 13:42:36', '2020-08-05 13:55:43', '2020-08-05 13:57:41', '1 menit ', '12345', NULL, NULL, '5'),
('JT00007', 'JT1-00005', 20, 5, 'kj1', '3.05', '2020-08-07 13:15:29', '2020-08-07 13:20:11', '2020-08-07 13:21:46', '1 menit ', '12345', NULL, NULL, '5'),
('JT00008', 'JT1-00006', 17, 5, 'kj1', '7.00', '2020-08-07 15:15:56', '2020-08-07 15:21:13', '2020-08-07 15:23:42', '2 menit ', NULL, NULL, NULL, '3'),
('JT00009', 'JT1-00007', 18, 5, 'kj1', '4.00', '2020-08-07 15:26:22', '2020-08-07 17:48:57', '2020-08-07 17:50:47', '1 menit ', NULL, NULL, NULL, '3'),
('JT00010', 'JT1-00008', 18, 2, 'kj1', '0.40', '2020-08-10 10:02:09', '2020-09-04 15:07:37', '2020-09-04 15:07:49', '0 menit ', NULL, NULL, NULL, '3'),
('JT00011', 'JT1-00009', 18, 2, 'kj1', '0.64', '2020-08-10 10:11:43', '2020-08-10 10:15:42', '2020-08-10 10:16:06', '0 menit ', NULL, NULL, NULL, '3'),
('JT00012', 'JT1-00010', 18, 2, 'kj1', '2.80', '2020-08-10 14:42:07', '2020-08-13 14:25:30', '2020-09-04 15:07:26', '22 hari 0 jam 41 menit ', NULL, NULL, NULL, '3'),
('JT00013', 'JT1-00011', 18, 2, 'kj1', '43.20', '2020-08-10 17:00:50', '2020-08-13 10:22:43', '2020-09-04 15:06:46', '22 hari 4 jam 44 menit ', NULL, NULL, NULL, '3'),
('JT00014', 'JT1-00012', 18, 2, 'kj1', '42.33', '2020-08-10 17:05:43', '2020-08-13 10:13:52', '2020-08-13 10:14:53', '1 menit ', NULL, NULL, NULL, '3'),
('JT00015', 'JT1-00013', 18, 2, 'kj1', '15.00', '2020-08-13 10:17:13', '2020-08-28 10:29:57', '2020-09-04 15:06:30', '7 hari 4 jam 36 menit ', NULL, NULL, NULL, '3'),
('JT00016', 'JT1-00014', 19, 5, 'kj1', '7.00', '2020-08-14 09:53:01', '2020-08-14 09:56:28', '2020-08-14 10:01:49', '5 menit ', NULL, NULL, NULL, '3'),
('JT00017', 'JT1-00015', 19, 5, 'kj1', '1.00', '2020-08-14 11:24:27', '2020-08-14 11:30:50', '2020-08-14 11:31:21', '0 menit ', NULL, NULL, NULL, '3'),
('JT00018', 'JT1-00016', 19, 5, 'kj1', '7.00', '2020-08-14 13:23:35', '2020-08-14 14:15:31', '2020-08-14 14:20:56', '5 menit ', NULL, NULL, NULL, '3'),
('JT00019', 'JT1-00017', 18, 4, 'kj1', '2.63', '2020-08-18 12:43:20', '2020-08-18 13:40:27', '2020-08-18 14:51:05', '1 jam 10 menit ', NULL, NULL, NULL, '3'),
('JT00020', 'JT1-00018', 17, 5, 'kj1', '0.62', '2020-08-18 16:00:31', '2020-08-18 16:04:29', '2020-08-18 16:07:45', '3 menit ', NULL, NULL, NULL, '3'),
('JT00021', 'JT1-00019', 19, 5, 'kj1', '3.25', '2020-08-19 15:08:32', '2020-08-19 15:13:38', '2020-08-19 15:17:44', '4 menit ', NULL, NULL, NULL, '3'),
('JT00022', 'JT1-00020', 21, 4, 'kj1', '12.00', '2020-08-20 13:51:32', '2020-08-20 13:56:41', '2020-08-20 13:57:01', '0 menit ', 'WO No : 011/VIII/SE/2020', NULL, NULL, '5'),
('JT00023', 'JT1-00021', 18, 5, 'kj1', '2.00', '2020-08-24 09:46:35', '2020-09-04 14:18:33', '2020-09-04 15:06:09', '47 menit ', NULL, NULL, NULL, '3'),
('JT00024', 'JT2-00003', 8, 3, 'kj2', '5.96', '2020-09-04 14:52:20', '2020-09-04 14:56:24', '2020-09-04 15:03:34', '7 menit ', NULL, NULL, NULL, '3'),
('JT00025', 'JT1-00022', 17, 4, 'kj1', '15.10', '2020-09-08 10:13:43', '2020-09-08 10:54:58', '2020-09-08 19:16:42', '8 jam 21 menit ', NULL, NULL, NULL, '3'),
('JT00026', 'JT1-00023', 21, 2, 'kj1', NULL, '2020-09-09 09:40:11', NULL, NULL, NULL, NULL, NULL, NULL, '1'),
('JT00027', 'JT1-00024', 17, 4, 'kj1', '7.55', '2020-09-09 13:03:21', '2020-09-09 13:05:17', '2020-09-09 15:17:10', '2 jam 11 menit ', NULL, NULL, NULL, '3'),
('JT00028', 'JT1-00025', 19, 4, 'kj1', '9.09', '2020-09-10 12:56:57', '2020-09-10 13:05:39', '2020-09-10 15:08:37', '2 jam 2 menit ', NULL, NULL, NULL, '3');

-- --------------------------------------------------------

--
-- Table structure for table `log_system`
--

CREATE TABLE IF NOT EXISTS `log_system` (
`id_log` int(11) NOT NULL,
  `waktu` datetime NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=417 DEFAULT CHARSET=latin1;

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
(8, '2020-08-05 09:23:35', 'Hartono', 'logout'),
(9, '2020-08-05 09:43:21', 'Admin_opskj1', 'login'),
(10, '2020-08-05 09:43:29', 'Admin OPS KJ1', 'logout'),
(11, '2020-08-05 09:43:35', 'checker_kj1', 'login'),
(12, '2020-08-05 09:43:57', 'Checker KJ1', 'logout'),
(13, '2020-08-05 09:44:12', 'hartono', 'login'),
(14, '2020-08-05 10:01:31', 'Hartono', 'logout'),
(15, '2020-08-05 10:01:38', 'checker_kj1', 'login'),
(16, '2020-08-05 10:15:38', 'Checker KJ1', 'logout'),
(17, '2020-08-05 10:25:55', 'checker_kj1', 'login'),
(18, '2020-08-05 10:37:47', 'checker_kj1', 'login'),
(19, '2020-08-05 10:46:10', 'Checker KJ1', 'logout'),
(20, '2020-08-05 10:46:20', 'Admin_opskj1', 'login'),
(21, '2020-08-05 11:03:44', 'Admin OPS KJ1', 'logout'),
(22, '2020-08-05 11:03:56', 'checker_kj1', 'login'),
(23, '2020-08-05 11:03:56', 'checker_kj1', 'login'),
(24, '2020-08-05 11:13:30', 'Checker KJ1', 'logout'),
(25, '2020-08-05 11:14:04', 'checker_kj1', 'login'),
(26, '2020-08-05 11:19:31', 'Checker KJ1', 'logout'),
(27, '2020-08-05 11:19:39', 'Admin_opskj1', 'login'),
(28, '2020-08-05 11:27:57', 'checker_kj1', 'login'),
(29, '2020-08-05 11:31:32', 'Admin OPS KJ1', 'logout'),
(30, '2020-08-05 13:31:54', 'checker_kj1', 'login'),
(31, '2020-08-05 13:34:23', 'hartono', 'login'),
(32, '2020-08-05 13:46:34', 'checker_kj1', 'login'),
(33, '2020-08-05 15:00:18', 'Admin_opskj1', 'login'),
(34, '2020-08-05 15:06:46', 'Admin OPS KJ1', 'logout'),
(35, '2020-08-05 15:27:10', 'hartono', 'login'),
(36, '2020-08-05 15:36:31', 'hartono', 'login'),
(37, '2020-08-05 15:39:21', 'hartono', 'login'),
(38, '2020-08-05 15:51:03', 'Hartono', 'logout'),
(39, '2020-08-05 15:51:07', 'Admin_opskj1', 'login'),
(40, '2020-08-05 15:51:59', 'Admin OPS KJ1', 'logout'),
(41, '2020-08-05 15:52:03', 'hartono', 'login'),
(42, '2020-08-05 15:56:47', 'checker_kj1', 'login'),
(43, '2020-08-05 16:26:50', 'Hartono', 'logout'),
(44, '2020-08-05 16:31:49', 'Admin_opskj1', 'login'),
(45, '2020-08-05 16:31:50', 'Admin_opskj1', 'login'),
(46, '2020-08-05 16:38:24', 'Admin OPS KJ1', 'logout'),
(47, '2020-08-05 16:41:37', 'Hartono', 'logout'),
(48, '2020-08-05 16:41:42', 'Admin_opskj1', 'login'),
(49, '2020-08-05 16:41:56', 'Admin OPS KJ1', 'logout'),
(50, '2020-08-05 16:42:01', 'checker_kj1', 'login'),
(51, '2020-08-05 16:42:30', 'Checker KJ1', 'logout'),
(52, '2020-08-05 16:42:36', 'hartono', 'login'),
(53, '2020-08-05 16:50:52', 'Hartono', 'logout'),
(54, '2020-08-05 16:52:08', 'checker_kj1', 'login'),
(55, '2020-08-05 16:52:22', 'Checker KJ1', 'logout'),
(56, '2020-08-05 17:14:42', 'Admin_opskj1', 'login'),
(57, '2020-08-06 10:17:19', 'checker_kj1', 'login'),
(58, '2020-08-06 10:17:19', 'checker_kj1', 'login'),
(59, '2020-08-06 10:17:36', 'checker_kj1', 'login'),
(60, '2020-08-06 10:17:49', 'checker_kj1', 'login'),
(61, '2020-08-06 13:54:25', 'hartono', 'login'),
(62, '2020-08-06 13:58:06', 'Hartono', 'logout'),
(63, '2020-08-06 13:58:19', 'Admin_opskj1', 'login'),
(64, '2020-08-06 14:00:50', 'Admin OPS KJ1', 'logout'),
(65, '2020-08-06 14:39:43', 'Admin_opskj1', 'login'),
(66, '2020-08-06 14:39:50', 'Admin OPS KJ1', 'logout'),
(67, '2020-08-06 14:39:57', 'hartono', 'login'),
(68, '2020-08-06 14:43:20', 'Hartono', 'logout'),
(69, '2020-08-06 16:04:22', 'Admin_opskj1', 'login'),
(70, '2020-08-06 18:15:34', 'Admin OPS KJ1', 'logout'),
(71, '2020-08-06 20:08:47', 'checker_kj1', 'login'),
(72, '2020-08-07 05:39:36', 'Admin_opskj1', 'login'),
(73, '2020-08-07 05:42:21', 'Admin OPS KJ1', 'logout'),
(74, '2020-08-07 08:10:39', 'checker_kj1', 'login'),
(75, '2020-08-07 08:53:32', 'checker_kj1', 'login'),
(76, '2020-08-07 09:38:50', 'Admin_opskj1', 'login'),
(77, '2020-08-07 10:26:59', 'Admin OPS KJ1', 'logout'),
(78, '2020-08-07 10:35:23', 'checker_kj1', 'login'),
(79, '2020-08-07 11:06:42', 'Admin_opskj1', 'login'),
(80, '2020-08-07 11:09:31', 'Admin OPS KJ1', 'logout'),
(81, '2020-08-07 12:01:16', 'Admin_opskj1', 'login'),
(82, '2020-08-07 12:02:06', 'Admin OPS KJ1', 'logout'),
(83, '2020-08-07 13:14:46', 'checker_kj1', 'login'),
(84, '2020-08-07 13:31:35', 'checker_kj1', 'login'),
(85, '2020-08-07 13:38:34', 'checker_kj1', 'login'),
(86, '2020-08-07 15:15:18', 'checker_kj1', 'login'),
(87, '2020-08-07 16:06:24', 'Admin_opskj1', 'login'),
(88, '2020-08-07 16:06:46', 'Admin OPS KJ1', 'logout'),
(89, '2020-08-07 17:48:41', 'checker_kj1', 'login'),
(90, '2020-08-07 19:53:09', 'Admin_opskj1', 'login'),
(91, '2020-08-07 19:54:27', 'Admin OPS KJ1', 'logout'),
(92, '2020-08-07 19:55:24', 'checker_kj1', 'login'),
(93, '2020-08-07 19:56:16', 'Checker KJ1', 'logout'),
(94, '2020-08-07 19:57:03', 'Admin_opskj1', 'login'),
(95, '2020-08-07 19:57:56', 'Admin OPS KJ1', 'logout'),
(96, '2020-08-08 20:58:15', 'Admin_opskj1', 'login'),
(97, '2020-08-10 09:31:35', 'Admin_opskj1', 'login'),
(98, '2020-08-10 09:31:35', 'Admin_opskj1', 'login'),
(99, '2020-08-10 09:59:57', 'checker_kj1', 'login'),
(100, '2020-08-10 10:11:12', 'Admin OPS KJ1', 'logout'),
(101, '2020-08-10 10:11:21', 'checker_kj1', 'login'),
(102, '2020-08-10 10:16:18', 'Checker KJ1', 'logout'),
(103, '2020-08-10 10:16:22', 'hartono', 'login'),
(104, '2020-08-10 10:16:26', 'Admin_opskj1', 'login'),
(105, '2020-08-10 10:18:04', 'Admin OPS KJ1', 'logout'),
(106, '2020-08-10 10:30:56', 'Hartono', 'logout'),
(107, '2020-08-10 12:36:20', 'hartono', 'login'),
(108, '2020-08-10 12:40:59', 'Hartono', 'logout'),
(109, '2020-08-10 12:41:47', 'Admin_opskj1', 'login'),
(110, '2020-08-10 12:44:40', 'hartono', 'login'),
(111, '2020-08-10 12:57:48', 'Admin_opskj1', 'login'),
(112, '2020-08-10 12:57:59', 'Admin_opskj1', 'login'),
(113, '2020-08-10 13:13:25', 'Admin OPS KJ1', 'logout'),
(114, '2020-08-10 13:33:43', 'hartono', 'login'),
(115, '2020-08-10 14:13:31', 'Admin_opskj1', 'login'),
(116, '2020-08-10 14:14:42', 'Admin OPS KJ1', 'logout'),
(117, '2020-08-10 14:41:08', 'checker_kj1', 'login'),
(118, '2020-08-10 16:55:00', 'hartono', 'login'),
(119, '2020-08-10 16:56:58', 'Hartono', 'logout'),
(120, '2020-08-10 19:26:55', 'hartono', 'login'),
(121, '2020-08-11 14:47:31', 'Admin_opskj1', 'login'),
(122, '2020-08-13 09:40:56', 'hartono', 'login'),
(123, '2020-08-13 09:47:57', 'Hartono', 'logout'),
(124, '2020-08-13 09:48:39', 'Admin_opskj1', 'login'),
(125, '2020-08-13 10:08:23', 'Admin OPS KJ1', 'logout'),
(126, '2020-08-13 10:08:50', 'checker_kj1', 'login'),
(127, '2020-08-13 10:26:54', 'Checker KJ1', 'logout'),
(128, '2020-08-13 10:27:01', 'Admin_opskj1', 'login'),
(129, '2020-08-13 13:04:31', 'Admin OPS KJ1', 'logout'),
(130, '2020-08-13 13:04:37', 'hartono', 'login'),
(131, '2020-08-13 14:24:44', 'Hartono', 'logout'),
(132, '2020-08-13 14:25:03', 'checker_kj1', 'login'),
(133, '2020-08-13 14:31:58', 'hartono', 'login'),
(134, '2020-08-13 15:08:33', 'Admin_opskj1', 'login'),
(135, '2020-08-13 16:31:21', 'Admin OPS KJ1', 'logout'),
(136, '2020-08-13 17:09:08', 'Admin_opskj1', 'login'),
(137, '2020-08-13 18:10:22', 'Admin OPS KJ1', 'logout'),
(138, '2020-08-13 18:23:03', 'hartono', 'login'),
(139, '2020-08-13 18:27:28', 'Hartono', 'logout'),
(140, '2020-08-13 22:05:09', 'Admin_opskj1', 'login'),
(141, '2020-08-13 23:02:06', 'Admin OPS KJ1', 'logout'),
(142, '2020-08-13 23:49:16', 'Admin_opskj1', 'login'),
(143, '2020-08-14 00:00:23', 'Admin OPS KJ1', 'logout'),
(144, '2020-08-14 06:50:36', 'checker_kj1', 'login'),
(145, '2020-08-14 07:59:07', 'Admin_opskj1', 'login'),
(146, '2020-08-14 08:40:18', 'Admin OPS KJ1', 'logout'),
(147, '2020-08-14 09:52:15', 'checker_kj1', 'login'),
(148, '2020-08-14 11:20:31', 'checker_kj1', 'login'),
(149, '2020-08-14 11:21:46', 'checker_kj1', 'login'),
(150, '2020-08-14 13:22:48', 'checker_kj1', 'login'),
(151, '2020-08-14 14:12:05', 'checker_kj1', 'login'),
(152, '2020-08-14 19:38:55', 'checker_kj1', 'login'),
(153, '2020-08-15 01:19:21', 'checker_kj1', 'login'),
(154, '2020-08-15 06:09:27', 'Admin_opskj1', 'login'),
(155, '2020-08-15 06:18:23', 'Admin OPS KJ1', 'logout'),
(156, '2020-08-15 11:24:16', 'Admin_opskj1', 'login'),
(157, '2020-08-15 14:04:15', 'Admin OPS KJ1', 'logout'),
(158, '2020-08-15 14:11:56', 'Admin_opskj1', 'login'),
(159, '2020-08-17 16:07:28', 'checker_kj1', 'login'),
(160, '2020-08-18 09:08:37', 'Admin_opskj1', 'login'),
(161, '2020-08-18 09:10:58', 'Admin OPS KJ1', 'logout'),
(162, '2020-08-18 12:42:55', 'checker_kj1', 'login'),
(163, '2020-08-18 15:59:52', 'checker_kj1', 'login'),
(164, '2020-08-19 08:58:46', 'Admin_opskj1', 'login'),
(165, '2020-08-19 08:58:46', 'Admin_opskj1', 'login'),
(166, '2020-08-19 10:24:27', 'Admin_opskj1', 'login'),
(167, '2020-08-19 10:25:53', 'Admin OPS KJ1', 'logout'),
(168, '2020-08-19 15:08:10', 'checker_kj1', 'login'),
(169, '2020-08-19 15:39:07', 'Admin_opskj1', 'login'),
(170, '2020-08-19 15:45:18', 'Admin_opskj1', 'login'),
(171, '2020-08-19 15:50:54', 'Admin OPS KJ1', 'logout'),
(172, '2020-08-19 15:51:03', 'checker_kj1', 'login'),
(173, '2020-08-19 16:18:50', 'Checker KJ1', 'logout'),
(174, '2020-08-19 17:53:49', 'Admin OPS KJ1', 'logout'),
(175, '2020-08-20 12:36:59', 'Admin_opskj1', 'login'),
(176, '2020-08-20 12:54:24', 'checker_kj1', 'login'),
(177, '2020-08-20 13:51:08', 'checker_kj1', 'login'),
(178, '2020-08-20 15:19:35', 'Admin OPS KJ1', 'logout'),
(179, '2020-08-20 15:49:39', 'Admin_opskj1', 'login'),
(180, '2020-08-20 16:25:07', 'Admin OPS KJ1', 'logout'),
(181, '2020-08-21 01:32:39', 'checker_kj1', 'login'),
(182, '2020-08-21 04:45:58', 'Admin_opskj1', 'login'),
(183, '2020-08-21 04:47:32', 'Admin OPS KJ1', 'logout'),
(184, '2020-08-21 07:53:00', 'checker_kj1', 'login'),
(185, '2020-08-21 09:24:38', 'Admin_opskj1', 'login'),
(186, '2020-08-21 09:26:12', 'Admin OPS KJ1', 'logout'),
(187, '2020-08-21 12:46:34', 'hartono', 'login'),
(188, '2020-08-21 12:49:15', 'Hartono', 'logout'),
(189, '2020-08-21 13:19:25', 'checker_kj1', 'login'),
(190, '2020-08-21 17:38:13', 'hartono', 'login'),
(191, '2020-08-21 19:09:17', 'Hartono', 'logout'),
(192, '2020-08-22 10:23:01', 'Admin_opskj1', 'login'),
(193, '2020-08-22 11:30:00', 'Admin OPS KJ1', 'logout'),
(194, '2020-08-22 12:38:34', 'Admin_opskj1', 'login'),
(195, '2020-08-22 13:13:36', 'Admin OPS KJ1', 'logout'),
(196, '2020-08-22 17:18:52', 'Admin_opskj1', 'login'),
(197, '2020-08-22 17:22:44', 'Admin OPS KJ1', 'logout'),
(198, '2020-08-22 18:03:30', 'Admin_opskj1', 'login'),
(199, '2020-08-22 18:25:51', 'Admin OPS KJ1', 'logout'),
(200, '2020-08-22 20:14:41', 'checker_kj1', 'login'),
(201, '2020-08-22 20:19:42', 'Admin_opskj1', 'login'),
(202, '2020-08-22 21:26:06', 'Admin OPS KJ1', 'logout'),
(203, '2020-08-23 07:05:58', 'checker_kj1', 'login'),
(204, '2020-08-23 07:30:50', 'checker_kj1', 'login'),
(205, '2020-08-23 07:49:18', 'checker_kj1', 'login'),
(206, '2020-08-23 09:07:04', 'Admin_opskj1', 'login'),
(207, '2020-08-23 09:08:01', 'Admin OPS KJ1', 'logout'),
(208, '2020-08-23 11:17:43', 'Admin_opskj1', 'login'),
(209, '2020-08-24 09:46:01', 'checker_kj1', 'login'),
(210, '2020-08-24 15:16:15', 'hartono', 'login'),
(211, '2020-08-24 15:20:24', 'Hartono', 'logout'),
(212, '2020-08-26 10:23:50', 'Admin_opskj1', 'login'),
(213, '2020-08-26 10:24:55', 'Admin OPS KJ1', 'logout'),
(214, '2020-08-27 10:04:45', 'Admin_opskj1', 'login'),
(215, '2020-08-27 11:01:29', 'Admin_opskj1', 'login'),
(216, '2020-08-27 11:03:04', 'Admin OPS KJ1', 'logout'),
(217, '2020-08-27 11:03:10', 'checker_kj1', 'login'),
(218, '2020-08-27 11:10:56', 'Checker KJ1', 'logout'),
(219, '2020-08-27 11:35:55', 'Admin OPS KJ1', 'logout'),
(220, '2020-08-28 10:27:09', 'checker_kj1', 'login'),
(221, '2020-08-28 10:30:50', 'Checker KJ1', 'logout'),
(222, '2020-08-28 10:30:56', 'Admin_opskj1', 'login'),
(223, '2020-08-28 10:47:07', 'Admin OPS KJ1', 'logout'),
(224, '2020-08-28 13:59:15', 'Admin_opskj1', 'login'),
(225, '2020-08-28 15:33:57', 'hartono', 'login'),
(226, '2020-08-30 22:55:50', 'Admin_opskj1', 'login'),
(227, '2020-08-31 13:23:31', 'Admin OPS KJ1', 'logout'),
(228, '2020-08-31 13:23:41', 'checker_kj1', 'login'),
(229, '2020-08-31 13:30:18', 'Checker KJ1', 'logout'),
(230, '2020-08-31 13:35:21', 'checker_kj1', 'login'),
(231, '2020-08-31 13:37:40', 'Checker KJ1', 'logout'),
(232, '2020-08-31 13:48:17', 'Admin_opskj1', 'login'),
(233, '2020-09-01 09:41:01', 'Admin_opskj1', 'login'),
(234, '2020-09-01 14:04:46', 'checker_kj1', 'login'),
(235, '2020-09-02 10:32:50', 'hartono', 'login'),
(236, '2020-09-02 10:50:09', 'hartono', 'login'),
(237, '2020-09-02 10:50:47', 'Hartono', 'logout'),
(238, '2020-09-02 10:50:54', 'Admin_opskj1', 'login'),
(239, '2020-09-02 10:52:23', 'Admin OPS KJ1', 'logout'),
(240, '2020-09-02 10:52:36', 'hartono', 'login'),
(241, '2020-09-02 11:14:10', 'Admin_opskj1', 'login'),
(242, '2020-09-02 11:14:10', 'Admin_opskj1', 'login'),
(243, '2020-09-02 15:47:00', 'Admin_opskj1', 'login'),
(244, '2020-09-02 15:47:11', 'Admin OPS KJ1', 'logout'),
(245, '2020-09-02 15:47:21', 'hartono', 'login'),
(246, '2020-09-02 15:48:55', 'Hartono', 'logout'),
(247, '2020-09-02 17:20:57', 'Admin OPS KJ1', 'logout'),
(248, '2020-09-03 12:29:30', 'Admin_opskj1', 'login'),
(249, '2020-09-03 12:34:06', 'Admin OPS KJ1', 'logout'),
(250, '2020-09-03 12:34:18', 'hartono', 'login'),
(251, '2020-09-03 12:36:11', 'Admin_opskj1', 'login'),
(252, '2020-09-03 12:36:34', 'Admin OPS KJ1', 'logout'),
(253, '2020-09-03 12:43:19', 'Hartono', 'logout'),
(254, '2020-09-03 13:03:13', 'hartono', 'login'),
(255, '2020-09-04 09:59:52', 'checker_kj1', 'login'),
(256, '2020-09-04 10:00:17', 'Admin_opskj1', 'login'),
(257, '2020-09-04 10:01:18', 'hartono', 'login'),
(258, '2020-09-04 10:07:38', 'Admin_opskj1', 'login'),
(259, '2020-09-04 10:34:47', 'Admin OPS KJ1', 'logout'),
(260, '2020-09-04 10:34:56', 'Admin_opskj1', 'login'),
(261, '2020-09-04 11:03:39', 'Checker KJ1', 'logout'),
(262, '2020-09-04 11:03:47', 'checker_kj1', 'login'),
(263, '2020-09-04 11:04:33', 'hartono', 'login'),
(264, '2020-09-04 11:07:52', 'Admin OPS KJ1', 'logout'),
(265, '2020-09-04 11:08:03', 'checker_kj1', 'login'),
(266, '2020-09-04 11:17:47', 'Checker KJ1', 'logout'),
(267, '2020-09-04 11:18:51', 'checker_kj1', 'login'),
(268, '2020-09-04 11:22:37', 'Checker KJ1', 'logout'),
(269, '2020-09-04 11:22:45', 'hartono', 'login'),
(270, '2020-09-04 11:24:24', 'Hartono', 'logout'),
(271, '2020-09-04 11:24:30', 'Admin_opskj1', 'login'),
(272, '2020-09-04 11:24:41', 'Admin OPS KJ1', 'logout'),
(273, '2020-09-04 11:24:49', 'hartono', 'login'),
(274, '2020-09-04 11:24:53', 'Checker KJ1', 'logout'),
(275, '2020-09-04 11:25:20', 'Admin OPS KJ1', 'logout'),
(276, '2020-09-04 11:25:29', 'Hartono', 'logout'),
(277, '2020-09-04 11:25:36', 'Admin_opskj1', 'login'),
(278, '2020-09-04 11:25:46', 'Admin_opskj1', 'login'),
(279, '2020-09-04 11:26:13', 'Admin OPS KJ1', 'logout'),
(280, '2020-09-04 11:26:21', 'checker_kj1', 'login'),
(281, '2020-09-04 11:26:43', 'Checker KJ1', 'logout'),
(282, '2020-09-04 11:27:17', 'Admin_opskj1', 'login'),
(283, '2020-09-04 11:28:16', 'Admin OPS KJ1', 'logout'),
(284, '2020-09-04 11:28:27', 'Admin_opskj1', 'login'),
(285, '2020-09-04 11:31:15', 'Admin OPS KJ1', 'logout'),
(286, '2020-09-04 11:31:21', 'hartono', 'login'),
(287, '2020-09-04 11:31:27', 'hartono', 'login'),
(288, '2020-09-04 11:36:43', 'hartono', 'login'),
(289, '2020-09-04 11:40:53', 'Admin OPS KJ1', 'logout'),
(290, '2020-09-04 11:48:16', 'checker_kj1', 'login'),
(291, '2020-09-04 13:11:21', 'Hartono', 'logout'),
(292, '2020-09-04 13:11:33', 'checker_kj1', 'login'),
(293, '2020-09-04 13:25:20', 'Admin_opskj1', 'login'),
(294, '2020-09-04 13:26:28', 'Checker KJ1', 'logout'),
(295, '2020-09-04 13:26:33', 'Admin_opskj1', 'login'),
(296, '2020-09-04 14:08:41', 'Admin OPS KJ1', 'logout'),
(297, '2020-09-04 14:12:44', 'checker_kj1', 'login'),
(298, '2020-09-04 14:12:57', 'checker_kj1', 'login'),
(299, '2020-09-04 14:21:57', 'Checker KJ1', 'logout'),
(300, '2020-09-04 14:43:59', 'Hartono', 'logout'),
(301, '2020-09-04 14:44:15', 'checker_kj1', 'login'),
(302, '2020-09-04 16:16:51', 'Admin_opskj1', 'login'),
(303, '2020-09-04 18:28:29', 'Admin OPS KJ1', 'logout'),
(304, '2020-09-04 19:02:25', 'checker_kj1', 'login'),
(305, '2020-09-04 22:15:16', 'Admin_opskj1', 'login'),
(306, '2020-09-05 00:27:11', 'Admin OPS KJ1', 'logout'),
(307, '2020-09-05 10:33:40', 'checker_kj1', 'login'),
(308, '2020-09-05 21:46:30', 'checker_kj1', 'login'),
(309, '2020-09-05 22:19:42', 'checker_kj1', 'login'),
(310, '2020-09-05 22:32:01', 'checker_kj1', 'login'),
(311, '2020-09-05 22:50:25', 'checker_kj1', 'login'),
(312, '2020-09-05 23:11:19', 'Admin_opskj1', 'login'),
(313, '2020-09-05 23:12:12', 'Admin OPS KJ1', 'logout'),
(314, '2020-09-06 01:14:17', 'checker_kj1', 'login'),
(315, '2020-09-06 02:18:48', 'Admin_opskj1', 'login'),
(316, '2020-09-06 02:20:12', 'Admin OPS KJ1', 'logout'),
(317, '2020-09-06 05:04:37', 'checker_kj1', 'login'),
(318, '2020-09-06 05:04:49', 'Admin_opskj1', 'login'),
(319, '2020-09-06 05:06:28', 'Admin OPS KJ1', 'logout'),
(320, '2020-09-06 05:08:46', 'Admin_opskj1', 'login'),
(321, '2020-09-06 05:09:27', 'Admin OPS KJ1', 'logout'),
(322, '2020-09-06 09:09:34', 'checker_kj1', 'login'),
(323, '2020-09-06 10:03:45', 'Admin_opskj1', 'login'),
(324, '2020-09-06 13:41:38', 'checker_kj1', 'login'),
(325, '2020-09-06 14:45:13', 'Admin_opskj1', 'login'),
(326, '2020-09-07 07:26:36', 'Admin_opskj1', 'login'),
(327, '2020-09-07 07:34:09', 'Admin_opskj1', 'login'),
(328, '2020-09-07 07:37:48', 'checker_kj1', 'login'),
(329, '2020-09-07 07:37:58', 'checker_kj1', 'login'),
(330, '2020-09-07 07:38:53', 'Checker KJ1', 'logout'),
(331, '2020-09-07 11:18:52', 'Admin_opskj1', 'login'),
(332, '2020-09-07 13:49:14', 'Admin_opskj1', 'login'),
(333, '2020-09-07 16:49:10', 'Admin OPS KJ1', 'logout'),
(334, '2020-09-08 06:28:02', 'checker_kj1', 'login'),
(335, '2020-09-08 07:26:43', 'checker_kj1', 'login'),
(336, '2020-09-08 10:05:06', 'hartono', 'login'),
(337, '2020-09-08 10:13:19', 'checker_kj1', 'login'),
(338, '2020-09-08 10:15:50', 'checker_kj1', 'login'),
(339, '2020-09-08 10:18:24', 'Admin_opskj1', 'login'),
(340, '2020-09-08 10:18:53', 'Admin OPS KJ1', 'logout'),
(341, '2020-09-08 10:19:12', 'checker_kj1', 'login'),
(342, '2020-09-08 10:20:13', 'Admin_opskj1', 'login'),
(343, '2020-09-08 10:22:24', 'Admin OPS KJ1', 'logout'),
(344, '2020-09-08 10:22:36', 'checker_kj1', 'login'),
(345, '2020-09-08 10:23:10', 'hartono', 'login'),
(346, '2020-09-08 10:30:03', 'Hartono', 'logout'),
(347, '2020-09-08 10:30:47', 'checker_kj1', 'login'),
(348, '2020-09-08 10:51:28', 'checker_kj1', 'login'),
(349, '2020-09-08 10:53:18', 'checker_kj1', 'login'),
(350, '2020-09-08 10:58:33', 'Checker KJ1', 'logout'),
(351, '2020-09-08 11:08:29', 'checker_kj1', 'login'),
(352, '2020-09-08 13:36:58', 'checker_kj1', 'login'),
(353, '2020-09-08 13:37:49', 'checker_kj1', 'login'),
(354, '2020-09-08 13:59:37', 'Checker KJ1', 'logout'),
(355, '2020-09-08 14:00:05', 'checker_kj4', 'login'),
(356, '2020-09-08 14:19:29', 'Admin_opskj1', 'login'),
(357, '2020-09-08 14:20:33', 'Admin_opskj1', 'login'),
(358, '2020-09-08 14:21:16', 'Admin OPS KJ1', 'logout'),
(359, '2020-09-08 14:56:30', 'checker_kj4', 'login'),
(360, '2020-09-08 14:58:15', 'Checker KJ4', 'logout'),
(361, '2020-09-08 15:10:44', 'Checker KJ4', 'logout'),
(362, '2020-09-08 15:16:29', 'checker_kj1', 'login'),
(363, '2020-09-08 15:57:29', 'checker_kj1', 'login'),
(364, '2020-09-08 16:02:56', 'Admin_opskj1', 'login'),
(365, '2020-09-08 16:03:28', 'Admin OPS KJ1', 'logout'),
(366, '2020-09-08 17:03:05', 'Admin OPS KJ1', 'logout'),
(367, '2020-09-08 18:25:28', 'Admin_opskj1', 'login'),
(368, '2020-09-08 18:25:28', 'Admin_opskj1', 'login'),
(369, '2020-09-08 18:32:54', 'Admin OPS KJ1', 'logout'),
(370, '2020-09-09 04:13:09', 'Admin_opskj1', 'login'),
(371, '2020-09-09 08:12:44', 'Admin_opskj1', 'login'),
(372, '2020-09-09 09:24:11', 'Admin_opskj1', 'login'),
(373, '2020-09-09 09:39:40', 'checker_kj1', 'login'),
(374, '2020-09-09 11:32:29', 'Admin_opskj1', 'login'),
(375, '2020-09-09 11:33:38', 'Admin OPS KJ1', 'logout'),
(376, '2020-09-09 11:46:12', 'Admin_opskj1', 'login'),
(377, '2020-09-09 11:46:35', 'Admin OPS KJ1', 'logout'),
(378, '2020-09-09 11:46:47', 'hartono', 'login'),
(379, '2020-09-09 13:03:01', 'checker_kj1', 'login'),
(380, '2020-09-09 13:11:17', 'Hartono', 'logout'),
(381, '2020-09-09 15:16:48', 'checker_kj1', 'login'),
(382, '2020-09-09 17:43:35', 'Admin OPS KJ1', 'logout'),
(383, '2020-09-10 08:46:02', 'checker_kj1', 'login'),
(384, '2020-09-10 09:14:14', 'checker_kj1', 'login'),
(385, '2020-09-10 09:15:58', 'checker_kj1', 'login'),
(386, '2020-09-10 09:23:31', 'checker_kj1', 'login'),
(387, '2020-09-10 09:25:35', 'Admin_opskj1', 'login'),
(388, '2020-09-10 09:25:59', 'Admin OPS KJ1', 'logout'),
(389, '2020-09-10 09:27:55', 'checker_kj1', 'login'),
(390, '2020-09-10 09:40:23', 'Admin_opskj1', 'login'),
(391, '2020-09-10 09:43:48', 'Admin OPS KJ1', 'logout'),
(392, '2020-09-10 11:49:16', 'Admin_opskj1', 'login'),
(393, '2020-09-10 11:56:41', 'Admin_opskj1', 'login'),
(394, '2020-09-10 12:56:20', 'checker_kj1', 'login'),
(395, '2020-09-10 13:07:39', 'Admin OPS KJ1', 'logout'),
(396, '2020-09-10 13:07:46', 'Admin_opskj1', 'login'),
(397, '2020-09-10 13:09:50', 'Admin OPS KJ1', 'logout'),
(398, '2020-09-10 13:38:12', 'checker_kj1', 'login'),
(399, '2020-09-10 13:55:29', 'checker_kj1', 'login'),
(400, '2020-09-10 14:57:50', 'Admin_opskj1', 'login'),
(401, '2020-09-10 15:08:25', 'checker_kj1', 'login'),
(402, '2020-09-10 15:56:07', 'Admin_opskj1', 'login'),
(403, '2020-09-10 15:59:21', 'Admin OPS KJ1', 'logout'),
(404, '2020-09-10 17:34:14', 'Admin_opskj1', 'login'),
(405, '2020-09-10 18:04:40', 'Admin OPS KJ1', 'logout'),
(406, '2020-09-10 18:04:47', 'Admin_opskj1', 'login'),
(407, '2020-09-10 18:39:57', 'Admin_opskj1', 'login'),
(408, '2020-09-10 18:47:03', 'Admin OPS KJ1', 'logout'),
(409, '2020-09-10 18:47:09', 'checker_kj1', 'login'),
(410, '2020-09-11 08:22:46', 'Admin_opskj4', 'login'),
(411, '2020-09-11 08:22:54', 'Admin OPS KJ4', 'logout'),
(412, '2020-09-11 08:22:59', 'checker_kj1', 'login'),
(413, '2020-09-11 08:32:01', 'Checker KJ1', 'logout'),
(414, '2020-09-11 08:32:06', 'hartono', 'login'),
(415, '2020-09-11 08:38:02', 'Hartono', 'logout'),
(416, '2020-09-11 08:38:56', 'Admin_opskj1', 'login');

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
('TR00002', 'TRAILER 40 FT B.9239 IL', 'FORKLIFT F-31 3,5 TON', 4, NULL, 'kj1', '10.37', '2020-07-30 09:37:45', '2020-09-04 15:09:19', '2020-09-04 15:09:35', '0 menit ', NULL, NULL, '3');

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
  `kode_stacking` varchar(15) DEFAULT NULL,
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
  `id_checker` varchar(15) DEFAULT NULL,
  `status_stacking` varchar(15) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stacking`
--

INSERT INTO `stacking` (`id_stacking`, `kode_stacking`, `id_alatberat`, `id_client`, `nm_kegiatan`, `area`, `total_cargo`, `created_on`, `mulai_kegiatan`, `finish_kegiatan`, `durasi`, `no_wo`, `komentar`, `id_checker`, `status_stacking`) VALUES
('ST00001', NULL, 8, 3, 'Stacking', 'kj1', '19.02', '2020-07-28 11:29:38', '2020-07-28 11:57:10', '2020-07-28 13:55:12', '1 jam 58 menit ', '99999', NULL, NULL, '5'),
('ST00002', NULL, 6, 4, 'Stacking', 'kj1', '5.19', '2020-07-28 14:48:43', '2020-07-28 14:51:14', '2020-09-04 15:08:59', '7 hari 0 jam 17 menit ', NULL, NULL, NULL, '3'),
('ST00003', NULL, 19, 4, 'Stacking', 'kj1', '5.00', '2020-08-06 10:21:58', '2020-08-06 10:25:54', '2020-08-06 10:28:34', '2 menit ', NULL, NULL, NULL, '3'),
('ST00004', NULL, 21, 2, 'Stacking', 'kj1', NULL, '2020-09-09 10:13:42', NULL, NULL, NULL, NULL, NULL, NULL, '1'),
('ST00005', NULL, 19, 2, 'Stacking', 'kj1', NULL, '2020-09-09 14:26:27', NULL, NULL, NULL, NULL, NULL, NULL, '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

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
(35, 'JV00016', '2020-08-01 23:30:15', '2020-08-02 01:31:37', 'Istirahat malam'),
(36, 'JV00017', '2020-08-07 10:57:58', '2020-08-07 13:31:56', 'Breake sholat jumat dan makan siang'),
(37, 'JV00019', '2020-08-14 20:25:02', '2020-08-14 20:55:02', 'Proses buka palka & buka lasing in hold'),
(38, 'JV00019', '2020-08-14 23:26:42', '2020-08-15 01:19:44', 'Istirahat,,dinner'),
(39, 'JV00020', '2020-08-21 01:42:27', '2020-08-21 02:19:36', 'Proses buka lasing & buka palka in hold'),
(40, 'JV00020', '2020-08-21 04:26:17', '2020-08-21 08:03:55', 'Istirahat,,lanjut besok pagi'),
(41, 'JV00023', '2020-09-04 11:20:29', '2020-09-04 11:21:38', 'Istirahat'),
(42, 'JV00002', '2020-09-04 11:48:29', '2020-09-04 11:49:02', 'Stop'),
(43, 'JV00002', '2020-09-04 13:23:15', '2020-09-04 13:23:20', 'Test Istirahat'),
(44, 'JV00002', '2020-09-04 13:23:28', '2020-09-04 15:09:56', 'Istirahat'),
(45, 'JV00024', '2020-09-05 22:42:00', '2020-09-06 01:21:27', 'Buka palka dan tali lassing'),
(46, 'JV00024', '2020-09-06 04:01:30', '2020-09-06 09:09:48', 'Berhenti, sholat subuh, istirahat'),
(47, 'JV00024', '2020-09-06 11:18:19', '2020-09-06 13:45:11', 'Breake makan siang'),
(48, 'JV00026', '2020-09-08 13:57:30', '2020-09-08 14:13:50', 'Open palka'),
(49, 'JV00025', '2020-09-08 13:57:44', NULL, 'Buka tutup palka ran tali lassing'),
(50, 'JV00025', '2020-09-08 13:57:48', '2020-09-08 14:11:23', 'Buka tutup palka ran tali lassing'),
(51, 'JV00027', '2020-09-10 09:38:17', '2020-09-10 09:38:51', 'Stop, buka palka dan tali lassing'),
(52, 'JV00027', '2020-09-10 09:58:03', '2020-09-10 10:31:11', 'Buka palka dan tali lassing'),
(53, 'JV00027', '2020-09-10 11:41:54', '2020-09-10 13:38:59', 'Breake makan siang');

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timeline_jobordertruck`
--

INSERT INTO `timeline_jobordertruck` (`id_timeline`, `id_jobordertruck`, `waktu_stop`, `waktu_mulaikembali`, `keterangan_jeda`) VALUES
(1, 'JT00013', '2020-08-13 10:23:36', '2020-08-13 10:25:25', 'istirahat'),
(2, 'JT00013', '2020-08-13 10:26:20', NULL, 'menunggu trip 2'),
(3, 'JT00013', '2020-08-13 10:26:22', '2020-09-04 15:06:42', 'menunggu trip 2'),
(4, 'JT00012', '2020-08-13 14:27:21', '2020-08-13 14:27:47', 'menunggu vendor selanjutnya'),
(5, 'JT00012', '2020-08-13 14:30:12', '2020-08-13 14:30:23', 'hujan'),
(6, 'JT00019', '2020-08-18 13:53:04', '2020-08-18 14:51:01', 'Menunggu cargo berikutnya'),
(7, 'JT00015', '2020-08-28 10:30:47', '2020-09-04 15:06:16', 'Istirahat'),
(8, 'JT00012', '2020-09-04 11:51:19', '2020-09-04 15:06:52', 'Istirahat'),
(9, 'JT00024', '2020-09-04 14:58:22', '2020-09-04 14:59:31', 'ban kempes'),
(10, 'JT00025', '2020-09-08 11:15:24', '2020-09-08 19:16:37', 'Waiting cargo'),
(11, 'JT00027', '2020-09-09 13:13:52', '2020-09-09 14:13:41', 'Menunggu cargo berikutnya'),
(12, 'JT00027', '2020-09-09 14:14:08', '2020-09-09 15:17:02', 'Waiting cargo'),
(13, 'JT00028', '2020-09-10 13:15:53', '2020-09-10 14:04:47', 'Waiting cargo'),
(14, 'JT00028', '2020-09-10 14:11:32', '2020-09-10 14:28:08', 'Waiting cargo'),
(15, 'JT00028', '2020-09-10 14:28:20', '2020-09-10 15:08:33', 'Waiting cargo');

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
(4, 'ST00002', '2020-07-29 16:53:52', '2020-09-04 15:08:14', 'Istirahat');

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
MODIFY `id_at` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT for table `actual_moving`
--
ALTER TABLE `actual_moving`
MODIFY `id_as` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `actual_stacking`
--
ALTER TABLE `actual_stacking`
MODIFY `id_as` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `actual_stevedoring`
--
ALTER TABLE `actual_stevedoring`
MODIFY `id_as` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1181;
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
MODIFY `id_djotruck` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `detail_moving`
--
ALTER TABLE `detail_moving`
MODIFY `id_cargo` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `detail_stacking`
--
ALTER TABLE `detail_stacking`
MODIFY `id_cargo` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
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
MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=255;
--
-- AUTO_INCREMENT for table `jenis_kegiatan`
--
ALTER TABLE `jenis_kegiatan`
MODIFY `id_jenis` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `log_system`
--
ALTER TABLE `log_system`
MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=417;
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
MODIFY `id_timeline` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `timeline_jobordertruck`
--
ALTER TABLE `timeline_jobordertruck`
MODIFY `id_timeline` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
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
