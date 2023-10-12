-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2023 at 10:26 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nutrinoz`
--

-- --------------------------------------------------------

--
-- Table structure for table `diet_meal`
--

CREATE TABLE `diet_meal` (
  `meal_id` int(100) NOT NULL,
  `diet_id` int(100) NOT NULL,
  `meal_num` int(100) NOT NULL,
  `meal_name` varchar(100) NOT NULL,
  `meal_quantity` varchar(100) NOT NULL,
  `meal_cal` int(100) NOT NULL,
  `meal_carbs` int(100) NOT NULL,
  `meal_protein` int(100) NOT NULL,
  `meal_fat` int(100) NOT NULL,
  `meal_cost` int(100) NOT NULL,
  `meal_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `diet_plan`
--

CREATE TABLE `diet_plan` (
  `diet_id` int(200) NOT NULL,
  `diet_cal_amount` int(200) NOT NULL,
  `diet_type` varchar(200) NOT NULL,
  `meal_num` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nutrinoz_menu`
--

CREATE TABLE `nutrinoz_menu` (
  `menu_category` varchar(200) NOT NULL,
  `dish_taste` varchar(200) NOT NULL,
  `dish_image_name` varchar(200) NOT NULL,
  `dish_name` varchar(200) NOT NULL,
  `dish_desc` text NOT NULL,
  `dish_calorie` int(255) NOT NULL,
  `dish_price` decimal(25,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nutrinoz_users`
--

CREATE TABLE `nutrinoz_users` (
  `user_name` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_password` varchar(200) NOT NULL,
  `user_contact` int(200) NOT NULL,
  `user_signup_date` datetime(6) NOT NULL,
  `user_last_login` datetime(6) NOT NULL,
  `user_act_code` varchar(200) NOT NULL,
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nutrinoz_users`
--

INSERT INTO `nutrinoz_users` (`user_name`, `user_email`, `user_password`, `user_contact`, `user_signup_date`, `user_last_login`, `user_act_code`, `token`) VALUES
('Vipul', 'vipul@gmail.com', '$2y$10$S8LEK22/x7Q.O96f2EQTUuqqqq08l0OX7y0piZgYqAc13SeaV3Cbe', 2147483647, '2023-10-11 23:51:22.000000', '2023-10-11 23:57:08.000000', 'a789a0ddb23968990631719ec0047a36', ''),
('Anshul', 'davidjgreen30@gmail.com', '$2y$10$kVktl442gFdAHXrgr48yfeig7wfk0dgN/YHOt2qJXtEOwVu4m1Yd6', 2147483647, '2023-10-11 23:55:55.000000', '2023-10-11 23:57:08.000000', 'cb193f254112e589daa2dde7ee3461de', '');

-- --------------------------------------------------------

--
-- Table structure for table `nutrinoz_users_info`
--

CREATE TABLE `nutrinoz_users_info` (
  `info_user_id` int(200) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_bmi` varchar(200) NOT NULL,
  `user_calories` float NOT NULL,
  `user_ideal_weight` float NOT NULL,
  `user_age` float NOT NULL,
  `user_weight` float NOT NULL,
  `user_tar_weight` float NOT NULL,
  `user_height` int(20) NOT NULL,
  `user_veg_type` varchar(200) NOT NULL,
  `user_allergy1` varchar(200) NOT NULL,
  `user_allergy2` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diet_meal`
--
ALTER TABLE `diet_meal`
  ADD PRIMARY KEY (`meal_id`),
  ADD KEY `diet_id` (`diet_id`);

--
-- Indexes for table `diet_plan`
--
ALTER TABLE `diet_plan`
  ADD PRIMARY KEY (`diet_id`);

--
-- Indexes for table `nutrinoz_menu`
--
ALTER TABLE `nutrinoz_menu`
  ADD PRIMARY KEY (`dish_taste`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diet_meal`
--
ALTER TABLE `diet_meal`
  ADD CONSTRAINT `diet_meal_ibfk_1` FOREIGN KEY (`diet_id`) REFERENCES `diet_plan` (`diet_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
