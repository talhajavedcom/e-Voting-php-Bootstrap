-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2022 at 04:34 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voting_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `category`) VALUES
(1, 'President'),
(3, 'Vice Presindent'),
(4, 'Officer'),
(5, 'nazam'),
(6, 'MPA'),
(7, 'concelor');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1+admin , 2 = users'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrator', 'admin', 'admin123', 1),
(6, 'zabi', 'talhajaved', 'zabi', 2),
(7, 'Tayyab', 'tayyab', 'tayyab', 2),
(8, 'asam', 'asam', 'asam', 2),
(9, 'Aloi', 'ali', 'ali', 2),
(10, 'tayyab', 'tayyab', 'tayyab', 2),
(11, 'talha', 'talha', 'talha', 2),
(12, 'babar', 'babar', 'babar', 2),
(13, 'asad', 'asad', 'asad', 2);

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(30) NOT NULL,
  `voting_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `voting_opt_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voting_id`, `category_id`, `voting_opt_id`, `user_id`) VALUES
(1, 1, 1, 1, 3),
(2, 1, 3, 5, 3),
(3, 1, 4, 6, 3),
(4, 1, 4, 7, 3),
(5, 1, 4, 8, 3),
(6, 1, 4, 9, 3),
(7, 1, 1, 3, 4),
(8, 1, 3, 12, 4),
(9, 1, 4, 6, 4),
(10, 1, 4, 8, 4),
(11, 1, 4, 10, 4),
(12, 1, 4, 11, 4),
(13, 1, 1, 1, 5),
(14, 1, 3, 5, 5),
(15, 1, 4, 6, 5),
(16, 4, 1, 13, 6),
(17, 4, 3, 16, 6),
(18, 4, 1, 14, 7),
(19, 4, 3, 15, 7),
(20, 4, 1, 13, 8),
(21, 4, 3, 17, 8),
(22, 5, 1, 19, 9),
(23, 5, 3, 23, 9),
(24, 5, 4, 24, 9),
(25, 5, 1, 18, 11),
(26, 5, 3, 21, 11),
(27, 5, 4, 24, 11),
(28, 5, 1, 18, 12),
(29, 5, 3, 23, 12),
(30, 5, 4, 25, 12),
(31, 5, 5, 26, 12);

-- --------------------------------------------------------

--
-- Table structure for table `voting_cat_settings`
--

CREATE TABLE `voting_cat_settings` (
  `id` int(30) NOT NULL,
  `voting_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `max_selection` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voting_cat_settings`
--

INSERT INTO `voting_cat_settings` (`id`, `voting_id`, `category_id`, `max_selection`) VALUES
(1, 1, 1, 1),
(2, 1, 3, 1),
(3, 1, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `voting_list`
--

CREATE TABLE `voting_list` (
  `id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voting_list`
--

INSERT INTO `voting_list` (`id`, `title`, `description`, `is_default`) VALUES
(4, 'SSG Election', 'For SSG election', 0),
(5, 'General Election', 'Vote for you Future | Paksitan General Election', 0),
(6, 'Coselor', 'vote for your Concelor', 1);

-- --------------------------------------------------------

--
-- Table structure for table `voting_opt`
--

CREATE TABLE `voting_opt` (
  `id` int(30) NOT NULL,
  `voting_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `image_path` text NOT NULL,
  `opt_txt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voting_opt`
--

INSERT INTO `voting_opt` (`id`, `voting_id`, `category_id`, `image_path`, `opt_txt`) VALUES
(1, 1, 1, '1600398180_no-image-available.png', 'James Smith'),
(3, 1, 1, '1600415460_avatar2.png', 'James Wilson'),
(5, 1, 3, '1600415520_avatar.jpg', 'George Walker'),
(6, 1, 4, '1600400340_no-image-available.png', 'Cadidate 1'),
(7, 1, 4, '1600400340_no-image-available.png', 'Cadidate 2'),
(8, 1, 4, '1600400340_no-image-available.png', 'Cadidate 3'),
(9, 1, 4, '1600400520_no-image-available.png', 'Cadidate  4'),
(10, 1, 4, '1600400640_no-image-available.png', 'Cadidate 5'),
(11, 1, 4, '1600400400_no-image-available.png', 'Cadidate 6'),
(12, 1, 3, '1600415520_no-image-available.png', 'Claire Blake'),
(13, 4, 1, '1614206040_IMG20210207174817[1].jpg', 'Adrian Mercurio'),
(14, 4, 1, '1614206100_jude.jpg', 'Angel Jude Suarez'),
(15, 4, 3, '1614206220_IMG20210223174532[1].jpg', 'Adones Evangelista'),
(16, 4, 3, '1614206340_IMG20210210175225[1].jpg', 'Saxon Ong'),
(17, 4, 3, '1614206400_IMG20210219143530[1].jpg', 'Prince Ly Cesar'),
(18, 5, 1, '1649433240_dr-arif-alvi-1.png', 'Arif Alvi'),
(19, 5, 1, '1649433240_dr-arif-alvi-1.png', 'FZR'),
(21, 5, 3, '1649433360_dr-arif-alvi-1.png', 'Imran Khan'),
(22, 5, 1, '1649433360_dr-arif-alvi-1.png', 'Shahbaz S.'),
(23, 5, 3, '1649433420_dr-arif-alvi-1.png', 'Shahbaz Sharif'),
(24, 5, 4, '1649433420_dr-arif-alvi-1.png', 'Fawad Ch.'),
(25, 5, 4, '1649484120_dr-arif-alvi-1.png', 'Tayyab'),
(26, 5, 5, '1649587320_dr-arif-alvi-1.png', 'Talha Babar'),
(27, 6, 7, '1649688420_dr-arif-alvi-1.png', 'Tayyab'),
(28, 6, 7, '1649688480_download.jpg', 'zabi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voting_cat_settings`
--
ALTER TABLE `voting_cat_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voting_list`
--
ALTER TABLE `voting_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voting_opt`
--
ALTER TABLE `voting_opt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `voting_cat_settings`
--
ALTER TABLE `voting_cat_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `voting_list`
--
ALTER TABLE `voting_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `voting_opt`
--
ALTER TABLE `voting_opt`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
