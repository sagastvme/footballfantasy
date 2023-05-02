-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2023 at 10:08 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fantasy`
--

-- --------------------------------------------------------

--
-- Table structure for table `game_week`
--

CREATE TABLE `game_week` (
  `game_week_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `league`
--

CREATE TABLE `league` (
  `league_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `market`
--

CREATE TABLE `market` (
  `market_player_id` int(11) NOT NULL,
  `hour_published` date NOT NULL,
  `deadline` date NOT NULL,
  `player_id` int(11) NOT NULL,
  `league_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `player_id` int(11) NOT NULL,
  `player_name` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `footballTeam_id` int(11) DEFAULT NULL,
  `real_life_team_id` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `release_clause` float DEFAULT NULL,
  `total_points` int(11) DEFAULT NULL,
  `selling` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`player_id`, `player_name`, `position`, `footballTeam_id`, `real_life_team_id`, `price`, `release_clause`, `total_points`, `selling`) VALUES
(1, 'Lionel Messi', 'Forward', 1, 2, 1000000, 2000000, 500, 'N'),
(2, 'Cristiano Ronaldo', 'Forward', 1, 3, 900000, 1800000, 480, 'N'),
(3, 'Kevin De Bruyne', 'Midfielder', 2, 4, 800000, 1600000, 450, 'N'),
(4, 'Virgil van Dijk', 'Defender', 3, 5, 700000, 1400000, 400, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `player_stats`
--

CREATE TABLE `player_stats` (
  `player_match_stats_id` int(11) NOT NULL,
  `player_id` int(11) DEFAULT NULL,
  `footballMatch_id` int(11) DEFAULT NULL,
  `goals_scored` int(11) DEFAULT NULL,
  `assists` int(11) DEFAULT NULL,
  `dribbles` int(11) DEFAULT NULL,
  `yellow_cards` int(11) DEFAULT NULL,
  `red_cards` int(11) DEFAULT NULL,
  `minutes_played` int(11) DEFAULT NULL,
  `points_made` int(11) NOT NULL,
  `game_week` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `real_life_team`
--

CREATE TABLE `real_life_team` (
  `real_life_team_id` int(11) NOT NULL,
  `real_life_team_name` varchar(50) DEFAULT NULL,
  `alternative_name` varchar(255) NOT NULL,
  `primary_color` varchar(255) NOT NULL,
  `secondary_color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `real_life_team`
--

INSERT INTO `real_life_team` (`real_life_team_id`, `real_life_team_name`, `alternative_name`, `primary_color`, `secondary_color`) VALUES
(1, 'Manchester United', 'Man United', 'Red', 'White'),
(2, 'Real Madrid', 'Los Blancos', 'White', 'Purple'),
(3, 'FC Barcelona', 'Barca', 'Blue', 'Garnet'),
(4, 'Bayern Munich', 'FC Bayern', 'Red', 'White'),
(5, 'Liverpool FC', 'The Reds', 'Red', 'Yellow');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `footballTeam_id` int(11) NOT NULL,
  `team_name` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `total_points` int(11) NOT NULL,
  `league_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `date_created` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `date_created`) VALUES
(1, 'john_doe', 'john.doe@example.com', 'password123', '2022-01-01'),
(2, 'jane_smith', 'jane.smith@example.com', 'password456', '2022-02-15'),
(3, 'bob_johnson', 'bob.johnson@example.com', 'password789', '2022-03-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `game_week`
--
ALTER TABLE `game_week`
  ADD PRIMARY KEY (`game_week_id`);

--
-- Indexes for table `league`
--
ALTER TABLE `league`
  ADD PRIMARY KEY (`league_id`);

--
-- Indexes for table `market`
--
ALTER TABLE `market`
  ADD PRIMARY KEY (`market_player_id`),
  ADD KEY `player_fk` (`player_id`),
  ADD KEY `league_id_f` (`league_id`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `footballTeam_id` (`footballTeam_id`),
  ADD KEY `real_life_team_id` (`real_life_team_id`);

--
-- Indexes for table `player_stats`
--
ALTER TABLE `player_stats`
  ADD PRIMARY KEY (`player_match_stats_id`),
  ADD KEY `player_id` (`player_id`),
  ADD KEY `footballMatch_id` (`footballMatch_id`),
  ADD KEY `game_week_fk` (`game_week`);

--
-- Indexes for table `real_life_team`
--
ALTER TABLE `real_life_team`
  ADD PRIMARY KEY (`real_life_team_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`footballTeam_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `league_id_fk` (`league_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `game_week`
--
ALTER TABLE `game_week`
  MODIFY `game_week_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `league`
--
ALTER TABLE `league`
  MODIFY `league_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `market`
--
ALTER TABLE `market`
  MODIFY `market_player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `player_stats`
--
ALTER TABLE `player_stats`
  MODIFY `player_match_stats_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `real_life_team`
--
ALTER TABLE `real_life_team`
  MODIFY `real_life_team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `footballTeam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `market`
--
ALTER TABLE `market`
  ADD CONSTRAINT `league_id_f` FOREIGN KEY (`league_id`) REFERENCES `league` (`league_id`),
  ADD CONSTRAINT `player_fk` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`);

--
-- Constraints for table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `player_ibfk_1` FOREIGN KEY (`footballTeam_id`) REFERENCES `team` (`footballTeam_id`),
  ADD CONSTRAINT `player_ibfk_2` FOREIGN KEY (`real_life_team_id`) REFERENCES `real_life_team` (`real_life_team_id`);

--
-- Constraints for table `player_stats`
--
ALTER TABLE `player_stats`
  ADD CONSTRAINT `game_week_fk` FOREIGN KEY (`game_week`) REFERENCES `game_week` (`game_week_id`),
  ADD CONSTRAINT `player_stats_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`),
  ADD CONSTRAINT `player_stats_ibfk_2` FOREIGN KEY (`footballMatch_id`) REFERENCES `footballmatch` (`footballMatch_id`);

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `league_id_fk` FOREIGN KEY (`league_id`) REFERENCES `league` (`league_id`),
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
