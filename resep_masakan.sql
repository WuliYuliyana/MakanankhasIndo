-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2018 at 10:14 AM
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
-- Database: `resep_masakan`
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

-- --------------------------------------------------------

--
-- Table structure for table `jabar`
--

CREATE TABLE `jabar` (
  `id_jabar` int(5) NOT NULL,
  `foto_jabar` varchar(255) NOT NULL,
  `nama_jabar` varchar(255) NOT NULL,
  `resep_jabar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jateng`
--

CREATE TABLE `jateng` (
  `id_jateng` int(5) NOT NULL,
  `foto_jateng` varchar(255) NOT NULL,
  `nama_jateng` varchar(255) NOT NULL,
  `resep_jateng` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jatim`
--

CREATE TABLE `jatim` (
  `id_jatim` int(5) NOT NULL,
  `foto_jatim` varchar(255) NOT NULL,
  `nama_jatim` varchar(255) NOT NULL,
  `resep_jatim` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `jabar`
--
ALTER TABLE `jabar`
  ADD PRIMARY KEY (`id_jabar`);

--
-- Indexes for table `jateng`
--
ALTER TABLE `jateng`
  ADD PRIMARY KEY (`id_jateng`);

--
-- Indexes for table `jatim`
--
ALTER TABLE `jatim`
  ADD PRIMARY KEY (`id_jatim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jabar`
--
ALTER TABLE `jabar`
  MODIFY `id_jabar` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jateng`
--
ALTER TABLE `jateng`
  MODIFY `id_jateng` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jatim`
--
ALTER TABLE `jatim`
  MODIFY `id_jatim` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
