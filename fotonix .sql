-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2025 at 06:24 AM
-- Server version: 11.7.2-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fotonix`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar`
--

CREATE TABLE `daftar` (
  `ID` int(2) NOT NULL,
  `NIM` varchar(100) NOT NULL,
  `USERNAME` varchar(100) NOT NULL,
  `EMAIL` varchar(200) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `ROLE` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daftar`
--

INSERT INTO `daftar` (`ID`, `NIM`, `USERNAME`, `EMAIL`, `PASSWORD`, `ROLE`) VALUES
(3, '24050974025', 'felisya', 'felisyakamila@gmail.com', '12345678', 'admin'),
(4, '24050974005', 'bekti', 'bekti@gmail.com', '12345678', 'user'),
(8, '24050974030', 'abidah', 'abidah@gmail.com', '12345678', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `harga`
--

CREATE TABLE `harga` (
  `Alat` varchar(15) DEFAULT NULL,
  `Merk` varchar(30) DEFAULT NULL,
  `Kategori` varchar(9) DEFAULT NULL,
  `Harga Sewa PerHari (Rp)` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `harga`
--

INSERT INTO `harga` (`Alat`, `Merk`, `Kategori`, `Harga Sewa PerHari (Rp)`) VALUES
('Kamera', 'Canon EOS 1200D', 'Kamera', '90.000'),
('Kamera', 'Nikon D5200', 'Kamera', '120. 000'),
('Kamera', 'Sony Alpha A6000', 'Kamera', '135.000'),
('Kamera', 'FujiFilm XA3', 'Kamera', '110. 000'),
('Lighting', 'Lighting Studio Best Luck 600W', 'Lighting', '125.000'),
('Lighting', 'Aputure Amaran LED AL 528W', 'Lighting', '75.000'),
('Flash Eksternal', 'Sony HVL-F32M', 'Flash', '50.000'),
('Flash Eksternal', 'Nikon Speedlight SB-70', 'Flash', '75.000'),
('Tripod', 'Takara ECO-233A', 'Tripod', '25.000'),
('Proyektor', 'ACER X1 DLP XGA', 'Proyektor', '100.000'),
('Payung', 'Umbrella Reflector', 'Payung', '20.000');

-- --------------------------------------------------------

--
-- Table structure for table `hargajasa`
--

CREATE TABLE `hargajasa` (
  `Jenis Jasa` varchar(11) DEFAULT NULL,
  `Durasi` varchar(8) DEFAULT NULL,
  `Jumlah` varchar(8) DEFAULT NULL,
  `Harga` decimal(6,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `hargajasa`
--

INSERT INTO `hargajasa` (`Jenis Jasa`, `Durasi`, `Jumlah`, `Harga`) VALUES
('Foto Model', '60 Menit', '', 150.000),
('Foto Produk', '', '5 Produk', 100.000),
('Foto Wisuda', '60 Menit', '', 150.000);

-- --------------------------------------------------------

--
-- Table structure for table `ketersediaan`
--

CREATE TABLE `ketersediaan` (
  `Tipe Alat` varchar(15) DEFAULT NULL,
  `Nama Alat` varchar(30) DEFAULT NULL,
  `Kode` varchar(20) DEFAULT NULL,
  `Status` varchar(8) DEFAULT NULL,
  `Tanggal Peminjaman` varchar(9) DEFAULT NULL,
  `Tanggal Pengembalian` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `ketersediaan`
--

INSERT INTO `ketersediaan` (`Tipe Alat`, `Nama Alat`, `Kode`, `Status`, `Tanggal Peminjaman`, `Tanggal Pengembalian`) VALUES
('Kamera', 'Kamera Canon EOS1200D', 'Canon 001', 'Tersedia', '', ''),
('Kamera', 'Kamera Canon EOS1200D', 'Canon 002', 'Dipinjam', '22-Mei-25', '23-Mei-25'),
('Kamera', 'Kamera Nikon D5200', 'Nikon 001', 'Tersedia', '', ''),
('Kamera', 'Kamera Nikon D5200', 'Nikon 002', 'Dipinjam', '21-Mei-25', '22-Mei-25'),
('Kamera', 'Kamera Sony Alpha', 'Sony 001', 'Tersedia', '', ''),
('Kamera', 'Kamera Sony Alpha', 'Sony 002', 'Tersedia', '21-Mei-25', '22-Mei-25'),
('Kamera', 'Kamera Fujifilm', 'Fuji 001', 'Dipinjam', '', ''),
('Kamera', 'Kamera Fujifilm', 'Fuji 002', 'Tersedia', '22-Mei-25', '23-Mei-25'),
('Lighting', 'Lighting Studio Best Luck 600W', 'Best Luck 001', 'Tersedia', '', ''),
('Lighting', 'Lighting Studio Best Luck 600W', 'Best Luck 002', 'Tersedia', '', ''),
('Lighting', 'Aputure Amaran LED AL 528W', 'Amaran 001', 'Dipinjam', '', ''),
('Flash Eksternal', 'Flash Sony HVL-F32M', 'Sony HVL 001', 'Tersedia', '', ''),
('Flash Eksternal', 'Flash Sony HVL-F32M', 'Sony HVL 002', 'Tersedia', '', ''),
('Flash Eksternal', 'Nikon Speedlight SB-76', 'Nikon Speedlight 001', 'Tersedia', '', ''),
('Flash Eksternal', ' Nikon Speedlight SB-77', 'Nikon Speedlight 002', 'Dipinjam', '', ''),
('Tripod', 'Takara ECO-233A', 'Tripod 001', 'Dipinjam', '21-Mei-25', '22-Mei-25'),
('Tripod', 'Takara ECO-233A', 'Tripod 002', 'Dipinjam', '25-Mei-25', '26-Mei-25'),
('Proyektor', ' ACER X1 DLP XGA', 'Proyektor 001', 'Dipinjam', '27-Mei-25', '28-Mei-25'),
('Proyektor', ' ACER X1 DLP XGA', 'Proyektor 002', 'Tersedia', '', ''),
('Payung Studio', 'Umbrella Reflector', 'Umbrella 001', 'Tersedia', '24-Mei-25', '25-Mei-25'),
('Payung Studio', 'Umbrella Reflector', 'Umbrella 002', 'Tersedia', '23-Mei-25', '24-Mei-25');

-- --------------------------------------------------------

--
-- Table structure for table `penyewa`
--

CREATE TABLE `penyewa` (
  `Username` varchar(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Nama_Barang` varchar(50) DEFAULT NULL,
  `Kode_Barang` varchar(20) DEFAULT NULL,
  `Tanggal_Pinjam` varchar(11) DEFAULT NULL,
  `Tanggal_Kembali` varchar(12) DEFAULT NULL,
  `Status` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `penyewa`
--

INSERT INTO `penyewa` (`Username`, `Email`, `Nama_Barang`, `Kode_Barang`, `Tanggal_Pinjam`, `Tanggal_Kembali`, `Status`) VALUES
('faizah', 'faizah@email.com', 'Kamera Sony Alpha', 'Sony 002', '21 Mei 2025', '22 Mei 2025', 'Sudah Kembali'),
('raisya', 'raisya@gmail.com', 'Kamera FujiFilm', 'Fuji 002', '22 Mei 2025', '23 Mei 2025', 'Sudah Kembali'),
('aqeela', 'aqeela@gmail.com', 'Takara ECO-233A', 'Tripod 001', '21 Mei 2025', '22 Mei 2025', 'Belum Kembali'),
('harry', 'harry@gmail.com', 'Takara ECO-233A', 'Tripod 002', '25 Mei 2025', '26 Mei 2025', 'Sudah Kembali'),
('zara', 'zara@gmail.com', 'Umbrella Reflector', 'Umbrella 001', '24 Mei 2025', '25 Mei 2025', 'Sudah Kembali'),
('mohan', 'mohan@gmail.com', 'Umbrella Reflector', 'Umbrella 002', '23 Mei 2025', '24  Mei 2025', 'Sudah Kembali'),
('fel', 'felisya@gmail.com', 'Kamera Canon EOS 1200D', 'Canon 002', '3 Juni 2025', '4 Juni 2025', 'Sudah Kembali'),
('radja', 'radja@gmail.com', 'Kamera FujiFilm ', 'Fuji 001', '30 Mei 2025', '31 Mei 2025', 'Sudah Kembali'),
('felisya', 'felisya@gmail.com', 'Kamera Sony Alpha', 'Sony 001', '29 Mei 2025', '30 Mei 2025', 'Sudah Kembali');

--
-- Triggers `penyewa`
--
DELIMITER $$
CREATE TRIGGER `update_status_ketersediaan` AFTER INSERT ON `penyewa` FOR EACH ROW BEGIN
  UPDATE ketersediaan
  SET 
    Status = 'Dipinjam',
    `Tanggal Peminjaman` = NEW.Tanggal_Pinjam,
    `Tanggal Pengembalian` = NEW.Tanggal_Kembali
  WHERE Kode = NEW.Kode_Barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `sediajasa`
--

CREATE TABLE `sediajasa` (
  `Jenis Jasa` varchar(11) DEFAULT NULL,
  `Tanggal Booking` varchar(11) DEFAULT NULL,
  `Jam` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `sediajasa`
--

INSERT INTO `sediajasa` (`Jenis Jasa`, `Tanggal Booking`, `Jam`) VALUES
('Foto Wisuda', '25 Mei 2025', '06.00-08.00'),
('Foto Wisuda', '25 Mei 2025', '16.00-18.00'),
('Foto Produk', '24 Mei 2025', '09.00-11.00'),
('Foto Model', '27 Mei 2025', '10.00-12.00'),
('Foto Model', '28 Mei 2025', '18.00-20.00'),
('Foto Produk', '31 Mei 2025', '09.00-11/00'),
('Foto Wisuda', '12 Juni 202', '06.00-08.00'),
('Foto Model', '12 Juni 202', '09.00-11.00'),
('Foto wisuda', '20 Juli 202', '05.00-07.00');

-- --------------------------------------------------------

--
-- Table structure for table `sewajasa`
--

CREATE TABLE `sewajasa` (
  `Nama_Penyewa` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Tanggal` varchar(50) DEFAULT NULL,
  `Jenis_Jasa` varchar(50) DEFAULT NULL,
  `Jumlah_jam` varchar(20) DEFAULT NULL,
  `Waktu` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `sewajasa`
--

INSERT INTO `sewajasa` (`Nama_Penyewa`, `Email`, `Tanggal`, `Jenis_Jasa`, `Jumlah_jam`, `Waktu`) VALUES
('Felisya', 'felisya@gmail.com', '25 Mei 2025', 'Foto wisuda', '2 Jam', '06-00-08.00'),
('Tiara', 'tiara@gmail.com', '25 Mei 2025', 'Foto wisuda', '2 Jam', '16.00-18.00'),
('Gyotawo', 'gyotawo@gmail.com', '24 Mei 2025', 'Foto Produk', '5 Barang', '09.00-11.00'),
('Firsta', 'firsta@gmail.com', '27 Mei 2025', 'Foto Model', '2 Jam', '10.00-12.00'),
('Rinanda', 'rinanda@gmail.com', '28 Mei 2025', 'Foto Model', '2 Jam', '18.00-20.00'),
('radja', 'king@gmail.com', '22 Juni 2025', 'Foto Wisuda', '2 Jam', '06.00-08.00'),
('salma', 'salma@gmail.com', '31 Mei 2025', 'Foto Produk', '5 Barang', '09.00-11/00'),
('fel', 'fel@gmail.com', '12 Juni 2025', 'Foto Wisuda', '2 Jam', '06.00-08.00'),
('cici', 'cici@gmail.com', '12 Juni 2025', 'Foto Model', '2 Jam', '09.00-11.00'),
('della', 'della@gmail.com', '20 Juli 2025', 'Foto wisuda', '2 jam', '05.00-07.00');

--
-- Triggers `sewajasa`
--
DELIMITER $$
CREATE TRIGGER `after_insert_sewajasa` AFTER INSERT ON `sewajasa` FOR EACH ROW BEGIN
  IF NOT EXISTS (
    SELECT * FROM sediajasa 
    WHERE `Jenis Jasa` = NEW.Jenis_Jasa 
      AND `Tanggal Booking` = NEW.Tanggal 
      AND `Jam` = NEW.Waktu
  ) THEN
    INSERT INTO sediajasa (`Jenis Jasa`, `Tanggal Booking`, `Jam`) 
    VALUES (NEW.Jenis_Jasa, NEW.Tanggal, NEW.Waktu);
  END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `spesesifikasi_fiks`
--

CREATE TABLE `spesesifikasi_fiks` (
  `Kategori` varchar(14) DEFAULT NULL,
  `Merek` varchar(30) DEFAULT NULL,
  `Sensor` varchar(21) DEFAULT NULL,
  `Tipe` varchar(24) DEFAULT NULL,
  `Daya` varchar(6) DEFAULT NULL,
  `Resolusi` varchar(17) DEFAULT NULL,
  `Spesifikasi Utama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `spesesifikasi_fiks`
--

INSERT INTO `spesesifikasi_fiks` (`Kategori`, `Merek`, `Sensor`, `Tipe`, `Daya`, `Resolusi`, `Spesifikasi Utama`) VALUES
('Kamera', 'Canon EOS 1200D', 'CMOS APS-C', 'DSLR', '', '24', ' Wi-Fi, USB, HDMI,  Baterai Li-ion LP-E10'),
('Kamera', 'Nikon D5200', 'CMOS APS-C', 'DSLR', '', '24', 'Baterai EN-EL14, USB, HDMI, WI-FI'),
('Kamera', 'Sony Alpha a6000', 'CMOS APS-C', 'Mirrorless', '', '24', '24.2MP, Real-time Eye AF, 4K video, Baterai NP-FW50 Li-ion'),
('Kamera', 'FujiFilm X-A3', 'CMOS APS-C X-Trans II', 'Mirrorless', '', '18', 'WIFI, Baterai NP-W126S Li-ion'),
('Lighting', 'Lighting Studio Best Luck 600W', '', 'Monolight', '600 WS', '', 'GN 76, Recycle Time 0.5?2s, Flash 1/800s?1/1200s, Bowens Mount'),
('Lighting', 'Aputure Amaran LED AL 528W', '', 'LED ', '30 W', '', 'CRI 95+, Beam 75?, Output 1220 lux (1m), LCD Display'),
('Flash External', 'Sony HVL-F32M', '', 'Auto Electronic Flash', '2x AA', '', 'GN bervariasi: 19.5?32, Wide panel hingga 15mm'),
('Flash External', 'Nikon Speedlight SB-70', '', 'Flash Eksternal hot-shoe', '4x AA', '', 'Wide panel 12?14mm, FX/DX support'),
('Tripod', 'Takara ECO-233A', '', 'Alumunium Tripod', '', '', 'Flip lock, center column lock, kaki karet anti-slip'),
('Proyektor', 'ACER X1 DLP XGA', '', '', '', 'WUXGA (1920X1200)', 'Kecerahan 4000 lm (Std), Rasio 20,000: 1'),
('Payung', 'Umbrella Reflector', '', 'Lighting Umbrella', '', '', 'Cahaya lebih kontras & terarah, high specular highlights, efisien & terang, jangkauan bisa dikontrol');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar`
--
ALTER TABLE `daftar`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar`
--
ALTER TABLE `daftar`
  MODIFY `ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
