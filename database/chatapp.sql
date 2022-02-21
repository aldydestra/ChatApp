-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2022 at 11:36 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chat_message_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `chat_message` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`chat_message_id`, `to_user_id`, `from_user_id`, `chat_message`, `timestamp`, `status`) VALUES
(1, 0, 5, '<div>tes</div>', '2022-02-21 10:28:37', 1),
(2, 8, 5, 'tes', '2022-02-21 10:28:46', 0),
(3, 5, 8, 'uyyy', '2022-02-21 10:29:11', 0),
(4, 5, 8, 'ada apa', '2022-02-21 10:29:15', 0),
(5, 0, 8, '<div>haloo</div><div><br></div>', '2022-02-21 10:29:21', 1),
(6, 0, 8, '<p><img src=\"media/kisspng-ux-south-africa-emoji-loudspeaker-social-media-ham-loudspeaker-5abbcc9308fd99.1739871215222570430368.png\" class=\"img-thumbnail\" width=\"180\" height=\"140\"></p><br>', '2022-02-21 10:29:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `detail_login`
--

CREATE TABLE `detail_login` (
  `login_details_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_type` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_login`
--

INSERT INTO `detail_login` (`login_details_id`, `user_id`, `last_activity`, `is_type`) VALUES
(1, 5, '2022-02-21 10:02:16', 'no'),
(2, 5, '2022-02-21 10:11:47', 'no'),
(3, 5, '2022-02-21 10:17:49', 'no'),
(4, 8, '2022-02-21 10:26:34', 'no'),
(5, 5, '2022-02-21 10:27:15', 'no'),
(6, 8, '2022-02-21 10:27:58', 'no'),
(7, 5, '2022-02-21 10:28:46', 'no'),
(8, 8, '2022-02-21 10:29:36', 'no'),
(9, 5, '2022-02-21 10:35:54', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`user_id`, `username`, `password`) VALUES
(5, 'destra', '$2y$10$Qe8Aidj2Zlu/Ujmr8DuFeuK1R8zrbzJQ6IyDNqqUkZc6/g1vNTREm'),
(8, 'admin', '$2y$10$hOkQt0CjqbkemNGwE10Zp.PiTnbqshFpAa9Tu0V3KqsBkTTb90tye'),
(9, 'rifqi', '$2y$10$XcgIcNPTMx4WpmEHdOXGAeHMf/FTuRy44kuC/H31fXPGJ8MMKzwHC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chat_message_id`);

--
-- Indexes for table `detail_login`
--
ALTER TABLE `detail_login`
  ADD PRIMARY KEY (`login_details_id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chat_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `detail_login`
--
ALTER TABLE `detail_login`
  MODIFY `login_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
