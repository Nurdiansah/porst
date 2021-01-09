-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 09, 2021 at 10:25 AM
-- Server version: 8.0.22-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bmi`
--

-- --------------------------------------------------------

--
-- Table structure for table `actual_stevedoring`
--

CREATE TABLE `actual_stevedoring` (
  `id_as` bigint NOT NULL,
  `id_joborder` varchar(15) NOT NULL,
  `id_cargo` varchar(15) DEFAULT NULL,
  `id_jenis` varchar(15) NOT NULL,
  `time_as` datetime NOT NULL,
  `doc_no_as` varchar(15) NOT NULL,
  `qty_as` int NOT NULL,
  `rincian_cargo` varchar(250) NOT NULL,
  `m3_as` decimal(6,2) NOT NULL,
  `ton_as` decimal(6,2) NOT NULL,
  `revton_as` decimal(6,2) NOT NULL,
  `remarks_as` varchar(50) DEFAULT NULL,
  `row_version` varchar(15) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `actual_stevedoring`
--

INSERT INTO `actual_stevedoring` (`id_as`, `id_joborder`, `id_cargo`, `id_jenis`, `time_as`, `doc_no_as`, `qty_as`, `rincian_cargo`, `m3_as`, `ton_as`, `revton_as`, `remarks_as`, `row_version`, `keterangan`) VALUES
(1, 'JV00001', 'IC000001', '138', '2021-01-08 17:04:08', '10001', 1, 'Opentop ', '41.40', '10.00', '41.40', 'Elnusa', '1', 'To Jetty'),
(2, 'JV00001', 'IC000001', '138', '2021-01-08 17:04:12', '10001', 1, 'Opentop ', '41.40', '10.00', '41.40', 'Elnusa', '1', 'To Jetty'),
(3, 'JV00001', 'IC000001', '138', '2021-01-08 17:04:17', '10001', 1, 'Opentop ', '41.40', '10.00', '41.40', 'Elnusa', '1', 'To Jetty'),
(4, 'JV00001', 'IC000001', '138', '2021-01-08 17:04:21', '10001', 1, 'Opentop ', '41.40', '10.00', '41.40', 'Elnusa', '1', 'To Jetty'),
(5, 'JV00001', 'IC000001', '138', '2021-01-08 17:04:26', '10001', 1, 'Opentop ', '41.40', '10.00', '41.40', 'Elnusa', '1', 'To Jetty'),
(6, 'JV00001', 'IC000002', '190', '2021-01-08 17:04:33', '10002', 1, 'Basket 20FT', '18.93', '4.00', '18.93', 'Haliburton', '1', 'To Yard'),
(7, 'JV00001', 'IC000002', '190', '2021-01-08 17:04:39', '10002', 1, 'Basket 20FT', '18.93', '4.00', '18.93', 'Haliburton', '1', 'To Yard'),
(8, 'JV00001', 'IC000003', '184', '2021-01-08 17:04:45', '10003', 1, 'Cylinder Rack', '3.33', '5.00', '5.00', 'Elnusa', '1', 'To Jetty'),
(9, 'JV00001', 'IC000003', '184', '2021-01-08 17:04:50', '10003', 1, 'Cylinder Rack', '3.33', '5.00', '5.00', 'Elnusa', '1', 'To Jetty'),
(10, 'JV00001', 'IC000003', '184', '2021-01-08 17:04:53', '10003', 1, 'Cylinder Rack', '3.33', '5.00', '5.00', 'Elnusa', '1', 'To Jetty'),
(11, 'JV00001', 'IC000004', '99', '2021-01-08 17:04:58', '10004', 2, 'Basket 30 FT', '61.82', '8.33', '61.82', 'Haliburton', '1', 'To Jetty'),
(12, 'JV00001', 'IC000004', '99', '2021-01-08 17:05:02', '10004', 2, 'Basket 30 FT', '61.82', '8.34', '61.82', 'Haliburton', '1', 'To Jetty'),
(13, 'JV00001', 'IC000004', '99', '2021-01-08 17:05:07', '10004', 2, 'Basket 30 FT', '61.82', '8.34', '61.82', 'Haliburton', '1', 'To Jetty'),
(14, 'JV00001', 'IC000005', '198', '2021-01-08 17:05:12', '10005', 25, 'Life raft', '30.00', '12.50', '30.00', 'Elnusa', '1', 'To Jetty'),
(15, 'JV00001', 'IC000005', '198', '2021-01-08 17:05:17', '10005', 25, 'Life raft', '30.00', '12.50', '30.00', 'Elnusa', '1', 'To Jetty'),
(16, 'JV00001', 'IC000005', '198', '2021-01-08 17:05:22', '10005', 25, 'Life raft', '30.00', '12.50', '30.00', 'Elnusa', '1', 'To Jetty'),
(17, 'JV00001', 'IC000005', '198', '2021-01-08 17:06:41', '10005', 25, 'Life raft', '30.00', '12.50', '30.00', 'Elnusa', '1', 'To Jetty'),
(18, 'JV00002', 'IC000006', '40', '2021-01-09 10:09:55', '10001', 1, 'Food Container 10 FT', '19.13', '5.00', '19.13', 'Indocaten', '1', 'To Jetty'),
(19, 'JV00002', 'IC000006', '40', '2021-01-09 10:10:01', '10001', 1, 'Food Container 10 FT', '19.13', '5.00', '19.13', 'Indocaten', '1', 'To Jetty'),
(20, 'JV00002', 'IC000006', '40', '2021-01-09 10:10:06', '10001', 1, 'Food Container 10 FT', '19.13', '5.00', '19.13', 'Indocaten', '1', 'To Jetty'),
(21, 'JV00002', 'IC000006', '40', '2021-01-09 10:10:13', '10001', 1, 'Food Container 10 FT', '19.13', '5.00', '19.13', 'Indocaten', '1', 'To Jetty'),
(22, 'JV00002', 'IC000007', '68', '2021-01-09 10:16:55', '10002', 5, 'Lifrart', '1.10', '5.00', '5.00', 'Elnusa', '1', 'To Jetty'),
(23, 'JV00002', 'IC000007', '68', '2021-01-09 10:21:43', '10002', 5, 'Lifrart', '1.10', '5.00', '5.00', 'Elnusa', '1', 'To Jetty'),
(24, 'JV00002', 'IC000008', '340', '2021-01-09 10:21:50', '10003', 1, 'Basket 20 FT', '19.22', '8.00', '19.22', 'Haliburton', '1', 'To Jetty'),
(25, 'JV00002', 'IC000008', '340', '2021-01-09 10:21:57', '10003', 1, 'Basket 20 FT', '19.22', '8.00', '19.22', 'Haliburton', '1', 'To Jetty');

-- --------------------------------------------------------

--
-- Table structure for table `alat_berat`
--

CREATE TABLE `alat_berat` (
  `id_alatberat` int NOT NULL,
  `nm_alatberat` varchar(30) NOT NULL,
  `kapasitas_alat` decimal(6,2) DEFAULT NULL,
  `jns_alatberat` varchar(30) NOT NULL,
  `area_alatberat` varchar(20) NOT NULL,
  `status_alatberat` varchar(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alat_berat`
--

