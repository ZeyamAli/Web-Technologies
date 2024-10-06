-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2024 at 06:01 PM
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
-- Database: `mydatabase1`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tel_number` varchar(20) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `first_name`, `last_name`, `email`, `tel_number`, `message`) VALUES
(1, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL, NULL),
(11, NULL, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL, NULL),
(13, NULL, NULL, NULL, NULL, NULL),
(14, NULL, NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL, NULL),
(17, NULL, NULL, NULL, NULL, NULL),
(18, NULL, NULL, NULL, NULL, NULL),
(19, NULL, NULL, NULL, NULL, NULL),
(20, NULL, NULL, NULL, NULL, NULL),
(21, NULL, NULL, NULL, NULL, NULL),
(22, NULL, NULL, NULL, NULL, NULL),
(23, NULL, NULL, NULL, NULL, NULL),
(24, NULL, NULL, NULL, NULL, NULL),
(25, NULL, NULL, NULL, NULL, NULL),
(26, NULL, NULL, NULL, NULL, NULL),
(27, NULL, NULL, NULL, NULL, NULL),
(28, NULL, NULL, NULL, NULL, NULL),
(29, NULL, NULL, NULL, NULL, NULL),
(30, NULL, NULL, NULL, NULL, NULL),
(31, NULL, NULL, NULL, NULL, NULL),
(32, NULL, NULL, NULL, NULL, NULL),
(33, NULL, NULL, NULL, NULL, NULL),
(34, NULL, NULL, NULL, NULL, NULL),
(35, NULL, NULL, NULL, NULL, NULL),
(36, NULL, NULL, NULL, NULL, NULL),
(37, NULL, NULL, NULL, NULL, NULL),
(38, NULL, NULL, NULL, NULL, NULL),
(39, NULL, NULL, NULL, NULL, NULL),
(40, NULL, NULL, NULL, NULL, NULL),
(41, NULL, NULL, NULL, NULL, NULL),
(42, NULL, NULL, NULL, NULL, NULL),
(43, NULL, NULL, NULL, NULL, NULL),
(44, NULL, NULL, NULL, NULL, NULL),
(45, NULL, NULL, NULL, NULL, NULL),
(46, NULL, NULL, NULL, NULL, NULL),
(47, NULL, NULL, NULL, NULL, NULL),
(48, NULL, NULL, NULL, NULL, NULL),
(49, NULL, NULL, NULL, NULL, NULL),
(50, NULL, NULL, NULL, NULL, NULL),
(51, NULL, NULL, NULL, NULL, NULL),
(52, NULL, NULL, NULL, NULL, NULL),
(53, NULL, NULL, NULL, NULL, NULL),
(54, NULL, NULL, NULL, NULL, NULL),
(55, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tel_number` varchar(15) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `tel_number`, `message`) VALUES
(0, 'Zeyam', 'Ali', 'Zeyamalimatharu@gmail.com', '03405943551', 'AZSXDCFGVBHJ'),
(0, 'rehan', 'Ali', 'rehanmalimatharu@gmail.com', '0340564578', 'AZSXDCFGVBHJ'),
(0, 'ccc', 'Ali', 'Zeyamalimatharu@gmail.com', '03405943551', 'sdgfhjn'),
(0, 'ahmed', 'Ali', 'ahmedalimatharu@gmail.com', '0340564578', 'rtr'),
(0, 'yousaf', 'Ali', 'yousafalimatharu@gmail.com', '0340564578', 'ygyyu'),
(0, 'yousaf', 'Ali', 'yousafalimatharu@gmail.com', '0340564578', 'ygyyu'),
(0, 'Zeyam', 'Ali', 'Zeyamalimatharu@gmail.com', '134', 'qsd'),
(0, 'Zeyam', 'Ali', 'Zeyamalimatharu@gmail.com', '03405943551', 'dfdfjknm'),
(0, 'tani', 'bhia', 'tani@gmail.com', '0340564578', 'my name is tani');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
