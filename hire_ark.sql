-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2020 at 10:13 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hire_ark`
--

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_id` int(11) NOT NULL,
  `project_name` varchar(150) DEFAULT NULL,
  `project_desc` varchar(80) DEFAULT NULL,
  `project_type` int(11) DEFAULT NULL,
  `project_image` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `project_name`, `project_desc`, `project_type`, `project_image`) VALUES
(6, 'Aplikasi Website Pendeteksi Penyakit Asam Urat', 'Pendeteksi Penyakit Asam Urat', 1, NULL),
(7, 'Aplikasi Android Pendeteksi Penyakit Asam Urat', 'Pendeteksi Penyakit Maag', 2, NULL),
(8, 'Aplikasi Android Pendeteksi Pegal Linu', 'Membuat Aplikasi Android Pendeteksi Pegal Linu', NULL, NULL),
(9, 'Aplikasi Android Pendeteksi Pegal Linu', 'Membuat Aplikasi Android Pendeteksi Pegal Linu', 0, NULL),
(10, 'Aplikasi Android Pendeteksi Pegal Linu', 'Membuat Aplikasi Android Pendeteksi Pegal Linu', 0, NULL),
(11, 'Aplikasi Android Pendeteksi Pegal Linu', 'Membuat Aplikasi Android Pendeteksi Pegal Linu', 0, NULL),
(12, 'Aplikasi Android Pendeteksi Pegal Linu', 'Membuat Aplikasi Android Pendeteksi Pegal Linu', 0, NULL),
(13, 'Aplikasi Android Pendeteksi Pegal Linu', 'Membuat Aplikasi Android Pendeteksi Pegal Linu', 0, 'filname.jpg'),
(14, 'Aplikasi Android Pendeteksi Pegal Linu', 'Membuat Aplikasi Android Pendeteksi Pegal Linu', 0, 'projectImage-1605596547159.png'),
(15, 'Aplikasi Android Arkademy', 'Membuat Aplikasi Android Arkademy', 2, 'projectImage-1605596816234.png'),
(16, 'Aplikasi Android Arkademy', 'Membuat Aplikasi Android Arkademy', 2, 'projectImage-1605597223752.jpg'),
(17, 'Aplikasi Android Arkademy', 'Membuat Aplikasi Android Arkademy', 2, 'projectImage-1605597272567.jpg'),
(18, 'Aplikasi Android Arkademy', 'Membuat Aplikasi Android Arkademy', 2, 'projectImage-1605597320639.jpg'),
(19, 'Aplikasi Android Arkademy', 'Membuat Aplikasi Android Arkademy', 2, ''),
(20, 'Aplikasi Android Arkademy', 'Membuat Aplikasi Android Arkademy', 2, ''),
(21, 'Aplikasi Android Arkademy', 'Membuat Aplikasi Android Arkademy', 2, 'projectImage-1605597438702.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_skill`
--

CREATE TABLE `tb_skill` (
  `skill_id` int(11) NOT NULL,
  `skill_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_skill`
--

INSERT INTO `tb_skill` (`skill_id`, `skill_name`) VALUES
(5, 'Devops');

-- --------------------------------------------------------

--
-- Table structure for table `tb_skill_engineer`
--

CREATE TABLE `tb_skill_engineer` (
  `skill_id_eng` int(11) NOT NULL,
  `skill_id` int(11) DEFAULT NULL,
  `eng_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_skill_engineer`
--

INSERT INTO `tb_skill_engineer` (`skill_id_eng`, `skill_id`, `eng_name`) VALUES
(5, NULL, 'Rini'),
(6, 5, 'Tono');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` longtext NOT NULL,
  `user_level` int(11) NOT NULL,
  `user_online` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_email`, `user_password`, `user_level`, `user_online`, `created_at`, `updated_at`) VALUES
(1, 'erdin@gmail.com', '$2b$10$aouJuUQ92Z.E3ndoUV4nleCVFMlftwNf653Y0ZglikirOVSit84Q2', 1, NULL, '2020-11-17 03:48:02', '2020-11-17 03:48:02'),
(2, 'erdin1@gmail.com', '$2b$10$YXAdQS/42ulVof8Mt04jTeXydvE3keXFQncln/iaoIlSiysYh.oYi', 0, NULL, '2020-11-17 03:52:24', '2020-11-17 03:52:24'),
(3, 'erdin2@gmail.com', '$2b$10$83qX5p65JY5L6u7YNS7BTuInvUUEHnGLNxFKY779GqQOoQ8bpUFra', 1, NULL, '2020-11-17 03:53:37', '2020-11-17 03:53:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `tb_skill`
--
ALTER TABLE `tb_skill`
  ADD PRIMARY KEY (`skill_id`);

--
-- Indexes for table `tb_skill_engineer`
--
ALTER TABLE `tb_skill_engineer`
  ADD PRIMARY KEY (`skill_id_eng`),
  ADD KEY `skill_id` (`skill_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tb_skill`
--
ALTER TABLE `tb_skill`
  MODIFY `skill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_skill_engineer`
--
ALTER TABLE `tb_skill_engineer`
  MODIFY `skill_id_eng` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_skill_engineer`
--
ALTER TABLE `tb_skill_engineer`
  ADD CONSTRAINT `tb_skill_engineer_ibfk_1` FOREIGN KEY (`skill_id`) REFERENCES `tb_skill` (`skill_id`) ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
