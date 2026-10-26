-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2026 at 04:45 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `steam_games_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Single-player'),
(2, 'Multi-player'),
(3, 'Co-op'),
(4, 'Online Co-op'),
(5, 'LAN Co-op'),
(6, 'Shared/Split Screen'),
(7, 'Cross-Platform Multiplayer'),
(8, 'Steam Achievements'),
(9, 'Full controller support'),
(10, 'Partial controller support'),
(11, 'Steam Trading Cards'),
(12, 'Steam Cloud'),
(13, 'Valve Anti-Cheat enabled'),
(14, 'Stats'),
(15, 'Steam Leaderboards'),
(16, 'Includes level editor'),
(17, 'Workshop'),
(18, 'In-App Purchases'),
(19, 'VR Support'),
(20, 'MMO');

-- --------------------------------------------------------

--
-- Table structure for table `developer`
--

CREATE TABLE `developer` (
  `developer_id` int(11) NOT NULL,
  `developer_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `developer`
--

INSERT INTO `developer` (`developer_id`, `developer_name`) VALUES
(1, 'Valve'),
(2, 'Epic Games'),
(3, 'CD Projekt Red'),
(4, 'Bethesda'),
(5, 'Ubisoft'),
(6, 'Square Enix'),
(7, 'Capcom'),
(8, 'Bandai Namco'),
(9, 'FromSoftware'),
(10, 'Rockstar Games'),
(11, 'Bungie'),
(12, 'Digital Extremes'),
(13, 'Facepunch Studios'),
(14, 'Re-Logic'),
(15, 'Klei Entertainment'),
(16, 'ConcernedApe'),
(17, 'Supergiant Games'),
(18, 'Larian Studios'),
(19, 'Team Cherry'),
(20, 'Hello Games');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `appID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `release_date` date NOT NULL,
  `estimated_owners` varchar(50) NOT NULL,
  `peak_ccu` int(11) NOT NULL,
  `required_age` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `dlc_count` int(11) NOT NULL,
  `detailed_description` text NOT NULL,
  `short_description` text NOT NULL,
  `header_image` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `support_url` varchar(255) DEFAULT NULL,
  `support_email` varchar(255) DEFAULT NULL,
  `windows` tinyint(1) NOT NULL,
  `mac` tinyint(1) NOT NULL,
  `linux` tinyint(1) NOT NULL,
  `metacritic_score` int(11) DEFAULT NULL,
  `user_score` int(11) DEFAULT NULL,
  `positive` int(11) NOT NULL,
  `negative` int(11) NOT NULL,
  `achievements` int(11) NOT NULL,
  `recommendations` int(11) NOT NULL,
  `notes` text DEFAULT NULL,
  `average_playtime_forever` int(11) NOT NULL,
  `average_playtime_2weeks` int(11) NOT NULL,
  `median_playtime_forever` int(11) NOT NULL,
  `median_playtime_2weeks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`appID`, `name`, `release_date`, `estimated_owners`, `peak_ccu`, `required_age`, `price`, `dlc_count`, `detailed_description`, `short_description`, `header_image`, `website`, `support_url`, `support_email`, `windows`, `mac`, `linux`, `metacritic_score`, `user_score`, `positive`, `negative`, `achievements`, `recommendations`, `notes`, `average_playtime_forever`, `average_playtime_2weeks`, `median_playtime_forever`, `median_playtime_2weeks`) VALUES
