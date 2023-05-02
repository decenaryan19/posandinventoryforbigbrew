-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2023 at 05:15 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cscs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'MILK TEA', 'MILKTEA', 1, 0, '2022-04-22 09:59:46', '2023-04-27 23:58:26'),
(2, 'ICE COFFEE', 'ICE COFFEE', 1, 0, '2022-04-22 10:01:06', '2023-04-27 23:45:05'),
(3, 'HOTBREW', 'HOTBREW', 1, 0, '2023-04-27 23:46:57', '2023-04-27 23:46:57'),
(4, 'FRUIT TEA', 'FRUIT TEA', 1, 0, '2023-04-27 23:47:06', '2023-04-27 23:47:11'),
(5, 'ADD-ONS', 'ADD-ONS', 1, 0, '2023-04-27 23:56:22', '2023-04-27 23:56:22');

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` float(15,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `category_id`, `name`, `description`, `price`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 1, 'Arabica', 'Arabica is the most popular type of bean used for coffee. Arabica beans are considered higher quality than Robusta, and they\'re also more expensive.', 150.00, 1, 1, '2022-04-22 10:16:50', '2022-04-22 10:22:07'),
(2, 1, 'Robusta', 'Robusta beans are typically cheaper to produce because the Robusta plant is easier to grow.', 145.00, 1, 1, '2022-04-22 10:17:20', '2022-04-22 10:22:11'),
(3, 1, 'Black Coffee', 'Black coffee is made from plain ground coffee beans that are brewed hot. It\'s served without added sugar, milk, or flavorings.', 75.00, 1, 1, '2022-04-22 10:17:54', '2023-04-27 23:47:21'),
(4, 1, 'Decaf', 'Coffee beans naturally contain caffeine, but roasters can use several different processes to remove almost all of it. Decaf coffee is brewed with these decaffeinated beans.', 100.00, 1, 1, '2022-04-22 10:18:15', '2023-04-27 23:09:50'),
(5, 1, 'Espresso', 'Most people know that a shot of espresso is stronger than the same amount of coffee, but what\'s the difference, exactly? There isn\'t anything inherently different about the beans themselves, but when beans are used to make espresso they\'re more finely ground, and they\'re brewed with a higher grounds-to-water ratio than what\'s used for coffee.', 125.00, 1, 1, '2022-04-22 10:19:18', '2023-04-27 23:09:55'),
(6, 1, 'Latte', 'This classic drink is typically 1/3 espresso and 2/3 steamed milk, topped with a thin layer of foam, but coffee shops have come up with seemingly endless customizations. You can experiment with flavored syrups like vanilla and pumpkin spice or create a nondairy version by using oat milk. Skilled baristas often swirl the foam into latte art!', 125.00, 1, 1, '2022-04-22 10:19:47', '2023-04-27 23:47:32'),
(7, 1, 'Cappuccino', 'This espresso-based drink is similar to a latte, but the frothy top layer is thicker. The standard ratio is equal parts espresso, steamed milk, and foam. It\'s often served in a 6-ounce cup (smaller than a latte cup) and can be topped with a sprinkling of cinnamon.', 100.00, 1, 1, '2022-04-22 10:20:06', '2023-04-27 23:47:23'),
(8, 1, 'Macchiato', 'A macchiato is a shot of espresso with just a touch of steamed milk or foam. In Italian, macchiato means \"stained\" or \"spotted,\" so a caffè macchiato refers to coffee that\'s been stained with milk.', 150.00, 1, 1, '2022-04-22 10:20:26', '2023-04-27 23:47:34'),
(9, 2, 'Iced Coffee', 'Is there anything better than a glass of iced coffee on a hot day (or any day, for that matter)? The simplest way to make it: Brew a regular cup of hot coffee, then cool it over ice. Add whatever milk and sweeteners you like.', 150.00, 1, 1, '2022-04-22 10:20:53', '2023-04-27 23:47:27'),
(10, 2, 'Iced Latte', 'The chilled version of a latte is simply espresso and milk over ice.', 145.00, 1, 1, '2022-04-22 10:21:17', '2023-04-27 23:47:30'),
(11, 2, 'Cold Brew', 'Cold brew is one of the biggest coffee trends of the last decade, and for good reason: It\'s made by slowly steeping coffee grounds over cool or room-temperature water, so it tastes smoother and less bitter than regular iced coffee, which is brewed hot.', 140.00, 1, 1, '2022-04-22 10:21:42', '2023-04-27 23:47:25'),
(12, 4, 'KIWI', 'KIWI', 39.00, 1, 0, '2023-04-27 23:48:30', '2023-04-27 23:48:30'),
(13, 4, 'LYCHEE', 'LYCHEE', 39.00, 1, 0, '2023-04-27 23:48:42', '2023-04-27 23:48:42'),
(14, 4, 'GREEN APPLE', 'GREEN APPLE', 39.00, 1, 0, '2023-04-27 23:48:51', '2023-04-27 23:48:51'),
(15, 4, 'LEMON', 'LEMON', 39.00, 1, 0, '2023-04-27 23:49:03', '2023-04-27 23:49:03'),
(17, 4, 'HONEY PEACH', 'HONEY PEACH', 39.00, 1, 0, '2023-04-27 23:49:30', '2023-04-27 23:49:30'),
(18, 4, 'MANGO', 'MANGO', 39.00, 1, 0, '2023-04-27 23:49:44', '2023-04-27 23:49:44'),
(19, 4, 'BLUEBERRY', 'BLUEBERRY', 39.00, 1, 0, '2023-04-27 23:49:53', '2023-04-27 23:49:53'),
(20, 3, 'BRUSKO', 'BRUSKO', 35.00, 1, 0, '2023-04-27 23:50:04', '2023-04-27 23:50:04'),
(21, 3, 'CHOCO', 'CHOCO', 35.00, 1, 0, '2023-04-27 23:50:13', '2023-04-27 23:50:13'),
(22, 3, 'HOT MATCHA', 'HOT MATCHA', 35.00, 1, 0, '2023-04-27 23:50:22', '2023-04-27 23:55:35'),
(23, 3, 'KARAMEL', 'KARAMEL', 35.00, 1, 0, '2023-04-27 23:50:31', '2023-04-27 23:50:31'),
(24, 2, 'KAPE BRUSKO', 'KAPE BRUSKO', 39.00, 1, 0, '2023-04-27 23:50:57', '2023-04-27 23:50:57'),
(25, 2, 'KAPE MACCH', 'KAPE MACCH', 39.00, 1, 0, '2023-04-27 23:51:08', '2023-04-27 23:51:08'),
(26, 2, 'KAPE MOCA', 'KAPE MOCA', 39.00, 1, 0, '2023-04-27 23:51:15', '2023-04-27 23:51:15'),
(27, 2, 'KAPE BLANCO', 'KAPE BLANCO', 39.00, 1, 0, '2023-04-27 23:51:30', '2023-04-27 23:51:30'),
(28, 2, 'KAPE VAN', 'KAPE VAN', 39.00, 1, 0, '2023-04-27 23:51:40', '2023-04-27 23:51:40'),
(30, 2, 'KAPE MATCH', 'KAPE MATCH', 39.00, 1, 0, '2023-04-27 23:51:52', '2023-04-27 23:51:52'),
(31, 2, 'KAPE KARAMEL', 'KAPE KARAMEL', 39.00, 1, 0, '2023-04-27 23:52:00', '2023-04-27 23:52:00'),
(32, 1, 'OKINAWA', 'OKINAWA', 39.00, 1, 0, '2023-04-27 23:52:39', '2023-04-27 23:52:39'),
(33, 1, 'WINTERMELON', 'WINTERMELON', 39.00, 1, 0, '2023-04-27 23:52:47', '2023-04-27 23:52:47'),
(34, 1, 'HOKKAIDO', 'HOKKAIDO', 39.00, 1, 0, '2023-04-27 23:52:55', '2023-04-27 23:52:55'),
(36, 1, 'COOKIES & CREAM', 'COOKIES & CREAM', 39.00, 1, 0, '2023-04-27 23:53:06', '2023-04-27 23:53:06'),
(38, 1, 'SALTED CARAMEL', 'SALTED CARAMEL', 39.00, 1, 0, '2023-04-27 23:53:15', '2023-04-27 23:53:15'),
(40, 1, 'CHEESECAKE', 'CHEESECAKE', 39.00, 1, 0, '2023-04-27 23:53:26', '2023-04-27 23:53:26'),
(42, 1, 'DARK CHOCO', 'DARK CHOCO', 39.00, 1, 0, '2023-04-27 23:53:36', '2023-04-27 23:53:36'),
(43, 1, 'CHOCO KISSES', 'CHOCO KISSES', 39.00, 1, 0, '2023-04-27 23:53:47', '2023-04-27 23:53:47'),
(44, 1, 'CHOCOLATE', 'CHOCOLATE', 39.00, 1, 0, '2023-04-27 23:53:56', '2023-04-27 23:53:56'),
(45, 1, 'DOUBLE DUTCH', 'DOUBLE DUTCH', 39.00, 1, 0, '2023-04-27 23:54:04', '2023-04-27 23:54:04'),
(46, 1, 'TARO', 'TARO', 39.00, 1, 0, '2023-04-27 23:54:18', '2023-04-27 23:54:18'),
(47, 1, 'MATCHA', 'MATCHA', 39.00, 1, 0, '2023-04-27 23:55:52', '2023-04-27 23:55:52'),
(48, 5, 'PEARL', 'PEARL', 9.00, 1, 0, '2023-04-27 23:56:35', '2023-04-27 23:56:35'),
(50, 5, 'CRYSTAL', 'CRYSTAL', 9.00, 1, 0, '2023-04-27 23:56:48', '2023-04-27 23:56:48'),
(51, 5, 'COFFEE JELLY', 'COFFEE JELLY', 9.00, 1, 0, '2023-04-27 23:56:56', '2023-04-27 23:56:56'),
(52, 5, 'CREAM CHEESE', 'CREAM CHEESE', 9.00, 1, 0, '2023-04-27 23:57:05', '2023-04-27 23:57:05'),
(53, 5, 'CHEESE PUFF', 'CHEESE PUFF', 9.00, 1, 0, '2023-04-27 23:57:17', '2023-04-27 23:57:17'),
(54, 5, 'CRUSHED OREO', 'CRUSHED OREO', 9.00, 1, 0, '2023-04-27 23:57:27', '2023-04-27 23:57:27');

-- --------------------------------------------------------

--
-- Table structure for table `sale_list`
--

CREATE TABLE `sale_list` (
  `id` int(30) NOT NULL,
  `user_id` int(30) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `client_name` text NOT NULL,
  `amount` float(15,2) NOT NULL DEFAULT 0.00,
  `tendered` float(15,2) NOT NULL DEFAULT 0.00,
  `payment_type` tinyint(1) NOT NULL COMMENT '1 = Cash,\r\n2 = Debit Card,\r\n3 = Credit Card',
  `payment_code` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale_list`
