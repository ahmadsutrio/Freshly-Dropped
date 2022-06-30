-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jun 2022 pada 07.41
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.0.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbfreshlydropped`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_order`
--

CREATE TABLE `tb_order` (
  `id_order` int(11) NOT NULL,
  `nama_produk.order` varchar(50) NOT NULL,
  `gambar_produk.order` varchar(50) NOT NULL,
  `harga_produk.order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_order`
--

INSERT INTO `tb_order` (`id_order`, `nama_produk.order`, `gambar_produk.order`, `harga_produk.order`) VALUES
(6, 'Nanas', 'Nanas.png', 10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `gambar_produk` varchar(50) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `jenis_produk` enum('buah','sayur','umbian','daging','kacang','beras','kacang','daging','ikan') NOT NULL,
  `satuan_produk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_produk`
--

INSERT INTO `tb_produk` (`id_produk`, `nama_produk`, `gambar_produk`, `harga_produk`, `jenis_produk`, `satuan_produk`) VALUES
(1, 'Anggur', 'Anggur.png', 25000, 'buah', 500),
(2, 'Apel', 'Apel.png', 20000, 'buah', 500),
(3, 'Kacang Almond', 'Kacang.png', 100000, 'kacang', 500),
(4, 'Ayam', 'Ayam.png', 35000, 'daging', 1000),
(5, 'Bayam', 'Bayam.png', 2000, 'sayur', 300),
(6, 'Beras', 'Beras.png', 110000, 'beras', 10000),
(7, 'Cherry', 'Cherry.png', 20000, 'buah', 450),
(8, 'Ikan lele', 'ikanLele.png', 25, 'ikan', 1000),
(9, 'Kangkung', 'Kangkung.png', 2000, 'sayur', 300),
(10, 'Nanas', 'Nanas.png', 10000, 'buah', 1300),
(11, 'Sapi', 'Sapi.png', 100000, 'daging', 1000),
(12, 'singkong', 'singkong.png', 25000, 'umbian', 10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_register`
--

CREATE TABLE `tb_register` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_register`
--

INSERT INTO `tb_register` (`id_user`, `username`, `email`, `password`) VALUES
(1, 'ahmadsutrio', 'ahmadsutrio210@gmail.com', '4124bc0a9335c27f086f24ba207a4912'),
(2, 'admin', 'alfiansyahbima@gmail.com', '4124bc0a9335c27f086f24ba207a4912');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`id_order`),
  ADD UNIQUE KEY `nama_produk.order` (`nama_produk.order`);

--
-- Indeks untuk tabel `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `nama_produk` (`nama_produk`);

--
-- Indeks untuk tabel `tb_register`
--
ALTER TABLE `tb_register`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_order`
--
ALTER TABLE `tb_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tb_register`
--
ALTER TABLE `tb_register`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_order`
--
ALTER TABLE `tb_order`
  ADD CONSTRAINT `tb_order_ibfk_1` FOREIGN KEY (`nama_produk.order`) REFERENCES `tb_produk` (`nama_produk`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
