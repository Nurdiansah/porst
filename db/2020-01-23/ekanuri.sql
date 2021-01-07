-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 23, 2020 at 12:04 
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

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
(13, 'JV00001', '8', '2020-01-20 16:08:50', '543', 3, 'TOTE TANK PREMIER OIL', '7.17', '9.51', '9.51', 'Premier Oil', '1', 'To Jetty');

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

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
(21, 'Forklift F18 cap 8 Ton', 'FORKLIFT', 'KJ1', '0');

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
  `nm_client` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
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
('IC000043', 'JV00001', '8', NULL, '543', 0, 'TOTE TANK PREMIER OIL', '0.00', '0.00', '0.00', 'Premier Oil', '1', '0', '1', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_barang`
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
(28, 'Cylinder Rack', '1.37', '0.89', '2.20', 'UNIT', '2.68');

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

INSERT INTO `job_order` (`id_joborder`, `nm_kapal`, `agen_kapal`, `tgl_masuk`, `jm_masuk`, `tgl_keluar`, `jm_keluar`, `pelabuhan_asal`, `pelabuhan_tujuan`, `id_jenis`, `nm_kegiatan`, `id_client`, `document_perintah`, `booking_cargo`, `total_cargo`, `sandar_kapal`, `doc_ptw`, `doc_pjsm`, `doc_lsap`, `alat_berat`, `alat_berat2`, `alat_berat3`, `alat_berat4`, `alat_berat5`, `alat_beratsewa`, `area`, `progres_jo`, `mulai_kegiatan`, `finish_kegiatan`, `durasi`, `status_jo`, `komentar`) VALUES
('JV00001', 'PAN MARINE', 'KANAYA', '2020-01-08', '20:00:00', '0000-00-00', '00:00:00', 'PAMELOKAN', 'JAKARTA', 1, 'Offloading', 3, 'Email Tanggal 02 Januari 2020', '0', '577.54', 'JETTY KJ2 A', 'contoh-bukti-pembayaran.pdf', 'contoh-bukti-pembayaran.pdf', 'contoh-bukti-pembayaran.pdf', 'CRANE KATO R-32 70 TON', 'FORKLIFT F-31  3,5 TON', 'FORKLIFT F-32  3,5 TON', 'NULL', 'NULL', 'NULL', 'kj1', '270.20', '2020-01-17 15:07:23', '2020-01-21 15:21:48', '4 hari 0 jam 14 menit ', 6, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timeline_joborder`
--

INSERT INTO `timeline_joborder` (`id_timeline`, `id_joborder`, `waktu_stop`, `waktu_mulaikembali`, `keterangan_jeda`) VALUES
(2, 'JV00001', '2020-01-18 10:51:04', '2020-01-18 12:50:42', 'Istirahat'),
(3, 'JV00001', '2020-01-20 11:52:46', '2020-01-20 14:52:52', 'Menunggu truck');

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
(14, 'hartono', '9e3da5af734c9ad2fc92f814fe9c28d5', 'Hartono', '', 'manajer_shorebase', NULL, '', '', ''),
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
MODIFY `id_as` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `alat_berat`
--
ALTER TABLE `alat_berat`
MODIFY `id_alatberat` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
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
MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
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
MODIFY `id_timeline` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `job_order`
--
ALTER TABLE `job_order`
ADD CONSTRAINT `job_order_ibfk_1` FOREIGN KEY (`id_jenis`) REFERENCES `jenis_kegiatan` (`id_jenis`) ON DELETE NO ACTION ON UPDATE CASCADE,
ADD CONSTRAINT `job_order_ibfk_2` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
