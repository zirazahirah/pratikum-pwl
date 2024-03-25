-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2024 at 02:58 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `praktikum`
--

-- --------------------------------------------------------

--
-- Table structure for table `ktm`
--

CREATE TABLE `ktm` (
  `id_ktm` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `nomor_identitas` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ktm`
--

INSERT INTO `ktm` (`id_ktm`, `id_mahasiswa`, `nomor_identitas`) VALUES
(1, 1, 'KTM12345'),
(2, 2, 'KTM23456'),
(3, 3, 'KTM34567'),
(4, 4, 'KTM45678'),
(5, 5, 'KTM56789'),
(6, 6, 'KTM67890'),
(7, 7, 'KTM78901'),
(8, 8, 'KTM89012');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nim` int(9) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nama`, `nim`, `jurusan`, `alamat`) VALUES
(1, 'John Doe', 1901001, 'Teknik Informatika', 'Jalan Merdeka 123'),
(2, 'Jane Doe', 1901002, 'Manajemen', 'Teknik Elektro'),
(3, 'Adam Smith', 1901003, 'Manajemen', 'Jalan Raya 456'),
(4, 'Sarah Lee', 1901004, 'Akuntansi', 'Jalan Jaya 101'),
(5, 'Michael Wong', 1901005, 'Hukum', 'Jalan Damai 12'),
(6, 'Lisa Chen', 1901006, 'Teknik Kimia', 'Jalan Jenderal Sudirman'),
(7, 'David Park', 1901007, 'Ekonomi', 'Jalan Pahlawan 56 '),
(8, 'Emily Wu', 1901008, 'Psikologi', 'Jalan Harmoni 88');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ktm`
--
ALTER TABLE `ktm`
  ADD PRIMARY KEY (`id_ktm`),
  ADD KEY `ktm_ibfk_1` (`id_mahasiswa`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ktm`
--
ALTER TABLE `ktm`
  MODIFY `id_ktm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ktm`
--
ALTER TABLE `ktm`
  ADD CONSTRAINT `ktm_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
