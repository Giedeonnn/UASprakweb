-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2025 at 10:38 PM
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
-- Database: `review_film_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `films`
--

CREATE TABLE `films` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `director` varchar(100) DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `release_year` int(11) DEFAULT NULL,
  `synopsis` text DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `films`
--

INSERT INTO `films` (`id`, `title`, `director`, `genre`, `release_year`, `synopsis`, `poster`, `created_at`, `updated_at`) VALUES
(1, 'Loki S2', NULL, 'Action', 2023, 'The second season of the American television series Loki, based on Marvel Comics featuring the character of the same name, sees Loki working with Mobius M. Mobius, Hunter B-15, and other members of the Time Variance Authority (TVA) to navigate the multiverse to find Sylvie, Ravonna Renslayer, and Miss Minutes. It is set in the Marvel Cinematic Universe (MCU), sharing continuity with the films of the franchise. The season is produced by Marvel Studios, with Eric Martin serving as head writer and Justin Benson and Aaron Moorhead leading the directing team.', 'posters/095POMX5Q8dnJro7gCArP3UCVeZ90eRXKANR5nfv.jpg', '2025-07-17 02:02:14', '2025-07-17 03:19:32'),
(2, 'The Amazing Spider-Man', NULL, 'Action', 2012, '\"The Amazing Spider-Man\" adalah film pahlawan super tahun 2012 yang menceritakan kisah Peter Parker, seorang remaja yang menjadi Spider-Man setelah digigit laba-laba. Film ini mengikuti perjalanan Peter dalam memahami kekuatan barunya, menghadapi musuh seperti Lizard (Dr. Curt Connors), dan mengungkap misteri orang tuanya', 'posters/YBjT5FrlEB4HDGuoznxkuQBldVvoDgjGSMaoIXOZ.jpg', '2025-07-17 02:42:16', '2025-07-17 02:42:16'),
(3, 'One Piece', NULL, 'Anime', 1997, 'One Piece adalah serial manga Jepang karya Eiichiro Oda yang menceritakan petualangan Monkey D. Luffy dan kru bajak lautnya, Bajak Laut Topi Jerami, dalam mencari harta karun legendaris bernama \"One Piece\" untuk menjadi Raja Bajak Laut. Cerita berlatar di dunia yang dipenuhi bajak laut, kekuatan buah iblis, dan berbagai misteri.', 'posters/xdfbBj078oL8OOEMCg6neUq6iqXuBugES8W2DUJv.jpg', '2025-07-17 02:43:16', '2025-07-17 02:43:16'),
(4, 'Black Clover', NULL, 'Anime', 2017, 'Black Clover adalah serial manga dan anime bergenre fantasi yang menceritakan kisah Asta, seorang anak laki-laki yang lahir tanpa kekuatan sihir di dunia yang sangat mengandalkan sihir. Bersama dengan teman-temannya di Kesatria Sihir Black Bulls, Asta bercita-cita menjadi Kaisar Sihir, posisi tertinggi di Kerajaan Clover.', 'posters/ylARfayw8qm3ZPNiPJc5uSGvMveYIaWNvSBNUJxd.jpg', '2025-07-17 02:44:26', '2025-07-17 02:44:26'),
(5, 'The Avengers', NULL, 'Action', 2013, 'arvel\'s The Avengers[4] (diklasifikasikan dengan nama Marvel Avengers Assemble di Britania Raya dan Irlandia)[1][5] atau hanya The Avengers, adalah film Amerika superhero (2013) yang diproduksi oleh Marvel Studios dan didistribusikan oleh Walt Disney Studios Motion Pictures yang mengadaptasi pada Marvel Comics dengan nama tim superhero yang sama. Ini adalah film keenam di Marvel Cinematic Universe. Film ini ditulis dan disutradarai oleh Joss Whedon dan dibintangi beberapa aktor dan aktris yang mencakup Robert Downey, Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner, Tom Hiddleston, Clark Gregg, Cobie Smulders, Stellan Skarsgård dan Samuel L. Jackson. Di film ini, Nick Fury, direktur S.H.I.E.L.D., organisasi penjaga perdamaian, merekrut Iron Man, Captain America, Hulk, dan Thor untuk membentuk sebuah tim yang harus menghentikan saudara Thor, Loki yang akan menaklukkan Bumi.', 'posters/RTWQLBD6bo87pXHkcJLcB48EmyzMLLCTv1ZBAMAa.jpg', '2025-07-17 02:48:20', '2025-07-17 02:48:20'),
(6, 'Avengers: Age of Ultron', NULL, 'Action', 2012, 'Avengers: Age of Ultron adalah film Amerika tahun 2015 film pahlawan super berdasarkan Marvel Comics tim superhero Avengers. Diproduksi oleh Marvel Studios dan didistribusikan oleh Walt Disney Studios Motion Pictures, it is the sequel to The Avengers (2012) dan film ke-11 dalam Marvel Cinematic Universe (MCU). Ditulis dan disutradarai oleh Joss Whedon, film ini menampilkan sebuah kelompok pemeran termasuk Robert Downey Jr., Chris Hemsworth, Mark Ruffalo, Chris Evans, Scarlett Johansson, Jeremy Renner, Don Cheadle, Aaron Taylor-Johnson, Elizabeth Olsen, Paul Bettany, Cobie Smulders, Anthony Mackie, Hayley Atwell, Idris Elba, Linda Cardellini, Stellan Skarsgård, James Spader, dan Samuel L. Jackson. Dalam film tersebut, Avengers bertarung Ultron (Spader)—an kecerdasan buatan dibuat oleh Tony Stark (Downey) dan Bruce Banner (Ruffalo) yang berencana untuk membawa perdamaian dunia dengan menyebabkan kepunahan manusia.', 'posters/ielP1EProJWH1vLw43oOKCbPj11ruiTlyh754W6h.jpg', '2025-07-17 02:49:43', '2025-07-17 02:49:43'),
(7, 'Avengers: Infinity War', NULL, 'Action', 2018, 'Avengers: Infinity War adalah film pahlawan super Amerika tahun 2018 berdasarkan tim pahlawan super Marvel Comics the Avengers , diproduksi oleh Marvel Studios dan didistribusikan oleh Walt Disney Studios Motion Pictures . Ini adalah sekuel The Avengers tahun 2012 dan Avengers: Age of Ultron tahun 2015, dan film kesembilan belas di Marvel Cinematic Universe (MCU). Film ini disutradarai oleh Anthony dan Joe Russo , ditulis oleh Christopher Markus dan Stephen McFeely , dan menampilkan pemeran ansambel termasuk Robert Downey Jr. , Chris Hemsworth , Mark Ruffalo , Chris Evans , Scarlett Johansson , Benedict Cumberbatch , Don Cheadle , Tom Holland , Chadwick Boseman , Paul Bettany , Elizabeth Olsen , Anthony Mackie , Sebastian Stan , Danai Gurira , Letitia Wright , Dave Bautista , Zoe Saldana , Josh Brolin , dan Chris Pratt . Dalam film tersebut, Avengers dan Guardians of the Galaxy berupaya menghentikan Thanos mengumpulkan Batu Keabadian yang sangat kuat, dan memusnahkan separuh kehidupan di alam semesta.', 'posters/3GjtwNhsXB37LZ5XFpU7We0u5Rp1CF2BIwrmOgih.jpg', '2025-07-17 02:52:03', '2025-07-17 02:52:03'),
(8, 'Avengers: Endgame', NULL, 'Action', 2019, 'Avengers: Endgame is a 2019 American superhero film based on the Marvel Comics superhero team the Avengers. Produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures, it is the direct sequel to Avengers: Infinity War (2018) and the 22nd film in the Marvel Cinematic Universe (MCU). Directed by Anthony and Joe Russo and written by Christopher Markus and Stephen McFeely, the film features an ensemble cast which includes Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner, Don Cheadle, Paul Rudd, Brie Larson, Karen Gillan, Danai Gurira, Benedict Wong, Jon Favreau, Bradley Cooper, Gwyneth Paltrow, and Josh Brolin. In the film, the surviving members of the Avengers and their allies attempt to reverse Thanos\'s actions in Infinity War which erased half of all life in the universe.', 'posters/LRTpsmDznHMkDVxzfCWGkWqBoZTp3xwKK1HirXk7.jpg', '2025-07-17 03:12:02', '2025-07-17 03:12:02');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_01_01_000002_create_reviewers_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviewers`
--

