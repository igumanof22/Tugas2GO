-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Okt 2020 pada 09.52
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nobp` int(12) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jalan` varchar(100) NOT NULL,
  `kelurahan` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kabupaten` varchar(100) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `fakultas` varchar(100) NOT NULL,
  `jurusan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nobp`, `nama`, `jalan`, `kelurahan`, `kecamatan`, `kabupaten`, `provinsi`, `fakultas`, `jurusan`) VALUES
(1811081007, 'M. Ikhsan Gumanof', '-', 'Nagari Guguak', '2x11 Kayutanam', 'Padang Pariaman', 'Sumatera Barat', 'Teknologi Informasi', 'D4 Teknologi Rekayasa Perangkat Lunak'),
(1811082012, 'Muhammad Ariq Hendry', '-', 'ALai Parak Kopi', 'Padang Utara', 'Padang', 'Sumatera Barat', 'Teknologi Informasi', 'D4 Teknologi Rekayasa Perangkat Lunak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matkul`
--

CREATE TABLE `matkul` (
  `id_matkul` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `matkul`
--

INSERT INTO `matkul` (`id_matkul`, `nama`) VALUES
(1, 'Kalkulus'),
(2, 'Web');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `nobp` int(12) NOT NULL,
  `id_matkul` int(11) NOT NULL,
  `nilai` float NOT NULL,
  `semester` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`nobp`, `id_matkul`, `nilai`, `semester`) VALUES
(1811081007, 1, 3.6, '2'),
(1811081007, 2, 3.2, '3'),
(1811082012, 1, 3.7, '2'),
(1811082012, 2, 3.5, '4');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nobp`);

--
-- Indeks untuk tabel `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`id_matkul`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD KEY `nobp` (`nobp`,`id_matkul`),
  ADD KEY `id_matkul` (`id_matkul`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `matkul`
--
ALTER TABLE `matkul`
  MODIFY `id_matkul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`nobp`) REFERENCES `mahasiswa` (`nobp`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`id_matkul`) REFERENCES `matkul` (`id_matkul`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
