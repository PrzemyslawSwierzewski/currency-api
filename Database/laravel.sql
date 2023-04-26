-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2023 at 06:47 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `currency_rates`
--

CREATE TABLE `currency_rates` (
  `currency` varchar(3) NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_rates`
--

INSERT INTO `currency_rates` (`currency`, `date`, `amount`) VALUES
('GBP', '2023-04-25', 5.00),
('EUR', '2023-04-25', 5.00),
('EGB', '2023-04-25', 5.00),
('PLN', '2023-04-13', 4.66),
('EUR', '2023-04-13', 4.66),
('KAR', '2023-04-13', 4.66),
('ZAQ', '2023-04-13', 4.66),
('GBP', '2023-04-13', 6.66),
('EUR', '2023-04-26', 7.86),
('STO', '2023-04-26', 7.86);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `failed_jobs`
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
-- Struktura tabeli dla tabeli `migrations`
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_25_202157_create_currency_rates_table', 1),
(6, '2023_04_25_213008_create_currency_rates_table', 2),
(7, '2023_04_25_213406_add_currency_date_amount_to_currency_rates_table', 2),
(8, '2023_04_25_213624_add_currency_date_amount_to_currency_rates_table', 2),
(9, '2023_04_25_213905_create_currency_rates_table', 3),
(10, '2023_04_25_222645_currency_rates', 4),
(11, '2023_04_26_113650_add_api_token_to_users_table', 5),
(12, '2023_04_26_133653_add_role_to_users_table', 6),
(13, '2023_04_26_150540_add_role_column_to_users_table', 7);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `personal_access_tokens`
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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'AuthToken', '306cb6389af0894d6f19df98afa5589024fc97359c64d5b5752a724c41b2eb03', '[\"*\"]', NULL, NULL, '2023-04-25 22:10:13', '2023-04-25 22:10:13'),
(2, 'App\\Models\\User', 1, 'AuthToken', '2c16bc7fd796b73a1b574f71cde752a2b5dac5aff9b1190bf9e75d8e144b6304', '[\"*\"]', NULL, NULL, '2023-04-25 22:29:46', '2023-04-25 22:29:46'),
(3, 'App\\Models\\User', 1, 'AuthToken', 'f0355cbd3256de6fe58a63555068922247d22319f78c08d5a7ad1e9c96d41713', '[\"*\"]', NULL, NULL, '2023-04-26 09:31:43', '2023-04-26 09:31:43'),
(4, 'App\\Models\\User', 1, 'AuthToken', '9b022349bab7380f6e3a3ffd6b9c0ace898d72830a4dd11b6b68dc8c9fd0b86e', '[\"*\"]', NULL, NULL, '2023-04-26 09:39:45', '2023-04-26 09:39:45'),
(5, 'App\\Models\\User', 1, 'AuthToken', 'd67d5825401e8836bd10fed06e32008ac1fff01915e756fe2b65a8763c85bdcf', '[\"*\"]', NULL, NULL, '2023-04-26 09:40:32', '2023-04-26 09:40:32'),
(6, 'App\\Models\\User', 1, 'AuthToken', 'e1fdbe066417da7a8c2a9b9b4a97a7a60fe35ecea6cfc9bb1d5559cfc93c00d8', '[\"*\"]', NULL, NULL, '2023-04-26 09:42:02', '2023-04-26 09:42:02'),
(7, 'App\\Models\\User', 1, 'AuthToken', 'f778a83c871d0e853c9206ac70fd9105d75df71495ad6360db3d555281fbeb69', '[\"*\"]', NULL, NULL, '2023-04-26 09:42:50', '2023-04-26 09:42:50'),
(8, 'App\\Models\\User', 1, 'AuthToken', 'd6c9b0532187765866a346ccea8e74bccb678a502b1a1086e56c96bee2ef6acf', '[\"*\"]', NULL, NULL, '2023-04-26 09:46:10', '2023-04-26 09:46:10'),
(9, 'App\\Models\\User', 1, 'AuthToken', '50487ba025fd9b7dabb9a292e74fc1ae98a3f928d8edc6892f4d1c59db4b17a9', '[\"*\"]', NULL, NULL, '2023-04-26 11:13:57', '2023-04-26 11:13:57'),
(10, 'App\\Models\\User', 2, 'AuthToken', '17de898a3e879e9d4aa80cd05a2fefa878c7a47d0d527212b928273052c0d8ec', '[\"*\"]', NULL, NULL, '2023-04-26 11:14:46', '2023-04-26 11:14:46'),
(11, 'App\\Models\\User', 2, 'AuthToken', 'c10db9d3a911bdeea3200de12008ab30808c20d15ccd84c30867bce0b85a4b80', '[\"*\"]', NULL, NULL, '2023-04-26 11:15:41', '2023-04-26 11:15:41'),
(12, 'App\\Models\\User', 1, 'AuthToken', '2b3a354061ed3123150b6a27721c208e8a5480100da1dfeeb7edbf5a8b752408', '[\"*\"]', NULL, NULL, '2023-04-26 13:38:21', '2023-04-26 13:38:21'),
(13, 'App\\Models\\User', 1, 'AuthToken', '5e23d044eb80f5cea6237b9e8b69a57ea0c813366a19e1fe964be753475847e2', '[\"*\"]', NULL, NULL, '2023-04-26 14:08:39', '2023-04-26 14:08:39'),
(14, 'App\\Models\\User', 1, 'AuthToken', '7145551c2ffff50f9dd7fd2d6103e5df53679065bef0ce8d5097f2bf47e7bc23', '[\"*\"]', NULL, NULL, '2023-04-26 14:19:12', '2023-04-26 14:19:12'),
(15, 'App\\Models\\User', 1, 'AuthToken', '330ff288a7fd6cb425bfadd3e960aa68d2e893929ced4b8ccc07e85bb4d93067', '[\"*\"]', NULL, NULL, '2023-04-26 14:19:24', '2023-04-26 14:19:24'),
(16, 'App\\Models\\User', 1, 'AuthToken', '84c68b567c22c970ebe8d93d89032e922c755618d3ba07c3b41acb5ce5245038', '[\"*\"]', NULL, NULL, '2023-04-26 14:19:35', '2023-04-26 14:19:35');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `api_token` varchar(400) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `api_token`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 'admin', '0000-00-00 00:00:00', '1', '', '16|Em3qxERbt2SnLTZZFhZOdM81X2AuIDGXt5NmdcQo', '0000-00-00 00:00:00', '2023-04-26 14:19:35'),
(2, '2', '2', 'user', '0000-00-00 00:00:00', '[value-5]', '[value-6]', '11|dfy6xo3i4jPArXlztsVaO5o7VbDRh3mLWXFw4d7y', '0000-00-00 00:00:00', '2023-04-26 11:15:41');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeksy dla tabeli `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
