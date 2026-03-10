-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 10, 2026 at 10:37 PM
-- Server version: 8.4.7
-- PHP Version: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alemans_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `failed_attempts` int DEFAULT '0',
  `lock_until` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password_hash`, `failed_attempts`, `lock_until`, `created_at`) VALUES
(1, 'alemans_admin', '$2y$10$Oq1.DhTpYVOPygAhgqjjr.IGPXNb9qmInNpm2nawdWcOmb.pUGzIK', 0, NULL, '2026-02-19 10:20:48');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
CREATE TABLE IF NOT EXISTS `bookings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `safari_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adults` int UNSIGNED NOT NULL DEFAULT '1',
  `has_children` tinyint(1) NOT NULL DEFAULT '0',
  `children` int UNSIGNED DEFAULT '0',
  `arrival_date` date NOT NULL,
  `departure_date` date NOT NULL,
  `accommodation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transport` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `safari_id`, `full_name`, `email`, `phone`, `nationality`, `state`, `adults`, `has_children`, `children`, `arrival_date`, `departure_date`, `accommodation`, `transport`, `message`, `created_at`, `read`) VALUES
(1, 'taa-01', 'arfear', 'sfrge@sge.erfget', '1324314232435', 'United States of America (the)', '', 2, 1, 2, '2026-03-02', '2026-03-05', 'Luxury', 'Safari Van', 'sdsgbs', '2026-03-02 11:00:46', 1),
(2, 'taa-01', 'ser', 'allan@gmail.com', '0710971933', 'Iran (Islamic Republic of)', '', 2, 0, 0, '2026-03-03', '2026-03-28', 'Mid-range', 'Safari Van', 'safdgbv', '2026-03-02 11:01:22', 0),
(3, 'taa-01', 'ser', 'allan@gmail.com', '0710971933', 'Iran (Islamic Republic of)', '', 2, 0, 0, '2026-03-03', '2026-03-28', 'Mid-range', 'Safari Van', 'safdgbv', '2026-03-02 11:31:05', 1),
(4, 'taa-01', 'ser', 'allan@gmail.com', '0710971933', 'Iran (Islamic Republic of)', '', 2, 0, 0, '2026-03-03', '2026-03-28', 'Mid-range', 'Safari Van', 'safdgbv', '2026-03-02 11:32:12', 0),
(5, 'taa-01', 'ser', 'allan@gmail.com', '0710971933', 'Iran (Islamic Republic of)', '', 2, 0, 0, '2026-03-03', '2026-03-28', 'Mid-range', 'Safari Van', 'safdgbv', '2026-03-02 11:35:26', 0),
(6, 'taa-01', 'ser', 'allan@gmail.com', '0710971933', 'Iran (Islamic Republic of)', '', 2, 0, 0, '2026-03-03', '2026-03-28', 'Mid-range', 'Safari Van', 'safdgbv', '2026-03-02 11:36:03', 0),
(7, 'taa-01', 'awf', 'adf@efvg.egb', '08870418742', 'Bulgaria', '', 2, 0, 0, '2026-03-20', '2026-03-26', 'Mid-range', '4x4 Land Cruiser', 'aefvgb', '2026-03-02 11:37:09', 0),
(8, 'taa-01', 'awf', 'adf@efvg.egb', '08870418742', 'Bulgaria', '', 2, 0, 0, '2026-03-20', '2026-03-26', 'Mid-range', '4x4 Land Cruiser', 'aefvgb', '2026-03-02 11:39:10', 1),
(9, 'taa-01', 'awf', 'adf@efvg.egb', '08870418742', 'Bulgaria', '', 2, 0, 0, '2026-03-20', '2026-03-26', 'Mid-range', '4x4 Land Cruiser', 'aefvgb', '2026-03-02 11:39:51', 1),
(10, 'taa-01', 'awf', 'adf@efvg.egb', '08870418742', 'Bulgaria', '', 2, 0, 0, '2026-03-20', '2026-03-26', 'Mid-range', '4x4 Land Cruiser', 'aefvgb', '2026-03-02 11:44:38', 1),
(11, 'taa-01', 'awf', 'allansharad7@gmail.com', '08870418742', 'Bulgaria', '', 2, 0, 0, '2026-03-20', '2026-03-26', 'Mid-range', '4x4 Land Cruiser', 'aefvgb', '2026-03-02 11:46:51', 1),
(12, 'taa-01', 'awf', 'allansharad7@gmail.com', '08870418742', 'Bulgaria', '', 2, 0, 0, '2026-03-20', '2026-03-26', 'Mid-range', '4x4 Land Cruiser', 'aefvgb', '2026-03-02 11:52:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `fk_categories_country` (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `country_id`) VALUES
(1, 'Kenya Popular Safaris', 1),
(2, 'Kenya Excursions', 1),
(3, 'Kenya Budget Safaris', 1),
(4, 'Kenya Luxury Safaris', 1),
(5, 'Extreme Challenge Adventure Safaris', 1),
(6, 'Safaris Across East Africa', 1),
(7, 'Kenya Flying Safaris', 1),
(8, 'Kenya Cultural Experience and Sports Safaris', 1),
(9, 'PHOTOGRAPHIC AND SCENERY SAFARIS', 1),
(10, 'Balloon Safaris', 1),
(11, 'Uganda Popular Safaris', 2),
(12, 'Uganda Balloon Safaris', 2),
(13, 'Uganda Flying Safaris', 2),
(14, 'Uganda Cultural and Sports Safaris', 2),
(15, 'Uganda Extreme Safaris', 2),
(16, 'Uganda Photographic & Scenery Safaris', 2),
(17, 'Uganda Excursions', 2),
(18, 'Uganda Top Requested Safaris', 2),
(19, 'Uganda Budget Safaris', 2),
(20, 'Uganda Luxury Safaris', 2),
(21, 'Rwanda Excursions', 4),
(22, 'Rwanda Budget Safaris', 4),
(23, 'Rwanda Luxury Safaris', 4),
(24, 'Rwanda Flying Safaris', 4),
(25, 'Excursions From Zanzibar', 5),
(26, 'Zanzibar Budget Safaris', 5),
(27, 'Tanzania Safari Excursions', 3),
(28, 'Tanzania Top Requested Safaris', 3),
(29, 'Tanzania Budget Safaris', 3),
(30, 'Tanzania Luxury Safaris', 3),
(31, 'Tanzania Birding Destinations', 3);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'Kenya'),
(4, 'Rwanda'),
(3, 'Tanzania'),
(2, 'Uganda'),
(5, 'Zanzibar');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `section` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `footer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `display_order` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_section` (`section`),
  KEY `idx_active` (`is_active`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `section`, `title`, `description`, `footer_name`, `filename`, `original_name`, `mime_type`, `is_active`, `display_order`, `created_at`) VALUES
(1, 'ertg', 'efgtv', 'estg', 'etg', '3b61fcf4790ba34c417b49d5dcfe7fa5.pdf', 'Portfolio For Empanelment- Moshe & Co.-1.pdf', 'application/pdf', 1, 0, '2026-02-27 20:56:18');

-- --------------------------------------------------------

--
-- Table structure for table `journals`
--

DROP TABLE IF EXISTS `journals`;
CREATE TABLE IF NOT EXISTS `journals` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` text COLLATE utf8mb4_unicode_ci,
  `author` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT 'Aleman''s Team',
  `read_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `journals`
--

INSERT INTO `journals` (`id`, `title`, `slug`, `excerpt`, `content`, `destination`, `date`, `image_url`, `author`, `read_time`, `created_at`, `updated_at`) VALUES
(1, 'Weekend at nairobi national park', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vestibulum nulla at tellus egestas bibendum. Suspendisse lacinia arcu eget est iaculis tristique. Aenean nulla est, iaculis aliquet mattis...', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vestibulum nulla at tellus egestas bibendum. Suspendisse lacinia arcu eget est iaculis tristique. Aenean nulla est, iaculis aliquet mattis ac, accumsan eget massa. Morbi nec est venenatis, consectetur nisi ac, fringilla sapien. Sed nec dolor vel purus gravida aliquet. Aliquam ac fermentum nibh. Vivamus id lacus ante. Mauris nec lacus tellus. Curabitur lacinia pharetra ultrices. Curabitur vulputate faucibus mauris, at iaculis ipsum dictum vitae. Vivamus sollicitudin, eros et viverra tristique, diam quam sollicitudin erat, in vestibulum erat est et leo.\n\nDonec congue ut ipsum non congue. Nunc tristique sollicitudin felis, sit amet placerat tellus sodales sed. Aliquam sapien mauris, pretium sed nisl id, ullamcorper ornare velit. Maecenas eu scelerisque leo. Vivamus suscipit ac mi quis ultricies. Etiam finibus enim ipsum, eget bibendum lacus tempor ac. Sed justo ipsum, congue quis felis eget, mollis lacinia urna. Suspendisse rutrum auctor nibh ac scelerisque. Praesent non lacus vitae elit tempus facilisis. Vivamus nec venenatis ipsum. Donec mi lorem, condimentum eget sem eu, auctor ornare neque. Duis sit amet condimentum ex. Suspendisse potenti.', 'Kenya, Nairobi National Park', '2026-02-25', '/uploads/69a54113e5f9a.jpg', 'Amos Pauli', '1 min read', '2026-03-02 07:49:39', '2026-03-02 09:25:48'),
(3, 'df', NULL, 'Object { id: 2, title: \"dsfv\", excerpt: \"asfvgb aegtbr\", content: \"asfvgb aegtbr\", destination: \"safv\", date: \"2026-02-24\", imageUrl: \"/uploads/69a5453cd565e.png\", author: \"Aleman\'s Team\", readTime: \"...', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vestibulum nulla at tellus egestas bibendum. Suspendisse lacinia arcu eget est iaculis tristique. Aenean nulla est, iaculis aliquet mattis ac, accumsan eget massa. Morbi nec est venenatis, consectetur nisi ac, fringilla sapien. Sed nec dolor vel purus gravida aliquet. Aliquam ac fermentum nibh. Vivamus id lacus ante. Mauris nec lacus tellus. Curabitur lacinia pharetra ultrices. Curabitur vulputate faucibus mauris, at iaculis ipsum dictum vitae. Vivamus sollicitudin, eros et viverra tristique, diam quam sollicitudin erat, in vestibulum erat est et leo.\n\nDonec congue ut ipsum non congue. Nunc tristique sollicitudin felis, sit amet placerat tellus sodales sed. Aliquam sapien mauris, pretium sed nisl id, ullamcorper ornare velit. Maecenas eu scelerisque leo. Vivamus suscipit ac mi quis ultricies. Etiam finibus enim ipsum, eget bibendum lacus tempor ac. Sed justo ipsum, congue quis felis eget, mollis lacinia urna. Suspendisse rutrum auctor nibh ac scelerisque. Praesent non lacus vitae elit tempus facilisis. Vivamus nec venenatis ipsum. Donec mi lorem, condimentum eget sem eu, auctor ornare neque. Duis sit amet condimentum ex. Suspendisse potenti. ', 'sdfb', '2026-03-03', '/uploads/69a5468d88f6e.jpg', 'Aleman\'sasf Team', '1 min read', '2026-03-02 08:13:01', '2026-03-02 09:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int DEFAULT NULL,
  `rating` float NOT NULL,
  `destination` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `age`, `rating`, `destination`, `comment`, `date`, `is_active`, `created_at`) VALUES
