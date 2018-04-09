-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 09, 2018 at 02:48 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

DROP TABLE IF EXISTS `tbl_genre`;
CREATE TABLE IF NOT EXISTS `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(125) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Drama'),
(6, 'Historical'),
(7, 'Horror'),
(8, 'Musical'),
(9, 'Science Fiction'),
(10, 'War'),
(11, 'Western'),
(12, 'Animation'),
(13, 'Family'),
(14, 'Fantasy'),
(15, 'Romance'),
(16, 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

DROP TABLE IF EXISTS `tbl_movies`;
CREATE TABLE IF NOT EXISTS `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  `movies_release` varchar(125) NOT NULL,
  PRIMARY KEY (`movies_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`, `movies_trailer`, `movies_release`) VALUES
(36, 'nausicaa.jpg', 'Nausicaa of the Valley of the Wind', '1984', '1h 57m', 'Warrior/pacifist Princess NausicaÃ¤ desperately struggles to prevent two warring nations from destroying themselves and their dying planet.', 'nausicaa.mp4', 'March 11, 1984'),
(38, 'cars3.jpg', 'Cars 3', '2017', '1h 42m', 'Lightning McQueen sets out to prove to a new generation of racers that he\'s still the best race car in the world.', 'cars3.mp4', 'June 16, 2017'),
(39, 'bighero6.jpg', 'Big Hero 6', '2014', '1h 42m', 'The special bond that develops between plus-sized inflatable robot Baymax, and prodigy Hiro Hamada, who team up with a group of friends to form a band of high-tech heroes.', 'bh6.mp4', 'November 7, 2014'),
(40, 'insideout.jpg', 'Inside Out', '2015', '1h 35m', 'After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school.', 'insideout.mp4', 'June 19, 2015'),
(41, 'coco.jpg', 'Coco', '2017', '1h 45m', 'Aspiring musician Miguel, confronted with his family\'s ancestral ban on music, enters the Land of the Dead to find his great-great-grandfather, a legendary singer.', 'coco.mp4', 'November 22, 2017'),
(42, 'whenmarniewasthere.jpg', 'When Marnie Was There', '2014', '1h 43m', 'Upon being sent to live with relatives in the countryside, an emotionally distant adolescent girl becomes obsessed with an abandoned mansion and infatuated with a girl who lives there - a girl who may or may not be real.', 'marnie.mp4', 'July 19, 2014'),
(43, 'moana.jpg', 'Moana', '2016', '1h 47m', 'In Ancient Polynesia, when a terrible curse incurred by the Demigod Maui reaches Moana\'s island, she answers the Ocean\'s call to seek out the Demigod to set things right.', 'moana.mp4', 'November 23, 2016'),
(44, 'ponyo.jpg', 'Ponyo', '2008', '1h 41m', 'A five year-old boy develops a relationship with Ponyo, a goldfish princess who longs to become a human after falling in love with him.', 'ponyo.mp4', 'August 14, 2009'),
(45, 'zootopia.jpg', 'Zootopia', '2016', '1h 48m', 'In a city of anthropomorphic animals, a rookie bunny cop and a cynical con artist fox must work together to uncover a conspiracy.', 'zootopia.mp4', 'March 4, 2016'),
(46, 'summerwars.jpg', 'Summer Wars', '2009', '1h 54m', 'A student tries to fix a problem he accidentally caused in OZ, a digital world, while pretending to be the fiancÃ© of his friend at her grandmother\'s 90th birthday.', 'summerwars.mp4', 'August 1, 2009'),
(47, 'frozen.jpg', 'Frozen', '2013', '1h 42m', 'When the newly-crowned Queen Elsa accidentally uses her power to turn things into ice to curse her home in infinite winter, her sister Anna teams up with a mountain man, his playful reindeer, and a snowman to change the weather condition.', 'frozen.mp4', 'November 27, 2013'),
(48, 'findingnemo.jpg', 'Finding Nemo', '2003', '1h 40m', 'After his son is captured in the Great Barrier Reef and taken to Sydney, a timid clownfish sets out on a journey to bring him home.', 'findingnemo.mp4', 'May 30, 2003'),
(49, 'yourname.jpg', 'Your Name', '2016', '1h 46m', 'Two strangers find themselves linked in a bizarre way. When a connection forms, will distance be the only thing to keep them apart?', 'yourname.mp4', 'April 7, 2017'),
(50, 'turbo.jpg', 'Turbo', '2013', '1h 36m', 'A freak accident might just help an everyday garden snail achieve his biggest dream: winning the Indy 500.', 'turbo.mp4', 'July 17, 2013'),
(51, 'kungfupanda.jpg', 'Kung Fu Panda', '2008', '1h 32m', 'The Dragon Warrior has to clash against the savage Tai Lung as China\'s fate hangs in the balance: However, the Dragon Warrior mantle is supposedly mistaken to be bestowed upon an obese panda who is a tyro in martial arts.', 'kfp.mp4', 'June 6, 2008'),
(52, 'akira.jpg', 'Akira', '1988', '2h 4m', 'A secret military project endangers Neo-Tokyo when it turns a biker gang member into a rampaging psychic psychopath that only two teenagers and a group of psychics can stop.', 'akira.mp4', 'July 16, 1988'),
(53, 'spiritedaway.jpg', 'Spirited Away', '2001', '2h 5m', 'During her family\'s move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.', 'spiritedaway.mp4', 'March 28, 2003'),
(54, 'totoro.jpg', 'My Neighbor Totoro', '1988', '1h 26m', 'When two girls move to the country to be near their ailing mother, they have adventures with the wondrous forest spirits who live nearby.', 'totoro.mp4', 'April 16, 1988'),
(55, 'porcorosso.jpg', 'Porco Rosso', '1992', '1h 34m', 'In 1930s Italy, a veteran World War I pilot is cursed to look like an anthropomorphic pig.', 'porcorosso.mp4', 'July 18, 1992'),
(56, 'princessmonoke.jpg', 'Princess Monoke', '1997', '2h 14m', 'On a journey to find the cure for a Tatarigami\'s curse, Ashitaka finds himself in the middle of a war between the forest gods and Tatara, a mining colony. In this quest he also meets San, the Mononoke Hime.', 'monoke.mp4', 'November 26, 1997'),
(57, 'incredibles.jpg', 'The Incredibles', '2004', '1h 55m', 'A family of undercover superheroes, while trying to live the quiet suburban life, are forced into action to save the world.', 'incredibles.mp4', 'November 5, 2004'),
(58, 'wreckitralph.jpg', 'Wreck-It Ralph', '2012', '1h 41m', 'A video game villain wants to be a hero and sets out to fulfill his dream, but his quest brings havoc to the whole arcade where he lives.', 'wreckitralph.mp4', 'November 2, 2012'),
(59, 'shrek.jpg', 'Shrek', '2001', '1h 30m', 'After his swamp is filled with magical creatures, Shrek agrees to rescue Princess Fiona for a villainous lord in order to get his land back.', 'shrek.mp4', 'May 18, 2001'),
(60, 'onlyyesterday.jpg', 'Only Yesterday', '1991', '1h 58m', 'A twenty-seven-year-old office worker travels to the countryside while reminiscing about her childhood in Tokyo.', 'onlyyesterday.mp4', 'Febraury 26, 2016'),
(61, 'cloudy.jpg', 'Cloudy with a Chance of Meatballs', '2009', '1h 30m', 'A local scientist is often regarded as a failure until he invents a machine that can make food fall from the sky. But little does he know, that things are about to take a turn for the worst.', 'meatballs.mp4', 'September 18, 2009');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

DROP TABLE IF EXISTS `tbl_mov_genre`;
CREATE TABLE IF NOT EXISTS `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(46, 36, 14),
(47, 38, 3),
(48, 39, 1),
(49, 40, 2),
(50, 41, 2),
(51, 42, 5),
(52, 43, 2),
(53, 44, 2),
(54, 45, 2),
(55, 46, 1),
(56, 47, 2),
(57, 48, 2),
(58, 49, 5),
(59, 50, 3),
(60, 51, 1),
(61, 52, 1),
(62, 53, 2),
(63, 54, 13),
(64, 55, 2),
(65, 56, 14),
(66, 57, 1),
(67, 58, 2),
(68, 59, 3),
(69, 60, 5),
(70, 61, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_level` int(10) NOT NULL,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `user_flogin` varchar(10) NOT NULL DEFAULT 'true',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_level`, `user_ip`, `user_flogin`) VALUES
(1, 'Zachary', 'username', 'password', 'zachary.carreon@gmail.com', '2018-02-21 13:00:35', 1, '::1', 'false');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
