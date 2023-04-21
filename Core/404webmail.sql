-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2023 at 03:52 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

-- CREATE DATABASE `404webmail_8`;
-- USE `404webmail_8`;

-- SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
-- START TRANSACTION;
-- SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `404webmail`
--

-- --------------------------------------------------------

--
-- Table structure for table `badkeywords`
--

CREATE TABLE `badkeywords` (
  `ID` int(11) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE `inbox` (
  `mail_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `is_starred` tinyint(1) NOT NULL,
  `is_draft` tinyint(1) NOT NULL,
  `is_trash` tinyint(1) NOT NULL,
  `is_spam` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `locks`
--

CREATE TABLE `locks` (
  `email` varchar(50) NOT NULL,
  `lock_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `lock_reason` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `sent_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mail_attachments`
--

CREATE TABLE `mail_attachments` (
  `id` int(11) NOT NULL,
  `mail_id` int(11) NOT NULL,
  `attachment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mail_bcc`
--

CREATE TABLE `mail_bcc` (
  `email` varchar(50) NOT NULL,
  `mail_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mail_cc`
--

CREATE TABLE `mail_cc` (
  `email` varchar(50) NOT NULL,
  `mail_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mail_sent_to`
--

CREATE TABLE `mail_sent_to` (
  `mail_id` int(11) NOT NULL,
  `user_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `max_recipients` int(11) NOT NULL,
  `max_email_size` int(11) NOT NULL,
  `max_attachments` int(11) NOT NULL,
  `max_attachment_size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `badkeywords`
--
ALTER TABLE `badkeywords`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `inbox`
--
ALTER TABLE `inbox`
  ADD PRIMARY KEY (`mail_id`,`email`),
  ADD KEY `inbox_user` (`email`),
  ADD KEY `inbox_mail` (`mail_id`);

--
-- Indexes for table `locks`
--
ALTER TABLE `locks`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mail_sent_by_user` (`sent_by`);

--
-- Indexes for table `mail_attachments`
--
ALTER TABLE `mail_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mail_attachment` (`mail_id`);

--
-- Indexes for table `mail_bcc`
--
ALTER TABLE `mail_bcc`
  ADD PRIMARY KEY (`email`,`mail_id`),
  ADD KEY `bcc_mail` (`mail_id`),
  ADD KEY `bcc_user` (`email`);

--
-- Indexes for table `mail_cc`
--
ALTER TABLE `mail_cc`
  ADD PRIMARY KEY (`email`,`mail_id`),
  ADD KEY `cc_mail` (`mail_id`),
  ADD KEY `cc_user` (`email`);

--
-- Indexes for table `mail_sent_to`
--
ALTER TABLE `mail_sent_to`
  ADD PRIMARY KEY (`mail_id`,`user_email`),
  ADD KEY `sent_to_mail` (`mail_id`),
  ADD KEY `sent_to_user` (`user_email`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `badkeywords`
--
ALTER TABLE `badkeywords`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mail_attachments`
--
ALTER TABLE `mail_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inbox`
--
ALTER TABLE `inbox`
  ADD CONSTRAINT `inbox_mail` FOREIGN KEY (`mail_id`) REFERENCES `mail` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `inbox_user` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE CASCADE;

--
-- Constraints for table `locks`
--
ALTER TABLE `locks`
  ADD CONSTRAINT `locks_user` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE CASCADE;

--
-- Constraints for table `mail`
--
ALTER TABLE `mail`
  ADD CONSTRAINT `mail_sent_by_user` FOREIGN KEY (`sent_by`) REFERENCES `users` (`email`) ON DELETE CASCADE;

--
-- Constraints for table `mail_attachments`
--
ALTER TABLE `mail_attachments`
  ADD CONSTRAINT `mail_attachment` FOREIGN KEY (`mail_id`) REFERENCES `mail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mail_bcc`
--
ALTER TABLE `mail_bcc`
  ADD CONSTRAINT `bcc_mail` FOREIGN KEY (`mail_id`) REFERENCES `mail` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bcc_user` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE CASCADE;

--
-- Constraints for table `mail_cc`
--
ALTER TABLE `mail_cc`
  ADD CONSTRAINT `cc_mail` FOREIGN KEY (`mail_id`) REFERENCES `mail` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cc_user` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE CASCADE;

--
-- Constraints for table `mail_sent_to`
--
ALTER TABLE `mail_sent_to`
  ADD CONSTRAINT `sent_to_mail` FOREIGN KEY (`mail_id`) REFERENCES `mail` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sent_to_user` FOREIGN KEY (`user_email`) REFERENCES `users` (`email`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