CREATE TABLE `reviewers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `catatan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviewers`
--

INSERT INTO `reviewers` (`id`, `nama`, `email`, `catatan`, `created_at`, `updated_at`) VALUES
(1, 'Charlie Giedeon Nggelan', '231110056@student.mercubuana-yogya.ac.id', 'UAS Praktikum Pemrograman Web', '2025-07-17 02:03:16', '2025-07-17 02:03:16'),
(3, 'Shabrina Yuspiana', '243303621210@student.mercubuana-yogya.ac.id', 'Chocolate', '2025-07-17 02:56:32', '2025-07-17 02:56:32');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `film_id` bigint(20) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` between 1 and 5),
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `film_id`, `rating`, `comment`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 5, 'keren', '2025-07-17 02:23:36', '2025-07-17 02:23:36'),
(5, NULL, 8, 5, 'THE BEST', '2025-07-17 03:21:19', '2025-07-17 03:21:19');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('V8uyOk7dMdKuaWN4DkgT4sTA0hQErrCaUqHu0dEu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT0tTQnhrR29vcGVDOUdacTI3YzhSVk02c1cwZ3hMeUNEb0FkQWZkMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1752698007);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','member') DEFAULT 'member',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `reviewers`
--
ALTER TABLE `reviewers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reviewers_email_unique` (`email`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `film_id` (`film_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `films`
--
ALTER TABLE `films`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reviewers`
--
ALTER TABLE `reviewers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