(10, 'Counter-Strike', '2000-11-01', '10M-20M', 15000, 17, 9.99, 0, 'Play the worlds number 1 online action game.', 'Play the worlds number 1 online action game.', 'header.jpg', 'counter-strike.net', 'support.steampowered.com', 'support@valvesoftware.com', 1, 1, 1, 88, 97, 130000, 3000, 0, 100000, 'None', 10000, 500, 5000, 200),
(20, 'Team Fortress Classic', '1999-04-01', '5M-10M', 100, 13, 4.99, 0, 'One of the most popular online action games of all time.', 'One of the most popular online action games.', 'header2.jpg', NULL, NULL, NULL, 1, 1, 1, NULL, 85, 3500, 900, 0, 2500, 'None', 500, 10, 300, 5),
(30, 'Day of Defeat', '2003-05-01', '5M-10M', 150, 13, 4.99, 0, 'Enlist in an intense brand of Axis vs. Allied teamplay.', 'Enlist in an intense brand of Axis vs. Allied teamplay.', 'header3.jpg', 'dayofdefeat.com', NULL, NULL, 1, 1, 1, 79, 90, 3600, 600, 0, 3000, 'None', 700, 20, 400, 10),
(40, 'Deathmatch Classic', '2001-06-01', '5M-10M', 20, 0, 4.99, 0, 'Enjoy fast-paced multiplayer gaming with Deathmatch Classic.', 'Enjoy fast-paced multiplayer gaming.', 'header4.jpg', NULL, NULL, NULL, 1, 1, 1, NULL, 80, 1500, 400, 0, 1000, 'None', 200, 0, 100, 0),
(50, 'Half-Life: Opposing Force', '1999-11-01', '5M-10M', 200, 17, 4.99, 0, 'Return to the Black Mesa Research Facility.', 'Return to the Black Mesa Research Facility.', 'header5.jpg', NULL, NULL, NULL, 1, 1, 1, NULL, 95, 6000, 300, 0, 5000, 'None', 900, 30, 400, 15),
(60, 'Ricochet', '2000-11-01', '5M-10M', 10, 0, 4.99, 0, 'A futuristic action game that tests your agility.', 'A futuristic action game.', 'header6.jpg', NULL, NULL, NULL, 1, 1, 1, NULL, 75, 3000, 800, 0, 2000, 'None', 50, 0, 20, 0),
(70, 'Half-Life', '1998-11-08', '10M-20M', 1000, 17, 9.99, 0, 'Named Game of the Year by over 50 publications.', 'Named Game of the Year by over 50 publications.', 'header7.jpg', 'half-life.com', NULL, NULL, 1, 1, 1, 96, 96, 30000, 1000, 0, 25000, 'None', 2000, 50, 1000, 20),
(80, 'Condition Zero', '2004-03-01', '10M-20M', 300, 17, 9.99, 0, 'With its extensive Tour of Duty campaign...', 'With its extensive Tour of Duty campaign...', 'header8.jpg', NULL, NULL, NULL, 1, 1, 1, 65, 88, 15000, 2000, 0, 12000, 'None', 1000, 40, 500, 15),
(130, 'Half-Life: Blue Shift', '2001-06-01', '5M-10M', 150, 17, 4.99, 0, 'Made by Gearbox Software.', 'Made by Gearbox Software.', 'header9.jpg', NULL, NULL, NULL, 1, 1, 1, 71, 90, 4000, 450, 0, 3500, 'None', 600, 15, 300, 5),
(220, 'Half-Life 2', '2004-11-16', '20M-50M', 3000, 17, 9.99, 1, '1998. HALF-LIFE sends a shock through the game industry.', 'HALF-LIFE sends a shock through the game industry.', 'header10.jpg', 'half-life2.com', NULL, NULL, 1, 1, 1, 96, 97, 140000, 3000, 33, 120000, 'None', 3000, 100, 1500, 40),
(240, 'Counter-Strike: Source', '2004-11-01', '20M-50M', 5000, 17, 9.99, 0, 'THE NEXT INSTALLMENT OF THE WORLDS # 1 ONLINE ACTION GAME', 'THE NEXT INSTALLMENT OF THE WORLDS # 1 ONLINE ACTION GAME', 'header11.jpg', NULL, NULL, NULL, 1, 1, 1, 88, 96, 120000, 4000, 147, 100000, 'None', 5000, 200, 2000, 80),
(280, 'Half-Life: Source', '2004-06-01', '5M-10M', 50, 17, 9.99, 0, 'Winner of over 50 Game of the Year awards.', 'Winner of over 50 Game of the Year awards.', 'header12.jpg', NULL, NULL, NULL, 1, 1, 1, NULL, 80, 4000, 1500, 0, 3000, 'None', 300, 10, 150, 5),
(300, 'Day of Defeat: Source', '2005-07-12', '5M-10M', 300, 17, 9.99, 0, 'Day of Defeat offers intense online action gameplay.', 'Day of Defeat offers intense online action gameplay.', 'header13.jpg', NULL, NULL, NULL, 1, 1, 1, 80, 92, 12000, 1000, 54, 10000, 'None', 1500, 50, 800, 20),
(320, 'Half-Life 2: Deathmatch', '2004-11-01', '10M-20M', 200, 17, 4.99, 0, 'Fast multiplayer action set in the Half-Life 2 universe!', 'Fast multiplayer action set in the Half-Life 2 universe!', 'header14.jpg', NULL, NULL, NULL, 1, 1, 1, NULL, 85, 7000, 1000, 0, 6000, 'None', 800, 20, 400, 10),
(340, 'Half-Life 2: Lost Coast', '2005-10-27', '10M-20M', 50, 17, 0.00, 0, 'Originally planned as a section of the Highway 17 chapter.', 'Originally planned as a section of the Highway 17 chapter.', 'header15.jpg', NULL, NULL, NULL, 1, 1, 1, NULL, 88, 6500, 1000, 0, 5500, 'None', 100, 5, 50, 0),
(360, 'Half-Life Deathmatch: Source', '2006-05-01', '5M-10M', 30, 17, 9.99, 0, 'Recreation of the first multiplayer game set in the Half-Life universe.', 'Recreation of the first multiplayer game set in the Half-Life universe.', 'header16.jpg', NULL, NULL, NULL, 1, 1, 1, NULL, 78, 2000, 600, 0, 1500, 'None', 150, 0, 80, 0),
(380, 'Half-Life 2: Episode One', '2006-06-01', '5M-10M', 400, 17, 7.99, 0, 'Half-Life 2 has sold over 4 million copies worldwide.', 'Half-Life 2 has sold over 4 million copies worldwide.', 'header17.jpg', 'half-life2.com', NULL, NULL, 1, 1, 1, 87, 95, 7500, 500, 13, 7000, 'None', 800, 30, 400, 15),
(400, 'Portal', '2007-10-10', '20M-50M', 2000, 13, 9.99, 0, 'Portal is a new single player game from Valve.', 'Portal is a new single player game from Valve.', 'header18.jpg', 'thinkwithportals.com', NULL, NULL, 1, 1, 1, 90, 98, 110000, 2000, 15, 105000, 'None', 1500, 60, 700, 25),
(420, 'Half-Life 2: Episode Two', '2007-10-10', '10M-20M', 600, 17, 7.99, 0, 'Half-Life 2: Episode Two is the second in a trilogy.', 'Half-Life 2: Episode Two is the second in a trilogy.', 'header19.jpg', 'half-life2.com', NULL, NULL, 1, 1, 1, 90, 96, 10000, 600, 22, 9000, 'None', 1200, 40, 600, 15),
(440, 'Team Fortress 2', '2007-10-10', '50M-100M', 100000, 13, 0.00, 1, 'Nine distinct classes provide a broad range of tactical abilities.', 'Nine distinct classes provide a broad range of tactical abilities.', 'header20.jpg', 'teamfortress.com', NULL, NULL, 1, 1, 1, 92, 93, 850000, 50000, 520, 800000, 'None', 25000, 1000, 10000, 400);

