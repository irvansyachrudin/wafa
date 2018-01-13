-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2018 at 12:08 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wafa`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga_normal` smallint(10) NOT NULL,
  `harga_member` smallint(10) NOT NULL,
  `berat` varchar(10) NOT NULL,
  `kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama`, `harga_normal`, `harga_member`, `berat`, `kategori`) VALUES
(1, 'Tajwid', 12000, 8000, '3', 'Agama'),
(2, 'Tahsin', 15000, 12000, '3', 'Agama'),
(3, 'Buku Tilawah Wafa 1', 12000, 9000, '0.2', 'Agama'),
(4, 'Buku Tilawah Wafa 2', 11500, 9500, '0.2', 'Agama'),
(5, 'Buku Peraga Tilawah Wafa 1', 20000, 17000, '0.4', 'Agama'),
(6, 'Buku Menulis Wafa 1', 17000, 15000, '0.3', 'Agama'),
(7, 'Ghorib', 13000, 10000, '0.3', 'Agama');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `kota` varchar(20) NOT NULL,
  `provinsi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `nama`, `alamat`, `kota`, `provinsi`) VALUES
(1, 'Ainur Rofiq', 'Jl Kenjeran no.44', 'Surabaya', 'Jawa Timur'),
(2, 'Irvan Syhachrudin', 'Jl Semut no.67', 'Surabaya', 'Jawa Timur'),
(3, 'Arif Subroto', 'Jl Puri Darmo no.55', 'Malang', 'Jawa Timur'),
(4, 'Fahmi Exceleno', 'Jl Pondok Indah no.90', 'Jember', 'Jawa Timur'),
(5, 'Adi Putra', 'Jl Bronggalan no.66', 'Jombang', 'Jawa TImur');

-- --------------------------------------------------------

--
-- Table structure for table `ekspedisi`
--

CREATE TABLE `ekspedisi` (
  `id` int(11) NOT NULL,
  `kota/kab` varchar(40) NOT NULL,
  `harga` int(20) NOT NULL,
  `ekspedisi` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ekspedisi`
--

INSERT INTO `ekspedisi` (`id`, `kota/kab`, `harga`, `ekspedisi`) VALUES
(2, 'Bangkalan', 10000, 'jne'),
(3, 'Blitar', 13000, 'jne'),
(4, 'Gresik', 5000, 'jne'),
(5, 'Jombang', 10000, 'jne'),
(6, 'Kebumen', 17000, 'jne'),
(7, 'Lamongan', 10000, 'jne'),
(8, 'magelang', 13000, 'jne'),
(9, 'Magelang', 17000, 'jne'),
(10, 'Malang', 8000, 'jne'),
(11, 'Mojokerto', 8000, 'jne'),
(12, 'Nganjuk', 10000, 'jne'),
(13, 'Pamekasan', 10000, 'jne'),
(14, 'Purworejo', 17000, 'jne'),
(15, 'Sampang', 10000, 'jne'),
(16, 'Sidoarjo', 10000, 'jne'),
(17, 'Sidoarjo', 8000, 'jne'),
(18, 'Sumenep', 10000, 'jne'),
(19, 'Surabaya', 5000, 'jne'),
(20, 'Tuban', 10000, 'jne'),
(21, 'Tulungagung', 10000, 'jne'),
(22, 'Wonosobo', 17000, 'jne');

-- --------------------------------------------------------

--
-- Table structure for table `ptb`
--

CREATE TABLE `ptb` (
  `id` varchar(20) NOT NULL,
  `id_supplier` varchar(11) NOT NULL,
  `id_barang` varchar(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stok`
--

CREATE TABLE `stok` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(40) NOT NULL,
  `jumlah` smallint(11) NOT NULL,
  `batas_minimal` smallint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stok`
--

INSERT INTO `stok` (`id`, `nama_barang`, `jumlah`, `batas_minimal`) VALUES
(1, 'Tahsin', 32, 10),
(2, 'Tajwid', 44, 10),
(3, 'Buku Tilawah Wafa 1', 87, 10),
(4, 'Buku Peraga Tilawah Wafa 1 	', 65, 10),
(5, 'Buku Menulis Wafa 1', 44, 15);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `kota` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `nama`, `alamat`, `kota`) VALUES
(1, 'PT. Abdul Jaya', 'Jl Pemuda no.128', 'Surabaya'),
(2, 'PT. Azindo Gunung Kleco', 'Jl Manukan no.38', 'Surabaya'),
(3, 'PT. Graha Abadi', 'Jl Graha Kamal no.4', 'Madura'),
(4, 'PT. Indon Selera', 'Jl Pacarkembang no.556', 'Malang'),
(5, 'PT. RSI KMT', 'Jl Pademangu no.89', 'Jember');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ekspedisi`
--
ALTER TABLE `ekspedisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ekspedisi`
--
ALTER TABLE `ekspedisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `stok`
--
ALTER TABLE `stok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
