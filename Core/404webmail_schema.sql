-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2023 at 03:38 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `404webmail_new_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `draft`
--

CREATE TABLE `draft` (
  `mail_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE `inbox` (
  `mail_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `attachment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `sent_by` varchar(255) NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `is_starred` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mail_sent_to`
--

CREATE TABLE `mail_sent_to` (
  `id` int(11) NOT NULL,
  `mail_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spam`
--

CREATE TABLE `spam` (
  `user_id` varchar(255) NOT NULL,
  `mail_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `trash`
--

CREATE TABLE `trash` (
  `user_id` varchar(255) NOT NULL,
  `mail_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'user',
  `avatar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `draft`
--
ALTER TABLE `draft`
  ADD KEY `draft_user` (`user_id`),
  ADD KEY `draft_mail` (`mail_id`);

--
-- Indexes for table `inbox`
--
ALTER TABLE `inbox`
  ADD KEY `inbox_user` (`user_id`),
  ADD KEY `inbox_mail` (`mail_id`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mail_user` (`sent_by`);

--
-- Indexes for table `mail_sent_to`
--
ALTER TABLE `mail_sent_to`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mail_cc_mail` (`mail_id`),
  ADD KEY `mail_cc_user` (`user_id`);

--
-- Indexes for table `spam`
--
ALTER TABLE `spam`
  ADD KEY `spam_user` (`user_id`),
  ADD KEY `spam_mail` (`mail_id`);

--
-- Indexes for table `trash`
--
ALTER TABLE `trash`
  ADD KEY `trash_user` (`user_id`),
  ADD KEY `trash_mail` (`mail_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mail_sent_to`
--
ALTER TABLE `mail_sent_to`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `draft`
--
ALTER TABLE `draft`
  ADD CONSTRAINT `draft_mail` FOREIGN KEY (`mail_id`) REFERENCES `mail` (`id`),
  ADD CONSTRAINT `draft_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`email`);

--
-- Constraints for table `inbox`
--
ALTER TABLE `inbox`
  ADD CONSTRAINT `inbox_mail` FOREIGN KEY (`mail_id`) REFERENCES `mail` (`id`),
  ADD CONSTRAINT `inbox_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`email`);

--
-- Constraints for table `mail`
--
ALTER TABLE `mail`
  ADD CONSTRAINT `mail_user` FOREIGN KEY (`sent_by`) REFERENCES `user` (`email`);

--
-- Constraints for table `mail_sent_to`
--
ALTER TABLE `mail_sent_to`
  ADD CONSTRAINT `mail_cc_mail` FOREIGN KEY (`mail_id`) REFERENCES `mail` (`id`),
  ADD CONSTRAINT `mail_cc_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`email`);

--
-- Constraints for table `spam`
--
ALTER TABLE `spam`
  ADD CONSTRAINT `spam_mail` FOREIGN KEY (`mail_id`) REFERENCES `mail` (`id`),
  ADD CONSTRAINT `spam_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`email`);

--
-- Constraints for table `trash`
--
ALTER TABLE `trash`
  ADD CONSTRAINT `trash_mail` FOREIGN KEY (`mail_id`) REFERENCES `mail` (`id`),
  ADD CONSTRAINT `trash_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
