-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2026 at 11:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `id` int(11) NOT NULL,
  `email` varchar(64) NOT NULL,
  `sifra` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`id`, `email`, `sifra`) VALUES
(1, 'toma@gmail.com', 'mojaSifraNikoJeNeZna'),
(2, 'baba@udruzenjepenzionera.com', 'sifraTajna'),
(3, 'korisnik@gmail.com', '12345678'),
(4, 'novikorisnik@gmail.com', '12341234'),
(5, 'josjedankorisnik@gmail.com', 'nekaSifra'),
(6, 'pokusaj@gmail.com', 'sifrasifra'),
(7, 'nekimejl@gmail.com', '$2y$10$lMJkS0jbWQiHAZgaJ3iJiOlR6cHTgljiaXPmye7yj5h86nhlAwN6y'),
(8, 'nekinovimejl@gmail.com', '$2y$10$Py4hmxlpXEPtig2KK2gP9Ouktr05/0BFgH5sWaqT6eK3L02kSK/X6');

-- --------------------------------------------------------

--
-- Table structure for table `narudzbine`
--

CREATE TABLE `narudzbine` (
  `id` int(11) NOT NULL,
  `id_proizvoda` int(11) NOT NULL,
  `id_korisnika` int(11) NOT NULL,
  `cijena` decimal(20,2) NOT NULL,
  `kolicina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `narudzbine`
--

INSERT INTO `narudzbine` (`id`, `id_proizvoda`, `id_korisnika`, `cijena`, `kolicina`) VALUES
(1, 4, 2, 19999.99, 10);

-- --------------------------------------------------------

--
-- Table structure for table `proizvodi`
--

CREATE TABLE `proizvodi` (
  `id` int(11) NOT NULL,
  `ime` varchar(64) NOT NULL,
  `opis` text DEFAULT NULL,
  `cijena` decimal(10,2) NOT NULL,
  `slika` varchar(128) NOT NULL,
  `kolicina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proizvodi`
--

INSERT INTO `proizvodi` (`id`, `ime`, `opis`, `cijena`, `slika`, `kolicina`) VALUES
(1, 'iPhone 13', 'Dobar iphone', 1199.99, 'iPhone13.jpg', 55),
(2, 'iPhone 11', 'iPhone 11 kao nov, baba koristila za FB', 989.99, 'iPhone11.jpg', 22),
(3, 'iPhone 15', '100% pravi iPhone, samo niko ne zna da postoji', 2499.99, 'nepostojeci.jpg', 1),
(4, 'iPhone 14 ProMax', 'Ukraden nov iz Austrije', 1999.99, 'iPhone13.jpg', 66),
(5, 'iPhone 16 Pro', 'Dobar telefon nema sta nema packe', 2350.00, 'iPhone16Pro.jpg', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `narudzbine`
--
ALTER TABLE `narudzbine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proizvodi`
--
ALTER TABLE `proizvodi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `narudzbine`
--
ALTER TABLE `narudzbine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `proizvodi`
--
ALTER TABLE `proizvodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
