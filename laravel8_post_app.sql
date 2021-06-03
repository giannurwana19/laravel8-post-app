-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2021 at 03:23 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel8_post_app`
--

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
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 2, 3, '2021-06-03 04:41:17', NULL, NULL),
(4, 1, 6, '2021-06-03 04:54:07', '2021-06-03 04:54:07', NULL),
(5, 1, 4, '2021-06-03 04:54:12', '2021-06-03 04:54:12', NULL),
(10, 1, 9, '2021-06-03 09:22:59', '2021-06-03 12:42:30', '2021-06-03 12:42:30'),
(11, 1, 8, '2021-06-03 09:23:08', '2021-06-03 09:23:08', NULL),
(12, 2, 8, '2021-06-03 09:23:29', '2021-06-03 12:40:21', '2021-06-03 12:40:21'),
(13, 2, 9, '2021-06-03 12:17:45', '2021-06-03 12:38:10', '2021-06-03 12:38:10'),
(15, 2, 5, '2021-06-03 12:23:17', '2021-06-03 12:23:42', '2021-06-03 12:23:42'),
(16, 2, 6, '2021-06-03 12:24:12', '2021-06-03 12:40:37', '2021-06-03 12:40:37'),
(17, 2, 5, '2021-06-03 12:29:35', '2021-06-03 12:31:11', '2021-06-03 12:31:11'),
(18, 2, 1, '2021-06-03 12:30:34', '2021-06-03 12:30:57', '2021-06-03 12:30:57'),
(19, 2, 1, '2021-06-03 12:31:04', '2021-06-03 12:31:04', NULL),
(20, 2, 5, '2021-06-03 12:31:15', '2021-06-03 12:31:51', '2021-06-03 12:31:51'),
(21, 2, 5, '2021-06-03 12:31:55', '2021-06-03 12:31:55', NULL),
(22, 2, 10, '2021-06-03 12:35:01', '2021-06-03 12:38:03', '2021-06-03 12:38:03'),
(23, 1, 10, '2021-06-03 12:43:18', '2021-06-03 12:43:58', '2021-06-03 12:43:58'),
(24, 2, 11, '2021-06-03 12:43:44', '2021-06-03 12:43:52', '2021-06-03 12:43:52'),
(25, 1, 11, '2021-06-03 12:44:04', '2021-06-03 12:44:12', '2021-06-03 12:44:12'),
(26, 1, 11, '2021-06-03 12:44:16', '2021-06-03 12:44:18', '2021-06-03 12:44:18'),
(27, 1, 11, '2021-06-03 12:44:21', '2021-06-03 12:44:30', '2021-06-03 12:44:30'),
(28, 1, 11, '2021-06-03 12:44:35', '2021-06-03 12:46:43', '2021-06-03 12:46:43'),
(29, 2, 11, '2021-06-03 12:44:42', '2021-06-03 12:44:42', NULL),
(32, 1, 11, '2021-06-03 12:46:47', '2021-06-03 12:46:47', NULL);

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
(5, '2021_06_02_090559_add_username_to_users_table', 2),
(6, '2021_06_02_140907_create_posts_table', 3),
(7, '2021_06_03_113752_create_likes_table', 4),
(8, '2021_06_03_192134_add_soft_deletes_to_likes_table', 5);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hello World!', '2021-06-03 04:28:29', '2021-06-03 04:28:29'),
(2, 1, 'Saya Gian, Salam kenal!', '2021-06-03 04:28:51', '2021-06-03 04:28:51'),
(3, 2, 'Aku Gita, cita-citaku ingin menjadi dokter', '2021-06-03 04:29:35', '2021-06-03 04:29:35'),
(4, 2, 'Mohon kerja samanya ya!', '2021-06-03 04:30:40', '2021-06-03 04:30:40'),
(5, 1, 'Kenyang, kenyang!', '2021-06-03 04:31:17', '2021-06-03 04:31:17'),
(6, 2, 'Tadaima!!!!', '2021-06-03 04:32:09', '2021-06-03 04:32:09'),
(8, 2, 'Ku tak selalu berdiri, terkadang hidup memilukan!', '2021-06-03 09:19:58', '2021-06-03 09:19:58'),
(9, 1, 'Ku tak selalu berdiri, terkadang duduk dan tiduran!', '2021-06-03 09:20:31', '2021-06-03 09:20:31'),
(10, 2, 'cek like', '2021-06-03 12:32:57', '2021-06-03 12:32:57'),
(11, 2, 'aduuh malu', '2021-06-03 12:43:31', '2021-06-03 12:43:31'),
(13, 1, 'Minus quo qui veniam voluptas qui possimus porro at quae enim et.', '2021-06-03 12:56:23', '2021-06-03 12:56:23'),
(14, 1, 'Ab sint quasi modi modi quod occaecati quia voluptas qui.', '2021-06-03 12:56:23', '2021-06-03 12:56:23'),
(15, 1, 'Voluptas assumenda quia dolor quae maiores tempore.', '2021-06-03 12:56:23', '2021-06-03 12:56:23'),
(16, 1, 'Sed tempore delectus cum eos provident necessitatibus voluptas adipisci minus iste ex.', '2021-06-03 12:56:23', '2021-06-03 12:56:23'),
(19, 1, 'Et rerum consectetur id dicta aut ut voluptatibus repudiandae quas.', '2021-06-03 12:56:23', '2021-06-03 12:56:23'),
(20, 1, 'Qui velit ut totam velit rerum fugit perspiciatis quos sed et quaerat velit qui.', '2021-06-03 12:56:23', '2021-06-03 12:56:23'),
(21, 1, 'Id dolorem laudantium aut optio laudantium earum nisi soluta.', '2021-06-03 12:56:23', '2021-06-03 12:56:23'),
(22, 1, 'Occaecati molestias perspiciatis fugiat illum deserunt culpa in omnis laudantium deserunt.', '2021-06-03 12:56:23', '2021-06-03 12:56:23'),
(23, 2, 'Nemo iste molestiae consequatur veritatis nemo nihil nisi.', '2021-06-03 12:56:26', '2021-06-03 12:56:26'),
(24, 2, 'Id sapiente possimus fugit quas sint unde illum aliquam.', '2021-06-03 12:56:27', '2021-06-03 12:56:27'),
(25, 2, 'Corporis incidunt quia quaerat asperiores error rerum nulla.', '2021-06-03 12:56:27', '2021-06-03 12:56:27'),
(26, 2, 'Enim molestiae eaque quasi suscipit dolores aspernatur dolorum exercitationem tempore id explicabo.', '2021-06-03 12:56:27', '2021-06-03 12:56:27'),
(27, 2, 'Praesentium recusandae minus odio nisi itaque perspiciatis beatae aliquid magnam.', '2021-06-03 12:56:27', '2021-06-03 12:56:27'),
(28, 2, 'Illo dolores ratione debitis et facere dolor.', '2021-06-03 12:56:27', '2021-06-03 12:56:27'),
(29, 2, 'Unde molestiae ipsam assumenda eaque ipsum possimus quo qui sit rem.', '2021-06-03 12:56:27', '2021-06-03 12:56:27'),
(30, 2, 'Cumque in sit totam inventore omnis eaque et recusandae omnis autem qui dolorum.', '2021-06-03 12:56:27', '2021-06-03 12:56:27'),
(31, 2, 'Voluptatibus iste magni laboriosam voluptatum vel eum itaque et.', '2021-06-03 12:56:27', '2021-06-03 12:56:27'),
(32, 2, 'Debitis eum reprehenderit architecto est accusantium iure eum repellat ut corrupti.', '2021-06-03 12:56:27', '2021-06-03 12:56:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'gian19', 'Gian Nurwana', 'gian@gmail.com', NULL, '$2y$10$IIoVzbcoL47tFwMqPqhJauyuQ9xeGa1SVpmn.bu.DvO.eNTCRR6TO', 'polqF5oX33phU4gISJBREE0Wuo2lgAcjJBjmDY8YURr5fvxtrt1OnWC9dU3j', '2021-06-02 02:52:18', '2021-06-02 02:52:18'),
(2, 'gita20', 'Gita Safitri', 'gita@gmail.com', NULL, '$2y$10$w5u4ZvKdi5k9Stdlrxz9w.IzB1hV2T1GK6UQaGxjIdeQMu3bzi5ua', NULL, '2021-06-02 02:56:03', '2021-06-02 02:56:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_user_id_foreign` (`user_id`),
  ADD KEY `likes_post_id_foreign` (`post_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