(1, 'Test svfv', 23, 5, 'Uganda Adventure', 'great studff sdfvsegv sergteg', NULL, 1, '2026-03-02 08:33:37'),
(2, 'wer', 22, 5, 'Rwanda Gorillas', 'wqrfevavf aewrtfvg ertgvb', 'dfv', 1, '2026-03-02 08:37:11'),
(4, 'awrfa', 60, 5, 'Rwanda Gorillas', 'Whoa it works!', 'April 2026', 1, '2026-03-02 09:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `safaris`
--

DROP TABLE IF EXISTS `safaris`;
CREATE TABLE IF NOT EXISTS `safaris` (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destination` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `duration_label` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_from` int DEFAULT NULL,
  `price_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subcategory_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subcategory_id` (`subcategory_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `safaris`
--

INSERT INTO `safaris` (`id`, `slug`, `title`, `destination`, `description`, `duration_label`, `currency`, `price_from`, `price_note`, `subcategory_id`) VALUES
('kaa-001', '3-days-maasai-mara', 'Maasai Mara Safari', 'Masai Mara', 'A classic short safari covering Kenya\'s most famous reserve.', '3 Days / 2 Nights', 'USD', 650, 'Per person sharing', 1),
('KAA-002', '6-day-amboseli-lake-naivasha-maasai-mara', 'AMBOSELI - LAKE NAIVASHA - NAKURU- MAASAI MARA SAFARI', 'Amboseli, Lake Naivasha, Nakuru, Maasai Mara', 'A 6-day safari covering Amboseli, Lake Naivasha, Lake Nakuru, and Maasai Mara National Reserves. Full board at Sentrim/ Kibo / Kilimanjaro amboseli and Pelican/ Sentrim Naivasha and Senrim/ Ol Moran / Mara leisure in Mara.', '6 Days', NULL, NULL, NULL, 1),
('KAA-003', '4-day-lake-nakuru-lake-naivasha-maasai-mara-safari', 'LAKE NAKURU - LAKE NAIVASHA - MASAI MARA SAFARI', 'Amboseli, Lake Naivasha, Nakuru, Maasai Mara, Samburu', 'A 4-day safari covering Lake Nakuru, Lake Naivasha, and Maasai Mara National Reserves. Full board at Sentrim/ Kibo / Kilimanjaro amboseli and Pelican/ Sentrim Naivasha and Senrim/ Ol Moran / Mara leisure in Mara. Accommodations at Sentrim / Pelican Nakuru or Ol moran /Sentrim/ Mara Leisure in Mara', '4 Days', NULL, NULL, NULL, 1),
('KAA-004', '3-day-tsavo-east-and-west-amboseli-maasai-mara-safari', 'Tsavo East & West - Amboseli National Park', 'Samburu, Amboseli, Maasai Mara', 'A 3-day safari covering Tsavo East & West and Amboseli National Parks.', '3 Days', NULL, NULL, NULL, 1),
('KAA-005', '2-day-amboseli-national-park-safari', 'AMBOSELI NATIONAL PARK SAFARI', 'Amboseli', 'A 2-day safari to Amboseli National Park, known for its large elephant herds and stunning views of Mount Kilimanjaro.', '2 Days', NULL, NULL, NULL, 1),
('KAA-006', '1-day-lake-nakuru-national-park-safari', 'Lake Nakuru National Park', 'Lake Nakuru National Park', 'The great Rift Valley stretches from Ethiopia across Kenya to Tanzania. I chain of eight lakes, Lake Nakuru being one of the most famous The Lake is only a few kilometers away from Nakuru, Kenya\'s 3d largest town 160 km west of Nairobi. you will descend the escarpment into the dramatic landscape of the scenic Rift. You will be treated to an extensive tour of the park, with lunch being served in the park. The tour will focus on the bewildering spectacle of a million flamingos and the variety of wildlife with which the park abounds. Here, you will be treated o a melody of songs from a wide variety of birds. Drive back to Nairobi.', '1 Day', NULL, NULL, NULL, 1),
('KAA-007', '1-day-lake-naivasha-and-crescent-island-safari', 'Lake Naivasha and Crescent Island', 'Lake Naivasha, Crescent Island', 'Your drive takes you down the escarpment and along the floor of the Rift Valley to the Lake Naivasha. Here successful vineyards produce much of Kenya’s wine, have been established. After a guided tour, a buffet lunch consisting of local produce and wine beside the lake, a two hour boat ride takes you to a nearby island where you walk amongst the plains game and enjoy the bird life. Return to Nairobi after tea arriving in the early evening.', '1 Day', NULL, NULL, NULL, 1),
('KAA-008', '6-days-mount-kenya-hiking-sirimon-out-chogoria-route', 'MT. Kenya Hiking: SIRIMON OUT CHOGORIA ROUTE', 'Mount Kenya', 'A 5-day hiking adventure on Mount Kenya via the Sirimon and Chogoria routes.', '6 Days', NULL, NULL, NULL, 2),
('KAA-009', '4-day-mount-kenya-hiking-sirimon-route-safari', 'MOUNT KENYA HIKING: SIRIMON ROUTE', 'Mount Kenya, , Amboseli, , Maasai Mara', 'A 4-day hiking adventure on Mount Kenya via the Sirimon route.', '4 Days', NULL, NULL, NULL, 2),
('KAA-010', '3-day-white-water-rafting-and-kayaking', 'White water Rafting and Kayaking', 'Sagana', 'A 3-day adventure combining white water rafting and kayaking on the Tana River.', '3 Days', NULL, NULL, NULL, 2),
('KAA-011', '1-day-samburu-national-reserve-safari', 'Shimoni, Kisite, Wasini and Chale Islands', 'Shimoni, Kisite Marine National Park, Wasini Island, Chale Island', 'These islands are tucked away off the tourist beat and offer secluded resorts. Shimoni is the famous haunt for Diving and deep sea big-game fishing. The Shimoni caves were an old slave town, the Kisite Marine National Park consists of 4 reef islets hosting colorful sea life, and Wasini Island is an old Arab village renowned for its historical monuments and tombs.', '1 Day', NULL, NULL, NULL, 3),
('KAA-012', '1-day-lamu-tour', 'Lamu', 'Lamu', '{\"intro\": \"This is the oldest Kenyan city and one of the earliest Arab settlements along the coast, Lamu has preserved its architecture and a tempo reminiscent of the 18th century. The ambience is maintained by the absence of motor vehicles. Donkeys and dhows are still the common mode of transport. Skilled Lamu craftsmen create ornate doors and Arab chests which contribute to Lamu\\u2019s unique identity.\", \"sections\": [{\"title\": \"Places of interest in Lamu\", \"items\": [{\"title\": \"Lamu Fort\", \"content\": \"Built between 1813 and 1821 in the southern corner of the old stone town. The fort is a massive multi-storey building with a central courtyard which has become an image of the Lamu community.\"}, {\"title\": \"Lamu Museum\", \"content\": \"Originally used by the British colonial government. It houses collections of ethnographic materials from the Swahili, Orma and Pokomo ethnic groups.\"}, {\"title\": \"Kiunga Marine Park\", \"content\": \"Also known as the \\u2018Enchanted underwater world\\u2019, comprising offshore islands and coral reefs along the Lamu Archipelago.\"}]}]}', '1 Day', NULL, NULL, NULL, 3),
('KAA-013', 'kaa-01-nairobi-city-tour', 'Nairobi City Tour', 'Nairobi', 'Take a guided tour of the city to visit the principal landmarks including Capitol Hill, National Museum with its paleontology hall, Snake Park, Railway Museum and City Market.', '3 Hours', NULL, NULL, NULL, 4),
('KAA-014', 'kaa-02-karen-blixen-giraffe-manor-ostrich-park', 'Karen Blixen, Giraffe Manor and Ostrich Park', 'Nairobi', 'Visit the home of former coffee farmer Karen Blixen, now preserved as a museum. Proceed to the Giraffe Manor where you can feed rare Rothschild giraffe. End the tour with a visit to the Ostrich Park.', '4 Hours', NULL, NULL, NULL, 4),
('KAA-015', 'kaa-03-bomas-of-kenya', 'Bomas of Kenya', 'Nairobi', 'Enjoy a cross-section of folk dances from various tribes in the country. Experience the culture as depicted by the recreated African villages with the chance to buy local handicrafts.', '3 Hours (Upon Request)', NULL, NULL, NULL, 4),
('KAA-016', 'kaa-04-nairobi-national-park', 'Nairobi National Park', 'Nairobi', 'Approximately 8 kilometers from the city centre, enter the Nairobi National Park to view lions, cheetahs, buffaloes, impala, giraffes and ostriches roaming in untouched savannah and indigenous forest.', '4 Hours', NULL, NULL, NULL, 4),
('KAA-017', 'kaa-05-nairobi-by-night', 'Nairobi by Night', 'Nairobi', 'Dinner at a Brazilian style restaurant offering exotic grilled meat such as crocodile, zebra and chicken dishes, all roasted on a huge wood fire. Includes nightclub or casino visit.', 'Night Experience', NULL, NULL, NULL, 4),
('KAA-018', 'kaa-06-carnivore-experience', 'Carnivore Experience', 'Nairobi', 'Guaranteed daily at 12.30pm and 7.00pm. Carnivore offers a variety of meat served in one meal including exotic and barbecue dishes.', 'Lunch or Dinner', NULL, NULL, NULL, 4),
('KAA-019', 'kaa-07-lake-naivasha-crescent-island', 'Lake Naivasha and Crescent Island', 'Lake Naivasha', 'Drive down the escarpment to Lake Naivasha. After a guided tour and buffet lunch beside the lake, enjoy a two-hour boat ride to Crescent Island to walk among plains game and birdlife.', '1 Day', NULL, NULL, NULL, 4),
('KAA-020', 'kaa-08-lake-nakuru', 'Lake Nakuru National Park', 'Lake Nakuru', 'Descend the escarpment into dramatic landscapes en route to Lake Nakuru, famous for flamingos and wildlife. Full park tour with lunch served inside the park.', '1 Day', NULL, NULL, NULL, 4),
('KAA-021', 'kaa-09-solio-ranch-rhino', 'Solio Ranch – Rhino', 'Nyeri / Solio', 'Drive through Kikuyu countryside to Outspan/Aberdare/Mt. Kenya Guest House. Next morning visit Solio Ranch, a unique sanctuary for black and white rhinos, lions, cheetahs and plains game. Picnic lunch included.', '1.5 Days', NULL, NULL, NULL, 4),
('KAA-022', 'kaa-10-mombasa-city-tour', '1 Day Mombasa City Tour', 'Mombasa', 'Take a guided city tour to visit principal landmarks including Akamba wood carving Village, a Hindu temple, Fort Jesus Museum, Old Town, Vegetable market and Biashara Street for shopping.', '1 Day', NULL, NULL, NULL, 5),
('KAA-023', 'kaa-11-shimba-hills', '1 Day Shimba Hills Tour', 'Shimba Hills', 'Situated 40 Kms from Mombasa drive past coconut, cashew nut and other plantations to Shimba Hills Reserve to view, amongst other animals, the rare sable and roan antelope. Lunch at a magnificent Lodge.', '1 Day', NULL, NULL, NULL, 5),
('KAA-024', '1-day-malindi-and-gedi-ruins', '1 Day Malindi and Gedi Ruins', 'Malindi / Gedi', 'Drive across the new Mtwapa and Kilifi bridges to visit the Gedi ruins. Continue to Malindi and view Marine life in a glass bottom boat at the Marine Park. After lunch in a local restaurant visit the snake farm and the falconry. En route to Mombasa have an optional stop at a local village.', '1 Day', 'USD', 0, '', 5),
('KAA-025', 'kaa-13-tamarind-dhow-dinner', 'Tamarind Dhow Dinner', 'Mombasa', 'A romantic Dhow Sundowner Cruise along the picturesque Island of Mombasa starts off an enchanting evening not to be missed. After docking at a private jetty, proceed to Fort Jesus for a sound-and-light presentation of the turbulent history of the East African Coast. A candle-lit dinner is served within the fortress by waiters in Portuguese attire.', 'Evening Experience', NULL, NULL, NULL, 5),
('KAA-026', 'kaa-14-tsavo-east-day-trip', '1 Day Tsavo National Park', 'Tsavo East', 'Early morning drive 100 Km inland to Tsavo East National Park. Enter the park and start viewing game, stop at Aruba Dam en route to a lodge for lunch. After another game drive, return to Mombasa.', '1 Day', NULL, NULL, NULL, 5),
('KAA-027', 'kaa-15-tsavo-east-2-days', '2 Days Tsavo East', 'Tsavo East', 'A two-day excursion to Tsavo East National Park including game drives and overnight accommodation at a safari lodge.', '2 Days', NULL, NULL, NULL, 5),
('KAA-028', 'kaa-16-tsavo-amboseli-3-days', '3 Days Tsavo East & West - Amboseli National Park', 'Tsavo & Amboseli', 'A three-day excursion to Tsavo East/West and Amboseli National Parks including game drives and overnight accommodation at safari lodges.', '3 Days', NULL, NULL, NULL, 5),
('KAA-029', 'kaa-17-kiwayuu-kipungani', 'Kiwayuu / Kipungani Islands (Upon Request)', 'Kiwayuu / Kipungani', 'A choice of two get-away-from-it-all beach hideaways. Both are small and intimate with personalized service and excellent cuisine. Access is by air only from Nairobi or Mombasa. Full board at Kiwayuu Lodge.', '2 Days', NULL, NULL, NULL, 5),
('KAA-030', 'kaa-18-lamu-island', 'Lamu Island (Upon Request)', 'Lamu', 'This is Kenya\'s oldest living town with little change in appearance and character. Access is by boat or via the airstrip in nearby Manda Island. Places of interest include Swahili House Museum, Lamu Fort, Donkey Sanctuary, The beach, Matondoni Village, Shela Village, and Dhow trips. Accommodation options upon request.', '2 Days', NULL, NULL, NULL, 5),
('KAA-031', 'kaa-19-zanzibar-island', '3 Days Zanzibar Island (Upon Request)', 'Zanzibar', 'Day 1: Fly via Mombasa to Zanzibar. Afternoon spice tour visiting clove plantations.\nDay 2: Morning tour of Stone Town including market, Sultan\'s Palace and Museum. Afternoon boat trip for swimming and snorkeling.\nDay 3: Guided shopping trip before transfer to airport. Accommodation upon request.', '3 Days', NULL, NULL, NULL, 5),
('KAA-032', 'KAA-032-amboseli-2-days', 'AMBOSELI NATIONAL PARK', 'Amboseli', 'DAY 1 NAIROBI - AMBOSELI: Drive south through open ranch country leading deep into Maasai land. Enter Amboseli Park and proceed to lodge for lunch, game drive and overnight [250 kms 4hrs]. Full board at the camp. DAY 2 AMBOSELI - NAIROBI: Take an early morning game drive before clouds could shroud the snow capped summit of Kilimanjaro providing a magnificent backdrop of wild animals. After breakfast return to Nairobi.', '2 Days', NULL, NULL, NULL, 6),
('KAA-033', 'KAA-033-hemingway-trail-3-days', 'THE HEMINGWAY TRAIL - MAASAI MARA', 'Maasai Mara', 'This three-day safari adventure begins with a scenic drive from Nairobi through the Great Rift Valley, stopping for lunch in Narok before arriving at the Maasai Mara Game Reserve in the late afternoon. The second day is dedicated entirely to exploring the reserve\'s famous grasslands, offering opportunities to view abundant wildlife such as black-maned lions, leopards, cheetahs, and elephants. On the final day, the tour departs after breakfast for the return journey to Nairobi, enjoying a picnic lunch en route and arriving back in the city in the late evening.', '3 Days', NULL, NULL, NULL, 6),
('KAA-034', 'KAA-034-born-free-samburu-3-days', 'THE BORN FREE SAMBURU SAFARI', 'Samburu', 'This three-day excursion heads north to the semi-desert region of Samburu, crossing the equator to reach a lodge surrounded by acacia woodland and natural springs. The second day features full-day game viewing along the riverbanks, where doum palms provide a scenic backdrop for spotting big game. The trip concludes on the third day with a departure after a hearty breakfast, returning to Nairobi before lunch.', '3 Days', NULL, NULL, NULL, 6),
('KAA-035', 'KAA-035-maasai-mara-nakuru-4-days', 'MAASAI MARA - NAKURU', 'Maasai Mara & Nakuru', 'This four-day safari starts with a drive from Nairobi to the Maasai Mara, featuring a picnic lunch and an afternoon game drive to spot the \'Big Five.\' After a second day dedicated to exploring the vast plains of the Mara, the tour moves to Lake Nakuru via Narok on day three, arriving in time for a game drive in the famous bird sanctuary. The trip concludes on the fourth day with an early morning game drive and breakfast before returning to Nairobi in the afternoon.', '4 Days', NULL, NULL, NULL, 6),
('KAA-036', 'KAA-036-mara-nakuru-bogoria-baringo-6-days', 'MASAI MARA - LAKES NAKURU - BOGORIA - BARINGO', 'Maasai Mara, Nakuru, Bogoria, Baringo', 'This six-day expedition begins with a journey through the Great Rift Valley to the Maasai Mara, where you will spend the first two days tracking diverse wildlife, including the Big Five. On day three, the tour travels toward Lake Nakuru, passing the scenic Lake Elementaita for panoramic views before an overnight stay in Nakuru. The fourth day moves further north to Lakes Bogoria and Baringo for an afternoon of exploring bird-rich habitats on foot, followed by a full fifth day in Baringo featuring a cliff-side bird walk, a boat ride on the freshwater lake, and cultural village visits. The safari concludes on day six with a return drive to Nairobi, arriving in the late afternoon.', '6 Days', NULL, NULL, NULL, 6),
('KAA-037', 'KAA-037-mara-nakuru-amboseli-6-days', 'MASAI MARA - LAKE NAKURU - AMBOSELI', 'Maasai Mara, Nakuru, Amboseli', 'This six-day safari kicks off with a drive from Nairobi to the Maasai Mara for an afternoon game drive, followed by a full second day exploring the reserve\'s abundant wildlife. On day three, the tour heads to Lake Nakuru National Park for a game drive focused on the \'Big Five\' and its famous flamingo populations. The journey continues on day four to Amboseli National Park, where guests enjoy game drives against the iconic backdrop of Mt. Kilimanjaro, with a full fifth day dedicated to further exploration of the park. The adventure wraps up on day six with a final early morning game drive before returning to Nairobi in the late afternoon.', '6 Days', NULL, NULL, NULL, 6),
('KAA-038', 'KAA-038-mara-nakuru-samburu-6-days', '6 Days MASAI MARA - LAKE NAKURU - SAMBURU', 'Maasai Mara, Nakuru, Samburu', 'DAY 1 NAIROBI - MASAI MARA: Leave Nairobi for Masai Mara Game Reserve, picnic lunch en-route. On arrival at the game reserve, proceed for a game drive en route to the camp in search of black maned lions, elephant, cheetah, buffalo, and other plains game. Full board at the camp. DAY 2 MASAI MARA: Full day at Maasai Mara on a full board at the Camp. DAY 3 NAKURU: Early morning game drive and leave for Nakuru National Park. Lunch en route. Afternoon game drive in this park famous for the big five and a million plus flamingos. Full board at your hotel. DAY 4 SAMBURU: After breakfast, leave for Samburu. Picnic lunch en-route. Afternoon game drive in the park with the possibility of seeing the big cats. Full board at the camp. DAY 5 SAMBURU: Full day in Samburu on a full board basis at the Camp. DAY 6 SAMBURU - NAIROBI: Early morning game drive and leave for Nairobi after breakfast, arriving late in the afternoon.', '6 Days', NULL, NULL, NULL, 6),
('KAA-039', 'KAA-039-lake-turkana-special-8-days', 'LAKE TURKANA SPECIAL SAFARI', 'Lake Turkana', 'This eight-day expedition ventures into Kenya\'s rugged northern frontier, starting with a drive from Nairobi to Lake Baringo via the Great Rift Valley. On day two, the journey climbs toward Maralal to encounter the nomadic Samburu people, followed by a spectacular day three trek across ancient lava flows to reach the \'Jade Sea\' of Lake Turkana. Day four is spent at the Loiyangalani oasis, featuring a boat excursion to see crocodiles and a cultural visit to a Turkana Manyatta, before retracing the route back to Maralal on day five. The final leg of the safari transitions to the Samburu Game Reserve for two days of riverside game viewing along the Ewaso Ng\'iro, ultimately returning to Nairobi on day eight with a stop in Nanyuki.', '8 Days', NULL, NULL, NULL, 6),
('KAA-040', 'KAA-040-turkana-scenic-chalbi-desert-8-days', 'TURKANA SCENIC SAFARI via CHALBI DESERT', 'Lake Turkana, Chalbi Desert', 'This 8-day safari explores northern Kenya, starting in Nairobi and traveling through Samburu, Marsabit, Kalacha, Lake Turkana, and Maralal, before returning to Nairobi. The journey includes game drives in Samburu Game Reserve and Marsabit National Park, visits to unique natural features such as Lake Paradise, the Chalbi Desert, and Thompson Falls, and scenic drives past coffee and tea plantations with views of Mt. Kenya. Cultural highlights include visits to the Boran tribe\'s singing wells and the El Molo community on the shores of Lake Turkana. The itinerary balances wildlife viewing, cultural experiences, and leisure time, with full-board camping accommodations throughout the safari.', '8 Days', NULL, NULL, NULL, 6),
('KAA-041', 'KAA-041-best-of-kenya-landscape-9-days', 'BEST OF KENYA LANDSCAPE TOUR', 'Kenya', 'This 9-day safari explores western Kenya and the Rift Valley, starting and ending in Nairobi. The journey includes outdoor adventure, wildlife viewing, cultural experiences, and scenic landscapes. Highlights include trekking at Hell’s Gate National Park, visits to Kariandusi and Hyrax Hill prehistoric sites, and game drives in Lake Nakuru National Park. The safari continues through Lakes Bogoria and Baringo, the Cherangani Hills, and Saiwa Swamp, home to the rare Sitatunga antelope. Further exploration takes you to Mount Elgon, including a visit to the Kitum caves, and the biodiversity-rich Kakamega Forest. Cultural experiences include visiting the Tabaka soapstone carving center near Kisii. The safari concludes with extensive game drives in the Maasai Mara Game Reserve, including a full day with a picnic lunch, before returning to Nairobi.', '9 Days', NULL, NULL, NULL, 6),
('KAA-042', 'KAA-042-amboseli-2-days', 'Amboseli National Park', 'Amboseli National Park', 'A 2-day Amboseli safari featuring scenic drives through Maasai land, wildlife game drives with views of Mount Kilimanjaro, overnight stay in Amboseli, and return to Nairobi after an early morning game drive.', '2 Days', NULL, NULL, NULL, 7),
('KAA-043', 'KAA-043-tree-hotels-2-days', 'TREE HOTELS', 'Aberdares', 'A 2-day Aberdares safari with a scenic drive through central Kenya, lunch at Aberdare Country Club or Outspan, afternoon game viewing in Aberdares National Park, overnight at a tree hotel, and return to Nairobi the following morning.', '2 Days', NULL, NULL, NULL, 7),
('KAA-044', 'KAA-044-amboseli-tsavo-mombasa-3-days', 'AMBOSELI - TSAVO - MOMBASA', 'Amboseli, Tsavo, Mombasa', 'A 3-day safari starting with game viewing in Amboseli beneath Mount Kilimanjaro, followed by exploration of Tsavo West including Mzima Springs, and ending with a scenic drive to Mombasa after breakfast.', '3 Days', NULL, NULL, NULL, 7),
('KAA-045', 'KAA-045-masai-mara-3-days', 'MASAI MARA', 'Masai Mara', 'A 3-day Masai Mara safari with arrival and game drive on Day 1, a full day of wildlife viewing on the Mara plains on Day 2, and return to Nairobi by midday on Day 3.', '3 Days', NULL, NULL, NULL, 7),
('KAA-046', 'KAA-046-born-free-safari-samburu-3-days', 'THE BORN FREE SAFARI SAMBURU', 'Samburu', 'A 3-day Born Free Safari in Samburu featuring an early morning departure from Nairobi, game viewing along the riverbanks on Day 2, and return to Nairobi on Day 3 after breakfast.', '3 Days', NULL, NULL, NULL, 7),
('KAA-047', 'KAA-047-lake-nakuru-naivasha-masai-mara-4-days', 'LAKE NAKURU - LAKE NAIVASHA - MASAI MARA', 'Lake Nakuru, Lake Naivasha, Masai Mara', 'A 4-day safari visiting Lake Nakuru for flamingos and rhinos, Lake Naivasha for a boat ride among hippos and birds, and Masai Mara for abundant wildlife viewing, with scenic drives and game drives throughout.', '4 Days', NULL, NULL, NULL, 7),
('KAA-048', 'KAA-048-amboseli-tsavo-taita-hills-4-days', 'AMBOSELI - TSAVO - TAITA HILLS', 'Amboseli, Tsavo, Taita Hills', 'A 4-day safari starting with game viewing in Amboseli beneath Mount Kilimanjaro, followed by exploration of Tsavo West including Mzima Springs, and ending with a scenic drive to Mombasa via Taita Hills after breakfast.', '4 Days', NULL, NULL, NULL, 7),
('KAA-049', 'KAA-049-tree-hotel-samburu-mt-kenya-5-days', 'TREE HOTEL-SAMBURU-MT KENYA', 'Aberdares, Samburu, Mt Kenya, Nairobi', 'A 5-day safari starting with a scenic drive to Aberdares and overnight at a tree hotel, followed by game viewing in Samburu, a visit to the cool slopes of Mt. Kenya, and return to Nairobi after breakfast on Day 5.', '5 Days', NULL, NULL, NULL, 7),
('KAA-050', 'KAA-050-amboseli-naivasha-nakuru-masai-mara-6-days', 'AMBOSELI - LAKE NAIVASHA - NAKURU - MASAI MARA', 'Amboseli, Lake Naivasha, Nakuru, Masai Mara', 'A 6-day safari starting with game viewing in Amboseli beneath Mount Kilimanjaro, followed by visits to Lake Naivasha and Lake Nakuru for bird watching and rhino viewing, and ending with abundant wildlife viewing in Masai Mara, with scenic drives and game drives throughout.', '6 Days', NULL, NULL, NULL, 7),
('KAA-051', 'KAA-051-samburu-nakuru-masai-mara-6-days', 'SAMBURU - NAKURU - MASAI MARA', 'Samburu, Nakuru, Masai Mara', 'A 6-day safari starting with game viewing in Samburu, followed by visits to Lake Nakuru for bird watching and rhino viewing, and ending with abundant wildlife viewing in Masai Mara, with scenic drives and game drives throughout.', '6 Days', NULL, NULL, NULL, 7),
('KAA-052', 'KAA-052-tree-hotel-samburu-nakuru-naivasha-masai-mara-6-days', 'TREE HOTEL - SAMBURU - NAKURU & NAIVASHA - MASAI MARA', 'Tree Hotel, Samburu, Nakuru, Naivasha, Masai Mara', 'A 6-day safari starting with a scenic drive to Aberdares and overnight at a tree hotel, followed by game viewing in Samburu, visits to Lake Nakuru and Lake Naivasha, and ending with abundant wildlife viewing in Masai Mara, with scenic drives and game drives throughout.', '6 Days', NULL, NULL, NULL, 7),
('KAA-053', 'KAA-053-masai-mara-nakuru-bogoria-baringo-6-days', 'MASAI MARA / LAKES NAKURU / BOGORIA / BARINGO', 'Masai Mara, Nakuru, Bogoria, Baringo', 'A 6-day safari starting with abundant wildlife viewing in Masai Mara, followed by visits to Lake Nakuru for bird watching and rhino viewing, Lake Bogoria for flamingos and hot springs, and ending with exploration of Lake Baringo, with scenic drives and game drives throughout.', '6 Days', NULL, NULL, NULL, 7),
('KAA-054', 'KAA-054-tree-hotel-samburu-mt-kenya-nakuru-masai-mara-8-days', 'TREE HOTEL - SAMBURU - MT. KENYA - NAKURU - MASAI MARA', 'Tree Hotel, Samburu, Mt Kenya, Nakuru, Masai Mara', 'An 8-day safari starting with a scenic drive to Aberdares and overnight at a tree hotel, followed by game viewing in Samburu, a visit to the cool slopes of Mt. Kenya, Lake Nakuru for bird watching and rhino viewing, and ending with abundant wildlife viewing in Masai Mara, with scenic drives and game drives throughout.', '8 Days', NULL, NULL, NULL, 7),
('KAA-055', 'KAA-055-rock-climbing-naivasha-3-days', 'Rock Climbing & Hiking Challenge', 'Hell\'s Gate National Park, Mt Longonot, Lake Naivasha', 'A three days\' rock climbing and hiking adventure safari in Kenya\'s Rift Valley. Experience the thrill of rock climbing in Hellsgate National park, hike Mt Longonot crater and cycle amongst wildlife in Hellsgate National park.', '3 Days', NULL, NULL, NULL, 8),
('KAA-056', 'KAA-056-Laikipia-4-days', 'Laikipia Adventure Safari', 'Laikipia Plateau', 'A four days\' adventure safari on Laikipia plateau involving game drives, cycling, trekking and canopy walk in Mt Kenya forest.', '4 Days', NULL, NULL, NULL, 8),
('KAA-057', 'KAA-057-sagana-3-days', 'Sagana White Water Rafting & Kayaking', 'Sagana', 'Three days of white water rafting and kayaking adventure safari in Sagana, central Kenya along the Tana River.', '3 Days', NULL, NULL, NULL, 8),
('KAA-058', 'KAA-058-biking-maasai-mara-4-days', 'Biking at Maasai Mara', 'Maasai Mara', 'Five days biking adventure safari in Maasai Mara National Reserve involving game drives and biking among wildlife.', '5 Days', NULL, NULL, NULL, 8),
('KAA-059', 'KAA-059-tri-adventure-challenge-10-days', 'Tri Adventure Challenge', 'Chogoria', 'Ten days tri adventure challenge safari involving hiking Mt Kenya, biking from Mt Kenya to Ol Pajeta conservancy and white water rafting and other water sports in Sagana.', '10 Days', NULL, NULL, NULL, 8),
('KAA-060', 'KAA-060-tri-adventure-challenge-10-days', 'Explore The Great Rift Valley', 'The Great Rift Valley', 'Eleven days adventure safari exploring the Great Rift Valley involving game drives, hiking, biking and bird watching.', '11 Days', NULL, NULL, NULL, 8),
('KAA-061', 'KAA-061-kenya-tanzania-11-days', 'KENYA / TANZANIA SAFARI', 'Kenya, Tanzania', 'A comprehensive safari exploring the best of Kenya and Tanzania including Amboseli, Samburu, Lake Nakuru, Nairobi, Lake Manyara, Serengeti and Ngorongoro Crater.', '11 Days', NULL, NULL, NULL, 9),
('KAA-062', 'KAA-062-maasai-mara-flying-safari-3-days', 'Maasai Mara', 'Maasai Mara', 'A three days flying safari exploring the best of Kenya\'s wildlife destinations including Maasai Mara National Reserve.', '3 Days', NULL, NULL, NULL, 10),
('KAA-063', 'KAA-063-amboseli-flying-safari-2-days', 'Amboseli', 'Amboseli', 'A two days flying safari exploring Amboseli National Park.', '2 Days', NULL, NULL, NULL, 10),
('KAA-064', 'KAA-064-maasai-mara-flying-safari-2-days', 'Maasai Mara', 'Maasai Mara', '', '2 Days', NULL, NULL, NULL, 10),
('KAA-065', 'KAA-065-samburu-flying-safari-3-days', 'Samburu', 'Samburu', 'A three days flying safari exploring Samburu National Reserve.', '3 Days', NULL, NULL, NULL, 10),
('KAA-066', 'KAA-066-lamu-flying-safari-2-days', 'Lamu', 'Lamu', 'Fly from Nairobi directly to Lamu island and stay for 2 or more nights. Spend the time exploring the old town of Lamu, relax on the beach or walk across the island to some of the villages such as Matondoni where the dhows are still built by hand. Overnight at a hotel in Lamu. Tours and excursions on Lamu may also be pre-booked at supplementary cost.', '2 Days', NULL, NULL, NULL, 10),
('KAA-067', 'KAA-067-amboseli-flying-safari-1-days', 'Amboseli', 'Amboseli', 'Transfer from your beach hotel to Mombasa Airport. It is about an hours flight directly to Amboseli. Weather permitting , enjoy fine views of Mt Kilimanjaro as the aircraft comes in to land. Morning and afternoon game viewing in the park with lunch at one of the lodges. Fly back to Mombasa late afternoon and onward transfer to your beach hotel.', '1 Day', NULL, NULL, NULL, 10),
('KAA-068', 'KAA-068-kenya-cultural-walking-safari-1-day', 'Walking Safari', 'Kenya', 'Walking Safari itinerary is organized according the client\'s request.', '1 Day', NULL, NULL, NULL, 11),
('KAA-069', 'KAA-069-kenya-cultural-camel-ride-safari-1-day', 'Camel Ride Safari', 'Mount Kenya', '5 nights 6-day trip through the wild and beautiful country just north of Mt. Kenya is an adventure in the true pioneering spirit and a tantalizing taste of Africa in the raw. The pace is leisurely, riding or walking with the camels during the morning. After picnic lunch there\'s time to relax or take a game viewing walk later in the afternoon. At the end of the day, there are welcome showers followed by dinner round the campfire. Accommodation at base camp is under canvas, while on safari, beds are provided under the stars. No riding skills are required as the camels are usually led, although a certain amount of walking is necessary. Start from Nairobi or the camel safari may be included as part of a longer safari.', '6 Days', NULL, NULL, NULL, 11),
('KAA-070', 'KAA-070-kenya-cultural-lunatic-express-safari-1-days', 'The Lunatic Express', 'Kenya', 'The Lunatic Express is a journey by train from Nairobi to Mombasa along the historic Uganda Railway, built between 1896 and 1901. The railway was dubbed the \'Lunatic Express\' because of the enormous cost in lives and money to build it through some of the most inhospitable country on earth. Today, the train journey is a fascinating experience, passing through small towns and villages, over impressive viaducts and through tunnels. The train has several classes of travel, from basic second class to first class with air-conditioned carriages and sleeper berths. Meals are served in the dining car, and there is a bar car for drinks and snacks. The journey takes about 12 hours, and it is possible to break the journey with overnight stops at various points along the route.', '1 Day', NULL, NULL, NULL, 11),
('KAA-071', 'KAA-071-kenya-cultural-lake-victoria-fishing-safari-1-day', 'Lake Victoria Fishing Safari', 'Kenya', 'This trip operates from Masai Mara. Lake Victoria, the world\'s second largest freshwater lake, is notable for its huge Nile Perch. Depart by light from from the Mara either at dawn or after breakfast. The fishing base is on Rusinga or Mfangano islands. The day is spent fishing by boat with breakfast, lunch, soft drinks and beer provided. Return to your Mara lodge or camp during the afternoon. Visitors may also stay overnight and extend the safari as desired. ', '1 Days', NULL, NULL, NULL, 11),
('KAA-072', 'KAA-072-kenya-cultural-horse-riding-safari-1-day', 'Horse Riding Safari', 'Kenya', 'Horse riding safaris are available in several parts of Kenya including the Masai Mara, Laikipia and Mount Kenya regions. These safaris offer a unique way to explore the diverse landscapes and wildlife of Kenya while enjoying the companionship of horses. Riders can expect to see a variety of wildlife including zebras, giraffes, antelopes, and sometimes even predators like lions and cheetahs from a safe distance. The pace of the safari can be adjusted to suit the riders\' experience levels, with options for leisurely rides or more challenging treks.', '1 Day', NULL, NULL, NULL, 11),
('KAA-073', 'KAA-073-kenya-cultural-sports-safaris', 'Sports Safaris', 'Kenya', 'Sports safaris in Kenya offer an exciting blend of adventure, endurance, and unique sporting experiences set against the country\'s spectacular natural landscapes. These safaris include mountain biking along the scenic slopes of Mount Kenya, participation in the annual Kenya Open Golf Tournament, and the renowned Lewa Marathon, where runners share the terrain with wildlife in a truly unforgettable test of stamina. Thrill-seekers can take part in the legendary Rhino Charge, an intense off-road 4x4 challenge involving extreme terrain such as cliffs, swamps, and rugged wilderness. Kenya also hosts the globally celebrated Safaricom Sevens rugby tournament, reflecting the country\'s strong international rugby standing, as well as the International Camel Derby held in Maralal, offering a distinctive sporting spectacle in the dry, sun-soaked landscapes of northern Kenya.', 'On Request', NULL, NULL, NULL, 11),
('KAA-074', 'KAA-074-kenya-cultural-water-sports-safari-1-day', 'Water Sports Safari', 'Mombasa', 'The waters of Kenya\'s coast is the main setting for water sports such as windsurfing, water skating, snorkeling, scuba diving, rowing, dhow safaris and deep sea fishing just beyond the coral reef viewing expeditions on request.', '1 Day', NULL, NULL, NULL, 11),
('KAA-075', 'KAA-075-kenya-cultural-cruises-safari-1-day', 'Cruise Ships', 'Mombasa', 'Mombasa is fast emerging as an important cruise ship centre. Flying safaris to distant wildlife parks and road safaris to distant wildlife parks and road safaris to the nearby parks of Tsavo and Amboseli are easily arranged. Day safaris to Lamu archipelago and deep sea fishing expeditions are also arranged for the cruise ship passengers. Mombasa is also the base to home ported cruise ships which offer services within the Indian Ocean cruise circuit.', '1 Day', NULL, NULL, NULL, 11),
('KAA-076', 'KAA-076-kenya-cultural-wedding-safari-1-day', 'Wedding Safari', 'Kenya', 'Many newly-weds have enjoyed a romantic honeymoon in Kenya, but why not go the whole hog and get married there too? We can make all the arrangements in advance for the ceremony and any additional extras such as photographer, wedding cake, bouquet or other celebrations. Weddings can take place at many of the beach hotels or other exotic locations by special arrangement.', '1 Day', NULL, NULL, NULL, 11),
('KAA-077', 'KAA-077-kenya-cultural-conference-safari-1-day', 'Conference Safari', 'Kenya', 'What could be a better and more fulfilling experience than holding your next business conference or seminar in a setting that is exactly right and which has everything it takes to organize a successful conference or seminar. Kenya is arguably the answer to this basic question.', '1 Day', NULL, NULL, NULL, 11),
('KAA-078', 'KAA-078-kenya-cultural-farm-and-ranch-safari-1-day', 'Farm and Ranch Safari', 'Kenya', 'Why not stay on one of Kenya\'s farms or ranches where wildlife often co-exists with domestic stock. Accommodation is in comfortable farm houses or log cabins with meals provided. Guests are usually hosted by the farm owners who also offer escorted walks, horse riding, game drives or guided tours of the working farm.', '1 Day', NULL, NULL, NULL, 11),
('KAA-079', 'KAA-079-kenya-cultural-car-hire-safari-1-day', 'Car Hire', 'Kenya', 'Self-drive or chauffer driven car is available from Nairobi or Mombasa. In addition to the normal range of car categories, we can offer Suzuki (2 seat) and Land cruiser (4-5 seat) 4-wheel drive vehicles. We can also offer one-way rental between Nairobi and Mombasa or vice-versa. Accommodation for self-drive itineraries may be pre-booked through our offices.', '1 Day', '', 0, '', 11),
('KAA-080', 'KAA-080-6-days-central-kenya-circuit', 'CENTRAL KENYA CIRCUIT', 'Central Kenya', 'This photographic safari takes you through some of Central Kenya\'s most scenic landscapes and wildlife-rich areas. Starting from Nairobi, you\'ll visit Lake Naivasha, Hell\'s Gate National Park, Mount Longonot, and Aberdare National Park, capturing stunning images of the diverse flora and fauna along the way.', '6 Days', NULL, NULL, NULL, 12),
('KAA-081', 'KAA-081-7-days-eastern-circuit', 'EASTERN CIRCUIT', 'Eastern Kenya', 'This photographic safari takes you through some of Eastern Kenya\'s most scenic landscapes and wildlife-rich areas. Starting from Nairobi, you\'ll visit Amboseli National Park, Tsavo East and West National Parks, and the Chyulu Hills, capturing stunning images of the diverse flora and fauna along the way.', '7 Days', NULL, NULL, NULL, 12),
('KAA-082', 'KAA-082-8-days-southern-kenya-circuit-trekking-and-wildlife', 'Southern Kenya Circuit (Trekking and Wildlife)', 'Southern Kenya', 'This photographic safari takes you through some of Southern Kenya\'s most scenic landscapes and wildlife-rich areas. Starting from Nairobi, you\'ll visit the Maasai Mara National Reserve, Lake Naivasha, Hell\'s Gate National Park, and Mount Longonot, capturing stunning images of the diverse flora and fauna along the way.', '8 Days', NULL, NULL, NULL, 12),
('KAA-083', 'KAA-083-9-days-kenya-coastal-circuit', 'KENYA COASTAL CIRCUIT', 'Kenya Coast', 'This photographic safari takes you through some of Kenya\'s most scenic coastal landscapes and wildlife-rich areas. Starting from Mombasa, you\'ll visit Diani Beach, Shimba Hills National Reserve, and Watamu Marine National Park, capturing stunning images of the diverse flora and fauna along the way.', '9 Days', NULL, NULL, NULL, 12),
('KAA-084', 'KAA-084-11-days-northern-kenya-circuit', 'NORTHERN KENYA CIRCUIT', 'Northern Kenya', 'This photographic safari takes you through some of Northern Kenya\'s most scenic landscapes and wildlife-rich areas. Starting from Nairobi, you\'ll visit Samburu National Reserve, Buffalo Springs National Reserve, and Mount Kulal, capturing stunning images of the diverse flora and fauna along the way.', '11 Days', NULL, NULL, NULL, 12),
('KAA-085', 'KAA-085-15-days-western-kenya-circuit', 'WESTERN KENYA CIRCUIT', 'Western Kenya', 'This photographic safari takes you through some of Western Kenya\'s most scenic landscapes and wildlife-rich areas. Starting from Nairobi, you\'ll visit Kakamega Forest, Ruma National Park, and Lake Victoria, capturing stunning images of the diverse flora and fauna along the way.', '15 Days', NULL, NULL, NULL, 12),
('KAA-086', 'KAA-086-kenya-balloon-safari-1-day', 'Masai Mara and Serengeti National parks', 'Kenya', 'Balloon Safaris are operated from all the major lodges and camps in the Masai Mara and Serengeti. It is an enthralling sight, as just before dawn, the balloons are inflated and prepared for flight. As the sun rises the balloon slowly lifts above the trees to catch the gentle early morning air current. Drifting silently a few hundred feet above the ground, reveals a new dimension to the landscape of the Mara and Serengeti. Marvel at herds of Wildebeest peacefully grazing on the still damp grass, while elephant and buffalo can be seen picking their way through the riveline forests. Look out for lion families perched haughtily on a knoll, surveying their domain. After about 1 hour flight, descend slowly to the open plain for an assisted landing. It is then time to relax as the sun warms the plain and the staff prepares a sumptuous al-fresco breakfast.', '1 Day', NULL, NULL, NULL, 13),
('KAA-087', 'KAA-087-kenya-amboseli-balloon-safari-1-day', 'Amboseli National Park', 'Amboseli National Park', 'Picture this – as you climb into the basket, the breeze gently starts to lift you up, the sun just starts to rise and you can feel it’s warmth on your face, cutting through the crisp clean air of Amboseli. You continue to ascend and slowly start to drift over the open wood savannah grasslands peppered with Acacia tortilis (Vachellia tortilis) trees through which a vast array of wild and majestic animals criss-cross. Across the vista, you see one side of the park crowned by the magical Mt. Kilimanjaro, the world’s highest free-standing mountain. And on the other side, the view is of lush green wetlands, open savannah grassland and Lake Amboseli. You continue to float over pristine wilderness until the time comes to descend and land, and you are whisked away for a delectable champagne breakfast – a perfect way to end an unforgettable day.', '1 Day', NULL, NULL, NULL, 13),
('UAA-001', 'UAA-001-gorilla-express-4-days', 'Gorilla Express Safari', 'Bwindi', 'A 4-day gorilla tracking safari to Bwindi Impenetrable National Park, offering the chance to encounter mountain gorillas in their natural habitat.', '4 Days', NULL, NULL, NULL, 14),
('UAA-002', 'UAA-002-great-apes-safari-7-days', 'The Great Apes Safari - Gorilla and Chimpanzee', 'Kibale, Queen Elizabeth, Bwindi, Lake Mburo', 'A comprehensive 7-day safari combining chimpanzee tracking in Kibale Forest and gorilla tracking in Bwindi, with game drives in Queen Elizabeth National Park and Lake Mburo.', '7 Days', NULL, NULL, NULL, 14),
('UAA-003', 'UAA-003-gorilla-express-5-days', 'Gorilla Express Safari - 5 Days', 'Bwindi', 'A 5-day gorilla tracking safari with transfers from Entebbe, offering a more relaxed pace with pre and post-tour accommodation.', '5 Days', NULL, NULL, NULL, 14),
('UAA-004', 'UAA-004-gorilla-thriller-7-days', 'Gorilla Thriller/Express - 7 Days', 'Bwindi, Lake Bunyonyi', 'A comprehensive 7-day gorilla safari from Nairobi, including two days of gorilla tracking and a visit to Lake Bunyonyi.', '7 Days', NULL, NULL, NULL, 14),
('UAA-005', 'UAA-005-murchison-falls-balloon', 'Hot Air Balloon Murchison Falls', 'Murchison Falls National Park', 'Balloon safaris in Uganda are a recently introduced tourist activity by the Uganda Wildlife Authority (UWA) in the Murchison Falls National Park. Hot air ballooning is handled by Dream Balloons who are certified by Uganda Civil Aviation Authority, National Environment Management Authority, Uganda Wildlife Authority and Uganda Communications Commission.', '1 Day', NULL, NULL, NULL, 15),
('UAA-006', 'UAA-006-queen-elizabeth-balloon', 'Queen Elizabeth National Park Balloon Safari', 'Queen Elizabeth National Park', 'Experience breathtaking views of Uganda\'s wildlife and landscapes with a sunrise hot air balloon safari over Queen Elizabeth National Park. Float above elephants, lions, hippos, antelopes and the scenic Rwenzori Mountains.', '1 Day', NULL, NULL, NULL, 15),
('UAA-007', 'UAA-007-luxury-flying-safari', 'Uganda Luxury Flying Safari', 'Entebbe, Murchison Falls, Queen Elizabeth, Bwindi', 'A flying safari gives you the opportunity to fly between each destination rather than by road, so you can spend more time enjoying game drives and experiencing luxury camps and lodges. This safari takes in Uganda\'s main National Parks that are linked easily by air.', 'Multi-Day', NULL, NULL, NULL, 16),
('UAA-008', 'UAA-008-bwindi-mgahinga-flying', 'Bwindi & Mgahinga Flying Safari', 'Bwindi, Mgahinga', 'Fly to Bwindi Impenetrable National Park and Mgahinga National Park via Kihihi & Kisoro Airstrips. One of the most thrilling experiences in Uganda is gorilla trekking. These destinations lie approximately 500 kilometers from Entebbe, requiring 10-hour drive. Take one-hour domestic flight instead.', 'Multi-Day', NULL, NULL, NULL, 16),
('UAA-009', 'UAA-009-cultural-experiences', 'Uganda Cultural Experiences', 'Various', 'Uganda is home to many indigenous communities that have preserved their unique cultures. Experience traditional villages, cultural festivals, crafts, cuisine, royal kingdoms, historical sites, music, dance and more.', 'Variable', NULL, NULL, NULL, 17),
('UAA-010', 'UAA-010-white-water-rafting', 'White Water Rafting the Nile - The Overnighter 45 Km', 'River Nile', 'Imagine camping on a secluded Island mid-river! This trip is undoubtedly the best way to experience the Nile. Rafting 45 Km in total, you will be exhilarated by the huge whitewater of day one. On day two we combine exciting rapids such as Nile Special and Mulalu with plenty of relaxation.', '2 Days', NULL, NULL, NULL, 18),
('UAA-011', 'UAA-011-photography-locations', 'Uganda Photography Locations', 'Various', 'Uganda offers diverse natural beauty, rich wildlife, and vibrant cultures for photographers. From mountain gorillas to stunning waterfalls, volcanic landscapes to bustling cities.', 'Variable', NULL, NULL, NULL, 19),
('UAA-012', 'UAA-012-uganda-excursion', 'Uganda Excursions', 'Various', 'Various day excursions available throughout Uganda. Content to be provided.', '1 Day', NULL, NULL, NULL, 20),
('UAA-013', 'UAA-013-uganda-day-trip', 'Uganda Day Trip', 'Various', 'Day trip options in Uganda. Content to be provided.', '1 Day', NULL, NULL, NULL, 20),
('UAA-014', 'UAA-014-top-requested-safari', 'Uganda Top Safari', 'Various', 'Content to be provided.', 'Various', NULL, NULL, NULL, 21),
('UAA-015', 'UAA-015-popular-safari', 'Popular Uganda Safari', 'Various', 'Content to be provided.', 'Various', NULL, NULL, NULL, 21),
('UAA-016', 'UAA-016-murchison-falls-3-days', 'Murchison Falls', 'Murchison Falls', 'A 3-day budget safari to Murchison Falls National Park, featuring game drives and a boat cruise to the breathtaking falls.', '3 Days', NULL, NULL, NULL, 22),
('UAA-017', 'UAA-017-queen-elizabeth-kibale-4-days', 'Queen Elizabeth - Kibale Forest', 'Queen Elizabeth, Kibale Forest', 'A 4-day budget safari combining Queen Elizabeth National Park and Kibale Forest for primate tracking.', '4 Days', NULL, NULL, NULL, 22),
('UAA-018', 'UAA-018-luxury-safari', 'Uganda Luxury Safari', 'Various', 'Content to be provided.', 'Various', NULL, NULL, NULL, 23),
('UAA-019', 'UAA-019-kenya-tanzania-11-days', 'Kenya / Tanzania Safari', 'Kenya, Tanzania, Uganda', 'An 11-day safari covering the best of Kenya and Tanzania, including tree hotels, Samburu, Lake Nakuru, Lake Manyara, Serengeti and Ngorongoro Crater.', '11 Days', NULL, NULL, NULL, 24),
('RAA-001', 'raa-001-kigali-city-tour', 'Kigali City Tour', 'Kigali', 'Visit Kigali Genocide Memorial, Kimironko Market, and enjoy ziplining or horse riding. Experience the vibrant capital city of Rwanda with cultural and adventure activities.', '1 Day', NULL, NULL, NULL, 25),
('RAA-002', 'raa-002-kigali-gorilla-trekking-1-day', 'Kigali & Gorilla Trekking', 'Kigali, Volcanoes National Park', 'Explore the vibrant city of Kigali with a guided city tour, followed by a thrilling 1-day gorilla trekking adventure in Volcanoes National Park. Perfect for a quick but unforgettable wildlife encounter.', '1 Day', NULL, NULL, NULL, 25),
('RAA-003', 'raa-003-kigali-gorilla-trekking-2-days', 'Kigali & Gorilla Trekking', 'Kigali, Volcanoes National Park', 'Explore the vibrant city of Kigali with a guided city tour, followed by a thrilling 1-day gorilla trekking adventure in Volcanoes National Park. Perfect for a quick but unforgettable wildlife encounter.', '2 Days', NULL, NULL, NULL, 26),
('RAA-004', 'raa-004-gorilla-experience-3-days', 'Gorilla Experience', 'Volcanoes National Park', 'Spend the day trekking gorillas in Volcanoes National Park and enjoy a visit to see the golden monkeys or hike the famous Dian Fossey trail. Ideal for wildlife enthusiasts wanting an authentic Rwandan gorilla experience.', '3 Days', NULL, NULL, NULL, 26),
('RAA-005', 'raa-005-akagera-safari-3-days', 'Akagera Safari', 'Akagera National Park', 'Discover Rwanda\'s Big Five on a game drive through Akagera National Park, complemented by scenic landscapes and diverse wildlife. A perfect escape for safari lovers with limited time.', '3 Days', NULL, NULL, NULL, 26),
('RAA-006', 'raa-006-wildlife-safari-7-days', 'Wildlife Safari', 'Akagera, Volcanoes, Nyungwe', 'A complete safari adventure. Search for the Big Five in Akagera, trek gorillas in Volcanoes, and walk the canopy bridges of Nyungwe Forest.', '7 Days', NULL, NULL, NULL, 26),
('RAA-007', 'raa-007-land-of-thousand-hills', 'Rwanda: Land of a Thousand Hills', 'Volcanoes, Akagera, Nyungwe, Lake Kivu', 'Discover the land of a thousand hills with gorilla trekking, wildlife safaris, and vibrant culture. Experience Volcanoes National Park, Akagera National Park, Nyungwe Forest and the beautiful Lake Kivu.', 'Variable', NULL, NULL, NULL, 27),
('RAA-008', 'raa-008-nyungwe-flying-safari-3-days', 'Nyungwe Flying Safari', 'Nyungwe Forest', 'Trek chimpanzees and explore Nyungwe\'s canopy walkway with flights via Kamembe. Experience the best of Nyungwe Forest with convenient air access.', '3 Days', NULL, NULL, NULL, 28),
('zaa-01', 'zaa-01-stone-town-walking-tour', 'Stone Town Walking Tour', 'Stone Town, Zanzibar', 'Explore the historic heart of Zanzibar, a UNESCO World Heritage site. Stone Town is the capital of Zanzibar and a fine example of Swahili coastal trading towns of East Africa. The town\'s urban fabric and original townscape is virtually intact and contains many fine buildings that reflect its particular culture; a culture that has brought together and homogenized disparate elements of the cultures of Africa, the Arab region, India, and Europe over more than a millennium.', 'Half Day', NULL, NULL, NULL, 38),
('zaa-04', 'zaa-04-prison-island-tour', 'Prison Island Tour', 'Changuu Island (Prison Island)', 'Prison Island, also known as Changuu Island, is about 30 minutes by boat from Stone Town. The island was formerly owned by an Arab who used it for the confinement of refractory slaves, but no prisoners were ever properly housed there; instead, the island became a quarantine station for the yellow fever epidemic. The actual jail was built in 1893, hence the name \'PRISON ISLAND\', and is still standing.', 'Half Day', NULL, NULL, NULL, 38),
('zaa-09', 'zaa-09-zanzibar-slave-market', 'The Zanzibar Slave Market', 'Stone Town, Zanzibar', 'The slave market of Stone Town has been inactive for decades, but memorials provide a stark reminder of the horrific acts that once took place here. Visit this site and reflect on the atrocities of the past as you stand in the shadow of the Anglican Church. Learn about the important role slavery played in Zanzibar\'s history, where, for nearly 1,000 years, Arab traders traveled to the interior of Africa, sometimes as far as the Congo, to purchase or kidnap healthy young people.', '2-3 Hours', NULL, NULL, NULL, 38);
INSERT INTO `safaris` (`id`, `slug`, `title`, `destination`, `description`, `duration_label`, `currency`, `price_from`, `price_note`, `subcategory_id`) VALUES
('zaa-02', 'zaa-02-mnemba-island-snorkeling', 'Mnemba Island Snorkeling', 'Mnemba Atoll', 'Experience some of the best snorkeling in East Africa at Mnemba Atoll. This excursion offers opportunities to see vibrant marine life, including sea turtles and dolphins, in crystal-clear waters. Most tours include equipment and a lunch on a pristine sandbank.', 'Full Day', NULL, NULL, NULL, 39),
('zaa-03', 'zaa-03-tumbatu-island', 'Tumbatu Island', 'Tumbatu Island', 'Tumbatu Island, the third-largest island in the Zanzibar Archipelago, is a hidden gem off the coast of Tanzania, steeped in rich history and unique culture. Known for its secluded beaches, lush vegetation, and vibrant local life, Tumbatu offers a tranquil retreat from the bustling mainland. The island\'s inhabitants, the Watumbatu people, are renowned for their traditional Goma music and dance, which visitors can experience firsthand.', 'Full Day', NULL, NULL, NULL, 39),
('zaa-05', 'zaa-05-spice-plantation-tour', 'Spice Plantation Tour', 'Zanzibar Spice Farms', 'The Spice Tour is one of the most popular things to do in Zanzibar. The island got its nickname \'the Spice Island\' as a result of it being one of the world\'s leading producers of spices such as clove, nutmeg and cinnamon during the 19th century. Your tour guide will describe how the various different plants can be used and you will have the chance to smell and taste a variety of spices, herbs and tropical fruits.', 'Half Day', NULL, NULL, NULL, 39),
('zaa-06', 'zaa-06-jozani-forest-tour', 'Jozani Forest Tour', 'Jozani Chwaka Bay National Park', 'This forest is one of the last remaining sanctuaries of the red colobus monkeys in the world and it was declared a nature reserve in the 1960s. At one time, the monkeys were an endangered species, but numbers have increased in recent years thanks to the conservation work by the nature reserve, working closely with the local people. A walk through this impressive flora and fauna offers wonderful photo opportunities as well as sightings of these rare creatures.', 'Half Day', NULL, NULL, NULL, 39),
('zaa-08', 'zaa-08-mikumi-safari-tour', 'Mikumi Safari Tour', 'Mikumi National Park, Tanzania', 'For those interested in wildlife, consider a day trip to Mikumi National Park. This excursion includes a flight from Zanzibar and a game drive to see various African wildlife in their natural habitat. Experience the mainland Tanzania safari adventure while based in Zanzibar.', '1 Day', NULL, NULL, NULL, 39),
('zaa-07', 'zaa-07-the-rock-restaurant', 'The Rock Restaurant', 'Michamvi Pingwe Beach', 'The Rock, situated on the southeast coast of Zanzibar at Michamvi Pingwe beach, stands out as a unique dining destination, affectionately dubbed the \'floating restaurant\' due to its appearance at high tide. This once simple fishing outpost has been transformed into a picturesque eatery that blends seamlessly with its natural surroundings, offering guests the rare opportunity to dine amidst panoramic seascapes.', 'Lunch/Dinner', NULL, NULL, NULL, 40),
('zaa-10', 'zaa-10-zanzibar-island-3-days', '3 Days Zanzibar Island', 'Zanzibar Island', 'Experience the best of Zanzibar in three days. Explore the historic Stone Town, visit spice plantations, enjoy island boat trips for swimming and snorkeling, and discover the cultural heritage of this fascinating island. Perfect for those wanting a comprehensive Zanzibar experience on a budget.', '3 Days', NULL, NULL, NULL, 41),
('taa-01', 'taa-01-coffee-farm-mangalia-waterfalls', 'Coffee Farm and Mangalia Waterfalls Tour', 'Arusha', 'Enjoy the perfect blend of culture, nature, and relaxation on this two-part Tanzanian adventure. Your journey begins with a hotel pick-up, taking you to a local coffee farm for a guided coffee tour. Learn about the entire process of coffee-making, from bean to brew, and discover the rich history of Tanzanian coffee.', '1 Day', NULL, NULL, NULL, 42),
('taa-02', 'taa-02-arusha-walking-city-tour', 'Arusha Walking City Tour - History, Culture & Lifestyle', 'Arusha', 'Discover the vibrant heart of Arusha on our immersive Walking City Tour, a perfect blend of culture, history, and local life. Journey through governmental districts, museums, markets, and cultural centers.', '1 Day', NULL, NULL, NULL, 42),
('taa-03', 'taa-03-materuni-waterfalls-coffee-hotsprings', 'Materuni Waterfalls, Coffee, and Hotsprings Tour', 'Materuni Village', 'Following pickup from your accommodation, head to Materuni Village. Take a short but challenging hike to Materuni Falls with beautiful views. Visit a coffee farm to learn about growing, harvesting, and processing. Try roasting and preparing fresh local coffee.', '1 Day', NULL, NULL, NULL, 42),
('taa-04', 'taa-04-arusha-national-park-full-day', 'Arusha National Park Full-Day Safari', 'Arusha National Park', 'Explore Arusha National Park, home of Mt Meru. Opportunity to see giraffes, Cape buffalos, zebras, warthogs, colobus monkeys, blue monkeys, flamingos, elephants, bushbucks, and many other animals. Leopard population present but rarely seen.', '1 Day', NULL, NULL, NULL, 42),
('taa-05', 'taa-05-great-migration-serengeti', 'Witness the Great Migration in Serengeti', 'Serengeti', 'Experiencing the Great Migration in the Serengeti is without question one of the best Tanzania safaris, where over 1.5 million wildebeest and zebras storm across golden plains in search of greener pastures.', 'Variable', NULL, NULL, NULL, 43),
('taa-06', 'taa-06-climb-mount-kilimanjaro', 'Climb Mount Kilimanjaro', 'Mount Kilimanjaro', 'Trekking Mount Kilimanjaro, Africa\'s highest peak at 5,895 meters, offers one of the most iconic challenges. With no technical gear required, climbers journey through ecological zones from rainforest to alpine desert before reaching snow-capped summit at Uhuru Peak.', '5-9 Days', NULL, NULL, NULL, 43),
('taa-07', 'taa-07-chimpanzee-mahale-mountains', 'Track Wild Chimpanzees in Mahale Mountains', 'Mahale Mountains', 'In the remote jungles along Lake Tanganyika, chimpanzee tracking in Mahale Mountains ranks among the most soulful Tanzania safaris. With limited tourist traffic, the experience feels deeply personal.', 'Variable', NULL, NULL, NULL, 43),
('taa-08', 'taa-08-hot-air-balloon-safari', 'Hot Air Balloon Safari', 'Serengeti', 'Gliding above the Serengeti at sunrise in a hot air balloon is one of the most magical Tanzania safaris. As the sky shifts from blush to gold, the savannah comes alive below .', 'Half Day', NULL, NULL, NULL, 43),
('taa-09', 'taa-09-ngorongoro-crater', 'Explore Ngorongoro Crater', 'Ngorongoro Crater', 'Descending into the Ngorongoro Crater, a vast ancient volcanic caldera, is like entering a lost world. This 600-meter-deep basin shelters incredible variety of wildlife.', '1-2 Days', NULL, NULL, NULL, 43),
('taa-10', 'taa-10-zanzibar-island', 'Visit Zanzibar Island', 'Zanzibar', 'Embark on an unforgettable journey through Zanzibar, the ultimate tropical paradise known for pristine beaches, vibrant culture, and historic charm. Explore Stone Town\'s rich heritage, relax on Nungwi\'s golden sands, or snorkel in turquoise waters of Mnemba Island.', '3-7 Days', NULL, NULL, NULL, 43),
('taa-11', 'taa-11-lake-manyara-serengeti-ngorongoro-6-days', 'Lake Manyara - Serengeti - Ngorongoro Crater', 'Lake Manyara, Serengeti, Ngorongoro', 'A 6-day budget safari covering Lake Manyara, Serengeti and Ngorongoro Crater, offering incredible wildlife viewing opportunities.', '6 Days', NULL, NULL, NULL, 44),
('taa-12', 'taa-12-tarangire-manyara-serengeti-ngorongoro-7-days', 'Tarangire - Lake Manyara - Serengeti - Ngorongoro Crater', 'Tarangire, Lake Manyara, Serengeti, Ngorongoro', 'A comprehensive 7-day budget safari covering Tarangire, Lake Manyara, Serengeti and Ngorongoro Crater.', '7 Days', NULL, NULL, NULL, 44),
('taa-13', 'taa-13-ngorongoro-manyara-arusha-4-days', 'Ngorongoro - Lake Manyara - Arusha', 'Ngorongoro, Lake Manyara, Arusha', 'A 4-day luxury safari featuring Ngorongoro Crater and Lake Manyara with stays at premium lodges.', '4 Days', NULL, NULL, NULL, 45),
('taa-14', 'taa-14-lake-manyara-serengeti-ngorongoro-6-days', 'Lake Manyara - Serengeti - Ngorongoro Crater', 'Lake Manyara, Serengeti, Ngorongoro', 'A 6-day luxury safari covering the highlights of Tanzania\'s northern circuit with premium accommodations.', '6 Days', NULL, NULL, NULL, 45),
('taa-15', 'taa-15-tarangire-manyara-serengeti-ngorongoro-7-days', 'Tarangire - Lake Manyara - Serengeti - Ngorongoro Crater', 'Tarangire, Lake Manyara, Serengeti, Ngorongoro', 'A comprehensive 7-day luxury safari covering all major northern Tanzania parks with premium lodges.', '7 Days', NULL, NULL, NULL, 45),
('taa-20', 'taa-20-birding-destinations', 'Tanzania Birding Destinations', 'Various', 'Tanzania offers exceptional birding opportunities with over 1,000 recorded bird species across diverse habitats from coastal forests to mountain highlands.', 'Variable', NULL, NULL, NULL, 46),
('taa-21', 'taa-21-kenya-tanzania-11-days', 'Kenya / Tanzania Safari', 'Kenya, Tanzania', 'An 11-day safari covering the best of Kenya and Tanzania, including tree hotels, Samburu, Lake Nakuru, Lake Manyara, Serengeti and Ngorongoro Crater.', '11 Days', NULL, NULL, NULL, 47);

-- --------------------------------------------------------

--
-- Table structure for table `safari_clicks`
--

DROP TABLE IF EXISTS `safari_clicks`;
CREATE TABLE IF NOT EXISTS `safari_clicks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `safari_id` varchar(100) NOT NULL,
  `clicks` int NOT NULL DEFAULT '0',
  `last_clicked` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `safari_id` (`safari_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `safari_clicks`
--

INSERT INTO `safari_clicks` (`id`, `safari_id`, `clicks`, `last_clicked`) VALUES
(1, 'kaa-001', 2, '2026-03-10 19:17:20'),
(2, '6-day-amboseli-lake-naivasha-maasai-mara', 2, '2026-02-10 18:30:24'),
(3, 'kaa-03', 1, '2026-02-14 13:54:53'),
(4, 'kaa-57', 2, '2026-03-02 09:54:51'),
(5, 'kaa-05', 1, '2026-03-02 09:28:05'),
(6, 'kaa-60', 1, '2026-03-02 09:47:30'),
(7, '4-day-lake-nakuru-lake-naivasha-maasai-mara-safari', 1, '2026-03-02 10:01:28'),
(8, 'KAA-060', 4, '2026-03-10 19:00:43'),
(9, 'KAA-056', 1, '2026-03-10 19:00:40'),
(10, 'KAA-027', 2, '2026-03-10 20:00:39'),
(11, 'KAA-022', 2, '2026-03-10 19:11:47'),
(12, 'KAA-024', 2, '2026-03-10 19:53:32'),
(13, 'KAA-030', 1, '2026-03-10 19:14:59'),
(14, 'KAA-008', 1, '2026-03-10 19:15:14'),
(15, 'KAA-041', 1, '2026-03-10 21:28:10'),
(16, 'RAA-002', 1, '2026-03-10 21:40:25'),
(17, 'taa-20', 1, '2026-03-10 21:43:46'),
(18, 'zaa-10', 1, '2026-03-10 21:45:03');

-- --------------------------------------------------------

--
-- Table structure for table `safari_click_ips`
--

DROP TABLE IF EXISTS `safari_click_ips`;
CREATE TABLE IF NOT EXISTS `safari_click_ips` (
  `id` int NOT NULL AUTO_INCREMENT,
  `safari_id` varchar(100) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `last_click` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `click_count` int DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_ip_safari` (`safari_id`,`ip_address`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `safari_click_ips`
--

INSERT INTO `safari_click_ips` (`id`, `safari_id`, `ip_address`, `last_click`, `click_count`) VALUES
(1, 'kaa-001', '127.0.0.1', '2026-03-10 19:17:20', 2),
(2, '6-day-amboseli-lake-naivasha-maasai-mara', '127.0.0.1', '2026-02-10 18:30:24', 2),
(3, 'kaa-03', '127.0.0.1', '2026-02-14 13:54:53', 1),
(4, 'kaa-57', '127.0.0.1', '2026-03-02 09:54:51', 2),
(5, 'kaa-05', '127.0.0.1', '2026-03-02 09:28:05', 1),
(6, 'kaa-60', '127.0.0.1', '2026-03-02 09:47:30', 1),
(7, '4-day-lake-nakuru-lake-naivasha-maasai-mara-safari', '127.0.0.1', '2026-03-02 10:01:28', 1),
(8, 'KAA-060', '127.0.0.1', '2026-03-10 19:00:43', 4),
(9, 'KAA-056', '127.0.0.1', '2026-03-10 19:00:40', 1),
(10, 'KAA-027', '127.0.0.1', '2026-03-10 20:00:39', 2),
(11, 'KAA-022', '127.0.0.1', '2026-03-10 19:11:47', 2),
(12, 'KAA-024', '127.0.0.1', '2026-03-10 19:53:32', 2),
(13, 'KAA-030', '127.0.0.1', '2026-03-10 19:14:59', 1),
(14, 'KAA-008', '127.0.0.1', '2026-03-10 19:15:14', 1),
(15, 'KAA-041', '127.0.0.1', '2026-03-10 21:28:10', 1),
(16, 'RAA-002', '127.0.0.1', '2026-03-10 21:40:25', 1),
(17, 'taa-20', '127.0.0.1', '2026-03-10 21:43:46', 1),
(18, 'zaa-10', '127.0.0.1', '2026-03-10 21:45:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `safari_details`
--

DROP TABLE IF EXISTS `safari_details`;
CREATE TABLE IF NOT EXISTS `safari_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `safari_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `includes` json DEFAULT NULL,
  `excludes` json DEFAULT NULL,
  `highlights` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `safari_id_unique` (`safari_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `safari_details`
--

INSERT INTO `safari_details` (`id`, `safari_id`, `includes`, `excludes`, `highlights`) VALUES
(1, 'KAA-024', '[]', '[]', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `safari_engagement`
--

DROP TABLE IF EXISTS `safari_engagement`;
CREATE TABLE IF NOT EXISTS `safari_engagement` (
  `safari_id` varchar(100) NOT NULL,
  `total_time_spent` int DEFAULT '0',
  `total_views` int DEFAULT '0',
  `total_inquiries` int DEFAULT '0',
  `last_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`safari_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `safari_images`
--

DROP TABLE IF EXISTS `safari_images`;
CREATE TABLE IF NOT EXISTS `safari_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `safari_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `src` text COLLATE utf8mb4_unicode_ci,
  `alt` text COLLATE utf8mb4_unicode_ci,
  `caption` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=259 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `safari_images`
--

INSERT INTO `safari_images` (`id`, `safari_id`, `src`, `alt`, `caption`) VALUES
(1, 'kaa-001', '/images/safaris/kenya/maasai-mara/image.png', 'Maasai Mara savannah', NULL),
(2, 'kaa-001', '/images/safaris/kenya/maasai-mara/image2.jpg', NULL, 'Morning game drive'),
(3, 'KAA-002', '/images/safaris/kenya/amboseli/image3.jpg', 'Amboseli National Park hiking', NULL),
(4, 'KAA-002', '/images/safaris/kenya/amboseli/image2.jpg', NULL, 'Hiking trail'),
(5, 'KAA-002', '/images/safaris/kenya/amboseli/image1.jpg', NULL, 'Scenic mountain view'),
(6, 'KAA-003', '/images/safaris/kenya/maasai-mara/image2.jpg', 'Kenya Classic Safari', NULL),
(7, 'KAA-003', '/images/safaris/kenya/excursions/lnaivasha1.jpg', NULL, 'Morning game drive'),
(8, 'KAA-003', '/images/safaris/kenya/excursions/lnakuru1.jpg', NULL, 'Scenic mountain view'),
(9, 'KAA-004', '/images/safaris/kenya/excursions/tsavo1.jpg', 'Samburu National Reserve', NULL),
(10, 'KAA-004', '/images/safaris/kenya/amboseli/image2.jpg', NULL, 'Hiking trail'),
(11, 'KAA-004', '/images/safaris/kenya/maasai-mara/image1.jpg', NULL, 'Scenic mountain view'),
(12, 'KAA-005', '/images/safaris/kenya/excursions/amboseli1.jpg', 'Amboseli National Park', NULL),
(13, 'KAA-005', '/images/safaris/kenya/excursions/amboseli.jpg', NULL, 'Amboseli National Park'),
(14, 'KAA-006', '/images/safaris/kenya/excursions/lnakuru1.jpg', 'Lake Nakuru National Park', NULL),
(15, 'KAA-006', '/images/safaris/kenya/excursions/lnakuru.jpg', NULL, 'Lake Nakuru National Park'),
(16, 'KAA-007', '/images/crescent/image.png', 'Amboseli National Park', NULL),
(17, 'KAA-008', '/images/safaris/kenya/mtkenya/image3.jpg', 'Mount Kenya hiking', NULL),
(18, 'KAA-008', '/images/safaris/kenya/mtkenya/image2.jpg', NULL, 'Hiking trail'),
(19, 'KAA-008', '/images/safaris/kenya/mtkenya/image1.jpg', NULL, 'Scenic mountain view'),
(20, 'KAA-009', '/images/safaris/kenya/mtkenya/image1.jpg', 'Samburu National Reserve', NULL),
(21, 'KAA-009', '/images/safaris/kenya/amboseli/image2.jpg', NULL, 'Hiking trail'),
(22, 'KAA-009', '/images/safaris/kenya/maasai-mara/image1.jpg', NULL, 'Scenic mountain view'),
(23, 'KAA-010', '/images/safaris/kenya/extreme/rafting2.jpg', 'Samburu National Reserve', NULL),
(24, 'KAA-010', '/images/safaris/kenya/extreme/rafting.jpg', NULL, 'Hiking trail'),
(25, 'KAA-011', '/images/safaris/kenya/kisite/image.png', 'Samburu National Reserve', NULL),
(26, 'KAA-012', '/images/safaris/kenya/lamu/image.png', 'Lamu Tour', NULL),
(27, 'KAA-013', '/images/safaris/kenya/excursions/nairobi.jpg', 'Maasai Mara savannah', NULL),
(28, 'KAA-013', '/images/safaris/kenya/excursions/nairobi1.jpg', NULL, 'Morning game drive'),
(29, 'KAA-014', '/images/safaris/kenya/excursions/karenblixen.jpg', 'Maasai Mara savannah', NULL),
(30, 'KAA-014', '/images/safaris/kenya/excursions/karenblixen1.jpg', NULL, 'Morning game drive'),
(31, 'KAA-015', '/images/safaris/kenya/excursions/bomas.jpg', 'Maasai Mara savannah', NULL),
(32, 'KAA-015', '/images/safaris/kenya/excursions/bomas1.jpg', NULL, 'Morning game drive'),
(33, 'KAA-016', '/images/safaris/kenya/excursions/nat_park.jpg', 'Maasai Mara savannah', NULL),
(34, 'KAA-016', '/images/safaris/kenya/excursions/nat_park1.jpg', NULL, 'Morning game drive'),
(35, 'KAA-016', '/images/safaris/kenya/excursions/nat_park2.jpg', NULL, 'Morning game drive'),
(36, 'KAA-017', '/images/safaris/kenya/excursions/nainight.jpg', 'Photo by John Osogo', NULL),
(37, 'KAA-018', '/images/safaris/kenya/excursions/carnivore.jpg', 'Carnivore Restaurant', NULL),
(38, 'KAA-018', '/images/safaris/kenya/excursions/carnivore1.jpg', NULL, 'Carnivore Experience'),
(39, 'KAA-019', '/images/safaris/kenya/excursions/lnaivasha.jpg', 'Lake Naivasha', NULL),
(40, 'KAA-019', '/images/safaris/kenya/excursions/lnaivasha1.jpg', NULL, 'Lake Naivasha Boat Ride'),
(41, 'KAA-019', '/images/safaris/kenya/excursions/lnaivasha2.jpg', NULL, 'Lake Naivasha national park'),
(42, 'KAA-020', '/images/safaris/kenya/excursions/lnakuru.jpg', 'Lake Nakuru', NULL),
(43, 'KAA-020', '/images/safaris/kenya/excursions/lnakuru1.jpg', NULL, 'Lake nakuru'),
(44, 'KAA-021', '/images/safaris/kenya/excursions/solio.jpg', 'Solio Ranch', NULL),
(45, 'KAA-021', '/images/safaris/kenya/excursions/solio1.jpg', NULL, 'Solio Ranch Rhino Sanctuary'),
(46, 'KAA-021', '/images/safaris/kenya/excursions/solio2.jpg', NULL, 'Solio Ranch Wildlife'),
(47, 'KAA-022', '/images/safaris/kenya/excursions/mombasa.jpg', 'Mombasa City Tour', NULL),
(48, 'KAA-023', '/images/safaris/kenya/excursions/shimba.jpg', 'Shimba Hills National Reserve', NULL),
(49, 'KAA-024', '/images/safaris/kenya/excursions/gedi.jpg', 'Gedi Ruins', NULL),
(50, 'KAA-025', '/images/safaris/kenya/excursions/dhow.jpg', 'Dhow Dinner', NULL),
(51, 'KAA-026', '/images/safaris/kenya/excursions/tsavo1.jpg', 'Maasai Mara savannah', NULL),
(52, 'KAA-026', '/images/safaris/kenya/excursions/tsavo.jpg', NULL, 'Morning game drive'),
(53, 'KAA-027', '/images/safaris/kenya/excursions/tsavo.jpg', 'Tsavo East National Park', NULL),
(54, 'KAA-027', '/images/safaris/kenya/excursions/tsavo1.jpg', NULL, 'Morning at Tsavo East'),
(55, 'KAA-027', '/images/safaris/kenya/excursions/tsavo2.jpg', NULL, 'Evening at Tsavo East'),
(56, 'KAA-028', '/images/safaris/kenya/excursions/amboseli.jpg', 'Amboseli National Park', NULL),
(57, 'KAA-028', '/images/safaris/kenya/excursions/amboseli1.jpg', NULL, 'Morning at Amboseli'),
(58, 'KAA-029', '/images/safaris/kenya/excursions/kiwayuu.jpg', 'Kiwayuu', NULL),
(59, 'KAA-030', '/images/safaris/kenya/excursions/lamu.jpg', 'Lamu Island', NULL),
(60, 'KAA-031', '/images/safaris/kenya/excursions/zanzibar.jpg', 'Zanzibar', NULL),
(61, 'KAA-032', '/images/safaris/kenya/excursions/amboseli1.jpg', 'Amboseli National Park', NULL),
(62, 'KAA-032', '/images/safaris/kenya/excursions/amboseli.jpg', NULL, 'Morning game drive'),
(63, 'KAA-033', '/images/safaris/kenya/budget-safaris/maasaimara.png', 'Maasai Mara savannah', NULL),
(64, 'KAA-033', '/images/safaris/kenya/maasai-mara/image2.jpg', NULL, 'Morning game drive'),
(65, 'KAA-034', '/images/safaris/kenya/samburu/image.png', 'Samburu National Reserve', NULL),
(66, 'KAA-034', '/images/safaris/kenya/samburu/image1.jpg', NULL, 'Samburu Wildlife'),
(67, 'KAA-035', '/images/safaris/kenya/budget-safaris/maasaimara.png', 'Maasai Mara savannah', NULL),
(68, 'KAA-035', '/images/safaris/kenya/excursions/maasaimara1.png', NULL, 'Morning game drive'),
(69, 'KAA-036', '/images/safaris/kenya/budget-safaris/maasaimara2.png', 'Maasai Mara savannah', NULL),
(70, 'KAA-036', '/images/safaris/kenya/excursions/lnaivasha2.jpg', NULL, 'Morning game drive'),
(71, 'KAA-037', '/images/safaris/kenya/excursions/lnaivasha2.jpg', 'Maasai Mara savannah', NULL),
(72, 'KAA-037', '/images/safaris/kenya/budget-safaris/adventurers.png', NULL, 'Morning game drive'),
(73, 'KAA-038', '/images/safaris/kenya/samburu/image1.jpg', 'Maasai Mara savannah', NULL),
(74, 'KAA-038', '/images/safaris/kenya/excursions/lnakuru1.jpg', NULL, 'Morning game drive'),
(75, 'KAA-039', '/images/safaris/kenya/budget-safaris/lake-turkana.jpg', 'Lake Turkana', NULL),
(76, 'KAA-039', '/images/safaris/kenya/excursions/lnaivasha2.jpg', NULL, 'Morning game drive'),
(77, 'KAA-040', '/images/safaris/kenya/budget-safaris/chalbi.png', 'Lake Turkana', NULL),
(78, 'KAA-040', '/images/safaris/kenya/excursions/lnaivasha2.jpg', NULL, 'Morning game drive'),
(79, 'KAA-041', '/images/safaris/kenya/budget-safaris/lakebogoria.png', 'Maasai Mara savannah', NULL),
(80, 'KAA-041', '/images/safaris/kenya/excursions/lnaivasha2.jpg', NULL, 'Morning game drive'),
(81, 'KAA-042', '/images/safaris/kenya/excursions/amboseli1.jpg', 'Amboseli National Park', NULL),
(82, 'KAA-043', '/images/safaris/kenya/excursions/aberdares.jpg', 'Aberdares', NULL),
(83, 'KAA-044', '/images/safaris/kenya/excursions/tsavo1.jpg', 'Tsavo National Park', NULL),
(84, 'KAA-045', '/images/safaris/kenya/excursions/maasai_mara.jpg', 'Masai Mara', NULL),
(85, 'KAA-046', '/images/safaris/kenya/samburu/image1.jpg', 'Samburu National Reserve', NULL),
(86, 'KAA-047', '/images/safaris/kenya/excursions/lnakuru1.jpg', 'Lake Nakuru', NULL),
(87, 'KAA-047', '/images/safaris/kenya/excursions/lnaivasha1.jpg', 'Lake Naivasha', NULL),
(88, 'KAA-048', '/images/safaris/kenya/excursions/tsavo3.jpg', 'Tsavo National Park', NULL),
(89, 'KAA-048', '/images/safaris/kenya/excursions/taitahills.png', 'Taita Hills', NULL),
(90, 'KAA-049', '/images/safaris/kenya/mtkenya/image3.jpg', 'Mount Kenya', NULL),
(91, 'KAA-049', '/images/safaris/kenya/samburu/image1.jpg', 'Samburu National Reserve', NULL),
(92, 'KAA-050', '/images/safaris/kenya/excursions/amboseli1.jpg', 'Amboseli National Park', NULL),
(93, 'KAA-050', '/images/safaris/kenya/excursions/lnaivasha1.jpg', 'Lake Naivasha', NULL),
(94, 'KAA-051', '/images/safaris/kenya/samburu/image1.jpg', 'Samburu National Reserve', NULL),
(95, 'KAA-051', '/images/safaris/kenya/excursions/lnakuru1.jpg', 'Lake Nakuru', NULL),
(96, 'KAA-052', '/images/safaris/kenya/mtkenya/image3.jpg', 'Mount Kenya', NULL),
(97, 'KAA-052', '/images/safaris/kenya/samburu/image1.jpg', 'Samburu National Reserve', NULL),
(98, 'KAA-053', '/images/safaris/kenya/excursions/maasai_mara.jpg', 'Masai Mara', NULL),
(99, 'KAA-053', '/images/safaris/kenya/excursions/lnakuru1.jpg', 'Lake Nakuru', NULL),
(100, 'KAA-054', '/images/safaris/kenya/mtkenya/image3.jpg', 'Mount Kenya', NULL),
(101, 'KAA-054', '/images/safaris/kenya/samburu/image1.jpg', 'Samburu National Reserve', NULL),
(102, 'KAA-055', '/images/safaris/kenya/extreme/rock2.jpg', 'Hippos in Lake Naivasha', NULL),
(103, 'KAA-055', '/images/safaris/kenya/extreme/rock.jpg', NULL, 'Hellsgate National Park Rock Climbing'),
(104, 'KAA-056', '/images/parks/olpajeta.jpg', 'Hippos in Lake Naivasha', NULL),
(105, 'KAA-056', '/images/safaris/kenya/extreme/rock.jpg', NULL, 'Hellsgate National Park Rock Climbing'),
(106, 'KAA-057', '/images/safaris/kenya/extreme/rafting.jpg', 'Sagana White Water Rafting', NULL),
(107, 'KAA-057', '/images/safaris/kenya/extreme/rafting2.jpg', NULL, 'Sagana white water rafting'),
(108, 'KAA-058', '/images/safaris/kenya/extreme/biking.jpg', 'Sagana White Water Rafting', NULL),
(109, 'KAA-058', '/images/safaris/kenya/extreme/biking2.jpg', NULL, 'Sagana white water rafting'),
(110, 'KAA-059', '/images/safaris/kenya/extreme/chogoria.jpg', 'Sagana White Water Rafting', NULL),
(111, 'KAA-059', '/images/parks/olpajeta.jpg', NULL, 'Sagana white water rafting'),
(112, 'KAA-060', '/images/safaris/kenya/extreme/rift.jpg', 'rift valley adventure', NULL),
(113, 'KAA-060', '/images/safaris/kenya/extreme/rift1.jpg', NULL, 'rift valley adventure'),
(114, 'KAA-061', '/images/safaris/kenya/eastafrica/adv1.jpg', '', NULL),
(115, 'KAA-061', '/images/safaris/kenya/eastafrica/adv2.jpg', NULL, ''),
(116, 'KAA-061', '/images/safaris/kenya/eastafrica/adv3.jpg', NULL, ''),
(117, 'KAA-061', '/images/safaris/kenya/eastafrica/adv4.jpg', NULL, ''),
(118, 'KAA-061', '/images/safaris/kenya/eastafrica/adv5.jpg', NULL, ''),
(119, 'KAA-062', '/images/safaris/kenya/flying/fly1.png', '', NULL),
(120, 'KAA-062', '/images/safaris/kenya/flying/fly2.png', NULL, ''),
(121, 'KAA-063', '/images/safaris/kenya/flying/fly2.png', 'Amboseli Flying Safari', NULL),
(122, 'KAA-063', '/images/safaris/kenya/flying/fly1.png', NULL, 'Amboseli flying safari'),
(123, 'KAA-064', '/images/safaris/kenya/flying/fly1.png', '', NULL),
(124, 'KAA-064', '/images/safaris/kenya/flying/fly2.png', NULL, ''),
(125, 'KAA-065', '/images/safaris/kenya/samburu/image1.png', '', NULL),
(126, 'KAA-065', '/images/safaris/kenya/flying/fly1.png', NULL, ''),
(127, 'KAA-066', '/images/safaris/kenya/excursions/lamu.jpg', '', NULL),
(128, 'KAA-066', '/images/safaris/kenya/flying/fly1.png', NULL, ''),
(129, 'KAA-067', '/images/safaris/kenya/amboseli/image3.jpg', '', NULL),
(130, 'KAA-067', '/images/safaris/kenya/excursions/amboseli1.jpg', NULL, ''),
(131, 'KAA-068', '/images/safaris/kenya/culture/i1.png', 'walking safari', NULL),
(132, 'KAA-068', '/images/safaris/kenya/culture/i2.png', NULL, 'walking safari'),
(133, 'KAA-069', '/images/safaris/kenya/culture/i2.png', 'Camel Ride Safari', NULL),
(134, 'KAA-069', '/images/safaris/kenya/culture/i3.png', NULL, 'Camel Ride Safari'),
(135, 'KAA-070', '/images/safaris/kenya/culture/i4.png', 'The Lunatic Express', NULL),
(136, 'KAA-070', '/images/safaris/kenya/culture/i5.png', NULL, 'The Lunatic Express'),
(137, 'KAA-071', '/images/safaris/kenya/culture/i6.png', 'Lake Victoria Fishing Safari', NULL),
(138, 'KAA-072', '/images/safaris/kenya/culture/i7.png', 'Horse Riding Safari', NULL),
(139, 'KAA-073', '/images/safaris/kenya/culture/i8.png', 'Sports Safaris', NULL),
(140, 'KAA-073', '/images/safaris/kenya/culture/i9.png', NULL, 'Sports Safaris'),
(141, 'KAA-074', '/images/safaris/kenya/culture/i10.png', 'Water Sports Safari', NULL),
(142, 'KAA-075', '/images/safaris/kenya/culture/i11.png', 'Cruising Safari', NULL),
(143, 'KAA-076', '/images/safaris/kenya/culture/i12.png', 'Wedding Safari', NULL),
(144, 'KAA-077', '/images/safaris/kenya/culture/i13.png', 'Conference Safari', NULL),
(145, 'KAA-078', '/images/safaris/kenya/culture/i14.png', 'Farm and Ranch Safari', NULL),
(146, 'KAA-079', '/images/safaris/kenya/culture/i15.png', 'Care Hire', NULL),
(147, 'KAA-080', '/images/safaris/kenya/photo/i1.png', 'Central Kenya Circuit', NULL),
(148, 'KAA-080', '/images/safaris/kenya/photo/i2.png', NULL, 'Central Kenya Circuit'),
(149, 'KAA-081', '/images/safaris/kenya/excursions/tsavo3.jpg', 'Eastern Circuit', NULL),
(150, 'KAA-081', '/images/safaris/kenya/budget-safaris/adventurers.png', NULL, 'Eastern Circuit'),
(151, 'KAA-082', '/images/safaris/kenya/excursions/lnaivasha2.jpg', 'Southern Kenya Circuit', NULL),
(152, 'KAA-082', '/images/safaris/kenya/maasai-mara/image2.jpg', NULL, 'Southern Kenya Circuit'),
(153, 'KAA-083', '/images/safaris/kenya/lamu/image.png', 'Kenya Coastal Circuit', NULL),
(154, 'KAA-083', '/images/safaris/kenya/excursions/lamu.jpg', NULL, 'Kenya Coastal Circuit'),
(155, 'KAA-084', '/images/safaris/kenya/excursions/lnaivasha2.jpg', 'Northern Kenya Circuit', NULL),
(156, 'KAA-084', '/images/safaris/kenya/samburu/image1.png', NULL, 'Northern Kenya Circuit'),
(157, 'KAA-085', '/images/safaris/kenya/excursions/lnaivasha2.jpg', 'Western Kenya Circuit', NULL),
(158, 'KAA-085', '/images/safaris/kenya/budget-safaris/adventurers.png', NULL, 'Western Kenya Circuit'),
(159, 'KAA-086', '/images/safaris/kenya/balloon/i1.png', 'Balloon Safari', NULL),
(160, 'KAA-087', '/images/safaris/kenya/balloon/i2.png', 'Amboseli Balloon Safari', NULL),
(161, 'UAA-001', '/images/safaris/uganda/bwindi/gorilla1.jpg', 'Mountain Gorillas in Bwindi', NULL),
(162, 'UAA-001', '/images/safaris/uganda/bwindi/forest.jpg', NULL, 'Bwindi Impenetrable Forest'),
(163, 'UAA-002', '/images/safaris/uganda/kibale/chimps.jpg', 'Chimpanzees in Kibale', NULL),
(164, 'UAA-002', '/images/safaris/uganda/bwindi/gorilla2.jpg', NULL, 'Mountain Gorillas'),
(165, 'UAA-003', '/images/safaris/uganda/bwindi/tracking.jpg', 'Gorilla Tracking', NULL),
(166, 'UAA-004', '/images/safaris/uganda/bunyonyi/lake.jpg', 'Lake Bunyonyi', NULL),
(167, 'UAA-005', '/images/safaris/uganda/balloon/murchison.jpg', 'Hot Air Balloon over Murchison Falls', NULL),
(168, 'UAA-006', '/images/safaris/uganda/balloon/queen.jpg', 'Balloon Safari Queen Elizabeth', NULL),
(169, 'UAA-007', '/images/safaris/uganda/flying/aerial.jpg', 'Aerial view of Uganda', NULL),
(170, 'UAA-008', '/images/safaris/uganda/flying/bwindi.jpg', 'Flying to Bwindi', NULL),
(171, 'UAA-009', '/images/safaris/uganda/culture/batwa.jpg', 'Batwa People', NULL),
(172, 'UAA-009', '/images/safaris/uganda/culture/crafts.jpg', NULL, 'Traditional Crafts'),
(173, 'UAA-010', '/images/safaris/uganda/rafting/nile.jpg', 'White Water Rafting on the Nile', NULL),
(174, 'UAA-011', '/images/safaris/uganda/photography/bwindi.jpg', 'Bwindi Mountain Gorillas', NULL),
(175, 'UAA-011', '/images/safaris/uganda/photography/murchison.jpg', NULL, 'Murchison Falls'),
(176, 'UAA-012', '/images/safaris/uganda/rafting/daytrip2.jpg', 'Bungee Jumping at the Nile', NULL),
(177, 'UAA-013', '/images/safaris/uganda/culture/crafts.jpg', 'Cultural Village Visit', NULL),
(178, 'UAA-014', '/images/safaris/uganda/bwindi/tracking.jpg', 'Mountain Gorilla', NULL),
(179, 'UAA-015', '/images/safaris/uganda/rafting/daytrip.jpg', 'Boat Cruise on the Nile', NULL),
(180, 'UAA-016', '/images/safaris/uganda/murchison/falls.jpg', 'Murchison Falls', NULL),
(181, 'UAA-017', '/images/safaris/uganda/queen/mweya.jpg', 'Queen Elizabeth National Park', NULL),
(182, 'UAA-018', '/images/safaris/uganda/rafting/luxury.jpg', 'Luxury Safari Lodge', NULL),
(183, 'UAA-019', '/images/safaris/kenya/eastafrica/adv4.jpg', 'East Africa Safari', NULL),
(184, 'UAA-001', '/images/safaris/uganda/bwindi/gorilla1.jpg', 'Mountain Gorillas in Bwindi', NULL),
(185, 'UAA-001', '/images/safaris/uganda/bwindi/forest.jpg', NULL, 'Bwindi Impenetrable Forest'),
(186, 'UAA-002', '/images/safaris/uganda/kibale/chimps.jpg', 'Chimpanzees in Kibale', NULL),
(187, 'UAA-002', '/images/safaris/uganda/bwindi/gorilla2.jpg', NULL, 'Mountain Gorillas'),
(188, 'UAA-003', '/images/safaris/uganda/bwindi/tracking.jpg', 'Gorilla Tracking', NULL),
(189, 'UAA-004', '/images/safaris/uganda/bunyonyi/lake.jpg', 'Lake Bunyonyi', NULL),
(190, 'UAA-005', '/images/safaris/uganda/balloon/murchison.jpg', 'Hot Air Balloon over Murchison Falls', NULL),
(191, 'UAA-006', '/images/safaris/uganda/balloon/queen.jpg', 'Balloon Safari Queen Elizabeth', NULL),
(192, 'UAA-007', '/images/safaris/uganda/flying/aerial.jpg', 'Aerial view of Uganda', NULL),
(193, 'UAA-008', '/images/safaris/uganda/flying/bwindi.jpg', 'Flying to Bwindi', NULL),
(194, 'UAA-009', '/images/safaris/uganda/culture/batwa.jpg', 'Batwa People', NULL),
(195, 'UAA-009', '/images/safaris/uganda/culture/crafts.jpg', NULL, 'Traditional Crafts'),
(196, 'UAA-010', '/images/safaris/uganda/rafting/nile.jpg', 'White Water Rafting on the Nile', NULL),
(197, 'UAA-011', '/images/safaris/uganda/photography/bwindi.jpg', 'Bwindi Mountain Gorillas', NULL),
(198, 'UAA-011', '/images/safaris/uganda/photography/murchison.jpg', NULL, 'Murchison Falls'),
(199, 'UAA-012', '/images/safaris/uganda/rafting/daytrip2.jpg', 'Bungee Jumping at the Nile', NULL),
(200, 'UAA-013', '/images/safaris/uganda/culture/crafts.jpg', 'Cultural Village Visit', NULL),
(201, 'UAA-014', '/images/safaris/uganda/bwindi/tracking.jpg', 'Mountain Gorilla', NULL),
(202, 'UAA-015', '/images/safaris/uganda/rafting/daytrip.jpg', 'Boat Cruise on the Nile', NULL),
(203, 'UAA-016', '/images/safaris/uganda/murchison/falls.jpg', 'Murchison Falls', NULL),
(204, 'UAA-017', '/images/safaris/uganda/queen/mweya.jpg', 'Queen Elizabeth National Park', NULL),
(205, 'UAA-018', '/images/safaris/uganda/rafting/luxury.jpg', 'Luxury Safari Lodge', NULL),
(206, 'UAA-019', '/images/safaris/kenya/eastafrica/adv4.jpg', 'East Africa Safari', NULL),
(207, 'RAA-001', '/images/safaris/rwanda/excursions/kigali_memorial.jpg', 'Kigali Genocide Memorial', NULL),
(208, 'RAA-001', '/images/safaris/rwanda/excursions/kimironko_market.jpg', NULL, 'Kimironko Market'),
(209, 'RAA-002', '/images/safaris/rwanda/volcanoes/gorilla.jpg', 'Mountain Gorilla', NULL),
(210, 'RAA-003', '/images/safaris/rwanda/volcanoes/trekking.jpg', 'Gorilla Trekking', NULL),
(211, 'RAA-004', '/images/safaris/rwanda/volcanoes/golden_monkeys.jpg', 'Golden Monkeys', NULL),
(212, 'RAA-005', '/images/safaris/rwanda/akagera/wildlife.jpg', 'Akagera Wildlife', NULL),
(213, 'RAA-006', '/images/safaris/rwanda/nyungwe/canopy.jpg', 'Nyungwe Canopy Walk', NULL),
(214, 'RAA-007', '/images/safaris/rwanda/luxury/volcanoes.jpg', 'Volcanoes National Park', NULL),
(215, 'RAA-007', '/images/safaris/rwanda/luxury/lake_kivu.jpg', NULL, 'Lake Kivu'),
(216, 'RAA-008', '/images/safaris/rwanda/flying/nyungwe_aerial.jpg', 'Aerial View Nyungwe', NULL),
(217, 'RAA-008', '/images/safaris/rwanda/nyungwe/canopy_walk.jpg', NULL, 'Nyungwe Canopy Walk'),
(218, 'zaa-01', '/images/safaris/zanzibar/excursions/stone_town.jpg', 'Stone Town Historic Streets', NULL),
(219, 'zaa-01', '/images/safaris/zanzibar/excursions/stone_town_market.jpg', NULL, 'Stone Town Market'),
(220, 'zaa-04', '/images/safaris/zanzibar/excursions/prison_island.jpg', 'Prison Island Giant Tortoise', NULL),
(221, 'zaa-04', '/images/safaris/zanzibar/excursions/prison_island_beach.jpg', NULL, 'Prison Island Beach'),
(222, 'zaa-09', '/images/safaris/zanzibar/excursions/slave_market.jpg', 'Zanzibar Slave Market Memorial', NULL),
(223, 'zaa-09', '/images/safaris/zanzibar/excursions/anglican_church.jpg', NULL, 'Anglican Church at Slave Market Site'),
(224, 'zaa-02', '/images/safaris/zanzibar/excursions/mnemba_snorkeling.jpg', 'Snorkeling at Mnemba Island', NULL),
(225, 'zaa-02', '/images/safaris/zanzibar/excursions/mnemba_dolphins.jpg', NULL, 'Dolphins at Mnemba Atoll'),
(226, 'zaa-03', '/images/safaris/zanzibar/excursions/tumbatu_island.jpg', 'Tumbatu Island Beach', NULL),
(227, 'zaa-03', '/images/safaris/zanzibar/excursions/tumbatu_culture.jpg', NULL, 'Watumbatu Traditional Dance'),
(228, 'zaa-05', '/images/safaris/zanzibar/excursions/spice_plantation.jpg', 'Spice Plantation Tour', NULL),
(229, 'zaa-05', '/images/safaris/zanzibar/excursions/spices.jpg', NULL, 'Zanzibar Spices'),
(230, 'zaa-06', '/images/safaris/zanzibar/excursions/jozani_forest.jpg', 'Jozani Forest', NULL),
(231, 'zaa-06', '/images/safaris/zanzibar/excursions/red_colobus_monkey.jpg', NULL, 'Red Colobus Monkey'),
(232, 'zaa-08', '/images/safaris/zanzibar/excursions/mikumi_wildlife.jpg', 'Mikumi National Park Wildlife', NULL),
(233, 'zaa-08', '/images/safaris/zanzibar/excursions/mikumi_elephants.jpg', NULL, 'Elephants in Mikumi'),
(234, 'zaa-07', '/images/safaris/zanzibar/excursions/the_rock_restaurant.jpg', 'The Rock Restaurant', NULL),
(235, 'zaa-07', '/images/safaris/zanzibar/excursions/the_rock_high_tide.jpg', NULL, 'The Rock at High Tide'),
(236, 'zaa-10', '/images/safaris/zanzibar/budget/stone_town_aerial.jpg', 'Stone Town Aerial View', NULL),
(237, 'zaa-10', '/images/safaris/zanzibar/budget/spice_tour.jpg', NULL, 'Spice Plantation'),
(238, 'zaa-10', '/images/safaris/zanzibar/budget/island_boat.jpg', NULL, 'Island Boat Trip'),
(239, 'taa-01', '/images/safaris/tanzania/excursions/coffee_farm.jpg', 'Coffee Farm Tour', NULL),
(240, 'taa-01', '/images/safaris/tanzania/excursions/mangalia_falls.jpg', NULL, 'Mangalia Waterfalls'),
(241, 'taa-02', '/images/safaris/tanzania/excursions/arusha_city.jpg', 'Arusha City Tour', NULL),
(242, 'taa-03', '/images/safaris/tanzania/excursions/materuni_falls.jpg', 'Materuni Waterfalls', NULL),
(243, 'taa-04', '/images/safaris/tanzania/excursions/arusha_np.jpg', 'Arusha National Park', NULL),
(244, 'taa-05', '/images/safaris/tanzania/serengeti/migration.jpg', 'Great Migration', NULL),
(245, 'taa-06', '/images/safaris/tanzania/kilimanjaro/summit.jpg', 'Mount Kilimanjaro', NULL),
(246, 'taa-07', '/images/safaris/tanzania/mahale/chimps.jpg', 'Chimpanzees in Mahale', NULL),
(247, 'taa-08', '/images/safaris/tanzania/balloon/serengeti.jpg', 'Hot Air Balloon Safari', NULL),
(248, 'taa-09', '/images/safaris/tanzania/ngorongoro/crater.jpg', 'Ngorongoro Crater', NULL),
(249, 'taa-10', '/images/safaris/tanzania/zanzibar/beach.jpg', 'Zanzibar Beach', NULL),
(250, 'taa-10', '/images/safaris/tanzania/zanzibar/stonetown.jpg', NULL, 'Stone Town'),
(251, 'taa-11', '/images/safaris/tanzania/budget/manyara.jpg', 'Lake Manyara', NULL),
(252, 'taa-12', '/images/safaris/tanzania/budget/tarangire.jpg', 'Tarangire National Park', NULL),
(253, 'taa-13', '/images/safaris/tanzania/luxury/ngorongoro_lodge.jpg', 'Ngorongoro Wildlife Lodge', NULL),
(254, 'taa-14', '/images/safaris/tanzania/luxury/serengeti_lodge.jpg', 'Serengeti Lodge', NULL),
(255, 'taa-15', '/images/safaris/tanzania/luxury/tarangire_lodge.jpg', 'Tarangire Lodge', NULL),
(256, 'taa-20', '/images/safaris/tanzania/birding/flamingos.jpg', 'Flamingos in Tanzania', NULL),
(257, 'taa-21', '/images/safaris/tanzania/eastafrica/combo.jpg', 'East Africa Safari', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `safari_itinerary`
--

DROP TABLE IF EXISTS `safari_itinerary`;
CREATE TABLE IF NOT EXISTS `safari_itinerary` (
  `id` int NOT NULL AUTO_INCREMENT,
  `safari_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day_number` int DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `meals` text COLLATE utf8mb4_unicode_ci,
  `activities` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=416 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `safari_itinerary`
--

INSERT INTO `safari_itinerary` (`id`, `safari_id`, `day_number`, `title`, `description`, `meals`, `activities`) VALUES
(1, 'kaa-001', 1, 'Arrival & First Game Drives', 'Transfer from Nairobi Hotel to Wilson Airport for a 45-minute flight to Masai Mara. Arrival transfer to camp for lunch. Afternoon game drive with expert guide.', 'Lunch, Dinner', 'Flight transfer, Game drive'),
(2, 'kaa-001', 2, 'Full Day Game Viewing', 'Early morning game viewing followed by breakfast. Morning game drive. Lunch then siesta. Afternoon game drive.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Afternoon game drive'),
(3, 'kaa-001', 3, 'Departure', 'Early game viewing then transfer to airstrip for flight back to Nairobi and hotel transfer.', 'Breakfast', 'Game drive, Return flight'),
(4, 'KAA-002', 1, 'Amboseli Game Reserve', 'Drive south through Maasai country to Amboseli Game Reserve arriving at the lodge in the time for lunch. Afternoon game view beneath the snow capped peak of Mount Kilimanjaro. Dinner and overnight at a Safari lodge', 'Lunch, Dinner', 'Drive to Amboseli, Afternoon game drive'),
(5, 'KAA-002', 2, 'Amboseli Game Reserve', 'Dawn drive, returning to the lodge for breakfast. Rest for the morning at the leisure or by the swimming pool. Lunch and a fine game viewing drive in the late afternoon. Dinner and overnight at a Safari Lodge.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Afternoon game drive'),
(6, 'KAA-002', 3, 'Lake Naivasha', 'Early breakfast and proceed to Lake Naivasha with lunch enroute. Afternoon at leisure or by thelake or free for optional excursions. Dinner and overnight at Lake Naivasha Hotel.', 'Breakfast, Lunch, Dinner', 'Drive to Lake Naivasha, Boat ride'),
(7, 'KAA-002', 4, 'Maasai Mara Game Reserve', 'Depart for Maasai Mara Game Reserve after an early breakfast. Lunch at the lodge an afternoon game viewing drive in the reserve the borders the Serengeti Park in Tanzania. Dinner and overnight at a lodge or tented camp.', 'Breakfast, Lunch, Dinner', 'Drive to Maasai Mara, Afternoon game drive'),
(8, 'KAA-002', 5, 'Maasai Mara Game Reserve', 'Morning and afternoon game viewing in the reserve, noted for it\'s black maned lion and leopard. Dinner and overnight at a lodge or tented camp.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Afternoon game drive'),
(9, 'KAA-002', 6, 'NAIROBI', 'After an early breakfast depart Maasai Mara and drive to Nairobi arriving in the evening.', 'Breakfast', 'Drive to Nairobi'),
(10, 'KAA-003', 1, 'Lake Nakuru National Park', 'Drive through lush tea and coffee plantations near Limuru.  Descend into the Great Rift Valley arriving at the famous bird sanctuary of Lake Nakuru Park.  Afternoon game drive, before proceeding to your lodge for the night (160 kms, 3 hrs).', 'Lunch, Dinner', 'Drive to Lake Nakuru, Afternoon game drive'),
(11, 'KAA-003', 2, 'Maasai Mara', 'Early morning drive past the extinct volcano of Mt. Longonot.  Arrive at the famous Maasai Mara for afternoon game drive and overnight (315 kms, 5 hrs).', 'Breakfast, Lunch, Dinner', 'Drive to Maasai Mara, Boat ride'),
(12, 'KAA-003', 3, 'Maasai Mara Game Reserve', 'Enjoy a day of uninterrupted game drive in this popular reserve renowned for its huge numbers of plains game such as wildebeest and zebra, and its majestic predators.', 'Breakfast, Lunch, Dinner', 'Drive to Maasai Mara, Afternoon game drive'),
(13, 'KAA-003', 4, 'NAIROBI', 'Bid farewell to the Mara as you return to Nairobi before lunch (280 kms, 4 1/2 hrs).', 'Breakfast, Lunch', 'Drive to Nairobi'),
(14, 'KAA-004', 1, 'TSAVO EAST & WEST NATIONAL PARK', 'Drive 100 Kms east to Tsavo east/ West  Park, home to the Red Elephant. Viewing game enroute to Ngulia / Kilaguni/ Sentrim  for lunch, dinner and overnight. Afternoon game drive. ( 165 Kms )', 'Lunch, Dinner', 'Drive to Tsavo East, Afternoon game drive'),
(15, 'KAA-004', 2, 'AMBOSELI NATIONAL PARK', 'Proceed to Amboseli Park arriving in time for lunch at Kibo/ Sentrim/Serena. Afternoon game drives in this swampy park with Natural Springs which attract wildlife. We have chances to see the snow capped top of Mt Kilimanjaro and also the  Plains animals. Dinner and overnight at the Lodge, (240 Kms ).Accommodation at Kibo or sentrim Amboseli.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Drive to Amboseli'),
(16, 'KAA-004', 3, 'MOMBASA', 'Early morning game drives before Breakfast. After breakfast drive back to Mombasa.', 'Breakfast', 'Morning game drive, Drive to Mombasa'),
(17, 'KAA-005', 1, 'Amboseli National Park', 'Drive south through open ranch country leading deep into Maasai land. Enter Amboseli Park and proceed to lodge for lunch, game drive and overnight [250 kms 4hrs]', 'Lunch, Dinner', 'Drive to Amboseli, Afternoon game drive'),
(18, 'KAA-005', 2, 'Nairobi', 'Take an early morning game drive before clouds could shroud the snow capped summit of Kilimanjaro providing a magnificent backdrop for the wildlife. After breakfast return to Nairobi.', 'Breakfast, Lunch', 'Morning game drive, Drive to Nairobi'),
(19, 'KAA-008', 1, 'NAIROBI - NANYUKI', 'Meet and greet at the Airport and later depart and drive North to Naromoru town and transferred to Mountain rock Hotel or Equivalent for dinner and overnight.', 'Lunch, Dinner', 'Drive to Nanyuki'),
(20, 'KAA-008', 2, 'NANYUKI - SIRIMON GATE - OLD MOSES', 'Depart Nairobi or your base hotel and drive to sirimon park gate 2600 m and after park formalities hike to Judmeirs camp 3300m 3-4 hrs.', 'Breakfast, Lunch, Dinner', 'Hiking to Old Moses, Scenic views'),
(21, 'KAA-008', 3, 'OLD MOSES - SHIPTONS CAMP', 'After breakfast hike to shiptons camp 4200m, the day is a bit long so we need a slow pace. Lunch en route, dinner/overnight at camp. 6 -7hrs.', 'Breakfast, Lunch, Dinner', 'Hiking to Shipton\'s Camp, Wildlife spotting'),
(22, 'KAA-008', 4, 'SHIPTONS CAMP', 'Stay at Shiptons Camp for another night to acclimatize and arrest day. This makes the summit day much more enjoyable. Dinner and overnight at Shiptons Camp.', 'Breakfast, Lunch, Dinner', 'Acclimatization, Nature walks'),
(23, 'KAA-008', 5, 'SUMMIT DAY - MERU BANDAS', 'Attempt point Lenana 4985m then down to hallstarn ( mintos ) for b/fast and go down to Meru Bandas. Lunch en route  dinner and overnight at the lodge. 8-9  hrs', 'Breakfast, Lunch, Dinner', 'Hiking to Chogoria Camp, Scenic views'),
(24, 'KAA-008', 6, 'MERU BANDAS - NAIROBI', 'After breakfast we hike down through dense bamboo and rain forest for 6 hrs to meet with our vehicle for transfer to chogoria town for lunch then proceed to Nairobi arriving in the evening. Later transferred to the Airport for your outbound flight.', 'Breakfast, Lunch', 'Descent to Chogoria, Drive to Nairobi'),
(25, 'KAA-009', 1, 'NAIROBI - SIRIMON GATE - OLD MOSES', 'Depart Nairobi 7.00 am  for Sirimon Park Gate. After park formalities trek for 9 KM (3-4) hours, 690 metres ascend to Moses Camp. Dinner and overnight at the camp.', 'Lunch, Dinner', 'Drive to Sirimon Gate, Hiking to Old Moses'),
(26, 'KAA-009', 2, 'OLD MOSES - SHIPTONS CAMP', 'Trek 14 KM about 6-7 hours 890 metres ascend to Shiptons Camp. Dinner and overnight at the camp.', 'Breakfast, Lunch, Dinner', 'Hiking to Shipton\'s Camp, Scenic views'),
(27, 'KAA-009', 3, 'SUMMIT DAY', 'Trek 3-5 hours 755 Metres ascend to Point Lenana arriving  early  in the morning to witness the sunrise. Trek back to Old Moses Camp. Dinner and overnight at the camp.', 'Breakfast, Lunch, Dinner', 'Hiking to Point Lenana, Scenic views'),
(28, 'KAA-009', 4, 'OLD MOSES - NAIROBI', 'After breakfast descend further down to Sirimon Park Gate where you are transferred to Nairobi arriving in the evening.', 'Breakfast, Lunch, Dinner', 'Descent to Sirimon Gate, Drive to Nairobi'),
(29, 'KAA-010', 1, 'Sagana', 'Depart Nairobi to central Kenya at the slopes of Mt Kenya to Sagana town, the headquarters of water rafting in Kenya at The Tana River. Arrive in time for lunch. Afternoon rafting this biggest river in Kenya. Dinner and overnight at Savage Camp.', 'Lunch, Dinner', 'Drive to Sagana, White water rafting'),
(30, 'KAA-010', 2, 'Sagana', 'Depart Nairobi to central Kenya at the slopes of Mt Kenya to Sagana town, the headquarters of water rafting in Kenya at The Tana River. Arrive in time for lunch. Afternoon rafting this biggest river in Kenya. Dinner and overnight at Savage Camp.', 'Breakfast, Lunch, Dinner', 'Drive to Sagana, White water rafting'),
(31, 'KAA-010', 3, 'Sagana', 'In the morning proceed for Mt Biking between 20 km – 40 kms. In the afternoon, engage in a stand-up paddle board for 2 hrs. Dinner and overnight at the camp.', 'Breakfast, Lunch, Dinner', 'Mt Biking, Paddle Boarding'),
(32, 'KAA-027', 1, 'Arrival & First Game Drive', 'Morning drive to Bachuma Gate and enter Tsavo East Park, viewing game en route to Voi Safari Lodge / Sentrim / Ngulia / Aruba Ashnil for lunch.', 'Lunch, Dinner', 'Flight transfer, Game drive'),
(33, 'KAA-027', 2, 'Early Morning Game Drive', 'Early morning game drive. Relax and return to Mombasa after lunch.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Afternoon game drive'),
(34, 'KAA-028', 1, 'Drive to Tsavo East/West', 'Drive 100 Kms east to Tsavo East/West Park, home to the Red Elephant. Afternoon game drive and overnight at Ngulia / Kilaguni / Sentrim.', 'Lunch, Dinner', 'Game drive'),
(35, 'KAA-028', 2, 'Amboseli National Park', 'Proceed to Amboseli Park for lunch at Kibo / Sentrim / Serena. Afternoon game drive with chances to see Mt Kilimanjaro.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Afternoon game drive'),
(36, 'KAA-028', 3, 'Return to Mombasa', 'Early morning game drive, breakfast, then return to Mombasa.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Afternoon game drive'),
(37, 'KAA-031', 1, 'Fly to Zanzibar', 'Fly via Mombasa to Zanzibar. Afternoon spice tour visiting clove plantations.', 'Lunch, Dinner', 'Flight, Game drive'),
(38, 'KAA-031', 2, 'Stone Town Tour & Boat Trip', 'Morning tour of Stone Town including market, Sultan\'s Palace and Museum. Afternoon boat trip for swimming and snorkeling.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Afternoon game drive'),
(39, 'KAA-031', 3, 'Departure', 'Guided shopping trip before transfer to airport. Accommodation upon request.', 'Breakfast, Lunch, Dinner', 'Shopping trip'),
(40, 'KAA-032', 1, 'Drive to Amboseli', 'Drive south through open ranch country leading deep into Maasai land. Enter Amboseli Park and proceed to lodge for lunch, game drive and overnight [250 kms 4hrs]. Full board at the camp.', 'Lunch, Dinner', 'Game drive'),
(41, 'KAA-032', 2, 'Return to Nairobi', 'Take an early morning game drive before clouds could shroud the snow capped summit of Kilimanjaro providing a magnificent backdrop of wild animals. After breakfast return to Nairobi.', 'Breakfast, Lunch', 'Morning game drive'),
(42, 'KAA-033', 1, 'Drive to Maasai Mara', 'Drive south along the floor of the Great Rift Valley. Lunch at Narok and then climb the western wall entering the Hemingway country \'Serengeti Plains\'. Arrive late afternoon at the Maasai Mara Game Reserve. Full board at the camp.', 'Lunch, Dinner', 'Game drive'),
(43, 'KAA-033', 2, 'Full Day Game Drive', 'A full day spent game viewing across the rich, tree-studded grasslands and rolling hills. The famous Mara is renowned for its great herds of plains games, black maned lion, leopard and cheetah. It also has numerous elephant, virtually every type of wildlife to be found in Kenya. Full board at the camp.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Afternoon game drive'),
(44, 'KAA-033', 3, 'Return to Nairobi', 'After breakfast, depart for Nairobi, enjoy a picnic lunch en-route and arrive in Nairobi late evening.', 'Breakfast, Lunch', 'Afternoon game drive'),
(45, 'KAA-034', 1, 'Drive to Samburu', 'Early morning departure to the semi-desert north. Cross the equator, arriving at your lodge, where thorn bush gives way to acacia woodland and cascading springs. Full board at the camp.', 'Lunch, Dinner', 'Game drive'),
(46, 'KAA-034', 2, 'Full Day Game Drive', 'A full day spent game viewing along the banks of the river adorned with doum palms and attracting big game. Full board at the camp.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Afternoon game drive'),
(47, 'KAA-034', 3, 'Return to Nairobi', 'After a hearty breakfast, leave for Nairobi, arriving before lunch.', 'Breakfast, Lunch', 'Afternoon game drive'),
(48, 'KAA-035', 1, 'Drive to Maasai Mara', 'Leave Nairobi for Maasai Mara Game Reserve, picnic en-route. On arrival at the game reserve, proceed to the camp, in search of black maned lion, elephant, leopard, cheetah, buffalo and other plains game. Full board at the camp.', 'Lunch, Dinner', 'Game drive'),
(49, 'KAA-035', 2, 'Full Day Game Drive', 'Full day spent exploring this unique park which really forms the northern part of the Serengeti National Park. Full board at the camp.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Afternoon game drive'),
(50, 'KAA-035', 3, 'Drive to Nakuru', 'Depart after breakfast, have lunch in Narok town and later proceed to Lake Nakuru birds paradise arriving in good time for the afternoon game drive. Full board at the camp.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Afternoon game drive'),
(51, 'KAA-035', 4, 'Return to Nairobi', 'Pre breakfast game drive, have breakfast and later depart for Nairobi in the afternoon.', 'Breakfast, Lunch', 'Afternoon game drive'),
(52, 'KAA-036', 1, 'Drive to Maasai Mara', 'Drive south along the floor of the Rift Valley. Lunch is served en route, then pass Narok, climb the western wall entering Hemingway country \'Serengeti Plains\'. Arrive late afternoon in the Maasai Mara Game Reserve. Full board at the Camp.', 'Lunch, Dinner', 'Game drive'),
(53, 'KAA-036', 2, 'Full Day Game Drive', 'Full day spent in search of Elephants, Zebra, Wildebeest, Rhino, Buffalo, Lion, Cheetah, Leopard and other plains game. Full board at the camp.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Afternoon game drive'),
(54, 'KAA-036', 3, 'Drive to Nakuru', 'After breakfast, leave the camp for Lake Nakuru, picnic en-route at the Safari junction. After Lunch, proceed to Lake Nakuru via Lake Elementaita stopping for panoramic and scenery viewing. You will arrive in Nakuru later in the afternoon. Dinner and overnight in Nakuru.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Afternoon game drive'),
(55, 'KAA-036', 4, 'Drive to Lakes Bogoria & Baringo', 'After an early pre morning game drive and breakfast, drive to Lake Baringo arriving in time for lunch, explore on foot this naturalist lakes and view birds in their thousands. Dinner and overnight in your hotel or camp.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Afternoon game drive'),
(56, 'KAA-036', 5, 'Full Day at Lake Baringo', 'Full day in Baringo with a morning birds watching walk along the cliff walls. Lunch and afternoon boat ride in this fresh water lake and visit to traditional villages. Dinner and overnight at your Hotel or Camp.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Afternoon game drive'),
(57, 'KAA-036', 6, 'Return to Nairobi', 'After breakfast, return to Nairobi, arriving in the late afternoon.', 'Breakfast, Lunch', 'Afternoon game drive'),
(58, 'KAA-037', 1, 'Drive to Maasai Mara', 'Leave Nairobi for Maasai Mara Game Reserve, picnic en-route. On arrival at the game reserve, proceed for a game drive en route to the camp in search of black maned lion, elephant, leopard, cheetah, buffalo and other plains game. Full board at the camp.', 'Lunch, Dinner', 'Game drive'),
(59, 'KAA-037', 2, 'Full Day Game Drive', 'Full day spent in search of Elephants, Zebra, Wildebeest, Rhino, Buffalo, Lion, Cheetah, Leopard and other plains game. Full board at the camp.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Afternoon game drive'),
(60, 'KAA-037', 3, 'Drive to Nakuru', 'After breakfast, leave the camp for Lake Nakuru, picnic en-route. After Lunch, proceed to Lake Nakuru stopping for panoramic and scenery viewing. You will arrive in Nakuru later in the afternoon. Dinner and overnight in Nakuru.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Afternoon game drive'),
(61, 'KAA-037', 4, 'Drive to Amboseli', 'After an early pre morning game drive and breakfast, drive to Amboseli arriving in time for lunch, explore on foot this naturalist park and view big game under the backdrop of Mt. Kilimanjaro. Dinner and overnight in your camp.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Afternoon game drive'),
(62, 'KAA-037', 5, 'Full Day at Amboseli', 'Full day in Amboseli with a morning and afternoon game drives. Dinner and overnight at your Camp.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Afternoon game drive'),
(63, 'KAA-037', 6, 'Return to Nairobi', 'After breakfast, return to Nairobi, arriving in the late afternoon.', 'Breakfast, Lunch', 'Afternoon game drive'),
(64, 'KAA-038', 1, 'Drive to Maasai Mara', 'Leave Nairobi for Masai Mara Game Reserve, picnic lunch en-route. On arrival at the game reserve, proceed for a game drive en route to the camp in search of black maned lions, elephant, cheetah, buffalo, and other plains game. Full board at the camp.', 'Lunch, Dinner', 'Game drive'),
(65, 'KAA-038', 2, 'Full Day Game Drive', 'Full day at Maasai Mara on a full board at the Camp.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Afternoon game drive'),
(66, 'KAA-038', 3, 'Drive to Nakuru', 'Early morning game drive and leave for Nakuru National Park. Lunch en route. Afternoon game drive in this park famous for the big five and a million plus flamingos. Full board at your hotel.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Afternoon game drive'),
(67, 'KAA-038', 4, 'Drive to Samburu', 'After breakfast, leave for Samburu. Picnic lunch en-route. Afternoon game drive in the park with the possibility of seeing the big cats. Full board at the camp.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Afternoon game drive'),
(68, 'KAA-038', 5, 'Full Day at Samburu', 'Full day in Samburu on a full board basis at the Camp.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Afternoon game drive'),
(69, 'KAA-038', 6, 'Return to Nairobi', 'Early morning game drive and leave for Nairobi after breakfast, arriving late in the afternoon.', 'Breakfast, Lunch', 'Afternoon game drive'),
(70, 'KAA-039', 1, 'Nairobi/L. Baringo', 'Depart Nairobi in the morning stopping at the highest point of the Great Rift Valley. Lunch at Nakuru and arrive in L. Baringo in the late afternoon. Camp overnight at your campsite.', 'Lunch, Dinner', 'Drive to L. Baringo'),
(71, 'KAA-039', 2, 'L. Baringo/Maralal', 'Climb out of the Rift Valley in the morning towards Maralal and the red ochred Samburu people still nomadic and proud. Full board at your campsite.', 'Breakfast, Lunch, Dinner', 'Drive to Maralal'),
(72, 'KAA-039', 3, 'Maralal / Turkana', 'Break early in the morning for L. Turkana. Another spectacular climb leads you to Losiolo, descend down to Baragoi on your way to South Horr passing by a small stream; the rough road gets worse as we descend across ancient lava flows towards the Jade Sea and the Oasis Loiyangalani lying between the Lake and Mt. Kulal. Arrive in your permanent beach campsite soon after lunch and settle in the Turkana huts. Dinner and overnight in your campsite.', 'Breakfast, Lunch, Dinner', 'Drive to L. Turkana'),
(73, 'KAA-039', 4, 'Turkana', 'Spend the day relaxing and bathing. A short boat excursion will follow to view crocodiles and other species of birds. You will also visit a Turkana Manyatta in the evening for traditional dances. Dinner and overnight in your camp.', 'Breakfast, Lunch, Dinner', 'Boat excursion, Visit Turkana Manyatta'),
(74, 'KAA-039', 5, 'Turkana/ Maralal', 'Drive up the Horr Valley back to Baragoi and proceed to camp in Maralal.', 'Breakfast, Lunch, Dinner', 'Drive to Maralal'),
(75, 'KAA-039', 6, 'Maralal/Samburu', 'Drive to Samburu Game Reserve and settle by the canopy of trees in the Uaso Nyiro River campsite.', 'Breakfast, Lunch, Dinner', 'Drive to Samburu'),
(76, 'KAA-039', 7, 'Samburu', 'Morning and afternoon game runs in Samburu. Full board in your campsite.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Afternoon game drive'),
(77, 'KAA-039', 8, 'Samburu/Nairobi', 'After breakfast drive back to Nairobi with lunch in Nanyuki. Drop off clients who wish to climb Mt. Kenya. Arrival in Nairobi is late in the evening.', 'Breakfast, Lunch', 'Drive to Nairobi'),
(78, 'KAA-040', 1, 'Nairobi/Samburu', 'Depart Nairobi in the morning for Samburu Game Reserve stopping in Nanyuki for lunch. You will pass through pleasant countryside with coffee and tea plantations providing a good view of Mt. Kenya. Game drive en route to your camp for dinner and overnight.', 'Lunch, Dinner', 'Morning game drive, Drive to Mombasa'),
(79, 'KAA-040', 2, 'Samburu', 'Morning and afternoon game run in Samburu. Full board at your campsite.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Afternoon game drive'),
(80, 'KAA-040', 3, 'Samburu/Marsabit', 'Early morning pre-breakfast game drive. After breakfast drive to Marsabit via the \'singing wells\' of the Boran tribe. Late lunch at the camp. The afternoon will be at leisure. Dinner and overnight at your campsite.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Drive to Marsabit'),
(81, 'KAA-040', 4, 'Marsabit/Kalacha', 'After breakfast proceed on a game drive in the nearby Marsabit National Park including a stop at Lake Paradise, a natural water hole in the park. Drive on to Kalacha with picnic lunch en route. Dinner and overnight in your campsite in this tiny settlement at the edge of the Chalbi desert.', 'Breakfast, Lunch, Dinner', 'Game drive, Drive to Kalacha'),
(82, 'KAA-040', 5, 'Kalacha/L. Turkana', 'After breakfast depart Kalacha for Loiyangalani, the south-eastern shore of L. Turkana. The afternoon will be at leisure after lunch on arrival. Dinner and overnight in the campsite.', 'Breakfast, Lunch, Dinner', 'Drive to L. Turkana'),
(83, 'KAA-040', 6, 'L. Turkana', 'A full day by the shore of L. Turkana during which you can visit the El Molo tribesmen in their village. The El Molo are said to be the smallest tribe in Africa numbering less than 100 people. All meals and overnight at your camp.', 'Breakfast, Lunch, Dinner', 'Visit El Molo village'),
(84, 'KAA-040', 7, 'L. Turkana/Maralal', 'After breakfast depart Loiyangalani for Maralal town, via pristine landscape and scenery. Lunch will be served en route. Dinner and overnight in your campsite in Maralal.', 'Breakfast, Lunch, Dinner', 'Drive to Maralal'),
(85, 'KAA-040', 8, 'Maralal/Nairobi (via Thompson Falls)', 'After breakfast depart for Nairobi via Thompson Falls with lunch en route. Arrive Nairobi in the early evening.', 'Breakfast, Lunch, Dinner', 'Drive to Nairobi'),
(86, 'KAA-041', 1, 'Nairobi/Nakuru', 'Proceed to Hells Gate National Park for a morning of trekking inside the park. Proceed after lunch to Kariandusi prehistoric site and then on to Hyrax Hill prehistoric site. Overnight in Nakuru camp.', 'Lunch, Dinner', 'Drive to Nakuru, Trekking'),
(87, 'KAA-041', 2, 'L. Nakuru/Bogoria/Baringo', 'Pre-breakfast game run in L. Nakuru National Park. After breakfast, proceed to camp in Lake Baringo for dinner and overnight.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Drive to Baringo'),
(88, 'KAA-041', 3, 'L. Baringo/Saiwa Swamp', 'Baringo to Cherangani hills via Marigat. Here you will have a chance to see the rare Sitatunga antelope. Overnight in Saiwa Swamp or Kitale hotel.', 'Breakfast, Lunch, Dinner', 'Drive to Saiwa Swamp'),
(89, 'KAA-041', 4, 'Saiwa Swamp/ Mt Elgon', 'From Saiwa swamp via Kitale, we head to Mt Elgon, the second highest in Kenya arriving in time for lunch. Time allowing you will visit the Kiptum caves in Mt. Elgon. Dinner and overnight at the campsite or the Bandas.', 'Breakfast, Lunch, Dinner', 'Drive to Mt Elgon, Visit Kiptum caves'),
(90, 'KAA-041', 5, 'Mt Elgon/Kakamega Forest', 'Proceed after breakfast to Kakamega forest via Webuye. Lunch en route. Afternoon visit of the Kakamega forest. Dinner and overnight in your campsite or Bandas.', 'Breakfast, Lunch, Dinner', 'Drive to Kakamega Forest, Forest visit'),
(91, 'KAA-041', 6, 'Kakamega Forest/Kisii', 'After breakfast proceed to Kisii. Arrive in time for lunch in Kisii. In the afternoon visit a soapstone curving center at Tabaka area. Dinner and overnight in Kisii hotel.', 'Breakfast, Lunch, Dinner', 'Drive to Kisii, Visit soapstone center'),
(92, 'KAA-041', 7, 'Kisii/Maasai Mara', 'After breakfast drive to Maasai Mara via Kilgoris. Game runs en route to your campsite for dinner and overnight.', 'Breakfast, Lunch, Dinner', 'Drive to Maasai Mara, Game drive'),
(93, 'KAA-041', 8, 'Maasai Mara', 'Full day in Maasai Mara Game Reserve with picnic lunch. Dinner and overnight in your campsite.', 'Breakfast, Lunch, Dinner', 'Full day game drive'),
(94, 'KAA-041', 9, 'Maasai Mara/Nairobi', 'After breakfast drive out of the Reserve with game run en route. Picnic lunch will be served on your return to Nairobi. Arrival in Nairobi is in the afternoon.', 'Breakfast, Lunch, Dinner', 'Drive to Nairobi, Game drive'),
(95, 'KAA-042', 1, 'Nairobi to Amboseli', 'Drive south through open ranch country leading deep into Maasai land. Enter Amboseli Park and proceed to lodge for lunch, game drive and overnight.', 'Lunch, Dinner', 'Game drive'),
(96, 'KAA-042', 2, 'Amboseli to Nairobi', 'Take an early morning game drive before clouds could shroud the snow capped summit of Kilimanjaro providing a magnificent backdrop for the wildlife. After breakfast return to Nairobi.', 'Breakfast, Lunch', 'Morning game drive'),
(97, 'KAA-043', 1, 'Nairobi to Aberdares', 'Drive through Thika and pineapple plantations, cross Tana River and climb into Kikuyu farmlands. Arrive for lunch at Aberdare Country Club/Outspan. Afternoon game drive in Aberdares National Park visiting floodlit waterholes and saltlicks.', 'Lunch, Dinner', 'Game drive'),
(98, 'KAA-043', 2, 'Aberdares to Nairobi', 'Morning descent to base hotel and return to Nairobi in time for lunch.', 'Breakfast, Lunch', 'Drive to Nairobi'),
(99, 'KAA-044', 1, 'Nairobi to Amboseli', 'Drive south through open ranch country leading deep into Maasai land. Enter Amboseli Park and proceed to lodge for lunch, game drive and overnight.', 'Lunch, Dinner', 'Game drive'),
(100, 'KAA-044', 2, 'Amboseli to Tsavo West', 'Cross Shetani Lava Flow to Tsavo West for game drive and overnight.', 'Breakfast, Lunch, Dinner', 'Game drive'),
(101, 'KAA-044', 3, 'Tsavo West to Mombasa', 'After breakfast, drive to Mombasa, arrive for lunch.', 'Breakfast, Lunch', 'Drive to Mombasa'),
(102, 'KAA-045', 1, 'Nairobi to Masai Mara', 'Drive to the escarpment, descend into the Great Rift Valley to Narok. Enter Masai Mara for lunch, afternoon game drive, and overnight.', 'Lunch, Dinner', 'Game drive'),
(103, 'KAA-045', 2, 'Masai Mara', 'Full day on the undulating hills and grasslands viewing antelopes, gazelles, lions, and other predators.', 'Breakfast, Lunch, Dinner', 'Full day game drive'),
(104, 'KAA-045', 3, 'Masai Mara to Nairobi', 'Depart for Nairobi arriving before lunch.', 'Breakfast, Lunch', 'Drive to Nairobi'),
(105, 'KAA-046', 1, 'Samburu', 'Early morning departure to the semi-desert north, arriving at Shaba Lodge after crossing the equator [352 kms, 5 1/2 hrs]', 'Lunch, Dinner', 'Game drive'),
(106, 'KAA-046', 2, 'Samburu', 'Full day game viewing along the riverbanks.', 'Breakfast, Lunch, Dinner', 'Full day game drive'),
(107, 'KAA-046', 3, 'Samburu/Nairobi', 'Return to Nairobi, arriving before lunch. Full board accommodations at Ashnil/Simba or Sarova Shaba or Simba Lodges.', 'Breakfast, Lunch', 'Drive to Nairobi'),
(108, 'KAA-047', 1, 'Nairobi to Lake Nakuru', 'Drive through tea and coffee plantations near Limuru, arrive at Lake Nakuru Park. Afternoon game drive, overnight at lodge.', 'Lunch, Dinner', 'Game drive'),
(109, 'KAA-047', 2, 'Lake Nakuru to Masai Mara', 'Morning drive past Mt. Longonot, arrive at Maasai Mara for afternoon game drive and overnight.', 'Breakfast, Lunch, Dinner', 'Game drive'),
(110, 'KAA-047', 3, 'Masai Mara', 'Full day of game drive in the reserve.', 'Breakfast, Lunch, Dinner', 'Full day game drive'),
(111, 'KAA-047', 4, 'Masai Mara to Nairobi', 'Return to Nairobi before lunch.', 'Breakfast, Lunch', 'Drive to Nairobi'),
(112, 'KAA-048', 1, 'Nairobi to Amboseli', 'Drive south through open ranch country leading deep into Maasai land. Enter Amboseli Park and proceed to lodge for lunch, game drive and overnight [250 kms, 4 hrs].', 'Lunch, Dinner', 'Game drive'),
(113, 'KAA-048', 2, 'Amboseli to Tsavo West', 'Cross Shetani Lava Flow to Tsavo West for game drive and overnight [105 kms, 2 hrs].', 'Breakfast, Lunch, Dinner', 'Game drive'),
(114, 'KAA-048', 3, 'Tsavo West to Taita Hills', 'Drive to Taita Hills for game drive and overnight [90 kms, 1.5 hrs].', 'Breakfast, Lunch, Dinner', 'Game drive'),
(115, 'KAA-048', 4, 'Taita Hills to Mombasa', 'After breakfast, drive to Mombasa, arrive for lunch.', 'Breakfast, Lunch', 'Drive to Mombasa'),
(116, 'KAA-049', 1, 'Tree Hotel', 'Morning drive through Kikuyu farmlands, afternoon game drive in Aberdares, overnight at base hotel [160 kms, 3 hrs].', 'Breakfast, Lunch, Dinner', 'Morning game drive, Afternoon game drive'),
(117, 'KAA-049', 2, 'Samburu', 'Drive north to Samburu, afternoon game drive at Shaba Lodge [207 kms, 3.5 hrs].', 'Breakfast, Lunch, Dinner', 'Drive to Samburu, Afternoon game drive'),
(118, 'KAA-049', 3, 'Samburu', 'Full day game viewing including rarer northern species.', 'Breakfast, Lunch, Dinner', 'Full day game drive'),
(119, 'KAA-049', 4, 'Mt Kenya', 'Travel to cool slopes of Mt Kenya, overnight at Nanyuki lodge [137 kms, 0.5 hrs].', 'Breakfast, Lunch, Dinner', 'Drive to Mt Kenya'),
(120, 'KAA-049', 5, 'Nairobi', 'Depart for Nairobi after breakfast, arriving by lunch [215 kms, 3 hrs].', 'Breakfast, Lunch', 'Drive to Nairobi'),
(121, 'KAA-050', 1, 'Amboseli', 'Drive south through Maasai country, afternoon game viewing beneath Kilimanjaro.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Afternoon game drive'),
(122, 'KAA-050', 2, 'Amboseli', 'Dawn drive, leisure morning, afternoon game drive.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Afternoon game drive'),
(123, 'KAA-050', 3, 'Lake Naivasha', 'Drive to Lake Naivasha with lunch enroute, afternoon at leisure.', 'Breakfast, Lunch, Dinner', 'Drive to Lake Naivasha'),
(124, 'KAA-050', 4, 'Maasai Mara', 'Depart early, lunch at lodge, afternoon game drive.', 'Breakfast, Lunch, Dinner', 'Drive to Maasai Mara, Afternoon game drive'),
(125, 'KAA-050', 5, 'Maasai Mara', 'Full day game viewing of black-maned lions and leopards.', 'Breakfast, Lunch, Dinner', 'Full day game drive'),
(126, 'KAA-050', 6, 'Nairobi', 'Return to Nairobi after breakfast. Full board accommodations at Sentrim/Kibo/Kilima Amboseli, Pelican/Sentrim Naivasha, and Sentrim/Ol Moran/Mara Leisure in Mara.', 'Breakfast, Lunch', 'Drive to Nairobi'),
(127, 'KAA-051', 1, 'Samburu', 'Morning drive through rolling agricultural land round Nyeri, cross the equator, arrive at Samburu lodge for lunch, game drive and overnight [352 kms, 0.5 hrs].', 'Lunch, Dinner', 'Game drive'),
(128, 'KAA-051', 2, 'Samburu', 'Full day viewing elephants, lions, Gerenuk, Beisa Oryx, and crocodiles.', 'Breakfast, Lunch, Dinner', 'Full day game drive'),
(129, 'KAA-051', 3, 'Nakuru', 'Drive through Aberdares to Nakuru Park, lunch and game drive, overnight [315 kms, 5 hrs].', 'Breakfast, Lunch, Dinner', 'Drive to Nakuru, Game drive'),
(130, 'KAA-051', 4, 'Maasai Mara', 'Continue across the valley to Maasai Mara, lunch, afternoon game drive [315 kms, 5 hrs].', 'Breakfast, Lunch, Dinner', 'Drive to Maasai Mara, Afternoon game drive'),
(131, 'KAA-051', 5, 'Maasai Mara', 'Full day game drive with photography opportunities of black-maned lions, cheetah, and leopard.', 'Breakfast, Lunch, Dinner', 'Full day game drive'),
(132, 'KAA-051', 6, 'Nairobi', 'Return to Nairobi after breakfast. Full board accommodations at Sentrim/Sopa Samburu, Sentrim/Flamingo Nakuru, Sentrim/Ol Moran or Mara Leisure in Mara.', 'Breakfast, Lunch', 'Drive to Nairobi'),
(133, 'KAA-052', 1, 'Nairobi - Tree Hotel', 'Drive through Kikuyu farmlands to Nyeri, lunch, afternoon game drive in Aberdares, overnight at base hotel.', 'Breakfast, Lunch, Dinner', 'Game drive, Drive to Tree Hotel'),
(134, 'KAA-052', 2, 'Tree Hotel - Samburu', 'Descend into semi-desert Samburu, afternoon game drive, overnight at lodge.', 'Breakfast, Lunch, Dinner', 'Drive to Samburu, Afternoon game drive'),
(135, 'KAA-052', 3, 'Samburu', 'Full day exploring Samburu Reserve.', 'Breakfast, Lunch, Dinner', 'Full day game drive'),
(136, 'KAA-052', 4, 'Samburu - Lake Nakuru/Lake Naivasha', 'Drive to Lake Nakuru with a stop at Thompson Falls, lunch, visit bird sanctuary, overnight at hotel or camp at Nakuru/Naivasha.', 'Breakfast, Lunch, Dinner', 'Drive to Nakuru/Naivasha, Visit bird sanctuary'),
(137, 'KAA-052', 5, 'Maasai Mara', 'Early departure, lunch at lodge, afternoon game drive in Mara, overnight at lodge or tented camp.', 'Breakfast, Lunch, Dinner', 'Drive to Maasai Mara, Afternoon game drive'),
(138, 'KAA-052', 6, 'Nairobi', 'Return to Nairobi after breakfast.', 'Breakfast, Lunch', 'Drive to Nairobi'),
(139, 'KAA-053', 1, 'Nairobi - Masai Mara', 'Drive along the Rift Valley floor, lunch en route, arrive late afternoon at Maasai Mara.', 'Breakfast, Lunch, Dinner', 'Game drive'),
(140, 'KAA-053', 2, 'Masai Mara', 'Full day searching for elephants, zebra, wildebeest, rhino, buffalo, lion, cheetah, leopard, overnight at base camp.', 'Breakfast, Lunch, Dinner', 'Full day game drive'),
(141, 'KAA-053', 3, 'Masai Mara', 'Full day game viewing with picnic lunch, overnight at camp.', 'Breakfast, Lunch, Dinner', 'Full day game drive'),
(142, 'KAA-053', 4, 'Masai Mara - Nakuru', 'Depart for Lake Nakuru, picnic lunch at Safari Junction, visit Lake Elementaita, overnight at Nakuru hotel.', 'Breakfast, Lunch, Dinner', 'Drive to Nakuru, Visit Lake Elementaita'),
(143, 'KAA-053', 5, 'Lakes Nakuru - Bogoria - Baringo', 'Drive to Lake Baringo via Lake Bogoria, picnic lunch, explore on foot, view flamingos, overnight at Baringo hotel or camp.', 'Breakfast, Lunch, Dinner', 'Drive to Baringo, Explore on foot'),
(144, 'KAA-053', 6, 'Lake Nakuru - Nairobi', 'Early morning game drive at Lake Nakuru, return to Nairobi after breakfast.', 'Breakfast, Lunch', 'Game drive, Drive to Nairobi'),
(145, 'KAA-054', 1, 'Tree Hotel', 'Drive north to Kenya\'s Central Highlands arriving in time for lunch at Aberdare National Park. After lunch at the base hotel, proceed for game watching and overnight [160 kms 3hrs].', 'Breakfast, Lunch, Dinner', 'Game drive, Drive to Tree Hotel'),
(146, 'KAA-054', 2, 'Samburu', 'Drive across equator to Samburu, lunch at Shaba Lodge, drive along Uaso Nyiro river, overnight [207 kms, 3.5 hrs].', 'Breakfast, Lunch, Dinner', 'Drive to Samburu, Afternoon game drive'),
(147, 'KAA-054', 3, 'Samburu', 'Full day game viewing in rugged terrain.', 'Breakfast, Lunch, Dinner', 'Full day game drive'),
(148, 'KAA-054', 4, 'Mt Kenya', 'Drive south to Nanyuki, overnight at lodge [137 kms, 2.5 hrs].', 'Breakfast, Lunch, Dinner', 'Drive to Mt Kenya'),
(149, 'KAA-054', 5, 'Nakuru', 'Drive west across Aberdares to Lake Nakuru, lunch and game drive, overnight [137 kms, 2.5 hrs].', 'Breakfast, Lunch, Dinner', 'Drive to Nakuru, Game drive'),
(150, 'KAA-054', 6, 'Maasai Mara', 'Travel across Rift Valley to Masai Mara, afternoon game drive, overnight [315 kms, 3.5 hrs].', 'Breakfast, Lunch, Dinner', 'Drive to Maasai Mara, Afternoon game drive'),
(151, 'KAA-054', 7, 'Maasai Mara', 'Full day of wildlife viewing.', 'Breakfast, Lunch, Dinner', 'Full day game drive'),
(152, 'KAA-054', 8, 'Nairobi', 'Return to Nairobi after breakfast, arriving at lunch [280 kms, 4.5 hrs].', 'Breakfast, Lunch', 'Drive to Nairobi'),
(153, 'KAA-055', 1, 'Arrival & First Game Drive', 'Depart Nairobi to Lake Naivasha arriving in time for lunch. After lunch at the camp proceed for afternoon challenge and cycle amoungst wildlife at Hellsgate National park . Dinner and overnight at Carnellis camp or Fishermans camp.', 'Lunch, Dinner', 'Flight transfer, Game drive'),
(154, 'KAA-055', 2, 'Naivasha', 'Rock climb Hellsgate National park including Both the Fischers and Central towers. Also visit Jorowa Gorges and Hells Kitchen. In the afternoon, have a boat ride among the hippos in Lake Naivasha. Dinner and overnight at the camp.', 'Breakfast, Lunch, Dinner', 'Rock Climbing, Boat ride, Camping'),
(155, 'KAA-055', 3, 'Departure', 'Depart after early breakfast and hike Mt Longonot crater( 2700 mtrs high) in the morning. After lunch depart for Nairobi.', 'Breakfast', 'Game drive, Return flight'),
(156, 'KAA-056', 1, 'Olpejeta Conservancy.', 'Depart Nairobi and drive north to Ol Pajeta conservancy arriving in time for lunch in this game reserve that cuts the equator both to the North and South. Afternoon game drive in 4x4 vehicles in  search of the big five. Dinner and overnight at Ol Pajeta camp.', 'Lunch, Dinner', 'Game drive'),
(157, 'KAA-056', 2, 'Rift Valley Adventures', 'Full day cycling and biking around Mt Kenya. Dinner and overnight at Rift Valley Adventures camp.', 'Breakfast, Lunch, Dinner', 'Cycling, Camping'),
(158, 'KAA-056', 3, 'Ngare Ndare Forest Canopy', 'Full day trekking at this Natural equatorial forest with Canopy walk. Dinner and overnight at Nanyuki camp.', 'Breakfast, Lunch, Dinner', 'Trekking, Canopy walk'),
(159, 'KAA-056', 4, 'Departure', 'After breakfast return to Nairobi with picnic lunch enroute.', 'Breakfast', 'Return drive'),
(160, 'KAA-057', 1, 'Sagana', 'Depart Nairobi to central Kenya at the slopes of Mt Kenya to Sagana town, the headquarters of water rafting in Kenya at The Tana River. Arrive in time for lunch. Afternoon rafting in the biggest river in Kenya. Dinner and overnight at Savage Camp.', 'Lunch, Dinner', 'Rafting'),
(161, 'KAA-057', 2, 'Sagana', 'In the morning after breakfast, do Water sport Kayaking and in the afternoon do Rock climbing. Have a sundowner dinner on the banks of this mighty river. Dinner and overnight at the camp.', 'Breakfast, Lunch, Dinner', 'Kayaking, Rock Climbing'),
(162, 'KAA-057', 3, 'Sagana', 'In the morning proceed for Mt Biking between 20 km – 40 kms. In the afternoon, engage in a stand-up paddle board for 2 hrs. Dinner and overnight at the camp.', 'Breakfast, Lunch, Dinner', 'Paddle Boarding, Mountain Biking'),
(163, 'KAA-058', 1, '70Km Cycle Ride', 'Drive from Nairobi to corner baridi on th outskirts of the city then cycle for 70 kms free fall down hill towards Masai Mara Game reserve. Dinner and overnight at a camp.', 'Lunch, Dinner', 'Rafting'),
(164, 'KAA-058', 2, '40Km Cycle Ride among Wildlife', 'Cycle for 40 Kms amoungst wildlife in Maasai Mara National reserve. Dinner and overnight at the camp.', 'Breakfast, Lunch, Dinner', 'Kayaking, Rock Climbing'),
(165, 'KAA-058', 3, '8Km Cycle Ride & 4x4 Transfer', 'This day we only cycle for 8 Kms due to the difficult terrains then picked by 4x4 to our camp for dinner and overnight.', 'Breakfast, Lunch, Dinner', 'Paddle Boarding, Mountain Biking'),
(166, 'KAA-058', 4, '50Km Cycle Ride', 'Cycle for further 50 Kms in this wonderful scenic Maasai people countyside with beautiful landscapes. Dinner and overnight at a camp.', 'Breakfast, Lunch, Dinner', 'Return drive'),
(167, 'KAA-058', 5, 'Departure', 'After breakfast Return to Nairobi by Vehicle.', 'Breakfast', 'Return drive'),
(168, 'KAA-059', 1, 'Nairobi - Chogoria', 'Drive from Nairobi to Chogoria town 4 hrs and proceed  to the Chogoria Forest gate for Lunch. In the afternoon, hike from the gate to Bush Clearing 2600 m. Dinner and overnight at the camp.', 'Lunch, Dinner', 'Flight transfer, Game drive'),
(169, 'KAA-059', 2, 'Hike to Lake Ellis', 'Hike from Bush Clearing to Lake Ellis 3200m where prince William was engaged. Dinner and overnight at a camp.', 'Breakfast, Lunch, Dinner', 'Hiking, Camping'),
(170, 'KAA-059', 3, 'Hike to Mintos Hut', 'Hike from Lake ellis to Mintos Hut. In the afternoon Visit the temple.', 'Breakfast, Lunch, Dinner', 'Hiking, Temple visit'),
(171, 'KAA-059', 4, 'Summit Day', 'Summit Morning from 2 am to Summit point Lenana 4895m and down to old Moses camp.', 'Breakfast, Lunch, Dinner', 'Return drive'),
(172, 'KAA-059', 5, 'Biking to Ol Pajeta Conservancy', 'Biking from Old Moses camp to Ol Pajeta Conservancy or Rift Valley Adventures Camp approximately 70 Kms.', 'Breakfast, Lunch, Dinner', 'Biking'),
(173, 'KAA-059', 6, 'Biking to Savange Camp Sagana', 'Biking for approximately 50 Kms to Mweiga township where you are picked by vehicle and drive to Savange Camp Sagana on the banks of river Tana. Dinner and overnight at the Camp.', 'Breakfast, Lunch, Dinner', 'Biking'),
(174, 'KAA-059', 7, 'White Water Rafting', ' White water rafting in the morning followed by afternoon at leisure.', 'Breakfast, Lunch, Dinner', 'Rafting'),
(175, 'KAA-059', 8, 'Rock Climbing & Kayaking', 'Water sport Kayaking in the morning. In the afternoon Do Rock Climbing followed by a Sun Downer dinner.', 'Breakfast, Lunch, Dinner', 'Kayaking, Rock Climbing'),
(176, 'KAA-059', 9, 'Mountain Biking & Paddle Boarding', 'Mt Biking for between 20 and 40 Kms in the morning followed in the afternoon by Stand up paddle board for 2 hrs.', 'Breakfast, Lunch, Dinner', 'Return drive'),
(177, 'KAA-059', 10, 'Departure', 'Return to Nairobi or Relax.', 'Breakfast', 'Return drive'),
(178, 'KAA-060', 1, 'Nairobi - Samburu', 'Drive from Nairobi to Umoja Camp in Samburu having lunch enroute.  Dinner and overnight at the camp.', 'Lunch, Dinner', 'Arrival drive'),
(179, 'KAA-060', 2, 'Game Drive to Samburu', 'Morning and Afternoon game drives in Samburu Game Reserve. Dinner and overnight at the camp.', 'Breakfast, Lunch, Dinner', 'Game drive, Camping'),
(180, 'KAA-060', 3, 'Hike to Loldukokwe Centre', 'Drive from Archers post to Wamba Junction, then cycle for about 40 Kms to Loldukokwe Centre deep in the rift valley. Later after lunch picked by vehicle to Maralal Yare Camp for dinner and overnight.', 'Breakfast, Lunch, Dinner', 'Hiking, Camping'),
(181, 'KAA-060', 4, '20Km Cycle to Mararal', ' Cycle for 20 Kms to Mararal town and back. This afternoon is spent interacting with the Samburu Normadic tribesmen.', 'Breakfast, Lunch, Dinner', 'Cycling'),
(182, 'KAA-060', 5, 'Drive to Poror', 'Drive to Poror, The great Rift valley view point, Visit a Samburu traditional villages commonly referred to as Manyattas and back to camp for dinner and overnight.', 'Breakfast, Lunch, Dinner', 'Camping'),
(183, 'KAA-060', 6, 'Drive to Mararal', 'Drive from Mararal to Lake Baringo at Roberts Camp for dinner and overnight.', 'Breakfast, Lunch, Dinner', 'Camping'),
(184, 'KAA-060', 7, 'Bird watching and Cycling', 'Drive from Kambi Samaki to Loruk township. From Here cycle for about 40 Kms in this scenic rift valley inhabited by the Pokot tribesmen. Afternoon spent doing  a Bird viewing walk in this area with over 600 species of birds. Dinner and overnight at Roberts camp.', 'Breakfast, Lunch, Dinner', 'Cycling, Bird watching'),
(185, 'KAA-060', 8, 'Drive to Lake Naivasha', 'Drive from Lake Baringo to Lake Naivasha at Fishermans Camp, having lunch enroute.', 'Breakfast, Lunch, Dinner', 'Drive'),
(186, 'KAA-060', 9, 'Biking and Boat Ride', 'Morning spent Biking Hellsgate National Park and in the Afternoon have a boat ride to see different animals and birds at the crescent island.', 'Breakfast, Lunch, Dinner', 'Biking, Boat ride'),
(187, 'KAA-060', 10, 'Full day Hiking Mt Longonot', 'Full day hiking Mt Longonot  2700 m with meals at the camp.', 'Breakfast, Lunch, Dinner', 'Hiking'),
(188, 'KAA-060', 11, 'Departure', 'Drive back to Nairobi.', 'Breakfast', 'Return drive'),
(189, 'KAA-061', 1, 'Tree Hotel', 'Morning drive to the forested highlands of the Aberdares. After lunch at the base hotel, transfer to your tree hotel for game watching at the floodlit water hole.', 'Lunch, Dinner', 'Game drive'),
(190, 'KAA-061', 2, 'Samburu', 'Continue north across the equator to the home of the samburu people. Marvel at the rugged scenery of isolated crags and springs in this semi arid region. After a game drive, relax in the comfort of your lodge.', 'Breakfast, Lunch, Dinner', 'Rock Climbing, Boat ride, Camping'),
(191, 'KAA-061', 3, 'Samburu', 'Morning and later afternoon, game drives along the Uaso Nyiro river. In addition to the carnivores, view the rare species of herbivores such as the Beisa oryx or the Grevy zebra.', 'Breakfast', 'Game drive, Return flight'),
(192, 'KAA-061', 4, 'Nakuru', 'The drive to lake Nakuru provides stunning vistas between the escarpments of the Rift Valley. During the game drive, behold the amazing sight of candy pink flamingoes lining the waters of the alkaline lake.', 'Breakfast, Lunch, Dinner', 'Game drive, Bird watching'),
(193, 'KAA-061', 5, 'Nairobi', 'After breakfast, depart for Nairobi, arriving before lunch. Afternoon at your leisure.', 'Breakfast, Lunch, Dinner', 'Game drive, Boat ride'),
(194, 'KAA-061', 6, 'Lake Manyara', 'Cross the border to Tanzania at Namanga, stopping at Arusha for Lunch. Proceed to Lake Manyara for a game drive. Spend the night at the Lake Manyara Hotel.', 'Breakfast, Lunch, Dinner', 'Game drive'),
(195, 'KAA-061', 7, 'Serengeti', 'Morning game drive reveals the famous tree climbing lions which spend most of the day along branches of acacia trees. After lunch, proceed to Serengeti Park for the night.', 'Breakfast, Lunch, Dinner', 'Game drive'),
(196, 'KAA-061', 8, 'Serengeti', 'Experience an exciting spectacle of the astounding concentrations of game and extensive bird life at home on the Serengeti plains.', 'Breakfast, Lunch, Dinner', 'Game drive, Bird watching'),
(197, 'KAA-061', 9, 'Ngorongoro', 'After a morning game drive in the Serengeti, continue to the \'cradle of Mankind\' at Olduvai Gorge. Proceed to Ngorongoro for the night.', 'Breakfast, Lunch, Dinner', 'Game drive'),
(198, 'KAA-061', 10, 'Ngorongoro', 'During the days game drives, discover this legendary crater containing the greatest permanent concentration of wildlife in Africa.', 'Breakfast, Lunch, Dinner', 'Game drive, Camping'),
(199, 'KAA-061', 11, 'return to Nairobi', 'Stopping at Arusha for Lunch, return to Nairobi via Namanga.', 'Breakfast, Lunch', 'Return drive'),
(200, 'KAA-062', 1, 'Maasai Mara', 'Transfer from Nairobi Hotel to Wilson airport for a 45 minute flight to Masai Mara game reserve. On arrival, transfer directly to a lodge or luxury tented camp where there will be a little time to relax before lunch. Later in the afternoon, game viewing with an expert driver or guide to look for the \'  Big Five\'', 'Lunch, Dinner', 'Flight, Game drive'),
(201, 'KAA-062', 2, 'Maasai Mara', 'Rise at dawn for early morning game viewing followed by a well-earned breakfast. Further,  game viewing during the morning.  After lunch, take time for a siesta before an afternoon game drive.', 'Breakfast, Lunch, Dinner', 'Game drive'),
(202, 'KAA-062', 3, 'Nairobi', 'Early morning game viewing and a last chance to look for any animals not yet seen. Later in the morning transfer to the airstrip for the flight back to Nairobi and onward transfer to hotel.', 'Breakfast, Lunch, Dinner', 'Flight transfer, Game drive'),
(203, 'KAA-063', 1, 'Maasai Mara', 'Early morning transfer from Nairobi hotel to Wilson for the flight to Amboseli National Park. Weather permitting birds-eye view of the sow capped peak of Mt Kilimanjaro will be a first introduction to this existing Wildlife haven. Game viewing before and after lunch may reveal Lion, Elephant, Buffalo, Giraffe and a host of other plains animals. Dinner and overnight at a Lodge or at a Luxury tented Camp.', 'Lunch, Dinner', 'Flight, Game drive'),
(204, 'KAA-063', 2, 'Nairobi', 'After breakfast return flight back to Nairobi hotel.', 'Breakfast, Lunch, Dinner', 'Flight transfer, Game drive'),
(205, 'KAA-064', 1, 'Maasai Mara', 'An early morning transfer to Mombasa airport for the direct flight to the fabled Masai Mara game reserve. there will time to relax and take in the magnificent landscapes before a delicious buffet lunch at the lodge. Afternoon game viewing by four-wheel drive land cruiser may reveal the \'Big Five\' or even the elusive cheetah.  Full board at Lodge or a luxury tented camp.', 'Lunch, Dinner', 'Flight, Game drive'),
(206, 'KAA-064', 2, 'Nairobi', 'After breakfast return flight back to Nairobi hotel.', 'Breakfast, Lunch, Dinner', 'Flight transfer, Game drive'),
(207, 'KAA-065', 1, 'Lake Nakuru', 'Transfer from Nairobi hotel to Wilson airport for the flight to Samburu National Reserve. From the air, the Kikuyu farmlands can be seen as a fascinating patchwork quilt stretching 100 miles and culminating in the twin peaks of the snow-capped Mt Kenya. Beyond the mountain lies Samburu and your lodge or luxury camp on the banks of Uaso Ngiro river. After lunch a game viewing drive along the river.', 'Lunch, Dinner', 'Flight, Game drive'),
(208, 'KAA-065', 2, 'Samburu', 'Morning and afternoon game viewing. Samburu is home to many uncommon species such as the Reticulated Giraffe, Grevy Zebra, Oryx and the long-necked Gerenuk. In addition, Elephant, Lion, Leopard, and Crocodile can be seen. Full board and overnight at your lodge or Luxury Tented Camp.', 'Breakfast, Lunch, Dinner', 'Flight transfer, Game drive'),
(209, 'KAA-065', 3, 'Nairobi', 'An early morning game drive. After breakfast return to Nairobi by air and onward transfer to hotel.', 'Breakfast', 'Morning game drive, Flight transfer'),
(210, 'KAA-066', 1, 'Lamu', 'Afternoon transfer from your beach hotel to Mombasa or Malindi airport for the short flight to Manda Island. Transfer by boat to Lamu island. Later in the evening enjoy a guided tour of Lamu town, and finally there will be time to relax by the beach or swim in the crystal-clear water before the return flight to Malindi or Mombasa and an onward transfer to beach hotel.', 'Lunch, Dinner', 'Flight, Boat ride, Town tour'),
(211, 'KAA-066', 2, 'Early Morning Game Drive', 'Rise at dawn for early morning game viewing followed by a well-earned breakfast. Further,  game viewing during the morning.  After lunch, take time for a siesta before an afternoon game drive.', 'Breakfast, Lunch, Dinner', 'Game drive');
INSERT INTO `safari_itinerary` (`id`, `safari_id`, `day_number`, `title`, `description`, `meals`, `activities`) VALUES
(212, 'KAA-080', 1, 'Mt. Kenya Guest House – Biking Mt. Kenya', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(213, 'KAA-080', 2, 'Mt. Kenya Guest House – Rafting the Tana River', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(214, 'KAA-080', 3, 'Mt Kenya Hiking day trip', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(215, 'KAA-080', 4, 'Meru National Park / Samburu game Reserve', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(216, 'KAA-080', 5, 'Mt. Kenya Guest House', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(217, 'KAA-080', 6, 'Nairobi', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(218, 'KAA-081', 1, 'Nairobi -  Amboseli National Park', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(219, 'KAA-081', 2, 'Amboseli National Park', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(220, 'KAA-081', 3, 'Tsavo West National Park', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(221, 'KAA-081', 4, 'Mombasa', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(222, 'KAA-081', 5, 'Mombasa', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(223, 'KAA-081', 6, 'Mombasa', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(224, 'KAA-081', 7, 'Mombasa - Nairobi', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(225, 'KAA-082', 1, 'Nairobi – Narok – Maji Moto', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(226, 'KAA-082', 2, 'Ndarara – Letukuyi', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(227, 'KAA-082', 3, 'Letukuyi – Morijo', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(228, 'KAA-082', 4, 'Morijo – Enkutoto', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(229, 'KAA-082', 5, 'Enkutoto – Nguruman Escapment', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(230, 'KAA-082', 6, 'Nguruman - Masai Mara Game Reserve', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(231, 'KAA-082', 7, 'Masai Mara Game Reserve', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(232, 'KAA-082', 8, 'Nairobi', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(233, 'KAA-083', 1, 'Mombasa – City tours', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(234, 'KAA-083', 2, 'Mombasa – Excursions', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(235, 'KAA-083', 3, 'Mombasa – Malindi – Watamu', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(236, 'KAA-083', 4, 'Malindi Marine and Excursions', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(237, 'KAA-083', 5, 'Lamu', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(238, 'KAA-083', 6, 'Lamu', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(239, 'KAA-083', 7, 'Lamu', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(240, 'KAA-083', 8, 'Lamu - Tsavo East National Park', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(241, 'KAA-083', 9, 'Tsavo – Mombasa', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(242, 'KAA-084', 1, 'Nairobi – Naivasha', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(243, 'KAA-084', 2, 'Naivasha – Lake Baringo', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(244, 'KAA-084', 3, 'Lake Baringo – Mararal', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(245, 'KAA-084', 4, 'Mararal – Lake Turkana', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(246, 'KAA-084', 5, 'Lake Turkana', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(247, 'KAA-084', 6, 'Lake Turkana Kalacha', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(248, 'KAA-084', 7, 'Kalacha – Marsabit', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(249, 'KAA-084', 8, 'Marsabit – Samburu Game Reserve', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(250, 'KAA-084', 9, 'Samburu Game Reserve', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(251, 'KAA-084', 10, 'Samburu – Mt. Kenya', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(252, 'KAA-084', 11, 'Mt. Kenya - Nairobi', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(253, 'KAA-085', 1, 'Nairobi – Naivasha', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(254, 'KAA-085', 2, 'Naivasha – Hellsgate', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(255, 'KAA-085', 3, 'Nakuru', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(256, 'KAA-085', 4, 'Nakuru – Lake Baringo', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(257, 'KAA-085', 5, 'Lake Baringo', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(258, 'KAA-085', 6, 'Lake Baringo – Saiwa swamp', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(259, 'KAA-085', 7, 'Saiwa swamp – Kitale', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(260, 'KAA-085', 8, 'Kitale – Mt Elgon', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(261, 'KAA-085', 9, 'Mt Elgon – Kakamega Forest', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(262, 'KAA-085', 10, 'Kakamega forest – Kisumu', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(263, 'KAA-085', 11, 'Kisumu – Kisii', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(264, 'KAA-085', 12, 'Kisii Tabaka Soap stone carvings', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(265, 'KAA-085', 13, 'Kisii – Masai Mara', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(266, 'KAA-085', 14, 'Masai Mara', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(267, 'KAA-085', 15, 'Masai Mara – Nairobi', 'Detailed program Itinerary and cost upon request. Please write to us for more information.', 'meals', 'Photography'),
(268, 'KAA-087', 1, 'Amboseli National Park Balloon Safari', 'The pick-up time for your balloon safari varies depending on the Camp or Lodge you are staying at, and the time of the year. All pick-ups are scheduled to ensure that our Guests arrive at the Balloon Camp, at approximately 5:15am. Depending on the timing and distance from your Camp or Lodge, pick-ups may begin as early as 4:15am, to ensure a smooth and well-planned flight. Once in flight, you’ll enjoy a spectacular 360° panorama as the sun rises in the east, bringing the earth to life below. The journey offers breathtaking views of the diverse Amboseli ecosystem, with Mount Kilimanjaro to the south and Amboseli National Park stretching out to the north. Along the way, you may spot the abundant wildlife Kenya is renowned for, as well as traditional Maasai manyattas and bomas scattered across the landscape. Be sure to bring your cameras and binoculars to capture the experience. Flights typically last about one hour, though actual airtime may range from 45 minutes to up to 1½ hours depending on weather conditions and the gifts of Mother Nature.', 'Breakfast', 'Hot Air Balloon Ride, Wildlife Viewing'),
(269, 'UAA-001', 1, 'Kampala to Bwindi', 'Drive South west of Kampala, across the equator to Mbarara for lunch. Continue through spectacular sceneries of Kabale, to Buhoma in Bwindi National Park, Proceed to your tented camp for the night.', 'Lunch, Dinner', 'Scenic drive, Equator crossing'),
(270, 'UAA-001', 2, 'Gorilla Tracking - Bwindi', 'Early morning tracking with the guides in search for mountain Gorillas. Meals and overnight at the camp.', 'Breakfast, Lunch, Dinner', 'Gorilla tracking'),
(271, 'UAA-001', 3, 'Second Gorilla Tracking - Kabale', 'Early morning gorilla tracking. Evening drive to Kabale for overnight.', 'Breakfast, Lunch, Dinner', 'Gorilla tracking'),
(272, 'UAA-001', 4, 'Return to Kampala', 'After breakfast, return to Kampala via Mbarara for lunch.', 'Breakfast, Lunch', 'Scenic drive'),
(273, 'UAA-002', 1, 'Entebbe/Kampala - Kibale Forest N.P.', 'Wake up to rhythm of nature, have breakfast, check-out and embark on a long scenic ride via Kampala Mityana and Mubende respectively to Fort Portal town. Continue to Kibale Forest National Park, settle-in at Primate Lodge and a hot meal shall be served. After lunch, embark on the scenic exploration of Kibale area for as long as time permits.', 'Breakfast, Lunch, Dinner', 'Scenic drive'),
(274, 'UAA-002', 2, 'Chimpanzee Tracking - Queen Elizabeth N.P.', 'Early morning wake-up and have breakfast, attend briefing by the Ranger-guide and enter the sanctuary to embark on your morning Chimpanzee tracking session. Exit the park heading to Queen Elizabeth N.P. via Fort Portal and Kasese Towns. Take an introductory game drive as your transfer to the lodging facility.', 'Breakfast, Lunch, Dinner', 'Chimpanzee tracking, Game drive'),
(275, 'UAA-002', 3, 'Sunrise Game-drive - Kazinga Boat-Launch', 'Wake-up to the sounds of nature, embark on a sunrise game-drive. Look-out for lions, leopards, elephants, warthogs, bushbucks, cape buffaloes and waterbucks. After lunch, transfer to the pier for your afternoon boat-ride on Kazinga Channel.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Boat cruise, Afternoon game drive'),
(276, 'UAA-002', 4, 'To Ishasha - Bwindi Impenetrable Forest', 'After breakfast, take an en-route game drive as you exit Mweya Peninsular heading to Ishasha section renowned for tree-climbing lions. After picnic lunch, proceed to Bwindi Impenetrable Forest National Park.', 'Breakfast, Lunch, Dinner', 'Game drive, Tree-climbing lion viewing'),
(277, 'UAA-002', 5, 'Gorilla Tracking Day', 'Wake-up and prepare for the summit of your Uganda Safari; the encounter with the critically endangered Mountain Gorillas. Pack lunch, water and rain gear. After briefing, follow your ranger-guide into the gorilla sanctuary. On sight of the gorillas, keep calm and watch them feed, play and swing from branches. Maximum time allowed: ONE hour.', 'Breakfast, Lunch, Dinner', 'Gorilla tracking, Possible Batwa Community visit'),
(278, 'UAA-002', 6, 'Bwindi - Lake Mburo N.P.', 'After breakfast, drive to Lake Mburo National Park. After lunch, enjoy a boat-ride on Lake Mburo offering opportunities to see Hippos, Nile Crocs. The birdlife is rich with 332 recorded species. On landing, enjoy a sundown game-drive to see Elands, Zebras, Impala and reedbucks.', 'Breakfast, Lunch, Dinner', 'Boat ride, Game drive'),
(279, 'UAA-002', 7, 'Safari Walk - Return to Kampala', 'Follow your ranger-guide on an early morning Safari Walk. A unique opportunity to see wildlife on foot. After breakfast, take an en-route game drive as you exit the park. Stop at Equator Point for photo opportunity and shopping. Drop-off at Entebbe for onward flight.', 'Breakfast, Lunch', 'Walking safari, Equator stop'),
(280, 'UAA-003', 1, 'Arrival - Kampala', 'Meet and assist upon arrival at Entebbe International Airport and transfer to your lodging facility in Entebbe or Kampala. Check-in, relax and rest for the evening.', 'Bed Only', 'Airport transfer'),
(281, 'UAA-003', 2, 'Kampala - Bwindi Forest', 'At 0600hrs, meet and assist at your residence. Get on board and undergo safari briefing. Start journeying westwards. Stop at The Equator Point for photo-opportunity. Break for lunch in Mbarara Town. Follow snaking routes of Kigezi Highlands \'Switzerland of Africa\'. Check-in at your reserved lodging facility.', 'Lunch, Dinner', 'Equator stop, Scenic drive'),
(282, 'UAA-003', 3, 'Gorilla Tracking Day', 'Wake-up early, have breakfast, pack lunch and attend briefing by head-ranger. Get your walking-stick and follow your ranger-guide to track mountain gorillas. Once you locate them, keep calm and watch them play, feed and swing. Maximum time: ONE Hour. Return to base, receive tracking certificate and return to lodge.', 'Breakfast, Lunch, Dinner', 'Gorilla tracking'),
(283, 'UAA-003', 4, 'Bwindi - Kampala/Entebbe', 'Wake-up to watch sunrise. Exploit your last moments with mountain gorillas. After breakfast, join your driver on long-picturesque drive with lunch break en-route. Check-in at lodging facility for the evening.', 'Breakfast, Lunch', 'Scenic drive'),
(284, 'UAA-003', 5, 'Entebbe - Flight Out', 'Morning at Leisure in Entebbe Peninsula, breakfast, check-out and transfer to Entebbe Airport for your onward flight out.', 'Breakfast', 'Airport transfer'),
(285, 'UAA-004', 1, 'Nairobi - Kampala', 'Travel from Nairobi to Kampala. Overnight in a hotel in Kampala booked on bed and breakfast basis.', 'Bed and Breakfast', 'Road transfer'),
(286, 'UAA-004', 2, 'Kampala - Buhoma', 'Early morning start from Kampala to southwest across the equator. Drive through savannah grasslands seeing banana plantations and Ankole cattle. Ascend into Kigezi highlands \'Switzerland of Africa\' with terraced farming. Drive through to Buhoma. Overnight in tented camp.', 'Breakfast, Lunch, Dinner', 'Scenic drive'),
(287, 'UAA-004', 3, 'Buhoma - Gorilla Tracking', 'Enter sanctuary at dawn and enjoy the beauty of the forest, home to mountain gorillas. After briefing, proceed through dense bush to trek for these endangered species. Other primates include black and white colobus, redtail monkey and chimpanzee. Return to tented camp.', 'Breakfast, Lunch, Dinner', 'Gorilla tracking'),
(288, 'UAA-004', 4, 'Buhoma - Second Gorilla Tracking', 'Re-enter the forest for a second exciting day of tracking. Return to your tented camp for dinner and overnight.', 'Breakfast, Lunch, Dinner', 'Gorilla tracking'),
(289, 'UAA-004', 5, 'Buhoma - Lake Bunyonyi', 'Depart the forest for Lake Bunyonyi, the lake of little birds, renowned for its variety and abundance of avians. Enjoy a canoe ride on this beautiful narrow lake surrounded by green hills. Dinner and overnight in a hotel.', 'Breakfast, Lunch, Dinner', 'Canoe ride, Bird watching'),
(290, 'UAA-004', 6, 'Lake Bunyonyi - Kampala', 'Return to Kampala after breakfast. Overnight in a hotel in Kampala.', 'Breakfast, Dinner', 'Scenic drive'),
(291, 'UAA-004', 7, 'Kampala - Nairobi', 'Early morning departure to Nairobi where you arrive in the late afternoon.', 'Breakfast', 'Road transfer'),
(292, 'UAA-006', 1, 'Sunrise Balloon Safari', 'Pickup from lodges around 5:30 AM, transported to Kasenyi Gate. Safety briefing and refreshments (tea/coffee) while balloon inflates. Flight lasts approximately 1 hour, taking off around 6:15 AM. Altitudes range up to 760 meters (2,500 feet). The balloon drifts over Kazinga Channel, Ishasha Plains, crater lakes, Kyambura Gorge, Lake Edward, Lake George and the Rwenzori Mountains. Upon landing, enjoy bush breakfast prepared by Mweya Safari Lodge with sparkling juice. Receive souvenir balloon safari certificate.', 'Bush Breakfast', 'Hot air balloon flight, Wildlife viewing, Bush breakfast'),
(293, 'UAA-016', 1, 'Kampala to Paraa', 'Drive through Luwero triangle, arriving at Masindi for Lunch. Proceed to the park for game drive with overnight at paraa.', 'Lunch, Dinner', 'Game drive'),
(294, 'UAA-016', 2, 'Murchison Falls Exploration', 'After an early morning game drive, take a boat cruise along the Nile to the bottom of the breath taking falls. After lunch, drive to the top of the falls. Overnight at Paraa.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Boat cruise, Falls viewing'),
(295, 'UAA-016', 3, 'Return to Kampala', 'After breakfast, return to Kampala via Masindi for lunch.', 'Breakfast, Lunch', 'Scenic drive'),
(296, 'UAA-017', 1, 'Kampala to Mweya', 'Head towards western Uganda. Stop over at the local drum industry, the equator, Masaka, and Mbarara for lunch. Evening game drive proceeding to Mweya for the night.', 'Lunch, Dinner', 'Equator stop, Evening game drive'),
(297, 'UAA-017', 2, 'Queen Elizabeth Park', 'Drive through volcanic formations of the western Rift Valley. The descent reveals stunning panorama of Lakes George and Edward. After game drives and lunch, take a boat trip on the Kazinga channel. Resume game viewing before returning to lodge.', 'Breakfast, Lunch, Dinner', 'Game drive, Boat cruise on Kazinga Channel'),
(298, 'UAA-017', 3, 'Kibale Forest - Fort Portal', 'After breakfast, depart for Kibale forest to track a variety of primate species. Overnight at the hotel.', 'Breakfast, Lunch, Dinner', 'Primate tracking'),
(299, 'UAA-017', 4, 'Return to Kampala', 'After breakfast, return to Kampala via Mubende.', 'Breakfast, Lunch', 'Scenic drive'),
(300, 'UAA-019', 1, 'Tree Hotel', 'Morning drive to the forested highlands of the Aberdares. After lunch at the base hotel, transfer to your tree hotel for game watching at the floodlit water hole.', 'Lunch, Dinner', 'Game watching'),
(301, 'UAA-019', 2, 'Samburu', 'Continue north across the equator to the home of the samburu people. Marvel at the rugged scenery of isolated crags and springs. After a game drive, relax in the comfort of your lodge.', 'Breakfast, Lunch, Dinner', 'Game drive'),
(302, 'UAA-019', 3, 'Samburu Game Viewing', 'Morning and afternoon game drives along the Uaso Nyiro river. View carnivores and rare herbivores such as the Beisa oryx or the Grevy zebra.', 'Breakfast, Lunch, Dinner', 'Morning and afternoon game drives'),
(303, 'UAA-019', 4, 'Lake Nakuru', 'Drive to Lake Nakuru with stunning vistas between the escarpments of the Rift Valley. During game drive, behold the sight of pink flamingoes lining the alkaline lake.', 'Breakfast, Lunch, Dinner', 'Game drive, Flamingo viewing'),
(304, 'UAA-019', 5, 'Nairobi', 'After breakfast, depart for Nairobi, arriving before lunch. Afternoon at your leisure.', 'Breakfast, Lunch, Dinner', 'At leisure'),
(305, 'UAA-019', 6, 'Lake Manyara', 'Cross the border to Tanzania at Namanga, stopping at Arusha for Lunch. Proceed to Lake Manyara for a game drive. Spend the night at the Lake Manyara Hotel.', 'Breakfast, Lunch, Dinner', 'Border crossing, Game drive'),
(306, 'UAA-019', 7, 'Serengeti National Park', 'After breakfast, drive to Serengeti National Park via the Ngorongoro Conservation Area. Enjoy a picnic lunch en-route. Afternoon game drive in Serengeti.', 'Breakfast, Lunch, Dinner', 'Game drive'),
(307, 'UAA-019', 8, 'Serengeti Game Drives', 'Full day of game drives in Serengeti National Park with picnic lunch. Explore the vast plains and witness the incredible wildlife.', 'Breakfast, Lunch, Dinner', 'Full day game drives'),
(308, 'UAA-019', 9, 'Ngorongoro Crater', 'Drive to Ngorongoro Crater after breakfast. Descend into the crater for a full day of game viewing with picnic lunch.', 'Breakfast, Lunch, Dinner', 'Crater game drive'),
(309, 'UAA-019', 10, 'Arusha - Nairobi', 'Return to Arusha for lunch before crossing back into Kenya. Arrive in Nairobi in the late afternoon.', 'Breakfast, Lunch', 'Border crossing'),
(310, 'UAA-019', 11, 'Departure', 'Transfer to Nairobi airport for your onward flight.', 'Breakfast', 'Airport transfer'),
(311, 'UAA-001', 1, 'Kampala to Bwindi', 'Drive South west of Kampala, across the equator to Mbarara for lunch. Continue through spectacular sceneries of Kabale, to Buhoma in Bwindi National Park, Proceed to your tented camp for the night.', 'Lunch, Dinner', 'Scenic drive, Equator crossing'),
(312, 'UAA-001', 2, 'Gorilla Tracking - Bwindi', 'Early morning tracking with the guides in search for mountain Gorillas. Meals and overnight at the camp.', 'Breakfast, Lunch, Dinner', 'Gorilla tracking'),
(313, 'UAA-001', 3, 'Second Gorilla Tracking - Kabale', 'Early morning gorilla tracking. Evening drive to Kabale for overnight.', 'Breakfast, Lunch, Dinner', 'Gorilla tracking'),
(314, 'UAA-001', 4, 'Return to Kampala', 'After breakfast, return to Kampala via Mbarara for lunch.', 'Breakfast, Lunch', 'Scenic drive'),
(315, 'UAA-002', 1, 'Entebbe/Kampala - Kibale Forest N.P.', 'Wake up to rhythm of nature, have breakfast, check-out and embark on a long scenic ride via Kampala Mityana and Mubende respectively to Fort Portal town. Continue to Kibale Forest National Park, settle-in at Primate Lodge and a hot meal shall be served. After lunch, embark on the scenic exploration of Kibale area for as long as time permits.', 'Breakfast, Lunch, Dinner', 'Scenic drive'),
(316, 'UAA-002', 2, 'Chimpanzee Tracking - Queen Elizabeth N.P.', 'Early morning wake-up and have breakfast, attend briefing by the Ranger-guide and enter the sanctuary to embark on your morning Chimpanzee tracking session. Exit the park heading to Queen Elizabeth N.P. via Fort Portal and Kasese Towns. Take an introductory game drive as your transfer to the lodging facility.', 'Breakfast, Lunch, Dinner', 'Chimpanzee tracking, Game drive'),
(317, 'UAA-002', 3, 'Sunrise Game-drive - Kazinga Boat-Launch', 'Wake-up to the sounds of nature, embark on a sunrise game-drive. Look-out for lions, leopards, elephants, warthogs, bushbucks, cape buffaloes and waterbucks. After lunch, transfer to the pier for your afternoon boat-ride on Kazinga Channel.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Boat cruise, Afternoon game drive'),
(318, 'UAA-002', 4, 'To Ishasha - Bwindi Impenetrable Forest', 'After breakfast, take an en-route game drive as you exit Mweya Peninsular heading to Ishasha section renowned for tree-climbing lions. After picnic lunch, proceed to Bwindi Impenetrable Forest National Park.', 'Breakfast, Lunch, Dinner', 'Game drive, Tree-climbing lion viewing'),
(319, 'UAA-002', 5, 'Gorilla Tracking Day', 'Wake-up and prepare for the summit of your Uganda Safari; the encounter with the critically endangered Mountain Gorillas. Pack lunch, water and rain gear. After briefing, follow your ranger-guide into the gorilla sanctuary. On sight of the gorillas, keep calm and watch them feed, play and swing from branches. Maximum time allowed: ONE hour.', 'Breakfast, Lunch, Dinner', 'Gorilla tracking, Possible Batwa Community visit'),
(320, 'UAA-002', 6, 'Bwindi - Lake Mburo N.P.', 'After breakfast, drive to Lake Mburo National Park. After lunch, enjoy a boat-ride on Lake Mburo offering opportunities to see Hippos, Nile Crocs. The birdlife is rich with 332 recorded species. On landing, enjoy a sundown game-drive to see Elands, Zebras, Impala and reedbucks.', 'Breakfast, Lunch, Dinner', 'Boat ride, Game drive'),
(321, 'UAA-002', 7, 'Safari Walk - Return to Kampala', 'Follow your ranger-guide on an early morning Safari Walk. A unique opportunity to see wildlife on foot. After breakfast, take an en-route game drive as you exit the park. Stop at Equator Point for photo opportunity and shopping. Drop-off at Entebbe for onward flight.', 'Breakfast, Lunch', 'Walking safari, Equator stop'),
(322, 'UAA-003', 1, 'Arrival - Kampala', 'Meet and assist upon arrival at Entebbe International Airport and transfer to your lodging facility in Entebbe or Kampala. Check-in, relax and rest for the evening.', 'Bed Only', 'Airport transfer'),
(323, 'UAA-003', 2, 'Kampala - Bwindi Forest', 'At 0600hrs, meet and assist at your residence. Get on board and undergo safari briefing. Start journeying westwards. Stop at The Equator Point for photo-opportunity. Break for lunch in Mbarara Town. Follow snaking routes of Kigezi Highlands \'Switzerland of Africa\'. Check-in at your reserved lodging facility.', 'Lunch, Dinner', 'Equator stop, Scenic drive'),
(324, 'UAA-003', 3, 'Gorilla Tracking Day', 'Wake-up early, have breakfast, pack lunch and attend briefing by head-ranger. Get your walking-stick and follow your ranger-guide to track mountain gorillas. Once you locate them, keep calm and watch them play, feed and swing. Maximum time: ONE Hour. Return to base, receive tracking certificate and return to lodge.', 'Breakfast, Lunch, Dinner', 'Gorilla tracking'),
(325, 'UAA-003', 4, 'Bwindi - Kampala/Entebbe', 'Wake-up to watch sunrise. Exploit your last moments with mountain gorillas. After breakfast, join your driver on long-picturesque drive with lunch break en-route. Check-in at lodging facility for the evening.', 'Breakfast, Lunch', 'Scenic drive'),
(326, 'UAA-003', 5, 'Entebbe - Flight Out', 'Morning at Leisure in Entebbe Peninsula, breakfast, check-out and transfer to Entebbe Airport for your onward flight out.', 'Breakfast', 'Airport transfer'),
(327, 'UAA-004', 1, 'Nairobi - Kampala', 'Travel from Nairobi to Kampala. Overnight in a hotel in Kampala booked on bed and breakfast basis.', 'Bed and Breakfast', 'Road transfer'),
(328, 'UAA-004', 2, 'Kampala - Buhoma', 'Early morning start from Kampala to southwest across the equator. Drive through savannah grasslands seeing banana plantations and Ankole cattle. Ascend into Kigezi highlands \'Switzerland of Africa\' with terraced farming. Drive through to Buhoma. Overnight in tented camp.', 'Breakfast, Lunch, Dinner', 'Scenic drive'),
(329, 'UAA-004', 3, 'Buhoma - Gorilla Tracking', 'Enter sanctuary at dawn and enjoy the beauty of the forest, home to mountain gorillas. After briefing, proceed through dense bush to trek for these endangered species. Other primates include black and white colobus, redtail monkey and chimpanzee. Return to tented camp.', 'Breakfast, Lunch, Dinner', 'Gorilla tracking'),
(330, 'UAA-004', 4, 'Buhoma - Second Gorilla Tracking', 'Re-enter the forest for a second exciting day of tracking. Return to your tented camp for dinner and overnight.', 'Breakfast, Lunch, Dinner', 'Gorilla tracking'),
(331, 'UAA-004', 5, 'Buhoma - Lake Bunyonyi', 'Depart the forest for Lake Bunyonyi, the lake of little birds, renowned for its variety and abundance of avians. Enjoy a canoe ride on this beautiful narrow lake surrounded by green hills. Dinner and overnight in a hotel.', 'Breakfast, Lunch, Dinner', 'Canoe ride, Bird watching'),
(332, 'UAA-004', 6, 'Lake Bunyonyi - Kampala', 'Return to Kampala after breakfast. Overnight in a hotel in Kampala.', 'Breakfast, Dinner', 'Scenic drive'),
(333, 'UAA-004', 7, 'Kampala - Nairobi', 'Early morning departure to Nairobi where you arrive in the late afternoon.', 'Breakfast', 'Road transfer'),
(334, 'UAA-006', 1, 'Sunrise Balloon Safari', 'Pickup from lodges around 5:30 AM, transported to Kasenyi Gate. Safety briefing and refreshments (tea/coffee) while balloon inflates. Flight lasts approximately 1 hour, taking off around 6:15 AM. Altitudes range up to 760 meters (2,500 feet). The balloon drifts over Kazinga Channel, Ishasha Plains, crater lakes, Kyambura Gorge, Lake Edward, Lake George and the Rwenzori Mountains. Upon landing, enjoy bush breakfast prepared by Mweya Safari Lodge with sparkling juice. Receive souvenir balloon safari certificate.', 'Bush Breakfast', 'Hot air balloon flight, Wildlife viewing, Bush breakfast'),
(335, 'UAA-016', 1, 'Kampala to Paraa', 'Drive through Luwero triangle, arriving at Masindi for Lunch. Proceed to the park for game drive with overnight at paraa.', 'Lunch, Dinner', 'Game drive'),
(336, 'UAA-016', 2, 'Murchison Falls Exploration', 'After an early morning game drive, take a boat cruise along the Nile to the bottom of the breath taking falls. After lunch, drive to the top of the falls. Overnight at Paraa.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Boat cruise, Falls viewing'),
(337, 'UAA-016', 3, 'Return to Kampala', 'After breakfast, return to Kampala via Masindi for lunch.', 'Breakfast, Lunch', 'Scenic drive'),
(338, 'UAA-017', 1, 'Kampala to Mweya', 'Head towards western Uganda. Stop over at the local drum industry, the equator, Masaka, and Mbarara for lunch. Evening game drive proceeding to Mweya for the night.', 'Lunch, Dinner', 'Equator stop, Evening game drive'),
(339, 'UAA-017', 2, 'Queen Elizabeth Park', 'Drive through volcanic formations of the western Rift Valley. The descent reveals stunning panorama of Lakes George and Edward. After game drives and lunch, take a boat trip on the Kazinga channel. Resume game viewing before returning to lodge.', 'Breakfast, Lunch, Dinner', 'Game drive, Boat cruise on Kazinga Channel'),
(340, 'UAA-017', 3, 'Kibale Forest - Fort Portal', 'After breakfast, depart for Kibale forest to track a variety of primate species. Overnight at the hotel.', 'Breakfast, Lunch, Dinner', 'Primate tracking'),
(341, 'UAA-017', 4, 'Return to Kampala', 'After breakfast, return to Kampala via Mubende.', 'Breakfast, Lunch', 'Scenic drive'),
(342, 'UAA-019', 1, 'Tree Hotel', 'Morning drive to the forested highlands of the Aberdares. After lunch at the base hotel, transfer to your tree hotel for game watching at the floodlit water hole.', 'Lunch, Dinner', 'Game watching'),
(343, 'UAA-019', 2, 'Samburu', 'Continue north across the equator to the home of the samburu people. Marvel at the rugged scenery of isolated crags and springs. After a game drive, relax in the comfort of your lodge.', 'Breakfast, Lunch, Dinner', 'Game drive'),
(344, 'UAA-019', 3, 'Samburu Game Viewing', 'Morning and afternoon game drives along the Uaso Nyiro river. View carnivores and rare herbivores such as the Beisa oryx or the Grevy zebra.', 'Breakfast, Lunch, Dinner', 'Morning and afternoon game drives'),
(345, 'UAA-019', 4, 'Lake Nakuru', 'Drive to Lake Nakuru with stunning vistas between the escarpments of the Rift Valley. During game drive, behold the sight of pink flamingoes lining the alkaline lake.', 'Breakfast, Lunch, Dinner', 'Game drive, Flamingo viewing'),
(346, 'UAA-019', 5, 'Nairobi', 'After breakfast, depart for Nairobi, arriving before lunch. Afternoon at your leisure.', 'Breakfast, Lunch, Dinner', 'At leisure'),
(347, 'UAA-019', 6, 'Lake Manyara', 'Cross the border to Tanzania at Namanga, stopping at Arusha for Lunch. Proceed to Lake Manyara for a game drive. Spend the night at the Lake Manyara Hotel.', 'Breakfast, Lunch, Dinner', 'Border crossing, Game drive'),
(348, 'UAA-019', 7, 'Serengeti National Park', 'After breakfast, drive to Serengeti National Park via the Ngorongoro Conservation Area. Enjoy a picnic lunch en-route. Afternoon game drive in Serengeti.', 'Breakfast, Lunch, Dinner', 'Game drive'),
(349, 'UAA-019', 8, 'Serengeti Game Drives', 'Full day of game drives in Serengeti National Park with picnic lunch. Explore the vast plains and witness the incredible wildlife.', 'Breakfast, Lunch, Dinner', 'Full day game drives'),
(350, 'UAA-019', 9, 'Ngorongoro Crater', 'Drive to Ngorongoro Crater after breakfast. Descend into the crater for a full day of game viewing with picnic lunch.', 'Breakfast, Lunch, Dinner', 'Crater game drive'),
(351, 'UAA-019', 10, 'Arusha - Nairobi', 'Return to Arusha for lunch before crossing back into Kenya. Arrive in Nairobi in the late afternoon.', 'Breakfast, Lunch', 'Border crossing'),
(352, 'UAA-019', 11, 'Departure', 'Transfer to Nairobi airport for your onward flight.', 'Breakfast', 'Airport transfer'),
(353, 'RAA-003', 1, 'Kigali City Tour', 'Explore the vibrant city of Kigali with a guided city tour including visits to Kigali Genocide Memorial, local markets, and cultural sites.', 'Lunch, Dinner', 'City tour, Cultural visits'),
(354, 'RAA-003', 2, 'Gorilla Trekking - Volcanoes National Park', 'Early morning departure for Volcanoes National Park. After briefing, trek through the forest to encounter mountain gorillas in their natural habitat. Return to Kigali in the evening.', 'Breakfast, Lunch', 'Gorilla trekking, Return to Kigali'),
(355, 'RAA-004', 1, 'Arrival - Transfer to Volcanoes', 'Pick up from Kigali and transfer to Volcanoes National Park. Check in at lodge and relax for the evening. Optional village walk.', 'Lunch, Dinner', 'Transfer to Volcanoes, Optional village walk'),
(356, 'RAA-004', 2, 'Gorilla Trekking', 'Early morning briefing followed by gorilla trekking in Volcanoes National Park. Spend up to one hour with the gorilla family. Return to lodge for lunch and relaxation.', 'Breakfast, Lunch, Dinner', 'Gorilla trekking'),
(357, 'RAA-004', 3, 'Golden Monkeys or Dian Fossey Trail', 'Morning activity: either golden monkey trekking or hike the Dian Fossey trail. Transfer back to Kigali after lunch.', 'Breakfast, Lunch', 'Golden monkey trekking or Dian Fossey trail, Transfer to Kigali'),
(358, 'RAA-005', 1, 'Transfer to Akagera', 'Pick up from Kigali and transfer to Akagera National Park. Afternoon game drive. Check in at lodge for dinner and overnight.', 'Lunch, Dinner', 'Transfer to Akagera, Afternoon game drive'),
(359, 'RAA-005', 2, 'Full Day Akagera Safari', 'Full day game drive in Akagera National Park. Search for the Big Five: lion, leopard, elephant, buffalo, and rhino. Picnic lunch in the park.', 'Breakfast, Lunch, Dinner', 'Full day game drive, Big Five search'),
(360, 'RAA-005', 3, 'Morning Game Drive - Return to Kigali', 'Early morning game drive. Return to lodge for breakfast, then transfer back to Kigali.', 'Breakfast, Lunch', 'Morning game drive, Transfer to Kigali'),
(361, 'RAA-006', 1, 'Arrival Kigali - Transfer to Akagera', 'Pick up from Kigali and transfer to Akagera National Park. Afternoon game drive. Overnight at lodge.', 'Lunch, Dinner', 'Transfer, Afternoon game drive'),
(362, 'RAA-006', 2, 'Full Day Akagera Safari', 'Full day exploring Akagera National Park. Search for Big Five and other wildlife. Boat safari on Lake Ihema.', 'Breakfast, Lunch, Dinner', 'Full day game drive, Boat safari'),
(363, 'RAA-006', 3, 'Transfer to Volcanoes National Park', 'Morning game drive in Akagera. After lunch, transfer to Volcanoes National Park. Evening at leisure.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Transfer to Volcanoes'),
(364, 'RAA-006', 4, 'Gorilla Trekking', 'Early morning gorilla trekking in Volcanoes National Park. Spend one hour with mountain gorillas. Afternoon at leisure or optional village visit.', 'Breakfast, Lunch, Dinner', 'Gorilla trekking, Optional village visit'),
(365, 'RAA-006', 5, 'Golden Monkeys - Transfer to Nyungwe', 'Morning golden monkey trekking or Dian Fossey trail. After lunch, transfer to Nyungwe Forest National Park.', 'Breakfast, Lunch, Dinner', 'Golden monkey trekking, Transfer to Nyungwe'),
(366, 'RAA-006', 6, 'Nyungwe Canopy Walk & Chimpanzee Trekking', 'Morning chimpanzee trekking in Nyungwe Forest. Afternoon canopy walk 50 meters above the forest floor. Nature walks.', 'Breakfast, Lunch, Dinner', 'Chimpanzee trekking, Canopy walk'),
(367, 'RAA-006', 7, 'Return to Kigali', 'Morning nature walk or waterfall visit. Transfer back to Kigali with scenic stops along the way.', 'Breakfast, Lunch', 'Nature walk, Transfer to Kigali'),
(368, 'RAA-008', 1, 'Flight to Kamembe - Transfer to Nyungwe', 'Morning flight from Kigali to Kamembe Airport. Transfer to luxury lodge in Nyungwe Forest. Afternoon nature walk to explore the forest. Evening at leisure.', 'Lunch, Dinner', 'Flight to Kamembe, Nature walk'),
(369, 'RAA-008', 2, 'Chimpanzee Trekking & Canopy Walk', 'Early morning chimpanzee trekking in Nyungwe Forest. Afternoon canopy walkway experience 50 meters above the forest floor. Guided nature walks to explore waterfalls and biodiversity.', 'Breakfast, Lunch, Dinner', 'Chimpanzee trekking, Canopy walk, Nature walks'),
(370, 'RAA-008', 3, 'Morning Walk - Return Flight', 'Early morning bird watching walk (over 300 species). Optional waterfall visit or cultural interaction with local communities. Transfer to Kamembe Airport for return flight to Kigali.', 'Breakfast, Lunch', 'Bird watching, Cultural visit, Return flight'),
(371, 'zaa-10', 1, 'Arrival & Spice Tour', 'Fly via Mombasa to land on the \'Clove Island\' of Zanzibar where you will be met and transferred to a traditional hotel in the \'Stone Town\'. In the afternoon, enjoy the spice tour visiting the plantations of cloves and other spices for which Zanzibar is renowned.', 'Lunch, Dinner', 'Flight to Zanzibar, Transfer to Stone Town hotel, Spice plantation tour'),
(372, 'zaa-10', 2, 'Stone Town Tour & Island Excursion', 'The next morning tour the fascinating \'Stone Town\' with visits to the market, Sultan\'s Palace and Museum, followed by lunch. In the afternoon, enjoy a boat trip to an island for swimming and snorkeling.', 'Breakfast, Lunch, Dinner', 'Stone Town walking tour, Market visit, Sultan\'s Palace and Museum, Boat trip to island, Swimming and snorkeling'),
(373, 'zaa-10', 3, 'Shopping & Departure', 'The next morning there is time for a guided shopping trip before transfer to the airport to catch the departing flight.', 'Breakfast', 'Guided shopping trip, Transfer to airport, Departure'),
(374, 'taa-11', 1, 'Lake Manyara', 'Head west towards Lake Manyara Park. After a game drive proceed to the Lake Manyara Hotel overlooking the Great Rift Valley and shimmering lake (130 kms, 2 1/2 hrs.)', 'Lunch, Dinner', 'Game drive'),
(375, 'taa-11', 2, 'Serengeti', 'After morning game drive, proceed to Serengeti Park noticing the change in terrain from highland forest to open plain. View game enroute to the lodge for overnight (205 kms, 4 hrs).', 'Breakfast, Lunch, Dinner', 'Morning game drive, Transfer to Serengeti'),
(376, 'taa-11', 3, 'Serengeti', 'Spend the day in the heart of Tanzania\'s big game viewing country.', 'Breakfast, Lunch, Dinner', 'Full day game drive'),
(377, 'taa-11', 4, 'Ngorongoro', 'After morning game drive, continue to Olduvai Gorge to see the famous archeological site. Proceed towards Ngorongoro, where you will spend the night at a lodge overlooking the crater (250 kms, 6 hrs.)', 'Breakfast, Lunch, Dinner', 'Morning game drive, Olduvai Gorge visit'),
(378, 'taa-11', 5, 'Ngorongoro', 'Spend a full day in the legendary crater viewing an astonishing array of wildlife.', 'Breakfast, Lunch, Dinner', 'Full day crater game drive'),
(379, 'taa-11', 6, 'Return to Arusha', 'Depart for Arusha arriving before lunch (190 kms, 4 hrs).', 'Breakfast, Lunch', 'Transfer to Arusha'),
(380, 'taa-12', 1, 'Tarangire', 'Morning drive to Tarangire National Park, situated in a vast valley offering beautiful views over savannah grassland. After lunch and a game drive, retire to the lodge for the night (120 kms, 2 hrs).', 'Lunch, Dinner', 'Game drive'),
(381, 'taa-12', 2, 'Lake Manyara', 'Continue to Lake Manyara Park for lunch game drive and overnight (205 kms, 4 1/2 hrs).', 'Breakfast, Lunch, Dinner', 'Game drive'),
(382, 'taa-12', 3, 'Serengeti', 'After breakfast proceed to Gibb\'s farm for lunch. Continue to Serengeti National Park for the night.', 'Breakfast, Lunch, Dinner', 'Transfer to Serengeti'),
(383, 'taa-12', 4, 'Serengeti', 'Full day game viewing in the Serengeti encompassing the largest migratory concentration of plains game in the world.', 'Breakfast, Lunch, Dinner', 'Full day game drive'),
(384, 'taa-12', 5, 'Ngorongoro', 'After a morning game drive and breakfast, continue to Olduvai Gorge. Proceed to Ngorongoro for the night (250 kms, 6 hrs).', 'Breakfast, Lunch, Dinner', 'Morning game drive, Olduvai Gorge'),
(385, 'taa-12', 6, 'Ngorongoro', 'Descend 2000 Ft to the crater floor, for a full day of game viewing amongst the panoply of wildlife.', 'Breakfast, Lunch, Dinner', 'Full day crater game drive'),
(386, 'taa-12', 7, 'Return to Arusha', 'After breakfast return to Arusha, arriving before lunch (190 Kms, 4Hrs).', 'Breakfast, Lunch', 'Transfer to Arusha'),
(387, 'taa-13', 1, 'Ngorongoro Crater', 'Morning departures from Nairobi for Tanzania, crossing the border at Namanga and arriving in Arusha in time for lunch. Continue to the Ngorongoro crater arriving at the Wildlife Lodge, built on the crater rim. Dinner and overnight at Ngorongoro Wildlife Lodge.', 'Lunch, Dinner', 'Border crossing, Transfer to Ngorongoro'),
(388, 'taa-13', 2, 'Ngorongoro', 'Breakfast at the lodge and descend into the crater floor by special 4-wheel drive vehicle for a full day of game viewing. The magnificent black-maned Lion, elephant, buffalo, and rhino all exist in greater concentration here than anywhere else in Africa. Dinner and overnight at Ngorongoro Wildlife Lodge.', 'Breakfast, Lunch, Dinner', 'Full day crater game drive'),
(389, 'taa-13', 3, 'Lake Manyara', 'Breakfast at Ngorongoro and depart for Lake Manyara Hotel overlooking the Rift valley and the lake. Lunch at the hotel and afternoon game drive in the park around the lake where a great variety of game and birds live including the famous tree climbing lions.', 'Breakfast, Lunch, Dinner', 'Transfer to Lake Manyara, Afternoon game drive'),
(390, 'taa-13', 4, 'Return to Arusha', 'After breakfast proceed to Arusha for Lunch.', 'Breakfast, Lunch', 'Transfer to Arusha'),
(391, 'taa-14', 1, 'Lake Manyara', 'Head west towards Lake Manyara Park. After a game drive proceed to the Lake Manyara Hotel overlooking the great Rift Valley and the shimmering lake.', 'Lunch, Dinner', 'Game drive'),
(392, 'taa-14', 2, 'Serengeti', 'After morning game drive, proceed to the Serengeti Park noticing the change in Terrain from highland forest to open plain. View game enroute to the lodge for overnight.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Transfer to Serengeti'),
(393, 'taa-14', 3, 'Serengeti', 'Spend the day in the heart of Tanzania\'s big game viewing country.', 'Breakfast, Lunch, Dinner', 'Full day game drive'),
(394, 'taa-14', 4, 'Ngorongoro', 'After morning game drive, continue to Olduvai Gorge to see the famous archeological site. Proceed towards Ngorongoro, where you will spend the night at a lodge overlooking the crater.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Olduvai Gorge visit'),
(395, 'taa-14', 5, 'Ngorongoro', 'Spend a full day in the legendary crater viewing an astonishing array of wildlife.', 'Breakfast, Lunch, Dinner', 'Full day crater game drive'),
(396, 'taa-14', 6, 'Return to Arusha', 'Depart for Arusha arriving before lunch.', 'Breakfast, Lunch', 'Transfer to Arusha'),
(397, 'taa-15', 1, 'Tarangire', 'Morning drive to Tarangire National Park, situated in a vast valley offering beautiful views over savannah grassland. After lunch and a game drive, retire to the lodge for the night.', 'Lunch, Dinner', 'Game drive'),
(398, 'taa-15', 2, 'Lake Manyara', 'Continue to Lake Manyara Park for lunch game drive and overnight.', 'Breakfast, Lunch, Dinner', 'Game drive'),
(399, 'taa-15', 3, 'Serengeti', 'After breakfast, proceed to Gibb\'s farm for lunch. Continue to Serengeti National Park for the night.', 'Breakfast, Lunch, Dinner', 'Transfer to Serengeti'),
(400, 'taa-15', 4, 'Serengeti', 'Full day game viewing in the Serengeti encompassing the largest migratory concentration of plains game in the world.', 'Breakfast, Lunch, Dinner', 'Full day game drive'),
(401, 'taa-15', 5, 'Ngorongoro', 'After a morning game drive and breakfast, continue to Olduvai Gorge. Proceed to Ngorongoro for the night.', 'Breakfast, Lunch, Dinner', 'Morning game drive, Olduvai Gorge'),
(402, 'taa-15', 6, 'Ngorongoro', 'Descend 2000 ft to the crater floor, for a full day of game viewing amongst the panoply of wildlife.', 'Breakfast, Lunch, Dinner', 'Full day crater game drive'),
(403, 'taa-15', 7, 'Return to Arusha', 'After breakfast, return to Arusha, arriving before lunch.', 'Breakfast, Lunch', 'Transfer to Arusha'),
(404, 'taa-21', 1, 'Tree Hotel', 'Morning drive to the forested highlands of the Aberdares. After lunch at the base hotel, transfer to your tree hotel for game watching at the floodlit water hole.', 'Lunch, Dinner', 'Game watching'),
(405, 'taa-21', 2, 'Samburu', 'Continue north across the equator to the home of the Samburu people. Marvel at the rugged scenery of isolated crags and springs in this semi arid region. After a game drive, relax in the comfort of your lodge.', 'Breakfast, Lunch, Dinner', 'Game drive'),
(406, 'taa-21', 3, 'Samburu Game Viewing', 'Morning and later afternoon, game drives along the Uaso Nyiro river. In addition to the carnivores, view the rare species of herbivores such as the Beisa oryx or the Grevy zebra.', 'Breakfast, Lunch, Dinner', 'Morning and afternoon game drives'),
(407, 'taa-21', 4, 'Lake Nakuru', 'The drive to Lake Nakuru provides stunning vistas between the escarpments of the Rift Valley. During the game drive, behold the amazing sight of candy pink flamingoes lining the waters of the alkaline lake.', 'Breakfast, Lunch, Dinner', 'Game drive, Flamingo viewing'),
(408, 'taa-21', 5, 'Nairobi', 'After breakfast, depart for Nairobi, arriving before lunch. Afternoon at your leisure.', 'Breakfast, Lunch, Dinner', 'At leisure'),
(409, 'taa-21', 6, 'Lake Manyara', 'Cross the border to Tanzania at Namanga, stopping at Arusha for Lunch. Proceed to Lake Manyara for a game drive. Spend the night at the Lake Manyara Hotel.', 'Breakfast, Lunch, Dinner', 'Border crossing, Game drive'),
(410, 'taa-21', 7, 'Serengeti', 'Morning game drive reveals the famous tree climbing lions which spend most of the day along branches of acacia trees. After lunch, proceed to Serengeti Park for the night.', 'Breakfast, Lunch, Dinner', 'Game drive, Tree climbing lions'),
(411, 'taa-21', 8, 'Serengeti Game Viewing', 'Experience an exciting spectacle of the astounding concentrations of game and extensive bird life at home on the Serengeti plains.', 'Breakfast, Lunch, Dinner', 'Full day game drive'),
(412, 'taa-21', 9, 'Ngorongoro', 'After a morning game drive in the Serengeti, continue to the \'cradle of Mankind\' at Olduvai Gorge. Proceed to Ngorongoro for the night.', 'Breakfast, Lunch, Dinner', 'Game drive, Olduvai Gorge visit'),
(413, 'taa-21', 10, 'Ngorongoro Crater', 'During the day\'s game drives, discover this legendary crater containing the greatest permanent concentration of wildlife in Africa.', 'Breakfast, Lunch, Dinner', 'Crater game drive'),
(414, 'taa-21', 11, 'Return to Nairobi', 'Stopping at Arusha for Lunch, return to Nairobi via Namanga.', 'Breakfast, Lunch', 'Border crossing, Return transfer');

-- --------------------------------------------------------

--
-- Table structure for table `safari_rankings`
--

DROP TABLE IF EXISTS `safari_rankings`;
CREATE TABLE IF NOT EXISTS `safari_rankings` (
  `safari_id` varchar(100) NOT NULL,
  `popularity_score` double DEFAULT '0',
  `rank_position` int DEFAULT '0',
  `manual_boost` double DEFAULT '0',
  `last_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`safari_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
CREATE TABLE IF NOT EXISTS `subcategories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `title_3` (`title`),
  KEY `title_idx` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `title`, `category_id`) VALUES
(1, 'Kenya Popular Safaris', 1),
(2, 'Adventure Activities', 1),
(3, 'Coastal Islands & Marine Parks', 1),
(4, 'Nairobi Excursions', 2),
(5, 'Mombasa Excursions', 2),
(6, 'Budget Safari Destinations', 3),
(7, 'Luxury Safari Destinations', 4),
(8, 'Extreme Adventure Safari Destinations', 5),
(9, 'Safaris Across East Africa Destinations', 6),
(10, 'Kenya Flying Safari Destinations', 7),
(11, 'Cultural Experience', 8),
(12, 'Photographic Safaris', 9),
(13, 'Balloon Safaris', 10),
(14, 'Gorilla & Chimpanzee Tracking', 11),
(15, 'Balloon Safari Destinations', 12),
(16, 'Flying Safari Destinations', 13),
(17, 'Cultural Experiences', 14),
(18, 'Extreme Adventure Activities', 15),
(19, 'Photographic Safari Destinations', 16),
(20, 'Uganda Day Trips', 17),
(21, 'Top Requested Programs', 18),
(22, 'Budget Safari Destinations', 19),
(23, 'Luxury Safari Destinations', 20),
(24, 'East Africa Safari Combinations', 6),
(25, 'Kigali Excursions', 21),
(26, 'Budget Safari Destinations', 22),
(27, 'Luxury Safari Destinations', 23),
(28, 'Flying Safari Destinations', 24),
(43, 'Best Safari Destinations', 28),
(42, 'Excursions from Arusha/Moshi', 27),
(41, 'Budget Island Packages', 26),
(40, 'Unique Experiences', 25),
(39, 'Nature & Wildlife Excursions', 25),
(38, 'Cultural & Historical Excursions', 25),
(44, 'Budget Safari Destinations', 29),
(45, 'Luxury Safari Destinations', 30),
(46, 'Birding Locations', 31),
(47, 'East Africa Safari Combinations', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories` ADD FULLTEXT KEY `title_2` (`title`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
