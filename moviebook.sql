-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th5 19, 2024 lúc 11:15 AM
-- Phiên bản máy phục vụ: 5.7.31
-- Phiên bản PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `moviebook`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `add_movie`
--

DROP TABLE IF EXISTS `add_movie`;
CREATE TABLE IF NOT EXISTS `add_movie` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(100) NOT NULL,
  `directer` varchar(100) NOT NULL,
  `release_date` varchar(100) NOT NULL,
  `categroy` varchar(100) NOT NULL,
  `language` varchar(100) NOT NULL,
  `you_tube_link` varchar(250) NOT NULL,
  `show` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  `decription` varchar(300) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `add_movie`
--

INSERT INTO `add_movie` (`id`, `movie_name`, `directer`, `release_date`, `categroy`, `language`, `you_tube_link`, `show`, `action`, `decription`, `image`, `status`) VALUES
(9, 'Avengers', 'Kevin Feige', 'April 11, 2012', 'Scince', 'English', 'https://www.youtube.com/embed/eOrNdBpGMv8', '21:00', 'running', '                ', 'aven.jpg', 1),
(10, 'Siêu thú cuồng nộ', 'Brad Peyton', '13 April 2018', 'Adventure ', 'Tiếng Việt', '', '', 'upcoming', '                                Jumanji is a 1995 American fantasy adventure film directed by Joe Johnston from a screenplay by Jonathan Hensleigh, Greg Taylor, and Jim Strain. Loosely based on Chris Van Allsburg\'s picture book of the same name, the film is the first installment of the Jumanji franc', 'rampage.jpg', 1),
(13, 'Chapter 4 - John Wick', 'Chad Stahelski', 'May 27, 2022', 'Action', 'Tiếng Việt', 'https://www.youtube.com/embed/qEVUtrk8_B4', '15:00,18:15', 'running', 'Với cái giá phải trả ngày càng tăng, John Wick tham gia cuộc chiến chống lại High Table trên toàn cầu khi tìm kiếm những người chơi quyền lực nhất trong thế giới ngầm, từ New York qua Paris, Osaka đến cả Berlin.', 'johnwick.webp', 1),
(14, 'Tanaji', 'Om Raut', '10th January 2020.', ' Historical', 'Hindi', 'https://www.youtube.com/embed/cffAGIYTEHU', '18:00,15:15', 'running', '                Gulshan Kumar, T-Series & Ajay Devgn ffilms Presents official trailer of the most awaited bollywood movie TANHAJI -THE UNSUNG WARRIOR in 3D, Directed by Om Raut, will release on 10th January 2020.\r\nTanhaji- The Unsung Warrior is an Indian biographical period drama film based on the l', 'tanaji.jpeg', 1),
(15, 'Playing With Fire ', 'Andrea Sedlackova', '6 November 2019', 'Comedy', 'English', 'https://www.youtube.com/embed/fd5GlZUpfaM', '21:15', 'running', '                Playing with Fire is a 2019 American family comedy film directed by Andy Fickman from a screenplay by Dan Ewen and Matt Lieberman based on a story by Ewen. The film stars John Cena, Keegan-Michael Key, John Leguizamo, Dennis Haysbert, Brianna Hildebrand and Judy Greer, and follows a ', 'movieposter_en.jpg', 1),
(16, 'Golmaal Again', 'Rohit Shetty', '20 October 2017', 'Action', 'Hindi', 'https://www.youtube.com/embed/VgQUwsUHdqc', '', 'upcoming', 'Five orphan men return to the orphanage they grew up in to attend their mentor\'s funeral. However, they encounter the ghost of their childhood friend, Khushi, and help her attain salvation.', 'golmaal_again.jpg', 1),
(17, 'Shreshaah', 'Vishnuvardhan', '12 August 2021', 'Biographical War', 'Hindi', 'https://www.youtube.com/embed/Q0FTXnefVBA', '', 'upcoming', 'The life of Indian army captain Vikram Batra, awarded with the Param Vir Chakra, India\'s highest award for valour for his actions during the 1999 Kargil War.', 'shershah.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(1, 'admin', 'jainmdg@gmail.com', 'admin', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `movie` varchar(100) NOT NULL,
  `show_time` varchar(100) NOT NULL,
  `seat` varchar(100) NOT NULL,
  `totalseat` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `payment_date` varchar(100) NOT NULL,
  `booking_date` varchar(100) NOT NULL,
  `card_name` varchar(100) NOT NULL,
  `card_number` varchar(25) NOT NULL,
  `ex_date` varchar(100) NOT NULL,
  `cvv` int(5) NOT NULL,
  `custemer_id` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `uid`, `movie`, `show_time`, `seat`, `totalseat`, `price`, `payment_date`, `booking_date`, `card_name`, `card_number`, `ex_date`, `cvv`, `custemer_id`) VALUES
