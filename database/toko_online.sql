-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2018 at 03:04 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(10) NOT NULL,
  `id_customer` int(10) NOT NULL,
  `id_produk` int(10) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `nama_produk` varchar(20) NOT NULL,
  `harga` int(10) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `total_harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id_checkout` int(5) NOT NULL,
  `id_order` int(5) NOT NULL,
  `id_customer` int(5) NOT NULL,
  `nama_produk` varchar(20) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `total_harga` int(8) NOT NULL,
  `pil_bayar` varchar(10) NOT NULL,
  `negara` varchar(10) NOT NULL,
  `provinsi` varchar(15) NOT NULL,
  `kabupaten` varchar(15) NOT NULL,
  `kode_pos` int(5) NOT NULL,
  `alamat_lengkap` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `nama_depan` varchar(10) NOT NULL,
  `nama_belakang` varchar(15) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(8) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `no_telp` varchar(12) NOT NULL,
  `nama_rek` varchar(20) NOT NULL,
  `no_rek` varchar(15) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama_depan`, `nama_belakang`, `email`, `password`, `tgl_lahir`, `no_telp`, `nama_rek`, `no_rek`, `alamat`) VALUES
(3, 'yoga', 'maruf', 'ramadan@gmail.com', 'ramadan', '1999-07-01', '089989234861', 'yogamaruf', '2740284756478', 'kasongan bangunjiwo kasihan bantul'),
(4, 'rava', 'prasetyo', 'prasetyo@gmail.com', 'prasetyo', '1999-07-01', '089989234861', 'prasetyo rava', '239475864993', 'Jl bugisan no 12 yk');

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `id_hal` int(5) NOT NULL,
  `judul` varchar(15) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`id_hal`, `judul`, `deskripsi`) VALUES
(2, 'About', 'Kami selalu siap melayani anda,dan jangan lupa untuk memberikan masukan kepada kita jika ada masalah ataupun keluh kesah dalam membeli barang di toko kami');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_produk`
--

INSERT INTO `kategori_produk` (`id_kategori`, `nama_kategori`) VALUES
(10, 'fashion'),
(11, 'watches'),
(12, 'Fine jewelry'),
(13, 'Fashion jewelry'),
(14, 'Engagement & wedding'),
(15, 'Men\'s jewelry'),
(16, 'Vintage & Antique'),
(17, 'Loose Diamonds'),
(18, 'Loose Beads'),
(19, 'See all jewelry & wa');

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi_web`
--

CREATE TABLE `konfigurasi_web` (
  `id_web` int(5) NOT NULL,
  `nama_web` varchar(20) NOT NULL,
  `email_web` varchar(25) NOT NULL,
  `telp_web` varchar(12) NOT NULL,
  `deskripsi` text NOT NULL,
  `share1` varchar(20) NOT NULL,
  `share2` varchar(20) NOT NULL,
  `share3` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfigurasi_web`
--

INSERT INTO `konfigurasi_web` (`id_web`, `nama_web`, `email_web`, `telp_web`, `deskripsi`, `share1`, `share2`, `share3`) VALUES
(4, 'Shop Cart', 'shopcart@gmail.com', '085860078909', 'Kami siap melayani anda dengan sepenuh hati', 'www.twitter.com', 'www.facebook.com', 'www.instagram.com');

-- --------------------------------------------------------

--
-- Table structure for table `merk`
--

CREATE TABLE `merk` (
  `id_merk` int(11) NOT NULL,
  `nama_merk` varchar(20) NOT NULL,
  `gambar` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merk`
--

INSERT INTO `merk` (`id_merk`, `nama_merk`, `gambar`) VALUES
(50, 'Casio', '11.png'),
(51, 'Vida', '21.png'),
(52, 'Sport', '31.png'),
(53, 'Rolex', '41.png'),
(54, 'Rado', '51.png'),
(55, 'Seiko', '61.png');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id_order` int(5) NOT NULL,
  `id_customer` int(5) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `total_bayar` int(5) NOT NULL,
  `tgl_order` datetime NOT NULL,
  `keterangan` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_kategori` varchar(15) NOT NULL,
  `id_merk` varchar(15) NOT NULL,
  `nama_produk` varchar(20) NOT NULL,
  `bahan` varchar(20) NOT NULL,
  `warna` varchar(10) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(15) NOT NULL,
  `foto` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `id_merk`, `nama_produk`, `bahan`, `warna`, `deskripsi`, `harga`, `foto`) VALUES
(21, '10', '50', 'jam tangan', 'stainless steel', 'emas', 'tahan karat dan elegan ', 990000, 'a1.jpg'),
(23, '11', '51', 'gelang', 'karet', 'hitam', 'lentur', 20000, 'c1.jpg'),
(25, '12', '50', 'Cincin', 'emas', 'abu abu', 'mantab jiwa', 400000, 'j1.jpg'),
(26, '13', '50', 'kalung', 'emas', 'keemasan', 'well ', 500000, 'shop-cart1.PNG'),
(27, '14', '50', 'cincin nikah', 'emas', 'emas', 'mantab buat cincin nikah sob!', 400000, 'e1.jpg'),
(28, '15', '50', 'Cincin HEYu jewelry', 'logam', 'emas', 'kondisi oke', 400000, 'g1.jpg'),
(31, '18', '50', 'gelang', 'emas', 'emas', 'nyaman dipakai', 100000, 'b1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(5) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `email`, `password`) VALUES
(1, 'rava kusnaidi', 'rava ', 'rava@gmail.com', 'rava1234'),
(4, 'admin', 'admin', 'admin@gmail.com', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id_checkout`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id_hal`);

--
-- Indexes for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `konfigurasi_web`
--
ALTER TABLE `konfigurasi_web`
  ADD PRIMARY KEY (`id_web`);

--
-- Indexes for table `merk`
--
ALTER TABLE `merk`
  ADD PRIMARY KEY (`id_merk`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id_checkout` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id_hal` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `konfigurasi_web`
--
ALTER TABLE `konfigurasi_web`
  MODIFY `id_web` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `merk`
--
ALTER TABLE `merk`
  MODIFY `id_merk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id_order` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