--

INSERT INTO `sale_list` (`id`, `user_id`, `code`, `client_name`, `amount`, `tendered`, `payment_type`, `payment_code`, `date_created`, `date_updated`) VALUES
(4, 5, '202304270001', 'Guest', 140.00, 11.00, 1, '', '2023-04-27 23:26:21', '2023-04-27 23:26:21'),
(5, 5, '202304280001', 'Guest', 117.00, 120.00, 1, '', '2023-04-28 00:02:23', '2023-04-28 00:02:23'),
(6, 5, '202304280002', 'Guest', 0.00, 0.00, 1, '', '2023-04-28 00:09:48', '2023-04-28 00:09:48'),
(7, 5, '202304280003', 'Guest', 45.00, 45.00, 1, '', '2023-04-28 00:10:14', '2023-04-28 00:10:14');

-- --------------------------------------------------------

--
-- Table structure for table `sale_products`
--

CREATE TABLE `sale_products` (
  `sale_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(10) NOT NULL,
  `price` float(15,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale_products`
--

INSERT INTO `sale_products` (`sale_id`, `product_id`, `qty`, `price`) VALUES
(4, 11, 1, 140.00),
(5, 40, 1, 39.00),
(5, 45, 1, 39.00),
(5, 34, 1, 39.00),
(7, 52, 1, 9.00),
(7, 52, 1, 9.00),
(7, 52, 1, 9.00),
(7, 52, 1, 9.00),
(7, 52, 1, 9.00);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Point of Sale - Big Brew'),
(6, 'short_name', 'BigBrew'),
(18, 'logo', 'uploads/logo.png?v=1650590302'),
(19, 'user_avatar', 'uploads/user_avatar.jpg'),
(22, 'cover', 'uploads/cover.png?v=1650590309');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatars/1.png?v=1649834664', NULL, 1, '2021-01-20 14:02:37', '2022-04-13 15:24:24'),
(5, 'Ryan', 'Decena', 'ryan2023', 'ee11cbb19052e40b07aac0ca060c23ee', NULL, NULL, 3, '2023-04-27 22:43:45', '2023-04-27 22:43:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `sale_list`
--
ALTER TABLE `sale_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `sale_products`
--
ALTER TABLE `sale_products`
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `sale_list`
--
ALTER TABLE `sale_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `category_id_fk_pl` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `sale_list`
--
ALTER TABLE `sale_list`
  ADD CONSTRAINT `user_id_fk_sl` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `sale_products`
--
ALTER TABLE `sale_products`
  ADD CONSTRAINT `product_id_fk_sp` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `sale_id_fk_sp` FOREIGN KEY (`sale_id`) REFERENCES `sale_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
