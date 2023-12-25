-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2023 at 01:12 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backendmassive`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `refresh_token` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `Email`, `password`, `refresh_token`, `createdAt`, `updatedAt`) VALUES
(1007, 'andika5', 'andikasyaputra@gmail.com', '$2b$10$YKyEWq2dJxjUWfH.YNQuIuEc6JNSC6WJTK.V9SAy0YB0EDoGHvLmW', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEwMDcsIm5hbWUiOiJhbmRpa2E1IiwiRW1haWwiOiJhbmRpa2FzeWFwdXRyYUBnbWFpbC5jb20iLCJpYXQiOjE3MDI5MDE0OTgsImV4cCI6MTcwMjk4Nzg5OH0.85ymSet-5Pe8KoHiOuaURHZ_S4kqRlalHofGanfwC6M', '2023-12-17 17:22:32', '2023-12-18 12:11:38'),
(1012, 'muhammad', 'andikasyaputra20@gmail.com', '$2b$10$iRhAqItU6Nhv5DRi2ECh6e7A/VIkW1G6p965og2nwApubdRpZ9h6u', NULL, '2023-12-19 04:20:58', '2023-12-19 04:20:58'),
(1013, 'andika anjas syaputra', 'andika@gmail.com', '$2b$10$kxPEMBzmU6FQsj9FgyO85.9VSEcQvVXffQ8MaJyFXU9zEAP5A7NDu', NULL, '2023-12-19 04:26:33', '2023-12-19 04:26:33'),
(1014, 'andika anjas ', 'andika1@gmail.com', '$2b$10$b5y4/GB6xfWPCyR/1q00p.Ce80EZYmV0EdZUrC7un30mC9OWmgDZy', NULL, '2023-12-19 04:42:57', '2023-12-19 04:42:57'),
(1015, 'user1', 'user@gmail.com', '$2b$10$/UHDk8Fm.6IP8vJSiQZ2Ku7t7r04nNIpUpgLxryMEfKp9595CZ6L.', NULL, '2023-12-19 12:10:34', '2023-12-19 12:10:34'),
(1016, 'muhammad andika', 'testing@gmail.com', '$2b$10$y6uZDJpH1hZfuJcNEeA7ouWlNZwi1.vSZrP9GrgjOgEktemSrnL.a', NULL, '2023-12-19 13:56:54', '2023-12-19 13:56:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1017;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
