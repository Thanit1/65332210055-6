-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2023 at 09:06 PM
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
-- Database: `dbmini-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `date_time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `topic_id`, `id_user`, `comment`, `date_time`) VALUES
(52, 33, 4, 'ลาบเป็ดยโสครับ😁', '27/09/2023 16:09'),
(54, 34, 6, '1.วัดเนรมิตวิปัสสนา จังหวัดเลย\r\n2. วัดหนองแวง จังหวัดขอนแก่น\r\n3. วัดป่าภูก้อน จังหวัดอุดรธานี\r\n4. วัดสิรินธรวรารามภูพร้าว จังหวัดอุบลราชธานี\r\n5. วัดพระธาตุพนม จังหวัดนครพนม\r\n6. วัดผาน้ำทิพย์เทพประสิทธิ์วราราม จ.ร้อยเอ็ด\r\n7. วัดเขาอังคาร จังหวัดบุรีรัมย์\r\n8. วัดพุทธนิมิต (ภูค่าว) จังหวัดกาฬสินธุ์\r\n9. วัดโพธิ์ชัย จังหวัดหนองคาย\r\n', '27/09/2023 16:20'),
(55, 35, 9, 'อีเกิ้ง แปลว่า ดวงจันทร์🤣', '27/09/2023 15:09'),
(56, 33, 6, 'ใครไม่ตำ ส้มตำ😁🤣', '27/09/2023 16:15'),
(57, 34, 4, 'วัดหลวงพ่อโต หรือ วัดโนนกุ่ม วัดสวยแห่ง จังหวัดนครราชสีมาครับ สวยมากๆ', '27/09/2023 16:30'),
(58, 34, 9, 'อยากเที่ยววัด แต่กลัวร้อนทำไงดีคะ', '27/09/2023 16:35'),
(59, 33, 8, 'ส้มตำปูปลาร้า แซ่บบบ', '27/09/2023 16:10'),
(68, 38, 3, '55555555555555555555555555', '28/09/2023 03:09');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `topic_id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `topic_content` longtext NOT NULL,
  `date_time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`topic_id`, `id_user`, `topic`, `topic_content`, `date_time`) VALUES
(33, 6, 'อาหารอีสานที่แซ่บๆ', 'แอดคะ ช่วยแนะนำอาหารที่แซ่บๆหน่อยค่ะ☺️', '27/09/2023 16:09'),
(34, 7, 'วัด', 'พอมีวัดสวยๆแนะนำมั้ยคะ', '27/09/2023 16:09'),
(35, 8, 'คำศัพท์อีสาน', 'เรามารู้จักภาษาอีสานที่ใช้บ่อยๆกัน^_^\r\n\r\nเด้อ แปลว่า นะ\r\n\r\nตาแซบ แปลว่า น่าอร่อย\r\n\r\nมึนตึ้บ แปลว่า งงมาก\r\n\r\nจักหน่อย แปลว่า เล็กน้อย\r\n\r\nลืมคาว แปลว่า หลงลืมชั่วครู่\r\n\r\nตาฮัก แปลว่า น่ารัก\r\n\r\nเอาน้ำไปถอกทิ่ม แปลว่า เอาน้ำไปเททิ้ง\r\n\r\nออนซอนเด๊ แปลว่า ทึ่งมา\r\n\r\nเมิ๊ดปี แปลว่า ทั้งปี\r\n\r\nบัดทีนี้ แปลว่า คราวนี้', '27/09/2023 17:09'),
(36, 10, 'สนามบินในภาคตะวันออกเฉียงเหนือ', '1.  ท่าอากาศยานบุรีรัมย์จังหวัด บุรีรัมย์\r\n\r\n\r\n\r\n2. ท่าอากาศยานขอนแก่นจังหวัด ขอนแก่น\r\n3. ท่าอากาศยานเลยจังหวัด เลย\r\n4. ท่าอากาศยานนครพนมจังหวัด นครพนม\r\n5. ท่าอากาศยานนครราชสีมาจังหวัด นครราชสีมา\r\n6. ท่าอากาศยานร้อยเอ็ดจังหวัด ร้อยเอ็ด\r\n7. ท่าอากาศยานสกลนครจังหวัด สกลนคร\r\n8. ท่าอากาศยานนานาชาติอุบลราชธานีจังหวัด อุบลราชธานี\r\n9. ท่าอากาศยานนานาชาติอุดรธานีจังหวัด อุดรธานี\r\n', '27/09/2023 17:09'),
(38, 10, 'ช่วยด้วยยยยยยย', 'ฟกหฟกฟไกฟไกฟ35ไก153ฟไ1ก531ฟไ35ก13ฟไ51ก35ฟ1ก5ฟ1ก5ฟ04ก53ฟไก', '27/09/2023 22:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `user` varchar(200) NOT NULL,
  `f_name` varchar(200) NOT NULL,
  `l_name` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `user`, `f_name`, `l_name`, `pass`) VALUES
(3, 'root', 'ฐานิต', 'แสงจินดา', '0656076916'),
(4, 'admin', 'ฐานิต', 'l_name', '1234'),
(5, 'admin1', 'MrPONG', 'l_name', '1234'),
(6, 'warapas', 'วราภัสร์', 'l_name', '11111'),
(7, 'noon', 'นงพงา', 'l_name', '1234'),
(8, 'pepe', 'เปเป้', 'l_name', '123456'),
(9, 'som', 'สมศรี', 'l_name', '55555'),
(10, 'suchart', 'สุชาติ', 'l_name', '666666');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `fk_comments_topics` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`topic_id`) ON DELETE CASCADE;

--
-- Constraints for table `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