-- --------------------------------------------------------

--
-- Table structure for table `game_category`
--

CREATE TABLE `game_category` (
  `appID` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game_category`
--

INSERT INTO `game_category` (`appID`, `category_id`) VALUES
(10, 2),
(20, 2),
(30, 2),
(40, 2),
(50, 1),
(60, 2),
(70, 1),
(80, 1),
(130, 1),
(220, 1),
(240, 2),
(280, 1),
(300, 2),
(320, 2),
(340, 1),
(360, 2),
(380, 1),
(400, 1),
(420, 1),
(440, 2);

-- --------------------------------------------------------

--
-- Table structure for table `game_developer`
--

CREATE TABLE `game_developer` (
  `appID` int(11) NOT NULL,
  `developer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game_developer`
--

INSERT INTO `game_developer` (`appID`, `developer_id`) VALUES
(10, 1),
(20, 1),
(30, 1),
(40, 1),
(50, 1),
(60, 1),
(70, 1),
(80, 1),
(130, 1),
(220, 1),
(240, 1),
(280, 1),
(300, 1),
(320, 1),
(340, 1),
(360, 1),
(380, 1),
(400, 1),
(420, 1),
(440, 1);

-- --------------------------------------------------------

--
-- Table structure for table `game_genre`
--

CREATE TABLE `game_genre` (
  `appID` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game_genre`
--

INSERT INTO `game_genre` (`appID`, `genre_id`) VALUES
(10, 1),
(20, 1),
(30, 1),
(40, 1),
(50, 1),
(60, 1),
(70, 1),
(70, 2),
(80, 1),
(130, 1),
(220, 1),
(220, 2),
(240, 1),
(280, 1),
(300, 1),
(320, 1),
(340, 1),
(360, 1),
(380, 1),
(400, 12);

-- --------------------------------------------------------

--
-- Table structure for table `game_language`
--

CREATE TABLE `game_language` (
  `appID` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `has_full_audio` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game_language`
--

INSERT INTO `game_language` (`appID`, `language_id`, `has_full_audio`) VALUES
(10, 1, 1),
(20, 1, 1),
(30, 1, 1),
(40, 1, 1),
(50, 1, 1),
(60, 1, 1),
(70, 1, 1),
(80, 1, 1),
(130, 1, 1),
(220, 1, 1),
(240, 1, 1),
(280, 1, 1),
(300, 1, 1),
(320, 1, 1),
(340, 1, 1),
(360, 1, 1),
(380, 1, 1),
(400, 1, 1),
(420, 1, 1),
(440, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `game_movie`
--

CREATE TABLE `game_movie` (
  `movie_id` int(11) NOT NULL,
  `appID` int(11) NOT NULL,
  `movie_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game_movie`
--

INSERT INTO `game_movie` (`movie_id`, `appID`, `movie_url`) VALUES
(1, 10, 'movie1.webm'),
(2, 20, 'movie2.webm'),
(3, 30, 'movie3.webm'),
(4, 40, 'movie4.webm'),
(5, 50, 'movie5.webm'),
(6, 60, 'movie6.webm'),
(7, 70, 'movie7.webm'),
(8, 80, 'movie8.webm'),
(9, 130, 'movie9.webm'),
(10, 220, 'movie10.webm'),
(11, 240, 'movie11.webm'),
(12, 280, 'movie12.webm'),
(13, 300, 'movie13.webm'),
(14, 320, 'movie14.webm'),
(15, 340, 'movie15.webm'),
(16, 360, 'movie16.webm'),
(17, 380, 'movie17.webm'),
(18, 400, 'movie18.webm'),
(19, 420, 'movie19.webm'),
(20, 440, 'movie20.webm');

-- --------------------------------------------------------

--
-- Table structure for table `game_publisher`
--

CREATE TABLE `game_publisher` (
  `appID` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game_publisher`
--

INSERT INTO `game_publisher` (`appID`, `publisher_id`) VALUES
(10, 1),
(20, 1),
(30, 1),
(40, 1),
(50, 1),
(60, 1),
(70, 1),
(80, 1),
(130, 1),
(220, 1),
(240, 1),
(280, 1),
(300, 1),
(320, 1),
(340, 1),
(360, 1),
(380, 1),
(400, 1),
(420, 1),
(440, 1);

-- --------------------------------------------------------

--
-- Table structure for table `game_screenshot`
--

CREATE TABLE `game_screenshot` (
  `screenshot_id` int(11) NOT NULL,
  `appID` int(11) NOT NULL,
  `screenshot_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game_screenshot`
--

INSERT INTO `game_screenshot` (`screenshot_id`, `appID`, `screenshot_url`) VALUES
(1, 10, 'shot1.jpg'),
(2, 20, 'shot2.jpg'),
(3, 30, 'shot3.jpg'),
(4, 40, 'shot4.jpg'),
(5, 50, 'shot5.jpg'),
(6, 60, 'shot6.jpg'),
(7, 70, 'shot7.jpg'),
(8, 80, 'shot8.jpg'),
(9, 130, 'shot9.jpg'),
(10, 220, 'shot10.jpg'),
(11, 240, 'shot11.jpg'),
(12, 280, 'shot12.jpg'),
(13, 300, 'shot13.jpg'),
(14, 320, 'shot14.jpg'),
(15, 340, 'shot15.jpg'),
(16, 360, 'shot16.jpg'),
(17, 380, 'shot17.jpg'),
(18, 400, 'shot18.jpg'),
(19, 420, 'shot19.jpg'),
(20, 440, 'shot20.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `game_tag`
--

CREATE TABLE `game_tag` (
  `appID` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game_tag`
--

INSERT INTO `game_tag` (`appID`, `tag_id`) VALUES
(10, 11),
(20, 11),
(30, 11),
(40, 11),
(50, 1),
(60, 11),
(70, 2),
(80, 8),
(130, 8),
(220, 2),
(240, 11),
(280, 8),
(300, 11),
(320, 11),
(340, 1),
(360, 11),
(380, 2),
(400, 15),
(420, 2),
(440, 11);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `genre_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'RPG'),
(4, 'Strategy'),
(5, 'Simulation'),
(6, 'Sports'),
(7, 'Racing'),
(8, 'Casual'),
(9, 'Indie'),
(10, 'MMO'),
(11, 'Horror'),
(12, 'Puzzle'),
(13, 'Shooter'),
(14, 'Survival'),
(15, 'Sandbox'),
(16, 'Fighting'),
(17, 'Platformer'),
(18, 'Stealth'),
(19, 'Rhythm'),
(20, 'Visual Novel');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `language_id` int(11) NOT NULL,
  `language_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`language_id`, `language_name`) VALUES
(1, 'English'),
(2, 'French'),
(3, 'Italian'),
(4, 'German'),
(5, 'Spanish - Spain'),
(6, 'Japanese'),
(7, 'Korean'),
(8, 'Portuguese - Brazil'),
(9, 'Russian'),
(10, 'Simplified Chinese'),
(11, 'Traditional Chinese'),
(12, 'Polish'),
(13, 'Turkish'),
(14, 'Dutch'),
(15, 'Swedish'),
(16, 'Czech'),
(17, 'Hungarian'),
(18, 'Arabic'),
(19, 'Thai'),
(20, 'Danish');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisher_id` int(11) NOT NULL,
  `publisher_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `publisher_name`) VALUES
(1, 'Valve'),
(2, 'Epic Games'),
(3, 'CD Projekt'),
(4, 'Bethesda Softworks'),
(5, 'Ubisoft'),
(6, 'Square Enix'),
(7, 'Capcom'),
(8, 'Bandai Namco Entertainment'),
(9, 'Sony Interactive'),
(10, 'Rockstar Games'),
(11, 'Electronic Arts'),
(12, 'Activision'),
(13, 'Xbox Game Studios'),
(14, 'Sega'),
(15, 'Devolver Digital'),
(16, 'Paradox Interactive'),
(17, '505 Games'),
(18, 'THQ Nordic'),
(19, 'Deep Silver'),
(20, 'Annapurna Interactive');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`tag_id`, `tag_name`) VALUES
(1, 'Atmospheric'),
(2, 'Story Rich'),
(3, 'Open World'),
(4, 'Difficult'),
(5, 'Sci-fi'),
(6, 'Fantasy'),
(7, 'Pixel Graphics'),
(8, 'First-Person'),
(9, 'Third Person'),
(10, 'Great Soundtrack'),
(11, 'Multiplayer'),
(12, 'Co-op'),
(13, 'Zombies'),
(14, 'Sandbox'),
(15, 'Funny'),
(16, 'Gore'),
(17, 'Violent'),
(18, 'Anime'),
(19, 'Classic'),
(20, 'Retro');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `developer`
--
ALTER TABLE `developer`
  ADD PRIMARY KEY (`developer_id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`appID`);

--
-- Indexes for table `game_category`
--
ALTER TABLE `game_category`
  ADD PRIMARY KEY (`appID`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `game_developer`
--
ALTER TABLE `game_developer`
  ADD PRIMARY KEY (`appID`,`developer_id`),
  ADD KEY `developer_id` (`developer_id`);

--
-- Indexes for table `game_genre`
--
ALTER TABLE `game_genre`
  ADD PRIMARY KEY (`appID`,`genre_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `game_language`
--
ALTER TABLE `game_language`
  ADD PRIMARY KEY (`appID`,`language_id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indexes for table `game_movie`
--
ALTER TABLE `game_movie`
  ADD PRIMARY KEY (`movie_id`),
  ADD KEY `appID` (`appID`);

--
-- Indexes for table `game_publisher`
--
ALTER TABLE `game_publisher`
  ADD PRIMARY KEY (`appID`,`publisher_id`),
  ADD KEY `publisher_id` (`publisher_id`);

--
-- Indexes for table `game_screenshot`
--
ALTER TABLE `game_screenshot`
  ADD PRIMARY KEY (`screenshot_id`),
  ADD KEY `appID` (`appID`);

--
-- Indexes for table `game_tag`
--
ALTER TABLE `game_tag`
  ADD PRIMARY KEY (`appID`,`tag_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language_id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tag_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `developer`
--
ALTER TABLE `developer`
  MODIFY `developer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `game_movie`
--
ALTER TABLE `game_movie`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `game_screenshot`
--
ALTER TABLE `game_screenshot`
  MODIFY `screenshot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `game_category`
--
ALTER TABLE `game_category`
  ADD CONSTRAINT `game_category_ibfk_1` FOREIGN KEY (`appID`) REFERENCES `games` (`appID`),
  ADD CONSTRAINT `game_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `game_developer`
--
ALTER TABLE `game_developer`
  ADD CONSTRAINT `game_developer_ibfk_1` FOREIGN KEY (`appID`) REFERENCES `games` (`appID`),
  ADD CONSTRAINT `game_developer_ibfk_2` FOREIGN KEY (`developer_id`) REFERENCES `developer` (`developer_id`);

--
-- Constraints for table `game_genre`
--
ALTER TABLE `game_genre`
  ADD CONSTRAINT `game_genre_ibfk_1` FOREIGN KEY (`appID`) REFERENCES `games` (`appID`),
  ADD CONSTRAINT `game_genre_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`);

--
-- Constraints for table `game_language`
--
ALTER TABLE `game_language`
  ADD CONSTRAINT `game_language_ibfk_1` FOREIGN KEY (`appID`) REFERENCES `games` (`appID`),
  ADD CONSTRAINT `game_language_ibfk_2` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`);

--
-- Constraints for table `game_movie`
--
ALTER TABLE `game_movie`
  ADD CONSTRAINT `game_movie_ibfk_1` FOREIGN KEY (`appID`) REFERENCES `games` (`appID`);

--
-- Constraints for table `game_publisher`
--
ALTER TABLE `game_publisher`
  ADD CONSTRAINT `game_publisher_ibfk_1` FOREIGN KEY (`appID`) REFERENCES `games` (`appID`),
  ADD CONSTRAINT `game_publisher_ibfk_2` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`publisher_id`);

--
-- Constraints for table `game_screenshot`
--
ALTER TABLE `game_screenshot`
  ADD CONSTRAINT `game_screenshot_ibfk_1` FOREIGN KEY (`appID`) REFERENCES `games` (`appID`);

--
-- Constraints for table `game_tag`
--
ALTER TABLE `game_tag`
  ADD CONSTRAINT `game_tag_ibfk_1` FOREIGN KEY (`appID`) REFERENCES `games` (`appID`),
  ADD CONSTRAINT `game_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
