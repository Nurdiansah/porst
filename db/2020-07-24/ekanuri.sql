-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 24, 2020 at 12:04 
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
(25, '2020-07-24 14:05:47', 'Chemical Drum', 9, 'JT00004', 'PT.ASW', 'Chemical Drum', 'OFFLOADING', 'Production', '0001', '0.12', '0.12', '0.10', '1.44', '0.09', '1.44', 1, 'Pallet', 'To Jetty', 1),
(26, '2020-07-24 14:06:04', 'Chemical Drum', 9, 'JT00004', 'PT.ASW', 'Chemical Drum', 'OFFLOADING', 'Production', '0001', '0.13', '0.13', '0.11', '1.44', '0.09', '1.44', 1, 'Pallet', 'To Warehouse', 1),
(27, '2020-07-24 14:35:02', 'Chemical Drum', 9, 'JT00004', 'PT.ASW', 'Chemical Drum', 'OFFLOADING', 'Production', '0001', '0.15', '0.15', '0.13', '1.44', '0.09', '1.44', 1, 'Pallet', 'To Jetty', 1),
(28, '2020-07-24 14:35:05', 'Chemical Drum', 9, 'JT00004', 'PT.ASW', 'Chemical Drum', 'OFFLOADING', 'Production', '0001', '0.17', '0.17', '0.14', '1.44', '0.09', '1.44', 1, 'Pallet', 'To Jetty', 1),
(29, '2020-07-24 14:35:38', 'Chemical Drum', 9, 'JT00004', 'PT.ASW', 'Chemical Drum', 'OFFLOADING', 'Production', '0001', '0.20', '0.20', '0.17', '1.44', '0.09', '1.44', 1, 'Pallet', 'To Jetty', 1),
(30, '2020-07-24 14:35:44', 'Chemical Drum', 9, 'JT00004', 'PT.ASW', 'Chemical Drum', 'OFFLOADING', 'Production', '0001', '1.20', '1.20', '1.00', '7.20', '0.43', '7.20', 5, 'Pallet', 'To Jetty', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;

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
(186, 'JV00011', '66', '2020-07-11 15:19:25', '1500033252', 4, 'Domestic Waste', '5.76', '0.91', '5.76', 'Medco Energi', '1', 'To Jetty');

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
('IC000051', 'JV00002', '14', NULL, '1500003', 16, 'Empty Tote Tank', '64.80', '4.00', '64.80', 'Champion', '1', '0', '1', NULL),
('IC000052', 'JV00002', '10', NULL, '1500004', 16, 'Empty IBC Tank', '64.80', '8.00', '64.80', 'Champion', '1', '0', '1', NULL),
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
('IC000072', 'JV00006', '10', NULL, '220002', 6, 'testing', '24.30', '60.00', '60.00', 'test', '1', '0', '1', NULL),
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
('IC000190', 'JV00012', '100', NULL, '1500033177', 1, 'MT DNV Container 20FT SN.Aoru 360132-9', '37.50', '5.00', '37.50', 'Sarku', '1', '0', '1', NULL),
('IC000191', 'JV00012', '100', NULL, '1500033177', 1, 'MT DNV Container 20FT SN.Aoru 360091-3', '37.50', '5.00', '37.50', 'Sarku', '1', '0', '1', NULL),
('IC000192', 'JV00012', '101', NULL, '1500033177', 1, 'MT Half Container 10FT SN.HOP-03/C10/08/09', '11.25', '1.50', '11.25', 'Medco Energi', '1', '0', '1', NULL),
('IC000193', 'JV00012', '102', NULL, '1500033075', 1, 'Cylinder Rack Including Nitrogen MT Botol', '1.00', '1.50', '1.50', 'Sarku', '1', '0', '1', NULL),
('IC000194', 'JV00012', '103', NULL, '1500033088', 1, '20 Ea Firex Dry Powder (Hydrtest)', '1.73', '0.10', '1.73', 'Segara Permai', '1', '0', '1', NULL),
('IC000195', 'JV00012', '100', NULL, '1500033213', 1, '20FT AORUO 3601334', '37.50', '5.00', '37.50', 'Romario Putra Pratama', '1', '0', '1', NULL),
('IC000196', 'JV00012', '104', NULL, '1500032942', 1, 'Empty Tote Tank S-9282 , Tank Number LBU-2019-0048', '2.16', '0.30', '2.16', 'PT.LBU JKT', '1', '0', '1', NULL),
('IC000197', 'JV00012', '104', NULL, '1500032942', 1, 'Empty Tote Tank S-965ND , Tank Number LBU-2019-002', '2.16', '0.30', '2.16', 'PT.LBU JKT', '1', '0', '1', NULL),
('IC000198', 'JV00012', '104', NULL, '1500032942', 1, 'Empty Tote Tank Ex Chemical IR-2316 , No TT Tank T-5', '2.16', '0.30', '2.16', 'PT.LBU JKT', '1', '0', '1', NULL),
('IC000199', 'JV00012', '104', NULL, '1500032942', 1, 'Empty Tote Tank S-965ND , Tank Number LBU-2019-0114', '2.16', '0.30', '2.16', 'PT.LBU JKT', '1', '0', '1', NULL),
('IC000200', 'JV00012', '104', NULL, '1500032942', 1, 'Empty Tote Tank S-965ND , Tank Number LBU-2019-0056', '2.16', '0.30', '2.16', 'PT.LBU JKT', '1', '0', '1', NULL),
('IC000201', 'JV00012', '104', NULL, '1500032942', 1, 'Empty Tote Tank S-9282 ,Tank Number LBU-2019-080', '2.16', '0.30', '2.16', 'PT.LBU JKT', '1', '0', '1', NULL),
('IC000202', 'JV00012', '104', NULL, '1500032942', 1, 'Empty Tote Tank S-965ND , Tank Number LBU-2019-007', '2.16', '0.30', '2.16', 'PT.LBU JKT', '1', '0', '1', NULL),
('IC000203', 'JV00012', '104', NULL, '1500032942', 1, 'Empty Tote Tank S-9282 , Tank Number RTF-09', '2.16', '0.30', '2.16', 'PT.LBU JKT', '1', '0', '1', NULL),
('IC000204', 'JV00012', '105', NULL, '1500033326', 4, '4 Unit Liferaft Inside 20FT Basket OEGU 2440616', '8.00', '0.80', '8.00', 'Segara Permai', '1', '0', '1', NULL),
('IC000205', 'JV00012', '100', NULL, '9456341', 1, '20FT Food Container GESU', '37.50', '3.00', '37.50', 'GDSK', '1', '0', '1', NULL),
('IC000206', 'JV00012', '100', NULL, '6053058', 1, '20FT Food Container KKTU', '37.50', '3.00', '37.50', 'GDSK', '1', '0', '1', NULL),
('IC000207', 'JV00012', '100', NULL, '7546651', 1, '20FT Food Container NYKU', '37.50', '3.00', '37.50', 'GDSK', '1', '0', '1', NULL),
('IC000208', 'JV00012', '100', NULL, '6050146', 1, '20FT Food Container KKTU', '37.50', '3.00', '37.50', 'GDSK', '1', '0', '1', NULL),
('IC000209', 'JV00012', '100', NULL, '7541095', 1, '20FT Food Container NYKU', '37.50', '3.00', '37.50', 'GDSK', '1', '0', '1', NULL),
('IC000210', 'JV00012', '100', NULL, '3117666', 1, '20FT Food Container CRLU', '37.50', '3.00', '37.50', 'GDSK', '1', '0', '1', NULL),
('IC000212', 'JV00012', '100', NULL, '7020615', 1, '20FT Food COntainer TAHU', '37.50', '2.50', '37.50', 'GDSK', '1', '0', '1', NULL),
('IC000213', 'JV00012', '106', NULL, '8028890', 1, '20FT Food Container CNHU', '18.75', '2.00', '18.75', 'GDSK', '1', '0', '1', NULL),
('IC000214', 'JV00012', '107', NULL, '1500033333', 1, 'Container warna biru KWS003', '18.30', '1.00', '18.30', 'Medco Energi', '1', '0', '1', NULL),
('IC000215', 'JV00012', '108', NULL, '1500033333', 1, 'Cradel kwr gbr 109 + kwr gbr 110', '1.00', '2.00', '2.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000216', 'JV00012', '109', NULL, '00000', 81, 'Waste Limbah Domestic', '81.00', '14.00', '81.00', 'Medco Energi', '1', '0', '1', NULL),
('IC000217', 'JV00012', '110', NULL, '00001', 1, '20FT Container ISO OEGU 000610-7', '36.97', '3.50', '36.97', 'Medco Energi', '1', '0', '1', NULL),
('IC000218', 'JV00012', '111', NULL, '1500032864', 1, 'Material Cylinder Empty Helium,Hydrogen & Nitrogen', '2.74', '1.00', '2.74', 'Medco Energi', '1', '0', '1', NULL),
('IC000219', 'JV00012', '112', NULL, '1500032962', 1, 'Liferaft Capasitas 25 Pax', '1.44', '0.30', '1.44', 'Medco Energi', '1', '0', '1', NULL),
('IC000220', 'JV00012', '113', NULL, '1500032849', 1, 'Material Gas Booster 1Bh/Box', '13.50', '4.00', '13.50', 'Sembodo Suroso', '1', '0', '1', NULL),
('IC000221', 'JV00012', '100', NULL, '1500032342', 1, 'White Container Consist Of Pick Up Box', '37.50', '5.00', '37.50', 'PT.CHAS', '1', '0', '1', NULL),
('IC000222', 'JV00012', '100', NULL, '1500033435', 1, 'Connector 3/8" Tube OD X1/2" MNPT 316', '37.50', '7.00', '37.50', 'Medco Energi', '1', '0', '1', NULL),
('IC000223', 'JV00012', '115', NULL, '1300014948', 1, 'Tubing,Instr,3/8"', '0.00', '0.03', '0.03', 'Medco Energi', '1', '0', '1', NULL);

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
  `volume_cargo` decimal(6,2) NOT NULL,
  `ton_cargo` decimal(6,2) NOT NULL,
  `revton_cargo` decimal(6,2) NOT NULL,
  `qty_cargo` int(11) NOT NULL,
  `satuan_cargo` varchar(15) DEFAULT NULL,
  `deskripsi_cargo` text,
  `status_cargo` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_jobordertruck`
--

INSERT INTO `detail_jobordertruck` (`id_djotruck`, `id_jobordertruck`, `nm_company`, `nm_barang`, `nm_kegiatan`, `production`, `no_po`, `p_cargo`, `l_cargo`, `t_cargo`, `volume_cargo`, `ton_cargo`, `revton_cargo`, `qty_cargo`, `satuan_cargo`, `deskripsi_cargo`, `status_cargo`) VALUES
(1, 'JT00002', 'PT.ASW', 'Chemical', 'OFFLOADING', 'Production', '', '1.22', '1.25', '1.26', '0.00', '0.00', '0.00', 0, 'Unit', 'Offloading Medco', NULL),
(2, 'JT00002', 'PT. Labror', 'Pallet', 'OFFLOADING', 'Production', '', '1.25', '1.25', '0.50', '0.00', '0.00', '0.00', 0, 'Unit', 'Offloading Medco', NULL),
(3, 'JT00002', 'PT.ABC', 'Pallet', 'OFFLOADING', 'Production', '', '1.22', '1.23', '1.24', '0.00', '0.00', '0.00', 0, 'Unit', 'Offloading Medco', 1),
(4, 'JT00002', 'PT.ABC', 'Pallet', 'OFFLOADING', 'Production', '0001', '1.22', '1.21', '1.22', '0.00', '0.00', '0.00', 0, 'Unit', 'Offloading Medco', 1),
(5, 'JT00003', 'PT.ASW', 'Pallet', 'OFFLOADING', 'Production', '0001', '1.23', '1.20', '1.20', '0.00', '0.00', '0.00', 0, 'Unit', 'Offloading Premier', 1),
(6, 'JT00001', 'PT.ASW', 'Pallet', 'OFFLOADING', 'Production', '0002', '1.22', '1.33', '1.44', '0.00', '0.00', '0.00', 0, 'Unit', 'Offloading Medco', 1),
(7, 'JT00001', 'PT.ASW', 'Chemical', 'LOADING', 'Production', '0001', '1.50', '1.50', '1.50', '0.00', '0.00', '0.00', 0, 'Unit', 'Loading Medco', 1),
(8, 'JT00001', 'PT.ABC', 'Chemical', 'OFFLOADING', 'Production', '0003', '1.22', '1.22', '1.22', '1.82', '1.00', '1.82', 1, 'Unit', 'Offloading Medco', 1),
(9, 'JT00004', 'PT.ASW', 'Chemical Drum', 'OFFLOADING', 'Production', '0001', '1.20', '1.20', '1.00', '0.00', '0.00', '0.00', 0, 'Pallet', 'Chemical Drum', 1);

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
('JV00001', 'PAN MARINE', 'KANAYA', '2020-01-08', '20:00:00', '0000-00-00', '00:00:00', 'PAMELOKAN', 'JAKARTA', 1, 'Offloading', 3, 'Email Tanggal 02 Januari 2020', '', '0', '577.54', 'JETTY KJ2 A', 'contoh-bukti-pembayaran.pdf', 'contoh-bukti-pembayaran.pdf', 'contoh-bukti-pembayaran.pdf', 'CRANE KATO R-32 70 TON', 'FORKLIFT F-31  3,5 TON', 'FORKLIFT F-32  3,5 TON', 'NULL', 'NULL', 'NULL', 'kj1', '270.20', '2020-01-17 15:07:23', '2020-01-21 15:21:48', '4 hari 0 jam 14 menit ', 6, NULL),
('JV00002', 'KM.Sejahtera 35', 'PT.Sinar Pagoda', '2020-01-29', '03:30:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 27 Januari 2020', '', '0', NULL, 'JETTY KJ2 A', 'PTW Medco (1).jpg', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F18 cap 8 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F08 cap 2,5 Ton', 'NULL', 'NULL', 'kj1', '83.00', '2020-02-06 14:07:26', NULL, NULL, 2, NULL),
('JV00003', 'KM.Sejahtera 35', 'PT.Sinar Pagoda', '2020-01-30', '08:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 27 Januari 2020', '', '0', '551.92', 'JETTY KJ2 A', 'PTW Medco.jpg', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F18 cap 8 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F08 cap 2,5 Ton', 'NULL', 'NULL', 'kj1', '163.50', '2020-02-12 14:45:39', '2020-02-12 14:49:17', '3 menit ', 4, NULL),
('JV00004', 'KM.Sejahtera 35', 'PT.Sinar Pagoda', '2020-05-21', '23:30:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 18 Mei 2020', '123456', '0', '1119.02', 'JETTY KJ2 A', 'PTW Medco (1).jpg', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'Forklift F08 cap 2,5 Ton', 'NULL', 'NULL', 'kj1', '292.20', '2020-05-28 14:05:29', '2020-05-28 14:23:09', '17 menit ', 5, NULL),
('JV00005', 'KM.Sejahtera 36', 'PT.Sinar Pagoda', '2020-06-03', '07:30:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 31 Mei 2020', '', '0', '926.79', 'JETTY KJ2 A', 'PTW Medco (1).jpg', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F18 cap 8 Ton', 'Forklift F15 cap 3 Ton', 'NULL', 'NULL', 'NULL', 'kj1', '273.50', '2020-07-09 15:59:36', '2020-07-09 16:02:37', '3 menit ', 6, NULL),
('JV00006', 'GNA', 'JU', '2020-07-01', '02:01:00', '2020-07-03', '14:12:00', 'MATAK', 'TJ PRIOK', 1, 'Loading', 1, 'TEST/V1/XXX', '', '0', NULL, 'JETTY KJ1', 'ISO2USB.exe', 'ISO2USB.exe', 'ISO2USB.exe', 'CRANE TADANO', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'kj1', '90.00', '2020-07-03 13:45:12', NULL, NULL, 2, NULL),
('JV00007', 'KM.Sejahtera 35', 'PT.Sinar Pagoda', '2020-06-27', '05:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 25 Juni 2020', '', '0', '501.38', 'JETTY KJ2 A', 'PTW Medco (1).jpg', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F08 cap 2,5 Ton', 'Forklift F15 cap 3 Ton', 'NULL', 'NULL', 'NULL', 'kj1', '228.00', '2020-07-06 08:30:17', '2020-07-06 08:35:02', '4 menit ', 6, NULL),
('JV00008', 'KM. Sejahtera 35', 'Sinar Pagoda', '2020-07-06', '05:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email Tanggal 04 Juli 2020', '', '0', '286.37', 'JETTY KJ2 A', 'document_pendukung.pdf', 'document_pendukung.pdf', 'document_pendukung.pdf', 'Crane R36 cap 110 Ton', 'Forklift F08 cap 2,5 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'NULL', 'NULL', 'kj1', '146.30', '2020-07-06 13:47:21', '2020-07-06 14:20:26', '33 menit ', 6, NULL),
('JV00009', 'KM.Sokka', 'PT.Global Trans', '2020-07-10', '06:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 2, 'Email tanggal 08 Juli 2020', '123456', '0', '406.76', 'JETTY KJ1', 'PTW Premier Oil New.pdf', 'PTW Premier Oil PJSM.pdf', 'List Personil & HDE New.xlsx', 'Crane R34 cap 60 Ton', 'Forklift F14 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'Forklift F10 cap 3,5 Ton', 'NULL', 'NULL', 'kj1', '91.39', '2020-07-10 09:21:08', '2020-07-10 11:38:21', '2 jam 17 menit ', 5, NULL),
('JV00010', 'KM.Sejahtera 36', 'PT.Sinar Pagoda', '2020-07-10', '18:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 08 Juli 2020', '', '0', NULL, 'JETTY KJ2 A', '1. PTW Cold Work (Legal Size)_BAHASA_13 Sept 2019 rev. (1).pdf', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F08 cap 2,5 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'NULL', 'NULL', 'kj1', '10.00', NULL, NULL, NULL, 1, NULL),
('JV00011', 'KM.Sejahtera 36', 'PT.Sinar Pagoda', '2020-07-10', '18:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 08 Juli 2020', '', '0', '942.19', 'JETTY KJ2 A', '1. PTW Cold Work (Legal Size)_BAHASA_13 Sept 2019 rev. (1).pdf', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F08 cap 2,5 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'NULL', 'NULL', 'kj1', '253.12', '2020-07-11 01:46:01', '2020-07-11 15:19:56', '13 jam 33 menit ', 5, NULL),
('JV00012', 'KM.Sejahtera 35', 'PT.Sinar Pagoda', '2020-07-15', '14:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 14 Juli 2020', '', '0', NULL, 'JETTY KJ2 A', 'PTW Cold Work (Legal Size).pdf', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F08 cap 2,5 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'NULL', 'NULL', 'kj1', '84.13', NULL, NULL, NULL, 1, NULL);

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
  `status_jotruck` varchar(15) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_ordertruck`
--

INSERT INTO `job_ordertruck` (`id_jobordertruck`, `id_alatberat`, `id_client`, `area`, `total_cargo`, `created_on`, `mulai_kegiatan`, `finish_kegiatan`, `durasi`, `status_jotruck`) VALUES
('JT00001', 8, 3, 'kj1', NULL, NULL, '2020-07-23 15:48:44', NULL, NULL, '2'),
('JT00002', 8, 3, 'kj1', '89.30', '2020-07-22 10:30:51', '2020-07-22 10:49:51', '2020-07-23 13:53:46', '1 hari 3 jam 3 menit ', '3'),
('JT00003', 5, 2, 'kj1', '3.54', '2020-07-23 14:42:25', '2020-07-23 14:49:53', '2020-07-23 15:16:55', '27 menit ', '3'),
('JT00004', 7, 2, 'kj1', '14.40', '2020-07-24 11:06:41', '2020-07-24 11:20:16', '2020-07-24 14:39:01', '3 jam 18 menit ', '3');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

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
(14, 'JV00002', '2020-07-15 11:24:23', '2020-07-16 17:16:36', 'Test');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timeline_jobordertruck`
--

INSERT INTO `timeline_jobordertruck` (`id_timeline`, `id_jobordertruck`, `waktu_stop`, `waktu_mulaikembali`, `keterangan_jeda`) VALUES
(4, 'JT00004', '2020-07-24 14:30:48', '2020-07-24 14:33:04', 'Istirahat Sholat'),
(5, 'JT00004', '2020-07-24 14:33:26', '2020-07-24 14:34:39', 'Menunggu Cargo Berikutnya');

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
-- AUTO_INCREMENT for table `actual_stevedoring`
--
ALTER TABLE `actual_stevedoring`
MODIFY `id_as` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=187;
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
MODIFY `id_djotruck` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
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
MODIFY `id_timeline` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `timeline_jobordertruck`
--
ALTER TABLE `timeline_jobordertruck`
MODIFY `id_timeline` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
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
-- Constraints for table `detail_jobordertruck`
--
ALTER TABLE `detail_jobordertruck`
ADD CONSTRAINT `detail_jobordertruck_ibfk_1` FOREIGN KEY (`id_jobordertruck`) REFERENCES `job_ordertruck` (`id_jobordertruck`) ON DELETE CASCADE ON UPDATE CASCADE;

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
