-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2021 at 08:38 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `attendence_date` date NOT NULL,
  `attendence_status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `class_id`, `teacher_id`, `student_id`, `attendence_date`, `attendence_status`, `created_at`, `updated_at`) VALUES
(1, 4, 3, 4, '2021-04-18', 1, '2021-04-18 14:26:31', '2021-04-18 14:26:31'),
(2, 2, 4, 2, '2021-04-19', 1, '2021-04-19 12:12:32', '2021-04-19 12:12:32'),
(3, 2, 4, 7, '2021-04-19', 1, '2021-04-19 12:12:32', '2021-04-19 12:12:32');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `class_numeric` bigint(20) UNSIGNED NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `teacher_id`, `class_numeric`, `class_name`, `class_description`, `created_at`, `updated_at`) VALUES
(2, 4, 1, 'MKU70', 'Union Towers 7th floor', '2021-04-16 04:52:03', '2021-04-16 04:52:03'),
(3, 2, 2, 'Lab1', 'first floor mk towers', '2021-04-16 04:52:58', '2021-04-16 04:52:58'),
(4, 3, 3, 'Lab2', 'first floor mk towers lab 2', '2021-04-16 04:55:51', '2021-04-16 04:55:51'),
(5, 5, 4, 'mk60', 'sixth floor mk towers', '2021-04-16 04:56:43', '2021-04-16 04:56:43'),
(6, 6, 5, 'Lab5', 'Union Towers 5th floor', '2021-04-16 04:57:39', '2021-04-16 04:57:39');

-- --------------------------------------------------------

--
-- Table structure for table `grade_subject`
--

CREATE TABLE `grade_subject` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `grade_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grade_subject`
--

INSERT INTO `grade_subject` (`id`, `grade_id`, `subject_id`, `created_at`, `updated_at`) VALUES
(1, 6, 2, NULL, NULL),
(2, 6, 1, NULL, NULL),
(3, 5, 26, NULL, NULL),
(4, 5, 25, NULL, NULL),
(5, 5, 24, NULL, NULL),
(6, 5, 23, NULL, NULL),
(7, 5, 22, NULL, NULL),
(8, 4, 21, NULL, NULL),
(9, 4, 20, NULL, NULL),
(10, 4, 19, NULL, NULL),
(11, 4, 18, NULL, NULL),
(12, 4, 17, NULL, NULL),
(13, 3, 8, NULL, NULL),
(14, 3, 7, NULL, NULL),
(15, 3, 6, NULL, NULL),
(16, 3, 5, NULL, NULL),
(17, 3, 4, NULL, NULL),
(18, 3, 3, NULL, NULL),
(19, 3, 2, NULL, NULL),
(20, 3, 1, NULL, NULL),
(21, 2, 18, NULL, NULL),
(22, 2, 17, NULL, NULL),
(23, 2, 16, NULL, NULL),
(24, 2, 15, NULL, NULL),
(25, 2, 14, NULL, NULL),
(26, 2, 13, NULL, NULL),
(27, 2, 12, NULL, NULL),
(28, 2, 11, NULL, NULL),
(29, 2, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `body`, `created_at`, `updated_at`) VALUES
(1, 'this is the fisrt message', '2021-04-21 07:00:00', '2021-04-14 07:00:00'),
(2, 'the second message', '2021-04-30 07:00:00', '2021-04-21 07:00:00');

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
(3, '2019_05_14_114748_create_permission_tables', 1),
(4, '2019_05_15_180937_create_students_table', 1),
(5, '2019_05_15_181154_create_parents_table', 1),
(6, '2019_05_15_181254_create_teachers_table', 1),
(7, '2019_05_15_181552_create_grades_table', 1),
(8, '2019_05_16_174745_create_subjects_table', 1),
(9, '2019_05_16_175620_create_grade_subject_table', 1),
(10, '2019_05_17_133226_create_attendances_table', 1),
(11, '2021_04_16_212717_create_users_phone_number_table', 2),
(12, '2021_04_19_054143_create_messages_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 5),
(2, 'App\\User', 6),
(2, 'App\\User', 7),
(2, 'App\\User', 8),
(2, 'App\\User', 9),
(3, 'App\\User', 10),
(3, 'App\\User', 11),
(3, 'App\\User', 12),
(3, 'App\\User', 13),
(3, 'App\\User', 14),
(4, 'App\\User', 15),
(4, 'App\\User', 16),
(4, 'App\\User', 17),
(4, 'App\\User', 18),
(4, 'App\\User', 19),
(4, 'App\\User', 20),
(4, 'App\\User', 21);

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`id`, `user_id`, `gender`, `phone`, `current_address`, `permanent_address`, `created_at`, `updated_at`) VALUES
(2, 10, 'female', '+254798288410', 'kitui', 'Kitui', '2021-04-16 04:42:51', '2021-04-19 08:34:12'),
(3, 11, 'female', '+254798288410', '00100 Nairobi', '00100 Nairobi', '2021-04-16 04:44:55', '2021-04-19 06:56:52'),
(4, 12, 'male', '+254787400637', '00100 Nairobi', '00100 Nairobi', '2021-04-16 04:46:12', '2021-04-19 06:56:35'),
(5, 13, 'male', '+254787400637', '00100 Nairobi', '00100 Nairobi', '2021-04-16 04:47:13', '2021-04-19 06:56:19'),
(6, 14, 'female', '+254720460519', '00100 Nairobi', '00100 Nairobi', '2021-04-16 04:48:12', '2021-04-19 06:55:59');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2021-04-16 04:13:19', '2021-04-16 04:13:19'),
(2, 'Teacher', 'web', '2021-04-16 04:13:19', '2021-04-16 04:13:19'),
(3, 'Parent', 'web', '2021-04-16 04:13:19', '2021-04-16 04:13:19'),
(4, 'Student', 'web', '2021-04-16 04:13:19', '2021-04-16 04:13:19');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `roll_number` bigint(20) UNSIGNED NOT NULL,
  `gender` enum('male','female','other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateofbirth` date NOT NULL,
  `current_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `parent_id`, `class_id`, `roll_number`, `gender`, `phone`, `dateofbirth`, `current_address`, `permanent_address`, `created_at`, `updated_at`) VALUES
(2, 15, 2, 2, 1, 'male', '+254720460519', '2021-04-25', '00100 Nairobi', 'Nairobi', '2021-04-16 05:01:02', '2021-04-19 08:35:04'),
(3, 16, 3, 3, 2, 'male', '+254798288410', '2021-04-04', '00100 Nairobi', '00100 Nairobi', '2021-04-16 05:02:58', '2021-04-19 06:59:17'),
(4, 17, 4, 4, 3, 'male', '+254798288410', '2021-04-11', '00100 Nairobi', '00100 Nairobi', '2021-04-16 05:04:31', '2021-04-19 06:58:47'),
(5, 18, 5, 5, 4, 'male', '+254798288410', '2021-04-11', '00100 Nairobi', '00100 Nairobi', '2021-04-16 05:06:02', '2021-04-19 06:58:29'),
(6, 19, 6, 6, 5, 'male', '+254787400637', '2021-04-19', '00100 Nairobi', '00100 Nairobi', '2021-04-16 05:07:03', '2021-04-19 06:58:12'),
(7, 20, 6, 2, 3, 'female', '+254716518546', '2021-04-12', 'lucky', 'lucky', '2021-04-17 08:02:46', '2021-04-19 06:57:55'),
(8, 21, 3, 6, 2, 'female', '+254798288410', '2021-04-20', '00100 Nairobi', '00100 Nairobi', '2021-04-19 00:40:05', '2021-04-19 06:57:38');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_code` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `slug`, `subject_code`, `teacher_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Industrial Attachment', 'industrial-attachment', 3, 3, 'Industrial Attachment', '2021-04-16 05:10:18', '2021-04-16 05:10:59'),
(2, 'Computing  Approaches', 'computing-approaches', 3224, 2, 'Computing  Approaches', '2021-04-16 05:11:43', '2021-04-16 05:13:38'),
(3, 'Distributed Multimedia', 'distributed-multimedia', 4204, 2, 'Distributed Multimedia', '2021-04-16 05:16:34', '2021-04-16 05:27:21'),
(4, 'Probability and Statistics I', 'probability-and-statistics-i', 1104, 5, 'Probability and Statistics I', '2021-04-16 05:29:21', '2021-04-16 05:29:21'),
(5, 'Principles of Marketing', 'principles-of-marketing', 1202, 4, 'Principles of Marketing', '2021-04-16 14:37:32', '2021-04-16 14:37:32'),
(6, 'Software Engineering', 'software-engineering', 3101, 6, 'Software Engineering', '2021-04-16 14:38:25', '2021-04-16 14:38:25'),
(7, 'Human Computer Interaction', 'human-computer-interaction', 4103, 4, 'Human Computer Interaction', '2021-04-16 14:39:18', '2021-04-16 14:39:18'),
(8, 'Data Structures', 'data-structures', 4105, 5, 'Data Structures', '2021-04-16 14:46:40', '2021-04-16 14:46:40'),
(9, 'ICT In Business', 'ict-in-business', 4206, 4, 'ICT In Business', '2021-04-16 14:47:52', '2021-04-16 14:47:52'),
(10, 'Introduction to programming', 'introduction-to-programming', 1102, 2, 'Introduction to programming', '2021-04-16 14:49:39', '2021-04-16 14:49:39'),
(11, 'Research Methodology', 'research-methodology', 1, 4, 'Research Methodology', '2021-04-16 14:51:36', '2021-04-16 14:51:36'),
(12, 'Introduction to business', 'introduction-to-business', 1101, 4, 'Introduction to business', '2021-04-16 14:52:40', '2021-04-16 14:52:40'),
(13, 'Principles of Management', 'principles-of-management', 1201, 3, 'Principles of Management', '2021-04-16 14:53:31', '2021-04-16 14:53:31'),
(14, 'Organization Behavior', 'organization-behavior', 2103, 6, 'Organization Behavior', '2021-04-16 14:54:06', '2021-04-16 14:54:06'),
(15, 'Application Packages', 'application-packages', 1106, 5, 'Application Packages', '2021-04-16 14:55:11', '2021-04-16 14:55:11'),
(16, 'Web Design', 'web-design', 1202, 3, 'Web Design', '2021-04-16 14:56:11', '2021-04-16 14:56:11'),
(17, 'Object oriented programming II', 'object-oriented-programming-ii', 2205, 5, 'Object oriented programming II', '2021-04-16 14:57:01', '2021-04-16 14:57:01'),
(18, 'Information Systems', 'information-systems', 3105, 2, 'Information Systems', '2021-04-16 14:58:31', '2021-04-16 14:58:31'),
(19, 'Analysis and Design', 'analysis-and-design', 3201, 6, 'Analysis and Design', '2021-04-16 15:01:27', '2021-04-16 15:01:27'),
(20, 'Internet programming', 'internet-programming', 3202, 6, 'Internet programming', '2021-04-16 15:02:04', '2021-04-16 15:02:04'),
(21, 'Network Management', 'network-management', 3204, 2, 'Network Management', '2021-04-16 15:02:42', '2021-04-16 15:02:42'),
(22, 'ICT project', 'ict-project', 3206, 3, 'ICT project', '2021-04-16 15:03:57', '2021-04-16 15:03:57'),
(23, 'Design and analysis', 'design-and-analysis', 3209, 5, 'Design and analysis', '2021-04-16 15:04:39', '2021-04-16 15:04:39'),
(24, 'Security and Cryptography', 'security-and-cryptography', 4104, 2, 'Security and Cryptography', '2021-04-16 15:05:18', '2021-04-16 15:05:18'),
(25, 'Mobile Applications', 'mobile-applications', 4107, 4, 'Mobile Applications', '2021-04-16 15:06:22', '2021-04-16 15:06:22'),
(26, 'Information Systems Audit', 'information-systems-audit', 4108, 6, 'Information Systems Audit', '2021-04-16 15:06:53', '2021-04-16 15:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `gender` enum('male','female','other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateofbirth` date NOT NULL,
  `current_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `user_id`, `gender`, `phone`, `dateofbirth`, `current_address`, `permanent_address`, `created_at`, `updated_at`) VALUES
(2, 5, 'male', '+254798288410', '2021-04-25', 'Nairobi', 'Nairobi', '2021-04-16 04:29:55', '2021-04-19 08:34:37'),
(3, 6, 'male', '+254720460519', '2021-04-25', 'Kitale', 'Kitale', '2021-04-16 04:30:54', '2021-04-19 06:50:25'),
(4, 7, 'female', '+254798288410', '2021-04-25', 'Nairobi', 'Nairobi', '2021-04-16 04:32:39', '2021-04-19 06:50:10'),
(5, 8, 'male', '+254787400637', '2021-04-25', 'kisumu', 'Kisumu', '2021-04-16 04:34:01', '2021-04-19 06:49:53'),
(6, 9, 'male', '+254787400637', '2021-04-25', 'Mombasa', 'Mombasa', '2021-04-16 04:35:29', '2021-04-26 01:20:52');

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
  `profile_picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `profile_picture`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@demo.com', NULL, '$2y$10$jsrF12wsZ1jxe7Pp5/zXnuTSyiXVeCM5bEzvmHjWM4Fb7tx4HqYsi', 'avatar.png', NULL, '2021-04-16 04:13:19', '2021-04-16 04:13:19'),
