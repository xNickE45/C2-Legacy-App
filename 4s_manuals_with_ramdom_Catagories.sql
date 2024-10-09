-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 09, 2024 at 07:15 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `4s_manuals`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'technology',
  `catagory_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`, `category`, `catagory_id`) VALUES
(1, 'BenQ', NULL, NULL, 'technology', 5),
(2, 'Garmin', NULL, NULL, 'technology', 6),
(3, 'TPI Corporation', NULL, NULL, 'technology', 6),
(4, 'Land Pride', NULL, NULL, 'technology', 10),
(5, 'Humminbird', NULL, NULL, 'technology', 10),
(6, 'IOGear', NULL, NULL, 'technology', 9),
(7, 'Kohler', NULL, NULL, 'technology', 8),
(8, 'ProForm', NULL, NULL, 'technology', 9),
(9, 'Grizzly', NULL, NULL, 'technology', 2),
(10, 'Furuno', NULL, NULL, 'technology', 4),
(11, 'DigiTech', NULL, NULL, 'technology', 2),
(12, 'Yamaha', NULL, NULL, 'technology', 6),
(13, 'Samson', NULL, NULL, 'technology', 6),
(14, 'JBL', NULL, NULL, 'technology', 10),
(15, 'Crown Audio', NULL, NULL, 'technology', 1),
(16, 'MTX Audio', NULL, NULL, 'technology', 5),
(17, 'Musica', NULL, NULL, 'technology', 2),
(18, 'DCM Speakers', NULL, NULL, 'technology', 6),
(19, 'AOC', NULL, NULL, 'technology', 3),
(20, 'ALCATEL Mobile Phones', NULL, NULL, 'technology', 4),
(21, 'Huawei', NULL, NULL, 'technology', 2),
(22, 'ZTE', NULL, NULL, 'technology', 6),
(23, 'Motorola', NULL, NULL, 'technology', 5),
(24, 'Palm', NULL, NULL, 'technology', 8),
(25, 'LG Electronics', NULL, NULL, 'technology', 2),
(26, 'Samsung', NULL, NULL, 'technology', 8),
(27, 'Sony', NULL, NULL, 'technology', 2),
(28, 'Pantech', NULL, NULL, 'technology', 4),
(29, 'Citizen', NULL, NULL, 'technology', 3),
(30, 'Aastra Telecom', NULL, NULL, 'technology', 4),
(31, 'RCA', NULL, NULL, 'technology', 9),
(32, 'VTech', NULL, NULL, 'technology', 4),
(33, 'Uniden', NULL, NULL, 'technology', 4),
(34, 'AT&T', NULL, NULL, 'technology', 5),
(35, 'GE', NULL, NULL, 'technology', 3),
(36, 'Toshiba', NULL, NULL, 'technology', 10),
(37, 'Dell', NULL, NULL, 'technology', 2),
(38, 'Fujitsu', NULL, NULL, 'technology', 7),
(39, 'Lenovo', NULL, NULL, 'technology', 1),
(40, 'Apple', NULL, NULL, 'technology', 3),
(41, 'Carl Zeiss', NULL, NULL, 'technology', 10),
(42, 'Kowa', NULL, NULL, 'technology', 9),
(43, 'Pioneer', NULL, NULL, 'technology', 8);

-- --------------------------------------------------------

--
-- Table structure for table `catagories`
--

