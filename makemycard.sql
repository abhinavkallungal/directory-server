-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2022 at 11:41 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `makemycard`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `business_name_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `user_id`, `business_name_slug`, `about`, `created_at`, `updated_at`) VALUES
(1, 1, 'xcitech', 'ergrfdgd', '2022-10-19 06:25:39', '2022-10-19 06:25:39'),
(2, 2, 'abhinav-tech', 'sdgfsdfsf', '2022-10-24 23:58:32', '2022-10-24 23:58:32');

-- --------------------------------------------------------

--
-- Table structure for table `catalogs`
--

CREATE TABLE `catalogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `business_name_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catalog_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catalogs`
--

INSERT INTO `catalogs` (`id`, `user_id`, `business_name_slug`, `catalog_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'xcitech', '1666180556.Flutter-Application-Development_Course-Outline.pdf', '2022-10-19 06:25:56', '2022-10-19 06:25:56'),
(2, 2, 'abhinav-tech', '1666675732.Angular.pdf', '2022-10-24 23:58:52', '2022-10-24 23:58:52'),
(3, 2, 'abhinav-tech', '1666675739.laravel_tutorial.pdf', '2022-10-24 23:58:59', '2022-10-24 23:58:59'),
(4, 3, 'multiverse-mirror', '1666979616.1666675732.Angular.pdf', '2022-10-28 12:23:36', '2022-10-28 12:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_21_055358_create_overviews_table', 1),
(6, '2021_12_21_055519_create_services_table', 1),
(7, '2021_12_21_055530_create_catalogs_table', 1),
(8, '2021_12_21_055541_create_products_table', 1),
(9, '2021_12_21_055552_create_about_table', 1),
(10, '2022_01_09_052220_add_whatsapp_number_to_overviews_table', 1),
(11, '2022_01_31_093031_create_social_media_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `overviews`
--

CREATE TABLE `overviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `business_name_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_from_days` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_to_days` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_from_hours` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_to_hours` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `display_ratting` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `rating` double(8,2) DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `whatsapp_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `overviews`
--

INSERT INTO `overviews` (`id`, `user_id`, `business_name_slug`, `logo`, `link`, `business_display_name`, `business_from_days`, `business_to_days`, `business_from_hours`, `business_to_hours`, `service_type`, `address_line1`, `address_line2`, `area`, `city`, `state`, `country`, `pincode`, `display_ratting`, `rating`, `website`, `business_email`, `is_verified`, `created_at`, `updated_at`, `whatsapp_number`) VALUES
(1, 1, 'xcitech', '1666180471.23Screenshot.png', 'http://localhost:8000/xcitech', 'dfvdvfdv', 'sdv', 'sdf', '23', '23', NULL, 'wwefwrf', NULL, 'dgv', 'sdvs', 'sdg', 'df', 2342, 'yes', 5.00, 'https://www.scrum.xcitech.in/', 'tr@gm.com', 1, '2022-10-19 06:24:23', '2022-10-19 06:24:31', '8866174302'),
(2, 2, 'abhinav-tech', '1666675570.360_F_310345668_z9VNiycGG6d0f1dANxQpIRoFPNX90LBp.jpg', 'http://localhost:8000/abhinav-tech', 'Abhinav Technologies', 'Monday', 'Sunday', '9AM', '7PM', NULL, 'some address', NULL, 'Gotri', 'Vadodara', 'Gujarat', 'India', 390012, 'yes', 5.00, 'https://scrum.xcitech.in/', 'tr@gm.com', 1, '2022-10-24 23:56:10', '2022-10-24 23:56:10', '8866174302'),
(3, 3, 'multiverse-mirror', '1666180471.23Screenshot.png', 'http://localhost:8000/multiverse-mirror', 'Multivetrser mirror', 'Monday', 'Sunday', '9AM', '7PM', NULL, 'some address', NULL, 'Gotri', 'Vadodara', 'Gujarat', 'India', 390012, 'yes', 5.00, 'https://scrum.xcitech.in/', 'tr@gm.com', 1, '2022-10-28 12:16:56', '2022-10-28 12:19:10', '8866174302');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `business_name_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_decription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_button` tinyint(1) NOT NULL DEFAULT 0,
  `button_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `business_name_slug`, `product_name`, `product_image`, `product_price`, `product_decription`, `show_button`, `button_link`, `created_at`, `updated_at`) VALUES
(1, 1, 'xcitech', 'gsfdvg', '1666006123.Fireabse2.png', 'dfgf', 'sdvfsf', 1, 'w', '2022-10-17 05:58:43', '2022-10-17 05:58:43'),
(2, 1, 'xcitech', 'gfnfbn', '1666180526.23Screenshot.png', '34', 'dfbdgd', 1, 'https://www.github.co', '2022-10-19 06:25:26', '2022-10-19 06:25:26'),
(3, 2, 'abhinav-tech', 'Xyz', '1666675673.360_F_310345668_z9VNiycGG6d0f1dANxQpIRoFPNX90LBp.jpg', '3900', 'Details', 1, 'https://www.github.co', '2022-10-24 23:57:53', '2022-10-24 23:57:53'),
(4, 3, 'multiverse-mirror', 'Xyz', '1666979287.9Pd9DEIP.jpeg', '34', 'dfgdfgd', 1, 'https://www.github.co', '2022-10-28 12:18:07', '2022-10-28 12:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `business_name_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `user_id`, `business_name_slug`, `service_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'xcitech', 'drt', '2022-10-18 10:08:26', '2022-10-18 10:08:26'),
(2, 1, 'xcitech', 'ertrgt', '2022-10-19 06:22:30', '2022-10-19 06:22:30'),
(3, 2, 'abhinav-tech', 'INformation Tech', '2022-10-24 23:57:00', '2022-10-24 23:57:00'),
(4, 2, 'abhinav-tech', 'Mobile Repairing', '2022-10-24 23:57:11', '2022-10-24 23:57:11'),
(5, 3, 'multiverse-mirror', 'INformation Tech', '2022-10-28 12:17:18', '2022-10-28 12:17:18'),
(6, 3, 'multiverse-mirror', 'Mobile Repairing', '2022-10-28 12:17:46', '2022-10-28 12:17:46');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `business_name_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkdin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tumblr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `user_id`, `business_name_slug`, `facebook`, `instagram`, `youtube`, `twitter`, `linkdin`, `pinterest`, `tumblr`, `created_at`, `updated_at`) VALUES
(1, 2, 'abhinav-tech', 'https://gitscrum.com/', 'https://gitscrum.com/', 'https://gitscrum.com/', 'https://gitscrum.com/', 'https://gitscrum.com/', 'https://gitscrum.com/', 'https://gitscrum.com/', '2022-10-24 23:59:37', '2022-10-24 23:59:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_name_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `mobile`, `business_name`, `business_name_slug`, `is_active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Trupnil', 'trupnil.b@xcitech.in', NULL, '$2y$10$aLCGbmnhA4tyKxNz1PfPZ.zhj6Z8F3EE9hzLiJeAi80QoYlEJmhpS', '8866174302', 'xcitech', 'xcitech', 1, NULL, '2022-10-04 13:04:10', '2022-10-04 13:04:10'),
(2, 'Abhinav', 'abhinav@gmail.com', NULL, '$2y$10$bNO6FUdJOOLLaTi7JKY9HewdyOpx3L1/E5MZFcjuv2CXzsUJ8K36q', '8866174301', 'Abhinav tech', 'abhinav-tech', 1, NULL, '2022-10-24 23:53:47', '2022-10-24 23:53:47'),
(3, 'Himani', 'admin@gmail.com', NULL, '$2y$10$3VRCoO1fjesfLoQdpqAHQOsXqx0biZ5YfZ2k/3M4qd0NQ0arAXIXK', '7896541231', 'multiverse mirror', 'multiverse-mirror', 1, NULL, '2022-10-28 12:15:12', '2022-10-28 12:15:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalogs`
--
ALTER TABLE `catalogs`
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
-- Indexes for table `overviews`
--
ALTER TABLE `overviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `catalogs`
--
ALTER TABLE `catalogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `overviews`
--
ALTER TABLE `overviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
