-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2016 at 08:20 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `plat` varchar(10) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `status` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kendaraan`
--

INSERT INTO `kendaraan` (`plat`, `jenis`, `status`) VALUES
('DK123LL', 'Honda Jazz', 'Available'),
('DK765FN', 'Toyota Avanza', 'Available'),
('DK888LS', 'Suzuki Grand Max', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pel` int(6) NOT NULL,
  `nama_pel` varchar(20) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `asal` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pel`, `nama_pel`, `no_telp`, `asal`) VALUES
(1, 'Budi', '081337033125', 'Ubud'),
(2, 'Gus Angga', '081331934156', 'Tampaksiring'),
(4, 'Joil', '087667123456', 'Mengwi');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id_pel` int(6) NOT NULL,
  `id_wisata` int(6) NOT NULL,
  `id_ptgs` int(6) NOT NULL,
  `plat` varchar(10) NOT NULL,
  `biaya` int(7) NOT NULL,
  `tanggal` date NOT NULL,
  `no_pesan` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id_pel`, `id_wisata`, `id_ptgs`, `plat`, `biaya`, `tanggal`, `no_pesan`) VALUES
(1, 3, 1, 'DK765FN', 800000, '2016-05-14', 1),
(1, 1, 1, 'DK123LL', 400000, '2016-05-10', 2),
(1, 3, 1, 'DK123LL', 800000, '2016-05-21', 3),
(2, 2, 1, 'DK888LS', 200000, '2016-05-10', 4),
(2, 4, 1, 'DK123LL', 1000000, '2016-05-10', 5),
(4, 1, 1, 'DK123LL', 400000, '2016-05-10', 6),
(2, 3, 1, 'DK123LL', 800000, '2016-05-27', 7);

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_ptgs` int(6) NOT NULL,
  `nama_ptgs` varchar(30) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_ptgs`, `nama_ptgs`, `username`, `password`) VALUES
(1, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `id_wisata` int(6) NOT NULL,
  `kabupaten` varchar(15) NOT NULL,
  `biaya` int(7) NOT NULL,
  `nama_tempat` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id_wisata`, `kabupaten`, `biaya`, `nama_tempat`) VALUES
(1, 'Gianyar', 400000, 'Ubud'),
(2, 'Denpasar', 200000, 'Pandawa Beach'),
(3, 'Gianyar', 800000, 'Taman Nusa'),
(4, 'Gianyar', 1000000, 'Kutuh Kelod');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`plat`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pel`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`no_pesan`),
  ADD KEY `id_pel` (`id_pel`),
  ADD KEY `id_wisata` (`id_wisata`),
  ADD KEY `id_ptgs` (`id_ptgs`),
  ADD KEY `plat` (`plat`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_ptgs`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id_wisata`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pel` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `no_pesan` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_ptgs` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id_wisata` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `pesan`
--
ALTER TABLE `pesan`
  ADD CONSTRAINT `fk_pesan_idpel` FOREIGN KEY (`id_pel`) REFERENCES `pelanggan` (`id_pel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pesan_idptgs` FOREIGN KEY (`id_ptgs`) REFERENCES `petugas` (`id_ptgs`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pesan_idwisata` FOREIGN KEY (`id_wisata`) REFERENCES `wisata` (`id_wisata`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pesan_plat` FOREIGN KEY (`plat`) REFERENCES `kendaraan` (`plat`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
