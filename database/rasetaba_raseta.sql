-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 07, 2022 at 10:53 AM
-- Server version: 10.3.32-MariaDB-log-cll-lve
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rasetaba_raseta`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id_category` int(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id_category`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Sukajan', '2022-01-29 03:23:37', '2022-01-29 03:23:37'),
(2, 'Varsity', '2022-01-29 04:02:42', '2022-01-29 04:02:42'),
(3, 'Hoodie', '2022-01-29 04:19:08', '2022-01-29 04:19:08'),
(4, 'Coach', '2022-01-29 04:19:21', '2022-01-29 04:19:21'),
(5, 'Crewneck', '2022-01-29 04:19:32', '2022-01-29 04:19:32'),
(6, 'Tshirt', '2022-01-31 01:56:37', '2022-01-31 01:56:37'),
(7, 'Longsleeve', '2022-01-31 01:56:53', '2022-01-31 01:56:53'),
(8, 'Pants', '2022-01-31 01:57:21', '2022-01-31 01:57:21'),
(9, 'Bag', '2022-01-31 01:57:30', '2022-01-31 01:57:30');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('Image','Video') COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shopee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `title`, `type`, `content`, `shopee`, `created_at`, `updated_at`) VALUES
(3, 'Iklan New Year 2022', 'Video', '1643362690_2022012816361..mp4', 'shopee.co.id/rasetabasedstore', '2022-01-16 14:15:45', '2022-01-16 14:15:45'),
(4, 'Slider 2 Untuk Web', 'Image', '1643259031_a5d05c458b60643e4557b8a7a4f68bdb.jpg', 'https://shopee.co.id/PEERYMAKER-Varsity-Jacket-College-Club-i.308864651.13113358729?sp_atk=46e0ed36-a552-4175-bad0-514c784a578d', '2022-01-16 15:14:22', '2022-01-16 15:14:22'),
(6, 'Slider 3 Untuk Web', 'Image', '1643258989_Icha.png', 'https://shopee.co.id/rasetabasedstore?shopCollection=45263725#product_list', '2022-01-16 23:30:59', '2022-01-16 23:30:59'),
(7, 'DAFFA', 'Image', '1643362751_dafa--.jpg', 'https://shopee.co.id/PEERYMAKER-Varsity-Jacket-College-Club-i.308864651.13113358729?sp_atk=7e6a1fa8-3e2f-42da-8853-f6f3d424b70e', '2022-01-28 02:39:11', '2022-01-28 02:39:11');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_01_12_060242_create_products_table', 1),
(7, '2022_01_12_060315_create_contents_table', 1),
(8, '2022_01_12_061958_create_sessions_table', 1);

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shopee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lazada` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `price`, `discount`, `image`, `shopee`, `lazada`, `created_at`, `updated_at`) VALUES
(1, 'PEERYMAKER | Varsity Batter Bear', 2, 'Rp699.000', 'Rp319.000', '1643257002_Batter_Bear-01.jpg', 'https://shopee.co.id/PEERYMAKER-Varsity-Jacket-Batter-Bear-i.308864651.11479305215?sp_atk=866d9458-926c-4213-9c20-32ff40cdd79f', 'https://www.lazada.co.id/products/i6038744949.html?spm=a1zawh.24863640.table_online_product.3.74174edfKYu85S', '2022-01-14 15:03:03', '2022-01-14 15:03:03'),
(2, 'PEERYMAKER | Varsity American Football', 2, 'Rp699.000', 'Rp339.000', '1643256930_Varsity_ungu-01.jpg', 'https://shopee.co.id/PEERYMAKER-Varsity-Jacket-American-Football-i.308864651.15114843740?sp_atk=bf6387bb-5b28-4a70-997e-c44b629f2ccb', 'https://www.lazada.co.id/products/i5994978204.html?spm=a1zawh.24863640.table_online_product.9.74174edfKYu85S', '2022-01-14 22:08:21', '2022-01-14 22:08:21'),
(3, 'PEERYMAKER | Varsity Story of Victory', 2, 'Rp699.000', 'Rp339.000', '1643256850_Untuk_shopee_raseta-01.jpg', 'https://shopee.co.id/PEERYMAKER-Varsity-Jacket-Story-of-Victory-i.308864651.11966951120?sp_atk=7878ca70-b017-4dd1-b023-274e6ecdc819', 'https://www.lazada.co.id/products/i5873086308.html?spm=a1zawh.24863640.table_online_product.17.74174edfKYu85S', '2022-01-15 20:28:08', '2022-01-15 20:28:08'),
(4, 'PEERYMAKER | Varsity The Champion', 2, 'Rp699.000', 'Rp318.000', '1643256672_champ-1.jpg', 'https://shopee.co.id/PEERYMAKER-Varsity-Jacket-The-Champion-i.308864651.11672828947?xptdk=376d10db-a557-471f-88f7-6e140efeac50', 'https://www.lazada.co.id/products/i5915572312.html?spm=a1zawh.24863640.table_online_product.15.74174edfKYu85S', '2022-01-15 21:10:07', '2022-01-15 21:10:07'),
(5, 'PEERYMAKER | Varsity Motorcycle', 2, 'Rp699.000', 'Rp318.000', '1643256552_untuk_shopi-01.jpg', 'https://shopee.co.id/PEERYMAKER-Varsity-Jacket-Motorcycle-i.308864651.11466627920?xptdk=55f06ff9-311d-4001-8b4a-d593bd5f1d32', 'https://www.lazada.co.id/products/i5867896308.html?spm=a1zawh.24863640.table_online_product.19.74174edfKYu85S', '2022-01-15 21:10:57', '2022-01-15 21:10:57'),
(6, 'PEERYMAKER | Nascar Ride Hard', 2, 'Rp699.000', 'Rp350.000', '1643256426_PEERYMAKER__Nascar_-_Ridehard-01.jpg', 'https://shopee.co.id/PEERYMAKER-Nascar-Jacket-Ride-Hard-i.308864651.13853505150?xptdk=01511e18-9c2d-421e-bf34-73f7fe073eb6', 'https://www.lazada.co.id/products/i5932016356.html?spm=a1zawh.24863640.table_online_product.13.74174edfKYu85S', '2022-01-15 21:13:33', '2022-01-15 21:13:33'),
(11, 'PEERYMAKER | Varsity The Original', 2, 'Rp699.000', 'Rp339.000', '1643257310_The_Original-01.jpg', 'https://shopee.co.id/PEERYMAKER-Varsity-Jacket-The-Original-i.308864651.11437640774?sp_atk=f1267803-2acb-4058-8663-ea3c9a9b1137', 'https://www.lazada.co.id/products/i6130778105.html?spm=a1zawh.24863640.table_online_product.1.74174edfKYu85S', '2022-01-26 21:21:53', '2022-01-26 21:21:53'),
(13, 'PEERYMAKER | Varsity College Club', 2, 'Rp699.000', 'Rp280.000', '1643258379_1.jpg', 'https://shopee.co.id/PEERYMAKER-Varsity-Jacket-College-Club-i.308864651.13113358729?sp_atk=7e6a1fa8-3e2f-42da-8853-f6f3d424b70e', 'https://www.lazada.co.id/products/i5771974048.html?spm=a1zawh.24863640.table_online_product.67.74174edfKYu85S', '2022-01-26 21:39:42', '2022-01-26 21:39:42'),
(14, 'PEERYMAKER | Varsity Demon Bricks', 2, 'Rp699.000', 'Rp220.000', '1643258890_IMG_2727_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Varsity-Jacket-Demon-i.308864651.10102574711?sp_atk=0224f4b1-8513-41d3-894d-5d29b84e2155', 'https://www.lazada.co.id/products/i5231048482.html?spm=a1zawh.24863640.table_online_product.241.74174edfKYu85S', '2022-01-26 21:48:12', '2022-01-26 21:48:12'),
(15, 'PEERYMAKER | Varsity Aloha Blue', 2, 'Rp699.000', 'Rp190.000', '1643347638_Untitled-1-01.jpg', 'https://shopee.co.id/PEERYMAKER-Varsity-Jacket-Aloha-i.308864651.12724894113?sp_atk=3371ab3d-c8ad-48f3-9b9b-c20c7a741492', 'https://www.lazada.co.id/products/i5832086512.html?spm=a1zawh.24863640.table_online_product.253.1d2b4edf8K0rRG', '2022-01-27 22:27:22', '2022-01-27 22:27:22'),
(16, 'PEERYMAKER | Varsity Basic Navy', 2, 'Rp499.000', 'Rp149.000', '1643349901_DSC02353_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Varsity-Jacket-Basic-Navy-i.308864651.11218269970?sp_atk=dc6d8299-1084-4397-a07c-b19aec037134', 'https://www.lazada.co.id/products/i5542672253.html?spm=a1zawh.24863640.table_online_product.95.1e054edfiEEw1u', '2022-01-27 23:05:01', '2022-01-27 23:05:01'),
(17, 'PEERYMAKER | Varsity Basic Blue', 2, 'Rp499.000', 'Rp149.000', '1643350000_DSC02432_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Varsity-Jacket-Basic-Blue-i.308864651.10319975028?sp_atk=062748c5-67ae-4b2a-be8e-d54918cfe6da', 'https://www.lazada.co.id/shop/raseta-based-store/?spm=a2o4j.pdp_revamp.seller.1.3f7065865BAuwZ&itemId=5994978204&channelSource=pdp', '2022-01-27 23:06:40', '2022-01-27 23:06:40'),
(18, 'PEERYMAKER | Varsity Basic Green', 2, 'Rp499.000', 'Rp149.000', '1643350061_DSC02444_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Varsity-Jacket-Basic-Green-i.308864651.8781171424?sp_atk=5593b23a-65e3-4499-ace9-5eade6825aad', 'https://www.lazada.co.id/products/i5577798702.html?spm=a1zawh.24863640.table_online_product.89.1e054edfiEEw1u', '2022-01-27 23:07:41', '2022-01-27 23:07:41'),
(19, 'PEERYMAKER | Varsity Strike Around', 2, 'Rp499.000', 'Rp195.000', '1643350249_DSC04295_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Varsity-Jacket-Rolling-Around-i.308864651.10349806598?sp_atk=49a65d67-5784-4198-b32e-4ee5fa5d3cd9', 'https://www.lazada.co.id/shop/raseta-based-store/?spm=a2o4j.pdp_revamp.seller.1.3f7065865BAuwZ&itemId=5994978204&channelSource=pdp', '2022-01-27 23:10:49', '2022-01-27 23:10:49'),
(20, 'PEERYMAKER | Varsity Reach Out Red', 2, 'Rp499.000', 'Rp195.000', '1643350405_IMG_3235_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Varsity-Jacket-Reach-Out-i.308864651.11752130910?sp_atk=dbf704de-703e-4b83-a464-2a9600fd1494', 'xxxxhttps://www.lazada.co.id/shop/raseta-based-store/?spm=a2o4j.pdp_revamp.seller.1.3f7065865BAuwZ&itemId=5994978204&channelSource=pdp', '2022-01-27 23:13:26', '2022-01-27 23:13:26'),
(21, 'PEERYMAKER | Varsity Laziness', 2, 'Rp499.000', 'Rp195.000', '1643350595_DSC04185_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Varsity-Jacket-Laziness-i.308864651.13305972414?sp_atk=9e9e9cab-09f8-4092-b896-d64b364c3147', 'https://www.lazada.co.id/shop/raseta-based-store/?spm=a2o4j.pdp_revamp.seller.1.3f7065865BAuwZ&itemId=5994978204&channelSource=pdp', '2022-01-27 23:16:38', '2022-01-27 23:16:38'),
(22, 'PEERYMAKER | Sukajan Taiga', 1, 'Rp499.000', 'Rp209.000', '1643351375_untuk_shopi-01.jpg', 'https://shopee.co.id/PEERYMAKER-Sukajan-Taiga-i.308864651.6871994442?sp_atk=d716b294-0a0d-41e0-ae87-f9712064463d', 'https://www.lazada.co.id/products/i4585584383.html?spm=a1zawh.24863640.table_online_product.201.1e054edfiEEw1u', '2022-01-27 23:29:38', '2022-01-27 23:29:38'),
(23, 'PEERYMAKER | Sukajan Konotori', 1, 'Rp499.000', 'Rp209.000', '1643361609_untuk_shopi-01.jpg', 'https://shopee.co.id/PEERYMAKER-Sukajan-Konotori-i.308864651.5072028885?sp_atk=26528a29-32d6-4f21-b0ce-ca0881b4e2a1', 'https://www.lazada.co.id/products/i4586276081.html?spm=a1zawh.24863640.table_online_product.199.1e054edfiEEw1u', '2022-01-28 02:20:11', '2022-01-28 02:20:11'),
(24, 'PEERYMAKER | Sukajan Maiko Kyoto', 1, 'Rp499.000', 'Rp195.000', '1643431764_IMG_1929_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Sukajan-Maiko-i.308864651.5061387575?sp_atk=54c0ef73-cf1a-43af-b0e4-2c6bf364e7b1', 'https://www.lazada.co.id/products/i4675852894.html?spm=a1zawh.24863640.table_online_product.59.4dca4edfNo7xmx', '2022-01-28 21:49:25', '2022-01-28 21:49:25'),
(25, 'PEERYMAKER | Sukajan Phantom Dragon', 1, 'Rp499.000', 'Rp195.000', '1643431868_IMG_2015_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Sukajan-Phantom-i.308864651.6178028345?sp_atk=5200a211-22cd-4f80-acec-821ed34ea48a', 'https://www.lazada.co.id/products/i4776472788.html?spm=a1zawh.24863640.table_online_product.57.4dca4edfNo7xmx', '2022-01-28 21:51:08', '2022-01-28 21:51:08'),
(26, 'PEERYMAKER | Sukajan Old Culture', 1, 'Rp499.000', 'Rp195.000', '1643431963_DSC02450_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Sukajan-Old-Culture-i.308864651.8981172923?sp_atk=cfda4b32-cea9-40ae-9078-7c5fb9d8f970', 'https://www.lazada.co.id/products/i5567562407.html?spm=a1zawh.24863640.table_online_product.173.4dca4edfNo7xmx', '2022-01-28 21:52:43', '2022-01-28 21:52:43'),
(27, 'PEERYMAKER | Sukajan Fenikkusu Satin', 1, 'Rp699.000', 'Rp270.000', '1643432084_IMG_2405_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Sukajan-Fenikkusu-Satin-i.308864651.9622818657?sp_atk=27615785-8a88-4f1e-b422-df69c393ae69', 'https://www.lazada.co.id/products/i4913940431.html?spm=a1zawh.24863640.table_online_product.3.4dca4edfNo7xmx', '2022-01-28 21:54:46', '2022-01-28 21:54:46'),
(28, 'PEERYMAKER | Sukajan Spirit of Dragon', 1, 'Rp499.000', 'Rp195.000', '1643432169_IMG_2503_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Sukajan-Spirit-of-Dragon-i.308864651.5967250252?sp_atk=d13e6d4d-6dca-4a32-be8d-9ff001d1455a', 'https://www.lazada.co.id/products/i5491714757.html?spm=a1zawh.24863640.table_online_product.9.4dca4edfNo7xmx', '2022-01-28 21:56:09', '2022-01-28 21:56:09'),
(29, 'PEERYMAKER | Sukajan Samurai', 1, 'Rp499.000', 'Rp195.000', '1643445154_IMG_3010_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Sukajan-Samurai-i.308864651.7569178593?sp_atk=068cbf81-6a89-4059-a7c5-e71eab739b33', 'https://www.lazada.co.id/products/i4466122374.html?spm=a1zawh.24863640.table_online_product.21.4dca4edfNo7xmx', '2022-01-28 22:42:21', '2022-01-28 22:42:21'),
(30, 'PEERYMAKER | Sukajan Bushido Raijin', 1, 'Rp499.000', 'Rp195.000', '1643435024_IMG_2645_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Sukajan-Bushido-Raijin-i.308864651.9340882921?sp_atk=aeca4b45-a57d-40c9-8e9f-f403ad28d63e', 'https://www.lazada.co.id/products/i5600298161.html?spm=a1zawh.24863640.table_online_product.29.4dca4edfNo7xmx', '2022-01-28 22:43:45', '2022-01-28 22:43:45'),
(31, 'PEERYMAKER | Sukajan Burning Phoenix', 1, 'Rp499.000', 'Rp195.000', '1643436052_DSC02484_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Sukajan-Burning-Phoenix-i.308864651.8783049910?sp_atk=6a583512-560c-4ca7-ac1b-7f055cc46bb8', 'https://www.lazada.co.id/products/i5661112767.html?spm=a1zawh.24863640.table_online_product.37.4dca4edfNo7xmx', '2022-01-28 23:00:53', '2022-01-28 23:00:53'),
(32, 'PEERYMAKER | Sukajan Seifuku-sha Dragon', 1, 'Rp499.000', 'Rp195.000', '1643436648_DSC02507_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Sukajan-Seifuku-sha-i.308864651.9985565761?sp_atk=4ae1b524-b760-4ad2-8ccc-439c8bd9d252', 'https://www.lazada.co.id/products/i5661044772.html?spm=a1zawh.24863640.table_online_product.41.4dca4edfNo7xmx', '2022-01-28 23:10:51', '2022-01-28 23:10:51'),
(33, 'PEERYMAKER | Sukajan Shiroi Tori', 1, 'Rp499.000', 'Rp195.000', '1643437496_SHIROI_TORI_BLACK_(1)-2_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Sukajan-Shiroi-Tori-Black-i.308864651.9282702291?sp_atk=d6e432cc-f0c0-4072-80c8-2e863769a745', 'https://www.lazada.co.id/products/i5820680233.html?spm=a1zawh.24863640.table_online_product.45.4dca4edfNo7xmx', '2022-01-28 23:24:56', '2022-01-28 23:24:56'),
(34, 'PEERYMAKER | Sukajan Uchigeisha Black', 1, 'Rp499.000', 'Rp209.000', '1643437831_2.jpg', 'https://shopee.co.id/PEERYMAKER-Sukajan-Kiyomizu-i.308864651.9919552029?sp_atk=d09eba1a-9418-4b52-9477-4f33dc45943f', 'https://www.lazada.co.id/products/i4965840432.html?spm=a1zawh.24863640.table_online_product.57.4dca4edfNo7xmx', '2022-01-28 23:30:34', '2022-01-28 23:30:34'),
(35, 'PEERYMAKER | Sukajan Nihon Tora', 1, 'Rp499.000', 'Rp270.000', '1643445027_Untuk_shopee_raseta-01_(1).jpg', 'https://shopee.co.id/PEERYMAKER-Sukajan-Nihon-Tora-Satin-i.308864651.15210826469?sp_atk=4b2b2847-947c-4ada-8c0d-3227d4e38747', 'https://www.lazada.co.id/products/i6013808845.html?spm=a1zawh.24863640.table_online_product.61.4dca4edfNo7xmx', '2022-01-29 01:30:31', '2022-01-29 01:30:31'),
(36, 'PEERYMAKER | Hoodie Kabuki', 3, 'Rp349.000', 'Rp150.000', '1643445253_26ea11137b831c599e22433f18893a43_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Hoodie-Kabuki-i.308864651.6558323512?sp_atk=1c6c95e8-4536-49db-8e30-c9b72378ccf2', 'https://www.lazada.co.id/products/i5248838021.html?spm=a1zawh.24863640.table_online_product.69.4dca4edfNo7xmx', '2022-01-29 01:34:13', '2022-01-29 01:34:13'),
(37, 'PEERYMAKER | Hoodie Bushido Armor', 3, 'Rp349.000', 'Rp150.000', '1643445330_350cc9419e67da405b7283ba2adc8e5f_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Hoodie-Bushido-Armor-i.308864651.6853546480?sp_atk=bbba8c16-3693-452f-a61a-d97c59bc5e3e', 'https://www.lazada.co.id/shop/raseta-based-store/?spm=a2o4j.pdp_revamp.seller.1.1a27727euZdaiz&itemId=4675852894&channelSource=pdp', '2022-01-29 01:35:31', '2022-01-29 01:35:31'),
(38, 'PEERYMAKER | Hoodie Koyo Gunkan', 3, 'Rp349.000', 'Rp150.000', '1643445577_IMG_2672_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Hoodie-Koyo-Gunkan-i.308864651.3188839292?sp_atk=aac6326d-2cc4-4606-93de-fdc8bb4b1c43', 'https://www.lazada.co.id/products/i5248704999.html?spm=a1zawh.24863640.table_online_product.71.4dca4edfNo7xmx', '2022-01-29 01:39:39', '2022-01-29 01:39:39'),
(39, 'PEERYMAKER | Hoodie Victorious Dragon', 3, 'Rp349.000', 'Rp150.000', '1643445684_e932244d37772e616bd1b973aca27a54_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Hoodie-Victorious-i.308864651.6252939589?sp_atk=c62d1df4-fbf9-47ae-9a20-ff8d21bea5f7', 'https://www.lazada.co.id/shop/raseta-based-store/?spm=a2o4j.pdp_revamp.seller.1.1a27727euZdaiz&itemId=4675852894&channelSource=pdp', '2022-01-29 01:41:24', '2022-01-29 01:41:24'),
(40, 'PEERYMAKER | Hoodie Enjoy Your Day', 3, 'Rp349.000', 'Rp150.000', '1643445822_IMG_3024_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Hoodie-Enjoy-Your-Day-i.308864651.9565108166?sp_atk=ab3dfc6c-1c77-45ba-a957-27cf13f4844e', 'https://www.lazada.co.id/shop/raseta-based-store/?spm=a2o4j.pdp_revamp.seller.1.1a27727euZdaiz&itemId=4675852894&channelSource=pdp', '2022-01-29 01:43:42', '2022-01-29 01:43:42'),
(41, 'PEERYMAKER | Hoodie Zipper Nanpo', 3, 'Rp349.000', 'Rp150.000', '1643445940_DSC02472_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Hoodie-Zipper-Nanpo-i.308864651.8081217206?sp_atk=1bea420f-132d-4552-9da8-d4337c2a2199', 'https://www.lazada.co.id/shop/raseta-based-store/?spm=a2o4j.pdp_revamp.seller.1.1a27727euZdaiz&itemId=4675852894&channelSource=pdp', '2022-01-29 01:45:41', '2022-01-29 01:45:41'),
(42, 'PEERYMAKER | Hoodie Zipper Maiko', 3, 'Rp349.000', 'Rp150.000', '1643446014_DSC02459_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Hoodie-Zipper-Maiko-i.308864651.8681214748?sp_atk=bef99dfc-42b9-4211-a6dd-236066c3e930', 'https://www.lazada.co.id/shop/raseta-based-store/?spm=a2o4j.pdp_revamp.seller.1.1a27727euZdaiz&itemId=4675852894&channelSource=pdp', '2022-01-29 01:46:54', '2022-01-29 01:46:54'),
(43, 'PEERYMAKER | Hoodie Paradise', 3, 'Rp349.000', 'Rp150.000', '1643446087_DSC02440_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Hoodie-Paradise-i.308864651.9080716637?sp_atk=1e67be07-24b2-4982-8944-a213a8a8fe70', 'https://www.lazada.co.id/shop/raseta-based-store/?spm=a2o4j.pdp_revamp.seller.1.1a27727euZdaiz&itemId=4675852894&channelSource=pdp', '2022-01-29 01:48:08', '2022-01-29 01:48:08'),
(44, 'PEERYMAKER | Hoodie Maximum Extreme', 3, 'Rp349.000', 'Rp150.000', '1643446137_DSC02464_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Hoodie-Maximum-i.308864651.5495291497?sp_atk=b7134e20-68ad-428f-b94a-cfc5500ee993', 'https://www.lazada.co.id/shop/raseta-based-store/?spm=a2o4j.pdp_revamp.seller.1.1a27727euZdaiz&itemId=4675852894&channelSource=pdp', '2022-01-29 01:48:57', '2022-01-29 01:48:57'),
(45, 'PEERYMAKER | Hoodie Crumbly', 3, 'Rp349.000', 'Rp150.000', '1643446251_IMG_3020_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Hoodie-Crumbly-i.308864651.8865127465?sp_atk=89641e97-d517-459f-bc2e-271ae60dfb88', 'https://www.lazada.co.id/shop/raseta-based-store/?spm=a2o4j.pdp_revamp.seller.1.1a27727euZdaiz&itemId=4675852894&channelSource=pdp', '2022-01-29 01:50:52', '2022-01-29 01:50:52'),
(46, 'PEERYMAKER | Coach Youth Pale', 4, 'Rp399.000', 'Rp149.000', '1643446746_IMG_2138_copy.jpg', 'https://shopee.co.id/COACH-JACKET-WINDBREAKER-YOUTH-PALE-YELLOW-TASLAN-i.308864651.9013968745?sp_atk=4fda2114-6ed0-4925-b55c-1100034684f7', 'https://www.lazada.co.id/shop/raseta-based-store/?spm=a2o4j.pdp_revamp.seller.1.1a27727euZdaiz&itemId=4675852894&channelSource=pdp', '2022-01-29 01:59:06', '2022-01-29 01:59:06'),
(47, 'PEERYMAKER | Coach Simply Cause Green', 4, 'Rp399.000', 'Rp178.000', '1643448286_IMG_2864_copy.jpg', 'https://shopee.co.id/COACH-JACKET-WINDBREAKER-SIMPLY-CAUSE-GREEN-TASLAN-i.308864651.8658524765?sp_atk=867a26dd-b579-4e92-8b01-ce9e782a446b', 'https://www.lazada.co.id/shop/raseta-based-store/?spm=a2o4j.pdp_revamp.seller.1.1a27727euZdaiz&itemId=4675852894&channelSource=pdp', '2022-01-29 02:24:46', '2022-01-29 02:24:46'),
(48, 'PEERYMAKER | Coach Eternal Sign', 4, 'Rp399.000', 'Rp169.000', '1643448449_IMG_2859_copy.jpg', 'https://shopee.co.id/COACH-JACKET-WINDBREAKER-ETERNAL-SIGN-HEAVEN-BLACK-TASLAN-i.308864651.3052801175?sp_atk=6f756df3-0522-4eaa-b702-018d6d817879', 'https://www.lazada.co.id/shop/raseta-based-store/?spm=a2o4j.pdp_revamp.seller.1.1a27727euZdaiz&itemId=4675852894&channelSource=pdp', '2022-01-29 02:27:29', '2022-01-29 02:27:29'),
(49, 'PEERYMAKER | Crewneck Nice Trip', 5, 'Rp275.000', 'Rp158.000', '1643448883_IMG_2851_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Crewneck-Sweater-Nice-Trip-i.308864651.4189271061?sp_atk=7111e72b-10b8-4054-a8b4-8cf09f1b8bc1', 'https://www.lazada.co.id/shop/raseta-based-store/?spm=a2o4j.pdp_revamp.seller.1.1a27727euZdaiz&itemId=4675852894&channelSource=pdp', '2022-01-29 02:34:45', '2022-01-29 02:34:45'),
(50, 'PEERYMAKER | Crewneck Good Vibes', 5, 'Rp275.000', 'Rp158.000', '1643448998_IMG_2844_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Crewneck-Sweater-Good-Vibes-i.308864651.11204932372?sp_atk=886843cf-7d25-4539-a1ff-e282a16ff29e', 'https://www.lazada.co.id/shop/raseta-based-store/?spm=a2o4j.pdp_revamp.seller.1.1a27727euZdaiz&itemId=4675852894&channelSource=pdp', '2022-01-29 02:36:40', '2022-01-29 02:36:40'),
(51, 'PEERYMAKER | Crewneck Catch Our Smile', 5, 'Rp275.000', 'Rp158.000', '1643449140_IMG_2840_copy.jpg', 'https://shopee.co.id/PEERYMAKER-Crewneck-Sweater-Catch-Our-Smile-i.308864651.3789340584?sp_atk=7b9b3012-8b0a-43c2-9e36-955ec6c49399', 'https://www.lazada.co.id/shop/raseta-based-store/?spm=a2o4j.pdp_revamp.seller.1.1a27727euZdaiz&itemId=4675852894&channelSource=pdp', '2022-01-29 02:39:02', '2022-01-29 02:39:02'),
(52, 'PEERYMAKER | Crewneck Universal Culture', 5, 'Rp275.000', 'Rp105.000', '1643449251_IMG_2349_copy.jpg', 'https://shopee.co.id/URBAN-SWEATER-UNIVERSAL-CULTURE-FLEECE-BLACK-i.308864651.8319824397?sp_atk=a3a43dae-05bd-45d4-9bf3-e43662d351a7', 'https://www.lazada.co.id/shop/raseta-based-store/?spm=a2o4j.pdp_revamp.seller.1.1a27727euZdaiz&itemId=4675852894&channelSource=pdp', '2022-01-29 02:40:51', '2022-01-29 02:40:51');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0qKdGP2vGPLSaHficRHGoNFfVorlhYhmGD891c9U', NULL, '125.166.12.241', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Instagram 220.0.0.8.117 (iPhone9,2; iOS 15_0; id_ID; id-ID; scale=2.61; 1080x1920; 347566818)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3ZRY00zQmVreU56QUVSdFkxMWl6Z0pEcGpXTnNhOWhuNnNvaWlJbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644151704),
('2xzLzuYSrJYoYPXc4mMXvOFUFFh5Zs6QejKjsc0E', NULL, '51.15.209.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRXVydzlsZGRHQ0VSeEdleEVXMFhBN0g5WG5HVjNFV0pJaHZnMEVsZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly93d3cucmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644123132),
('31UTfpBBrES895o0u00rI8l0RsXTh6rc8z2pEl03', NULL, '82.145.215.206', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSmxETFBNZFRHazc0bE9iUmRGbnJTNGJzTTBKV29oVVc3V05hYzFaWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1644119584),
('4pvNbGxLiKF7pu84ssbr4VqSt6BEEWhjQQnFbglE', NULL, '173.252.111.116', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2pTbDE2c0hiQWNwSzJRcnlhS0wyZjlxQjI5SkdLVTJRd05zaUk3YSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1644115611),
('5YS38osaFdwoJnEA6ZrKtc7bN92ztm2aaLtncu9b', NULL, '173.252.111.116', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1BsSzlVYk43SlV6QlU2anNieFdwTGFqb1gzVTlXbk0xejE4dUd0USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644115610),
('7dSfAtIP69a2oibWA36IBQdPtsFD6Bgcx7kHSusT', NULL, '115.178.245.245', 'Mozilla/5.0 (Linux; U; Android 7.1.1; in-id; CPH1729 Build/N6F26Q) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.116 Mobile Safari/537.36 HeyTapBrowser/15.8.2.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibHN3QWk5Q1UxU3RDWVFrRXBqZlA4UUFoSk1HSGVINzhtcnNldmpqUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644128706),
('7gDruPaACMqBWlViiAcbMUMHxgrjIsfTBlU2IBov', NULL, '182.1.89.255', 'Mozilla/5.0 (Linux; Android 9; Redmi Note 5 Build/PKQ1.180904.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/97.0.4692.98 Mobile Safari/537.36 Instagram 219.0.0.12.117 Android (28/9; 440dpi; 1080x2030; Xiaomi/xiaomi; Redmi Note 5; whyred; qcom; in_ID; 346138354)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieEdlM2Rlc0NpbEhPeTJPcDNaMkdBSzd3dmhiZ1c3cG1pSjV3d0hWRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644158220),
('8yNVzQq04iTQniyfFaGXnrrtFEctl5kSyuU6RQlE', NULL, '180.247.177.162', 'Mozilla/5.0 (Linux; Android 10; vivo 1935 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.105 Mobile Safari/537.36 Instagram 183.0.0.40.116 Android (29/10; 480dpi; 1080x2115; vivo; vivo 1935; 1935; qcom; in_ID; 284459224)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR25ibW9yb3p5TEo5cjh5SnVPN0tHUGJSNlRzaDU0QTliaGgxd2pUNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644124711),
('ADcRwmAtjL1xlGDtIdlDwwtwscZRlWB1oP12UwKD', NULL, '173.252.111.11', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnREVmNXcUcwOGZPREt2YktIdkpJWG9wV29xVnlDREZockFrSkFOYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644115610),
('AulNpKwQ9w8iwCpya4eJTPOF8CQTmPGD6YvWH04Y', NULL, '207.46.13.77', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaXJVMUpoVkdIYkZXaWw3OXNtOE1RUmFPQzNVVmJ3QUkxTzk2MGdhRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9yYXNldGFiYXNlZC5jb20vaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1644101099),
('AVMq67aoWiYRghDenTTTObSJboUKmznxgK4YbdC8', NULL, '36.77.37.65', 'Mozilla/5.0 (Linux; Android 11; M2102J20SG Build/RKQ1.200826.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36 Instagram 220.0.0.16.115 Android (30/11; 440dpi; 1080x2265; Xiaomi/POCO; M2102J20SG; vayu; qcom; in_ID; 348183242)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieHVoeDNGdUl0WkV4U2RTMFhSaFRlZ0cyd2YzNUVxTTVVWVM5QWx0ViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644121780),
('be8z1plO7QvVStMJu89BmBegkGdIdq8DPFn6WtUB', NULL, '36.81.180.69', 'Mozilla/5.0 (Linux; Android 9; ASUS_X00QD Build/PPR1.180610.009; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36 Instagram 220.0.0.16.115 Android (28/9; 408dpi; 1080x2049; asus; ASUS_X00QD; ASUS_X00QD; qcom; in_ID; 348183242)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVQ3eUdaQnhwUXdqQnRiNUNvaW9wT0RjeWtOTXBGenFzbzJkZEZmYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644147232),
('bKpcV29rHWhtMCsGtrZr7zikTG8P6Akh6gDIP2S6', NULL, '77.72.4.66', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidXdzeUYydzB0QzZBengzOWVVTmtwZDN1dWJmamJsaktiNlFiU3hnOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly9yYXNldGFiYXNlZC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644066347),
('BOYjM7pvEDPGtmFTzefkt9XPKiLs9EUM1h6v6R2U', NULL, '180.252.174.71', 'Mozilla/5.0 (Linux; Android 9; vivo 1902 Build/PPR1.180610.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/88.0.4324.141 Mobile Safari/537.36 Instagram 216.0.0.20.137 Android (28/9; 320dpi; 720x1407; vivo; vivo 1902; 1902; mt6765; in_ID; 338723481)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0lxT09acU9pSFdaQW9NRjhvZWxaMlJ6RXpNTXFhRnBhTm9KV0JtdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644205727),
('c51uxjnusgeXCI106NnLMfXlo37LNeW7KEkmIo5U', NULL, '110.136.84.118', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.81 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSE11ZWFiMFp6czgyZmVFRjU5cFhlb01zQnZDOVpNanJ3NDJna1lxdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9yYXNldGFiYXNlZC5jb20vaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1644157426),
('csEn0dQmZadaQsf8FxlnpltBf8eY8n5fCTjgPST2', NULL, '182.1.79.115', 'Mozilla/5.0 (Linux; Android 11; CPH2235 Build/RKQ1.201217.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/97.0.4692.98 Mobile Safari/537.36 Instagram 220.0.0.16.115 Android (30/11; 480dpi; 1080x2153; OPPO; CPH2235; OP4F25L1; qcom; en_US; 348183242)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibmVwTjlHMXF0V3NUZUVkNkpidW5vaTBKb3JJSzNNMEhySG9MREVjUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644119746),
('D27wNxYAF5YU7U5uS7URsdURgjRz3e2dCjo9OlpI', NULL, '173.252.111.11', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHFLR0lQc21ySEVTUkt1NnNRV25KWE41UDVxU1htcTVKcnB1WERoSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1644115609),
('DZPEba63LAbL6GYox2Ie3SMyLOg0rB5Mhwyl0Fs4', NULL, '207.46.13.77', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVZPRGlaUjZEMTdCMW9wbTdVV0s0QXRhczF3b1FZN2l1aVZiSm5oYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9yYXNldGFiYXNlZC5jb20vaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1644176059),
('Eg0dEt2uDLpl1UCibsFdDGpGRwlpz3neJRkfgx9h', NULL, '139.228.227.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0JNN2x2YVhoelFVQnlzWEIyOWNodkk3azlHVExNSUIzdTZjNlRmViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644203607),
('ElSF92iJ8ZiTaAS1YProFxnqG3bc35IU9RiyCWMy', NULL, '162.240.20.73', 'python-requests/2.6.0 CPython/2.7.5 Linux/3.10.0-1160.53.1.el7.x86_64', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1QzRWVhNFA0Y3V5NE9KVUlvdGpJTlBGS0NVc2FSN05CMmhxVVNXWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9yYXNldGFiYXNlZC5jb20vaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1644090720),
('Er8bne5Qu5AYyr9kmhN8rBrXvbcvUK3Cu19KnC9n', NULL, '36.85.63.44', 'Mozilla/5.0 (Linux; Android 11; Redmi Note 7 Build/RQ1A.210105.003; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/87.0.4280.101 Mobile Safari/537.36 Instagram 220.0.0.16.115 Android (30/11; 420dpi; 1080x2134; Xiaomi; Redmi Note 7; lavender; qcom; in_ID; 348183237)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSFowUXRhcHZ2WXhOYnkzUzg3dmY0a1BNMXltV3BMYmkwSVhNeGt0eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644190548),
('EzpVCyAC1qCLhAnYdJmXfkPCDf8SBMefHgQ7iVrm', NULL, '203.190.246.208', 'Mozilla/5.0 (Linux; Android 11; vivo 1918 Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36 Instagram 220.0.0.16.115 Android (30/11; 480dpi; 1080x2118; vivo; vivo 1918; 1951; qcom; in_ID; 348183242)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOVA1NFdaRHJJOG53MjUwY0VUdWRpNlNocktoQXJKazJuMEt5aWdVQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644148187),
('FEX2fjyPvO4oAgjYs5pJVQjDT9htCzQ9I4mratVD', NULL, '180.243.4.131', 'Mozilla/5.0 (Linux; Android 10; vivo 1935 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/97.0.4692.98 Mobile Safari/537.36 Instagram 220.0.0.16.115 Android (29/10; 480dpi; 1080x2115; vivo; vivo 1935; 1935; qcom; in_ID; 348183242)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieXJZTG1rbzVSQmhKR0tPeTZ0NzlFdFJNamZua2JTVEtJRjhVNHE1aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644062378),
('FVaer8Nl62BchRUcEbkfLF3FWWmFcWjSlwNerwHq', NULL, '112.215.65.11', 'Mozilla/5.0 (Linux; Android 11; SM-A115F Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36 Instagram 220.0.0.16.115 Android (30/11; 280dpi; 720x1411; samsung; SM-A115F; a11q; qcom; in_ID; 348183233)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1dPbFhwdnp6MGFSV1ZLYXBxbzh2ZVJwRHIyaUN3YXZGbjJyM0J4aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644156536),
('FwIHFG6kDiR7agyw6xDhZmxfKjlstNdttd1prRak', NULL, '77.72.4.66', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3VTOTJ3cTczdGtTcGQyNFVBOGZFbFhtZU5vYThtOE1yZWZTM2xBNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9yYXNldGFiYXNlZC5jb20vaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1644066348),
('g9JifspHSliW19616uZP3lXgLApWQzs6S5aWvCk0', NULL, '114.125.111.25', 'Mozilla/5.0 (Linux; Android 11; M2012K11AG Build/RKQ1.200826.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/97.0.4692.98 Mobile Safari/537.36 Instagram 220.0.0.16.115 Android (30/11; 440dpi; 1080x2276; Xiaomi/POCO; M2012K11AG; alioth; qcom; in_ID; 348183242)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS3BCMGR4NjJlUG13SFh5WWNlMkdDVDlheXhXTzNBMUI3NzFJOG9tTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644141341),
('gU6pMSQdWGbZUVDyK5x5FhgP22nazmQjqVXOMmSI', NULL, '114.79.22.4', 'Mozilla/5.0 (Linux; Android 11; vivo 1904 Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.45 Mobile Safari/537.36 Instagram 214.1.0.29.120 Android (30/11; 320dpi; 720x1490; vivo; vivo 1904; 1904; mt6762; in_ID; 333717270)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWhZYTZCeHJjNElrc0RNSzRhNG9CMG5NQVR4V1RobUFsZEE0S1JDNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644150632),
('GWskiF2Fh97G4AXsIvS3910cDNPdnQpAWM0D14pp', NULL, '114.119.150.149', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.332.118 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHU5S0hJckNQY0VySjFrOWVqQm1RdjhEd1Z0OEFPV01PeHU0OFlDVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644142224),
('gZMEWNMvCoyU0mFwVHC10TbbuK7AnOoHQQ1ZNsNe', NULL, '182.1.93.108', 'Mozilla/5.0 (Linux; Android 11; RMX1921 Build/RKQ1.201217.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/97.0.4692.98 Mobile Safari/537.36 Instagram 220.0.0.16.115 Android (30/11; 480dpi; 1080x2132; realme; RMX1921; RMX1921; qcom; in_ID; 348183242)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib1YxRERsVm42Zjg5NUJnVUcya2oxSDRLcXByQmJCb1ZXZG5NY095dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644194541),
('hAarmS4JCX0ky8sFp15Yrn43lTtDddfgdIBiQ2C1', NULL, '207.46.13.77', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGhMWmVjTWVsMUZmQ2VXVm90aXQ3S3NPYkt6OEdyY2tzb0xGVkNkdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9yYXNldGFiYXNlZC5jb20vaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1644087108),
('ISdanIhmO6qSQvOz7mw3eapgcH1xse4SKMDvIfLF', NULL, '140.213.126.17', 'Mozilla/5.0 (Linux; Android 9; SM-A530F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.117 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTkybm50T3YyZ1BEcEc5Ykh2dU1VRG9hWTh3cEIxQjRNeG1sSVg2dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644140190),
('jADMLv0tjgCOXctXrOxX9TplmP1rLY9nlZMf0L1L', NULL, '175.158.53.62', 'Mozilla/5.0 (Linux; Android 10; Redmi 8 Build/QKQ1.191014.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36 Instagram 220.0.0.16.115 Android (29/10; 320dpi; 720x1369; Xiaomi; Redmi 8; olive; qcom; en_GB; 348183241)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmxwRUs1MUVGMG93RU5rUFBST0t1YVR5Z2JkSERKMTNIeGQ0UUs4UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644156681),
('KcsrXSZh2m4wloqMoicVbPoWSwOww5sJuvPMWkYV', NULL, '112.215.173.167', 'Mozilla/5.0 (Linux; Android 11; vivo 1901 Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/97.0.4692.98 Mobile Safari/537.36 Instagram 220.0.0.16.115 Android (30/11; 320dpi; 720x1406; vivo; vivo 1901; 1901; mt6762; in_ID; 348183241)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNWNlNDFzMjdONUFJRUZCNU5QcVhUc2ZpalRqWkNkQTJpMlpSdDJ3bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644143255),
('KehUVrKOqjv5ibvP0JjVhUJYRMuKGJ9o7t5NJU2W', NULL, '120.188.3.85', 'Mozilla/5.0 (Linux; Android 11; RMX3085 Build/RP1A.200720.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.45 Mobile Safari/537.36 Instagram 215.0.0.27.359 Android (30/11; 480dpi; 1080x2158; realme; RMX3085; RMX3085L1; mt6785; in_ID; 337202359)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRFY2WVl5UWtDdGxFMHNyMjUwN3c4bkRvMERxMHppZ2M2WHZBSzRqeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644145002),
('kxvlbSJ4u2iQ7TeU4FiYxxnwNd5l98eD2gA3JdmY', NULL, '51.15.209.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0lQVDJ2ZFU0MmN1cWxHa29OTG96RTVpeGZwbU41QzNZVzYzZG1WTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly93d3cucmFzZXRhYmFzZWQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1644123130),
('LvUWvbb6KWqxsxRMIVOKsGT2hfThNGKpZ1S616OR', NULL, '110.137.194.106', 'Mozilla/5.0 (Linux; Android 11; vivo 1901 Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36 Instagram 220.0.0.16.115 Android (30/11; 320dpi; 720x1406; vivo; vivo 1901; 1901; mt6762; in_ID; 348183241)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVjA1UG1tZGp2RjU1MEtkYlU2emVIVjI3QzhxU00xdHlyeEN0SGgwZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644153647),
('N2Nn9VcQTRcu9hRpQIz21qbgcRpHC6S7Zo3NnqtH', NULL, '100.27.27.172', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoid0EzUXlFc0lxYTI5bGZoMHNnUlpwU0VWdGtJMUY5ZjVhbGx1SzAxUiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1644081485),
('NTAtc0JlZeX4bMnRbzj39ZCuFXO6S7lXKtNxYHIf', NULL, '103.208.206.173', 'Mozilla/5.0 (Linux; Android 11; vivo 1904 Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/97.0.4692.98 Mobile Safari/537.36 Instagram 220.0.0.16.115 Android (30/11; 320dpi; 720x1406; vivo; vivo 1904; 1904; mt6762; in_ID; 348183241)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieXBia2lnbkJRRW42bktYVEh5OWYxWElKYTBDd3FYNE9oVGxjOVNyMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644160367),
('NTgp1jy5aSxsb158nY3Sja12LqSNDLORasUWf9Mj', NULL, '182.1.78.156', 'Mozilla/5.0 (Linux; Android 11; RMX1921 Build/RKQ1.201217.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/97.0.4692.98 Mobile Safari/537.36 Instagram 220.0.0.16.115 Android (30/11; 480dpi; 1080x2132; realme; RMX1921; RMX1921; qcom; in_ID; 348183242)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWYxbllXbFlibVVHWFdCT0g3eVZtRGxZWUlFVmlydVlLbmRGYlVvZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644162872),
('nYZnsvIYTEGA8B1Q1xQNnusuX80KJGgcigTqKWgq', NULL, '36.90.212.231', 'Mozilla/5.0 (Linux; Android 11; SM-A217F Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/97.0.4692.98 Mobile Safari/537.36 Instagram 220.0.0.16.115 Android (30/11; 280dpi; 720x1448; samsung; SM-A217F; a21s; exynos850; in_ID; 348183241)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiandQNlZRcVVnOFJ3Z0kyS3JUeUpBaVB6RkxKQmNOZ0t2NUpjQ3pRMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644138922),
('PA4iIJiVM4N1IqfnYHlKs3vTN2Hq3K4DHxtZhTip', NULL, '207.46.13.77', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicFJwU3pTelVQSFFmWEh1aTNNeXRkc243bTVseDN5RzRuSjlSVXZGaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9yYXNldGFiYXNlZC5jb20vaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1644123070),
('PDcfsWC4N9w4WVwhO4wqGJh2GSM3qUgrxvXRGdQi', NULL, '180.243.4.131', 'Mozilla/5.0 (Linux; Android 10; vivo 1935 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/97.0.4692.98 Mobile Safari/537.36 Instagram 220.0.0.16.115 Android (29/10; 480dpi; 1080x2115; vivo; vivo 1935; 1935; qcom; in_ID; 348183242)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZVR4RnVZYmNHdXRnOVh6eUhEMERPQ1RyZGRJV0toTXk2YnVQNkZUUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644125860),
('Q10vbrtcWwZhxNFzxHIqkVZvfhnk462r60cInhHP', NULL, '180.243.4.131', 'Mozilla/5.0 (Linux; Android 10; vivo 1935 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/97.0.4692.98 Mobile Safari/537.36 Instagram 220.0.0.16.115 Android (29/10; 480dpi; 1080x2115; vivo; vivo 1935; 1935; qcom; in_ID; 348183242)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVjVGTHJBYTBvUDlOUFdnZm10U1VOQWI5aHl6cVA0M0lnQUg3QlozUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644145406),
('Q3lGRNRzshaS8irfrauM2s9gaM97jd4GTneavfJ6', NULL, '100.27.27.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSVFmZ09CTnJvdW9sZDNVU1Rpak9NMlVwRm1MbzBjUWFQTjVtNkI5VyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1644081485),
('Qil18Y2iF2tQ4QJBHemgBpVjXV2NPFTB6VgGwAnj', NULL, '114.79.1.235', 'Mozilla/5.0 (Linux; Android 9; CPH2015 Build/PPR1.180610.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/93.0.4577.82 Mobile Safari/537.36 Instagram 211.0.0.33.117 Android (28/9; 320dpi; 720x1456; OPPO; CPH2015; OP4C7D; mt6765; in_ID; 327976424)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDVDcDY3ZHJ0dXBaaWJqcWNRREtPYmt6RVFJT1l0ZTlZSUxlZFlWMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644189451),
('rcJIrPfo0vZI7PEwhedpWxgZ0sm7gGHmvCyHPZhO', NULL, '139.195.184.230', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Instagram 220.0.0.8.117 (iPhone10,6; iOS 15_1; id_ID; id-ID; scale=3.00; 1125x2436; 347566818)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiekNNNkFWc2l2VzZaRHFEVlJ6OWVKempPOHU4TWRIcWo4WVozbmo0ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644169087),
('s6G5Y6DdtZlxAtiS5NLX7TUonjYjBrglbVuMr2wt', NULL, '180.249.187.20', 'Mozilla/5.0 (Linux; Android 9; CPH2015 Build/PPR1.180610.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36 Instagram 220.0.0.16.115 Android (28/9; 320dpi; 720x1456; OPPO; CPH2015; OP4C7D; mt6765; in_ID; 348183241)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic0R2cjM2akFhSG1ic1k0ZmF4Q29KV0hIOUNEb1d2N1djYzl0WHBIVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644190036),
('s8rOpjbeRRG0J3HnsBMhHXiHSPTy8Q5hMb7QaoJc', NULL, '114.125.117.76', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Instagram 218.0.0.6.105 (iPhone11,8; iOS 15_2; id_ID; id-ID; scale=2.00; 828x1792; 344801412)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYzBZNkM4R3pFb3JvaUE5QmJpR2plMWVWTUV1a21OeWE0VVNnV0U2dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644156378),
('SK7a7XwAHf1pepCaW85BoQRoQXWYFfEINwUnQ9og', NULL, '182.3.36.118', 'Mozilla/5.0 (Linux; Android 10; M2010J19SG Build/QKQ1.200830.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/97.0.4692.98 Mobile Safari/537.36 Instagram 219.0.0.12.117 Android (29/10; 440dpi; 1080x2132; Xiaomi/Redmi; M2010J19SG; lime; qcom; in_ID; 346138354)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRThUOVpUMVhxejRDN3h1d0hpbDhoUHBvZHkzbFB4S0hOV1dCY2hyTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644134415),
('Sy0CK4Tof10Bgx3IG9q5HuadPye74tLfvvTRdd1v', NULL, '207.46.13.77', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3c2Qk5TNmRmNDhGR0JyQmtxbE01dUVSZ0Y4QjRmVjNMOXVFbkZZaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly9yYXNldGFiYXNlZC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644066099),
('sygWjRvpHWczgeGnVuf0KEPwvpoRikSWb4NdjJEW', NULL, '114.122.104.71', 'Mozilla/5.0 (Linux; Android 11; vivo 1901 Build/RP1A.200720.012; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/83.0.4103.106 Mobile Safari/537.36 Instagram 216.1.0.21.137 Android (30/11; 320dpi; 720x1406; vivo; vivo 1901; 1901; mt6762; in_ID; 339335856)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXFVOTJRcE5JVWJ6NnZ4NDE1bHpFOHp5bjhuRUQzeTJZOG9xUnBubCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644106538),
('TA09BmlmxqVYaatvbLOzZbECQDQ62y1lXEbVez0o', NULL, '116.206.15.16', 'Mozilla/5.0 (Linux; Android 11; CPH1933 Build/RKQ1.200903.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36 Instagram 220.0.0.16.115 Android (30/11; 320dpi; 720x1456; OPPO; CPH1933; OP4B79L1; qcom; en_US; 348183241)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVjhPVG8yYWpnRWlvV3RpdVdXYWtMRVNCT0JUMUtTb3VwM3FPbjBwRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644064886),
('tcrck1Pd5BKQvPJrj8P0dKZ2xeikJX7UyIPAyPEG', NULL, '114.119.150.149', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.1223.66 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRnFkbEgyRUsyQlJCbklTVXM4b0I4UVVNbDNRQkhnRDBjZmFGZ0pldCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1644140724),
('tqpl297AblTeJMEvHqdjC2XE7rNxwpAkEu2NryzX', NULL, '173.252.111.116', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSmJnbEJ6VHl1R3h3aGhHWFZwTE1yR2R1ZlQzSG1taVpVZkFiVE5iayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjM6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1644115609),
('v6GrcNyR5oihMYBT2SSyWLq9pCXrfATPDtX1W7ZL', NULL, '36.70.112.184', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Instagram 220.0.0.8.117 (iPhone7,2; iOS 12_5_1; id_ID; id-ID; scale=2.00; 750x1334; 347566818)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSWFBUVdUYVc3ckVGM2FpN3BldUY1UjFBUEtRNDg1YzNjcG5zRHhpYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644190245),
('V8Xnq8YlHGJ6Glv02JwXtTC1yb5rWsHmCwUOh9uN', NULL, '180.253.167.98', 'Mozilla/5.0 (Linux; Android 10; LM-G820N Build/QKQ1.190929.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36 Instagram 220.0.0.16.115 Android (29/10; 280dpi; 720x1485; LGE/lge; LM-G820N; alphaplus; alphaplus; en_US; 348183244)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1hmZXhPdTRHRE55VWJGZzBnb0xQbDdNdzBTalhtc1FHSlJUU2s4eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644168538),
('VIbYiSzB6lPFjQzcpz06vOoKZGqqTiM7PiEfB4p2', NULL, '173.252.111.116', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicTdjOXg4VWF1alZHSW5EcTYxUWVpMFk0ZWh1U1JHbUVvNjdhNW0xaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644115612),
('VnmxbFqZaRwKxD5bK5mBgG39ed14yoYawu17BLy6', NULL, '180.253.167.98', 'Mozilla/5.0 (Linux; Android 10; LM-G820N Build/QKQ1.190929.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36 Instagram 220.0.0.16.115 Android (29/10; 280dpi; 720x1485; LGE/lge; LM-G820N; alphaplus; alphaplus; en_US; 348183244)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQmhXSDZlQUNsRHhxcWxscU94M0JtbktKbDRIMXppZzJ4VzZYbnJnayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644152133),
('vUq7pZ1Y2tjYqcsNtJoZpvCS4LzHdqV15YSZvKYZ', NULL, '165.22.41.155', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0JqYmlMdE5EdmRucXFNMGw2dHhINUM4MVZ6eWpPeXI1SHZ2cEFJSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vd3d3LnJhc2V0YWJhc2VkLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1644103885),
('ynCFr8dqOcE9U6iU3VlUT0i1uSudP3JGZxWmBUB7', NULL, '188.40.113.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)\' Chrome/59.0.3071.115 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU296eGhONUdZTHlRcmc0UEpzWnhJRVFMMkE3ekw0Sm45dnExRm5uRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9yYXNldGFiYXNlZC5jb20vaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1644080459),
('Ys3UCYo4Ie1BjCkJDcBoCDkaBAitePT1TuBXejBk', NULL, '114.122.68.175', 'Mozilla/5.0 (Linux; Android 10; RMX2030 Build/QKQ1.200209.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36 Instagram 220.0.0.16.115 Android (29/10; 320dpi; 720x1456; realme; RMX2030; RMX2030; qcom; in_ID; 348183241)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXRRYUswVjF5c012QWJRNnFLWHE0WWtFVkZOdEtnYUlyOEhFYTMycCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHBzOi8vcmFzZXRhYmFzZWQuY29tL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1644149124);

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Muqit', 'muqitryu6@gmail.com', NULL, '$2y$10$jkE3SIG/zkawTl1k9vygxOuKwdNlBNUssVsMkzKoOESkSeLDWy3qO', NULL, NULL, NULL, NULL, NULL, '2022-01-12 02:29:32', '2022-01-12 02:29:32'),
(2, 'Raseta Admin', 'rasetabasedstore@gmail.com', NULL, '$2y$10$xlpmUUxNBtcCTcrO6eUngOStZ1mktkf6m6n1oOcYXCSVlioZ5vBHC', NULL, NULL, 'LxDlbY93psZBxEXi4BGuU4URE24MLSX64bTdBBqdNa2DoePVweObT24zURln', NULL, NULL, '2022-01-12 06:25:18', '2022-01-25 01:42:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_category` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
