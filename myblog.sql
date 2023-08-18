-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2023 at 03:20 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `blogtitle` text NOT NULL,
  `blogdesc` longtext DEFAULT NULL,
  `blogimage` text DEFAULT NULL,
  `metatitle` text DEFAULT NULL,
  `metadesc` text DEFAULT NULL,
  `metakeyword` text DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `slug`, `blogtitle`, `blogdesc`, `blogimage`, `metatitle`, `metadesc`, `metakeyword`, `status`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'CAR DESIGN', 'Why-is-the-sports-cars-so-well-designed', 'Why is the sports cars so well designed?', 'An exploration into the car design industry and how it works', 'photo-1542362567-b07e54358753?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(7, 'ADVENTURE', 'Discover-new-adventures-over-the-world', 'Discover new adventures over the world', 'Adventure and baloons are trends these days', 'photo-1504728078670-d0a59873c8c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(8, 'ENGINEERING', 'Living-in-downtown-in-the-biggest-cities', 'Living in downtown in the biggest cities', 'Citizens of the biggest cities in the world talk about their lives', 'photo-1506422748879-887454f9cdff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(9, 'CAR DESIGN', 'Why-is-the-sports-cars-so-well-designed', 'Why is the sports cars so well designed?', 'An exploration into the car design industry and how it works', 'photo-1542362567-b07e54358753?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(10, 'ADVENTURE', 'Discover-new-adventures-over-the-world', 'Discover new adventures over the world', 'Adventure and baloons are trends these days', 'photo-1504728078670-d0a59873c8c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(11, 'CAR DESIGN', 'Why-is-the-sports-cars-so-well-designed', 'Why is the sports cars so well designed?', 'An exploration into the car design industry and how it works', 'photo-1542362567-b07e54358753?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(12, 'ENGINEERING', 'Living-in-downtown-in-the-biggest-cities', 'Living in downtown in the biggest cities', 'Citizens of the biggest cities in the world talk about their lives', 'photo-1506422748879-887454f9cdff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(13, 'ADVENTURE', 'Discover-new-adventures-over-the-world', 'Discover new adventures over the world', 'Adventure and baloons are trends these days', 'photo-1504728078670-d0a59873c8c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(14, 'CAR DESIGN', 'Why-is-the-sports-cars-so-well-designed', 'Why is the sports cars so well designed?', 'An exploration into the car design industry and how it works', 'photo-1542362567-b07e54358753?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(15, 'CAR DESIGN', 'Why-is-the-sports-cars-so-well-designed', 'Why is the sports cars so well designed?', 'An exploration into the car design industry and how it works', 'photo-1542362567-b07e54358753?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(16, 'ENGINEERING', 'Living-in-downtown-in-the-biggest-cities', 'Living in downtown in the biggest cities', 'Citizens of the biggest cities in the world talk about their lives', 'photo-1506422748879-887454f9cdff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(17, 'CAR DESIGN', 'Why-is-the-sports-cars-so-well-designed', 'Why is the sports cars so well designed?', 'An exploration into the car design industry and how it works', 'photo-1542362567-b07e54358753?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(18, 'CAR DESIGN', 'Why-is-the-sports-cars-so-well-designed', 'Why is the sports cars so well designed?', 'An exploration into the car design industry and how it works', 'photo-1542362567-b07e54358753?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(19, 'ADVENTURE', 'Discover-new-adventures-over-the-world', 'Discover new adventures over the world', 'Adventure and baloons are trends these days', 'photo-1504728078670-d0a59873c8c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(20, 'ENGINEERING', 'Living-in-downtown-in-the-biggest-cities', 'Living in downtown in the biggest cities', 'Citizens of the biggest cities in the world talk about their lives', 'photo-1506422748879-887454f9cdff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(21, 'ADVENTURE', 'Discover-new-adventures-over-the-world', 'Discover new adventures over the world', 'Adventure and baloons are trends these days', 'photo-1504728078670-d0a59873c8c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(22, 'ENGINEERING', 'Living-in-downtown-in-the-biggest-cities', 'Living in downtown in the biggest cities', 'Citizens of the biggest cities in the world talk about their lives', 'photo-1506422748879-887454f9cdff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(23, 'ENGINEERING', 'Living-in-downtown-in-the-biggest-cities', 'Living in downtown in the biggest cities', 'Citizens of the biggest cities in the world talk about their lives', 'photo-1506422748879-887454f9cdff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(24, 'ADVENTURE', 'Discover-new-adventures-over-the-world', 'Discover new adventures over the world', 'Adventure and baloons are trends these days', 'photo-1504728078670-d0a59873c8c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(25, 'ENGINEERING', 'Living-in-downtown-in-the-biggest-cities', 'Living in downtown in the biggest cities', 'Citizens of the biggest cities in the world talk about their lives', 'photo-1506422748879-887454f9cdff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(26, 'ENGINEERING', 'Living-in-downtown-in-the-biggest-cities', 'Living in downtown in the biggest cities', 'Citizens of the biggest cities in the world talk about their lives', 'photo-1506422748879-887454f9cdff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(27, 'ADVENTURE', 'Discover-new-adventures-over-the-world', 'Discover new adventures over the world', 'Adventure and baloons are trends these days', 'photo-1504728078670-d0a59873c8c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(28, 'ENGINEERING', 'Living-in-downtown-in-the-biggest-cities', 'Living in downtown in the biggest cities', 'Citizens of the biggest cities in the world talk about their lives', 'photo-1506422748879-887454f9cdff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(29, 'ADVENTURE', 'Discover-new-adventures-over-the-world', 'Discover new adventures over the world', 'Adventure and baloons are trends these days', 'photo-1504728078670-d0a59873c8c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(30, 'ENGINEERING', 'Living-in-downtown-in-the-biggest-cities', 'Living in downtown in the biggest cities', 'Citizens of the biggest cities in the world talk about their lives', 'photo-1506422748879-887454f9cdff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(31, 'ADVENTURE', 'Discover-new-adventures-over-the-world', 'Discover new adventures over the world', 'Adventure and baloons are trends these days', 'photo-1504728078670-d0a59873c8c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(32, 'ENGINEERING', 'Living-in-downtown-in-the-biggest-cities', 'Living in downtown in the biggest cities', 'Citizens of the biggest cities in the world talk about their lives', 'photo-1506422748879-887454f9cdff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(33, 'ADVENTURE', 'Discover-new-adventures-over-the-world', 'Discover new adventures over the world', 'Adventure and baloons are trends these days', 'photo-1504728078670-d0a59873c8c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(34, 'ENGINEERING', 'Living-in-downtown-in-the-biggest-cities', 'Living in downtown in the biggest cities', 'Citizens of the biggest cities in the world talk about their lives', 'photo-1506422748879-887454f9cdff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(35, 'ADVENTURE', 'Discover-new-adventures-over-the-world', 'Discover new adventures over the world', 'Adventure and baloons are trends these days', 'photo-1504728078670-d0a59873c8c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(36, 'ENGINEERING', 'Living-in-downtown-in-the-biggest-cities', 'Living in downtown in the biggest cities', 'Citizens of the biggest cities in the world talk about their lives', 'photo-1506422748879-887454f9cdff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(37, 'ENGINEERING', 'Living-in-downtown-in-the-biggest-cities', 'Living in downtown in the biggest cities', 'Citizens of the biggest cities in the world talk about their lives', 'photo-1506422748879-887454f9cdff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(38, 'CAR DESIGN', 'Why-is-the-sports-cars-so-well-designed', 'Why is the sports cars so well designed?', 'An exploration into the car design industry and how it works', 'photo-1542362567-b07e54358753?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(39, 'CAR DESIGN', 'Why-is-the-sports-cars-so-well-designed', 'Why is the sports cars so well designed?', 'An exploration into the car design industry and how it works', 'photo-1542362567-b07e54358753?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(40, 'ADVENTURE', 'Discover-new-adventures-over-the-world', 'Discover new adventures over the world', 'Adventure and baloons are trends these days', 'photo-1504728078670-d0a59873c8c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(41, 'CAR DESIGN', 'Why-is-the-sports-cars-so-well-designed', 'Why is the sports cars so well designed?', 'An exploration into the car design industry and how it works', 'photo-1542362567-b07e54358753?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(42, 'ADVENTURE', 'Discover-new-adventures-over-the-world', 'Discover new adventures over the world', 'Adventure and baloons are trends these days', 'photo-1504728078670-d0a59873c8c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(43, 'CAR DESIGN', 'Why-is-the-sports-cars-so-well-designed', 'Why is the sports cars so well designed?', 'An exploration into the car design industry and how it works', 'photo-1542362567-b07e54358753?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(44, 'CAR DESIGN', 'Why-is-the-sports-cars-so-well-designed', 'Why is the sports cars so well designed?', 'An exploration into the car design industry and how it works', 'photo-1542362567-b07e54358753?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(45, 'CAR DESIGN', 'Why-is-the-sports-cars-so-well-designed', 'Why is the sports cars so well designed?', 'An exploration into the car design industry and how it works', 'photo-1542362567-b07e54358753?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(46, 'ADVENTURE', 'Discover-new-adventures-over-the-world', 'Discover new adventures over the world', 'Adventure and baloons are trends these days', 'photo-1504728078670-d0a59873c8c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(47, 'ADVENTURE', 'Discover-new-adventures-over-the-world', 'Discover new adventures over the world', 'Adventure and baloons are trends these days', 'photo-1504728078670-d0a59873c8c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(48, 'CAR DESIGN', 'Why-is-the-sports-cars-so-well-designed', 'Why is the sports cars so well designed?', 'An exploration into the car design industry and how it works', 'photo-1542362567-b07e54358753?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(49, 'ADVENTURE', 'Discover-new-adventures-over-the-world', 'Discover new adventures over the world', 'Adventure and baloons are trends these days', 'photo-1504728078670-d0a59873c8c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(50, 'ADVENTURE', 'Discover-new-adventures-over-the-world', 'Discover new adventures over the world', 'Adventure and baloons are trends these days', 'photo-1504728078670-d0a59873c8c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(51, 'ADVENTURE', 'Discover-new-adventures-over-the-world', 'Discover new adventures over the world', 'Adventure and baloons are trends these days', 'photo-1504728078670-d0a59873c8c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(52, 'CAR DESIGN', 'Why-is-the-sports-cars-so-well-designed', 'Why is the sports cars so well designed?', 'An exploration into the car design industry and how it works', 'photo-1542362567-b07e54358753?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(53, 'ENGINEERING', 'Living-in-downtown-in-the-biggest-cities', 'Living in downtown in the biggest cities', 'Citizens of the biggest cities in the world talk about their lives', 'photo-1506422748879-887454f9cdff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL),
(54, 'ADVENTURE', 'Discover-new-adventures-over-the-world', 'Discover new adventures over the world', 'Adventure and baloons are trends these days', 'photo-1504728078670-d0a59873c8c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
