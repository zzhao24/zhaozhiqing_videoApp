-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 09, 2018 at 02:32 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vue_video`
--

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
CREATE TABLE IF NOT EXISTS `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vid_name` varchar(45) NOT NULL,
  `vid_path` varchar(60) NOT NULL,
  `vid_desc` varchar(400) NOT NULL,
  `vid_genre` int(11) NOT NULL,
  `vid_thumb` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `vid_name`, `vid_path`, `vid_desc`, `vid_genre`, `vid_thumb`) VALUES
(1, 'Marvel\'s Avengers', 'avengers.mp4', 'generic description', 1, 'avengers.jpg'),
(2, 'Star Wars The Force Awakens', 'forceawakens.mp4', 'some other generic description', 2, 'forceawakens.jpg'),
(3, 'Stranger Things', 'strangerthings.mp4', 'don\'t get caught in the upside down', 3, 'strangerthings.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `video_info`
--

DROP TABLE IF EXISTS `video_info`;
CREATE TABLE IF NOT EXISTS `video_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` int(11) NOT NULL,
  `vid_name` varchar(45) NOT NULL,
  `vid_path` varchar(60) NOT NULL,
  `vid_desc` varchar(400) NOT NULL,
  `vid_genre` int(11) NOT NULL,
  `vid_thumb` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video_info`
--

INSERT INTO `video_info` (`id`, `video_id`, `vid_name`, `vid_path`, `vid_desc`, `vid_genre`, `vid_thumb`) VALUES
(1, 1, 'Marvel\'s Avengers', 'avengers.mp4', 'generic description', 1, 'avengers.jpg'),
(2, 2, 'Star Wars The Force Awakens', 'forceawakens.mp4', 'some other generic description', 2, 'forceawakens.jpg'),
(3, 3, 'Stranger Things', 'strangerthings.mp4', 'don\'t get caught in the upside down', 3, 'strangerthings.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
