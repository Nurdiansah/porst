-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 07 Jul 2020 pada 03.49
-- Versi Server: 5.6.21
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
-- Struktur dari tabel `actual_stevedoring`
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `actual_stevedoring`
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
(44, 'JV00008', '10', '2020-07-06 14:20:03', '180005', 2, 'IBC TANK EMPTY', '8.10', '2.00', '8.10', 'Champion', '2', 'To Trucking');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alat_berat`
--

CREATE TABLE IF NOT EXISTS `alat_berat` (
`id_alatberat` int(11) NOT NULL,
  `nm_alatberat` varchar(30) NOT NULL,
  `jns_alatberat` varchar(30) NOT NULL,
  `area_alatberat` varchar(20) NOT NULL,
  `status_alatberat` varchar(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alat_berat`
--

INSERT INTO `alat_berat` (`id_alatberat`, `nm_alatberat`, `jns_alatberat`, `area_alatberat`, `status_alatberat`) VALUES
(1, 'CRANE KATO R-32 70 TON', 'CRANE', 'KJ4', '0'),
(2, 'CRANE KATO R-33 70 TON', 'CRANE', 'KJ4', '0'),
(3, 'CRANE KATO R-35 70 TON', 'CRANE', 'KJ4', '0'),
(4, 'FORKLIFT KALMAR F-19 15 TON', 'FORKLIFT', 'KJ4', '0'),
(5, 'FORKLIFT F-35  8 TON', 'FORKLIFT', 'KJ4', '0'),
(6, 'FORKLIFT F-33  3,5 TON', 'FORKLIFT', 'KJ4', '0'),
(7, 'FORKLIFT F-32  3,5 TON', 'FORKLIFT', 'KJ4', '0'),
(8, 'FORKLIFT F-31  3,5 TON', 'FORKLIFT', 'KJ4', '0'),
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
-- Struktur dari tabel `bkk`
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
-- Dumping data untuk tabel `bkk`
--

