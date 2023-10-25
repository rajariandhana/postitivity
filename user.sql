-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 25, 2023 at 02:28 PM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id21438956_twit`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `username`, `pass`) VALUES
(1, 'rafa@admin.com', '123'),
(2, 'ian@admin.com', '123'),
(3, 'radiantolol@gmail.com', 'secret123'),
(5, 'jins@barulagi.com', 'secret123'),
(6, 'wiranditoss@gmail.com', 'secret123'),
(7, 'dito@poke.mon', 'secret123'),
(8, 'shafakiranamulia@gmail.com', 'hahihuheho'),
(10, 'a@a.a', 'hahaha'),
(15, 'aaaaa', '123'),
(17, 'anjayyy', 'gacor1'),
(18, 'anjay', 'gacorcoy'),
(19, 'glc2023-061', 'ok'),
(20, 'naruto', 'naruto'),
(21, 'pembunuh mirna', 'sianida'),
(22, 'raihanbajigur', '31072004'),
(24, 'yoghurt', 'raffa123'),
(25, 'abcdefghijklmnopqrst', '1'),
(26, 'capekbjir', 'shf18'),
(27, 'haloguys', 'bjir'),
(29, 'dito', 'nigga');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `email` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
