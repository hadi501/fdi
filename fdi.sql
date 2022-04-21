-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2022 at 06:29 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fdi`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen`
--

CREATE TABLE `absen` (
  `id_absen` int(11) NOT NULL,
  `nama_absen` varchar(255) NOT NULL,
  `kelas_absen` varchar(50) NOT NULL,
  `wa_absen` bigint(13) NOT NULL,
  `kegiatan` varchar(100) NOT NULL,
  `tanggal_absen` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `absen`
--

INSERT INTO `absen` (`id_absen`, `nama_absen`, `kelas_absen`, `wa_absen`, `kegiatan`, `tanggal_absen`) VALUES
(28, 'mahesa dwi maulana nugraha', 'X MEKA A', 81221123300, 'I-day', '2022-04-14'),
(29, 'RAFI NAUFALDI', 'X TEDK A', 8995655600, 'I-day', '2022-04-14'),
(30, 'WIDA RIFQI FARDHANA', 'X TEDK A', 85793473653, 'I-day', '2022-04-14'),
(31, 'MAULANA FADZRIL SUKMANA', 'X TEDK A', 89699004875, 'I-day', '2022-04-14'),
(32, 'Azkha Desta Rivaldi', 'X TPTU C', 88220403450, 'I-day', '2022-04-14'),
(33, 'Budi Septian Caraka ', 'X TEDK B', 85846218859, 'I-day', '2022-04-14'),
(34, 'Muhammad Davin Himala', 'X TOI A', 83822083764, 'I-day', '2022-04-14'),
(35, 'Hilmy Rizky Nugraha', 'X RPL A', 85795672401, 'I-day', '2022-04-14'),
(36, 'Fahrezi Rivaldo', 'X TOI A', 81770614494, 'I-day', '2022-04-14'),
(37, 'CAHYA FIRMAN GANI', 'XI TOI A', 81806110066, 'I-day', '2022-04-14'),
(38, 'RAIKHAN DIMAS PRASETYO', 'XI TOI A', 81395351294, 'I-day', '2022-04-14'),
(39, 'Fadli Muhammad Habibi', 'XII SIJA B', 85524801890, 'I-day', '2022-04-14'),
(40, 'Muhammad Habiburrahman', 'XII SIJA A', 85861977978, 'I-day', '2022-04-14'),
(41, 'Dafa Firmansyah', 'XII TEDK B', 89655246100, 'I-day', '2022-04-14'),
(42, 'Faishal Syahbari Ramadhan', 'XII SIJA A', 87823488305, 'I-day', '2022-04-14'),
(43, 'Nurzaman M Tammaam', 'XII SIJA A', 85155394329, 'I-day', '2022-04-14'),
(44, 'Zaidan', '12', 89699015740, 'I-day', '2022-04-14'),
(45, 'Hadiana Nasrullah', 'XII RPL A', 895354488400, 'I-day', '2022-04-14');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` int(11) NOT NULL,
  `nama_kegiatan` varchar(100) NOT NULL,
  `tanggal_kegiatan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id_kegiatan`, `nama_kegiatan`, `tanggal_kegiatan`) VALUES
(15, 'I-day', '2022-04-14'),
(21, 'I-day', '2022-04-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absen`
--
ALTER TABLE `absen`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
