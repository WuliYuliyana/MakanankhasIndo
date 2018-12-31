-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2018 at 10:13 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resep_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `makanan`
--

CREATE TABLE `makanan` (
  `id_makanan` int(5) NOT NULL,
  `foto_makanan` varchar(255) NOT NULL,
  `nama_makanan` varchar(255) NOT NULL,
  `resep_makanan` varchar(255) NOT NULL,
  `daerah_makanan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `makanan`
--

INSERT INTO `makanan` (`id_makanan`, `foto_makanan`, `nama_makanan`, `resep_makanan`, `daerah_makanan`) VALUES
(3, 'rendang.jpg', 'Rendang', '<p>500 gram daging sapi, potong menjadi 10</p><p>600 ml santan kental, dari 1.5 butir kelapa</p><p>300 gram baby potato</p><p>5 sdm minyak goreng</p><p>300 ml air</p><p>Bumbu halus:</p><p>10 buah cabai merah iris</p><p>6 butir bawah merah</p><p>3 siung ba', 'Padang, Sumatera Barat'),
(4, 'mie aceh.jpg', 'Mie Aceh', '<p>400 gr mie basah/ kuning</p>\r\n<p>750 ml kaldu sapi</p>\r\n<p>150 gr udang basah, bersihkan, buang kulitnya.</p>\r\n<p>150 gr daging kambing/ sapi, potong dadu</p>\r\n<p>1 buah tomat, potong dadu</p>\r\n<p>4 siung bawang putih, iris tipis.</p>\r\n<p>3 siung bawan', 'Aceh'),
(5, 'karedok.jpg', 'Karedok', '<p>150 g kol, iris tipis</p>\r\n<p>100 g ubi jalar merah kupas, serut tipis</p>\r\n<p>100 g tauge, siangi dan potong ekornya</p>\r\n<p>3 buah terong gelatik, belah dua dan iris tipis</p>\r\n<p>2 buah mentimun, belah dua dan iris tipis</p>\r\n<p>5 lonjor kacang panj', 'Jawa Barat'),
(6, 'gulai-ikan-patin.jpg', 'Gulai Ikan Patin', '<p>&nbsp;&nbsp;&nbsp; 500-600 gram ikan patin dibersihkan, potong-potong dan cuci bersih<br />&nbsp;&nbsp;&nbsp; 2 batang serai, ambil bagian dalam lalu digeprek<br />&nbsp;&nbsp;&nbsp; 2 lembar daun salam<br />&nbsp;&nbsp;&nbsp; 5 lembar daun jeruk<br />', 'Jambi,Sumatra Utara');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`id_makanan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `makanan`
--
ALTER TABLE `makanan`
  MODIFY `id_makanan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