CREATE TABLE `catagories` (
  `id` bigint UNSIGNED NOT NULL,
  `catagory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Technology',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catagories`
--

INSERT INTO `catagories` (`id`, `catagory`, `created_at`) VALUES
(1, 'Technology', '2024-10-09 07:13:50'),
(2, 'Science', '2024-10-09 07:13:50'),
(3, 'Health', '2024-10-09 07:13:50'),
(4, 'Business', '2024-10-09 07:13:50'),
(5, 'Entertainment', '2024-10-09 07:13:50'),
(6, 'Sports', '2024-10-09 07:13:50'),
(7, 'Education', '2024-10-09 07:13:50'),
(8, 'Travel', '2024-10-09 07:13:50'),
(9, 'Lifestyle', '2024-10-09 07:13:50'),
(10, 'Fashion', '2024-10-09 07:13:50'),
(11, 'Food', '2024-10-09 07:13:50'),
(12, 'Automobile', '2024-10-09 07:13:50'),
(13, 'Real Estate', '2024-10-09 07:13:50'),
(14, 'Finance', '2024-10-09 07:13:50'),
(15, 'Politics', '2024-10-09 07:13:50'),
(16, 'Environment', '2024-10-09 07:13:50'),
(17, 'Others', '2024-10-09 07:13:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manuals`
--

CREATE TABLE `manuals` (
  `id` bigint UNSIGNED NOT NULL,
  `brand_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filesize` bigint NOT NULL,
  `visits` int NOT NULL DEFAULT '0',
  `originUrl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `downloadedServer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manuals`
--

INSERT INTO `manuals` (`id`, `brand_id`, `name`, `filesize`, `visits`, `originUrl`, `filename`, `downloadedServer`, `created_at`, `updated_at`) VALUES
(1, 1, '9H.L8PLB.QPA', 2234284, 0, 'http://manualsonline.com/manuals/mfg/BenQ/9H.L8PLB.QPA.html', '84285170-664f-4a53-a9fd-21a8566b9df3.pdf', 'TransIP', NULL, NULL),
(2, 2, 'DEZL560LMT', 1908918, 0, 'http://manualsonline.com/manuals/mfg/Garmin/DEZL560LMT.html', 'a6bbd04f-8442-4213-a272-735a16a3480b.pdf', 'TransIP', NULL, NULL),
(3, 3, '135', 105342, 0, 'http://manualsonline.com/manuals/mfg/TPI_Corporation/135.html', 'ffd19f66-3828-4190-b109-a10312240cba.pdf', 'TransIP', NULL, NULL),
(4, 3, '100', 71241, 0, 'http://manualsonline.com/manuals/mfg/TPI_Corporation/100.html', 'bb1bcd46-49e3-4c59-9f20-f0d44b5ec10c.pdf', 'TransIP', NULL, NULL),
(5, 4, 'HRS3025', 897667, 0, 'http://manualsonline.com/manuals/mfg/Land_Pride/HRS3025.html', 'a2ae66f2-e981-4cdd-9884-2276787a6d5d.pdf', 'TransIP', NULL, NULL),
(6, 5, '998c SI', 26306119, 0, 'http://manualsonline.com/manuals/mfg/Humminbird/998c_SI.html', '96adc251-0579-4193-825b-1841cc485d42.pdf', 'TransIP', NULL, NULL),
(7, 6, 'GBGPS201', 481422, 0, 'http://manualsonline.com/manuals/mfg/IOGear/GBGPS201.html', '78b69de3-b226-48ae-bd2d-d6dbb8bc9c6a.pdf', 'TransIP', NULL, NULL),
(8, 7, 'k301', 833513, 0, 'http://manualsonline.com/manuals/mfg/Kohler/k301.html', 'a8d17ccc-f224-4543-aa4c-8c93196ed9b8.pdf', 'TransIP', NULL, NULL),
(9, 8, '67015', 942480, 0, 'http://manualsonline.com/manuals/mfg/ProForm/67015.html', '95591d1f-6361-4930-b276-238b87c2f851.pdf', 'TransIP', NULL, NULL),
(10, 9, 'T10877', 441250, 0, 'http://manualsonline.com/manuals/mfg/Grizzly/T10877.html', '2b1cc142-f7a4-4f4f-b474-78943f3b88b0.pdf', 'TransIP', NULL, NULL),
(11, 10, 'MFDBB', 3597916, 0, 'http://manualsonline.com/manuals/mfg/furuno_usa/MFDBB.html', 'ff310a9e-5549-4853-a397-b808931bff16.pdf', 'TransIP', NULL, NULL),
(12, 10, '3500F', 5831176, 0, 'http://manualsonline.com/manuals/mfg/furuno_usa/3500F.html', 'd80f9f8c-3b19-4f3f-9014-247d2661427b.pdf', 'TransIP', NULL, NULL),
(13, 10, 'GD-3300', 824570, 0, 'http://manualsonline.com/manuals/mfg/furuno_usa/GD3300.html', '3f07e998-fe55-4bd2-aa74-d87a835f3f4a.pdf', 'TransIP', NULL, NULL),
(14, 10, 'GP-500', 4540064, 0, 'http://manualsonline.com/manuals/mfg/furuno_usa/GP500.html', 'a7c852de-5862-43d0-b5a9-3939cc5cadc3.pdf', 'TransIP', NULL, NULL),
(15, 11, 'Dirty Robot', 2718970, 0, 'http://manualsonline.com/manuals/mfg/DigiTech/Dirty_Robot.html', '9b75c929-8d97-41fa-ab8e-3815645942ec.pdf', 'TransIP', NULL, NULL),
(16, 11, 'Whammy Ricochet', 651408, 0, 'http://manualsonline.com/manuals/mfg/DigiTech/Whammy_Ricochet.html', 'dbd866c6-0a07-46be-a6e7-377fad333419.pdf', 'TransIP', NULL, NULL),
(17, 11, 'Ventura Vibe', 1852467, 0, 'http://manualsonline.com/manuals/mfg/DigiTech/Ventura_Vibe.html', '228af0a7-43a7-4804-8e8c-16190b172f1c.pdf', 'TransIP', NULL, NULL),
(18, 11, 'Obscura Altered Delay', 6267087, 0, 'http://manualsonline.com/manuals/mfg/DigiTech/Obscura_Altered_Delay.html', 'f3cac95f-cab7-4a68-835d-1b81811e263a.pdf', 'TransIP', NULL, NULL),
(19, 11, 'JamMan Express XT', 1581441, 0, 'http://manualsonline.com/manuals/mfg/DigiTech/JamMan_Express_XT.html', '22d7781c-e122-486a-8caf-0b5b853c3564.pdf', 'TransIP', NULL, NULL),
(20, 11, 'RP360', 12033152, 0, 'http://manualsonline.com/manuals/mfg/DigiTech/RP360.html', '80ff861f-290b-486a-8b36-96a76c3688bd.pdf', 'TransIP', NULL, NULL),
(21, 11, 'Element', 2800209, 0, 'http://manualsonline.com/manuals/mfg/DigiTech/Element.html', '5b96edb8-c5aa-40e3-bbc4-4bd9d621be04.pdf', 'TransIP', NULL, NULL),
(22, 11, 'Element XP', 2881427, 0, 'http://manualsonline.com/manuals/mfg/DigiTech/Element_XP.html', '05c5348e-d763-45de-a564-818191f39938.pdf', 'TransIP', NULL, NULL),
(23, 11, 'Supernatural Ambient Verb', 1668462, 0, 'http://manualsonline.com/manuals/mfg/DigiTech/Supernatural_Ambient_Verb.html', '061ce286-36ec-4014-99e1-912823569e6b.pdf', 'TransIP', NULL, NULL),
(24, 11, 'Bass Whammy', 1651429, 0, 'http://manualsonline.com/manuals/mfg/DigiTech/Bass_Whammy.html', '6a9391db-c324-4ff9-be65-f61ebddbcd25.pdf', 'TransIP', NULL, NULL),
(25, 11, 'Live Harmony', 5170638, 0, 'http://manualsonline.com/manuals/mfg/DigiTech/Live_Harmony.html', '8ae177c2-4aa3-4b26-ae90-7ed5d6ca7f46.pdf', 'TransIP', NULL, NULL),
(26, 12, 'PSR-E253', 2919958, 0, 'http://manualsonline.com/manuals/mfg/Yamaha/PSRE253.html', 'e506d29f-8627-4f00-80d1-6eb0367a7813.pdf', 'TransIP', NULL, NULL),
(27, 12, 'MGP-24X', 8561468, 0, 'http://manualsonline.com/manuals/mfg/Yamaha/MGP24X.html', 'e47963d2-7d81-440f-a20e-4cb596354bf8.pdf', 'TransIP', NULL, NULL),
(28, 12, 'MG16', 5715455, 0, 'http://manualsonline.com/manuals/mfg/Yamaha/MG16.html', '9945c900-0bbf-4197-b702-259ed8e89a65.pdf', 'TransIP', NULL, NULL),
(29, 12, 'MG12XU', 413861, 0, 'http://manualsonline.com/manuals/mfg/Yamaha/MG12XU.html', 'f15991f0-17a8-4af8-9ef3-dd17b3d53815.pdf', 'TransIP', NULL, NULL),
(30, 12, 'MG20', 28434028, 0, 'http://manualsonline.com/manuals/mfg/Yamaha/MG20.html', '0d86fd2d-f1a0-4d11-a65c-9a0a6aaac63b.pdf', 'TransIP', NULL, NULL),
(31, 13, 'XP150', 0, 0, 'http://manualsonline.com/manuals/mfg/Samson/XP150.html', '23c9e887-a7fc-4a77-9878-338fb600e8bc.pdf', 'TransIP', NULL, NULL),
(32, 14, 'JRX218S', 0, 0, 'http://manualsonline.com/manuals/mfg/JBL/JRX218S.html', 'a25624ba-08cc-4b95-b019-e0fcaec5824f.pdf', 'TransIP', NULL, NULL),
(33, 15, 'CDI1000', 0, 0, 'http://manualsonline.com/manuals/mfg/Crown_Audio/CDI1000.html', '6efebd28-803b-4d67-a051-ae4470f08469.pdf', 'TransIP', NULL, NULL),
(34, 14, 'LSR310S', 0, 0, 'http://manualsonline.com/manuals/mfg/JBL/LSR310S.html', 'a3e4af2b-4ac8-4c68-b6a9-4ed0116c365a.pdf', 'TransIP', NULL, NULL),
(35, 16, 'XT10-04', 0, 0, 'http://manualsonline.com/manuals/mfg/MTX_Audio/XT1004.html', '7c8a315b-f4d6-41c1-9e89-5c520daae6b3.pdf', 'TransIP', NULL, NULL),
(36, 16, 'MUD100.4', 0, 0, 'http://manualsonline.com/manuals/mfg/MTX_Audio/MUD100.4.html', 'da512b3f-6575-4a6d-9145-5d2fb89eba0f.pdf', 'TransIP', NULL, NULL),
(37, 17, 'MUSICA502W', 0, 0, 'http://manualsonline.com/manuals/mfg/Musica/MUSICA502W.html', 'f80ee38c-ac87-45d6-9d64-d680f817a366.pdf', 'TransIP', NULL, NULL),
(38, 17, 'm530aw', 0, 0, 'http://manualsonline.com/manuals/mfg/Musica/m530aw.html', 'ef1754b4-3bb1-4efc-a7e2-94ceb6acb38d.pdf', 'TransIP', NULL, NULL),
(39, 16, 'AW52', 0, 0, 'http://manualsonline.com/manuals/mfg/MTX_Audio/AW52.html', '94db4fc5-47ab-4877-9041-218226ad4e40.pdf', 'TransIP', NULL, NULL),
(40, 16, 'mud1002', 0, 0, 'http://manualsonline.com/manuals/mfg/MTX_Audio/mud1002.html', '2cfe23a9-1af2-4f69-bafe-4524cdd2b13f.pdf', 'TransIP', NULL, NULL),
(41, 16, 'MUD50.2', 0, 0, 'http://manualsonline.com/manuals/mfg/MTX_Audio/MUD50.2.html', '03e4db5b-0b6f-40d6-8352-4074d3154ed3.pdf', 'TransIP', NULL, NULL),
(42, 18, '21A6276', 0, 0, 'http://manualsonline.com/manuals/mfg/DCM_loudspeakers/21A6276.html', '9d627a7e-69ad-40f0-af4c-1b98e1e1916b.pdf', 'TransIP', NULL, NULL),
(43, 19, 'E2260SWDA', 2620939, 0, 'http://manualsonline.com/manuals/mfg/AOC/E2260SWDA.html', 'b651d448-b796-49da-9b5b-60cf7834da2b.pdf', 'TransIP', NULL, NULL),
(44, 19, 'U2879VF', 2170580, 0, 'http://manualsonline.com/manuals/mfg/AOC/U2879VF.html', 'd04e3116-dfdb-4108-b183-f59c445363a7.pdf', 'TransIP', NULL, NULL),
(45, 20, 'A392G', 5209355, 0, 'http://manualsonline.com/manuals/mfg/ALCATEL_Mobile_Phones/A392G.html', 'cc1551f1-a353-46f4-9ec0-f01a82ffa57c.pdf', 'TransIP', NULL, NULL),
(46, 21, 'H868C', 10590350, 0, 'http://manualsonline.com/manuals/mfg/Huawei/H868C.html', 'ae76c328-83bc-4814-be8e-b1f91a1ce7da.pdf', 'TransIP', NULL, NULL),
(47, 22, 'Z222', 1225001, 0, 'http://manualsonline.com/manuals/mfg/ZTE/Z222.html', 'f41a64cd-8ee9-4004-a82c-d19d64788218.pdf', 'TransIP', NULL, NULL),
(48, 23, 'Defy XT', 2972535, 0, 'http://manualsonline.com/manuals/mfg/Motorola/Defy_XT.html', 'bc2ed27a-4e49-46df-9461-615372e49039.pdf', 'TransIP', NULL, NULL),
(49, 20, '875T', 2557274, 0, 'http://manualsonline.com/manuals/mfg/ALCATEL_Mobile_Phones/875T.html', '7d55e301-12c7-40d8-b1fb-a1d39534d826.pdf', 'TransIP', NULL, NULL),
(50, 24, 'P120EWW', 7229873, 0, 'http://manualsonline.com/manuals/mfg/Palm/P120EWW.html', '9a283031-bbc3-452b-9215-c16d0f82c2e0.pdf', 'TransIP', NULL, NULL),
(51, 21, 'Pillar M615', 593445, 0, 'http://manualsonline.com/manuals/mfg/Huawei/Pillar_M615.html', '15fc2bb8-f296-48da-b9c5-3eac9b6fbc94.pdf', 'TransIP', NULL, NULL),
(52, 25, 'LN510', 3715816, 0, 'http://manualsonline.com/manuals/mfg/lg/LN510.html', '3e056144-a890-4223-a34f-a816c3669905.pdf', 'TransIP', NULL, NULL),
(53, 26, 'S390G', 1859292, 0, 'http://manualsonline.com/manuals/mfg/Samsung/S390G.html', 'd3e14269-38fc-4f43-a4ac-721a233e87f2.pdf', 'TransIP', NULL, NULL),
(54, 26, 'SGH-S150G', 1041982, 0, 'http://manualsonline.com/manuals/mfg/Samsung/SGHS150G.html', 'ec2196e3-a7b4-4539-86ba-6121fd1a17ac.pdf', 'TransIP', NULL, NULL),
(55, 26, 'I827', 5917988, 0, 'http://manualsonline.com/manuals/mfg/Samsung/I827.html', '03486c7e-4112-4ca4-8f8a-b738f05c256a.pdf', 'TransIP', NULL, NULL),
(56, 27, '1289-7631', 2854589, 0, 'http://manualsonline.com/manuals/mfg/Sony/12897631.html', '9343ae03-6085-4cb0-a005-72a197a2a730.pdf', 'TransIP', NULL, NULL),
(57, 27, '1289-4201', 2695127, 0, 'http://manualsonline.com/manuals/mfg/Sony/12894201.html', '2f5b5959-5011-4ade-843d-398bfb675521.pdf', 'TransIP', NULL, NULL),
(58, 27, '1289-4874', 1585736, 0, 'http://manualsonline.com/manuals/mfg/Sony/12894874.html', 'a73d7e56-4f10-4fbd-af3a-e3f75b0270f7.pdf', 'TransIP', NULL, NULL),
(59, 28, 'P9050', 2464062, 0, 'http://manualsonline.com/manuals/mfg/Pantech/P9050.html', '38e58961-715b-4d19-9846-8f54707f09f6.pdf', 'TransIP', NULL, NULL),
(60, 29, 'CMP-20', 871653, 0, 'http://manualsonline.com/manuals/mfg/Citizen/CMP20.html', '600e787c-0ff3-4016-af90-39108ba462f3.pdf', 'TransIP', NULL, NULL),
(61, 30, 'M5316', 9231080, 0, 'http://manualsonline.com/manuals/mfg/Aastra_Telecom/M5316.html', '6c45af61-f0fc-4454-bb31-582cc0e3fb90.pdf', 'TransIP', NULL, NULL),
(62, 31, '25202RE3', 449677, 0, 'http://manualsonline.com/manuals/mfg/RCA/25202RE3.html', '31f206bd-a033-4979-94e4-60dea9376deb.pdf', 'TransIP', NULL, NULL),
(63, 32, 'TL86009', 13782197, 0, 'http://manualsonline.com/manuals/mfg/vtech_communications/TL86009.html', '39bf9f14-7ef6-4437-b55b-e96e09070f82.pdf', 'TransIP', NULL, NULL),
(64, 32, 'DS6151', 15949137, 0, 'http://manualsonline.com/manuals/mfg/vtech_communications/DS6151.html', '35a5f038-010e-44e6-9d6c-b960ed82825d.pdf', 'TransIP', NULL, NULL),
(65, 32, 'CL80100', 4131332, 0, 'http://manualsonline.com/manuals/mfg/vtech_communications/CL80100.html', '3ccd1749-8be4-4329-92d6-f992705453a4.pdf', 'TransIP', NULL, NULL),
(66, 33, 'D17882', 1694054, 0, 'http://manualsonline.com/manuals/mfg/Uniden/D17882.html', '086ae596-b957-4a11-a7e2-92dc454caf3c.pdf', 'TransIP', NULL, NULL),
(67, 32, 'DS6151DS6101', 2167500, 0, 'http://manualsonline.com/manuals/mfg/vtech_communications/DS6151DS6101.html', '89406eed-226f-4992-a40d-f2d9fc977366.pdf', 'TransIP', NULL, NULL),
(68, 33, 'D3288-2', 1818640, 0, 'http://manualsonline.com/manuals/mfg/Uniden/D32882.html', 'e3556fbb-940d-462d-99de-0c05ddcf063c.pdf', 'TransIP', NULL, NULL),
(69, 34, 'CL80101', 2941450, 0, 'http://manualsonline.com/manuals/mfg/ATT/CL80101.html', '550377f0-352d-4eb6-ab86-2c3cd31c0482.pdf', 'TransIP', NULL, NULL),
(70, 34, 'CL80111', 2983381, 0, 'http://manualsonline.com/manuals/mfg/ATT/CL80111.html', '71d4ec94-08e3-42cc-9e7c-2e8d33634871.pdf', 'TransIP', NULL, NULL),
(71, 34, 'CL81201', 7333448, 0, 'http://manualsonline.com/manuals/mfg/ATT/CL81201.html', '63808c2c-d514-413f-95dc-8a95487e8531.pdf', 'TransIP', NULL, NULL),
(72, 34, 'CL83201', 12908234, 0, 'http://manualsonline.com/manuals/mfg/ATT/CL83201.html', 'a6f62115-d8c0-46e4-8a8e-884fea877582.pdf', 'TransIP', NULL, NULL),
(73, 34, 'EL52303', 12428260, 0, 'http://manualsonline.com/manuals/mfg/ATT/EL52303.html', 'f372f607-f72e-4174-b0d0-88fc9e346137.pdf', 'TransIP', NULL, NULL),
(74, 34, 'CRL81212', 15910252, 0, 'http://manualsonline.com/manuals/mfg/ATT/CRL81212.html', 'aaeba5e0-3ccb-40e1-9bb1-06a9b403b8db.pdf', 'TransIP', NULL, NULL),
(75, 34, 'MS2025', 6497888, 0, 'http://manualsonline.com/manuals/mfg/ATT/MS2025.html', '14dce918-3537-42e1-9f36-8ee17d2e2f6f.pdf', 'TransIP', NULL, NULL),
(76, 32, 'CS6829', 14885481, 0, 'http://manualsonline.com/manuals/mfg/vtech_communications/CS6829.html', '6940dfad-1766-4bf4-ad21-62991029c38c.pdf', 'TransIP', NULL, NULL),
(77, 32, 'CS6649', 15352464, 0, 'http://manualsonline.com/manuals/mfg/vtech_communications/CS6649.html', 'c23be568-6f9a-4aa7-9c62-987438a9a6c0.pdf', 'TransIP', NULL, NULL),
(78, 27, 'MRW68ED1181', 1699302, 0, 'http://manualsonline.com/manuals/mfg/Sony/MRW68ED1181.html', '9a647875-2bd1-4e1a-beec-d88fb29c9cae.pdf', 'TransIP', NULL, NULL),
(79, 35, 'THQL1115AFP2', 3202308, 0, 'http://manualsonline.com/manuals/mfg/ge_appliances/THQL1115AFP2.html', '69a86d2e-bc34-4d46-a6df-07b21ea45115.pdf', 'TransIP', NULL, NULL),
(80, 36, 'L505-S5990', 15700592, 0, 'http://manualsonline.com/manuals/mfg/Toshiba/L505S5990.html', '8801dea4-ccae-46da-b1bd-1e220a08904b.pdf', 'TransIP', NULL, NULL),
(81, 36, 'S855-S5254', 60528, 0, 'http://manualsonline.com/manuals/mfg/Toshiba/S855S5254.html', '227ed048-e1cd-4d4a-9e6a-730ef128e8dd.pdf', 'TransIP', NULL, NULL),
(82, 26, 'QX410-S02', 10380487, 0, 'http://manualsonline.com/manuals/mfg/Samsung/QX410S02.html', '803f4050-98d4-43fa-83cf-08444221261f.pdf', 'TransIP', NULL, NULL),
(83, 37, 'M14x', 1269388, 0, 'http://manualsonline.com/manuals/mfg/Dell/M14x.html', '993929c4-a1b1-4fd1-9f4a-bbf89b4248a0.pdf', 'TransIP', NULL, NULL),
(84, 37, 'X15Z-10417ELS', 6225849, 0, 'http://manualsonline.com/manuals/mfg/Dell/X15Z10417ELS.html', '9f5cf24c-a7fe-4723-8786-75b1691a6dcd.pdf', 'TransIP', NULL, NULL),
(85, 38, 'SPFC-T901-DGFX-1', 2697749, 0, 'http://manualsonline.com/manuals/mfg/Fujitsu/SPFCT901DGFX1.html', 'b91b94cf-aa18-4f1a-8e76-fecc16f413ea.pdf', 'TransIP', NULL, NULL),
(86, 39, '03193SU', 3588384, 0, 'http://manualsonline.com/manuals/mfg/Lenovo/03193SU.html', '67f7e28c-8fb9-4f89-8318-eb7f9418eab2.pdf', 'TransIP', NULL, NULL),
(87, 39, '0679-AJU', 1426778, 0, 'http://manualsonline.com/manuals/mfg/Lenovo/0679AJU.html', '1c193f0d-4404-4098-a112-f2f8ad72a27a.pdf', 'TransIP', NULL, NULL),
(88, 39, '09143NU', 6050496, 0, 'http://manualsonline.com/manuals/mfg/Lenovo/09143NU.html', '26fa4862-dc22-401a-927c-a95c73d8fdf6.pdf', 'TransIP', NULL, NULL),
(89, 39, '067999U', 4487209, 0, 'http://manualsonline.com/manuals/mfg/Lenovo/067999U.html', 'cff366c8-5442-4efc-b99d-693d55f1b4e2.pdf', 'TransIP', NULL, NULL),
(90, 40, 'MC238LL/A', 4539511, 0, 'http://manualsonline.com/manuals/mfg/Apple/MC238LL/A.html', 'a25b68d4-23e7-4d78-b73f-5969f1e3c9c7.pdf', 'TransIP', NULL, NULL),
(91, 40, 'MC270LL/A', 2836706, 0, 'http://manualsonline.com/manuals/mfg/Apple/MC270LL/A.html', '8a8ffec3-c750-4771-9a08-83525dba897e.pdf', 'TransIP', NULL, NULL),
(92, 41, '528007', 768961, 0, 'http://manualsonline.com/manuals/mfg/Carl_Zeiss/528007.html', 'f3db6f2a-b2d1-4039-a935-ddc0bc399f23.pdf', 'TransIP', NULL, NULL),
(93, 42, 'TSN-82SV', 2112663, 0, 'http://manualsonline.com/manuals/mfg/Kowa/TSN82SV.html', 'a35dfaf0-1dd6-42aa-b569-b1c79a40529d.pdf', 'TransIP', NULL, NULL),
(94, 41, '528062', 406968, 0, 'http://manualsonline.com/manuals/mfg/Carl_Zeiss/528062.html', '5760176e-f433-4126-9913-4401f8d92c30.pdf', 'TransIP', NULL, NULL),
(95, 42, 'TSN-601', 347742, 0, 'http://manualsonline.com/manuals/mfg/Kowa/TSN601.html', 'eeb88a40-36f4-4669-a4da-335e81769642.pdf', 'TransIP', NULL, NULL),
(96, 42, 'TSN-661', 401006, 0, 'http://manualsonline.com/manuals/mfg/Kowa/TSN661.html', 'd70e9926-5fb9-4641-b0a4-0fb071f0ace6.pdf', 'TransIP', NULL, NULL),
(97, 41, '524516', 1531478, 0, 'http://manualsonline.com/manuals/mfg/Carl_Zeiss/524516.html', '4165b5b1-45f0-497e-9458-11ec69489b14.pdf', 'TransIP', NULL, NULL),
(98, 43, 'VSX-51', 8379102, 0, 'http://manualsonline.com/manuals/mfg/Pioneer/VSX51.html', '33952f5d-accb-49ba-96cf-d714b592a320.pdf', 'TransIP', NULL, NULL),
(99, 12, 'THR100H', 2124621, 0, 'http://manualsonline.com/manuals/mfg/Yamaha/THR100H.html', '3133f1cc-7207-4cd0-90a6-9428b7419c5a.pdf', 'TransIP', NULL, NULL),
(100, 12, 'HS8', 2528188, 0, 'http://manualsonline.com/manuals/mfg/Yamaha/HS8.html', 'd5eec3a1-0bc5-4e5d-aead-98ea82a656e4.pdf', 'TransIP', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_08_19_000000_create_failed_jobs_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2023_09_07_081733_create_brands_table', 1),
(4, '2023_09_07_081753_create_manuals_table', 1),
(5, '2024_09_25_093427_add_visits', 1),
(6, '2024_10_01_121657_ticket8', 1),
(7, '2024_10_02_083602_ticket15_add__catagories', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket8`
--

CREATE TABLE `ticket8` (
  `id` bigint UNSIGNED NOT NULL,
  `epic_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_catagory_id_foreign` (`catagory_id`);

--
-- Indexes for table `catagories`
--
ALTER TABLE `catagories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `manuals`
--
ALTER TABLE `manuals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manuals_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `ticket8`
--
ALTER TABLE `ticket8`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `catagories`
--
ALTER TABLE `catagories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manuals`
--
ALTER TABLE `manuals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket8`
--
ALTER TABLE `ticket8`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_catagory_id_foreign` FOREIGN KEY (`catagory_id`) REFERENCES `catagories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `manuals`
--
ALTER TABLE `manuals`
  ADD CONSTRAINT `manuals_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