(1, 1, 'Chaal Jeevi Laiye', '15:00', 'G1,G2,D1,D2', '4', '500', 'Wed-09-21 ', 'Thu-09-21 ', 'pratik d', '7896', '2021-09-30', 789, 1869901767),
(2, 1, 'Tanaji', '15:15', 'F7,F8,E7,E8,A7,A8', '6', '1200', 'Thu-09-21 ', 'Fri-09-21 ', 'pratik d', '145260', '2021-09-30', 349, 1890244096),
(3, 2, 'Chaal Jeevi Laiye', '15:00', 'I5,I6,H5,H6,G5,G6', '6', '600', 'Thu-09-21 ', 'Fri-09-21 ', 'parthiv', '45456845565', '2021-10-23', 455, 560041981),
(4, 3, 'Chaal Jeevi Laiye', '15:00', 'I7,I8', '2', '200', 'Thu-09-21 ', 'Fri-10-21 ', 'rushabh', '545656', '2021-09-29', 545, 447698228),
(5, 3, 'Chaal Jeevi Laiye', '18:15', 'G9', '1', '100', 'Thu-09-21 ', 'Fri-10-21 ', 'rushabh', '565464', '2021-09-10', 655, 2080652377),
(6, 1, 'Avengers', '21:00', 'I6,H6', '2', '200', 'Sun-05-24 ', 'Mon-05-24 ', '1869901767', '1234', '2024-05-19', 654, 1813990838);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `massage` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `massage`) VALUES
(1, 'pratik', 'prati@gmail.com', 'Inox Theatre is widely use now days.'),
(2, 'parth', 'part@gmail.com', 'You can easily book your Tickets anywhere in city .'),
(3, 'vrushti', 'vrusht@gmail.com', 'you easily choose your sheets.'),
(4, 'yash', 'yas@gmail.com', 'Also customer service is vary good.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theater_show`
--

DROP TABLE IF EXISTS `theater_show`;
CREATE TABLE IF NOT EXISTS `theater_show` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `show` varchar(100) NOT NULL,
  `theater` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `theater_show`
--

INSERT INTO `theater_show` (`id`, `show`, `theater`) VALUES
(1, '21:00', '1'),
(2, '15:00', '1'),
(3, '18:00', '1'),
(4, '18:15', '2'),
(5, '15:15', '2'),
(6, '21:15', '2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(10) NOT NULL,
  `city` varchar(25) NOT NULL,
  `password` varchar(12) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `mobile`, `city`, `password`, `image`) VALUES
(1, 'user1', 'user1@gmail.com', 2147483647, 'HCM', '1234', ''),
(2, 'parthiv', 'parthi@gmail.com', 2147483647, 'WADHWAN', '78963', ''),
(3, 'rushabh', 'rushab@gmail.com', 1198875215, 'joravarnagar', '147852', ''),
(4, 'hetanshi', 'hetansh@gmail.com', 1234567890, 'fggfrg', '0', ''),
(5, 'dharmin', 'dharm@gmail.com', 2147483647, 'surat', 'hitesh', 'eye candy wallpapers 6 by deadpxl.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