INSERT INTO `bkk` (`id_bkk`, `nm_vendor`, `no_bkk`, `tgl_pengajuan`, `tgl_pengajuankasir`, `tgl_verifikasimanager`, `tgl_verifikasidireksi`, `tgl_bkk`, `terbilang_bkk`, `nocek_bkk`, `keterangan`, `nilai_bkk`, `ppn_bkk`, `bll_bkk`, `jml_bkk`, `bank_tujuan`, `norek_tujuan`, `invoice`, `id_divisi`, `id_pemohon`, `id_manager`, `id_gm`, `id_direktur`, `dari_bank`, `dari_rekening`, `doc_lpj`, `status_bkk`) VALUES
(1, 'PT.Hipernet Indota', '016/BKK/EN/IX/19', '2019-09-26', '2019-09-26', '2019-09-26', '2019-09-26', '2019-09-26', 'Enam Juta Lima Ratus Enam Ribu ', '-', 'PEMBAYARAN INTERNET KJ4 PRIODE AGUSTUS 2019', 5909091, 10, 6000, '6506000', 'BCA', '00086002954', 'PT_EKA_NURI-2019-09.pdf', '2', '24', '31', NULL, '32', 'MANDIRI', '1408', 'contohlpj.pdf', '7'),
(2, 'PT. REMALA ABADI', NULL, '2019-10-01', NULL, NULL, NULL, '0000-00-00', 'Lima Juta Lima Ratus  Ribu ', NULL, 'Pembayaran Internet Hayam Wuruk Priode Oktober', 5000000, 10, 0, '5500000', 'BCA', '2303003614', 'INV_RA01-5746_01_10.19.pdf', '2', '24', NULL, NULL, NULL, NULL, NULL, '0', '3'),
(3, 'indihome', NULL, '2019-10-07', NULL, NULL, NULL, '0000-00-00', 'Tiga Ratus Sebelas Ribu ', NULL, 'Internet KJ5', 280000, 10, 3000, '311000', 'Virtual Account Mand', '90000000123', 'indihome_9014009006304201906.pdf', '2', '24', NULL, NULL, NULL, NULL, NULL, '0', '1'),
(4, 'PT. REMALA ABADI', NULL, '2019-10-01', '2019-10-08', '2019-10-08', '2019-10-08', '0000-00-00', 'Lima Juta Lima Ratus  Ribu ', NULL, 'Pembayaran Internet KJ4 Bandwith 10 Mbps', 5000000, 10, 0, '5500000', 'BCA', '2303003614', 'INV_RA01-5746_01_10.19.pdf', '2', '24', '31', NULL, '32', NULL, NULL, '0', '6'),
(8, 'INDIHOME', NULL, '2019-10-01', NULL, NULL, NULL, '0000-00-00', 'Tiga Ratus Sebelas Ribu ', NULL, 'Pembayaran Internet KJ5 ', 280000, 10, 3000, '311000', 'BCA', '2303003614', 'indihome_9014009006304201910.pdf', '2', '24', NULL, NULL, NULL, NULL, NULL, '0', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `client`
--

CREATE TABLE IF NOT EXISTS `client` (
`id_client` int(15) NOT NULL,
  `kd_client` varchar(10) DEFAULT NULL,
  `nm_client` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `client`
--

INSERT INTO `client` (`id_client`, `kd_client`, `nm_client`) VALUES
(1, 'PHE', 'PERTAMINA HULU ENERGI'),
(2, 'PREM', 'PREMIER OIL'),
(3, 'MEDC', 'MEDCO ENERGY'),
(4, 'STAR', 'STAR ENERGY'),
(5, 'PETRO', 'PETROGAS'),
(6, 'CONO', 'CONOCO'),
(7, 'BAK', 'BAKER');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_joborder`
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
-- Dumping data untuk tabel `detail_joborder`
--

INSERT INTO `detail_joborder` (`id_cargo`, `id_joborder`, `id_jenis`, `timeCargo`, `doc_no`, `qty_cargo`, `rincian_cargo`, `m3_cargo`, `ton_cargo`, `revton_cargo`, `remarks_cargo`, `status_cargo`, `cargo_final`, `row_version`, `keterangan`) VALUES
('IC000039', 'JV00001', '7', NULL, '15998', 0, 'Food STUFF  PT.STM', '0.00', '0.00', '0.00', 'Inco', '1', '0', '1', NULL),
('IC000040', 'JV00001', '7', NULL, '15999', 0, 'Food STUFF  PT.INDOCATEN', '0.00', '0.00', '0.00', 'Indocaten', '1', '0', '1', NULL),
('IC000041', 'JV00001', '6', NULL, '123', 0, 'Food Stuff', '0.00', '0.00', '0.00', 'Indocaten', '1', '0', '1', NULL),
('IC000042', 'JV00001', '8', NULL, '321', 0, 'TOTE TANK MEDCO', '0.00', '0.00', '0.00', 'Medco', '1', '0', '1', NULL),
('IC000043', 'JV00001', '8', NULL, '543', 0, 'TOTE TANK PREMIER OIL', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL),
('IC000045', 'JV00002', '7', NULL, '1500002', 2, 'DNV Container 10 FT', '37.80', '6.00', '37.80', 'Medco Energi', '1', '0', '1', NULL),
('IC000048', 'JV00002', '18', NULL, '1500005', 1, 'Iron Basket , c/w Lifting Set', '9.65', '4.00', '9.65', 'Halliburton', '1', '0', '1', NULL),
('IC000049', 'JV00002', '6', NULL, '1500001', 6, 'Empty Dry Container 20 FT', '257.28', '18.00', '257.28', 'GDSK', '1', '0', '1', NULL),
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
('IC000066', 'JV00005', '32', NULL, '150004', 153, 'Chemical MI Swaco', '264.69', '153.00', '264.69', 'MI Swaco', '1', '0', '1', NULL),
('IC000067', 'JV00005', '6', NULL, '1500029081', 6, 'Empty Food Stuff', '257.28', '21.00', '257.28', 'GDSK', '1', '0', '1', NULL),
('IC000068', 'JV00005', '6', NULL, '1500031902', 1, 'Sarku Equipment', '42.88', '5.00', '42.88', 'Sarku', '1', '0', '1', NULL),
('IC000069', 'JV00005', '6', NULL, '1500029082', 3, 'Empty Food Stuff', '128.64', '8.50', '128.64', 'Indoship', '1', '0', '1', NULL),
('IC000070', 'JV00005', '7', NULL, '1500029083', 1, 'Offshore Container', '18.90', '4.00', '18.90', 'OSCT', '1', '0', '1', NULL),
('IC000071', 'JV00005', '6', NULL, '1500031660', 5, 'Opentop Container PPLi', '214.40', '82.00', '214.40', 'PPLi', '1', '0', '1', NULL),
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
('IC000082', 'JV00008', '10', NULL, '180005', 0, 'IBC TANK EMPTY', '0.00', '0.00', '0.00', 'Champion', '1', '0', '2', NULL);

--
-- Trigger `detail_joborder`
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
-- Struktur dari tabel `doc_lo`
--

CREATE TABLE IF NOT EXISTS `doc_lo` (
`idDocLo` int(30) NOT NULL,
  `id_joborder` varchar(15) NOT NULL,
  `nmDoc` varchar(200) NOT NULL,
  `docLo` varchar(100) NOT NULL,
  `statusDoc` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `doc_lo`
--

INSERT INTO `doc_lo` (`idDocLo`, `id_joborder`, `nmDoc`, `docLo`, `statusDoc`) VALUES
(1, '0', 'JR KM Sejahtera 35', 'ALAT BERAT CRANE (1st ) 6 Oct to 6 Nov 18  JC 011.jpg', 0),
(2, '0', 'JR KM.SEJAHTERA 35', 'Contoh dok Manifest.pdf', 0),
(3, '0', 'JR KM.SEJAHTERA 35', 'Dok Job Report Kapal.docx', 0),
(4, '0', 'JR JV00002', 'INV_RA01-5746_01_10.19.pdf', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoice`
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
-- Struktur dari tabel `jenis_barang`
--

CREATE TABLE IF NOT EXISTS `jenis_barang` (
`id_jenis` int(11) NOT NULL,
  `nm_jenis` varchar(255) NOT NULL,
  `p` decimal(6,2) NOT NULL,
  `l` decimal(6,2) NOT NULL,
  `t` decimal(6,2) NOT NULL,
  `satuan_jenis` varchar(50) DEFAULT NULL,
  `volume_jenis` decimal(6,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_barang`
--

INSERT INTO `jenis_barang` (`id_jenis`, `nm_jenis`, `p`, `l`, `t`, `satuan_jenis`, `volume_jenis`) VALUES
(6, 'CONTAINER 20 FT', '6.06', '2.44', '2.90', 'UNIT', '42.88'),
(7, 'CONTAINER 10 FT', '2.99', '2.44', '2.59', 'UNIT', '18.90'),
(8, 'TOTE TANK METHANOL', '1.20', '1.05', '1.90', 'UNIT', '2.39'),
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
(23, 'Mini Container', '1.66', '1.92', '2.76', 'UNIT', '8.80'),
(24, 'Dry Container', '2.99', '2.43', '2.59', 'UNIT', '18.82'),
(25, 'Chiller Container ', '2.99', '2.43', '2.59', 'UNIT', '18.82'),
(26, 'Open Top Container 10FT', '2.99', '2.43', '1.28', 'UNIT', '9.30'),
(27, 'Open Top Container 20FT', '6.05', '2.43', '1.28', 'UNIT', '18.82'),
(28, 'Cylinder Rack', '1.37', '0.89', '2.20', 'UNIT', '2.68'),
(29, 'Chemical Barite', '1.20', '1.20', '1.00', 'Palet', '1.44'),
(30, 'Oli Drum', '1.20', '1.20', '1.15', 'Palet', '1.66'),
(31, 'Chemical Bentonite', '1.20', '1.20', '1.10', 'Palet', '1.58'),
(32, 'Chemical MI Swaco', '1.20', '1.20', '1.20', 'Palet', '1.73'),
(33, 'Offshore Basket SN', '13.00', '1.20', '1.20', '12', '18.72'),
(34, 'Offshore Basket SNI', '13.00', '1.20', '1.20', 'UNIT', '18.72'),
(36, 'Chemical Drum', '1.20', '1.20', '1.20', 'Palet', '1.73'),
(37, 'Life raft', '1.41', '1.20', '0.80', 'W-Box', '1.35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_kegiatan`
--

CREATE TABLE IF NOT EXISTS `jenis_kegiatan` (
`id_jenis` int(15) NOT NULL,
  `nm_jenis` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_kegiatan`
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
-- Struktur dari tabel `job_order`
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
-- Dumping data untuk tabel `job_order`
--

INSERT INTO `job_order` (`id_joborder`, `nm_kapal`, `agen_kapal`, `tgl_masuk`, `jm_masuk`, `tgl_keluar`, `jm_keluar`, `pelabuhan_asal`, `pelabuhan_tujuan`, `id_jenis`, `nm_kegiatan`, `id_client`, `document_perintah`, `booking_cargo`, `total_cargo`, `sandar_kapal`, `doc_ptw`, `doc_pjsm`, `doc_lsap`, `alat_berat`, `alat_berat2`, `alat_berat3`, `alat_berat4`, `alat_berat5`, `alat_beratsewa`, `area`, `progres_jo`, `mulai_kegiatan`, `finish_kegiatan`, `durasi`, `status_jo`, `komentar`) VALUES
('JV00001', 'PAN MARINE', 'KANAYA', '2020-01-08', '20:00:00', '0000-00-00', '00:00:00', 'PAMELOKAN', 'JAKARTA', 1, 'Offloading', 3, 'Email Tanggal 02 Januari 2020', '0', '577.54', 'JETTY KJ2 A', 'contoh-bukti-pembayaran.pdf', 'contoh-bukti-pembayaran.pdf', 'contoh-bukti-pembayaran.pdf', 'CRANE KATO R-32 70 TON', 'FORKLIFT F-31  3,5 TON', 'FORKLIFT F-32  3,5 TON', 'NULL', 'NULL', 'NULL', 'kj1', '270.20', '2020-01-17 15:07:23', '2020-01-21 15:21:48', '4 hari 0 jam 14 menit ', 6, NULL),
('JV00002', 'KM.Sejahtera 35', 'PT.Sinar Pagoda', '2020-01-29', '03:30:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 27 Januari 2020', '0', NULL, 'JETTY KJ2 A', 'PTW Medco (1).jpg', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F18 cap 8 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F08 cap 2,5 Ton', 'NULL', 'NULL', 'kj1', '80.00', '2020-02-06 14:07:26', NULL, NULL, 2, NULL),
('JV00003', 'KM.Sejahtera 35', 'PT.Sinar Pagoda', '2020-01-30', '08:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 27 Januari 2020', '0', '551.92', 'JETTY KJ2 A', 'PTW Medco.jpg', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F18 cap 8 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F08 cap 2,5 Ton', 'NULL', 'NULL', 'kj1', '163.50', '2020-02-12 14:45:39', '2020-02-12 14:49:17', '3 menit ', 4, NULL),
('JV00004', 'KM.Sejahtera 35', 'PT.Sinar Pagoda', '2020-05-21', '23:30:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 18 Mei 2020', '0', '1119.02', 'JETTY KJ2 A', 'PTW Medco (1).jpg', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'Forklift F08 cap 2,5 Ton', 'NULL', 'NULL', 'kj1', '292.20', '2020-05-28 14:05:29', '2020-05-28 14:23:09', '17 menit ', 4, NULL),
('JV00005', 'KM.Sejahtera 36', 'PT.Sinar Pagoda', '2020-06-03', '07:30:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 31 Mei 2020', '0', NULL, 'JETTY KJ2 A', 'PTW Medco (1).jpg', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F18 cap 8 Ton', 'Forklift F15 cap 3 Ton', 'NULL', 'NULL', 'NULL', 'kj1', '273.50', NULL, NULL, NULL, 2, NULL),
('JV00006', 'GNA', 'JU', '2020-07-01', '02:01:00', '2020-07-03', '14:12:00', 'MATAK', 'TJ PRIOK', 1, 'Loading', 1, 'TEST/V1/XXX', '0', NULL, 'JETTY KJ1', 'ISO2USB.exe', 'ISO2USB.exe', 'ISO2USB.exe', 'CRANE TADANO', 'NULL', 'NULL', 'NULL', 'NULL', 'NULL', 'kj1', '90.00', '2020-07-03 13:45:12', NULL, NULL, 2, NULL),
('JV00007', 'KM.Sejahtera 35', 'PT.Sinar Pagoda', '2020-06-27', '05:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email tanggal 25 Juni 2020', '0', '501.38', 'JETTY KJ2 A', 'PTW Medco (1).jpg', 'PJSM Medco.jpg', 'List Personil & HDE New.xlsx', 'Crane R36 cap 110 Ton', 'Forklift F08 cap 2,5 Ton', 'Forklift F15 cap 3 Ton', 'NULL', 'NULL', 'NULL', 'kj1', '228.00', '2020-07-06 08:30:17', '2020-07-06 08:35:02', '4 menit ', 4, NULL),
('JV00008', 'KM. Sejahtera 35', 'Sinar Pagoda', '2020-07-06', '05:00:00', '0000-00-00', '00:00:00', 'Matak', 'Jakarta', 1, 'Offloading', 3, 'Email Tanggal 04 Juli 2020', '0', '286.37', 'JETTY KJ2 A', 'document_pendukung.pdf', 'document_pendukung.pdf', 'document_pendukung.pdf', 'Crane R36 cap 110 Ton', 'Forklift F08 cap 2,5 Ton', 'Forklift F15 cap 3 Ton', 'Forklift F18 cap 8 Ton', 'NULL', 'NULL', 'kj1', '146.30', '2020-07-06 13:47:21', '2020-07-06 14:20:26', '33 menit ', 6, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluaran`
--

CREATE TABLE IF NOT EXISTS `pengeluaran` (
`id` int(11) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `kode_brg` varchar(5) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tgl_keluar` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengeluaran`
--

INSERT INTO `pengeluaran` (`id`, `unit`, `kode_brg`, `jumlah`, `tgl_keluar`) VALUES
(3, 'mekanik', 'BR104', 1, '2019-07-31'),
(4, 'mekanik', 'BR095', 2, '2019-07-31'),
(5, 'mekanik', 'BR084', 2, '2019-07-31'),
(6, 'mekanik', 'BR091', 1, '2019-08-22');

--
-- Trigger `pengeluaran`
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
-- Struktur dari tabel `permintaan`
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
-- Dumping data untuk tabel `permintaan`
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
-- Struktur dari tabel `satuan`
--

CREATE TABLE IF NOT EXISTS `satuan` (
`id_satuan` int(15) NOT NULL,
  `nm_satuan` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `satuan`
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
-- Struktur dari tabel `sementara`
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
-- Dumping data untuk tabel `sementara`
--

INSERT INTO `sementara` (`id_sementara`, `unit`, `kode_brg`, `id_jenis`, `jumlah`, `tgl_permintaan`, `nama_tukang`, `status`) VALUES
(9, 'suleman', 'BR018', 1, 10, '2019-08-02', 'Agus', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stokbarang`
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
-- Dumping data untuk tabel `stokbarang`
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
-- Struktur dari tabel `tarif_shorebase`
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
-- Dumping data untuk tabel `tarif_shorebase`
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
-- Struktur dari tabel `timeline_cargo`
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
-- Dumping data untuk tabel `timeline_cargo`
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
-- Struktur dari tabel `timeline_joborder`
--

CREATE TABLE IF NOT EXISTS `timeline_joborder` (
`id_timeline` int(11) NOT NULL,
  `id_joborder` varchar(15) CHARACTER SET utf8 NOT NULL,
  `waktu_stop` datetime NOT NULL,
  `waktu_mulaikembali` datetime DEFAULT NULL,
  `keterangan_jeda` varchar(200) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `timeline_joborder`
--

INSERT INTO `timeline_joborder` (`id_timeline`, `id_joborder`, `waktu_stop`, `waktu_mulaikembali`, `keterangan_jeda`) VALUES
(2, 'JV00001', '2020-01-18 10:51:04', '2020-01-18 12:50:42', 'Istirahat'),
(3, 'JV00001', '2020-01-20 11:52:46', '2020-01-20 14:52:52', 'Menunggu truck'),
(4, 'JV00004', '2020-05-28 14:09:05', '2020-05-28 14:19:49', 'Istirahat , Persiapan sholat maghrib dan pergantian Crew'),
(5, 'JV00004', '2020-05-28 14:21:36', '2020-05-28 14:22:44', 'Istirahat , lanjut jam 01.10 Wib'),
(6, 'JV00002', '2020-06-25 10:12:29', '2020-06-25 10:12:58', 'makan siang'),
(7, 'JV00007', '2020-07-06 08:33:45', '2020-07-06 08:34:37', 'Stop , Istirahat'),
(8, 'JV00008', '2020-07-06 14:12:07', '2020-07-06 14:17:06', 'Stop Kegiatan Istirahat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
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
-- Dumping data untuk tabel `user`
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
MODIFY `id_as` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
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
MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
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
MODIFY `id_timeline` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `job_order`
--
ALTER TABLE `job_order`
ADD CONSTRAINT `job_order_ibfk_1` FOREIGN KEY (`id_jenis`) REFERENCES `jenis_kegiatan` (`id_jenis`) ON DELETE NO ACTION ON UPDATE CASCADE,
ADD CONSTRAINT `job_order_ibfk_2` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
