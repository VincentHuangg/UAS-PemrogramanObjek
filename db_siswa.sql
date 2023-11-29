-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Nov 2023 pada 14.31
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_siswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_mahasiswa`
--

CREATE TABLE `db_mahasiswa` (
  `Nama` varchar(225) NOT NULL,
  `NIM` int(11) NOT NULL,
  `ProgramStudi` varchar(225) NOT NULL,
  `Email` varchar(225) NOT NULL,
  `Password` varchar(225) NOT NULL,
  `JenisKelamin` enum('LakiLaki','Perempuan') NOT NULL,
  `TanggalLahir` date NOT NULL,
  `Alamat` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `db_mahasiswa`
--

INSERT INTO `db_mahasiswa` (`Nama`, `NIM`, `ProgramStudi`, `Email`, `Password`, `JenisKelamin`, `TanggalLahir`, `Alamat`) VALUES
('Vincent ', 1234567890, 'RPL', 'Vincent@gmail.com', 'qwert12345', 'LakiLaki', '2023-11-01', 'Batam'),
('Vincent Aja', 1235467809, 'ARSITEKTUR', 'AjaVincent@gmail.com', 'trqwe43215', 'LakiLaki', '2023-11-05', 'Batam'),
('Vincent Huang', 1234568790, 'SISTEM INFORMASI', 'VincentHuang@gmail.com', 'ewqrt12543', 'LakiLaki', '2023-11-04', 'Lubuk Baja - Batam'),
('Vincent1', 123456789, 'AK', 'Vincent1@gmail.com', 'qwerty1234', 'LakiLaki', '2023-11-02', 'Batam'),
('Vincent2', 987654321, 'MANAGEMENT', 'Vincent2@gmail.com', 'qwer123456', 'LakiLaki', '2023-11-03', 'Jepang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_pendaftaran`
--

CREATE TABLE `db_pendaftaran` (
  `Nama` varchar(225) NOT NULL,
  `Jurusan` enum('Sistem Infomasi','Management','Lainnya') NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(225) NOT NULL,
  `JenisKelamin` enum('LakiLaki','Perempuan') NOT NULL,
  `TanggalLahir` date NOT NULL,
  `Alamat` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `db_mahasiswa`
--
ALTER TABLE `db_mahasiswa`
  ADD PRIMARY KEY (`Nama`);

--
-- Indeks untuk tabel `db_pendaftaran`
--
ALTER TABLE `db_pendaftaran`
  ADD PRIMARY KEY (`Nama`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
