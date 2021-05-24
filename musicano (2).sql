-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2021 at 03:05 PM
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
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `artist` varchar(200) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Rockstar', '1', 3, 'https://i.scdn.co/image/ab67616d0000b27354e544672baa16145d67612b'),
(2, 'Swadesh', '20', 3, 'https://i.scdn.co/image/ab67616d00001e02e63c0ab993ae23b9efa3fe27'),
(3, 'Dil Chahta hai', '4', 1, 'https://i.scdn.co/image/ab67616d00001e025da5e18b4f9a33d42e737c21'),
(4, 'Fearless', '5', 4, 'pepsi/images/Artwork/Fearless.jpg'),
(5, 'Rare', '10', 4, 'pepsi/images/Artwork/rare.jpg'),
(6, 'Skechers', '9', 6, 'https://i.scdn.co/image/ab67616d00001e02f59deb41edd108259ab245dc'),
(7, 'Lollipop', '9', 6, 'https://i.scdn.co/image/ab67616d00001e024649790efabb78f429250e07'),
(8, 'Afterglow', '18', 4, 'https://i.scdn.co/image/ab67616d00001e0288e170d5ced543d191593fc8'),
(9, 'Sanam Teri Kasam', '17', 3, 'pepsi/images/Artwork/sanamterikasam.jpg'),
(10, 'Yaarr Ni Milyaa', '19', 4, 'pepsi/images/Artwork/yaarrni.jpg'),
(11, 'Kaam 25', '12', 6, 'pepsi/images/Artwork/divine.jpg'),
(12, 'Kite', '6', 3, 'pepsi/images/Artwork/dilkyun.jpg'),
(13, 'Kolaveri D', '16', 3, 'pepsi/images/Artwork/kolaverid.jpg'),
(14, 'Kalank', '7', 3, 'pepsi/images/Artwork/kalank.jpg'),
(15, 'Aashiqui 2', '7', 3, 'pepsi/images/Artwork/aashique2.jpg'),
(16, 'Chhichhore', '7', 3, 'pepsi/images/Artwork/chhichhore.jpg'),
(17, 'Laila Majnu', '7', 3, 'pepsi/images/Artwork/Laila Majnu.jpg'),
(18, 'Shab', '7', 3, 'pepsi/images/Artwork/osaathi.jpg'),
(19, 'Dum Laga Ke Haisha', '25', 3, 'pepsi/images/Artwork/munali.jpg'),
(20, 'Badlapur', '1', 3, 'pepsi/images/Artwork/badlapur.jpg'),
(21, 'Kedarnath', '7', 4, 'https://i.scdn.co/image/ab67616d0000b2738c72151621d5c60ed768d010'),
(22, 'Backbone', '19', 4, 'pepsi/images/Artwork/backbone.jpg'),
(23, 'Naah', '19', 4, 'pepsi/images/Artwork/naah.jpg'),
(24, 'Gangs of Wasseypur ', '1', 3, 'pepsi/images/Artwork/wasseypur.jpg'),
(25, 'Kuch Kuch', '13', 4, 'pepsi/images/Artwork/kuchkuch.jpg'),
(26, 'Ludo', '13', 6, 'pepsi/images/Artwork/ludo.jpg'),
(27, 'Bandish Bandits', '15', 7, 'pepsi/images/Artwork/bandits.jpg'),
(28, 'Guitar Sikhda', '22', 4, 'pepsi/images/Artwork/ghitar.jpg'),
(29, 'Humnava Mere', '14', 4, 'pepsi/images/Artwork/humnava.jpg'),
(30, 'I Need Ya', '27', 6, 'pepsi/images/Artwork/needya.jpg'),
(31, 'Coca Cola', '13', 6, 'pepsi/images/Artwork/coca.jpg'),
(32, 'Asal Mein', '24', 4, 'pepsi/images/Artwork/asalmein.jpg'),
(33, 'Ludo', '1', 4, 'pepsi/images/Artwork/ludoNetflix.jpg'),
(34, 'Judaiyaan ', '24', 4, 'pepsi/images/Artwork/judaiyaan.jpg'),
(35, 'Keh Do Na', '31', 4, 'pepsi/images/Artwork/kehdona.jpg'),
(36, 'Luka Chuppi', '7', 4, 'pepsi/images/Artwork/lukachuppi.jpg'),
(37, 'Closer', '34', 4, 'pepsi/images/Artwork/closer.jpg'),
(38, 'Sanam', '35', 4, 'pepsi/images/Artwork/sanam.jpg'),
(39, 'Taaron Ke Shehar', '23', 3, 'pepsi/images/Artwork/taaronkeshehar.jpg'),
(40, 'Lover', '5', 4, 'pepsi/images/Artwork/lover.jpg'),
(41, 'Titliaan Warga', '19', 4, 'pepsi/images/Artwork/Titliaan-Warga.jpg'),
(42, 'Vida', '36', 4, 'pepsi/images/Artwork/despacito.jpg'),
(43, 'Dil Bechara', '20', 4, 'https://i.scdn.co/image/ab67616d0000b273f3582107f127c2765fafb431'),
(44, 'Tere Naam', '8', 4, 'pepsi/images/Artwork/Tere Naam.jpg');

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
(2, 'A.R. Rahman, Javed Ali, Mohit Chauhan', 'pepsi/images/Artpic/rockstar.jpg'),
(3, 'Mohit Chauhan', 'https://i.scdn.co/image/d2b81cd48bbaf55517efffd6ccf4dae2687f9dfb'),
(4, 'Sonu Nigam', 'pepsi/images/Artpic/rockstar.jpg\r\n'),
(5, 'Taylor Swift', 'https://i.scdn.co/image/3c5d5f324e0a7fc40b8dbb4b6cee181ca4434113'),
(6, 'K.K', 'pepsi/images/Artpic/rockstar.jpg\r\n'),
(7, 'Arijit Singh', 'pepsi/images/Artpic/arjitsingh.jpg\r\n'),
(8, 'Udit Narayan', 'pepsi/images/Artpic/rockstar.jpg\r\n'),
(9, 'Badshah', 'pepsi/images/Artpic/rockstar.jpg\r\n'),
(10, 'Selena Gomez', 'pepsi/images/Artpic/rockstar.jpg\r\n'),
(11, 'Jasmine Sandals, Garry Sandhu', 'pepsi/images/Artpic/rockstar.jpg\r\n'),
(12, 'Divine', 'pepsi/images/Artpic/rockstar.jpg\r\n'),
(13, 'Tony Kakkar', 'pepsi/images/Artpic/rockstar.jpg\r\n'),
(14, 'Jubin Nutiyal', 'pepsi/images/Artpic/rockstar.jpg\r\n'),
(15, 'Shankar-Ehssan-Loy', 'pepsi/images/Artpic/rockstar.jpg\r\n'),
(16, 'Dhanush', 'pepsi/images/Artpic/rockstar.jpg\r\n'),
(17, 'Ankit Tiwary', 'pepsi/images/Artpic/rockstar.jpg\r\n'),
(18, 'Ed sheeran', 'pepsi/images/Artpic/rockstar.jpg\r\n'),
(19, 'Hardy Sandhu', 'pepsi/images/Artpic/rockstar.jpg\r\n'),
(20, 'A.R. Rahman', 'https://i.scdn.co/image/4df9740f3f6bfcc28e9c8c57ecf4c7eda4a2e42b'),
(21, 'Atif Aslam', 'pepsi/images/Artpic/rockstar.jpg\r\n'),
(22, 'Jassi Gill', 'pepsi/images/Artpic/rockstar.jpg\r\n'),
(23, 'Neha kakkar', 'pepsi/images/Artpic/rockstar.jpg\r\n'),
(24, 'Darshan Raval', 'pepsi/images/Artpic/rockstar.jpg\r\n'),
(25, 'Monali Thakur', 'pepsi/images/Artpic/rockstar.jpg\r\n'),
(26, 'Sanam Puri', 'pepsi/images/Artpic/rockstar.jpg\r\n'),
(27, 'Sukhi', 'pepsi/images/Artpic/rockstar.jpg\r\n'),
(28, 'Manoj Tiwari', 'pepsi/images/Artpic/rockstar.jpg\r\n'),
(29, 'Shilpa Rao', 'pepsi/images/Artpic/rockstar.jpg'),
(30, 'Vedesh Sookoo, Shyamoo, Rajneesh, Munna', 'pepsi/images/Artpic/rockstar.jpg'),
(31, 'Rahul Vidya', 'pepsi/images/Artpic/rockstar.jpg\r\n'),
(32, 'Karan Sehmbi, Tanishk Bagchi', 'pepsi/images/Artpic/rockstar.jpg\r\n'),
(33, 'Akhil, Dhvani Bhanushali', 'pepsi/images/Artpic/rockstar.jpg\r\n'),
(34, 'The Chainsmokers', 'pepsi/images/Artpic/rockstar.jpg'),
(35, 'Sanam', 'pepsi/images/Artpic/rockstar.jpg'),
(36, 'Luis Fonsi', 'pepsi/images/Artpic/rockstar.jpg\r\n'),
(37, 'Jonita Gandhi , Hriday Gattani', 'pepsi/images/Artpic/rockstar.jpg\r\n');

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
(1, 'My playlist', 'Lancer', '2021-02-12 00:00:00');

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
(1, 'Bhula Dena', 7, 15, 3, '4:00', 'pepsi/music/BhulaDena.mp3', '1', 8),
(2, 'Jeena Jeena', 21, 20, 3, '3:49', 'pepsi/music/Jeena Jeena.mp3', '2', 2),
(3, 'Kaam 25', 12, 11, 6, '2:29 ', 'pepsi/music/Kaam 25 - Divine.mp3', '3', 1),
(4, 'Judaai', 7, 20, 3, '4:31', 'pepsi/music/Judaai - Badlapur.mp3', '2', 4),
(5, 'Kalank', 7, 14, 3, '5:11', 'pepsi/music/Kalank.mp3', '3', 2),
(6, 'O Saathi', 7, 18, 3, '4:48', 'pepsi/music/O Saathi.mp3', '4', 5),
(7, 'Qaafirana', 7, 21, 4, '5:41 ', 'pepsi/music/Qaafirana - Kedarnath.mp3', '5', 3),
(8, 'Aahista', 7, 17, 4, '5:20', 'pepsi/music/Aahista - Laila Majnu.mp3', '1', 5),
(9, 'Backbone', 19, 22, 4, ' 2:55', 'pepsi/music/Backbone.mp3', '2', 4),
(10, 'Naah', 19, 23, 4, '3:10 ', 'pepsi/music/Naah.mp3', '3', 7),
(11, 'Yaarr Ni Milyaa', 19, 10, 4, '5:10', 'pepsi/music/Yaarr Ni Milyaa.mp3', '4', 5),
(12, 'Zindagi Do Pal Ki', 6, 12, 3, '4:16', 'pepsi/music/Zindagi Do Pal Ki.mp3', '5', 5),
(13, 'Dil Kyun Yeh Mera', 6, 12, 3, '5:35 ', 'pepsi/music/Dil Kyun Yeh Mera.mp3', '5', 3),
(14, 'Kal Ki Hi Baat Hai', 6, 16, 3, '4:00', 'pepsi/music/Kal Ki Hi Baat Hai.mp3', '2', 3),
(15, 'Afterglow', 18, 8, 4, '3:18 ', 'pepsi/music/Afterglow.mp3', '1', 3),
(16, 'Lose You To Love Me', 10, 5, 4, '3:18', 'pepsi/music/Lose You To Love Me-Selena Gomez.mp3', '3', 3),
(17, 'You Belong With Me', 5, 4, 4, '3:51', 'pepsi/music/You_Belong_With_Me.mp3', '4', 14),
(18, 'Jo Bhi Main', 3, 1, 4, '4:35', 'pepsi/music/Jo Bhi Main.mp3', '1', 5),
(19, 'Nadaan Parinde', 2, 1, 4, '6:26', 'pepsi/music/Nadaan Parinde.mp3', '1', 8),
(20, 'Tum Ho', 3, 1, 3, '5:18', 'pepsi/music/Tum Ho.mp3', '1', 2),
(21, 'Kun Faya Kun', 2, 1, 3, '7:53', 'pepsi/music/Kun Faya Kun.mp3', '1', 5),
(22, 'Lollipop - Badshah', 9, 7, 6, '3:01', 'pepsi/music/Lollipop - Badshah.mp3', '2', 2),
(23, 'Skechers', 9, 6, 6, '2:43', 'pepsi/music/Skechers.mp3', '3', 4),
(24, 'Tan hai', 4, 3, 3, '6:11 ', 'pepsi/music/Tanhai.mp3', '4', 8),
(25, 'Jiya Tu', 28, 24, 3, '5:19', 'pepsi/music/Jiya Tu.mp3', '5', 5),
(26, 'Kuch Kuch', 13, 25, 4, '2:48 ', 'pepsi/music/Kuch Kuch - Tony Kakkar.mp3', '1', 2),
(27, 'Ludo', 13, 26, 6, '2:58', 'pepsi/music/Ludo - Tony Kakkar.mp3', '1', 1),
(28, 'Sanam Teri Kasam', 17, 9, 3, '5:13', 'pepsi/music/Sanam Teri Kasam.mp3', '2', 4),
(29, 'Virah', 15, 27, 7, '3:00', 'pepsi/music/Virah.mp3', '3', 3),
(30, 'Why This Kolaveri Di', 16, 13, 4, '4:19', 'pepsi/music/Why This Kolaveri Di.mp3', ' 4', 7),
(31, 'Moh-Moh-Ke-Dhaage', 25, 19, 3, '5:22', 'pepsi/music/Moh-Moh-Ke-Dhaage.mp3', '5', 3),
(32, 'Guitar Sikhda', 22, 28, 4, '3:09', 'pepsi/music/Guitar Sikhda.mp3', '1', 4),
(33, 'Humnava Mere', 14, 29, 4, '5:29 ', 'pepsi/music/Humnava Mere - Jubin Nautiyal.mp3', '2', 1),
(34, 'I Need Ya', 27, 30, 6, ' 3:26 ', 'pepsi/music/I Need Ya - SukhE.mp3', ' 3', 3),
(35, 'Coca cola', 13, 31, 6, '3:12', 'pepsi/music/Coca Cola Tu Ft Young Desi - Tony Kakkar (DJJOhAL.Com).mp3', '4', 2),
(36, 'Yeh Jo Des Hai Tera', 20, 2, 3, ' 6:31', ' pepsi/music/Yeh Jo Des Hai Tera.mp3', '5', 6),
(37, 'Yun Hi Chala Chala', 20, 2, 3, '7:27', ' pepsi/music/Yun Hi Chala Chala.mp3', '5', 1),
(38, 'Asal Mein', 24, 32, 4, ' 3:44', ' pepsi/music/Asal Mein - Darshan Raval.mp3', ' 1', 1),
(39, 'Aabaad Barbaad', 7, 33, 4, ' 5:09', ' pepsi/music/Aabaad Barbaad - Arijit Singh.mp3', '1', 5),
(40, 'Hardum Humdum', 7, 33, 4, ' 3:08', ' pepsi/music/Hardum Humdum - Arijit Singh.mp3', '1', 2),
(41, 'Hardum Humdum Female Version', 29, 33, 4, ' 3:08', 'pepsi/music/Hardum Humdum Female Version - Ludo.mp3', '1', 2),
(42, 'Meri Tum Ho ', 14, 33, 4, ' 3:33', 'pepsi/music/Meri Tum Ho Unplugged - Ludo.mp3 ', '2', 1),
(43, 'Main Kisi Aur Ka', 24, 34, 4, ' 4:27', 'pepsi/music/Main Kisi Aur Ka - Darshan Raval.mp3', '2', 1),
(44, 'Milne Hai Mujhse Aayi', 7, 15, 4, '4:55 ', 'pepsi/music/Milne Hai Mujhse Aayi.mp3 ', '3', 3),
(45, 'Khairiyat Sad', 7, 16, 4, ' 4:40', 'pepsi/music/Khairiyat Sad - Chhichhore.mp3 ', '3', 2),
(46, 'Chahun Main Ya Naa', 7, 15, 4, ' 5:04', 'pepsi/music/Chahun Main Ya Naa.mp3', '4', 4),
(47, 'Keh Do Na', 31, 35, 4, ' 3:53', 'pepsi/music/Keh Do Na.mp3', '4', 4),
(48, 'Sajan Bin', 15, 27, 4, ' 3:14', 'pepsi/music/01 - Sajan Bin - DownloadMing.ME.mp3', '5', 5),
(49, 'Chedkhaniyaan', 15, 27, 4, '3:18', 'pepsi/music/02 - Chedkhaniyaan - DownloadMing.ME.mp3', '6', 1),
(50, 'Dhara Hogi', 15, 27, 4, '4:22', 'pepsi/music/06 - Dhara Hogi - DownloadMing.ME.mp3', '6', 2),
(51, 'Garaj Garaj', 15, 27, 4, '5:31', ' pepsi/music/07 - Garaj Garaj Jugalbandi - DownloadMing.ME.mp3 ', '7', 5),
(52, 'Duniyaa', 7, 36, 4, ' 3:42', 'pepsi/music/Duniyaa - Luka Chuppi.mp3', '8', 4),
(53, 'Photo', 33, 36, 4, '2:57', 'pepsi/music/Photo - Luka Chuppi.mp3', '8', 1),
(54, 'Closer', 34, 37, 4, '4:08', 'pepsi/music/The Chainsmokers - Closer ft. Halsey (Closer).mp3', '9', 4),
(55, 'Ek Pyar Ka Nagma', 35, 38, 4, ' 4:47', 'pepsi/music/Ek Pyar Ka Nagma - Sanam.mp3', '1', 14),
(56, 'Humein Tumse Pyaar Kitna', 35, 38, 4, '3:07', 'pepsi/music/Humein Tumse Pyaar Kitna - SANAM.mp3', '2', 2),
(57, 'Kahin Door', 35, 38, 4, ' 3:34', 'pepsi/music/Kahin Door - Sanam Puri.mp3', '3', 4),
(58, 'Taaron Ke Shehar', 23, 39, 3, '3:50', 'pepsi/music/Taaron Ke Shehar.mp3', '4', 0),
(59, 'Titliaan Warga', 19, 41, 4, ' 3:48', 'pepsi/pepsi/music/01 - Titliaan Warga - Harrdy Sandhu (320 Kbps).mp3', '5', 5),
(60, 'Lover', 5, 40, 4, '3:58', 'pepsi/music/Taylor Swift - Lover.mp3', '1', 5),
(61, 'I Think He Knows', 5, 40, 4, ' 2:55', 'pepsi/music/Taylor Swift - I Think He Knows.mp3', '2', 6),
(62, 'Love Story', 5, 4, 4, '3:56', 'pepsi/music/Love Story.mp3 ', '3', 10),
(63, 'Rare', 10, 5, 4, '3:43', 'pepsi/music/Selena Gomez - Rare.mp3', '4', 3),
(64, 'Despacito', 36, 42, 4, ' 2:27', 'pepsi/music/Despacito.mp3', '5', 1),
(65, 'Ik Bagal', 28, 24, 3, '5:28', 'pepsi/music/Ik Bagal.mp3', '5', 4),
(66, 'Friendzone', 20, 43, 4, '3:07', 'pepsi/music/Friendzone - Dil Bechara.mp3', '1', 1),
(67, 'Dil Bechara', 20, 43, 4, ' 2:43', 'pepsi/music/Dil Bechara - Title Song.mp3', '2', 3),
(68, 'Khulke Jeene Ka', 7, 43, 4, '4:06', 'pepsi/music/Khulke Jeene Ka - Dil Bechara.mp3 ', '3', 4),
(69, 'Taare Ginn', 3, 43, 4, '3:43', 'pepsi/music/Taare Ginn - Dil Bechara.mp3', '4', 2),
(70, 'Main Tumhara', 37, 43, 4, ' 4:18', 'pepsi/music/Main Tumhara - Dil Bechara.mp3', '5', 5),
(71, 'Hunter', 28, 24, 3, '4:16', 'pepsi/music/Hunter.mp3', '5', 1),
(72, 'Tere Naam', 8, 44, 3, ' 6:34', ' pepsi/music/Tere Naam.mp3', '1', 6),
(73, 'Kyo Kisi Ko', 8, 44, 3, ' 5:36', ' pepsi/music/Kyun Kissi Ko Wafa Ke Badlay.mp3', '2', 6);

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
(2, 'Qubec', 'Qubec', 'Funk', 'Funkqubeck123@231gmail.com', '0c9d63035ca102b27fe706eba57375f0', '2021-01-28 00:00:00', 'pepsi/images/profile-pics/shake.png'),
(3, 'HANl', 'Han', 'Jan', 'Hanjan432@gmail.com', '69e3b9ae0480d2711a3a8384b5dfc443', '2021-01-29 00:00:00', 'pepsi/images/profile-pics/shake.png');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
