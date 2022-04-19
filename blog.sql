-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 19 avr. 2022 à 13:08
-- Version du serveur :  10.4.19-MariaDB
-- Version de PHP : 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(2, NULL, 1, 'Category 2', 'category-2', '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(3, NULL, 1, 'football', 'football', '2021-12-31 09:53:11', '2021-12-31 09:53:11'),
(4, NULL, 1, 'culture', 'culture', '2021-12-31 09:57:41', '2021-12-31 09:57:41');

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `object` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`id`, `object`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'sadasd', 'saad.sabir.ss@gmail.com', 'sadasdsadasdsadasd', '2022-01-01 20:56:06', '2022-01-01 20:56:06'),
(2, 'sadasd', 'saad.sabir.ss3@gmail.com', 'sadasdsadasdsadasd', '2022-01-01 20:58:57', '2022-01-01 20:58:57'),
(3, 'sadasd', 'saad.sabir.ss3@gmail.com', 'fsddsgdgdsg', '2022-01-01 21:02:21', '2022-01-01 21:02:21'),
(4, 'sadasd', 'saad.elghanemy@live.com', 'sadasdsadasdsadasdsadasdsadasd', '2022-01-01 21:03:12', '2022-01-01 21:03:12'),
(5, 'sadasd', 'saad.sabir.ss3@gmail.com', 'sadasdsadasdsadasdsadasdsadasd', '2022-01-01 21:04:23', '2022-01-01 21:04:23'),
(6, 'sadasd', 'saad.sabir.ss3@gmail.com', 'sadasdsadasdsadasdsadasdsadasd', '2022-01-01 21:04:46', '2022-01-01 21:04:46'),
(7, 'saad.sabir.ss222@gmail.com', 'saad.sabir.ss222@gmail.com', 'saad.sabir.ss222@gmail.comsaad.sabir.ss222@gmail.com', '2022-01-01 21:13:05', '2022-01-01 21:13:05'),
(8, 'saad', 'saad.sabir.ss@gmail.com', 'saadsaadsaad', '2022-01-01 21:13:44', '2022-01-01 21:13:44'),
(9, 'sadasd', 'saad.sabir.ss3@gmail.com', 'sadasdsadasdsadasd', '2022-01-03 07:08:04', '2022-01-03 07:08:04'),
(10, 'asdasdas', 'elghanemysaad@gmail.com', 'asdasdasdas', '2022-04-19 10:57:18', '2022-04-19 10:57:18');

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '{}', 2),
(31, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, '{}', 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '{}', 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 5, 'nb_visite', 'text', 'Nb Visite', 0, 1, 1, 0, 0, 0, '{}', 16),
(57, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(58, 7, 'object', 'text', 'Object', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 2),
(60, 7, 'message', 'text_area', 'Message', 0, 1, 1, 1, 1, 1, '{}', 4),
(61, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(62, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, '{}', 6),
(63, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(64, 8, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(65, 8, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(66, 8, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(67, 8, 'active', 'checkbox', 'Active', 0, 1, 1, 1, 1, 1, '{}', 5),
(68, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 6),
(69, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(70, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(71, 11, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(72, 11, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(73, 11, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(74, 11, 'active', 'checkbox', 'Active', 0, 1, 1, 1, 1, 1, '{}', 5),
(75, 11, 'gammes_id', 'text', 'Gammes Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(76, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 7),
(77, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(78, 11, 'product_belongsto_gamme_relationship', 'relationship', 'gammes', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Gamme\",\"table\":\"gammes\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-12-26 17:33:18', '2021-12-26 17:33:18'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-12-26 17:33:18', '2021-12-26 17:33:18'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-12-26 17:33:18', '2021-12-26 17:33:18'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-12-26 17:33:20', '2022-01-01 11:58:01'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(7, 'contacts', 'contacts', 'Contact', 'Contacts', NULL, 'App\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-01-01 12:36:47', '2022-01-01 12:36:47'),
(8, 'gammes', 'gammes', 'Gamme', 'Gammes', NULL, 'App\\Gamme', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-01-02 10:39:15', '2022-01-02 10:39:15'),
(11, 'products', 'products', 'Product', 'Products', NULL, 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-01-02 10:45:20', '2022-01-02 11:12:19');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `gammes`
--

CREATE TABLE `gammes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gammes`
--

INSERT INTO `gammes` (`id`, `title`, `description`, `image`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Saints Row PS4&PS5', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\',', 'gammes\\January2022\\9CZFIsWWB4UnOuOv7nXo.jpg', 1, '2022-01-02 11:01:49', '2022-01-02 11:01:49'),
(2, 'Forspoken', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here,', 'gammes\\January2022\\yhqGKCoz5IlF5EpTnkk5.jpg', 1, '2022-01-02 11:02:34', '2022-01-02 11:02:34'),
(3, 'PS5 Tiny Tina\'s Wonderlands: Next-Level Edition Pre-Order Bundle', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Co', 'gammes\\January2022\\rl1Ev1s14lowTCfzE0cL.jpg', 1, '2022-01-02 11:03:41', '2022-01-02 11:03:41'),
(4, 'STRANGER OF PARADISE FINAL FANTASY ORIGIN PS4 & PS5', 'STRANGER OF PARADISE FINAL FANTASY ORIGIN PS4 & PS5 STRANGER OF PARADISE FINAL FANTASY ORIGIN PS4 & PS5 STRANGER OF PARADISE FINAL FANTASY ORIGIN PS4 & PS5', 'gammes\\January2022\\a4j8S2QIbblXV8mIRCtS.jpg', 1, '2022-01-02 11:04:20', '2022-01-02 11:04:20'),
(5, 'SpellForce III Reforced', 'STRANGER OF PARADISE FINAL FANTASY ORIGIN PS4 & PS5STRANGER OF PARADISE FINAL FANTASY ORIGIN PS4 & PS5 STRANGER OF PARADISE FINAL FANTASY ORIGIN PS4 & PS5', 'gammes\\January2022\\zkNRVteqbwUlyEAWLPax.jpg', 1, '2022-01-02 11:04:54', '2022-01-02 11:04:54'),
(6, 'SpellForce III Reforced: Complete Edition', 'SpellForce III Reforced SpellForce III Reforced SpellForce III Reforcedv', 'gammes\\January2022\\rs4fmgrTSD3SBTAgyxeG.jpg', 1, '2022-01-02 11:05:24', '2022-01-02 11:05:24');

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-12-26 17:33:19', '2021-12-26 17:33:19'),
(2, 'my_menu', '2021-12-31 21:47:21', '2021-12-31 21:47:21');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-12-26 17:33:19', '2021-12-26 17:33:19', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2021-12-26 17:33:19', '2022-01-01 12:37:44', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-12-26 17:33:19', '2021-12-26 17:33:19', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-12-26 17:33:19', '2021-12-26 17:33:19', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 11, '2021-12-26 17:33:19', '2022-01-02 10:47:39', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-12-26 17:33:19', '2022-01-01 12:37:45', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-12-26 17:33:19', '2022-01-01 12:37:45', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-12-26 17:33:19', '2022-01-01 12:37:45', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-12-26 17:33:19', '2022-01-01 12:37:45', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 12, '2021-12-26 17:33:19', '2022-01-02 10:47:39', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 7, '2021-12-26 17:33:20', '2022-01-01 12:37:44', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 5, '2021-12-26 17:33:20', '2022-01-01 12:37:44', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 6, '2021-12-26 17:33:20', '2022-01-01 12:37:44', 'voyager.pages.index', NULL),
(14, 2, 'Home', '/', '_self', NULL, '#000000', NULL, 1, '2021-12-31 21:48:26', '2021-12-31 21:50:35', NULL, ''),
(15, 2, 'Blog', '/blog', '_self', NULL, '#000000', NULL, 2, '2021-12-31 21:49:46', '2021-12-31 21:50:35', NULL, ''),
(16, 2, 'About', '/about', '_self', NULL, '#000000', NULL, 3, '2021-12-31 21:50:04', '2021-12-31 21:50:41', NULL, ''),
(17, 2, 'Contact', '/contact', '_self', NULL, '#000000', NULL, 5, '2021-12-31 21:50:20', '2022-01-01 10:20:51', NULL, ''),
(19, 1, 'Contacts', '', '_self', 'voyager-chat', '#000000', NULL, 8, '2022-01-01 12:36:47', '2022-01-01 12:40:06', 'voyager.contacts.index', 'null'),
(20, 1, 'Gammes', '', '_self', 'voyager-controller', '#000000', NULL, 9, '2022-01-02 10:39:15', '2022-01-02 10:50:32', 'voyager.gammes.index', 'null'),
(21, 1, 'Products', '', '_self', 'voyager-shop', '#000000', NULL, 10, '2022-01-02 10:45:20', '2022-01-02 10:52:55', 'voyager.products.index', 'null');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2021-12-26 17:33:20', '2021-12-26 17:33:20');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-12-26 17:33:19', '2021-12-26 17:33:19'),
(2, 'browse_bread', NULL, '2021-12-26 17:33:19', '2021-12-26 17:33:19'),
(3, 'browse_database', NULL, '2021-12-26 17:33:19', '2021-12-26 17:33:19'),
(4, 'browse_media', NULL, '2021-12-26 17:33:19', '2021-12-26 17:33:19'),
(5, 'browse_compass', NULL, '2021-12-26 17:33:19', '2021-12-26 17:33:19'),
(6, 'browse_menus', 'menus', '2021-12-26 17:33:19', '2021-12-26 17:33:19'),
(7, 'read_menus', 'menus', '2021-12-26 17:33:19', '2021-12-26 17:33:19'),
(8, 'edit_menus', 'menus', '2021-12-26 17:33:19', '2021-12-26 17:33:19'),
(9, 'add_menus', 'menus', '2021-12-26 17:33:19', '2021-12-26 17:33:19'),
(10, 'delete_menus', 'menus', '2021-12-26 17:33:19', '2021-12-26 17:33:19'),
(11, 'browse_roles', 'roles', '2021-12-26 17:33:19', '2021-12-26 17:33:19'),
(12, 'read_roles', 'roles', '2021-12-26 17:33:19', '2021-12-26 17:33:19'),
(13, 'edit_roles', 'roles', '2021-12-26 17:33:19', '2021-12-26 17:33:19'),
(14, 'add_roles', 'roles', '2021-12-26 17:33:19', '2021-12-26 17:33:19'),
(15, 'delete_roles', 'roles', '2021-12-26 17:33:19', '2021-12-26 17:33:19'),
(16, 'browse_users', 'users', '2021-12-26 17:33:19', '2021-12-26 17:33:19'),
(17, 'read_users', 'users', '2021-12-26 17:33:19', '2021-12-26 17:33:19'),
(18, 'edit_users', 'users', '2021-12-26 17:33:19', '2021-12-26 17:33:19'),
(19, 'add_users', 'users', '2021-12-26 17:33:19', '2021-12-26 17:33:19'),
(20, 'delete_users', 'users', '2021-12-26 17:33:19', '2021-12-26 17:33:19'),
(21, 'browse_settings', 'settings', '2021-12-26 17:33:19', '2021-12-26 17:33:19'),
(22, 'read_settings', 'settings', '2021-12-26 17:33:19', '2021-12-26 17:33:19'),
(23, 'edit_settings', 'settings', '2021-12-26 17:33:19', '2021-12-26 17:33:19'),
(24, 'add_settings', 'settings', '2021-12-26 17:33:19', '2021-12-26 17:33:19'),
(25, 'delete_settings', 'settings', '2021-12-26 17:33:19', '2021-12-26 17:33:19'),
(26, 'browse_categories', 'categories', '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(27, 'read_categories', 'categories', '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(28, 'edit_categories', 'categories', '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(29, 'add_categories', 'categories', '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(30, 'delete_categories', 'categories', '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(31, 'browse_posts', 'posts', '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(32, 'read_posts', 'posts', '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(33, 'edit_posts', 'posts', '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(34, 'add_posts', 'posts', '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(35, 'delete_posts', 'posts', '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(36, 'browse_pages', 'pages', '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(37, 'read_pages', 'pages', '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(38, 'edit_pages', 'pages', '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(39, 'add_pages', 'pages', '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(40, 'delete_pages', 'pages', '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(41, 'browse_contacts', 'contacts', '2022-01-01 12:36:47', '2022-01-01 12:36:47'),
(42, 'read_contacts', 'contacts', '2022-01-01 12:36:47', '2022-01-01 12:36:47'),
(43, 'edit_contacts', 'contacts', '2022-01-01 12:36:47', '2022-01-01 12:36:47'),
(44, 'add_contacts', 'contacts', '2022-01-01 12:36:47', '2022-01-01 12:36:47'),
(45, 'delete_contacts', 'contacts', '2022-01-01 12:36:47', '2022-01-01 12:36:47'),
(46, 'browse_gammes', 'gammes', '2022-01-02 10:39:15', '2022-01-02 10:39:15'),
(47, 'read_gammes', 'gammes', '2022-01-02 10:39:15', '2022-01-02 10:39:15'),
(48, 'edit_gammes', 'gammes', '2022-01-02 10:39:15', '2022-01-02 10:39:15'),
(49, 'add_gammes', 'gammes', '2022-01-02 10:39:15', '2022-01-02 10:39:15'),
(50, 'delete_gammes', 'gammes', '2022-01-02 10:39:15', '2022-01-02 10:39:15'),
(51, 'browse_products', 'products', '2022-01-02 10:45:20', '2022-01-02 10:45:20'),
(52, 'read_products', 'products', '2022-01-02 10:45:20', '2022-01-02 10:45:20'),
(53, 'edit_products', 'products', '2022-01-02 10:45:20', '2022-01-02 10:45:20'),
(54, 'add_products', 'products', '2022-01-02 10:45:20', '2022-01-02 10:45:20'),
(55, 'delete_products', 'products', '2022-01-02 10:45:20', '2022-01-02 10:45:20');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
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
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nb_visite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`, `nb_visite`) VALUES
(1, 1, 1, 'This is lorem ipsum post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout&nbsp;</p>', 'posts\\January2022\\gznyeg7hcq4JgzRmhUWR.jpg', 'this-is-lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'DRAFT', 0, '2021-12-26 17:33:20', '2022-04-19 11:07:01', 1),
(2, 1, 1, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\r\n<h2>We can use all kinds of format!</h2>\r\n<p>And include a bunch of other stuff.</p>', 'posts\\January2022\\Y944N25IxlxWiug9Ee4w.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-12-26 17:33:20', '2022-01-02 20:13:35', NULL),
(3, 1, 2, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts\\January2022\\52mU1wzCY85jQ03EswCE.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-12-26 17:33:20', '2022-01-02 20:12:24', NULL),
(4, 1, 1, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\r\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\r\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts\\January2022\\Ely4R9jMkJ654bDcoOPL.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-12-26 17:33:20', '2022-01-02 20:12:10', NULL),
(6, 1, 3, 'It is a long established fassd', 'specimen book.', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content her', '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by ac</span></p>', 'posts\\January2022\\Ba6NlnbV3sOsJpF80WN5.jpg', 'it-is-a-long-established-fassd', 'm Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also', NULL, 'PUBLISHED', 0, '2021-12-31 10:00:30', '2022-04-19 10:57:00', 2),
(7, 1, 4, 'Lorem Ipsum is simply', NULL, 'survived not only five centuries, but also the leap into electronic typesetting, remaining essentiall', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout&nbsp;</p>', 'posts\\January2022\\OO4sVYa1mYA9xSDnTwtt.jpg', 'lorem-ipsum-is-simply', NULL, NULL, 'PUBLISHED', 0, '2021-12-31 10:03:49', '2022-04-19 11:06:02', 1),
(8, 1, 2, 'It is a long established fact', NULL, 'It is a long established fact that a reader will be distracted by the readable content of a page wheere', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout&nbsp;</p>', 'posts\\January2022\\QjyN0DdzSAZ33kdJ0nq9.jpg', 'it-is-a-long-established-fact', NULL, NULL, 'PUBLISHED', 0, '2022-01-01 11:35:30', '2022-04-19 11:05:44', 8),
(9, 1, 1, 'PS5 Tiny Tina\'s Wonderlands', NULL, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout&nbsp;</p>', 'posts\\January2022\\YivprqkFcEG7VGYr1Ka1.jpg', 'ps5-tiny-tina-s-wonderlands', NULL, NULL, 'PUBLISHED', 0, '2022-01-02 20:22:16', '2022-04-19 11:05:36', 1),
(10, 1, 1, 'Saints Row PS4&PS5', NULL, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout&nbsp;</p>', 'posts\\January2022\\Vudo8dAZ4zUQ9bEdfYX5.jpg', 'saints-row-ps4andps5', NULL, NULL, 'PUBLISHED', 0, '2022-01-02 20:23:07', '2022-04-19 11:06:32', 2);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `gammes_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-12-26 17:33:19', '2021-12-26 17:33:19'),
(2, 'user', 'Normal User', '2021-12-26 17:33:19', '2021-12-26 17:33:19');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'contact.phone1', 'Phone', '+212600570107', NULL, 'text', 6, 'contact'),
(12, 'contact.phone2', 'Phone', '+212708520057', NULL, 'text', 7, 'contact'),
(13, 'contact.email', 'Email', 'elghanemysaad@gmail.com', NULL, 'text', 8, 'contact'),
(14, 'contact.location', 'Location', 'Maroc Casablanca centre ville', NULL, 'text', 9, 'contact'),
(15, 'contact.map', 'Map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13303.433894623042!2d-7.680720126687591!3d33.531065078932066!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xda62cebf7174c55%3A0xce623f58cb6b65bb!2sLissasfa%2C%20Casablanca!5e0!3m2!1sen!2sma!4v1641045120780!5m2!1sen!2sma\"\r\n                         style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL, 'code_editor', 10, 'contact'),
(16, 'site.theme', 'Theme', 'darkly', '{\r\n    \"default\":\"minty\",\r\n    \"options\":{\r\n        \"minty\":\"minty\",\r\n        \"darkly\":\"darkly\",\r\n        \"vapor\":\"vapor\"\r\n    }\r\n}', 'select_dropdown', 11, 'Site'),
(17, 'home.title', 'Title', 'Titile Home', NULL, 'text', 12, 'Home'),
(18, 'contact.title', 'Title', 'Title Contact', NULL, 'text', 13, 'contact'),
(19, 'blog.title', 'Title', 'Title Blog', NULL, 'text', 14, 'Blog'),
(21, 'about.title', 'Title', 'Title About', NULL, 'text', 15, 'About');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-12-26 17:33:20', '2021-12-26 17:33:20'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-12-26 17:33:21', '2021-12-26 17:33:21'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-12-26 17:33:21', '2021-12-26 17:33:21'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-12-26 17:33:21', '2021-12-26 17:33:21'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-12-26 17:33:21', '2021-12-26 17:33:21'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-12-26 17:33:21', '2021-12-26 17:33:21'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-12-26 17:33:21', '2021-12-26 17:33:21'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-12-26 17:33:21', '2021-12-26 17:33:21'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-12-26 17:33:21', '2021-12-26 17:33:21'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-12-26 17:33:21', '2021-12-26 17:33:21'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-12-26 17:33:21', '2021-12-26 17:33:21'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-12-26 17:33:21', '2021-12-26 17:33:21'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2021-12-26 17:33:21', '2021-12-26 17:33:21'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-12-26 17:33:21', '2021-12-26 17:33:21'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-12-26 17:33:21', '2021-12-26 17:33:21'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2021-12-26 17:33:21', '2021-12-26 17:33:21'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-12-26 17:33:21', '2021-12-26 17:33:21'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-12-26 17:33:21', '2021-12-26 17:33:21'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-12-26 17:33:21', '2021-12-26 17:33:21'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-12-26 17:33:21', '2021-12-26 17:33:21'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-12-26 17:33:21', '2021-12-26 17:33:21');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Saad', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$.LLrcvzLISjCHoump20mg.gxNMs9cXdyfewE9ixKjkWUqdy59vgWq', '6KO9YwxiUB7xCjOLmgTm17GelSIR2zM7fw6v77H8CFsWF22AFXUAf59hRPVq', '{\"locale\":\"en\"}', '2021-12-26 17:33:20', '2021-12-31 09:51:44');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `gammes`
--
ALTER TABLE `gammes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `gammes`
--
ALTER TABLE `gammes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
