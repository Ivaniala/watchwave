-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2024 at 11:29 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pengguna`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `username` varchar(255) DEFAULT NULL,
  `film_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `comment_text`, `created_at`, `username`, `film_id`) VALUES
(1, 9, 'bagusss', '2024-06-21 15:27:35', 'Riska', 0),
(2, 9, 'bagusss', '2024-06-21 15:32:16', 'Riska', 0),
(3, 9, 'bagussssss', '2024-06-21 15:35:10', 'Riska', 0),
(4, 9, 'bagss', '2024-06-21 15:36:52', 'Riska', 0),
(5, 9, 'kerennn', '2024-06-21 15:37:03', 'Riska', 0),
(6, 9, 'bagusss', '2024-06-21 15:38:09', 'Riska', 0),
(7, 9, 'bGUHWIUGIW', '2024-06-21 15:40:24', 'Riska', 0),
(8, 9, 'jkgefjhedf', '2024-06-21 15:41:09', 'Riska', 0),
(9, 9, 'bagusss', '2024-06-21 15:41:26', 'Riska', 0),
(10, 9, 'jksfjhs', '2024-06-21 15:42:23', 'Riska', 0),
(11, 9, 'jksgdkus', '2024-06-21 15:42:57', 'Riska', 0),
(12, 9, 'jgdsjkdvfhjdv', '2024-06-21 15:43:05', 'Riska', 0),
(13, 9, 'bagussss', '2024-06-21 15:43:17', 'Riska', 0),
(14, 9, 'filmnya baguss', '2024-06-21 15:51:34', 'Riska', 0),
(15, 9, 'bagusss', '2024-06-21 16:09:58', 'Riska', 0),
(16, 9, 'filmnyaaa baguss', '2024-06-21 16:15:20', 'Riska', 0),
(17, 9, 'filmnya bagiusss', '2024-06-21 16:15:54', 'Riska', 0),
(18, 9, 'bagusss', '2024-06-22 14:29:36', 'Riska', 0),
(19, 9, 'bagusss', '2024-06-23 04:29:25', 'Riska', 0),
(20, 9, 'filmnya bagus', '2024-06-23 08:34:27', 'Riska', 0),
(21, 9, 'bagusss', '2024-06-23 09:02:25', 'Riska', 1),
(22, 9, 'filmnya keren', '2024-06-23 09:04:43', 'Riska', 2),
(23, 9, 'bagusss', '2024-06-23 09:14:45', 'Riska', 3),
(24, 10, 'filmnya baguss', '2024-06-23 11:27:03', 'Putri', 1),
(25, 13, 'bagusss', '2024-06-25 16:07:30', 'Putri', 0),
(26, 13, 'baguss', '2024-06-25 16:14:06', 'Putri', 1),
(27, 13, 'kerennn', '2024-06-25 16:14:14', 'Putri', 1),
(28, 18, 'bagus', '2024-06-28 00:50:07', 'maximila', 0);

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Animation'),
(4, 'Biography'),
(5, 'Comedy'),
(6, 'Crime'),
(7, 'Drama'),
(8, 'Family'),
(9, 'Fantasy'),
(10, 'Horror'),
(11, 'History'),
(12, 'Mystery'),
(13, 'Romance'),
(14, 'Thriller');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `img_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `img_url`) VALUES
(1, 'Air Mata di Ujung Sajadah', '../img/popular/airmata.jpg'),
(2, 'Welcome to Samdal-ri', '../img/popular/Welcome to samdal-ri.JPG'),
(3, 'Barbie', '../img/popular/Barbie.jpg'),
(4, 'Gadis Kretek', '../img/popular/Gadis Kretek.JPG'),
(5, 'Petualangan Sherina 2', '../img/popular/petualangan sherina 2.jpg'),
(6, 'My Demon', '../img/popular/My Demon.JPG'),
(7, 'Laskar Pelangi', '../img/movie/Laskar pelangi.jpg'),
(8, 'Trolls Band Together', '../img/movie/Trolls Band Together Trailer - The Screen Guide.jpg'),
(9, 'Enola Holmes 2', '../img/movie/Enola Holmes 2 (2022)(1).jpg'),
(10, 'Train to Busan Peninsula', '../img/movie/Train to busan peninsula.jpg'),
(11, 'The Devil Wears Prada', '../img/movie/The Devil Wears Prada.jpg'),
(12, 'Ada Apa Dengan Cinta 2', '../img/movie/aadc2.jpg'),
(13, 'Dilan 1990', '../img/movie/Dilan 1990 (2018).jpg'),
(14, 'Harry Potter', '../img/movie/Harry Potter.jpg'),
(15, 'The Family Plan', '../img/movie/The family plan.jpg'),
(16, 'Purple Hearts 2022', '../img/movie/Purple Hearts (2022).jpg'),
(17, 'Sewu Dino', '../img/movie/Sewu Dino.jpg'),
(18, 'Habibie & Ainun', '../img/movie/Habibie & Ainun 3(1).jpg'),
(19, 'Hidden Love', '../img/series/Hidden Love.JPG'),
(20, 'Penthouse', '../img/series/The penthouse .JPG'),
(21, 'Wedding Agreement', '../img/series/Wedding Agreement .JPG'),
(22, 'Go Ahead', '../img/series/Go Ahead.JPG'),
(23, 'Vincenzo', '../img/series/Vincenzo.JPG'),
(24, 'Antares', '../img/series/Antares.JPG'),
(25, 'Kaget Nikah', '../img/series/Kaget Nikah.JPG'),
(26, 'Queen Of Tears', '../img/cs/queen of tears poster.jpg'),
(27, 'Upgraded', '../img/cs/Upgraded (2024) Amazon Prime Movie Download 720p 1080p HD.jpg'),
(28, 'Siksa Kubur', '../img/cs/Film-Siksa-Kubur-Poster.jpg'),
(29, 'Ditto', '../img/cs/Тоже Ditto.jpg'),
(30, 'Dua Hati Biru', '../img/cs/5 Fakta Menarik Film Dua Hati Biru, Punya Alur Cerita Lebih Kompleks.jpg'),
(31, 'The Hunger Games', '../img/cs/The hunger games.jpg'),
(32, 'Spider-Man: Across the Spider-Verse', '../img/cover/spider.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `movie_genre`
--

CREATE TABLE `movie_genre` (
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie_genre`
--