INSERT INTO `alat_berat` (`id_alatberat`, `nm_alatberat`, `kapasitas_alat`, `jns_alatberat`, `area_alatberat`, `status_alatberat`) VALUES
(1, 'CRANE KATO R-32 70 TON', '70.00', 'CRANE', 'KJ4', '0'),
(2, 'CRANE KATO R-33 70 TON', '70.00', 'CRANE', 'KJ4', '0'),
(3, 'CRANE KATO R-35 70 TON', '70.00', 'CRANE', 'KJ4', '0'),
(4, 'FORKLIFT KALMAR F-19 15 TON', '15.00', 'FORKLIFT', 'KJ4', '0'),
(5, 'FORKLIFT F-35  8 TON', '8.00', 'FORKLIFT', 'KJ4', '0'),
(6, 'FORKLIFT F-33  3,5 TON', '3.50', 'FORKLIFT', 'KJ4', '0'),
(7, 'FORKLIFT F-32  3,5 TON', '3.50', 'FORKLIFT', 'KJ4', '0'),
(8, 'FORKLIFT F-31 3,5 TON', '3.50', 'FORKLIFT', 'KJ4', '0'),
(9, 'TRAILER 40 FT B.9239 IL', NULL, 'TRAILER', 'KJ4', '0'),
(10, 'TRUCK 3/4 B.9136 IT', NULL, 'TRUCK', 'KJ4', '0'),
(11, 'FORKLIFT F-34  8 TON', '8.00', 'FORKLIFT', 'KJ4', '0'),
(13, 'CRANE TEREX DEMAG', NULL, 'CRANE', 'KJ4', '0'),
(14, 'CRANE TADANO', NULL, 'CRANE', 'KJ4', '0'),
(15, 'Crane R34 cap 60 Ton', '60.00', 'CRANE', 'KJ1', '0'),
(16, 'Crane R36 cap 110 Ton', '110.00', 'CRANE', 'KJ1', '0'),
(17, 'Forklift F08 cap 2,5 Ton', '2.50', 'FORKLIFT', 'KJ1', '0'),
(18, 'Forklift F10 cap 3,5 Ton', '3.50', 'FORKLIFT', 'KJ1', '0'),
(19, 'Forklift F14 cap 3 Ton', '3.00', 'FORKLIFT', 'KJ1', '0'),
(20, 'Forklift F15 cap 3 Ton', '3.00', 'FORKLIFT', 'KJ1', '0'),
(21, 'Forklift F18 cap 8 Ton', '8.00', 'FORKLIFT', 'KJ1', '0'),
(22, 'Crane kato R32 70 ton', '70.00', 'CRANE', 'KJ4', '0'),
(23, 'F10', NULL, 'FORKLIFT', 'KJ1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id_client` int NOT NULL,
  `kd_client` varchar(10) DEFAULT NULL,
  `nm_client` varchar(50) NOT NULL,
  `nm_client2` varchar(50) DEFAULT NULL,
  `no_kontrak` varchar(50) DEFAULT NULL,
  `deskripsi_kontrak` text,
  `tgl_awal` datetime DEFAULT NULL,
  `tgl_akhir` datetime DEFAULT NULL,
  `logo_client` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `detail_joborder` (
  `id_cargo` varchar(15) NOT NULL,
  `id_joborder` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_jenis` varchar(15) NOT NULL,
  `timeCargo` time DEFAULT NULL,
  `doc_no` varchar(10) NOT NULL,
  `qty_cargo` int NOT NULL,
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
('IC000001', 'JV00001', '138', NULL, '10001', 0, 'Opentop ', '0.00', '0.00', '0.00', 'Elnusa', '1', '0', '1', NULL),
('IC000002', 'JV00001', '190', NULL, '10002', 0, 'Basket 20FT', '0.00', '0.00', '0.00', 'Haliburton', '1', '0', '1', NULL),
('IC000003', 'JV00001', '184', NULL, '10003', 0, 'Cylinder Rack', '0.00', '0.00', '0.00', 'Elnusa', '1', '0', '1', NULL),
('IC000004', 'JV00001', '99', NULL, '10004', 0, 'Basket 30 FT', '0.00', '0.00', '0.00', 'Haliburton', '1', '0', '1', NULL),
('IC000005', 'JV00001', '198', NULL, '10005', 0, 'Life raft', '0.00', '0.00', '0.00', 'Elnusa', '1', '0', '1', NULL),
('IC000006', 'JV00002', '40', NULL, '10001', 0, 'Food Container 10 FT', '0.00', '0.00', '0.00', 'Indocaten', '1', '0', '1', NULL),
('IC000007', 'JV00002', '68', NULL, '10002', 0, 'Lifrart', '0.00', '0.00', '0.00', 'Elnusa', '1', '0', '1', NULL),
('IC000008', 'JV00002', '340', NULL, '10003', 0, 'Basket 20 FT', '0.00', '0.00', '0.00', 'Haliburton', '1', '0', '1', NULL);

--
-- Triggers `detail_joborder`
--
DELIMITER $$
CREATE TRIGGER `progres_jo` AFTER INSERT ON `detail_joborder` FOR EACH ROW BEGIN
	UPDATE job_order SET progres_jo =progres_jo+NEW.ton_cargo
    WHERE id_joborder=NEW.id_joborder;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_barang`
--

CREATE TABLE `jenis_barang` (
  `id_jenis` int NOT NULL,
  `nm_jenis` varchar(255) NOT NULL,
  `p` decimal(6,2) NOT NULL,
  `l` decimal(6,2) NOT NULL,
  `t` decimal(6,2) NOT NULL,
  `satuan_jenis` varchar(50) DEFAULT NULL,
  `volume_jenis` decimal(6,2) NOT NULL,
  `area` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_barang`
--

INSERT INTO `jenis_barang` (`id_jenis`, `nm_jenis`, `p`, `l`, `t`, `satuan_jenis`, `volume_jenis`, `area`) VALUES
(6, 'CONTAINER 20 FT', '6.06', '2.44', '2.90', 'UNIT', '42.88', 'kj1'),
(7, 'CONTAINER 10 FT', '2.99', '2.44', '2.59', 'UNIT', '18.90', 'kj1'),
(9, 'TOTE THANK POI', '1.82', '1.82', '2.75', 'UNIT', '9.11', 'kj1'),
(10, 'IBC Tank', '1.50', '1.50', '1.80', 'UNIT', '4.05', 'kj1'),
(12, 'Iso Container PMB 10FT', '3.00', '2.50', '2.50', 'UNIT', '18.75', 'kj1'),
(13, 'Empty Gas Helium Cylinder', '1.50', '1.50', '1.60', 'Rack', '3.60', 'kj1'),
(14, 'Empty Tote Tank', '1.50', '1.50', '1.80', 'UNIT', '4.05', 'kj1'),
(15, 'Offshore Basket SN-SLB-08897', '12.00', '1.20', '1.43', 'Basket', '20.59', 'kj1'),
(16, 'Rack Cylinder BRA', '2.00', '2.00', '2.20', 'Rack', '8.80', 'kj1'),
(17, 'NItrogen Tank , Halliburton', '3.00', '2.50', '2.60', 'UNIT', '19.50', 'kj1'),
(18, 'Iron Basket , Halliburton', '6.70', '1.20', '1.20', 'UNIT', '9.65', 'kj1'),
(19, 'Waste Skip', '3.00', '1.22', '1.40', 'UNIT', '5.12', 'kj1'),
(20, 'Open Top Container 30FT', '9.20', '2.45', '1.49', 'UNIT', '33.58', 'kj1'),
(21, 'Tote Tank HSD', '1.48', '1.38', '2.27', 'UNIT', '4.64', 'kj1'),
(22, 'Cylinder Rack Nitrogen POI', '1.18', '1.18', '2.15', 'Rack', '2.99', 'kj1'),
(24, 'Dry Container 10FT', '2.99', '2.44', '2.60', 'UNIT', '18.97', 'kj1'),
(25, 'Chiller Container ', '2.99', '2.44', '2.60', 'UNIT', '18.97', 'kj1'),
(26, 'Half Container 10FT SN-FSHH', '2.99', '2.44', '1.22', 'UNIT', '8.90', 'kj1'),
(27, 'Open Top Container 20FT ME', '6.06', '2.44', '2.70', 'UNIT', '39.92', 'kj1'),
(28, 'Cylinder Rack', '1.37', '0.89', '2.20', 'UNIT', '2.68', 'kj1'),
(29, 'Chemical Barite', '1.20', '1.20', '1.00', 'Palet', '1.44', 'kj1'),
(30, 'Oli Drum', '1.20', '1.20', '1.15', 'Palet', '1.66', 'kj1'),
(31, 'Chemical Bentonite', '1.20', '1.20', '1.10', 'Palet', '1.58', 'kj1'),
(32, 'Chemical MI Swaco', '1.20', '1.20', '1.50', 'UNIT', '2.16', 'kj1'),
(34, 'Offshore Basket SNI', '13.00', '1.20', '1.20', 'UNIT', '18.72', 'kj1'),
(36, 'Chemical Drum', '1.20', '1.20', '1.20', 'Palet', '1.73', 'kj1'),
(37, 'Liferaft Viking', '1.70', '1.00', '1.00', 'W/Box', '1.70', 'kj1'),
(38, 'Waste Skip POI ', '2.06', '1.51', '1.61', 'UNIT', '5.01', 'kj1'),
(39, 'Mini Container POI', '1.91', '1.67', '2.76', 'UNIT', '8.80', 'kj1'),
(40, 'Food Container 10FT POI 1', '3.05', '2.45', '2.56', 'UNIT', '19.13', 'kj1'),
(41, 'Food Container 10FT POI', '3.00', '2.45', '2.45', 'UNIT', '18.01', 'kj1'),
(42, 'Food Container 10FT', '3.00', '2.44', '2.74', 'UNIT', '20.06', 'kj1'),
(43, 'Half Opentop Cont 10FT SN  ME', '2.99', '2.44', '1.28', 'UNIT', '9.34', 'kj1'),
(44, 'Half Open Top Container 20FT POI', '6.00', '2.45', '1.30', 'UNIT', '19.11', 'kj1'),
(45, 'Tote Tank OFH', '1.43', '1.43', '2.47', 'UNIT', '5.05', 'kj1'),
(46, 'Cyinder Rack Nitrogen R-POI-14', '1.50', '0.80', '1.46', 'UNIT', '1.75', 'kj1'),
(47, 'Cylinder Rack R-POI-16-11', '1.17', '1.17', '2.04', 'UNIT', '2.79', 'kj1'),
(49, 'Chiller Container 20FT', '6.05', '2.42', '2.58', 'UNIT', '37.77', 'kj1'),
(50, 'Cylinder rack Oxygen SE', '1.13', '0.82', '2.01', 'UNIT', '1.86', 'kj1'),
(51, 'Cylinder Rack Acetylene SE', '0.92', '0.62', '1.43', 'UNIT', '0.82', 'kj1'),
(52, 'Cylinder Rack Hellium SE', '0.93', '0.55', '1.26', 'UNIT', '0.64', 'kj1'),
(53, 'Cylinder Rack Freon SE', '0.94', '0.64', '0.13', 'UNIT', '0.08', 'kj1'),
(54, 'Half Open Top Container 10FT SE', '3.00', '2.42', '1.30', 'UNIT', '9.44', 'kj1'),
(55, 'Half Open Top Container 20FT SE', '6.00', '2.42', '1.30', 'UNIT', '18.88', 'kj1'),
(56, 'Crude Oil Sample SE', '0.60', '0.25', '0.20', 'Bag', '0.03', 'kj1'),
(57, 'Crude Oil Sample ME', '0.50', '0.50', '0.50', 'Box', '0.13', 'kj1'),
(58, 'Crude Oil Sample POI', '0.40', '0.30', '0.30', 'Carton', '0.04', 'kj1'),
(59, 'Firex Dry Powder', '0.70', '0.50', '0.60', 'W/Box', '0.21', 'kj1'),
(60, 'Liferaft', '1.20', '1.20', '0.50', 'Palet', '0.72', 'kj1'),
(61, 'Tote Tank Starpol ', '1.20', '1.05', '1.90', 'T/T', '2.39', 'kj1'),
(63, 'IBC Tank Staraid', '1.60', '1.30', '1.50', 'UNIT', '3.12', 'kj1'),
(64, 'Tote Tank Starbreak', '1.60', '1.36', '1.50', 'T/T', '3.26', 'kj1'),
(65, 'Dry Container 20FT ME', '6.06', '2.44', '2.59', 'UNIT', '38.30', 'kj1'),
(66, 'Domestic Waste', '1.20', '1.20', '1.00', 'Bag', '1.44', 'kj1'),
(68, 'Lifting Gear Box', '0.90', '0.60', '0.40', 'W/Box', '0.22', 'kj1'),
(69, 'Lifting Gear Junk', '1.20', '1.20', '0.50', 'Palet', '0.72', 'kj1'),
(70, 'Part Junk', '1.00', '1.00', '1.00', 'Palet', '1.00', 'kj1'),
(71, 'Cylinder Rack MOWC', '1.10', '1.10', '2.00', 'UNIT', '2.42', 'kj1'),
(72, 'Cylinder Rack Nitrogen ME ', '1.10', '1.05', '2.18', 'Rack', '2.52', 'kj1'),
(73, 'Cylinder Rack Nitrogen Blue ME', '1.10', '1.05', '2.13', 'Rack', '2.46', 'kj1'),
(74, 'Half height Basket Rig 4.5', '6.06', '2.44', '1.22', 'UNIT', '18.04', 'kj1'),
(75, 'Half height Basket Rig 3', '2.74', '2.44', '1.22', 'UNIT', '8.16', 'kj1'),
(76, 'Half Opentop Container 10FT POI 3', '2.99', '2.45', '1.28', 'UNIT', '9.38', 'kj1'),
(77, 'Gas Bottle Rack TD', '1.45', '1.24', '2.25', 'Rack', '4.05', 'kj1'),
(78, 'Gas Bottle Rack BSL', '1.27', '1.15', '2.28', 'Rack', '3.33', 'kj1'),
(79, 'Centrfuge DE-1000 ', '2.93', '1.90', '1.50', 'UNIT', '8.35', 'kj1'),
(80, 'Stand Centrifuge ', '3.00', '1.93', '0.90', 'UNIT', '5.21', 'kj1'),
(81, 'De Press', '6.26', '2.37', '2.45', 'UNIT', '36.35', 'kj1'),
(82, 'Screw Conveyor ', '1.40', '0.90', '0.70', 'UNIT', '0.88', 'kj1'),
(83, 'Housing  Auger', '2.80', '0.70', '0.80', 'Bundel', '1.57', 'kj1'),
(84, 'Pipe Casing 10\"', '2.90', '0.70', '0.70', 'Bundel', '1.42', 'kj1'),
(85, 'Feed Pump PSI', '2.50', '0.62', '0.84', 'UNIT', '1.30', 'kj1'),
(86, 'Twin Pod', '2.25', '1.20', '2.20', 'UNIT', '5.94', 'kj1'),
(87, 'Slurry Skid', '2.50', '1.45', '1.75', 'UNIT', '6.34', 'kj1'),
(88, 'Filtration Tool Box', '1.20', '1.00', '1.10', 'UNIT', '1.32', 'kj1'),
(89, 'Feed Pump ', '2.50', '0.60', '0.80', 'UNIT', '1.20', 'kj1'),
(90, 'Effluent Tank', '1.50', '1.20', '1.20', 'UNIT', '2.16', 'kj1'),
(91, 'Hose Basket', '7.00', '1.35', '1.11', 'UNIT', '10.49', 'kj1'),
(92, 'Offshore Basket SN-B-1403', '14.30', '1.20', '1.20', 'UNIT', '20.59', 'kj1'),
(93, 'Offshore Basket SN Auro', '13.30', '1.20', '1.40', 'UNIT', '22.34', 'kj1'),
(94, 'Cargo Basket', '12.30', '1.20', '1.20', 'UNIT', '17.71', 'kj1'),
(95, 'Offshore Basket SN.CPS', '15.40', '2.01', '1.60', 'UNIT', '49.53', 'kj1'),
(96, 'Clamp', '0.50', '0.50', '0.70', 'W/Box', '0.18', 'kj1'),
(97, 'Clamp For As', '0.80', '0.60', '0.60', 'Box', '0.29', 'kj1'),
(98, 'TAS', '1.10', '0.20', '0.20', 'Box', '0.04', 'kj1'),
(99, '30FT Basket AORA', '9.20', '2.40', '1.40', 'UNIT', '30.91', 'kj1'),
(100, 'DNV Container 20FT', '6.00', '2.50', '2.50', 'UNIT', '37.50', 'kj1'),
(101, 'Half Open Top Container 10FT ME', '3.00', '2.50', '1.50', 'UNIT', '11.25', 'kj1'),
(102, 'Cylinder Rack SN SEU-53', '1.00', '1.00', '2.00', 'UNIT', '2.00', 'kj1'),
(103, 'W/Box ME', '1.20', '1.20', '1.20', 'W/Box', '1.73', 'kj1'),
(104, 'Tote Tank S ME', '1.20', '1.20', '1.50', 'UNIT', '2.16', 'kj1'),
(105, 'Liferaft ME', '2.00', '1.00', '1.00', 'UNIT', '2.00', 'kj1'),
(106, 'Food Container 10FT ME', '3.00', '2.50', '2.50', 'UNIT', '18.75', 'kj1'),
(107, 'Container Biru', '3.00', '2.44', '2.50', 'UNIT', '18.30', 'kj1'),
(108, 'Cradle Kwr', '1.00', '1.00', '1.00', 'UNIT', '1.00', 'kj1'),
(109, 'D-066', '1.10', '1.00', '1.00', 'Palet', '1.10', 'kj1'),
(110, 'ISO Container 20FT ME', '6.06', '2.44', '2.50', 'UNIT', '36.97', 'kj1'),
(111, 'Material Cylinder ', '1.20', '1.20', '1.90', 'Rack', '2.74', 'kj1'),
(112, 'Liferaft Plt', '1.20', '1.20', '1.00', 'Palet', '1.44', 'kj1'),
(113, 'Gas Booster', '3.00', '3.00', '1.50', 'UNIT', '13.50', 'kj1'),
(114, 'Handa Carry ME', '0.10', '0.10', '0.10', 'Carton', '0.00', 'kj1'),
(115, 'Handa Carry ME', '0.10', '0.10', '0.10', 'Carton', '0.00', 'kj1'),
(116, 'Rack Argon', '1.50', '1.50', '1.80', 'Rack', '4.05', 'kj1'),
(117, 'Offshore Basket SN Top', '6.28', '1.19', '1.21', 'UNIT', '9.04', 'kj1'),
(118, 'Logging Unit ME', '4.88', '2.44', '2.60', 'UNIT', '30.96', 'kj1'),
(119, 'Mud Logging Mini Container ME', '1.60', '1.60', '1.00', 'UNIT', '2.56', 'kj1'),
(120, 'Sparepart Basket', '3.00', '2.43', '1.29', 'UNIT', '9.40', 'kj1'),
(121, 'Sparepart Basket', '3.00', '2.43', '1.29', 'UNIT', '9.40', 'kj1'),
(122, 'Batch Mixer', '6.50', '2.50', '1.50', 'UNIT', '24.38', 'kj1'),
(123, 'Completion Tool Box ME', '3.14', '1.00', '0.93', 'UNIT', '2.92', 'kj1'),
(124, 'Empty Basket TD-CB 10', '10.00', '1.20', '1.40', 'Unit', '16.80', 'kj1'),
(125, 'Mini Container ME', '2.50', '2.50', '2.80', 'UNIT', '17.50', 'kj1'),
(126, 'Basket TD-CB', '8.30', '1.20', '1.40', 'UNIT', '13.94', 'kj1'),
(127, 'Drilling JAR 7\"', '9.14', '0.18', '0.18', 'Ea', '0.30', 'kj1'),
(128, 'Cylinder Rack POI Argon', '0.80', '2.11', '2.04', 'UNIT', '3.44', 'kj1'),
(130, 'Basket SN TD-CB-14', '14.30', '1.20', '1.43', 'UNIT', '24.54', 'kj1'),
(131, 'Basket SN TD-CB-13', '13.30', '1.20', '1.43', 'UNIT', '22.82', 'kj1'),
(132, 'Waste Skip POI 1', '2.06', '1.57', '1.51', 'UNIT', '4.88', 'kj1'),
(134, 'Mini Container POI 1', '1.82', '2.45', '1.82', 'UNIT', '8.12', 'kj1'),
(137, '10Ft Half Opentop Container POI', '3.00', '2.45', '1.30', 'UNIT', '9.56', 'kj1'),
(138, '20FT Opentop H-270', '6.06', '2.44', '2.80', 'UNIT', '41.40', 'kj1'),
(140, '20FT Opentop POI 1', '6.00', '2.45', '1.50', 'UNIT', '22.05', 'kj1'),
(141, 'Plastic Box POI', '2.06', '1.57', '1.51', 'UNIT', '4.88', 'kj1'),
(142, 'Rack Bottle Gas', '0.75', '0.75', '1.80', 'Rack', '1.01', 'kj1'),
(143, 'Mini Container POI 2', '1.91', '1.67', '2.78', 'UNIT', '8.87', 'kj1'),
(144, 'Half Opentop 10FT POI', '3.00', '2.45', '1.50', 'UNIT', '11.03', 'kj1'),
(145, 'Half Opentop 10FT POI 1', '3.05', '2.45', '1.28', 'UNIT', '9.56', 'kj1'),
(146, '6FT Container SE ', '1.82', '1.82', '2.58', 'UNIT', '8.55', 'kj1'),
(147, 'Power Pack', '1.47', '0.93', '1.16', 'Unit', '1.59', 'kj1'),
(148, 'PC Mex Lenovo', '0.90', '0.20', '0.50', 'W/Box', '0.09', 'kj1'),
(149, 'Welding Habitat', '1.20', '1.20', '1.60', 'W/Box', '2.30', 'kj1'),
(150, 'Seatel Antena', '3.00', '3.00', '2.80', 'Unit', '25.20', 'kj1'),
(151, 'Empty Basket 6 Mtr', '6.00', '2.44', '1.43', 'Unit', '20.94', 'kj1'),
(152, 'Stand Dryer ', '3.70', '2.90', '1.50', 'Unit', '16.10', 'kj1'),
(153, 'Propane Rack SN', '1.06', '1.06', '1.67', 'Unit', '1.88', 'kj1'),
(154, 'Hammer Basket', '10.00', '1.00', '1.71', 'Unit', '17.10', 'kj1'),
(155, 'Skid Frame', '3.50', '1.54', '2.50', 'Unit', '13.48', 'kj1'),
(156, 'Basket YAP', '1.83', '1.72', '1.20', 'Unit', '3.78', 'kj1'),
(157, 'Basket YAP 01', '1.82', '1.52', '1.10', 'Unit', '3.04', 'kj1'),
(158, 'Half Height', '3.00', '2.40', '1.40', 'Unit', '10.08', 'kj1'),
(159, 'Auro ', '3.00', '2.00', '0.97', 'Unit', '5.82', 'kj1'),
(160, 'Basket MOOU', '4.58', '2.44', '1.43', 'Unit', '15.98', 'kj1'),
(161, 'Sarku Container', '6.00', '2.40', '2.50', 'Unit', '36.00', 'kj1'),
(162, 'E-Line Dog House', '6.06', '2.44', '2.44', 'UNIT', '36.08', 'kj1'),
(163, 'Line Basket', '6.20', '1.10', '1.20', 'UNIT', '8.18', 'kj1'),
(164, 'Varley', '1.20', '0.90', '1.70', 'UNIT', '1.84', 'kj1'),
(165, 'Steel Box MEPN', '3.00', '1.20', '1.40', 'UNIT', '5.04', 'kj1'),
(166, 'Prowell PCE', '3.50', '1.80', '1.50', 'UNIT', '9.45', 'kj1'),
(167, 'Prowell Single Drum', '2.30', '1.20', '1.50', 'UNIT', '4.14', 'kj1'),
(168, 'Prowell Power Pack', '2.30', '1.20', '1.60', 'UNIT', '4.42', 'kj1'),
(169, 'Single RAM', '1.80', '0.50', '1.40', 'UNIT', '1.26', 'kj1'),
(170, 'Lubricator Basket', '3.00', '1.20', '0.90', 'UNIT', '3.24', 'kj1'),
(171, 'Lubricator Basket', '3.00', '1.20', '0.90', 'UNIT', '3.24', 'kj1'),
(172, 'Transporter Basket', '2.40', '1.60', '1.30', 'UNIT', '4.99', 'kj1'),
(173, 'Gun Clamp', '10.00', '1.00', '0.30', 'Clamp', '3.00', 'kj1'),
(174, 'Gun Clamp 01', '1.00', '1.00', '0.50', 'Palet', '0.50', 'kj1'),
(175, 'Battery Charger', '0.80', '0.50', '0.50', 'W/Box', '0.20', 'kj1'),
(176, 'Offshore Container POI', '3.05', '2.45', '2.45', 'UNIT', '18.31', 'kj1'),
(177, 'Empty Bottle  Oxygen SE', '1.00', '0.70', '2.00', 'UNIT', '1.40', 'kj1'),
(178, 'Cylinder Rack SN KWS GBR', '1.20', '1.20', '2.00', 'UNIT', '2.88', 'kj1'),
(179, 'IBC Tank Methanol', '1.43', '1.42', '1.50', 'UNIT', '3.05', 'kj1'),
(180, 'Pass Ring Key', '0.80', '0.50', '0.40', 'Bundel', '0.16', 'kj1'),
(181, 'Flow Meter', '0.10', '0.10', '0.20', 'Can', '0.00', 'kj1'),
(182, 'Dump Truck Loses', '6.02', '2.02', '1.07', 'UNIT', '13.01', 'kj1'),
(183, 'Cylinder Rack TD-GB', '1.45', '1.24', '2.25', 'UNIT', '4.05', 'kj1'),
(184, 'Cylinder Rack BSSL', '1.27', '1.15', '2.28', 'UNIT', '3.33', 'kj1'),
(185, 'Offshore Basket FSHH', '4.57', '2.44', '1.22', 'UNIT', '13.60', 'kj1'),
(186, 'Casing 13-3/8\"', '12.00', '0.50', '0.33', 'Bundel', '1.98', 'kj1'),
(187, '6M Half Height Basket', '6.06', '2.44', '1.43', 'UNIT', '21.14', 'kj1'),
(188, '3M Open Top Container', '2.99', '2.45', '1.28', 'UNIT', '9.38', 'kj1'),
(189, 'Petroguard', '8.00', '0.50', '0.50', 'W/Box', '2.00', 'kj1'),
(190, '20FT HH Basket ME', '6.06', '2.44', '1.28', 'UNIT', '18.93', 'kj1'),
(191, 'ISO Tank MEG POI', '3.00', '2.45', '2.60', 'UNIT', '19.11', 'kj1'),
(192, 'Cylinder Rack Acetylene POI', '1.35', '0.72', '1.60', 'UNIT', '1.56', 'kj1'),
(193, 'Cylinder Rack PCE POI', '1.85', '1.60', '2.60', 'UNIT', '7.70', 'kj1'),
(194, 'Container Waste POI', '6.00', '2.45', '1.28', 'UNIT', '18.82', 'kj1'),
(195, 'Pipe Spool USM', '2.10', '1.00', '1.00', 'Box', '2.10', 'kj1'),
(196, 'Pipe Spool USM 01', '4.00', '1.00', '1.00', 'Box', '4.00', 'kj1'),
(197, 'Rack TKC 12', '2.55', '1.40', '1.64', 'UNIT', '5.85', 'kj1'),
(198, 'LIFE RAFT ME', '1.50', '0.80', '1.00', 'Crate', '1.20', 'kj1'),
(199, 'Motor Electric', '1.20', '1.00', '0.50', 'Crate', '0.60', 'kj1'),
(200, 'Motor Electric', '1.20', '1.00', '0.50', 'Crate', '0.60', 'kj1'),
(201, 'ISO Container 20FT ME 01', '6.06', '2.44', '2.59', 'UNIT', '38.30', 'kj1'),
(202, 'Rack Argon 01', '1.04', '1.06', '2.02', 'UNIT', '2.23', 'kj1'),
(203, 'Rack Argon 01', '1.04', '1.06', '2.02', 'UNIT', '2.23', 'kj1'),
(204, 'Rack N2', '1.41', '1.37', '2.18', 'UNIT', '4.21', 'kj1'),
(205, 'Offshore Basket 14M', '14.26', '1.20', '1.24', 'UNIT', '21.22', 'kj1'),
(206, 'Offshore Basket 40FT', '12.00', '1.20', '1.24', 'UNIT', '17.86', 'kj1'),
(207, 'Offshore Basket 003', '6.30', '1.20', '1.30', 'UNIT', '9.83', 'kj1'),
(208, 'Basket 12.3 ME', '12.30', '1.20', '1.30', 'UNIT', '19.19', 'kj1'),
(209, 'Basket 12.2 ME', '12.20', '1.20', '1.43', 'UNIT', '20.94', 'kj1'),
(210, 'Tolls Box', '2.40', '0.50', '0.50', 'S/Box', '0.60', 'kj1'),
(211, 'Container PPLi', '6.06', '2.44', '2.60', 'UNIT', '38.44', 'kj1'),
(212, 'Mini Container ME 02 ', '1.59', '1.85', '2.92', 'UNIT', '8.59', 'kj1'),
(213, 'Baracarb', '1.10', '1.05', '1.00', 'Palet', '1.16', 'kj1'),
(214, 'D620', '1.10', '1.10', '1.10', 'Palet', '1.33', 'kj1'),
(215, 'D252', '1.10', '1.05', '1.10', 'Palet', '1.27', 'kj1'),
(216, 'Cargo Basket 01 ME', '8.30', '1.10', '1.40', 'UNIT', '12.78', 'kj1'),
(217, 'Sample Terubuk', '0.20', '0.30', '0.40', 'Box', '0.02', 'kj1'),
(218, 'TCP Tool Box', '2.44', '0.98', '0.99', 'S/Box', '2.37', 'kj1'),
(219, 'Basket 10.3 ME', '10.30', '1.20', '1.43', 'UNIT', '17.67', 'kj1'),
(220, 'Container DNV', '6.10', '2.40', '2.90', 'UNIT', '42.46', 'kj1'),
(221, 'Sample Sea Water', '1.20', '1.20', '0.50', 'Palet', '0.72', 'kj1'),
(222, 'Slickline', '1.20', '0.70', '0.60', 'UNIT', '0.50', 'kj1'),
(223, 'Slickline', '1.20', '0.70', '0.60', 'UNIT', '0.50', 'kj1'),
(224, 'Winch Cable', '2.34', '2.14', '2.14', 'UNIT', '10.72', 'kj1'),
(225, 'CLC Frame', '2.30', '2.15', '2.85', 'UNIT', '14.09', 'kj1'),
(226, 'DAPS', '2.44', '2.44', '2.61', 'UNIT', '15.54', 'kj1'),
(227, 'Half Opentop Container 20FT POI 01', '6.30', '2.45', '1.28', 'UNIT', '19.76', 'kj1'),
(228, '20FT Closed Container ', '6.05', '2.45', '2.45', 'UNIT', '36.32', 'kj1'),
(229, 'AirMan Compressor', '3.70', '1.80', '2.23', 'UNIT', '14.85', 'kj1'),
(230, 'Half Opentop 10FT POI 2', '3.05', '2.45', '1.28', 'UNIT', '9.56', 'kj1'),
(231, 'Container POI', '6.58', '2.43', '1.28', 'UNIT', '20.47', 'kj1'),
(232, '20FT Opentop POI 2', '6.05', '2.45', '1.28', 'UNIT', '18.97', 'kj1'),
(233, 'Welding Machine POI', '2.05', '1.80', '1.82', 'UNIT', '6.72', 'kj1'),
(234, 'Yellow Basket SE', '6.30', '1.15', '1.43', 'UNIT', '10.36', 'kj1'),
(235, 'Reffer Container 10FT SE', '3.00', '2.42', '2.58', 'UNIT', '18.73', 'kj1'),
(236, 'Rack CO2 SE', '0.80', '1.50', '1.50', 'Rack', '1.80', 'kj1'),
(237, 'Diving Lars', '4.10', '2.25', '2.65', 'UNIT', '24.45', 'kj1'),
(238, '6M Half Height Basket', '6.06', '2.43', '1.43', 'UNIT', '21.06', 'kj1'),
(239, 'Tubing Seamselss', '9.60', '0.11', '0.11', 'Bundel', '0.12', 'kj1'),
(240, 'Tubing Seamselss', '9.60', '0.11', '0.11', 'Bundel', '0.12', 'kj1'),
(241, 'Cutting Skip ME', '2.20', '1.84', '1.54', 'UNIT', '6.23', 'kj1'),
(242, 'D080', '1.20', '1.00', '1.44', 'Palet', '1.73', 'kj1'),
(243, 'D110', '1.20', '1.20', '0.60', 'Palet', '0.86', 'kj1'),
(244, 'Drill Pipe', '12.00', '0.13', '0.13', 'Bundel', '0.20', 'kj1'),
(245, 'Expansion Valve', '1.00', '0.35', '0.85', 'Box', '0.30', 'kj1'),
(246, 'Tools PSV', '0.90', '0.30', '0.75', 'PKGS', '0.20', 'kj1'),
(247, 'Rack SEU', '1.02', '1.05', '1.90', 'UNIT', '2.03', 'kj1'),
(248, 'Diesel Brushless', '3.30', '1.40', '2.44', 'UNIT', '11.27', 'kj1'),
(249, 'Firex Dry Powder', '1.00', '1.00', '1.30', 'Carton', '1.30', 'kj1'),
(250, 'Sertification', '1.50', '0.80', '1.00', 'Carton', '1.20', 'kj1'),
(251, 'Air Compressor', '0.70', '0.40', '0.37', 'W/Box', '0.10', 'kj1'),
(252, 'Primary Box', '1.20', '1.20', '1.47', 'UNIT', '2.12', 'kj1'),
(253, 'Secondary Box 01', '1.60', '1.10', '2.14', 'UNIT', '3.77', 'kj1'),
(254, 'Second Box 02', '1.15', '1.15', '2.10', 'UNIT', '2.78', 'kj1'),
(255, 'Tubing 2-7/8\"', '9.14', '0.07', '0.07', 'Batang', '0.04', 'kj1'),
(256, 'Open Top PMB 20FT', '6.06', '2.44', '2.90', 'UNIT', '42.88', 'kj1'),
(257, 'Basket BSL', '4.20', '2.07', '1.89', 'Skid', '16.43', 'kj1'),
(258, 'Camera Radiography', '0.60', '0.40', '0.40', 'Box', '0.10', 'kj1'),
(259, 'Hot Hed Box', '2.99', '1.44', '1.74', 'UNIT', '7.49', 'kj1'),
(260, 'Hot Hed ToolBox', '1.62', '1.51', '1.04', 'UNIT', '2.54', 'kj1'),
(261, 'Rack Gas Cylinder', '1.38', '1.11', '2.44', 'UNIT', '3.74', 'kj1'),
(262, 'Aircraft', '1.93', '1.05', '0.48', 'Palet', '0.97', 'kj1'),
(263, 'Cable GPU', '0.65', '0.65', '0.46', 'W/Box', '0.19', 'kj1'),
(264, 'Aircraft Battery', '0.95', '0.52', '0.33', 'W/Box', '0.16', 'kj1'),
(265, 'DGS', '0.30', '0.30', '0.30', 'Box', '0.03', 'kj1'),
(266, 'Electric Motor Water', '1.00', '1.00', '0.50', 'Box', '0.50', 'kj1'),
(267, 'Coupling Adapter', '0.60', '0.40', '0.58', 'Box', '0.14', 'kj1'),
(268, 'Hedrogen', '1.38', '1.11', '2.44', 'UNIT', '3.74', 'kj1'),
(269, 'Habitat Box', '2.99', '1.44', '1.74', 'UNIT', '7.49', 'kj1'),
(270, 'Tool Box SN', '1.62', '1.51', '1.04', 'UNIT', '2.54', 'kj1'),
(271, 'Air Compressor ACF', '2.65', '1.70', '1.53', 'UNIT', '6.89', 'kj1'),
(272, 'Container Cutting', '6.00', '2.50', '2.60', 'UNIT', '39.00', 'kj1'),
(273, 'Offshore Basket 6.3', '6.30', '1.20', '1.36', 'UNIT', '10.28', 'kj1'),
(274, 'Cable Skid', '2.05', '1.57', '1.65', 'UNIT', '5.31', 'kj1'),
(275, 'Cable Skid', '2.05', '1.57', '1.65', 'UNIT', '5.31', 'kj1'),
(276, 'Cable Skid SLB', '2.20', '1.70', '1.80', 'UNIT', '6.73', 'kj1'),
(277, 'Basket TCP', '8.00', '1.15', '1.05', 'UNIT', '9.66', 'kj1'),
(278, 'TCP - TB', '2.44', '1.00', '1.00', 'UNIT', '2.44', 'kj1'),
(279, 'Offshore Basket SCEK-TBAS', '13.30', '1.20', '1.30', 'UNIT', '20.75', 'kj1'),
(280, 'Air Compressor Atlas Copco', '4.25', '2.44', '2.74', 'UNIT', '28.41', 'kj1'),
(281, 'Propane Rack', '1.06', '1.06', '1.67', 'Rack', '1.88', 'kj1'),
(282, 'DST Basket', '8.15', '1.39', '0.93', 'T/Box', '10.54', 'kj1'),
(283, 'Tensa GCI', '1.10', '1.10', '0.60', 'Palet', '0.73', 'kj1'),
(284, 'Tensa CTU', '1.20', '1.20', '0.50', 'Palet', '0.72', 'kj1'),
(285, 'Offshore Box', '1.27', '0.91', '1.00', 'UNIT', '1.16', 'kj1'),
(286, 'Rack COPI', '1.25', '0.89', '2.17', 'UNIT', '2.41', 'kj1'),
(287, 'DHT Basket', '2.99', '2.44', '1.43', 'UNIT', '10.43', 'kj1'),
(288, 'Basket APS', '4.00', '1.00', '1.00', 'UNIT', '4.00', 'kj1'),
(289, 'Habitat Box ME', '2.28', '1.19', '1.85', 'UNIT', '5.02', 'kj1'),
(290, 'Tool Box TB Copi', '1.60', '1.47', '1.02', 'UNIT', '2.40', 'kj1'),
(291, 'Compresseor 190CFM POI', '2.40', '1.45', '1.82', 'UNIT', '6.33', 'kj1'),
(292, 'Closed Container 10FT', '2.99', '2.43', '2.76', 'UNIT', '20.05', 'kj1'),
(293, 'Liferaft DSB POI', '3.05', '2.45', '1.28', 'UNIT', '9.56', 'kj1'),
(294, 'Wooden Pallet Waste POI', '1.90', '1.66', '2.76', 'UNIT', '8.71', 'kj1'),
(295, 'Food Container 10FT POI 2', '3.00', '2.45', '2.56', 'UNIT', '18.82', 'kj1'),
(296, '10FT Mini Container', '2.51', '2.51', '2.56', 'UNIT', '16.13', 'kj1'),
(297, 'Cylinder Rack POI  16-11', '1.77', '1.77', '2.04', 'UNIT', '6.39', 'kj1'),
(298, 'Nitrogen Manifold POI', '1.18', '1.18', '2.15', 'UNIT', '2.99', 'kj1'),
(299, 'Skid SKW POI', '1.10', '1.80', '1.82', 'UNIT', '3.60', 'kj1'),
(300, 'Steel Tool Box SE', '1.60', '1.20', '0.80', 'UNIT', '1.54', 'kj1'),
(301, 'DDC Container 20FT SE', '6.00', '2.40', '2.59', 'UNIT', '37.30', 'kj1'),
(302, 'Water Jet SE', '2.60', '1.45', '1.68', 'UNIT', '6.33', 'kj1'),
(303, 'Air Comperssor SE', '3.76', '1.90', '2.26', 'UNIT', '16.15', 'kj1'),
(304, 'Cylinder Rack 02 SE', '1.24', '1.24', '2.60', 'UNIT', '4.00', 'kj1'),
(305, 'Cylinder Rack 02 SE', '1.24', '1.24', '2.60', 'UNIT', '4.00', 'kj1'),
(306, 'Diving Launch SE', '6.58', '2.48', '2.60', 'UNIT', '42.43', 'kj1'),
(307, 'Food Container 10FT POI 3', '3.05', '2.45', '2.45', 'UNIT', '18.31', 'kj1'),
(308, 'IBC Tank POI', '1.61', '1.67', '2.90', 'UNIT', '7.80', 'kj1'),
(309, 'IBC Tank SZB', '1.43', '1.23', '1.51', 'UNIT', '2.66', 'kj1'),
(310, 'Liferaft Viking 01', '1.50', '1.00', '1.00', 'Crt', '1.50', 'kj1'),
(311, 'Motor Pump ME', '0.80', '1.13', '0.63', 'UNIT', '0.57', 'kj1'),
(312, 'Large Water ME', '1.53', '1.22', '0.62', 'UNIT', '1.16', 'kj1'),
(313, 'Gear Box Valve', '1.00', '1.00', '1.00', 'Box', '1.00', 'kj1'),
(314, 'Close Container 10FT ME', '3.00', '2.44', '2.60', 'UNIT', '19.03', 'kj1'),
(315, 'Container PPLi 01', '6.10', '2.44', '2.60', 'UNIT', '38.70', 'kj1'),
(316, 'Welding Machine ME', '2.08', '1.11', '1.68', 'UNIT', '3.88', 'kj1'),
(317, 'Offshore Box SN ME', '1.29', '0.91', '1.04', 'Box', '1.22', 'kj1'),
(318, 'Basket 10.3 ME 01', '10.30', '1.22', '1.43', 'UNIT', '17.97', 'kj1'),
(319, '20FT Half Height Opentop', '6.06', '2.44', '1.40', 'UNIT', '20.70', 'kj1'),
(320, 'Secondary Explosive ME', '1.56', '1.23', '2.00', 'UNIT', '3.84', 'kj1'),
(321, 'D145A', '1.20', '1.20', '1.05', 'Palet', '1.51', 'kj1'),
(322, 'Cargo Basket SN ME', '3.10', '2.13', '1.40', 'UNIT', '9.24', 'kj1'),
(323, 'Skid SN ME', '11.30', '1.15', '1.44', 'UNIT', '18.71', 'kj1'),
(324, 'N2 Rack ME', '0.63', '0.63', '1.90', 'UNIT', '0.75', 'kj1'),
(325, 'Half Container SN ME', '4.57', '2.43', '1.43', 'UNIT', '15.88', 'kj1'),
(326, '6M Half HT', '6.00', '2.50', '1.50', 'UNIT', '22.50', 'kj1'),
(327, 'Acetylene Cylinder ', '1.00', '0.70', '1.20', 'Rack', '0.84', 'kj1'),
(328, 'Oxygen Cylinder ', '1.10', '1.10', '1.50', 'Rack', '1.82', 'kj1'),
(329, 'W/Box ME 01', '1.00', '0.50', '0.50', 'W/Box', '0.25', 'kj1'),
(330, 'Charge unker ME', '1.16', '1.15', '2.10', 'UNIT', '2.80', 'kj1'),
(331, 'Shape Chrage Bunker ME', '1.00', '1.00', '2.20', 'UNIT', '2.20', 'kj1'),
(332, 'Hose Cutting Dryer', '1.20', '1.20', '0.50', 'Palet', '0.72', 'kj1'),
(333, 'Baroid BSS Panel', '1.30', '1.30', '0.50', 'UNIT', '0.85', 'kj1'),
(334, 'Baroid BSS Holding', '1.50', '1.50', '1.60', 'UNIT', '3.60', 'kj1'),
(335, 'Baroid BSS Cutting', '2.00', '2.00', '2.30', 'UNIT', '9.20', 'kj1'),
(336, 'MLWD Logging Unit', '4.60', '3.07', '2.69', 'UNIT', '37.99', 'kj1'),
(337, 'Basket 12.3 ME 01', '12.30', '1.20', '1.43', 'UNIT', '21.11', 'kj1'),
(338, 'Gas Transport', '1.45', '1.24', '2.25', 'UNIT', '4.05', 'kj1'),
(339, '6FT Container  ME 01', '1.59', '1.85', '2.92', 'UNIT', '8.59', 'kj1'),
(340, '20FT Basket SLB ME', '6.06', '2.44', '1.30', 'UNIT', '19.22', 'kj1'),
(341, 'Basket Baker ', '4.83', '1.18', '1.08', 'UNIT', '6.16', 'kj1'),
(342, 'Basket Baker 01', '3.00', '1.10', '1.10', 'UNIT', '3.63', 'kj1'),
(343, 'Container MAST', '8.00', '1.30', '2.80', 'UNIT', '29.12', 'kj1'),
(344, 'Container 20FT PBL', '6.05', '2.42', '2.58', 'UNIT', '37.77', 'kj1'),
(345, 'Kompon PBL', '1.20', '1.20', '1.10', 'Palet', '1.58', 'kj1'),
(346, 'Tubing Head PBL', '1.20', '0.74', '0.64', 'Box', '0.57', 'kj1'),
(347, 'Tubing Head PBL 01', '1.20', '1.02', '0.85', 'Box', '1.04', 'kj1'),
(348, 'Tubing Head PBL 02', '1.20', '1.02', '1.30', 'Box', '1.59', 'kj1'),
(349, 'Reel Cable PBL', '2.13', '2.06', '2.00', 'UNIT', '8.78', 'kj1'),
(350, 'Reel Cable PBL 01', '0.90', '1.30', '1.22', 'UNIT', '1.43', 'kj1'),
(351, 'Vacum Circuit Braker', '1.86', '2.12', '2.93', 'Box', '11.55', 'kj1'),
(352, 'X Maxtree PBL', '1.00', '0.95', '0.85', 'Box', '0.81', 'kj1'),
(353, 'X Maxtree PBL 01', '1.00', '1.00', '2.00', 'Box', '2.00', 'kj1'),
(354, 'Cable Clamp Protector PBL', '1.07', '0.82', '0.77', 'Box', '0.68', 'kj1'),
(355, 'Cable Clamp Protector PBL 01', '0.94', '0.83', '0.70', 'Box', '0.55', 'kj1'),
(356, 'Cable Clamp Protector PBL 02', '0.96', '0.82', '0.85', 'Box', '0.67', 'kj1'),
(357, 'Empty Bottle  Oxygen SE', '1.00', '0.70', '2.00', 'Rack', '1.40', 'kj1'),
(358, 'Half Opentop 10FT SE', '3.00', '2.42', '1.30', 'UNIT', '9.44', 'kj1'),
(359, 'Casing POI ', '12.00', '0.18', '0.18', 'Joints', '0.39', 'kj1'),
(360, 'Casing POI 01', '12.00', '0.24', '0.24', 'Joints', '0.69', 'kj1'),
(361, 'Casing POI 01', '12.00', '0.24', '0.24', 'Joints', '0.69', 'kj1'),
(362, 'Mini Container POI 3', '1.91', '1.66', '2.76', 'UNIT', '8.75', 'kj1'),
(363, 'Mini Container POI 3', '1.91', '1.66', '2.76', 'UNIT', '8.75', 'kj1'),
(364, 'Cylinder Rack ID POI', '1.19', '1.19', '2.10', 'UNIT', '2.97', 'kj1'),
(365, '28FT Half Opentop POI', '8.54', '2.45', '1.28', 'UNIT', '26.78', 'kj1'),
(366, 'Rack Cylinder KWS-GBR', '0.77', '0.70', '2.10', 'UNIT', '1.13', 'kj1'),
(367, 'Dryer Portable', '1.00', '0.70', '0.60', 'Box', '0.42', 'kj1'),
(368, 'Hydrolic Pump', '1.10', '0.90', '1.00', 'W/Box', '0.99', 'kj1'),
(369, 'Sparepart Hailey ME', '0.20', '0.15', '0.10', 'Box', '0.00', 'kj1'),
(370, 'Diesel Genset SN ME', '2.00', '1.00', '1.20', 'Unit', '2.40', 'kj1'),
(371, 'Concreate Block Balancing', '2.40', '2.40', '0.90', 'Ea', '5.18', 'kj1'),
(372, 'Rig Up Stand ME', '3.09', '0.98', '2.16', 'Unit', '6.54', 'kj1'),
(373, 'Break Out Vise', '2.40', '1.20', '1.20', 'Unit', '3.46', 'kj1'),
(374, 'Frame Spreader SN ME', '1.80', '1.51', '1.30', 'Unit', '3.53', 'kj1'),
(375, 'Transport Frame', '1.80', '1.50', '1.30', 'Unit', '3.51', 'kj1'),
(376, 'Skid SN ME', '2.05', '0.70', '0.65', 'Unit', '0.93', 'kj1'),
(377, 'Skid Frame ME', '2.00', '0.70', '0.65', 'Unit', '0.91', 'kj1'),
(378, 'Hydrolic Power unit', '2.20', '1.20', '1.70', 'Unit', '4.49', 'kj1'),
(379, 'Tank BSL', '2.28', '2.26', '2.50', 'Unit', '12.88', 'kj1'),
(380, 'Combo Winch ME', '2.80', '1.90', '2.80', 'Unit', '14.90', 'kj1'),
(381, '8FT Container Doghouse', '2.40', '2.40', '2.40', 'Unit', '13.82', 'kj1'),
(382, '10FT Opentop Cont AORU ME', '2.99', '2.44', '2.70', 'Unit', '19.70', 'kj1'),
(383, 'Power Pack SN ME', '2.00', '1.30', '2.70', 'Unit', '7.02', 'kj1'),
(384, 'Cylinder Rack PCE POI 01', '3.60', '1.35', '1.66', 'UNIT', '8.07', 'kj1'),
(385, 'Tool Container POI', '2.60', '2.09', '1.66', 'UNIT', '9.02', 'kj1'),
(386, 'Winch unit Double', '3.00', '1.42', '2.32', 'UNIT', '9.88', 'kj1'),
(387, 'Vapour Blast Machine', '1.91', '1.66', '2.76', 'UNIT', '8.75', 'kj1'),
(388, 'Container 20FT PHE', '6.00', '2.40', '2.60', 'UNIT', '37.44', 'kj4'),
(389, 'Stand Tubing ', '9.50', '1.00', '3.00', 'Ea', '28.50', 'kj4'),
(390, 'Tubing 3-1/2\"', '9.00', '0.12', '0.12', 'Joints', '0.13', 'kj4'),
(391, 'Tubing 5-1/2\"', '9.00', '0.16', '0.16', 'Joints', '0.23', 'kj4'),
(392, 'Container 10FT PHE', '3.00', '2.40', '2.60', 'UNIT', '18.72', 'kj4'),
(393, 'Long Basket COSL', '4.85', '1.15', '0.98', 'UNIT', '5.47', 'kj4'),
(394, 'Long Basket COSL 01', '4.51', '1.21', '0.95', 'UNIT', '5.18', 'kj4'),
(395, 'Stand Tubing BKI ', '8.54', '0.92', '0.77', 'Ea', '6.05', 'kj4'),
(396, 'Waste Basket', '1.56', '1.56', '1.65', 'UNIT', '4.02', 'kj4'),
(397, 'ESP unit Schlumberger', '3.00', '2.20', '2.50', 'UNIT', '16.50', 'kj4'),
(398, 'ESP unit Schlumberger 01', '3.00', '2.20', '1.26', 'UNIT', '8.32', 'kj4'),
(399, 'Material Chemical PHE', '1.22', '1.22', '1.07', 'Palet', '1.59', 'kj4'),
(400, 'Material PGF Powersys', '1.37', '1.37', '1.58', 'Palet', '2.97', 'kj4'),
(401, 'Material PGF Powersys 01', '1.30', '1.15', '2.05', 'Box', '3.06', 'kj4'),
(402, 'Tubing 2-7/8\"', '9.00', '0.09', '0.09', 'Joints', '0.07', 'kj4'),
(403, 'Tubing 4-1/2\"', '9.00', '0.14', '0.14', 'Joints', '0.18', 'kj4'),
(404, 'B/Tank Luas Birus', '1.20', '1.00', '1.17', 'B/Tank', '1.40', 'kj4'),
(405, 'Casing 13-3/8\"', '12.00', '0.37', '0.37', 'Joints', '1.64', 'kj4'),
(406, 'Offshore Basket PHE', '10.14', '1.21', '1.05', 'UNIT', '12.88', 'kj4'),
(407, 'Offshore Basket PHE 01', '6.15', '1.21', '1.05', 'UNIT', '7.81', 'kj4'),
(408, 'ESP unit Schlumberger 02', '10.62', '1.18', '0.59', 'UNIT', '7.39', 'kj4'),
(409, 'ESP unit Schlumberger 03', '2.89', '1.47', '1.27', 'UNIT', '5.40', 'kj4'),
(410, 'ESP unit Schlumberger 04', '3.10', '2.25', '2.50', 'UNIT', '17.44', 'kj4'),
(411, 'ESP unit Powerlift', '10.66', '1.13', '0.20', 'Skid', '2.41', 'kj4'),
(412, 'ESP unit Powerlift 01', '2.70', '2.00', '2.50', 'Reel', '13.50', 'kj4');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kegiatan`
--

CREATE TABLE `jenis_kegiatan` (
  `id_jenis` int NOT NULL,
  `nm_jenis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `jetty`
--

CREATE TABLE `jetty` (
  `id_jetty` int NOT NULL,
  `nm_jetty` varchar(50) DEFAULT NULL,
  `area` varchar(15) DEFAULT NULL,
  `status_jetty` varchar(15) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jetty`
--

INSERT INTO `jetty` (`id_jetty`, `nm_jetty`, `area`, `status_jetty`) VALUES
(1, 'JETTY KJ1', 'kj1', '0'),
(2, 'JETTY KJ2 A', 'kj2', '0'),
(3, 'JETTY KJ2 B', 'kj2', '0'),
(4, 'JETTY KJ4 A', 'kj4', '0'),
(5, 'JETTY KJ4 B', 'kj4', '0'),
(6, 'JETTY KJ5 A', 'kj5', '0'),
(7, 'JETTY KJ5 B', 'kj5', '0'),
(8, 'JETTY KJ5 C', 'kj5', '0');

-- --------------------------------------------------------

--
-- Table structure for table `job_order`
--

CREATE TABLE `job_order` (
  `id_joborder` varchar(15) NOT NULL,
  `kode_jovessel` varchar(15) DEFAULT NULL,
  `nm_kapal` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `agen_kapal` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tgl_masuk` date NOT NULL,
  `jm_masuk` time NOT NULL,
  `tgl_keluar` date DEFAULT NULL,
  `jm_keluar` time DEFAULT NULL,
  `pelabuhan_asal` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pelabuhan_tujuan` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_jenis` int NOT NULL DEFAULT '1',
  `nm_kegiatan` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `id_client` int DEFAULT NULL,
  `document_perintah` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `no_wo` varchar(50) DEFAULT NULL,
  `booking_cargo` decimal(6,0) DEFAULT NULL,
  `total_cargo` decimal(6,2) DEFAULT NULL,
  `sandar_kapal` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `doc_ptw` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `doc_pjsm` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `doc_lsap` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alat_berat` varchar(30) NOT NULL,
  `alat_berat2` varchar(30) DEFAULT NULL,
  `alat_berat3` varchar(30) DEFAULT NULL,
  `alat_berat4` varchar(30) DEFAULT NULL,
  `alat_berat5` varchar(30) DEFAULT NULL,
  `alat_beratsewa` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `area` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `progres_jo` decimal(6,2) NOT NULL,
  `mulai_kegiatan` datetime DEFAULT NULL,
  `finish_kegiatan` datetime DEFAULT NULL,
  `durasi` varchar(50) DEFAULT NULL,
  `time` bigint DEFAULT NULL,
  `status_jo` int NOT NULL DEFAULT '2',
  `id_checker` int DEFAULT NULL,
  `komentar` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_order`
--

INSERT INTO `job_order` (`id_joborder`, `kode_jovessel`, `nm_kapal`, `agen_kapal`, `tgl_masuk`, `jm_masuk`, `tgl_keluar`, `jm_keluar`, `pelabuhan_asal`, `pelabuhan_tujuan`, `id_jenis`, `nm_kegiatan`, `id_client`, `document_perintah`, `no_wo`, `booking_cargo`, `total_cargo`, `sandar_kapal`, `doc_ptw`, `doc_pjsm`, `doc_lsap`, `alat_berat`, `alat_berat2`, `alat_berat3`, `alat_berat4`, `alat_berat5`, `alat_beratsewa`, `area`, `progres_jo`, `mulai_kegiatan`, `finish_kegiatan`, `durasi`, `time`, `status_jo`, `id_checker`, `komentar`) VALUES
('JV00001', 'JV1-00001', 'KM. Sejahtera', 'Global Trans', '2021-01-08', '05:00:00', '2021-01-09', '07:00:00', 'MATAK', 'Jakarta', 1, 'Offloading', 2, 'Email tanggal 01 Januari 2021', NULL, '560', '565.32', 'JETTY KJ1', 'document_pendukung.pdf', 'document_pendukung.pdf', 'document_pendukung.pdf', 'CRANE KATO R-32 70 TON', 'Forklift F18 cap 8 Ton', 'Forklift F10 cap 3,5 Ton', 'NULL', 'NULL', 'NULL', 'kj1', '148.00', '2021-01-08 17:04:02', '2021-01-08 17:06:52', '2 menit ', 170, 4, 2, NULL),
('JV00002', 'JV2-00001', 'KM. SOKKA', 'Transglobal', '2021-01-09', '05:00:00', '2021-01-10', '07:00:00', 'Matak', 'JAKARTA', 1, 'Offloading', 3, 'Email tanggal 8 Januari 2021', NULL, '117', '124.96', 'JETTY KJ2 A', 'document_pendukung.pdf', 'document_pendukung.pdf', 'document_pendukung.pdf', 'CRANE KATO R-32 70 TON', 'Forklift F18 cap 8 Ton', 'Forklift F10 cap 3,5 Ton', 'NULL', 'NULL', 'NULL', 'kj2', '46.00', '2021-01-09 10:09:46', '2021-01-09 10:22:01', '12 menit ', 735, 4, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `log_system`
--

CREATE TABLE `log_system` (
  `id_log` int NOT NULL,
  `waktu` datetime NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_system`
--

INSERT INTO `log_system` (`id_log`, `waktu`, `nama_user`, `keterangan`) VALUES
(1, '2021-01-08 16:54:10', 'Admin OPS KJ1', 'logout'),
(2, '2021-01-08 16:57:58', 'admin', 'login'),
(3, '2021-01-08 17:03:40', 'Admin Operasional', 'logout'),
(4, '2021-01-08 17:03:52', 'checker', 'login'),
(5, '2021-01-08 17:06:58', 'Checker', 'logout'),
(6, '2021-01-08 17:07:06', 'admin', 'login'),
(7, '2021-01-08 17:07:56', 'Admin Operasional', 'logout'),
(8, '2021-01-09 10:04:42', 'admin', 'login'),
(9, '2021-01-09 10:09:24', 'Admin Operasional', 'logout'),
(10, '2021-01-09 10:09:34', 'checker', 'login'),
(11, '2021-01-09 10:22:11', 'Checker', 'logout'),
(12, '2021-01-09 10:22:36', 'manager', 'login'),
(13, '2021-01-09 10:22:52', 'Nurdiansah', 'logout'),
(14, '2021-01-09 10:25:11', 'admin', 'login');

-- --------------------------------------------------------

--
-- Table structure for table `timeline_joborder`
--

CREATE TABLE `timeline_joborder` (
  `id_timeline` int NOT NULL,
  `id_joborder` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `waktu_stop` datetime NOT NULL,
  `waktu_mulaikembali` datetime DEFAULT NULL,
  `keterangan_jeda` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timeline_joborder`
--

INSERT INTO `timeline_joborder` (`id_timeline`, `id_joborder`, `waktu_stop`, `waktu_mulaikembali`, `keterangan_jeda`) VALUES
(1, 'JV00002', '2021-01-09 10:17:05', '2021-01-09 10:17:14', 'Istirahaat'),
(2, 'JV00002', '2021-01-09 10:17:26', '2021-01-09 10:21:32', 'Istirahat');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` enum('checker','admin_ops','manajer_shorebase') NOT NULL,
  `id_divisi` varchar(15) DEFAULT NULL,
  `manajer` varchar(50) NOT NULL,
  `asmen` varchar(50) DEFAULT NULL,
  `area` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `email`, `level`, `id_divisi`, `manajer`, `asmen`, `area`) VALUES
(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'Admin Operasional', 'admin@gmail.com', 'admin_ops', NULL, 'Nurdiansah', NULL, 'Tanjung Priok'),
(2, 'checker', '827ccb0eea8a706c4c34a16891f84e7b', 'Checker', 'checker@gmail.com', 'checker', NULL, 'Nurdiansah', NULL, 'Tanjung Priok'),
(3, 'manager', '827ccb0eea8a706c4c34a16891f84e7b', 'Nurdiansah', 'nurdiansah@gmail.com', 'manajer_shorebase', NULL, '', NULL, 'Tanjung Priok');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actual_stevedoring`
--
ALTER TABLE `actual_stevedoring`
  ADD PRIMARY KEY (`id_as`),
  ADD KEY `id_joborder` (`id_joborder`),
  ADD KEY `id_joborder_2` (`id_joborder`),
  ADD KEY `id_joborder_3` (`id_joborder`);

--
-- Indexes for table `alat_berat`
--
ALTER TABLE `alat_berat`
  ADD PRIMARY KEY (`id_alatberat`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indexes for table `detail_joborder`
--
ALTER TABLE `detail_joborder`
  ADD PRIMARY KEY (`id_cargo`),
  ADD UNIQUE KEY `id_cargo` (`id_cargo`),
  ADD KEY `id_joborder` (`id_joborder`),
  ADD KEY `id_joborder_2` (`id_joborder`),
  ADD KEY `id_joborder_3` (`id_joborder`),
  ADD KEY `id_joborder_4` (`id_joborder`),
  ADD KEY `id_joborder_5` (`id_joborder`),
  ADD KEY `id_joborder_6` (`id_joborder`),
  ADD KEY `id_joborder_7` (`id_joborder`),
  ADD KEY `id_joborder_8` (`id_joborder`),
  ADD KEY `id_joborder_9` (`id_joborder`),
  ADD KEY `id_joborder_10` (`id_joborder`),
  ADD KEY `id_joborder_11` (`id_joborder`),
  ADD KEY `id_joborder_12` (`id_joborder`),
  ADD KEY `id_joborder_13` (`id_joborder`);

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
-- Indexes for table `jetty`
--
ALTER TABLE `jetty`
  ADD PRIMARY KEY (`id_jetty`);

--
-- Indexes for table `job_order`
--
ALTER TABLE `job_order`
  ADD PRIMARY KEY (`id_joborder`),
  ADD KEY `id_jenis` (`id_jenis`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_jenis_2` (`id_jenis`),
  ADD KEY `id_client_2` (`id_client`),
  ADD KEY `id_client_3` (`id_client`),
  ADD KEY `id_client_4` (`id_client`),
  ADD KEY `id_client_5` (`id_client`),
  ADD KEY `id_client_6` (`id_client`),
  ADD KEY `id_alatberat` (`alat_berat`),
  ADD KEY `id_alatberat2` (`alat_berat2`),
  ADD KEY `id_alatberat3` (`alat_berat3`),
  ADD KEY `id_alatberat4` (`alat_berat4`),
  ADD KEY `id_alatberat5` (`alat_berat5`);

--
-- Indexes for table `log_system`
--
ALTER TABLE `log_system`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `timeline_joborder`
--
ALTER TABLE `timeline_joborder`
  ADD PRIMARY KEY (`id_timeline`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actual_stevedoring`
--
ALTER TABLE `actual_stevedoring`
  MODIFY `id_as` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `alat_berat`
--
ALTER TABLE `alat_berat`
  MODIFY `id_alatberat` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jenis_barang`
--
ALTER TABLE `jenis_barang`
  MODIFY `id_jenis` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT for table `jenis_kegiatan`
--
ALTER TABLE `jenis_kegiatan`
  MODIFY `id_jenis` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jetty`
--
ALTER TABLE `jetty`
  MODIFY `id_jetty` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `log_system`
--
ALTER TABLE `log_system`
  MODIFY `id_log` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `timeline_joborder`
--
ALTER TABLE `timeline_joborder`
  MODIFY `id_timeline` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
