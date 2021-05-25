-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2021 at 05:14 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musicano`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `artist` varchar(200) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `name`, `artist`, `genre`, `artworkPath`, `status`) VALUES
(1, 'Rockstar', '3', 3, 'https://i.scdn.co/image/ab67616d0000b27354e544672baa16145d67612b', 0),
(2, 'Swadesh', '20', 3, 'https://i.scdn.co/image/ab67616d00001e02e63c0ab993ae23b9efa3fe27', 0),
(3, 'Dil Chahta hai', '4', 1, 'https://i.scdn.co/image/ab67616d00001e025da5e18b4f9a33d42e737c21', 0),
(4, 'Fearless', '5', 4, 'pepsi/images/Artwork/Fearless.jpg', 0),
(5, 'Rare', '10', 4, 'pepsi/images/Artwork/rare.jpg', 0),
(6, 'Skechers', '9', 6, 'https://i.scdn.co/image/ab67616d00001e02f59deb41edd108259ab245dc', 0),
(7, 'Lollipop', '9', 6, 'https://i.scdn.co/image/ab67616d00001e024649790efabb78f429250e07', 0),
(8, 'Afterglow', '18', 4, 'https://i.scdn.co/image/ab67616d00001e0288e170d5ced543d191593fc8', 1),
(9, 'Sanam Teri Kasam', '17', 3, 'pepsi/images/Artwork/sanamterikasam.jpg', 0),
(10, 'Yaarr Ni Milyaa', '19', 4, 'pepsi/images/Artwork/yaarrni.jpg', 0),
(11, 'Kaam 25', '12', 6, 'pepsi/images/Artwork/divine.jpg', 0),
(12, 'Kite', '6', 3, 'pepsi/images/Artwork/dilkyun.jpg', 0),
(13, 'Kolaveri D', '16', 3, 'pepsi/images/Artwork/kolaverid.jpg', 0),
(14, 'Kalank', '7', 3, 'pepsi/images/Artwork/kalank.jpg', 0),
(15, 'Aashiqui 2', '7', 3, 'pepsi/images/Artwork/aashique2.jpg', 1),
(16, 'Chhichhore', '7', 3, 'pepsi/images/Artwork/chhichhore.jpg', 1),
(17, 'Laila Majnu', '7', 3, 'pepsi/images/Artwork/Laila Majnu.jpg', 0),
(18, 'Shab', '7', 3, 'pepsi/images/Artwork/osaathi.jpg', 0),
(19, 'Dum Laga Ke Haisha', '25', 3, 'pepsi/images/Artwork/munali.jpg', 1),
(20, 'Badlapur', '1', 3, 'pepsi/images/Artwork/badlapur.jpg', 1),
(21, 'Kedarnath', '7', 4, 'https://i.scdn.co/image/ab67616d0000b2738c72151621d5c60ed768d010', 0),
(22, 'Backbone', '19', 4, 'pepsi/images/Artwork/backbone.jpg', 1),
(23, 'Naah', '19', 4, 'pepsi/images/Artwork/naah.jpg', 0),
(24, 'Gangs of Wasseypur ', '28', 3, 'pepsi/images/Artwork/wasseypur.jpg', 0),
(25, 'Kuch Kuch', '13', 4, 'pepsi/images/Artwork/kuchkuch.jpg', 0),
(26, 'Ludo', '13', 6, 'pepsi/images/Artwork/ludo.jpg', 0),
(27, 'Bandish Bandits', '15', 7, 'pepsi/images/Artwork/bandits.jpg', 1),
(28, 'Guitar Sikhda', '22', 4, 'pepsi/images/Artwork/ghitar.jpg', 0),
(29, 'Humnava Mere', '14', 4, 'pepsi/images/Artwork/humnava.jpg', 0),
(30, 'I Need Ya', '27', 6, 'pepsi/images/Artwork/needya.jpg', 0),
(31, 'Coca Cola', '13', 6, 'pepsi/images/Artwork/coca.jpg', 0),
(32, 'Asal Mein', '24', 4, 'pepsi/images/Artwork/asalmein.jpg', 1),
(33, 'Ludo', '1', 4, 'pepsi/images/Artwork/ludoNetflix.jpg', 0),
(34, 'Judaiyaan ', '24', 4, 'pepsi/images/Artwork/judaiyaan.jpg', 0),
(35, 'Keh Do Na', '31', 4, 'pepsi/images/Artwork/kehdona.jpg', 0),
(36, 'Luka Chuppi', '7', 4, 'pepsi/images/Artwork/lukachuppi.jpg', 0),
(37, 'Closer', '34', 4, 'pepsi/images/Artwork/closer.jpg', 0),
(38, 'Sanam', '35', 4, 'pepsi/images/Artwork/sanam.jpg', 0),
(39, 'Taaron Ke Shehar', '23', 3, 'pepsi/images/Artwork/taaronkeshehar.jpg', 0),
(40, 'Lover', '5', 4, 'pepsi/images/Artwork/lover.jpg', 0),
(41, 'Titliaan Warga', '19', 4, 'pepsi/images/Artwork/Titliaan-Warga.jpg', 0),
(42, 'Vida', '36', 4, 'pepsi/images/Artwork/despacito.jpg', 0),
(43, 'Dil Bechara', '20', 4, 'https://i.scdn.co/image/ab67616d0000b273f3582107f127c2765fafb431', 0),
(44, 'Tere Naam', '8', 4, 'pepsi/images/Artwork/Tere Naam.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `artistPic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `artistPic`) VALUES
(1, 'Various Artists', 'pepsi/images/Artpic/rockstar.jpg'),
(2, 'A.R. Rahman, Javed Ali, Mohit Chauhan', 'https://i.scdn.co/image/75ece8a064f5775053b4e5c7a529f3d291b784a6'),
(3, 'Mohit Chauhan', 'https://img.wynk.in/unsafe/275x275/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/artists/profile/5a8ea2192951624319d6c06a.jpg'),
(4, 'Sonu Nigam', 'https://i.scdn.co/image/f6105885dc1a117cad0b8ce508d1b233bf4319ca'),
(5, 'Taylor Swift', 'https://i.scdn.co/image/3c5d5f324e0a7fc40b8dbb4b6cee181ca4434113'),
(6, 'K.K', 'https://i.scdn.co/image/39a58763522b3619c53eeb748a6013ac4ae8099b'),
(7, 'Arijit Singh', 'https://i.scdn.co/image/eb81a98108c42b4332944336a9acc017d8d89dca'),
(8, 'Udit Narayan', 'https://i.scdn.co/image/de3f1a1e822bde76e4b2758f3d60a95ad395a554'),
(9, 'Badshah', 'https://img.wynk.in/unsafe/275x275/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/artists/profile/5a8eb8ea2951624319d6c570.jpg'),
(10, 'Selena Gomez', 'https://i.scdn.co/image/23599ccde17c3c67df1df9d4c3ea29154b1cad85'),
(11, 'Jasmine Sandals, Garry Sandhu', 'https://i.scdn.co/image/d58952677a564bfca321f9e9276d540abe0cb689'),
(12, 'Divine', 'https://i.scdn.co/image/341d106d6c58bfb7c6e475bbabca75402fddf6de'),
(13, 'Tony Kakkar', 'https://img.wynk.in/unsafe/275x275/filters:no_upscale():format(webp)/https://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/artists/profile/5bb480062951620c9cc29857.png'),
(14, 'Jubin Nutiyal', 'https://i.scdn.co/image/98961bdd69353c5257d64acee37451987f26fbb1'),
(15, 'Shankar-Ehssan-Loy', 'https://i.scdn.co/image/90cac64cffc9a28673e84812ec1c13d065b0ae63'),
(16, 'Dhanush', 'https://img.wynk.in/unsafe/275x275/filters:no_upscale():format(webp)/http://akamai-b.cdn.cddbp.net/cds/2.0/image/8022/8473/1986/D469_xlarge_front.jpg'),
(17, 'Ankit Tiwary', 'https://i.scdn.co/image/9545b9149937330aee1dac5c194778c3892b20ad'),
(18, 'Ed sheeran', 'https://i.scdn.co/image/ebe13258cf525b7399ea1b34a25d38172b3023a1'),
(19, 'Hardy Sandhu', 'https://i.scdn.co/image/f13c14afbc4d6e82d6915330d681534e93a67efa'),
(20, 'A.R. Rahman', 'https://i.scdn.co/image/4df9740f3f6bfcc28e9c8c57ecf4c7eda4a2e42b'),
(21, 'Atif Aslam', 'https://i.scdn.co/image/ec4f27f66843eae674f97c96b30ec6d58d1766e3'),
(22, 'Jassi Gill', 'https://i.scdn.co/image/340ab2027c3bb690848af0ae309cbf57a537c140'),
(23, 'Neha kakkar', 'https://i.scdn.co/image/d9cf81f26581c55c3ef9aba1acc1332ee915c30a'),
(24, 'Darshan Raval', 'https://i.scdn.co/image/cd046f7bd837f78b7cd84a5a0288b1668d64a739'),
(25, 'Monali Thakur', 'https://i.scdn.co/image/5b879275a3628b38084c798a76bf9b6f48fbde5a'),
(26, 'Sanam Puri', 'https://i.scdn.co/image/79fdcdb1db7a5630569973281d76dd63579a2242'),
(27, 'Sukh-E', 'https://img.wynk.in/unsafe/180x180/filters:no_upscale():format(webp)/https://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/package/Sukhe_300.jpg'),
(28, 'Manoj Tiwari', 'https://img.wynk.in/unsafe/275x275/filters:no_upscale():format(webp)/https://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/artists/profile/5e54e1e29f2b8d0ef33214eb.jpg'),
(30, 'Vedesh Sookoo, Shyamoo, Rajneesh, Munna', 'https://img.wynk.in/unsafe/275x275/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/artist_logos/jpgs/vs_5.jpg'),
(31, 'Rahul Vidya', 'https://i.scdn.co/image/ab67616d00001e0207a96457aa0e73e31556b388'),
(32, 'Karan Sehmbi, Tanishk Bagchi', 'https://i.scdn.co/image/68238098d34c81f417a0262f315bb24fe7c92809'),
(33, 'Akhil, Dhvani Bhanushali', 'https://i.scdn.co/image/87cbdcd6a51ba842ab99da4066c6bf5a9a1552bf'),
(34, 'The Chainsmokers', 'https://img.wynk.in/unsafe/275x275/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/artists/profile/5a8e70f52951624319d6ba89.png'),
(35, 'Sanam', 'https://i.scdn.co/image/ab67616d0000b273aa7816334c00cfe0b62cc9ed'),
(36, 'Luis Fonsi', 'https://img.wynk.in/unsafe/275x275/filters:no_upscale():format(webp)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/artists/profile/5afaa72f295162088f144d9c.png'),
(37, 'Jonita Gandhi , Hriday Gattani', 'https://i.scdn.co/image/a7ec7ad8495d810b77375820611bb2fc0448fca1'),
(38, 'Kim Kyoung Hee', 'https://i.scdn.co/image/5b879275a3628b38084c798a76bf9b6f48fbde5a');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dataCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `dataCreated`) VALUES
(6, 'Queens', 'Lancer', '2021-02-15 00:00:00'),
(7, 'Kings', 'Lancer', '2021-02-16 00:00:00'),
(8, 'Son-Ye-Jin', 'Lancer', '2021-02-16 00:00:00'),
(9, 'Queens', 'QUEEN', '2021-02-16 00:00:00'),
(11, 'Chai-Soo-bin', 'SONYEE', '2021-02-18 00:00:00'),
(12, 'Dank', 'SONYEE', '2021-03-04 00:00:00'),
(13, 'Sparrow', 'VivekP', '2021-04-02 00:00:00'),
(15, 'IRON MAN', 'AVENGER', '2021-04-17 00:00:00'),
(16, 'SPIDER MAN', 'AVENGER', '2021-04-18 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `playlistsongs`
--

CREATE TABLE `playlistsongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playlistsongs`
--

INSERT INTO `playlistsongs` (`id`, `songId`, `playlistId`, `playlistOrder`) VALUES
(3, 11, 6, 0),
(5, 3, 6, 1),
(6, 21, 6, 2),
(7, 17, 6, 3),
(8, 16, 7, 1),
(11, 48, 6, 5),
(12, 16, 6, 6),
(14, 31, 8, 0),
(15, 6, 7, 4),
(16, 6, 8, 1),
(18, 59, 8, 3),
(19, 37, 9, 0),
(20, 36, 9, 1),
(24, 59, 11, 1),
(25, 7, 11, 2),
(27, 12, 7, 5),
(28, 59, 8, 4),
(29, 2, 11, 3),
(31, 7, 12, 1),
(32, 73, 12, 2),
(33, 62, 12, 3),
(34, 17, 12, 4),
(35, 46, 12, 5),
(36, 37, 12, 6),
(37, 18, 12, 7),
(38, 77, 7, 6),
(41, 34, 13, 1),
(42, 60, 13, 2),
(43, 74, 13, 3),
(44, 59, 13, 4),
(45, 36, 13, 5),
(47, 28, 6, 7),
(48, 74, 15, 0),
(49, 62, 15, 1),
(50, 2, 15, 2),
(51, 7, 7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `artist` int(10) NOT NULL,
  `album` int(10) NOT NULL,
  `genre` int(10) NOT NULL,
  `duration` varchar(10) NOT NULL,
  `path` varchar(200) NOT NULL,
  `albumOrder` varchar(200) NOT NULL,
  `plays` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Bhula Dena', 7, 15, 3, '4:00', 'pepsi/music/BhulaDena.mp3', '1', 15),
(2, 'Jeena Jeena', 21, 20, 3, '3:49', 'pepsi/music/Jeena Jeena.mp3', '2', 11),
(3, 'Kaam 25', 12, 11, 6, '2:29 ', 'pepsi/music/Kaam 25 - Divine.mp3', '3', 5),
(5, 'Kalank', 7, 14, 3, '5:11', 'pepsi/music/Kalank.mp3', '3', 9),
(6, 'O Saathi', 7, 18, 3, '4:48', 'pepsi/music/O Saathi.mp3', '4', 15),
(7, 'Qaafirana', 7, 21, 4, '5:41 ', 'pepsi/music/Qaafirana - Kedarnath.mp3', '5', 12),
(8, 'Aahista', 7, 17, 4, '5:20', 'pepsi/music/Aahista - Laila Majnu.mp3', '1', 12),
(9, 'Backbone', 19, 22, 4, ' 2:55', 'pepsi/music/Backbone.mp3', '2', 11),
(10, 'Naah', 19, 23, 4, '3:10 ', 'pepsi/music/Naah.mp3', '3', 11),
(11, 'Yaarr Ni Milyaa', 19, 10, 4, '5:10', 'pepsi/music/Yaarr Ni Milyaa.mp3', '4', 12),
(12, 'Zindagi Do Pal Ki', 6, 12, 3, '4:16', 'pepsi/music/Zindagi Do Pal Ki.mp3', '5', 14),
(13, 'Dil Kyun Yeh Mera', 6, 12, 3, '5:35 ', 'pepsi/music/Dil Kyun Yeh Mera.mp3', '5', 11),
(14, 'Kal Ki Hi Baat Hai', 6, 16, 3, '4:00', 'pepsi/music/Kal Ki Hi Baat Hai.mp3', '2', 4),
(15, 'Afterglow', 18, 8, 4, '3:18 ', 'pepsi/music/Afterglow.mp3', '1', 10),
(16, 'Lose You To Love Me', 10, 5, 4, '3:18', 'pepsi/music/Lose You To Love Me-Selena Gomez.mp3', '3', 9),
(17, 'You Belong With Me', 5, 4, 4, '3:51', 'pepsi/music/You_Belong_With_Me.mp3', '4', 22),
(18, 'Jo Bhi Main', 3, 1, 4, '4:35', 'pepsi/music/Jo Bhi Main.mp3', '1', 28),
(19, 'Nadaan Parinde', 2, 1, 4, '6:26', 'pepsi/music/Nadaan Parinde.mp3', '1', 17),
(20, 'Tum Ho', 3, 1, 3, '5:18', 'pepsi/music/Tum Ho.mp3', '1', 17),
(21, 'Kun Faya Kun', 2, 1, 3, '7:53', 'pepsi/music/Kun Faya Kun.mp3', '1', 14),
(22, 'Lollipop - Badshah', 9, 7, 6, '3:01', 'pepsi/music/Lollipop - Badshah.mp3', '2', 2),
(23, 'Skechers', 9, 6, 6, '2:43', 'pepsi/music/Skechers.mp3', '3', 4),
(24, 'Tan hai', 4, 3, 3, '6:11 ', 'pepsi/music/Tanhai.mp3', '4', 16),
(25, 'Jiya Tu', 28, 24, 3, '5:19', 'pepsi/music/Jiya Tu.mp3', '5', 9),
(26, 'Kuch Kuch', 13, 25, 4, '2:48 ', 'pepsi/music/Kuch Kuch - Tony Kakkar.mp3', '1', 4),
(27, 'Ludo', 13, 26, 6, '2:58', 'pepsi/music/Ludo - Tony Kakkar.mp3', '1', 3),
(28, 'Sanam Teri Kasam', 17, 9, 3, '5:13', 'pepsi/music/Sanam Teri Kasam.mp3', '2', 6),
(29, 'Virah', 15, 27, 7, '3:00', 'pepsi/music/Virah.mp3', '3', 15),
(30, 'Why This Kolaveri Di', 16, 13, 4, '4:19', 'pepsi/music/Why This Kolaveri Di.mp3', ' 4', 9),
(31, 'Moh-Moh-Ke-Dhaage', 25, 19, 3, '5:22', 'pepsi/music/Moh-Moh-Ke-Dhaage.mp3', '5', 9),
(32, 'Guitar Sikhda', 22, 28, 4, '3:09', 'pepsi/music/Guitar Sikhda.mp3', '1', 5),
(33, 'Humnava Mere', 14, 29, 4, '5:29 ', 'pepsi/music/Humnava Mere - Jubin Nautiyal.mp3', '2', 4),
(34, 'I Need Ya', 27, 30, 6, ' 3:26 ', 'pepsi/music/I Need Ya - SukhE.mp3', ' 3', 10),
(35, 'Coca cola', 13, 31, 6, '3:12', 'pepsi/music/Coca Cola Tu Ft Young Desi - Tony Kakkar (DJJOhAL.Com).mp3', '4', 7),
(36, 'Yeh Jo Des Hai Tera', 20, 2, 3, ' 6:31', ' pepsi/music/Yeh Jo Des Hai Tera.mp3', '5', 29),
(37, 'Yun Hi Chala Chala', 20, 2, 3, '7:27', ' pepsi/music/Yun Hi Chala Chala.mp3', '5', 11),
(38, 'Asal Mein', 24, 32, 4, ' 3:44', ' pepsi/music/Asal Mein - Darshan Raval.mp3', ' 1', 6),
(39, 'Aabaad Barbaad', 7, 33, 4, ' 5:09', ' pepsi/music/Aabaad Barbaad - Arijit Singh.mp3', '1', 14),
(40, 'Hardum Humdum', 7, 33, 4, ' 3:08', ' pepsi/music/Hardum Humdum - Arijit Singh.mp3', '1', 14),
(42, 'Meri Tum Ho ', 14, 33, 4, ' 3:33', 'pepsi/music/Meri Tum Ho Unplugged - Ludo.mp3 ', '2', 1),
(43, 'Main Kisi Aur Ka', 24, 34, 4, ' 4:27', 'pepsi/music/Main Kisi Aur Ka - Darshan Raval.mp3', '2', 1),
(44, 'Milne Hai Mujhse Aayi', 7, 15, 4, '4:55 ', 'pepsi/music/Milne Hai Mujhse Aayi.mp3 ', '3', 44),
(45, 'Khairiyat Sad', 7, 16, 4, ' 4:40', 'pepsi/music/Khairiyat Sad - Chhichhore.mp3 ', '3', 11),
(46, 'Chahun Main Ya Naa', 7, 15, 4, ' 5:04', 'pepsi/music/Chahun Main Ya Naa.mp3', '4', 14),
(47, 'Keh Do Na', 31, 35, 4, ' 3:53', 'pepsi/music/Keh Do Na.mp3', '4', 6),
(48, 'Sajan Bin', 15, 27, 4, ' 3:14', 'pepsi/music/01 - Sajan Bin - DownloadMing.ME.mp3', '5', 14),
(49, 'Chedkhaniyaan', 15, 27, 4, '3:18', 'pepsi/music/02 - Chedkhaniyaan - DownloadMing.ME.mp3', '6', 13),
(50, 'Dhara Hogi', 15, 27, 4, '4:22', 'pepsi/music/06 - Dhara Hogi - DownloadMing.ME.mp3', '6', 6),
(51, 'Garaj Garaj', 15, 27, 4, '5:31', ' pepsi/music/07 - Garaj Garaj Jugalbandi - DownloadMing.ME.mp3 ', '7', 9),
(52, 'Duniyaa', 7, 36, 4, ' 3:42', 'pepsi/music/Duniyaa - Luka Chuppi.mp3', '8', 15),
(53, 'Photo', 33, 36, 4, '2:57', 'pepsi/music/Photo - Luka Chuppi.mp3', '8', 6),
(54, 'Closer', 34, 37, 4, '4:08', 'pepsi/music/The Chainsmokers - Closer ft. Halsey (Closer).mp3', '9', 6),
(55, 'Ek Pyar Ka Nagma', 35, 38, 4, ' 4:47', 'pepsi/music/Ek Pyar Ka Nagma - Sanam.mp3', '1', 19),
(56, 'Humein Tumse Pyaar Kitna', 35, 38, 4, '3:07', 'pepsi/music/Humein Tumse Pyaar Kitna - SANAM.mp3', '2', 3),
(57, 'Kahin Door', 35, 38, 4, ' 3:34', 'pepsi/music/Kahin Door - Sanam Puri.mp3', '3', 7),
(58, 'Taaron Ke Shehar', 23, 39, 3, '3:50', 'pepsi/music/Taaron Ke Shehar.mp3', '4', 9),
(59, 'Titliaan Warga', 19, 41, 4, ' 3:48', 'pepsi/music/01 - Titliaan Warga - Harrdy Sandhu (320 Kbps).mp3', '5', 24),
(60, 'Lover', 5, 40, 4, '3:58', 'pepsi/music/Taylor Swift - Lover.mp3', '1', 15),
(61, 'I Think He Knows', 5, 40, 4, ' 2:55', 'pepsi/music/Taylor Swift - I Think He Knows.mp3', '2', 13),
(62, 'Love Story', 5, 4, 4, '3:56', 'pepsi/music/Love Story.mp3 ', '3', 23),
(63, 'Rare', 10, 5, 4, '3:43', 'pepsi/music/Selena Gomez - Rare.mp3', '4', 10),
(64, 'Despacito', 36, 42, 4, ' 2:27', 'pepsi/music/Despacito.mp3', '5', 13),
(65, 'Ik Bagal', 28, 24, 3, '5:28', 'pepsi/music/Ik Bagal.mp3', '5', 9),
(66, 'Friendzone', 20, 43, 4, '3:07', 'pepsi/music/Friendzone - Dil Bechara.mp3', '1', 7),
(67, 'Dil Bechara', 20, 43, 4, ' 2:43', 'pepsi/music/Dil Bechara - Title Song.mp3', '2', 11),
(68, 'Khulke Jeene Ka', 7, 43, 4, '4:06', 'pepsi/music/Khulke Jeene Ka - Dil Bechara.mp3 ', '3', 20),
(69, 'Taare Ginn', 3, 43, 4, '3:43', 'pepsi/music/Taare Ginn - Dil Bechara.mp3', '4', 7),
(70, 'Main Tumhara', 37, 43, 4, ' 4:18', 'pepsi/music/Main Tumhara - Dil Bechara.mp3', '5', 5),
(71, 'Hunter', 28, 24, 3, '4:16', 'pepsi/music/Hunter.mp3', '5', 9),
(72, 'Tere Naam', 8, 44, 3, ' 6:34', ' pepsi/music/Tere Naam.mp3', '1', 16),
(73, 'Kyo Kisi Ko', 8, 44, 3, ' 5:36', ' pepsi/music/Kyun Kissi Ko Wafa Ke Badlay.mp3', '2', 14),
(74, 'August - Taylor Swift', 5, 45, 3, '4:21', ' pepsi/music/August - Taylor Swift.mp3', '1', 9),
(75, 'Cardigan - Taylor Swift', 5, 45, 3, '3:59', ' pepsi/music/Cardigan - Taylor Swift.mp3', '1', 15),
(76, 'Exile Ft. Bon Iver', 5, 45, 3, '4:45', ' pepsi/music/Exile Ft. Bon Iver - Taylor Swift.mp3', '2', 14),
(77, 'Mad Woman', 5, 45, 3, '3:57', ' pepsi/music/Mad Woman - Taylor Swift.mp3', '1', 9);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'Lancer', 'Lancer', 'Rick', 'Lancerrick432@gmail.com', '7bdc2332966f3e31d57ea671d404aa22', '2021-01-23 00:00:00', 'pepsi/images/profile-pics/shake.png'),
(2, 'FUNG', 'Qubec', 'Funk', 'Funkqubeck1243@231gmail.com', '0c9d63035ca102b27fe706eba57375f0', '2021-01-28 00:00:00', 'pepsi/images/profile-pics/shake.png'),
(6, 'vivek', 'Viv', 'Pandit', 'Panditvivek@gamil.com', '002e912615e056af3fd44f718529f25a', '2021-04-16 00:00:00', 'pepsi/images/profile-pics/shake.png'),
(7, 'AVENGER', 'Falkan', 'Wintersoldier', 'Falkansam4732@gmail.com', 'e8fc823860bd6d71fd778958b17b224c', '2021-04-17 00:00:00', 'pepsi/images/profile-pics/shake.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
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
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