INSERT INTO `movie_genre` (`movie_id`, `genre_id`) VALUES
(1, 7),
(1, 8),
(2, 5),
(2, 7),
(2, 13),
(3, 2),
(3, 5),
(3, 9),
(4, 7),
(4, 11),
(4, 13),
(5, 2),
(5, 5),
(5, 7),
(6, 7),
(6, 9),
(6, 12),
(7, 2),
(7, 7),
(7, 8),
(8, 2),
(8, 3),
(8, 5),
(9, 1),
(9, 2),
(9, 7),
(10, 1),
(10, 10),
(10, 14),
(11, 5),
(11, 7),
(12, 7),
(12, 13),
(13, 7),
(13, 13),
(14, 2),
(14, 8),
(14, 9),
(15, 1),
(15, 5),
(15, 8),
(16, 7),
(16, 13),
(17, 10),
(17, 12),
(17, 14),
(18, 4),
(18, 11),
(18, 13),
(19, 7),
(19, 13),
(20, 6),
(20, 7),
(20, 14),
(21, 7),
(21, 13),
(22, 5),
(22, 7),
(22, 8),
(23, 1),
(23, 7),
(24, 7),
(24, 13),
(25, 5),
(25, 7),
(25, 13),
(26, 7),
(26, 8),
(26, 13),
(27, 5),
(27, 13),
(28, 10),
(28, 14),
(29, 7),
(29, 9),
(29, 13),
(30, 7),
(30, 8),
(30, 13),
(31, 1),
(31, 2),
(31, 7);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`) VALUES
(9, 'faiz@gmail.com', 'fitrotul faizah', '$2y$10$9kEXg.TgcPS8M4jHpm2MEe1RVp3vMmmIIl8LHEgjG6O2rf.W85bhK'),
(11, 'fitrotul@gmail.com', 'faizah', '$2y$10$m7hF5gHylJKdgrirQ09x8ey2aSWRqP54.lbgG4pKx3qVzlYsbuXSW'),
(12, 'put@gmail.com', 'putri', '$2y$10$NUB0beVt0wfzrt.Oq2bzc.H.mnC7Uu.yreY9BUdYSuBY5ATMbDayy'),
(14, 'fitro@gmail.com', 'faiz', '$2y$10$NWF2HDJE2o1PXuii.rt91eaugm7uXTzI8l6DZOfdhGfWq0RO1q94a'),
(15, 'riska1@gmail.com', 'riska', '$2y$10$t0Tb/HwfOW2oJTQ6/ZO.7.YZB6IXjaMWuY72blvDDHUuf8Cs2kWSi'),
(16, 'umar@gmail.com', 'umar', '$2y$10$vpM/xFoXGaU4psLi98ZbQOGTNFSjOpYEehdqdwhnLpAHAMTPsVpyO'),
(17, 'fai@gmail.com', 'fitrotul', '$2y$10$o/d5xgq.CGNxOtIsE5wjrOCYKxLdQIopDT6MT8yPv0lQ9TNUSBawy'),
(18, 'vania@gmail.com', 'maximila', '$2y$10$RioSUwO1PfI11DdWa3RSVuAmdimWw42.5eod99WahSJbVmiZKcpcW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD PRIMARY KEY (`movie_id`,`genre_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

--
-- Constraints for table `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD CONSTRAINT `movie_genre_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `movie_genre_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
