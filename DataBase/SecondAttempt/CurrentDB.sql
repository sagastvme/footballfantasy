-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2023 at 02:48 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25
Create database fantasy;
USE fantasy;


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
-- Table structure for table `footballmatch`
--

CREATE TABLE `footballmatch` (
  `footballMatch_id` int(11) NOT NULL AUTO_INCREMENT,
  `home_team_id` int(11) DEFAULT NULL,
  `away_team_id` int(11) DEFAULT NULL,
  `home_team_score` int(11) DEFAULT NULL,
  `away_team_score` int(11) DEFAULT NULL,
  `match_date` date DEFAULT NULL,
PRIMARY KEY (`footballMatch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footballteam`
--

CREATE TABLE `footballteam` (
  `footballTeam_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date_created` date DEFAULT NULL,
PRIMARY KEY (`footballTeam_id` )
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `market`
--

CREATE TABLE `market` (
  `market_player_id` int(11) NOT NULL AUTO_INCREMENT,
  `hour_published` date NOT NULL,
  `deadline` date NOT NULL,
  `player_id` int(11) NOT NULL,
PRIMARY KEY (`market_player_id` )
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `player_id` int(11) NOT NULL AUTO_INCREMENT,
  `player_name` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `footballTeam_id` int(11) DEFAULT NULL,
  `real_life_team_id` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `release_clause` float DEFAULT NULL,
  `total_points` int(11) DEFAULT NULL,
  `selling` enum('Y','N') NOT NULL DEFAULT 'N',
PRIMARY KEY (`player_id` )
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_match_points`
--

CREATE TABLE `player_match_points` (
  `player_match_points_id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) DEFAULT NULL,
  `footballMatch_id` int(11) DEFAULT NULL,
  `points_earned` int(11) DEFAULT NULL,
PRIMARY KEY (`player_match_points_id` )
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_match_stats`
--

CREATE TABLE `player_match_stats` (
  `player_match_stats_id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) DEFAULT NULL,
  `footballMatch_id` int(11) DEFAULT NULL,
  `goals_scored` int(11) DEFAULT NULL,
  `assists` int(11) DEFAULT NULL,
  `dribbles` int(11) DEFAULT NULL,
  `yellow_cards` int(11) DEFAULT NULL,
  `red_cards` int(11) DEFAULT NULL,
  `minutes_played` int(11) DEFAULT NULL,
PRIMARY KEY (`player_match_stats_id` )
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `real_life_team`
--

CREATE TABLE `real_life_team` (
  `real_life_team_id` int(11) NOT NULL AUTO_INCREMENT,
  `real_life_team_name` varchar(50) DEFAULT NULL,
  `alternative_name` varchar(255) NOT NULL,
  `primary_color` varchar(255) NOT NULL,
  `secondary_color` varchar(255) NOT NULL,
PRIMARY KEY (`real_life_team_id` )
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `date_created` date DEFAULT NULL,
PRIMARY KEY (`user_id` )
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `footballmatch`
--
ALTER TABLE `footballmatch`
 
  ADD KEY `home_team_id` (`home_team_id`),
  ADD KEY `away_team_id` (`away_team_id`);

--
-- Indexes for table `footballteam`
--
ALTER TABLE `footballteam`
 
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `market`
--
ALTER TABLE `market`
 
  ADD KEY `player_fk` (`player_id`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  
  ADD KEY `footballTeam_id` (`footballTeam_id`),
  ADD KEY `real_life_team_id` (`real_life_team_id`);

--
-- Indexes for table `player_match_points`
--
ALTER TABLE `player_match_points`
 
  ADD KEY `player_id` (`player_id`),
  ADD KEY `footballMatch_id` (`footballMatch_id`);

--
-- Indexes for table `player_match_stats`
--
ALTER TABLE `player_match_stats`
 
  ADD KEY `player_id` (`player_id`),
  ADD KEY `footballMatch_id` (`footballMatch_id`);

--
-- Indexes for table `real_life_team`
--

--
-- Indexes for table `users`
--

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `market`
--
ALTER TABLE `market`
  MODIFY `market_player_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `footballmatch`
--
ALTER TABLE `footballmatch`
  ADD CONSTRAINT `footballmatch_ibfk_1` FOREIGN KEY (`home_team_id`) REFERENCES `real_life_team` (`real_life_team_id`),
  ADD CONSTRAINT `footballmatch_ibfk_2` FOREIGN KEY (`away_team_id`) REFERENCES `real_life_team` (`real_life_team_id`);

--
-- Constraints for table `footballteam`
--
ALTER TABLE `footballteam`
  ADD CONSTRAINT `footballteam_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `market`
--
ALTER TABLE `market`
  ADD CONSTRAINT `player_fk` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`);

--
-- Constraints for table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `player_ibfk_1` FOREIGN KEY (`footballTeam_id`) REFERENCES `footballteam` (`footballTeam_id`),
  ADD CONSTRAINT `player_ibfk_2` FOREIGN KEY (`real_life_team_id`) REFERENCES `real_life_team` (`real_life_team_id`);

--
-- Constraints for table `player_match_points`
--
ALTER TABLE `player_match_points`
  ADD CONSTRAINT `player_match_points_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`),
  ADD CONSTRAINT `player_match_points_ibfk_2` FOREIGN KEY (`footballMatch_id`) REFERENCES `footballmatch` (`footballMatch_id`);

--
-- Constraints for table `player_match_stats`
--
ALTER TABLE `player_match_stats`
  ADD CONSTRAINT `player_match_stats_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`),
  ADD CONSTRAINT `player_match_stats_ibfk_2` FOREIGN KEY (`footballMatch_id`) REFERENCES `footballmatch` (`footballMatch_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
