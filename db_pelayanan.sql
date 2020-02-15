-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2020 at 08:05 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_pelayanan`
--

-- --------------------------------------------------------

--
-- Table structure for table `izin_keramaian`
--

CREATE TABLE IF NOT EXISTS `izin_keramaian` (
  `Nama Lengkap` varchar(30) NOT NULL,
  `NIK / No KTP` int(16) NOT NULL,
  `No KK` int(16) NOT NULL,
  `Nama Kepala Keluarga` varchar(20) NOT NULL,
  `Jenis Kelamin` text NOT NULL,
  `Alamat Tempat Tinggal` varchar(50) NOT NULL,
  `Agama` text NOT NULL,
  `Status` char(15) NOT NULL,
  `Pendidikan` char(15) NOT NULL,
  `Kewarganegaraan` char(15) NOT NULL,
  `Keperluan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `izin_ortu_suami_istri`
--

CREATE TABLE IF NOT EXISTS `izin_ortu_suami_istri` (
  `id_izin_ortu_suami_istri` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `tempatlahir` varchar(25) NOT NULL,
  `tanggallahir` varchar(25) NOT NULL,
  `wn` varchar(15) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `pekerjaan` varchar(15) NOT NULL,
  `alamat` varchar(80) NOT NULL,
  `Selaku` varchar(15) NOT NULL,
  `izin_nama` varchar(30) NOT NULL,
  `izin_tempatlahir` varchar(25) NOT NULL,
  `izin_tanggallahir` varchar(25) NOT NULL,
  `izin_wn` varchar(15) NOT NULL,
  `izin_agama` varchar(10) NOT NULL,
  `izin_pekerjaan` varchar(15) NOT NULL,
  `izin_alamat` varchar(80) NOT NULL,
  `izin_selaku` varchar(15) NOT NULL,
  `negara_tujuan` varchar(20) NOT NULL,
  `nama_pptkis` varchar(30) NOT NULL,
  `sebagai` varchar(20) NOT NULL,
  `masa_kontrak` varchar(15) NOT NULL,
  PRIMARY KEY (`id_izin_ortu_suami_istri`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `izin_ramai`
--

CREATE TABLE IF NOT EXISTS `izin_ramai` (
  `id_izin_ramai` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `no_kk` varchar(16) NOT NULL,
  `kepala_kk` varchar(30) NOT NULL,
  `ttl` varchar(30) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `alamat` varchar(80) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `pendidikan` varchar(25) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `wn` varchar(15) NOT NULL,
  `jenis_keramaian` varchar(10) NOT NULL,
  `berlaku_dari` varchar(20) NOT NULL,
  `berlaku_sampai` varchar(20) NOT NULL,
  `keperluan` varchar(30) NOT NULL,
  PRIMARY KEY (`id_izin_ramai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ket_beda_nama`
--

CREATE TABLE IF NOT EXISTS `ket_beda_nama` (
  `id_ket_beda_nama` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(25) NOT NULL,
  `ttl` varchar(30) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `form_identitas` varchar(16) NOT NULL,
  `form_nama` varchar(25) NOT NULL,
  `form_ttl` varchar(30) NOT NULL,
  `form_jenis_kelamin` varchar(10) NOT NULL,
  `form_alamat` varchar(40) NOT NULL,
  `form_agama` varchar(10) NOT NULL,
  `form_pekerjaan` varchar(20) NOT NULL,
  `form_keterangan` varchar(30) NOT NULL,
  PRIMARY KEY (`id_ket_beda_nama`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ket_domisili_usaha`
--

CREATE TABLE IF NOT EXISTS `ket_domisili_usaha` (
  `id_ket_domisili_usaha` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `ttl` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `pendidikan` varchar(20) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `kewarganegaraan` varchar(10) NOT NULL,
  `jns_usaha` varchar(30) NOT NULL,
  PRIMARY KEY (`id_ket_domisili_usaha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ket_jamkesos`
--

CREATE TABLE IF NOT EXISTS `ket_jamkesos` (
  `id_ket_jamkesos` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) NOT NULL,
  `no_jamkesmas` varchar(16) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `ttl` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `status` varchar(15) NOT NULL,
  `pendidikan` varchar(15) NOT NULL,
  `pekerjaan` varchar(15) NOT NULL,
  `keperluan` varchar(20) NOT NULL,
  PRIMARY KEY (`id_ket_jamkesos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ket_jamkesos`
--

INSERT INTO `ket_jamkesos` (`id_ket_jamkesos`, `nama`, `no_jamkesmas`, `no_ktp`, `ttl`, `jenis_kelamin`, `alamat`, `agama`, `status`, `pendidikan`, `pekerjaan`, `keperluan`) VALUES
(7, 'mawardi', '4345427', '6956543234554', 'BREBES, 23 APRIL 1998', 'Laki-laki', 'Desa Pamulihan RT 04/06 Kec. Larangan Ka', 'Islam', 'belum menikah', 'SLTA', 'wiraswasta', 'ghfghfhf');

-- --------------------------------------------------------

--
-- Table structure for table `ket_jual_beli`
--

CREATE TABLE IF NOT EXISTS `ket_jual_beli` (
  `id_ket_jual_beli` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(25) NOT NULL,
  `ttl` varchar(30) NOT NULL,
  `usia` varchar(15) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `form_nama` varchar(25) NOT NULL,
  `form_identitas` varchar(16) NOT NULL,
  `form_ttl` varchar(30) NOT NULL,
  `form_jenis_kelamis` varchar(10) NOT NULL,
  `form_alamat` varchar(40) NOT NULL,
  `form_pekerjaan` varchar(20) NOT NULL,
  `form_keterangan` varchar(30) NOT NULL,
  `form_barang` varchar(20) NOT NULL,
  `form_jenis` varchar(20) NOT NULL,
  PRIMARY KEY (`id_ket_jual_beli`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ket_kehilangan`
--

CREATE TABLE IF NOT EXISTS `ket_kehilangan` (
  `id_ket_kehilangan` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(25) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `no_kk` varchar(16) NOT NULL,
  `kepala_kk` varchar(25) NOT NULL,
  `ttl` varchar(30) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `alamat` varchar(60) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `status` varchar(15) NOT NULL,
  `pendidikan` varchar(15) NOT NULL,
  `pekerjaan` varchar(15) NOT NULL,
  `warga_negara` varchar(15) NOT NULL,
  `form_barang` varchar(20) NOT NULL,
  `form_rincian` varchar(65) NOT NULL,
  `form_keterangan` varchar(60) NOT NULL,
  PRIMARY KEY (`id_ket_kehilangan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ket_kehilangan`
--

INSERT INTO `ket_kehilangan` (`id_ket_kehilangan`, `nama`, `no_ktp`, `no_kk`, `kepala_kk`, `ttl`, `sex`, `alamat`, `agama`, `status`, `pendidikan`, `pekerjaan`, `warga_negara`, `form_barang`, `form_rincian`, `form_keterangan`) VALUES
(1, 'dfgjdkfjgdk', '84758347847597', '488749578375', '', 'jdnfgkjdskjfgnksdjghkh', 'Laki-laki', 'xcv,v', 'Islam', '', '', 'mdnfgmndkfg', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ket_ktp_proses`
--

CREATE TABLE IF NOT EXISTS `ket_ktp_proses` (
  `id_ket_ktp_proses` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `ttl` varchar(40) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `alamat` varchar(80) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `status` varchar(15) NOT NULL,
  `pekerjaan` varchar(15) NOT NULL,
  `warga_negara` varchar(10) NOT NULL,
  PRIMARY KEY (`id_ket_ktp_proses`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ket_ktp_proses`
--

INSERT INTO `ket_ktp_proses` (`id_ket_ktp_proses`, `nama`, `ttl`, `sex`, `alamat`, `agama`, `status`, `pekerjaan`, `warga_negara`) VALUES
(1, 'mohammad rusdi', 'brebes, 15 januari 1996', 'Laki-laki', 'RT 04 RW 06 Desa Pamulihan Kec. Larangan Brebes', 'Islam', 'belum menikah', 'WIRAUSAHA', 'WNI');

-- --------------------------------------------------------

--
-- Table structure for table `ket_lahir`
--

CREATE TABLE IF NOT EXISTS `ket_lahir` (
  `id_ket_lahir` int(5) NOT NULL AUTO_INCREMENT,
  `hari` varchar(11) NOT NULL,
  `tgl_lahir` varchar(20) NOT NULL,
  `waktu` varchar(20) NOT NULL,
  `tempat` varchar(80) NOT NULL,
  `sex_anak` varchar(10) NOT NULL,
  `nama_anak` varchar(30) NOT NULL,
  `anak_ke` varchar(3) NOT NULL,
  `nama_ibu` varchar(30) NOT NULL,
  `nik_ibu` varchar(16) NOT NULL,
  `umur_ibu` varchar(10) NOT NULL,
  `ttl_ibu` varchar(80) NOT NULL,
  `pekerjaan_ibu` varchar(15) NOT NULL,
  `alamat_ibu` varchar(80) NOT NULL,
  `nama_ayah` varchar(30) NOT NULL,
  `nik_ayah` varchar(16) NOT NULL,
  `umur_ayah` varchar(10) NOT NULL,
  `pekerjaan_ayah` varchar(15) NOT NULL,
  `alamat_ayah` varchar(80) NOT NULL,
  `nama_pelapor` varchar(30) NOT NULL,
  `nik_pelapor` varchar(16) NOT NULL,
  `umur_pelapor` varchar(15) NOT NULL,
  `pekerjaan_pelapor` varchar(15) NOT NULL,
  `alamat_pelapor` varchar(80) NOT NULL,
  `hubungan_pelapor` varchar(30) NOT NULL,
  `ttl_pelapor` varchar(40) NOT NULL,
  `nama_saksi1` varchar(30) NOT NULL,
  `nik_saksi1` varchar(16) NOT NULL,
  `ttl_saksi1` varchar(40) NOT NULL,
  `umur_saksi1` varchar(10) NOT NULL,
  `wn_saksi1` varchar(10) NOT NULL,
  `pekerjaan_saksi1` varchar(15) NOT NULL,
  `alamat_saksi1` varchar(80) NOT NULL,
  `nama_saksi2` varchar(30) NOT NULL,
  `nik_saksi2` varchar(16) NOT NULL,
  `ttl_saksi2` varchar(40) NOT NULL,
  `umur_saksi2` varchar(15) NOT NULL,
  `wn_saksi2` varchar(10) NOT NULL,
  `pekerjaan_saksi2` varchar(15) NOT NULL,
  `alamat_saksi2` varchar(80) NOT NULL,
  PRIMARY KEY (`id_ket_lahir`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ket_mati`
--

CREATE TABLE IF NOT EXISTS `ket_mati` (
  `id_ket_mati` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `ttl` varchar(40) NOT NULL,
  `agama` varchar(11) NOT NULL,
  `alamat` varchar(80) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `tgl` date NOT NULL,
  `jam` time NOT NULL,
  `tempat` varchar(80) NOT NULL,
  `sebab` varchar(40) NOT NULL,
  `nama_pelapor` varchar(30) NOT NULL,
  `nik_pelapor` varchar(16) NOT NULL,
  `ttl_pelapor` varchar(30) NOT NULL,
  `pekerjaan_pelapor` varchar(20) NOT NULL,
  `alamat_pelapor` varchar(80) NOT NULL,
  `hubungan_pelapor` varchar(20) NOT NULL,
  PRIMARY KEY (`id_ket_mati`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ket_mati`
--

INSERT INTO `ket_mati` (`id_ket_mati`, `nama`, `nik`, `sex`, `ttl`, `agama`, `alamat`, `hari`, `tgl`, `jam`, `tempat`, `sebab`, `nama_pelapor`, `nik_pelapor`, `ttl_pelapor`, `pekerjaan_pelapor`, `alamat_pelapor`, `hubungan_pelapor`) VALUES
(1, ' satria', ' 697654664567667', 'Laki-laki', ' brebes, 15 januari 1981', 'Islam', ' RT 04 RW 06 Desa Pamulihan Kec. Larangan Brebes', ' JUMAT', '2019-07-12', '14:11:00', ' Rumah keluarga, Desa Pamulihan RT 04/06 kec. Larangan Kab.brebes', ' kjhdjggjh', ' mardianto', ' 762387272574274', ' Brebes. 21 April 1989', ' wiraswasta', ' Desa Pamulihan, RT 02/06 kec. Larangan Kab. Brebes Prov. Jawa tengah', ' adik almarhum');

-- --------------------------------------------------------

--
-- Table structure for table `ket_nikah`
--

CREATE TABLE IF NOT EXISTS `ket_nikah` (
  `id_nikah` int(5) NOT NULL AUTO_INCREMENT,
  `nama_pria` varchar(30) NOT NULL,
  `nik_pria` varchar(16) NOT NULL,
  `kk_pria` varchar(16) NOT NULL,
  `tempatlahir_pria` varchar(20) NOT NULL,
  `tanggallahir_pria` varchar(20) NOT NULL,
  `wn_pria` varchar(15) NOT NULL,
  `agama_pria` varchar(15) NOT NULL,
  `pekerjaan_pria` varchar(20) NOT NULL,
  `alamat_pria` varchar(80) NOT NULL,
  `status_kawin_pria` varchar(15) NOT NULL,
  `jumlah_istri` varchar(3) NOT NULL,
  `nama_ayah_pria` varchar(30) NOT NULL,
  `tempatlahir_ayah_pria` varchar(20) NOT NULL,
  `tanggallahir_ayah_pria` varchar(20) NOT NULL,
  `wn_ayah_pria` varchar(15) NOT NULL,
  `agama_ayah_pria` varchar(15) NOT NULL,
  `pekerjaan_ayah_pria` varchar(20) NOT NULL,
  `alamat_ayah_pria` varchar(80) NOT NULL,
  `nama_ibu_pria` varchar(30) NOT NULL,
  `tempatlahir_ibu_pria` varchar(20) NOT NULL,
  `tanggallahir_ibu_pria` varchar(20) NOT NULL,
  `wn_ibu_pria` varchar(15) NOT NULL,
  `agama_ibu_pria` varchar(15) NOT NULL,
  `pekerjaan_ibu_pria` varchar(15) NOT NULL,
  `alamat_ibu_pria` varchar(80) NOT NULL,
  `istri_dulu` varchar(35) NOT NULL,
  `binti` varchar(20) NOT NULL,
  `tempatlahir_istri_dulu` varchar(20) NOT NULL,
  `tanggallahir_istri_dulu` varchar(20) NOT NULL,
  `wn_istri_dulu` varchar(15) NOT NULL,
  `agama_istri_dulu` varchar(15) NOT NULL,
  `pek_istri_dulu` varchar(20) NOT NULL,
  `alamat_istri_dulu` varchar(80) NOT NULL,
  `ket_istri_dulu` varchar(20) NOT NULL,
  `nama_wanita` varchar(35) NOT NULL,
  `nik_wanita` varchar(16) NOT NULL,
  `kk_wanita` varchar(16) NOT NULL,
  `tempatlahir_wanita` varchar(20) NOT NULL,
  `tanggallahir_wanita` varchar(20) NOT NULL,
  `wn_wanita` varchar(15) NOT NULL,
  `agama_wanita` varchar(15) NOT NULL,
  `pekerjaan_wanita` varchar(20) NOT NULL,
  `alamat_wanita` varchar(80) NOT NULL,
  `status_kawin_wanita` varchar(20) NOT NULL,
  `nama_ayah_wanita` varchar(15) NOT NULL,
  `tempatlahir_ayah_wanita` varchar(20) NOT NULL,
  `tanggallahir_ayah_wanita` varchar(20) NOT NULL,
  `wn_ayah_wanita` varchar(15) NOT NULL,
  `agama_ayah_wanita` varchar(15) NOT NULL,
  `pekerjaan_ayah_wanita` varchar(20) NOT NULL,
  `alamat_ayah_wanita` varchar(80) NOT NULL,
  `nama_ibu_wanita` varchar(30) NOT NULL,
  `tempatlahir_ibu_wanita` varchar(20) NOT NULL,
  `tanggallahir_ibu_wanita` varchar(30) NOT NULL,
  `wn_ibu_wanita` varchar(15) NOT NULL,
  `agama_ibu_wanita` varchar(15) NOT NULL,
  `pekerjaan_ibu_wanita` varchar(15) NOT NULL,
  `alamat_ibu_wanita` varchar(80) NOT NULL,
  `nama_suami_dulu` varchar(30) NOT NULL,
  `bin_suami_dulu` varchar(20) NOT NULL,
  `tempatlahir_suami_dulu` varchar(20) NOT NULL,
  `tanggallahir_suami_dulu` varchar(20) NOT NULL,
  `wn_suami_dulu` varchar(15) NOT NULL,
  `agama_suami_dulu` varchar(15) NOT NULL,
  `pek_suami_dulu` varchar(20) NOT NULL,
  `alamat_suami_dulu` varchar(80) NOT NULL,
  `ket_suami_dulu` int(11) NOT NULL,
  `wali` varchar(30) NOT NULL,
  `bin_wali` varchar(20) NOT NULL,
  `tempatlahir_wali` varchar(20) NOT NULL,
  `tanggallahir_wali` varchar(20) NOT NULL,
  `wn_wali` varchar(15) NOT NULL,
  `agama_wali` varchar(15) NOT NULL,
  `pek_wali` varchar(20) NOT NULL,
  `alamat_wali` varchar(80) NOT NULL,
  `hub_wali` varchar(25) NOT NULL,
  `hari_nikah` varchar(10) NOT NULL,
  `tanggal_nikah` varchar(20) NOT NULL,
  `jam_nikah` varchar(10) NOT NULL,
  `mas_kawin` varchar(30) NOT NULL,
  `tunai` varchar(20) NOT NULL,
  `tempat_nikah` varchar(20) NOT NULL,
  PRIMARY KEY (`id_nikah`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ket_pengantar`
--

CREATE TABLE IF NOT EXISTS `ket_pengantar` (
  `id_ket_pengantar` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `ttl` varchar(20) NOT NULL,
  `usia` varchar(10) NOT NULL,
  `wn` varchar(15) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `alamat` varchar(80) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `no_kk` varchar(16) NOT NULL,
  `keperluan` varchar(30) NOT NULL,
  `mulai_berlaku` varchar(20) NOT NULL,
  `tgl_akhir` varchar(20) NOT NULL,
  `gol_darah` varchar(5) NOT NULL,
  PRIMARY KEY (`id_ket_pengantar`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ket_pengantar`
--

INSERT INTO `ket_pengantar` (`id_ket_pengantar`, `nama`, `ttl`, `usia`, `wn`, `agama`, `sex`, `pekerjaan`, `alamat`, `no_ktp`, `no_kk`, `keperluan`, `mulai_berlaku`, `tgl_akhir`, `gol_darah`) VALUES
(1, 'dfgjdkfjgdk', 'jdnfgkjdskjfgnksdjgh', '24 Tahun', 'ksjdfkjsdkfjs', 'Islam', 'Laki-laki', 'mdnfgmndkfg', 'xcv,v', '84758347847597', '488749578375', 'xmnvmnxkv', '2019-08-21', '2019-12-20', 'dmn'),
(4, 'nnnnbbxb', 'nbvmdjvjb', 'nedbfbjebb', 'efefr', 'Islam', 'Laki-laki', 'efewfefef', 'mndebfnbnef', '656645747', '7654756455', 'efrf', '', '', 'nvnfd');

-- --------------------------------------------------------

--
-- Table structure for table `ket_pergi_kawin`
--

CREATE TABLE IF NOT EXISTS `ket_pergi_kawin` (
  `id_ket_pergi_kawin` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `ttl` varchar(30) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `alamat` varchar(80) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `status` varchar(25) NOT NULL,
  `pekerjaan` varchar(25) NOT NULL,
  `wn` varchar(15) NOT NULL,
  `tujuan` varchar(30) NOT NULL,
  `keperluan` varchar(30) NOT NULL,
  `berlaku_dari` varchar(20) NOT NULL,
  `berlaku_sampai` varchar(20) NOT NULL,
  PRIMARY KEY (`id_ket_pergi_kawin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ket_pindah_penduduk`
--

CREATE TABLE IF NOT EXISTS `ket_pindah_penduduk` (
  `id_ket_pindah_penduduk` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `ttl` varchar(20) NOT NULL,
  `usia` varchar(15) NOT NULL,
  `wn` varchar(20) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `alamat` varchar(80) NOT NULL,
  `rt` varchar(3) NOT NULL,
  `rw` varchar(3) NOT NULL,
  `dusun` varchar(20) NOT NULL,
  `desa` varchar(20) NOT NULL,
  `kecamatan` varchar(20) NOT NULL,
  `kabupaten` varchar(20) NOT NULL,
  `alasan` varchar(50) NOT NULL,
  `tanggal_pindah` varchar(20) NOT NULL,
  `jumlah_pengikut` varchar(15) NOT NULL,
  `nik_1` varchar(16) NOT NULL,
  `nama_1` varchar(30) NOT NULL,
  `berlaku1` varchar(20) NOT NULL,
  `shdk_1` varchar(15) NOT NULL,
  `nik_2` varchar(16) NOT NULL,
  `nama_2` varchar(30) NOT NULL,
  `berlaku2` varchar(20) NOT NULL,
  `shdk_2` varchar(15) NOT NULL,
  `nik_3` varchar(16) NOT NULL,
  `nama_3` varchar(30) NOT NULL,
  `berlaku3` varchar(20) NOT NULL,
  `shdk_3` varchar(15) NOT NULL,
  `nik_4` varchar(16) NOT NULL,
  `nama_4` varchar(30) NOT NULL,
  `berlaku4` varchar(20) NOT NULL,
  `shdk_4` varchar(15) NOT NULL,
  `nik_5` varchar(16) NOT NULL,
  `nama_5` varchar(30) NOT NULL,
  `berlaku5` varchar(20) NOT NULL,
  `shdk_5` varchar(15) NOT NULL,
  `nik_6` varchar(16) NOT NULL,
  `nama_6` varchar(30) NOT NULL,
  `berlaku6` varchar(25) NOT NULL,
  `shdk_6` varchar(15) NOT NULL,
  `nik_7` varchar(16) NOT NULL,
  `nama_7` varchar(30) NOT NULL,
  `berlaku7` varchar(20) NOT NULL,
  `shdk_7` varchar(15) NOT NULL,
  PRIMARY KEY (`id_ket_pindah_penduduk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ket_rujuk_cerai`
--

CREATE TABLE IF NOT EXISTS `ket_rujuk_cerai` (
  `id_ket_rujuk_cerai` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `ayah` varchar(30) NOT NULL,
  `tempat_lahir` varchar(25) NOT NULL,
  `tanggal_lahir` varchar(20) NOT NULL,
  `wn` varchar(20) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `alamat` varchar(80) NOT NULL,
  `pasangan` varchar(30) NOT NULL,
  `ayah_pasangan` varchar(30) NOT NULL,
  `tempatlahir_pasangan` varchar(25) NOT NULL,
  `tanggallahir_pasangan` varchar(20) NOT NULL,
  `wn_pasangan` varchar(15) NOT NULL,
  `agama_pasangan` varchar(10) NOT NULL,
  `pekerjaan_pasangan` varchar(20) NOT NULL,
  `alamat_pasangan` varchar(80) NOT NULL,
  `keterangan` varchar(15) NOT NULL,
  PRIMARY KEY (`id_ket_rujuk_cerai`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ket_rujuk_cerai`
--

INSERT INTO `ket_rujuk_cerai` (`id_ket_rujuk_cerai`, `nama`, `ayah`, `tempat_lahir`, `tanggal_lahir`, `wn`, `agama`, `pekerjaan`, `alamat`, `pasangan`, `ayah_pasangan`, `tempatlahir_pasangan`, `tanggallahir_pasangan`, `wn_pasangan`, `agama_pasangan`, `pekerjaan_pasangan`, `alamat_pasangan`, `keterangan`) VALUES
(1, ' sfgkjdfgkn', ' cvjbvk', ' dnmgdnfg', '', ' fkgdfgkd', 'buddha', ' iurtuertu', ' sdfhgjfhgj', ' sfgkjdfgkn', ' cvjbvk', ' zxhcscjbb', '', ' jkfgkjfgnkn', 'buddha', ' mnebrfgjegjb', ' liehfriheih', 'Rujuk');

-- --------------------------------------------------------

--
-- Table structure for table `ket_usaha`
--

CREATE TABLE IF NOT EXISTS `ket_usaha` (
  `id_ket_usaha` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `no_kk` varchar(16) NOT NULL,
  `kepala_kk` varchar(30) NOT NULL,
  `tepatlahir` varchar(25) NOT NULL,
  `tanggallahir` varchar(20) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `alamat` varchar(80) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `status` varchar(15) NOT NULL,
  `pendidikan` varchar(15) NOT NULL,
  `pekerjaan` varchar(15) NOT NULL,
  `wn` varchar(15) NOT NULL,
  `keperluan` varchar(30) NOT NULL,
  `berlaku_dari` varchar(20) NOT NULL,
  `berlaku_sampai` varchar(20) NOT NULL,
  `usaha` varchar(20) NOT NULL,
  PRIMARY KEY (`id_ket_usaha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ket_wali`
--

CREATE TABLE IF NOT EXISTS `ket_wali` (
  `id_ket_wali` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` varchar(20) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `alamat` varchar(80) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `wn` varchar(15) NOT NULL,
  PRIMARY KEY (`id_ket_wali`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mohon_akta`
--

CREATE TABLE IF NOT EXISTS `mohon_akta` (
  `id_mohon_akta` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `tempatlahir` varchar(25) NOT NULL,
  `tanggallahir` varchar(25) NOT NULL,
  `alamat` varchar(80) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `nama_anak` varchar(30) NOT NULL,
  `tempatlahir_anak` varchar(25) NOT NULL,
  `tanggallahir_anak` varchar(25) NOT NULL,
  `harilahir_anak` varchar(10) NOT NULL,
  `alamat_anak` varchar(80) NOT NULL,
  `ayah` varchar(30) NOT NULL,
  `ibu` varchar(30) NOT NULL,
  `alamat_ortu` varchar(80) NOT NULL,
  PRIMARY KEY (`id_mohon_akta`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mohon_akta`
--

INSERT INTO `mohon_akta` (`id_mohon_akta`, `nama`, `no_ktp`, `tempatlahir`, `tanggallahir`, `alamat`, `pekerjaan`, `nama_anak`, `tempatlahir_anak`, `tanggallahir_anak`, `harilahir_anak`, `alamat_anak`, `ayah`, `ibu`, `alamat_ortu`) VALUES
(1, 'hjhgjhjj', '8786787686', 'nmnbjnbn bnvn', '1988-10-25', 'kuhkkjhkjh', 'jhbjhjhj', 'hjhgjghjg jygugugjug', 'mnbnvbnhbhvb', '2019-08-27', 'khjjhgjhg', 'jkhjhbjhnbb', 'jhkhihihkjmnmn', ',n,mbnmnbmnbm', 'jjhjhjhjh');

-- --------------------------------------------------------

--
-- Table structure for table `mohon_cerai`
--

CREATE TABLE IF NOT EXISTS `mohon_cerai` (
  `id_mohon_cerai` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `tempatlahir` varchar(25) NOT NULL,
  `tanggallahir` varchar(25) NOT NULL,
  `pekerjaan` varchar(25) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `alamat` varchar(80) NOT NULL,
  `nama_istri` varchar(30) NOT NULL,
  `no_ktp_istri` varchar(16) NOT NULL,
  `tempatlahir_istri` varchar(25) NOT NULL,
  `tanggallahir_istri` varchar(25) NOT NULL,
  `agama_istri` varchar(10) NOT NULL,
  `pekerjaan_istri` varchar(25) NOT NULL,
  `alamat_istri` varchar(80) NOT NULL,
  `sebab` varchar(50) NOT NULL,
  PRIMARY KEY (`id_mohon_cerai`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mohon_cerai`
--

INSERT INTO `mohon_cerai` (`id_mohon_cerai`, `nama`, `no_ktp`, `tempatlahir`, `tanggallahir`, `pekerjaan`, `agama`, `alamat`, `nama_istri`, `no_ktp_istri`, `tempatlahir_istri`, `tanggallahir_istri`, `agama_istri`, `pekerjaan_istri`, `alamat_istri`, `sebab`) VALUES
(1, ' hjhjhbbnmb', ' 78768668979898', ' jjkjjg', ' 1982-10-11', ' nmnjbmhb', 'Islam', ' mhnbnhbnbn', ' nbnhbvnv', ' 87667656576', ' mbnhhn', ' 1985-08-28', 'Islam', ' mhbjhjhbjb', ' jhjhhbvnb', ' nb nn bjbmn '),
(2, 'bnbnnv', '7767657657', 'nbvnbvnbv', '1990-11-20', 'kjhkjjmnb', 'islam', 'bnvnb n', 'nbnjbnhbhb', '766786868777', 'hbmhnbnbv', '1996-10-29', 'islam', 'jbmnbmnbm', 'nbnbnb', 'kjkjkjkj');

-- --------------------------------------------------------

--
-- Table structure for table `mohon_duplikat_lahir`
--

CREATE TABLE IF NOT EXISTS `mohon_duplikat_lahir` (
  `id_mohon_duplikat_lahir` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `alamat` varchar(80) NOT NULL,
  `tempatlahir` varchar(25) NOT NULL,
  `tanggallahir` varchar(25) NOT NULL,
  `harilahir` varchar(10) NOT NULL,
  `jam` varchar(10) NOT NULL,
  `nama_ibu` varchar(30) NOT NULL,
  `nik_ibu` varchar(16) NOT NULL,
  `tanggallahir_ibu` varchar(25) NOT NULL,
  `pekerjaan_ibu` varchar(20) NOT NULL,
  `alamat_ibu` varchar(80) NOT NULL,
  `nama_ayah` varchar(30) NOT NULL,
  `nik_ayah` varchar(16) NOT NULL,
  `tanggallahir_ayah` varchar(25) NOT NULL,
  `pekerjaan_ayah` varchar(20) NOT NULL,
  `alamat_ayah` varchar(80) NOT NULL,
  `nama_pelapor` varchar(30) NOT NULL,
  `nik_pelapor` varchar(16) NOT NULL,
  `sex_pelapor` varchar(10) NOT NULL,
  `tempatlahir_pelapor` varchar(25) NOT NULL,
  `tanggallahir_pelapor` varchar(25) NOT NULL,
  `pekerjaan_pelapor` varchar(20) NOT NULL,
  `alamat_pelapor` varchar(80) NOT NULL,
  PRIMARY KEY (`id_mohon_duplikat_lahir`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mohon_duplikat_nikah`
--

CREATE TABLE IF NOT EXISTS `mohon_duplikat_nikah` (
  `id_mohon_duplikat_nikah` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `no_kk` varchar(16) NOT NULL,
  `kepala_kk` varchar(30) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `tempatlahir` varchar(25) NOT NULL,
  `tanggallahir` varchar(25) NOT NULL,
  `alamat` varchar(80) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `pendidikan` varchar(15) NOT NULL,
  `wn` varchar(15) NOT NULL,
  `tgl_nikah` varchar(25) NOT NULL,
  `nama_pasangan` varchar(30) NOT NULL,
  PRIMARY KEY (`id_mohon_duplikat_nikah`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mohon_kk`
--

CREATE TABLE IF NOT EXISTS `mohon_kk` (
  `id_mohon_kk` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `tempatlahir` varchar(20) NOT NULL,
  `tanggallahir` varchar(20) NOT NULL,
  `usia` varchar(15) NOT NULL,
  `wn` varchar(15) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `alamat` varchar(80) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `no_kk` varchar(16) NOT NULL,
  PRIMARY KEY (`id_mohon_kk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mohon_rubah_kk`
--

CREATE TABLE IF NOT EXISTS `mohon_rubah_kk` (
  `id_mohon_rubah_kk` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `no_kk` varchar(16) NOT NULL,
  `tempatlahir` varchar(25) NOT NULL,
  `tanggallahir` varchar(25) NOT NULL,
  `usia` varchar(10) NOT NULL,
  `wn` varchar(15) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `alamat` varchar(80) NOT NULL,
  PRIMARY KEY (`id_mohon_rubah_kk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pengantar_skck`
--

CREATE TABLE IF NOT EXISTS `pengantar_skck` (
  `id_pengantar_skck` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) NOT NULL,
  `no_ktp` int(16) NOT NULL,
  `no_kk` int(16) NOT NULL,
  `kepala_kk` varchar(15) NOT NULL,
  `ttl` varchar(30) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `pendidikan` varchar(10) NOT NULL,
  `pekerjaan` varchar(15) NOT NULL,
  `kewarganegaraan` varchar(15) NOT NULL,
  `keperluan` varchar(15) NOT NULL,
  PRIMARY KEY (`id_pengantar_skck`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `pengantar_skck`
--

INSERT INTO `pengantar_skck` (`id_pengantar_skck`, `nama`, `no_ktp`, `no_kk`, `kepala_kk`, `ttl`, `agama`, `jenis_kelamin`, `alamat`, `status`, `pendidikan`, `pekerjaan`, `kewarganegaraan`, `keperluan`) VALUES
(1, 'mohammad rusdi', 2147483647, 2147483647, 'soni', 'brebes, 08 februari 2001', 'Islam', 'Laki-laki', 'desa pamulihan kec. larangan b', 'belum menikah', 'SLTA', 'wiraswasta', 'indonesia', 'mencari kerja'),
(2, 'jajang', 556543778, 645456464, 'mulyana', 'brebes, 07 juli 1997', 'Islam', 'Laki-laki', 'Desa Pamulihan kec. Larangan K', 'belum menikah', 's1', 'wiraswasta', 'indonesia', 'mencari kerja'),
(3, 'mohammad rusdi', 0, 0, '', 'brebes, 08 februari 2001', 'Islam', 'Laki-laki', 'desa pamulihan kec. larangan b', '', '', 'wiraswasta', '', ''),
(4, 'mohammad rusdi', 0, 0, '', 'brebes, 08 februari 2001', 'Islam', 'Laki-laki', 'desa pamulihan kec. larangan b', '', '', 'wiraswasta', '', ''),
(5, 'mohammad rusdi', 0, 0, '', 'brebes, 07 juli 1997', 'Islam', 'Laki-laki', 'desa pamulihan kec. larangan b', '', '', 'wiraswasta', '', ''),
(6, 'mohammad rusdi', 0, 0, '', 'brebes, 07 juli 1997', 'Islam', 'Laki-laki', 'desa pamulihan kec. larangan b', '', '', 'wiraswasta', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sktm`
--

CREATE TABLE IF NOT EXISTS `sktm` (
  `id_sktm` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `ttl` varchar(30) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `wn` varchar(15) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `pekerjaan` varchar(15) NOT NULL,
  `alamat` varchar(80) NOT NULL,
  `nik_anggota1` varchar(16) NOT NULL,
  `nama_anggota1` varchar(30) NOT NULL,
  `sex_anggota1` varchar(10) NOT NULL,
  `ttl_anggota1` varchar(30) NOT NULL,
  `shdk_anggota1` varchar(20) NOT NULL,
  `nik_anggota2` varchar(16) NOT NULL,
  `nama_anggota2` varchar(30) NOT NULL,
  `sex_anggota2` varchar(10) NOT NULL,
  `ttl_anggota2` varchar(30) NOT NULL,
  `shdk_anggota2` varchar(20) NOT NULL,
  `nik_anggota3` varchar(16) NOT NULL,
  `nama_anggota3` varchar(30) NOT NULL,
  `sex_anggota3` varchar(10) NOT NULL,
  `ttl_anggota3` varchar(30) NOT NULL,
  `shdk_anggota3` varchar(20) NOT NULL,
  `nik_anggota4` varchar(16) NOT NULL,
  `nama_anggota4` varchar(30) NOT NULL,
  `sex_anggota4` varchar(10) NOT NULL,
  `ttl_anggota4` varchar(30) NOT NULL,
  `shdk_anggota4` varchar(20) NOT NULL,
  `nik_anggota5` varchar(16) NOT NULL,
  `nama_anggota5` varchar(30) NOT NULL,
  `sex_anggota5` varchar(10) NOT NULL,
  `ttl_anggota5` varchar(30) NOT NULL,
  `shdk_anggota5` varchar(20) NOT NULL,
  `nik_anggota6` varchar(16) NOT NULL,
  `nama_anggota6` varchar(30) NOT NULL,
  `sex_anggota6` varchar(10) NOT NULL,
  `ttl_anggota6` varchar(30) NOT NULL,
  `shdk_anggota6` varchar(20) NOT NULL,
  `nik_anggota7` varchar(16) NOT NULL,
  `nama_anggota7` varchar(30) NOT NULL,
  `sex_anggota7` varchar(10) NOT NULL,
  `ttl_anggota7` varchar(30) NOT NULL,
  `shdk_anggota7` varchar(20) NOT NULL,
  `keperluan` varchar(30) NOT NULL,
  PRIMARY KEY (`id_sktm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sporadik`
--

CREATE TABLE IF NOT EXISTS `sporadik` (
  `id_sporadik` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `tempatlahir` varchar(25) NOT NULL,
  `tanggallahir` varchar(25) NOT NULL,
  `umur` varchar(15) NOT NULL,
  `pekerjaan` varchar(25) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `alamat` varchar(80) NOT NULL,
  `jalan` varchar(20) NOT NULL,
  `dusun` varchar(20) NOT NULL,
  `desa` varchar(20) NOT NULL,
  `kec` varchar(20) NOT NULL,
  `kab` varchar(20) NOT NULL,
  `nib` varchar(20) NOT NULL,
  `statustanah` varchar(30) NOT NULL,
  `tanahuntuk` varchar(30) NOT NULL,
  `luashak` varchar(15) NOT NULL,
  `utara` varchar(40) NOT NULL,
  `selatan` varchar(40) NOT NULL,
  `barat` varchar(40) NOT NULL,
  `timur` varchar(40) NOT NULL,
  `nama_saksi1` varchar(30) NOT NULL,
  `umur_saksi1` varchar(15) NOT NULL,
  `pekerjaan_saksi1` varchar(20) NOT NULL,
  `alamat_saksi1` varchar(80) NOT NULL,
  `nama_saksi2` varchar(30) NOT NULL,
  `umur_saksi2` varchar(15) NOT NULL,
  `pekerjaan_saksi2` varchar(20) NOT NULL,
  `alamat_saksi2` varchar(80) NOT NULL,
  PRIMARY KEY (`id_sporadik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `surat_domisili_usaha_non_warga`
--

CREATE TABLE IF NOT EXISTS `surat_domisili_usaha_non_warga` (
  `Nama` varchar(20) NOT NULL,
  `Tempat/tanggal lahir` varchar(20) NOT NULL,
  `Surat Bukti Diri` varchar(20) NOT NULL,
  `Warga Negara` char(15) NOT NULL,
  `Agama` char(15) NOT NULL,
  `Jenis Kelamin` char(10) NOT NULL,
  `Pekerjaan` char(15) NOT NULL,
  `Tempat  Tinggal` char(20) NOT NULL,
  `Nama Usaha` char(20) NOT NULL,
  `Jenis Usaha` char(20) NOT NULL,
  `Nomor Akta/Tahun/Notaris` varchar(20) NOT NULL,
  `Bangunan` char(15) NOT NULL,
  `Peruntukan` varchar(20) NOT NULL,
  `Status Bangunan` char(15) NOT NULL,
  `Alamat Usaha` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `surat_jalan`
--

CREATE TABLE IF NOT EXISTS `surat_jalan` (
  `Nama Lengkap` varchar(20) NOT NULL,
  `NIK / No KTP` int(16) NOT NULL,
  `No. KK` int(16) NOT NULL,
  `Kepala Keluarga` varchar(20) NOT NULL,
  `Tempat/Tanggal Lahir` varchar(20) NOT NULL,
  `Jenis Kelamin` varchar(10) NOT NULL,
  `Alamat/Tempat  Tinggal` varchar(35) NOT NULL,
  `Agama` varchar(10) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Pendidikan` varchar(10) NOT NULL,
  `Pekerjaan` varchar(15) NOT NULL,
  `Kewarganegaraan` varchar(15) NOT NULL,
  `Keperluan` varchar(30) NOT NULL,
  `Berlaku mulai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `surat_keterangan_catatan_kriminal`
--

CREATE TABLE IF NOT EXISTS `surat_keterangan_catatan_kriminal` (
  `1.	Nama Lengkap` varchar(20) NOT NULL,
  `2.	NIK / No KTP` int(16) NOT NULL,
  `3.	No. KK` int(16) NOT NULL,
  `4.	Kepala Keluarga` varchar(20) NOT NULL,
  `5.	Tempat/Tanggal Lahir` varchar(20) NOT NULL,
  `6.	Agama` varchar(10) NOT NULL,
  `7.	Jenis Kelamin` varchar(10) NOT NULL,
  `8.	Alamat/Tempat  Tinggal` varchar(25) NOT NULL,
  `9.	Status` varchar(10) NOT NULL,
  `10.	Pendidikan` varchar(10) NOT NULL,
  `11.	Pekerjaan` varchar(15) NOT NULL,
  `12.	Kewarganegaraan` varchar(15) NOT NULL,
  `13.	Keperluan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `surat_ket_jamkesos`
--

CREATE TABLE IF NOT EXISTS `surat_ket_jamkesos` (
  `1.	Nama Lengkap` varchar(15) NOT NULL,
  `2.	NIK / No KTP` int(16) NOT NULL,
  `3.	Tempat/Tanggal Lahir` varchar(20) NOT NULL,
  `4.	Jenis Kelamin` varchar(10) NOT NULL,
  `5.	Alamat/Tempat  Tinggal` varchar(30) NOT NULL,
  `6.	Agama` varchar(10) NOT NULL,
  `7.	Status` varchar(10) NOT NULL,
  `8.	Pendidikan` varchar(10) NOT NULL,
  `9.	Pekerjaan` varchar(15) NOT NULL,
  `10.	Keperluan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id_admin` int(15) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `jabatan` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `jenis_kelamin` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `ttl` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `agama` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `no_telpon` varchar(13) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama_lengkap`, `username`, `password`, `alamat`, `jabatan`, `jenis_kelamin`, `ttl`, `agama`, `no_telpon`) VALUES
(1, 'admin', 'admin', 'admin', 'RT 04 RW 06 Desa Pamulihan Kec. Larangan Brebes', 'sekdes', 'Laki Laki', 'BREBES, 23 APRIL 1972', 'islam', '087861832');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lapor`
--

CREATE TABLE IF NOT EXISTS `tbl_lapor` (
  `id_laporan` int(12) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tmp_lahir` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `jenis_kelamin` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `agama` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `pekerjaan` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul_laporan` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `isi_laporan` varchar(40) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_laporan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=462 ;

--
-- Dumping data for table `tbl_lapor`
--

INSERT INTO `tbl_lapor` (`id_laporan`, `nama`, `tgl_lahir`, `tmp_lahir`, `jenis_kelamin`, `agama`, `alamat`, `pekerjaan`, `judul_laporan`, `isi_laporan`) VALUES
(1, 'dewi', '2012-05-16', '', 'perempuan', 'islam', 'belakang kampus upi', 'mahasiswa', 'surat tilang', 'tilang motor'),
(2, 'gaga', '2017-06-07', '', 'Laki-laki', 'Islam', 'lubeg', 'mahasiswa', 'kehilangan', 'hilang dompet');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengunjung`
--

CREATE TABLE IF NOT EXISTS `tbl_pengunjung` (
  `id_pengunjung` int(12) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `agama` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `no_telpon` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `pendidikan` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `pekerjaan` varchar(20) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_pengunjung`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`id_pengunjung`, `username`, `password`, `nama_lengkap`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `agama`, `no_telpon`, `pendidikan`, `status`, `pekerjaan`) VALUES
(9, ' 3329000700070095', ' 3329000700070095', ' MOHAMMAD RUSDI', '1995-07-07', 'Laki Laki', ' RT 04 RW 06 Desa Pamulihan Kec. Laranga', 'Islam', ' 087861832247', ' S1', ' BELUM MENIKAH', ' Wiraswasta'),
(10, ' 3329000700070095', ' 3329000700070095', ' MOHAMMAD RUSDI', '1995-07-07', 'Laki Laki', ' RT 04 RW 06 Desa Pamulihan Kec. Laranga', 'Islam', ' 087861832247', ' S1', ' BELUM MENIKAH', ' Wiraswasta'),
(11, '1234567', '1234567', 'Mohammad Irwandi', '1996-01-09', 'laki Laki', 'RT 04 RW 06 Desa Pamulihan Kec. Larangan', 'islam', '087866714453', 'SLTA', 'BELUM MENIKAH', 'Wiraswasta');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_perijinan`
--

CREATE TABLE IF NOT EXISTS `tbl_perijinan` (
  `id_perijinan` int(12) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tmp_lahir` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `jenis_kelamin` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `agama` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tujuan_kegiatan` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `waktu_kegiatan` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tempat_kegiatan` varchar(40) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_perijinan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_perijinan`
--

INSERT INTO `tbl_perijinan` (`id_perijinan`, `nama`, `tgl_lahir`, `tmp_lahir`, `jenis_kelamin`, `alamat`, `agama`, `no_telp`, `tujuan_kegiatan`, `waktu_kegiatan`, `tempat_kegiatan`) VALUES
(1, '    ari bro', '2010-05-06', '', 'Laki-laki', '    bungus', 'Islam', '    06278187921', '    pesta rakyat besar', '    17 agustus', '    lapangan bola kaki desa 2'),
(4, 'dinda', '2005-03-02', '', 'Perempuan', 'Belakang kampus upi', 'Islam', '08465483242', 'syukuran', '18 juli', 'rumah sendiri'),
(8, ' Mohammad Rusdi', '1995-07-07', ' Brebes', 'Laki-laki', ' brebes', 'Islam', ' 087861832247', ' aksi damai hari pers', ' 09.00 WIB s.d 11.30', ' Depan Pendopo Brebes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sabhara`
--

CREATE TABLE IF NOT EXISTS `tbl_sabhara` (
  `id_sabhara` int(12) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tmp_lahir` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `jenis_kelamin` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `agama` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tujuan_pengawalan` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `route` varchar(40) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_sabhara`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sim`
--

CREATE TABLE IF NOT EXISTS `tbl_sim` (
  `id_sim` int(12) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tmp_lahir` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `jenis_kelamin` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `agama` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tinggi` varchar(12) COLLATE latin1_general_ci NOT NULL,
  `pekerjaan` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `keterangan` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `masa` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `no_sim` varchar(20) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_sim`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_sim`
--

INSERT INTO `tbl_sim` (`id_sim`, `nama`, `tgl_lahir`, `tmp_lahir`, `jenis_kelamin`, `alamat`, `agama`, `tinggi`, `pekerjaan`, `keterangan`, `masa`, `no_sim`) VALUES
(6, 'riko', '2018-06-01', 'padang', 'Laki-laki', 'padang', 'Islam', '90', '90', '', '2018-06-01', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_skck`
--

CREATE TABLE IF NOT EXISTS `tbl_skck` (
  `id_skck` int(12) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `jenis_kelamin` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `kebangsaan` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `agama` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tmp_lahir` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `pekerjaan` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `no_ktp` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `keperluan` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `riwayat_sekolah` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `keterangan` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `masa` varchar(20) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_skck`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=230 ;

--
-- Dumping data for table `tbl_skck`
--

INSERT INTO `tbl_skck` (`id_skck`, `nama`, `jenis_kelamin`, `kebangsaan`, `agama`, `tgl_lahir`, `tmp_lahir`, `alamat`, `pekerjaan`, `no_ktp`, `keperluan`, `riwayat_sekolah`, `keterangan`, `masa`) VALUES
(1, ' koko', 'Laki-laki', ' Indonesia', 'Islam', '2018-06-15', ' padang', ' jkj', ' jk', ' jkj', ' jk', ' jk', ' ', '2018-06-30'),
(226, 'jeje', 'Laki-laki', 'Indonesia', 'kristen', '2018-06-29', 'PAdang', 'Padang', 'Buruh', '8080880', '080', 'oppp', '', '2018-06-30'),
(225, 'riko', 'Laki-laki', ' Indonesia', 'Islam', '2018-06-15', ' padang', ' jkj', ' jk', ' jkj', ' jk', ' jk', ' Baru', '2018-06-01'),
(228, 'mohammad rusdi', 'Laki-laki', '', 'Islam', '0000-00-00', '', 'gjfgjkgh,gn,', '', '85984698u45o68iu5', 'ghkigh', '', '', ''),
(229, 'sugino', 'Laki-laki', 'indonesia', 'Islam', '1994-06-24', 'Brebes', 'desa pamulihan kec. larangan b', 'wiraswasta', '7665776876764', 'mencari kerja', 'slta', '', '2019-07-19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stnk`
--

CREATE TABLE IF NOT EXISTS `tbl_stnk` (
  `id_stnk` int(12) NOT NULL AUTO_INCREMENT,
  `no_registrasi` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `nama` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `merk` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `type` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `jenis` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `model` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tahun` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `isi_silinder` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `warna` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `keterangan` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `masa` varchar(20) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_stnk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_stnk`
--

INSERT INTO `tbl_stnk` (`id_stnk`, `no_registrasi`, `nama`, `alamat`, `merk`, `type`, `jenis`, `model`, `tahun`, `isi_silinder`, `warna`, `keterangan`, `masa`) VALUES
(4, ' 01121', ' RIko', ' padang', ' 9', ' 09', ' 09', ' 90', ' 90', ' 90', ' 90', ' Baru', '2018-06-30');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
