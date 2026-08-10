-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2026 at 04:37 AM
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
-- Database: `gdr`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_budgets`
--

CREATE TABLE `category_budgets` (
  `category` varchar(50) NOT NULL,
  `monthly_limit` decimal(12,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deleted_expenses`
--

CREATE TABLE `deleted_expenses` (
  `id` int(11) NOT NULL,
  `original_id` int(11) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `amount` decimal(12,2) DEFAULT NULL,
  `expense_date` date DEFAULT NULL,
  `deleted_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT 0.00,
  `expense_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT 0.00,
  `cost` decimal(10,2) DEFAULT 0.00,
  `stock` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expiry_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT 1,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `sale_date` date DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_backups`
--

CREATE TABLE `system_backups` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `tables_included` varchar(255) DEFAULT NULL,
  `total_rows` int(11) DEFAULT 0,
  `backup_data` longtext DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_backups`
--

INSERT INTO `system_backups` (`id`, `label`, `tables_included`, `total_rows`, `backup_data`, `created_at`) VALUES
(7, 'Reset on Jul 28, 2026 11:55pm — 📦 Products, 🧾 Sales Records, 💸 Expenses & Deleted History, ⚙️ Category Budget Settings', 'products,sales,expenses,deleted_expenses,category_budgets', 153, '{\"products\":[{\"id\":\"5\",\"name\":\"Syntium S000 SM 0W40 1L\",\"category\":\"Passenger\'s Vehicle Lubricants\",\"price\":\"773.00\",\"cost\":\"600.00\",\"stock\":\"16\",\"created_at\":\"2026-03-26 13:56:35\",\"expiry_date\":null},{\"id\":\"6\",\"name\":\"Syntium 3000 SM 5W\\/40 1L\",\"category\":\"Passenger\'s Vehicle Lubricants\",\"price\":\"560.00\",\"cost\":\"450.00\",\"stock\":\"4\",\"created_at\":\"2026-03-26 13:57:21\",\"expiry_date\":null},{\"id\":\"7\",\"name\":\"Syntium 1000 SM 15W50 1L\",\"category\":\"Passenger\'s Vehicle Lubricants\",\"price\":\"480.00\",\"cost\":\"400.00\",\"stock\":\"13\",\"created_at\":\"2026-03-26 14:00:03\",\"expiry_date\":null},{\"id\":\"8\",\"name\":\"Syntium 800 SM 15W50 4L\",\"category\":\"Passenger\'s Vehicle Lubricants\",\"price\":\"1232.00\",\"cost\":\"1100.00\",\"stock\":\"1\",\"created_at\":\"2026-03-26 14:20:15\",\"expiry_date\":null},{\"id\":\"9\",\"name\":\"Syntium 800 SM 15W\\/50 1L\",\"category\":\"Passenger\'s Vehicle Lubricants\",\"price\":\"311.00\",\"cost\":\"250.00\",\"stock\":\"16\",\"created_at\":\"2026-03-26 14:21:39\",\"expiry_date\":null},{\"id\":\"10\",\"name\":\"Mach 5 SM 20W50 4L\",\"category\":\"Passenger\'s Vehicle Lubricants\",\"price\":\"908.00\",\"cost\":\"850.00\",\"stock\":\"4\",\"created_at\":\"2026-03-26 15:17:44\",\"expiry_date\":null},{\"id\":\"11\",\"name\":\"Mach 5 SM 20W50 1L\",\"category\":\"Passenger\'s Vehicle Lubricants\",\"price\":\"232.00\",\"cost\":\"200.00\",\"stock\":\"16\",\"created_at\":\"2026-03-26 15:18:08\",\"expiry_date\":null},{\"id\":\"12\",\"name\":\"Mach 5 SM 20W50 209L\",\"category\":\"Passenger\'s Vehicle Lubricants\",\"price\":\"37240.00\",\"cost\":\"35000.00\",\"stock\":\"0\",\"created_at\":\"2026-03-26 15:20:11\",\"expiry_date\":null},{\"id\":\"13\",\"name\":\"NGV 15W-40 4L\",\"category\":\"Passenger\'s Vehicle Lubricants\",\"price\":\"968.00\",\"cost\":\"900.00\",\"stock\":\"4\",\"created_at\":\"2026-03-26 15:20:45\",\"expiry_date\":null},{\"id\":\"14\",\"name\":\"GEO SAE 15W-40 209L\",\"category\":\"Passenger\'s Vehicle Lubricants\",\"price\":\"31240.00\",\"cost\":\"30000.00\",\"stock\":\"0\",\"created_at\":\"2026-03-26 15:22:14\",\"expiry_date\":null},{\"id\":\"15\",\"name\":\"URANIA Optimo 10W-40 18L\",\"category\":\"Commercial Vehicle Lubricants\",\"price\":\"5630.00\",\"cost\":\"5000.00\",\"stock\":\"1\",\"created_at\":\"2026-03-26 15:24:30\",\"expiry_date\":null},{\"id\":\"16\",\"name\":\"Urania Supremo CJ-4 15W40v 1L\",\"category\":\"Commercial Vehicle Lubricants\",\"price\":\"0.00\",\"cost\":\"0.00\",\"stock\":\"0\",\"created_at\":\"2026-03-26 15:46:20\",\"expiry_date\":null},{\"id\":\"17\",\"name\":\"Urania Supremo CJ-4 15W40v 1L\",\"category\":\"Commercial Vehicle Lubricants\",\"price\":\"206.00\",\"cost\":\"200.00\",\"stock\":\"16\",\"created_at\":\"2026-03-26 15:46:42\",\"expiry_date\":null},{\"id\":\"18\",\"name\":\"Urania Supremo CJ-4 15W40 5L\",\"category\":\"Commercial Vehicle Lubricants\",\"price\":\"1013.00\",\"cost\":\"1000.00\",\"stock\":\"3\",\"created_at\":\"2026-03-26 15:47:13\",\"expiry_date\":null},{\"id\":\"19\",\"name\":\"Urania Supremo CI-4 15W40 1L\",\"category\":\"Commercial Vehicle Lubricants\",\"price\":\"187.00\",\"cost\":\"180.00\",\"stock\":\"16\",\"created_at\":\"2026-03-26 15:47:37\",\"expiry_date\":null},{\"id\":\"20\",\"name\":\"Urania Supremo CI-4 15W40 5L\",\"category\":\"Commercial Vehicle Lubricants\",\"price\":\"921.00\",\"cost\":\"900.00\",\"stock\":\"4\",\"created_at\":\"2026-03-26 15:47:57\",\"expiry_date\":null},{\"id\":\"21\",\"name\":\"Urania Supremo CI-4 15W40 18L\",\"category\":\"Commercial Vehicle Lubricants\",\"price\":\"2516.00\",\"cost\":\"2500.00\",\"stock\":\"1\",\"created_at\":\"2026-03-26 15:48:21\",\"expiry_date\":null},{\"id\":\"22\",\"name\":\"Urania Supremo CI-4 15W40 209L\",\"category\":\"Commercial Vehicle Lubricants\",\"price\":\"26992.00\",\"cost\":\"26900.00\",\"stock\":\"0\",\"created_at\":\"2026-03-26 15:49:04\",\"expiry_date\":null},{\"id\":\"23\",\"name\":\"Urania Turbo CF-4 20W50 1L\",\"category\":\"Commercial Vehicle Lubricants\",\"price\":\"24628.00\",\"cost\":\"24000.00\",\"stock\":\"16\",\"created_at\":\"2026-03-26 15:49:38\",\"expiry_date\":null},{\"id\":\"24\",\"name\":\"URANIA CF 40 1L\",\"category\":\"Commercial Vehicle Lubricants\",\"price\":\"155.00\",\"cost\":\"150.00\",\"stock\":\"16\",\"created_at\":\"2026-03-26 15:54:45\",\"expiry_date\":null},{\"id\":\"25\",\"name\":\"URANIA CF 40 18L\",\"category\":\"Commercial Vehicle Lubricants\",\"price\":\"2337.00\",\"cost\":\"1300.00\",\"stock\":\"1\",\"created_at\":\"2026-03-26 15:55:12\",\"expiry_date\":null},{\"id\":\"26\",\"name\":\"URANIA CF 40 209L\",\"category\":\"Commercial Vehicle Lubricants\",\"price\":\"24820.00\",\"cost\":\"24500.00\",\"stock\":\"1\",\"created_at\":\"2026-03-26 15:55:36\",\"expiry_date\":null},{\"id\":\"27\",\"name\":\"URANIA CF 30 209L\",\"category\":\"Commercial Vehicle Lubricants\",\"price\":\"28224.00\",\"cost\":\"28000.00\",\"stock\":\"1\",\"created_at\":\"2026-03-26 15:55:55\",\"expiry_date\":null},{\"id\":\"28\",\"name\":\"HIDRAULIK EP 68 DRUM 209L\",\"category\":\"Industrial Oils\",\"price\":\"24326.00\",\"cost\":\"24000.00\",\"stock\":\"0\",\"created_at\":\"2026-03-26 15:58:13\",\"expiry_date\":null},{\"id\":\"29\",\"name\":\"HIDRAULIK EP 68 PAIL 18L\",\"category\":\"Industrial Oils\",\"price\":\"2321.00\",\"cost\":\"2300.00\",\"stock\":\"1\",\"created_at\":\"2026-03-26 15:58:43\",\"expiry_date\":null},{\"id\":\"30\",\"name\":\"GL-4  90 PAIL 18L\",\"category\":\"Automotive Gear Oils\",\"price\":\"2913.00\",\"cost\":\"2900.00\",\"stock\":\"23\",\"created_at\":\"2026-03-26 15:59:19\",\"expiry_date\":\"2029-12-10\"},{\"id\":\"31\",\"name\":\"GL-4  140 DRUM 209L\",\"category\":\"Automotive Gear Oils\",\"price\":\"35750.00\",\"cost\":\"35700.00\",\"stock\":\"0\",\"created_at\":\"2026-03-26 15:59:43\",\"expiry_date\":null},{\"id\":\"32\",\"name\":\"GL-5 90 1L\",\"category\":\"Automotive Gear Oils\",\"price\":\"226.00\",\"cost\":\"220.00\",\"stock\":\"16\",\"created_at\":\"2026-03-26 16:00:03\",\"expiry_date\":null},{\"id\":\"33\",\"name\":\"GL-5 90 4L\",\"category\":\"Automotive Gear Oils\",\"price\":\"881.00\",\"cost\":\"750.00\",\"stock\":\"4\",\"created_at\":\"2026-03-26 16:00:22\",\"expiry_date\":null},{\"id\":\"34\",\"name\":\"GL-5 90 PAIL 18L\",\"category\":\"Automotive Gear Oils\",\"price\":\"3087.00\",\"cost\":\"3050.00\",\"stock\":\"1\",\"created_at\":\"2026-03-26 16:00:58\",\"expiry_date\":null},{\"id\":\"35\",\"name\":\"GL-5 90 DRUM 209L\",\"category\":\"Automotive Gear Oils\",\"price\":\"33780.00\",\"cost\":\"33700.00\",\"stock\":\"0\",\"created_at\":\"2026-03-26 16:02:01\",\"expiry_date\":null},{\"id\":\"36\",\"name\":\"GL-5 140 PAIL 18L\",\"category\":\"Automotive Gear Oils\",\"price\":\"3558.00\",\"cost\":\"3500.00\",\"stock\":\"1\",\"created_at\":\"2026-03-26 16:02:34\",\"expiry_date\":null},{\"id\":\"37\",\"name\":\"GL-5 140 4L\",\"category\":\"Automotive Gear Oils\",\"price\":\"861.00\",\"cost\":\"850.00\",\"stock\":\"4\",\"created_at\":\"2026-03-26 16:02:57\",\"expiry_date\":null},{\"id\":\"38\",\"name\":\"GL-5 140 209L\",\"category\":\"Automotive Gear Oils\",\"price\":\"37230.00\",\"cost\":\"37200.00\",\"stock\":\"0\",\"created_at\":\"2026-03-26 16:03:15\",\"expiry_date\":null},{\"id\":\"39\",\"name\":\"GL-5 85W-140 18L\",\"category\":\"Automotive Gear Oils\",\"price\":\"3544.00\",\"cost\":\"3500.00\",\"stock\":\"1\",\"created_at\":\"2026-03-26 16:03:34\",\"expiry_date\":null},{\"id\":\"40\",\"name\":\"BRAKE FLUID DOT3 500ML\",\"category\":\"Special Products & Greases\",\"price\":\"146.00\",\"cost\":\"140.00\",\"stock\":\"21\",\"created_at\":\"2026-03-26 16:04:33\",\"expiry_date\":null},{\"id\":\"41\",\"name\":\"LL RADIATOR COLLANT 500ML\",\"category\":\"Special Products & Greases\",\"price\":\"135.00\",\"cost\":\"130.00\",\"stock\":\"30\",\"created_at\":\"2026-03-26 16:05:02\",\"expiry_date\":null},{\"id\":\"42\",\"name\":\"LL RADIATOR COLLANT 209L\",\"category\":\"Special Products & Greases\",\"price\":\"42000.00\",\"cost\":\"40000.00\",\"stock\":\"0\",\"created_at\":\"2026-03-26 16:05:50\",\"expiry_date\":null},{\"id\":\"43\",\"name\":\"ATF-D3 18L\",\"category\":\"Special Products & Greases\",\"price\":\"3964.00\",\"cost\":\"3900.00\",\"stock\":\"5\",\"created_at\":\"2026-03-26 16:06:25\",\"expiry_date\":\"2060-12-12\"},{\"id\":\"44\",\"name\":\"GRIS MPI 18KG\",\"category\":\"Special Products & Greases\",\"price\":\"5645.00\",\"cost\":\"5600.00\",\"stock\":\"0\",\"created_at\":\"2026-03-26 16:06:57\",\"expiry_date\":null},{\"id\":\"45\",\"name\":\"MOTOGRIS MPA 18KG\",\"category\":\"Special Products & Greases\",\"price\":\"5309.00\",\"cost\":\"5250.00\",\"stock\":\"0\",\"created_at\":\"2026-03-26 16:07:19\",\"expiry_date\":null},{\"id\":\"46\",\"name\":\"GRIS LS 3 15KG\",\"category\":\"Special Products & Greases\",\"price\":\"2984.00\",\"cost\":\"2950.00\",\"stock\":\"15\",\"created_at\":\"2026-03-26 16:07:47\",\"expiry_date\":null},{\"id\":\"70\",\"name\":\"gas\",\"category\":\"lubes\",\"price\":\"60000.00\",\"cost\":\"70000.00\",\"stock\":\"1\",\"created_at\":\"2026-07-19 11:54:56\",\"expiry_date\":null},{\"id\":\"71\",\"name\":\"gas\",\"category\":\"petrol\",\"price\":\"500000.00\",\"cost\":\"800000.00\",\"stock\":\"12\",\"created_at\":\"2026-07-19 18:38:58\",\"expiry_date\":null},{\"id\":\"72\",\"name\":\"gas\",\"category\":\"petrol\",\"price\":\"500000.00\",\"cost\":\"800000.00\",\"stock\":\"12\",\"created_at\":\"2026-07-19 18:42:17\",\"expiry_date\":null},{\"id\":\"73\",\"name\":\"gas\",\"category\":\"petrol\",\"price\":\"500000.00\",\"cost\":\"800000.00\",\"stock\":\"12\",\"created_at\":\"2026-07-19 18:47:22\",\"expiry_date\":null},{\"id\":\"74\",\"name\":\"gas\",\"category\":\"petrol\",\"price\":\"500000.00\",\"cost\":\"1200000.00\",\"stock\":\"12\",\"created_at\":\"2026-07-19 18:47:51\",\"expiry_date\":null},{\"id\":\"75\",\"name\":\"gas\",\"category\":\"petrol\",\"price\":\"500000.00\",\"cost\":\"30000000.00\",\"stock\":\"12\",\"created_at\":\"2026-07-19 18:48:31\",\"expiry_date\":null},{\"id\":\"78\",\"name\":\"asayte\",\"category\":\"lubes\",\"price\":\"1234.00\",\"cost\":\"32.00\",\"stock\":\"10\",\"created_at\":\"2026-07-19 22:10:17\",\"expiry_date\":\"2026-08-08\"},{\"id\":\"79\",\"name\":\"asayte\",\"category\":\"petrol\",\"price\":\"234.00\",\"cost\":\"232.00\",\"stock\":\"21\",\"created_at\":\"2026-07-19 22:11:47\",\"expiry_date\":null},{\"id\":\"80\",\"name\":\"asayte\",\"category\":\"petrol\",\"price\":\"234.00\",\"cost\":\"232.00\",\"stock\":\"21\",\"created_at\":\"2026-07-19 22:17:49\",\"expiry_date\":null},{\"id\":\"81\",\"name\":\"asayte\",\"category\":\"petrol\",\"price\":\"234.00\",\"cost\":\"232.00\",\"stock\":\"21\",\"created_at\":\"2026-07-19 22:18:16\",\"expiry_date\":null},{\"id\":\"83\",\"name\":\"asayte\",\"category\":\"petrol\",\"price\":\"234.00\",\"cost\":\"232.00\",\"stock\":\"21\",\"created_at\":\"2026-07-20 10:21:16\",\"expiry_date\":null},{\"id\":\"84\",\"name\":\"asayte\",\"category\":\"petrol\",\"price\":\"234.00\",\"cost\":\"232.00\",\"stock\":\"21\",\"created_at\":\"2026-07-20 10:46:39\",\"expiry_date\":null},{\"id\":\"85\",\"name\":\"mantika\",\"category\":\"petrol\",\"price\":\"99000000.00\",\"cost\":\"99999999.99\",\"stock\":\"0\",\"created_at\":\"2026-07-22 17:13:44\",\"expiry_date\":null},{\"id\":\"86\",\"name\":\"asayte\",\"category\":\"petrol\",\"price\":\"23243.00\",\"cost\":\"423524.00\",\"stock\":\"12\",\"created_at\":\"2026-07-22 17:32:25\",\"expiry_date\":\"2026-08-09\"},{\"id\":\"88\",\"name\":\"motolola\",\"category\":\"oil\",\"price\":\"2000.00\",\"cost\":\"1800.00\",\"stock\":\"30\",\"created_at\":\"2026-07-23 21:06:31\",\"expiry_date\":\"2027-12-30\"}],\"sales\":[{\"id\":\"13\",\"product_id\":\"7\",\"quantity\":\"20\",\"unit_price\":\"1232.00\",\"total\":\"24640.00\",\"sale_date\":\"2026-03-26\",\"deleted_at\":null,\"created_at\":\"2026-03-26 14:02:50\"},{\"id\":\"14\",\"product_id\":\"5\",\"quantity\":\"20\",\"unit_price\":\"773.00\",\"total\":\"15460.00\",\"sale_date\":\"2026-02-26\",\"deleted_at\":null,\"created_at\":\"2026-03-26 14:03:12\"},{\"id\":\"15\",\"product_id\":\"6\",\"quantity\":\"10\",\"unit_price\":\"560.00\",\"total\":\"5600.00\",\"sale_date\":\"2026-01-26\",\"deleted_at\":\"2026-07-23 21:03:44\",\"created_at\":\"2026-03-26 14:05:31\"},{\"id\":\"16\",\"product_id\":\"8\",\"quantity\":\"4\",\"unit_price\":\"1232.00\",\"total\":\"4928.00\",\"sale_date\":\"2026-03-26\",\"deleted_at\":null,\"created_at\":\"2026-03-26 14:57:59\"},{\"id\":\"17\",\"product_id\":\"7\",\"quantity\":\"1\",\"unit_price\":\"480.00\",\"total\":\"480.00\",\"sale_date\":\"2026-03-26\",\"deleted_at\":null,\"created_at\":\"2026-03-26 15:00:50\"},{\"id\":\"18\",\"product_id\":\"7\",\"quantity\":\"1\",\"unit_price\":\"480.00\",\"total\":\"480.00\",\"sale_date\":\"2026-03-26\",\"deleted_at\":null,\"created_at\":\"2026-03-26 15:05:43\"},{\"id\":\"19\",\"product_id\":\"7\",\"quantity\":\"1\",\"unit_price\":\"480.00\",\"total\":\"480.00\",\"sale_date\":\"2026-03-26\",\"deleted_at\":null,\"created_at\":\"2026-03-26 15:06:25\"},{\"id\":\"20\",\"product_id\":\"6\",\"quantity\":\"12\",\"unit_price\":\"560.00\",\"total\":\"6720.00\",\"sale_date\":\"2026-01-26\",\"deleted_at\":null,\"created_at\":\"2026-03-26 15:12:35\"},{\"id\":\"21\",\"product_id\":null,\"quantity\":\"1\",\"unit_price\":\"5886.00\",\"total\":\"5886.00\",\"sale_date\":\"2026-03-26\",\"deleted_at\":null,\"created_at\":\"2026-03-26 22:16:21\"},{\"id\":\"22\",\"product_id\":\"31\",\"quantity\":\"1\",\"unit_price\":\"35750.00\",\"total\":\"35750.00\",\"sale_date\":\"2026-03-26\",\"deleted_at\":null,\"created_at\":\"2026-03-26 22:17:49\"},{\"id\":\"23\",\"product_id\":\"14\",\"quantity\":\"1\",\"unit_price\":\"31240.00\",\"total\":\"31240.00\",\"sale_date\":\"2025-03-29\",\"deleted_at\":null,\"created_at\":\"2026-03-29 19:58:16\"},{\"id\":\"24\",\"product_id\":\"22\",\"quantity\":\"1\",\"unit_price\":\"26992.00\",\"total\":\"26992.00\",\"sale_date\":\"2026-03-29\",\"deleted_at\":null,\"created_at\":\"2026-03-30 02:09:57\"},{\"id\":\"25\",\"product_id\":\"43\",\"quantity\":\"1\",\"unit_price\":\"3964.00\",\"total\":\"3964.00\",\"sale_date\":\"2026-03-29\",\"deleted_at\":null,\"created_at\":\"2026-03-30 02:10:05\"},{\"id\":\"26\",\"product_id\":\"30\",\"quantity\":\"1\",\"unit_price\":\"2913.00\",\"total\":\"2913.00\",\"sale_date\":\"2026-03-29\",\"deleted_at\":\"2026-07-23 19:01:20\",\"created_at\":\"2026-03-30 02:10:11\"},{\"id\":\"27\",\"product_id\":\"40\",\"quantity\":\"1\",\"unit_price\":\"146.00\",\"total\":\"146.00\",\"sale_date\":\"2026-03-29\",\"deleted_at\":null,\"created_at\":\"2026-03-30 02:10:15\"},{\"id\":\"28\",\"product_id\":\"40\",\"quantity\":\"1\",\"unit_price\":\"146.00\",\"total\":\"146.00\",\"sale_date\":\"2026-03-29\",\"deleted_at\":null,\"created_at\":\"2026-03-30 02:10:18\"},{\"id\":\"29\",\"product_id\":\"42\",\"quantity\":\"1\",\"unit_price\":\"42000.00\",\"total\":\"42000.00\",\"sale_date\":\"2026-03-29\",\"deleted_at\":null,\"created_at\":\"2026-03-30 02:10:23\"},{\"id\":\"30\",\"product_id\":\"38\",\"quantity\":\"1\",\"unit_price\":\"37230.00\",\"total\":\"37230.00\",\"sale_date\":\"2026-03-29\",\"deleted_at\":null,\"created_at\":\"2026-03-30 02:40:30\"},{\"id\":\"32\",\"product_id\":\"12\",\"quantity\":\"1\",\"unit_price\":\"37240.00\",\"total\":\"37240.00\",\"sale_date\":\"2026-02-21\",\"deleted_at\":null,\"created_at\":\"2026-03-31 11:26:36\"},{\"id\":\"34\",\"product_id\":\"28\",\"quantity\":\"1\",\"unit_price\":\"24326.00\",\"total\":\"24326.00\",\"sale_date\":\"2025-10-13\",\"deleted_at\":null,\"created_at\":\"2026-03-31 16:24:01\"},{\"id\":\"35\",\"product_id\":null,\"quantity\":\"10\",\"unit_price\":\"4532.00\",\"total\":\"45320.00\",\"sale_date\":\"2026-04-05\",\"deleted_at\":null,\"created_at\":\"2026-04-05 10:40:38\"},{\"id\":\"36\",\"product_id\":null,\"quantity\":\"5\",\"unit_price\":\"7566454.00\",\"total\":\"37832270.00\",\"sale_date\":\"2026-04-05\",\"deleted_at\":null,\"created_at\":\"2026-04-05 10:40:49\"},{\"id\":\"38\",\"product_id\":\"35\",\"quantity\":\"1\",\"unit_price\":\"33780.00\",\"total\":\"33780.00\",\"sale_date\":\"2026-05-30\",\"deleted_at\":null,\"created_at\":\"2026-05-30 13:28:47\"},{\"id\":\"39\",\"product_id\":null,\"quantity\":\"1\",\"unit_price\":\"99999999.99\",\"total\":\"99999999.99\",\"sale_date\":\"2026-07-19\",\"deleted_at\":null,\"created_at\":\"2026-07-19 18:56:26\"},{\"id\":\"40\",\"product_id\":\"78\",\"quantity\":\"11\",\"unit_price\":\"1234.00\",\"total\":\"13574.00\",\"sale_date\":\"2026-06-22\",\"deleted_at\":null,\"created_at\":\"2026-07-22 17:04:22\"},{\"id\":\"41\",\"product_id\":\"85\",\"quantity\":\"1\",\"unit_price\":\"99000000.00\",\"total\":\"99000000.00\",\"sale_date\":\"2026-06-22\",\"deleted_at\":null,\"created_at\":\"2026-07-22 17:13:59\"},{\"id\":\"42\",\"product_id\":\"46\",\"quantity\":\"1\",\"unit_price\":\"2984.00\",\"total\":\"2984.00\",\"sale_date\":\"2026-07-22\",\"deleted_at\":\"2026-07-24 11:46:52\",\"created_at\":\"2026-07-22 17:31:09\"},{\"id\":\"44\",\"product_id\":null,\"quantity\":\"3000\",\"unit_price\":\"99999999.99\",\"total\":\"99999999.99\",\"sale_date\":\"2026-07-23\",\"deleted_at\":\"2026-07-24 11:43:38\",\"created_at\":\"2026-07-23 20:01:40\"},{\"id\":\"45\",\"product_id\":\"85\",\"quantity\":\"80\",\"unit_price\":\"99000000.00\",\"total\":\"99999999.99\",\"sale_date\":\"2026-07-25\",\"deleted_at\":null,\"created_at\":\"2026-07-25 10:08:29\"},{\"id\":\"46\",\"product_id\":\"44\",\"quantity\":\"1\",\"unit_price\":\"5645.00\",\"total\":\"5645.00\",\"sale_date\":\"2026-07-28\",\"deleted_at\":null,\"created_at\":\"2026-07-28 23:53:51\"}],\"expenses\":[{\"id\":\"9\",\"category\":\"Salaries & Wages\",\"description\":\"salary\",\"amount\":\"15879.00\",\"expense_date\":\"2026-01-26\",\"created_at\":\"2026-03-26 14:08:23\"},{\"id\":\"10\",\"category\":\"Product\",\"description\":\"MPI 3 Gris 400g 50pcs\",\"amount\":\"4250.00\",\"expense_date\":\"2026-03-26\",\"created_at\":\"2026-03-26 16:19:59\"},{\"id\":\"11\",\"category\":\"Product\",\"description\":\"MPI 3 Gris 230g 50pcs\",\"amount\":\"1750.00\",\"expense_date\":\"2026-02-26\",\"created_at\":\"2026-03-26 16:21:30\"},{\"id\":\"12\",\"category\":\"Transportation\",\"description\":\"visiting branches\",\"amount\":\"5000.00\",\"expense_date\":\"2026-01-26\",\"created_at\":\"2026-03-26 16:22:55\"},{\"id\":\"17\",\"category\":\"Product\",\"description\":\"\",\"amount\":\"4351.00\",\"expense_date\":\"2026-03-26\",\"created_at\":\"2026-03-26 21:51:29\"},{\"id\":\"19\",\"category\":\"Advertising\",\"description\":\"\",\"amount\":\"12341.00\",\"expense_date\":\"2018-02-14\",\"created_at\":\"2026-03-29 19:42:14\"},{\"id\":\"23\",\"category\":\"Product\",\"description\":\"salary\",\"amount\":\"15152.00\",\"expense_date\":\"2026-03-31\",\"created_at\":\"2026-03-31 16:04:01\"},{\"id\":\"24\",\"category\":\"Advertising\",\"description\":\"\",\"amount\":\"4654.00\",\"expense_date\":\"2026-03-31\",\"created_at\":\"2026-03-31 16:04:09\"},{\"id\":\"25\",\"category\":\"Office Supplies\",\"description\":\"basta\",\"amount\":\"54232.00\",\"expense_date\":\"2026-03-31\",\"created_at\":\"2026-03-31 16:08:17\"},{\"id\":\"26\",\"category\":\"Utilities\",\"description\":\"\",\"amount\":\"123.00\",\"expense_date\":\"2022-03-09\",\"created_at\":\"2026-03-31 17:30:22\"},{\"id\":\"27\",\"category\":\"Product\",\"description\":\"Product added: gasol\",\"amount\":\"1200.00\",\"expense_date\":\"2026-04-05\",\"created_at\":\"2026-04-05 10:08:12\"},{\"id\":\"28\",\"category\":\"Product\",\"description\":\"Product added: asayte\",\"amount\":\"523453.00\",\"expense_date\":\"2026-04-05\",\"created_at\":\"2026-04-05 10:25:50\"},{\"id\":\"29\",\"category\":\"Product\",\"description\":\"Product added: asayte\",\"amount\":\"523453.00\",\"expense_date\":\"2026-04-05\",\"created_at\":\"2026-04-05 10:26:06\"},{\"id\":\"30\",\"category\":\"Product\",\"description\":\"Product added: gasol\",\"amount\":\"34000.00\",\"expense_date\":\"2026-04-05\",\"created_at\":\"2026-04-05 15:24:38\"},{\"id\":\"31\",\"category\":\"Product\",\"description\":\"Product added: gas\",\"amount\":\"34000.00\",\"expense_date\":\"2026-05-06\",\"created_at\":\"2026-05-07 00:07:46\"},{\"id\":\"32\",\"category\":\"Product\",\"description\":\"Product added: gas\",\"amount\":\"34000.00\",\"expense_date\":\"2026-05-30\",\"created_at\":\"2026-05-30 13:27:08\"},{\"id\":\"33\",\"category\":\"Product\",\"description\":\"Product added: gas\",\"amount\":\"34000.00\",\"expense_date\":\"2026-05-30\",\"created_at\":\"2026-05-30 13:27:34\"},{\"id\":\"34\",\"category\":\"Product\",\"description\":\"Product added: gas\",\"amount\":\"34000.00\",\"expense_date\":\"2026-05-30\",\"created_at\":\"2026-05-30 13:50:45\"},{\"id\":\"38\",\"category\":\"Product\",\"description\":\"Product added: oil\",\"amount\":\"12434.00\",\"expense_date\":\"2026-07-18\",\"created_at\":\"2026-07-18 17:17:37\"},{\"id\":\"56\",\"category\":\"Product\",\"description\":\"Product added: asayte\",\"amount\":\"32.00\",\"expense_date\":\"2026-07-19\",\"created_at\":\"2026-07-19 22:10:17\"},{\"id\":\"57\",\"category\":\"Office Supplies\",\"description\":\"basta\",\"amount\":\"32114.00\",\"expense_date\":\"2026-07-19\",\"created_at\":\"2026-07-19 22:10:57\"},{\"id\":\"58\",\"category\":\"Product\",\"description\":\"Product added: asayte\",\"amount\":\"232.00\",\"expense_date\":\"2026-07-19\",\"created_at\":\"2026-07-19 22:11:47\"},{\"id\":\"59\",\"category\":\"Product\",\"description\":\"Product added: asayte\",\"amount\":\"232.00\",\"expense_date\":\"2026-07-19\",\"created_at\":\"2026-07-19 22:17:49\"},{\"id\":\"60\",\"category\":\"Product\",\"description\":\"Product added: asayte\",\"amount\":\"232.00\",\"expense_date\":\"2026-07-19\",\"created_at\":\"2026-07-19 22:18:16\"},{\"id\":\"61\",\"category\":\"Product\",\"description\":\"basta\",\"amount\":\"32114.00\",\"expense_date\":\"2026-07-19\",\"created_at\":\"2026-07-19 22:23:03\"},{\"id\":\"62\",\"category\":\"Office Supplies\",\"description\":\"salary\",\"amount\":\"355442.00\",\"expense_date\":\"2026-07-19\",\"created_at\":\"2026-07-19 22:23:36\"},{\"id\":\"63\",\"category\":\"Product\",\"description\":\"Product added: asayte\",\"amount\":\"232.00\",\"expense_date\":\"2026-07-19\",\"created_at\":\"2026-07-19 22:26:42\"},{\"id\":\"64\",\"category\":\"Product\",\"description\":\"Product added: asayte\",\"amount\":\"232.00\",\"expense_date\":\"2026-07-20\",\"created_at\":\"2026-07-20 10:21:16\"},{\"id\":\"65\",\"category\":\"Product\",\"description\":\"Product added: asayte\",\"amount\":\"232.00\",\"expense_date\":\"2026-07-20\",\"created_at\":\"2026-07-20 10:46:39\"},{\"id\":\"66\",\"category\":\"Product\",\"description\":\"Product added: mantika\",\"amount\":\"99999999.99\",\"expense_date\":\"2026-07-22\",\"created_at\":\"2026-07-22 17:13:44\"},{\"id\":\"68\",\"category\":\"Product\",\"description\":\"Product added: asayte\",\"amount\":\"3232231.00\",\"expense_date\":\"2026-07-22\",\"created_at\":\"2026-07-22 17:32:59\"},{\"id\":\"69\",\"category\":\"Product\",\"description\":\"sweldo\",\"amount\":\"30000.00\",\"expense_date\":\"2026-07-23\",\"created_at\":\"2026-07-23 19:38:21\"},{\"id\":\"70\",\"category\":\"Product\",\"description\":\"Product added: motolola\",\"amount\":\"1800.00\",\"expense_date\":\"2026-07-23\",\"created_at\":\"2026-07-23 21:06:31\"}],\"deleted_expenses\":[{\"id\":\"1\",\"original_id\":\"15\",\"category\":\"Equipment\",\"description\":\"pen\",\"amount\":\"12334.00\",\"expense_date\":\"2026-03-26\",\"deleted_at\":\"2026-07-19 11:49:15\"},{\"id\":\"2\",\"original_id\":\"39\",\"category\":\"Product\",\"description\":\"salary\",\"amount\":\"15152.00\",\"expense_date\":\"2026-07-19\",\"deleted_at\":\"2026-07-19 18:43:07\"},{\"id\":\"3\",\"original_id\":\"40\",\"category\":\"Product\",\"description\":\"salary\",\"amount\":\"15152.00\",\"expense_date\":\"2026-07-19\",\"deleted_at\":\"2026-07-19 18:43:09\"},{\"id\":\"4\",\"original_id\":\"41\",\"category\":\"Product\",\"description\":\"basta\",\"amount\":\"12345689.00\",\"expense_date\":\"2026-07-19\",\"deleted_at\":\"2026-07-19 18:45:52\"},{\"id\":\"5\",\"original_id\":\"42\",\"category\":\"Product\",\"description\":\"Product added: gas\",\"amount\":\"28236278.00\",\"expense_date\":\"2026-07-19\",\"deleted_at\":\"2026-07-19 18:46:02\"},{\"id\":\"6\",\"original_id\":\"43\",\"category\":\"Product\",\"description\":\"Product added: gas\",\"amount\":\"70000.00\",\"expense_date\":\"2026-07-19\",\"deleted_at\":\"2026-07-19 18:46:05\"},{\"id\":\"7\",\"original_id\":\"44\",\"category\":\"Product\",\"description\":\"Product added: gas\",\"amount\":\"800000.00\",\"expense_date\":\"2026-07-19\",\"deleted_at\":\"2026-07-19 18:46:07\"},{\"id\":\"8\",\"original_id\":\"45\",\"category\":\"Product\",\"description\":\"Product added: gas\",\"amount\":\"800000.00\",\"expense_date\":\"2026-07-19\",\"deleted_at\":\"2026-07-19 18:46:09\"},{\"id\":\"9\",\"original_id\":\"46\",\"category\":\"Product\",\"description\":\"salary\",\"amount\":\"800000.00\",\"expense_date\":\"2026-07-19\",\"deleted_at\":\"2026-07-19 18:46:10\"},{\"id\":\"10\",\"original_id\":\"47\",\"category\":\"Office Supplies\",\"description\":\"salary\",\"amount\":\"9000.00\",\"expense_date\":\"2026-07-19\",\"deleted_at\":\"2026-07-19 18:46:12\"},{\"id\":\"11\",\"original_id\":\"35\",\"category\":\"Product\",\"description\":\"Product added: gas\",\"amount\":\"34000.00\",\"expense_date\":\"2026-07-18\",\"deleted_at\":\"2026-07-19 18:46:14\"},{\"id\":\"12\",\"original_id\":\"36\",\"category\":\"Product\",\"description\":\"Product added: gas\",\"amount\":\"34000.00\",\"expense_date\":\"2026-07-18\",\"deleted_at\":\"2026-07-19 18:46:15\"},{\"id\":\"13\",\"original_id\":\"37\",\"category\":\"Product\",\"description\":\"Product added: gas\",\"amount\":\"786754.00\",\"expense_date\":\"2026-07-18\",\"deleted_at\":\"2026-07-19 18:46:18\"},{\"id\":\"14\",\"original_id\":\"48\",\"category\":\"Product\",\"description\":\"Product added: gas\",\"amount\":\"800000.00\",\"expense_date\":\"2026-07-19\",\"deleted_at\":\"2026-07-19 22:22:23\"},{\"id\":\"15\",\"original_id\":\"49\",\"category\":\"Product\",\"description\":\"Product added: gas\",\"amount\":\"1200000.00\",\"expense_date\":\"2026-07-19\",\"deleted_at\":\"2026-07-19 22:22:26\"},{\"id\":\"16\",\"original_id\":\"50\",\"category\":\"Product\",\"description\":\"Product added: gas\",\"amount\":\"30000000.00\",\"expense_date\":\"2026-07-19\",\"deleted_at\":\"2026-07-19 22:22:27\"},{\"id\":\"17\",\"original_id\":\"51\",\"category\":\"Product\",\"description\":\"Product added: asayte\",\"amount\":\"32.00\",\"expense_date\":\"2026-07-19\",\"deleted_at\":\"2026-07-19 22:22:39\"},{\"id\":\"18\",\"original_id\":\"52\",\"category\":\"Product\",\"description\":\"Product added: asayte\",\"amount\":\"32.00\",\"expense_date\":\"2026-07-19\",\"deleted_at\":\"2026-07-19 22:22:41\"},{\"id\":\"19\",\"original_id\":\"53\",\"category\":\"Product\",\"description\":\"salary\",\"amount\":\"9000.00\",\"expense_date\":\"2026-07-19\",\"deleted_at\":\"2026-07-19 22:22:44\"},{\"id\":\"20\",\"original_id\":\"54\",\"category\":\"Product\",\"description\":\"salary\",\"amount\":\"9000.00\",\"expense_date\":\"2026-07-19\",\"deleted_at\":\"2026-07-19 22:22:46\"},{\"id\":\"21\",\"original_id\":\"55\",\"category\":\"Product\",\"description\":\"salary\",\"amount\":\"9000.00\",\"expense_date\":\"2026-07-19\",\"deleted_at\":\"2026-07-19 22:22:52\"},{\"id\":\"23\",\"original_id\":\"67\",\"category\":\"Product\",\"description\":\"Product added: asayte\",\"amount\":\"423524.00\",\"expense_date\":\"2026-07-22\",\"deleted_at\":\"2026-07-24 11:47:12\"},{\"id\":\"24\",\"original_id\":\"72\",\"category\":\"Product\",\"description\":\"Product added: sdfgh\",\"amount\":\"12345.00\",\"expense_date\":\"2026-07-24\",\"deleted_at\":\"2026-07-24 19:31:12\"}],\"category_budgets\":[{\"category\":\"Advertising\",\"monthly_limit\":\"0.00\"},{\"category\":\"Equipment\",\"monthly_limit\":\"0.00\"},{\"category\":\"Marketing\",\"monthly_limit\":\"0.00\"},{\"category\":\"Office Supplies\",\"monthly_limit\":\"0.00\"},{\"category\":\"Other\",\"monthly_limit\":\"0.00\"},{\"category\":\"Product\",\"monthly_limit\":\"0.00\"},{\"category\":\"Rent\",\"monthly_limit\":\"0.00\"},{\"category\":\"Salaries & Wages\",\"monthly_limit\":\"0.00\"},{\"category\":\"Transportation\",\"monthly_limit\":\"0.00\"},{\"category\":\"Utilities\",\"monthly_limit\":\"0.00\"}]}', '2026-07-28 23:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'admin@profitlens.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', '2026-03-25 09:26:34'),
(2, 'admin@email.com', '$2y$10$dYWE1t5MQZBBmoP26EXGV.yc3rBG0my3gJXL6cbZRenU4B5U.BBI.', 'user', '2026-03-25 09:44:07'),
(3, 'cram03namme@gmail.com', '$2y$10$wbKan/pYQZ01N7PNNvrqke/fW781NFafJBsL0cLvjDlvfXEdNNNJe', 'user', '2026-03-29 11:52:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_budgets`
--
ALTER TABLE `category_budgets`
  ADD PRIMARY KEY (`category`);

--
-- Indexes for table `deleted_expenses`
--
ALTER TABLE `deleted_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `idx_sales_deleted_at` (`deleted_at`);

--
-- Indexes for table `system_backups`
--
ALTER TABLE `system_backups`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `deleted_expenses`
--
ALTER TABLE `deleted_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_backups`
--
ALTER TABLE `system_backups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
