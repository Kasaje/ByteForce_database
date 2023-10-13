-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2023 at 05:52 AM
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
-- Database: `byteforce`
--
CREATE DATABASE IF NOT EXISTS `byteforce` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `byteforce`;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `admission_fee` float DEFAULT NULL,
  `L_Picture` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `description`, `address`, `admission_fee`, `L_Picture`) VALUES
(1, ' this is test description', NULL, NULL, NULL),
(2, 'ดอยผาหมี เป็นหมู่บ้านเล็กๆ อากาศเย็นสบายเหมาะแก่การพักผ่อนเป็นอย่างมากบอกเลยว่าไม่ควรพลาดแวะ\r\nชิมกาแฟผาหมี โดยเฉพาะที่ร้านกาแฟดอยผาหมีจะมีทั้งกาแฟสดกาแฟดริปคั่วบดเอง\r\nให้เลือกชิมกันเลย รวมไปถึงมีมุมถ่ายรูปสวยๆอีกด้วยไม่หมดเท่านั้นเพราะมีกิจกรรม\r\nสอนดริปกาแฟด้วยอุปกรณ์จากภูมิปัญญาชาวเขา', 'ที่ตั้งอยู่ใน ต.เวียงพางคำ อ.แม่สาย จ.เชียงราย', 0, NULL),
(3, 'วนอุทยานภูลังกา อยู่ในเขตป่าสงวนแห่งชาติป่าน้ำเปื๋อย ป่าน้ำหยวนและป่าน้ำลาว และป่าสงวน\r\nแห่งชาติป่าแม่ยม มีเนื้อที่ประมาณ 7,800 ไร่ ด้วยลักษณะที่เป็นยอดเขาสลับซับซ้อนนี้เอง\r\nจึงเหมาะสำหรับนักนิยมธรรมชาติที่ชอบการเดินป่าพิชิตยอดดอยสูง\r\nซึ่งเหมาะสำหรับการชมทิวทัศน์ในช่วงฤดูหนาวเป็นอย่างยิ่ง ', 'อำเภอเชียงคำ และอำเภอปง \r\nจังหวัดพะเยา', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `location_like`
--

CREATE TABLE `location_like` (
  `user_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `datetime_like` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `location_like`
--

INSERT INTO `location_like` (`user_id`, `location_id`, `datetime_like`) VALUES
(2, 1, '2023-09-10 21:42:05');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `user_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `datetime_review` datetime DEFAULT current_timestamp(),
  `review_message` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`user_id`, `location_id`, `datetime_review`, `review_message`) VALUES
(1, 1, '2023-09-10 21:16:15', 'this is test review message'),
(2, 2, '2023-09-10 21:46:32', 'สถานที่ที่ดีมาก'),
(3, 3, '2023-09-10 21:56:31', 'ไปเที่ยวมาแล้วสวยมากๆ สาวๆก็น่ารักมากเลยครับ');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `U_Picture` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`, `U_Picture`) VALUES
(1, 'Namikaze', 'Minato', 'minato@gmail.com', 'minato4', '4444', NULL),
(2, 'joy', 'patra', 'joy123@gmail.com', 'joy55', 'joy1234', NULL),
(3, 'kaseamsan', 'keawjeen', NULL, NULL, NULL, NULL),
(4, 'Uzumaki', 'Naruto', 'naruto@gmail.com', 'naruto777', 'naruto777password', NULL),
(6, 'pinpa', 'siripapan', 'Yam@gmail.com', 'Yammee', 'yam12345678', NULL),
(7, 'pongsit', 'komkai', 'Nat@gmail.com', 'Nattee', 'Nattee2345678', NULL),
(8, 'Tharathip', 'jantaraprakorn', 'Ar@gmail.com', 'Array', 'Array2345', NULL),
(9, 'Gerard', 'Don', 'Gerard@gmail.com', 'Gerard11', 'Gerard12345678', NULL),
(10, 'Nareerat', 'nwarasakul', 'minnie@gmail.com', 'Minnieee', 'Minnoname', NULL),
(11, 'Marty', 'Harry', 'Marty@gmail.com', 'Marty11', 'Marty2345678', NULL),
(12, 'Tom ', 'Tuu', 'example@gmail.com', 'naruto777', 'naruto777password', '#'),
(13, 'Tom ', 'Tuu', 'example@gmail.com', 'naruto777', 'naruto777password', '#'),
(14, 'แซลมอน', 'จนเขิน', 'Salmon@gmail.com', 'Salmonjonkoen', 'salmon12345', '#');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `location_like`
--
ALTER TABLE `location_like`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `location_like`
--
ALTER TABLE `location_like`
  ADD CONSTRAINT `location_like_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `location_like_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`) ON DELETE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`) ON DELETE CASCADE;
--