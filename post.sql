-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 25, 2023 at 02:39 PM
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
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `ID` int(20) NOT NULL,
  `content` text NOT NULL,
  `user_ID` int(20) NOT NULL,
  `date` datetime NOT NULL,
  `color` varchar(7) NOT NULL,
  `font` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`ID`, `content`, `user_ID`, `date`, `color`, `font`) VALUES
(8, 'halo guys semangat pweb', 8, '0000-00-00 00:00:00', '#feacd4', 'Playpen Sans'),
(9, 'assalamaualaikum', 15, '0000-00-00 00:00:00', '#98f649', 'Give You Glory'),
(13, 'hehehe', 15, '2023-10-24 08:26:59', '#ffea3b', 'Indie Flower'),
(15, 'hahahaahahaha', 15, '2023-10-24 08:36:43', '#98f649', 'Give You Glory'),
(16, 'plis', 15, '2023-10-24 08:37:06', '#95d6f1', 'Give You Glory'),
(17, 'anjayani', 18, '2023-10-24 08:38:14', '#faea76', 'Give You Glory'),
(18, 'kocak geming', 18, '2023-10-24 08:38:31', '#95d6f1', 'Give You Glory'),
(19, 'kocak geming', 18, '2023-10-24 08:41:19', '#ff84d5', 'Playpen Sans'),
(20, 'hhh', 19, '2023-10-24 08:41:23', '#ff84d5', 'Indie Flower'),
(21, 'boyyy', 18, '2023-10-24 08:41:25', '#95d6f1', 'Indie Flower'),
(22, 'hhh', 19, '2023-10-24 08:41:29', '#fbb749', 'Playpen Sans'),
(23, 'hhh', 19, '2023-10-24 08:41:33', '#95d6f1', 'Give You Glory'),
(24, 'bapak lu gw kirim alfatihah', 18, '2023-10-24 08:41:48', '#95d6f1', 'Playpen Sans'),
(25, 'FUCKING NIGGER GET BACK PICKING COTTON', 19, '2023-10-24 08:42:00', '#fbb749', 'Give You Glory'),
(26, 'bang jabieb oshiku nomor 1', 18, '2023-10-24 08:42:08', '#fbb749', 'Give You Glory'),
(27, 'warna', 15, '2023-10-24 08:56:19', '#95d6f1', 'Give You Glory'),
(28, 'MEMEK', 15, '2023-10-24 08:59:23', '#95d6f1', 'Playpen Sans'),
(29, 'KONTOL', 15, '2023-10-24 09:00:01', '#faea76', 'Playpen Sans'),
(30, 'NIGGERR', 19, '2023-10-24 09:00:11', '#acec60', 'Indie Flower'),
(31, 'sijeiqjahw', 18, '2023-10-24 09:01:17', '#feacd4', 'Indie Flower'),
(32, 'fioeowkw', 18, '2023-10-24 09:01:23', '#ff8c4b', 'Indie Flower'),
(33, 'fioeowkw', 18, '2023-10-24 09:01:23', '#acec60', 'Indie Flower'),
(34, '99% contribution', 18, '2023-10-24 09:01:50', '#ff84d5', 'Indie Flower'),
(35, ' u fucking nigger', 19, '2023-10-24 09:02:25', '#feacd4', 'Playpen Sans'),
(36, 'Gitar kupetik\r\nBass kubetot\r\nHai nona cantik\r\nSini aku entot', 20, '2023-10-24 09:06:31', '#ff8c4b', 'Indie Flower'),
(37, 'I FUKCING HATE NGIGER', 19, '2023-10-24 09:07:02', '#acec60', 'Playpen Sans'),
(38, 'naruto ngentot', 19, '2023-10-24 09:07:18', '#ff8c4b', 'Indie Flower'),
(39, 'SOCIETY 50', 19, '2023-10-24 09:07:28', '#95d6f1', 'Indie Flower'),
(40, 'jessica wongso layak dipenjaralkan', 21, '2023-10-24 09:08:41', '#ffea3b', 'Playpen Sans'),
(41, 'edi darmawan salihin', 21, '2023-10-24 09:10:08', '#95d6f1', 'Give You Glory'),
(42, 'TES', 19, '2023-10-24 09:20:16', '#ff84d5', 'Give You Glory'),
(43, 'pak racist', 21, '2023-10-24 09:23:37', '#95d6f1', 'Indie Flower'),
(44, 'wkwwkkwkw triatmono', 21, '2023-10-24 09:24:03', '#95d6f1', 'Indie Flower'),
(45, 'coiii', 21, '2023-10-24 09:28:42', '#acec60', 'Indie Flower'),
(46, 'niggerrr', 19, '2023-10-24 09:29:43', '#feacd4', 'Give You Glory'),
(47, 'GO BACK PICK COTTON', 19, '2023-10-24 09:31:03', '#fbb749', 'Indie Flower'),
(48, 'aaa', 19, '2023-10-24 09:46:23', '#ff8c4b', 'Indie Flower'),
(49, 'aaa', 19, '2023-10-24 09:46:26', '#95d6f1', 'Playpen Sans'),
(50, 'aasdw', 19, '2023-10-24 09:46:29', '#acec60', 'Indie Flower'),
(51, 'wasdw', 19, '2023-10-24 09:46:32', '#ff84d5', 'Playpen Sans'),
(52, 'sdwasdw', 19, '2023-10-24 09:46:35', '#ff84d5', 'Give You Glory'),
(53, 'sdwasdw', 19, '2023-10-24 09:46:44', '#ff84d5', 'Indie Flower'),
(54, 'WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW', 19, '2023-10-24 10:06:10', '#95d6f1', 'Indie Flower'),
(55, 'nigganigganigganigganigganiggavnigganigganiggavniggavnigganigga', 19, '2023-10-24 10:06:57', '#ff84d5', 'Give You Glory'),
(56, 'IHATENIGGERIHATENIGGERIHATENIGGERIHATENIGGERIHATENIGGERIHATENIGGERIHATENIGGERVIHATENIGGERIHATENIGGER', 19, '2023-10-24 10:10:33', '#fbb749', 'Indie Flower'),
(57, 'IHATENIGGERIHATENIGGERIHATENIGGERIHATENIGGERIHATENIGGERIHATENIGGERIHATENIGGERIHATENIGGERIHATENIGGERI', 19, '2023-10-24 10:10:48', '#95d6f1', 'Playpen Sans'),
(58, 'IHATENIGGERIHATENIGGERIHATENIGGERIHATENIGGERIHATENIGGERIHATENIGGERIHATENIGGERIHATENIGGERIHATENIGGERI', 19, '2023-10-24 10:10:59', '#feacd4', 'Indie Flower'),
(59, 'abcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghijabcdefghij', 20, '2023-10-24 10:11:29', '#fbb749', 'Give You Glory'),
(60, 'I SHOOT NIGGER \r\nI SHOOT NIGGER\r\nI SHOOT NIGGER \r\nI SHOOT NIGGER\r\nI SHOOT NIGGER \r\nI SHOOT NIGGER', 19, '2023-10-24 10:12:07', '#95d6f1', 'Indie Flower'),
(61, 'I SHOOT NIGGER \r\nI SHOOT NIGGER\r\nI SHOOT NIGGER \r\nI SHOOT NIGGER\r\nI SHOOT NIGGER \r\nI SHOOT NIGGER\r\nI SHOOT NIGGER \r\nI SHOOT NIGGER\r\nI SHOOT NIGGER \r\nI SHOOT NIGGER\r\nI SHOOT NIGGER \r\nI SHOOT NIGGER\r\nI SHOOT NIGGER', 19, '2023-10-24 10:12:23', '#ffea3b', 'Indie Flower'),
(62, '\r\nI SHOOT NIGGER \r\nI SHOOT NIGGER\r\nV\r\nI SHOOT NIGGER \r\nI SHOOT NIGGERI SHOOT NIGGER \r\nI SHOOT NIGGERVI SHOOT NIGGER \r\nI SHOOT NIGGERI SHOOT NIGGER \r\nI SHOOT NIGGER\r\nI SHOOT NIGGER \r\nI SHOOT NIGGER\r\nI SHOOT NIGGE', 19, '2023-10-24 10:15:45', '#95d6f1', 'Give You Glory'),
(63, 'لازغزاتووهوترازلدفدلژرهخ،حمحىختهرعاغلااازز\r\n\r\nلازغزاتووهوترازلدفدلژرهخ،حمحىختهرعاغلااازز\r\n\r\nلازغزاتووهوترازلدفدلژرهخ،حمحىختهرعاغلااازز\r\n\r\nVVلازغزاتووهوترازلدفدلژر،حمحىختهرعاغلااازز\r\n\r\nلازغزاتووهوترازلدفدلژرهخ', 19, '2023-10-24 10:16:10', '#95d6f1', 'Playpen Sans'),
(64, 'bang', 21, '2023-10-24 10:22:07', '#ffea3b', 'Playpen Sans'),
(65, 'tes', 20, '2023-10-24 10:27:09', '#faea76', 'Give You Glory'),
(66, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 19, '2023-10-24 10:27:37', '#95d6f1', 'Playpen Sans'),
(67, 'post', 20, '2023-10-24 10:30:18', '#ff84d5', 'Playpen Sans'),
(68, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 19, '2023-10-24 10:30:24', '#98f649', 'Playpen Sans'),
(69, '( ͡° ͜ʖ ͡°)', 19, '2023-10-24 10:31:12', '#ff8c4b', 'Playpen Sans'),
(70, '( ͡° ͜ʖ ͡°)( ͡° ͜ʖ ͡°)( ͡° ͜ʖ ͡°)( ͡° ͜ʖ ͡°)( ͡° ͜ʖ ͡°)( ͡° ͜ʖ ͡°)( ͡° ͜ʖ ͡°)( ͡° ͜ʖ ͡°)( ͡° ͜ʖ ͡°)( ͡° ͜ʖ ͡°)', 19, '2023-10-24 10:31:20', '#ff8c4b', 'Indie Flower'),
(71, '(◕‿◕)╭∩╮(◕‿◕)╭∩╮v(◕‿◕)╭∩╮(◕‿◕)╭∩╮(◕‿◕)╭∩╮', 19, '2023-10-24 10:31:43', '#ff84d5', 'Give You Glory'),
(72, 'boiii', 21, '2023-10-24 10:32:16', '#feacd4', 'Indie Flower'),
(73, 'ww', 19, '2023-10-24 10:38:18', '#95d6f1', 'Give You Glory'),
(74, 'ᕙ(▀̿ĺ̯▀̿ ̿)ᕗᕙ(▀̿ĺ̯▀̿ ̿)ᕗᕙ(▀̿ĺ̯▀̿ ̿)ᕗᕙ(▀̿ĺ̯▀̿ ̿)ᕗᕙ(▀̿ĺ̯▀̿ ̿)ᕗᕙ(▀̿ĺ̯▀̿ ̿)ᕗvvᕙ(▀̿ĺ̯▀̿ ̿)ᕗᕙ(▀̿ĺ̯▀̿ ̿)ᕗᕙ(▀̿ĺ̯▀̿ ̿)ᕗᕙ(▀̿ĺ̯▀̿ ̿)ᕗᕙ(▀̿ĺ̯▀̿ ̿)ᕗᕙ(▀̿ĺ̯▀̿ ̿)ᕗᕙ(▀̿', 19, '2023-10-24 10:38:30', '#95d6f1', 'Give You Glory'),
(75, 'PUBG GAME KONTOL SUSAH BANGET NGETOT BABI NGENTOT ANJING PUBG TOLOL ANJING SMAPAH GAME SAMPAH SUMPAH DAH ANJING BBAI NGENTOT', 19, '2023-10-24 10:39:09', '#fbb749', 'Playpen Sans'),
(76, 'k in kpk stands for kontol', 20, '2023-10-24 10:45:43', '#ff84d5', 'Give You Glory'),
(77, 'wasdw', 19, '2023-10-24 10:47:13', '#95d6f1', 'Give You Glory'),
(78, 'wasdwasdw', 19, '2023-10-24 10:47:34', '#fbb749', 'Give You Glory'),
(79, 'wasdwasdw', 19, '2023-10-24 10:47:34', '#ff8c4b', 'Indie Flower'),
(80, 'makasih admin', 20, '2023-10-24 11:05:12', '#98f649', 'Indie Flower'),
(86, 'i heckin love kerja kelompok', 21, '2023-10-24 11:36:12', '#faea76', 'Indie Flower'),
(87, 'Halo raf', 24, '2023-10-24 21:33:47', '#95d6f1', 'Give You Glory'),
(88, 'your thoughts hhhhheresa ', 25, '2023-10-25 01:50:47', '#ffea3b', 'Playpen Sans'),
(89, 'ALJABAR ALIN ANJING', 25, '2023-10-25 02:05:03', '#ffea3b', 'Playpen Sans'),
(90, 'masidmasodna ', 25, '2023-10-25 03:03:03', '#ffea3b', 'Give You Glory'),
(93, 'jam 10:38 hari rabu', 21, '2023-10-25 03:38:42', '#95d6f1', 'Playpen Sans'),
(94, 'anjing', 21, '2023-10-25 08:50:40', '#fbb749', 'Indie Flower'),
(96, 'kopi\r\n', 21, '2023-10-25 11:15:37', '#95d6f1', 'Indie Flower'),
(99, 'mantap cuyyy\r\n', 21, '2023-10-25 11:22:28', '#95d6f1', 'Give You Glory'),
(100, 'I CANT BREATHE\r\n', 21, '2023-10-25 11:33:40', '#95d6f1', 'Playpen Sans'),
(101, 'WHATS WRONG OFFICER\r\n', 21, '2023-10-25 11:33:57', '#acec60', 'Playpen Sans'),
(102, 'WHATS UP\r\n', 21, '2023-10-25 11:34:08', '#ffea3b', 'Indie Flower'),
(107, 'Hey guys, did you know that in terms of male human and female Pokémon breeding, Vaporeon is the most', 29, '2023-10-25 14:10:33', '#feacd4', 'Indie Flower');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_ID` (`user_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `user_ID` FOREIGN KEY (`user_ID`) REFERENCES `user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