(5, 'peter', 'peter@gmail.com', NULL, '$2y$10$P6Ahml/ox2UlYm6hgEIkd.7eSvT2aP5SSDvURje2yQ1RLIf1VjUPy', 'peter-5.jpg', NULL, '2021-04-16 04:29:54', '2021-04-16 04:29:55'),
(6, 'chogi', 'chogi@gmail.com', NULL, '$2y$10$v6l2yceiqqYhP3T7.SDD8OD3m7Q00DU0RsJMrHvW2WEMvJh8nRd0e', 'chogi-6.jpg', NULL, '2021-04-16 04:30:53', '2021-04-16 04:30:54'),
(7, 'Rose', 'rose@gmail.com', NULL, '$2y$10$hymgh6/nNojQZG6Jt1VonO2mkkiDfBtVgzrgakB.O5vMMk46aAT9W', 'rose-7.jpg', NULL, '2021-04-16 04:32:39', '2021-04-16 04:32:39'),
(8, 'John', 'john@gmail.com', NULL, '$2y$10$aL6m.Q7eAqKbQwuoGuQ2.u7BjxBAiezSF1LNMhEfcAfAtCkulWPwe', 'muinde-evans-mwangangi-8.jpg', NULL, '2021-04-16 04:34:01', '2021-04-16 04:34:26'),
(9, 'mark', 'mark@gmail.com', NULL, '$2y$10$Idd3rikAWbe3qpULGWSvwuppfG33SG2rI6IWFsUT5FGBAUHFSM19.', 'mark-9.jpg', NULL, '2021-04-16 04:35:29', '2021-04-16 04:35:29'),
(10, 'owino/parent', 'owino/parent@gmail.com', NULL, '$2y$10$IgO0/QCm0zEYOh1EOXwq4eqPIlWSCF5cnaeHtkX6h7h5qdN95uNUi', 'owinoparent-10.jpg', NULL, '2021-04-16 04:42:51', '2021-04-19 08:34:12'),
(11, 'evans/parent', 'evans/parent@gmail.com', NULL, '$2y$10$O1oLQytPcDsoVm09Jnvh4uBapwr4MxzePM0E0tVX2UdA4IUx3lZpm', 'evansparent-11.jpg', NULL, '2021-04-16 04:44:55', '2021-04-19 06:56:52'),
(12, 'student/parent', 'student/parent@gmail.com', NULL, '$2y$10$hH4nxUgbPM8Og5/Xm5HELOLtPBHNtTU2SpXK45sX73mkzWCZULl46', 'studentparent-12.jpg', NULL, '2021-04-16 04:46:12', '2021-04-19 06:56:35'),
(13, 'steve/parent', 'steve/parent@gmail.com', NULL, '$2y$10$0DLJjo6.qvAlEorwIctmYuMDImI78mNq5vcTPhyqZs6eDsNgCImDO', 'steveparent-13.jpg', NULL, '2021-04-16 04:47:13', '2021-04-19 06:56:19'),
(14, 'larry/parent', 'larry/parent@gmail.com', NULL, '$2y$10$xZvoZyFLGTqOI/AxlU5nRud1xDbpaQFAtKNVAvD4BU../a8c4wnYe', 'larryparent-14.jpg', NULL, '2021-04-16 04:48:12', '2021-04-19 06:55:59'),
(15, 'owino', 'owin@gmail.com', NULL, '$2y$10$57FLO4dKkSB.mJ/DdSHY0ezjRJCkdiMdmsO4B8HaeKriaQfBF74PC', 'owino-15.jpg', NULL, '2021-04-16 05:01:02', '2021-04-19 08:35:04'),
(16, 'evans', 'evans@gmail.com', NULL, '$2y$10$9XZhX7TiJCeWuhRLc7GNi.04TCDpOC5ZSGLagZwlH9VaDoBdePgEG', 'evans-16.jpg', NULL, '2021-04-16 05:02:58', '2021-04-19 06:59:17'),
(17, 'student', 'student@gmail.com', NULL, '$2y$10$oA3FSgtQFhR0xc74.MpiQuP/6kfNHJPYlD400iIgm0GrHahl8uMiy', 'student-17.jpg', NULL, '2021-04-16 05:04:31', '2021-04-19 06:59:00'),
(18, 'steve', 'steve@gmail.com', NULL, '$2y$10$a6O30anOCyO/wkg5Zgb1u.Wias4EYb36smHy5riBkyTMRUQfpBQ1m', 'steve-18.jpg', NULL, '2021-04-16 05:06:01', '2021-04-19 06:58:29'),
(19, 'larry', 'larry@gmail.com', NULL, '$2y$10$PTVAAcmRKGJIqUpAHF32WeMjyWicye2ZTjXd3xZX.eRC9kvv4oMpS', 'larry-19.jpg', NULL, '2021-04-16 05:07:03', '2021-04-19 06:58:12'),
(20, 'james', 'james@gmail.com', NULL, '$2y$10$tNpjw7iVUx8PNBOuryGYl.LaWsVXpISjycJz7z2ha18BhcIqj4siO', 'avatar.png', NULL, '2021-04-17 08:02:46', '2021-04-19 06:57:55'),
(21, 'rose', 'rosesimba@gmail.com', NULL, '$2y$10$ZQpb6crpz4U9fanleQwcVOnTIVcfbfLHsEstcIQxxmSo7z1q7fTgy', 'rose-21.jpg', NULL, '2021-04-19 00:40:05', '2021-04-19 06:57:38');

-- --------------------------------------------------------

--
-- Table structure for table `users_phone_number`
--

CREATE TABLE `users_phone_number` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_phone_number`
--

INSERT INTO `users_phone_number` (`id`, `phone_number`, `created_at`, `updated_at`) VALUES
(1, '+254798288410', '2021-04-17 05:00:30', '2021-04-17 05:00:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade_subject`
--
ALTER TABLE `grade_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_phone_number`
--
ALTER TABLE `users_phone_number`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `grade_subject`
--
ALTER TABLE `grade_subject`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users_phone_number`
--
ALTER TABLE `users_phone_number`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
