-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2022 at 02:53 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `img`) VALUES
(1, 'Fruits & Vetetables', 'Fruit and vegetables grew in abundance on the island. The islanders even exported the surplus', './public/img/h1-bg-1.jpg'),
(2, 'Dairy Products', 'A dairy product is food produced from the milk of mammals. A production plant for the processing of milk is called a dairy or a dairy factory. ', './public/img/h1-bg-4.jpg'),
(3, 'Package Foods', 'Food packaging is a packaging system specifically designed for food and represents one of the most important aspects among the processes involved in the food industry, as it provides protection from chemical, biological and physical alterations', './public/img/h1-bg-3.jpg'),
(4, 'Beverages', 'The agency regulates and controls the sale of all beverages exceeding 16% alcohol.', './public/img/h1-bg-2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `code`, `description`, `status`, `user_id`, `created_at`) VALUES
(1, 'ueoL5QjTs', 'order', 'finish', 1, '2022-12-22 03:45:04'),
(2, 'DmyS9epYj', 'order', 'finish', 1, '2022-12-22 03:45:30'),
(3, 'ujcgSpH7E', 'order', 'pending', 1, '2022-12-22 04:35:18'),
(4, 'yoZptiHMY', 'order', 'pending', 1, '2022-12-22 04:35:29');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `amount`, `order_id`, `product_id`, `price`) VALUES
(1, 4, 1, 1, 150),
(2, 3, 2, 3, 153),
(3, 1, 2, 5, 134),
(4, 2, 3, 1, 150),
(5, 2, 3, 2, 152),
(6, 2, 4, 3, 153);

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `url` varchar(2048) DEFAULT NULL,
  `products_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text NOT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `quantity`, `category_id`) VALUES
(1, 'Papaya ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', './public/img/pro-9_360x.webp', 150, 2, 1),
(2, 'Green Beans', 'As opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', './public/img/pro-13_3acf8499-1f57-4272-ae89-5b2cfd80e0a6_360x.webp', 152, 2, 1),
(3, 'Nulaid Eggs', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable', './public/img/pro-30_90d31f09-9691-4069-bdf6-7a4d7c51f100_360x.webp', 153, 2, 2),
(4, 'Pumpkins', 'pden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil', './public/img/pro-14_886d9cc6-f5a9-4c20-86ac-3cff243154bd_360x.webp', 154, 2, 1),
(5, 'Cabbage', 'able. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a h', './public/img/pro-17_09bc74c5-e8c4-4de1-a6c5-91f86746d156_360x.webp', 134, 2, 1),
(6, 'Salmon', 'rature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the und', './public/img/pro-27_5efbc73b-1830-4566-b064-b5922a3bed6a_360x.webp', 200, 2, 2),
(7, 'Beef', '2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 ', './public/img/pro-28_ad175890-75d0-4a1e-976a-dfc231658930_360x.webp', 230, 2, 2),
(8, 'Chicken Eggs', 'mour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as', './public/img/pro-30_90d31f09-9691-4069-bdf6-7a4d7c51f100_360x.webp', 156, 2, 3),
(9, 'Salmon Portions', 'tin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory ', './public/img/pro-34_360x.webp', 157, 2, 3),
(10, 'Packham Triumph', ' It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc', './public/img/pro-20_360x.webp', 153, 2, 4),
(11, 'Sausage', 'ing it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undou', './public/img/pro-33_360x.webp', 200, 2, 3),
(12, 'Strawberries', 'or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined', './public/img/pro-2_360x.webp', 140, 2, 3),
(13, 'Salad', 'randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem', './public/img/pro-17_09bc74c5-e8c4-4de1-a6c5-91f86746d156_360x.webp', 152, 2, 4),
(14, 'Fish Sauce', 'Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.', './public/img/pro-23_360x.webp', 200, 2, 4),
(15, 'Blueberries Juice', 'If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks', './public/img/pro-3_94a35c0b-9750-4e49-be92-77484f8ecc5e_360x.webp', 152, 2, 4),
(16, 'Pig Sausages', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to u', './public/img/pro-33_360x.webp', 153, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`) VALUES
(1, 'email0@gmail.com', '123', 'admin'),
(3, 'email2@gmail.com', '123', 'user'),
(4, 'email3@gmail.com', '123', 'user'),
(5, 'email4@gmail.com', '123', 'user'),
(6, 'email5@gmail.com', '123', 'user'),
(7, 'email6@gmail.com', '123', 'user'),
(8, 'email7@gmail.com', '123', 'user'),
(9, 'email8@gmail.com', '123', 'user'),
(10, 'email9@gmail.com', '123', 'user'),
(11, 'email10@gmail.com', '123', 'user'),
(12, 'email11@gmail.com', '123', 'user'),
(13, 'email12@gmail.com', '123', 'user'),
(14, 'email13@gmail.com', '123', 'user'),
(15, 'email14@gmail.com', '123', 'user'),
(16, 'email15@gmail.com', '123', 'user'),
(17, 'email16@gmail.com', '123', 'user'),
(18, 'email17@gmail.com', '123', 'user'),
(19, 'email18@gmail.com', '123', 'user'),
(20, 'email19@gmail.com', '123', 'user'),
(21, 'email20@gmail.com', '123', 'user'),
(22, 'email21@gmail.com', '123', 'user'),
(23, 'email22@gmail.com', '123', 'user'),
(24, 'email23@gmail.com', '123', 'user'),
(25, 'email24@gmail.com', '123', 'user'),
(26, 'email25@gmail.com', '123', 'user'),
(27, 'email26@gmail.com', '123', 'user'),
(28, 'email27@gmail.com', '123', 'user'),
(29, 'email28@gmail.com', '123', 'user'),
(30, 'email29@gmail.com', '123', 'user'),
(31, 'email30@gmail.com', '123', 'user'),
(32, 'email31@gmail.com', '123', 'user'),
(33, 'email32@gmail.com', '123', 'user'),
(34, 'email33@gmail.com', '123', 'user'),
(35, 'email34@gmail.com', '123', 'user'),
(36, 'email35@gmail.com', '123', 'user'),
(37, 'email36@gmail.com', '123', 'user'),
(38, 'email37@gmail.com', '123', 'user'),
(39, 'email38@gmail.com', '123', 'user'),
(40, 'email39@gmail.com', '123', 'user'),
(41, 'email40@gmail.com', '123', 'user'),
(42, 'email41@gmail.com', '123', 'user'),
(43, 'email42@gmail.com', '123', 'user'),
(44, 'email43@gmail.com', '123', 'user'),
(45, 'email44@gmail.com', '123', 'user'),
(46, 'email45@gmail.com', '123', 'user'),
(47, 'email46@gmail.com', '123', 'user'),
(48, 'email47@gmail.com', '123', 'user'),
(49, 'email48@gmail.com', '123', 'user'),
(50, 'email49@gmail.com', '123', 'user'),
(51, 'email50@gmail.com', '123', 'user'),
(52, 'email51@gmail.com', '123', 'user'),
(53, 'email52@gmail.com', '123', 'user'),
(54, 'email53@gmail.com', '123', 'user'),
(55, 'email54@gmail.com', '123', 'user'),
(56, 'email55@gmail.com', '123', 'user'),
(57, 'email56@gmail.com', '123', 'user'),
(58, 'email57@gmail.com', '123', 'user'),
(59, 'email58@gmail.com', '123', 'user'),
(60, 'email59@gmail.com', '123', 'user'),
(61, 'email60@gmail.com', '123', 'user'),
(62, 'email61@gmail.com', '123', 'user'),
(63, 'email62@gmail.com', '123', 'user'),
(64, 'email63@gmail.com', '123', 'user'),
(65, 'email64@gmail.com', '123', 'user'),
(66, 'email65@gmail.com', '123', 'user'),
(67, 'email66@gmail.com', '123', 'user'),
(68, 'email67@gmail.com', '123', 'user'),
(69, 'email68@gmail.com', '123', 'user'),
(70, 'email69@gmail.com', '123', 'user'),
(71, 'email70@gmail.com', '123', 'user'),
(72, 'email71@gmail.com', '123', 'user'),
(73, 'email72@gmail.com', '123', 'user'),
(74, 'email73@gmail.com', '123', 'user'),
(75, 'email74@gmail.com', '123', 'user'),
(76, 'email75@gmail.com', '123', 'user'),
(77, 'email76@gmail.com', '123', 'user'),
(78, 'email77@gmail.com', '123', 'user'),
(79, 'email78@gmail.com', '123', 'user'),
(80, 'email79@gmail.com', '123', 'user'),
(81, 'email80@gmail.com', '123', 'user'),
(82, 'email81@gmail.com', '123', 'user'),
(83, 'email82@gmail.com', '123', 'user'),
(84, 'email83@gmail.com', '123', 'user'),
(85, 'email84@gmail.com', '123', 'user'),
(86, 'email85@gmail.com', '123', 'user'),
(87, 'email86@gmail.com', '123', 'user'),
(88, 'email87@gmail.com', '123', 'user'),
(89, 'email88@gmail.com', '123', 'user'),
(90, 'email89@gmail.com', '123', 'user'),
(91, 'email90@gmail.com', '123', 'user'),
(92, 'email91@gmail.com', '123', 'user'),
(93, 'email92@gmail.com', '123', 'user'),
(94, 'email93@gmail.com', '123', 'user'),
(95, 'email94@gmail.com', '123', 'user'),
(96, 'email95@gmail.com', '123', 'user'),
(97, 'email0@gmail.com', '123', 'user'),
(98, 'email96@gmail.com', '123', 'user'),
(99, 'email1@gmail.com', '123', 'user'),
(100, 'email97@gmail.com', '123', 'user'),
(101, 'email2@gmail.com', '123', 'user'),
(102, 'email98@gmail.com', '123', 'user'),
(103, 'email3@gmail.com', '123', 'user'),
(104, 'email99@gmail.com', '123', 'user'),
(105, 'email4@gmail.com', '123', 'user'),
(106, 'email5@gmail.com', '123', 'user'),
(107, 'email6@gmail.com', '123', 'user'),
(108, 'email7@gmail.com', '123', 'user'),
(109, 'email8@gmail.com', '123', 'user'),
(110, 'email9@gmail.com', '123', 'user'),
(111, 'email10@gmail.com', '123', 'user'),
(112, 'email11@gmail.com', '123', 'user'),
(113, 'email12@gmail.com', '123', 'user'),
(114, 'email13@gmail.com', '123', 'user'),
(115, 'email14@gmail.com', '123', 'user'),
(116, 'email15@gmail.com', '123', 'user'),
(117, 'email16@gmail.com', '123', 'user'),
(118, 'email17@gmail.com', '123', 'user'),
(119, 'email18@gmail.com', '123', 'user'),
(120, 'email19@gmail.com', '123', 'user'),
(121, 'email20@gmail.com', '123', 'user'),
(122, 'email21@gmail.com', '123', 'user'),
(123, 'email22@gmail.com', '123', 'user'),
(124, 'email23@gmail.com', '123', 'user'),
(125, 'email24@gmail.com', '123', 'user'),
(126, 'email25@gmail.com', '123', 'user'),
(127, 'email26@gmail.com', '123', 'user'),
(128, 'email27@gmail.com', '123', 'user'),
(129, 'email28@gmail.com', '123', 'user'),
(130, 'email29@gmail.com', '123', 'user'),
(131, 'email30@gmail.com', '123', 'user'),
(132, 'email31@gmail.com', '123', 'user'),
(133, 'email32@gmail.com', '123', 'user'),
(134, 'email33@gmail.com', '123', 'user'),
(135, 'email34@gmail.com', '123', 'user'),
(136, 'email35@gmail.com', '123', 'user'),
(137, 'email36@gmail.com', '123', 'user'),
(138, 'email37@gmail.com', '123', 'user'),
(139, 'email38@gmail.com', '123', 'user'),
(140, 'email39@gmail.com', '123', 'user'),
(141, 'email40@gmail.com', '123', 'user'),
(142, 'email41@gmail.com', '123', 'user'),
(143, 'email42@gmail.com', '123', 'user'),
(144, 'email43@gmail.com', '123', 'user'),
(145, 'email44@gmail.com', '123', 'user'),
(146, 'email45@gmail.com', '123', 'user'),
(147, 'email46@gmail.com', '123', 'user'),
(148, 'email47@gmail.com', '123', 'user'),
(149, 'email48@gmail.com', '123', 'user'),
(150, 'email49@gmail.com', '123', 'user'),
(151, 'email50@gmail.com', '123', 'user'),
(152, 'email51@gmail.com', '123', 'user'),
(153, 'email52@gmail.com', '123', 'user'),
(154, 'email53@gmail.com', '123', 'user'),
(155, 'email54@gmail.com', '123', 'user'),
(156, 'email55@gmail.com', '123', 'user'),
(157, 'email56@gmail.com', '123', 'user'),
(158, 'email57@gmail.com', '123', 'user'),
(159, 'email58@gmail.com', '123', 'user'),
(160, 'email59@gmail.com', '123', 'user'),
(161, 'email60@gmail.com', '123', 'user'),
(162, 'email61@gmail.com', '123', 'user'),
(163, 'email62@gmail.com', '123', 'user'),
(164, 'email63@gmail.com', '123', 'user'),
(165, 'email64@gmail.com', '123', 'user'),
(166, 'email65@gmail.com', '123', 'user'),
(167, 'email66@gmail.com', '123', 'user'),
(168, 'email67@gmail.com', '123', 'user'),
(169, 'email68@gmail.com', '123', 'user'),
(170, 'email69@gmail.com', '123', 'user'),
(171, 'email70@gmail.com', '123', 'user'),
(172, 'email71@gmail.com', '123', 'user'),
(173, 'email72@gmail.com', '123', 'user'),
(174, 'email73@gmail.com', '123', 'user'),
(175, 'email74@gmail.com', '123', 'user'),
(176, 'email75@gmail.com', '123', 'user'),
(177, 'email76@gmail.com', '123', 'user'),
(178, 'email77@gmail.com', '123', 'user'),
(179, 'email78@gmail.com', '123', 'user'),
(180, 'email79@gmail.com', '123', 'user'),
(181, 'email80@gmail.com', '123', 'user'),
(182, 'email81@gmail.com', '123', 'user'),
(183, 'email82@gmail.com', '123', 'user'),
(184, 'email83@gmail.com', '123', 'user'),
(185, 'email84@gmail.com', '123', 'user'),
(186, 'email85@gmail.com', '123', 'user'),
(187, 'email86@gmail.com', '123', 'user'),
(188, 'email87@gmail.com', '123', 'user'),
(189, 'email88@gmail.com', '123', 'user'),
(190, 'email89@gmail.com', '123', 'user'),
(191, 'email90@gmail.com', '123', 'user'),
(192, 'email91@gmail.com', '123', 'user'),
(193, 'email92@gmail.com', '123', 'user'),
(194, 'email93@gmail.com', '123', 'user'),
(195, 'email94@gmail.com', '123', 'user'),
(196, 'email95@gmail.com', '123', 'user'),
(197, 'email96@gmail.com', '123', 'user'),
(198, 'email97@gmail.com', '123', 'user'),
(199, 'email98@gmail.com', '123', 'user'),
(200, 'email99@gmail.com', '123', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`,`user_id`),
  ADD KEY `fk_orders_users` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_photos_products1` (`products_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`,`category_id`),
  ADD KEY `fk_products_categories1` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `fk_photos_products1` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_products_categories1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
