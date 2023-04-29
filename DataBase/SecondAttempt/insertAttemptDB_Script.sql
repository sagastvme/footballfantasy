INSERT INTO `real_life_team` (`real_life_team_id`, `real_life_team_name`, `alternative_name`, `primary_color`, `secondary_color`) VALUES
(1, 'Manchester United', 'Man United', 'Red', 'White'),
(2, 'Real Madrid', 'Los Blancos', 'White', 'Purple'),
(3, 'FC Barcelona', 'Barca', 'Blue', 'Garnet'),
(4, 'Bayern Munich', 'FC Bayern', 'Red', 'White'),
(5, 'Liverpool FC', 'The Reds', 'Red', 'Yellow');




INSERT INTO FootballMatch (footballMatch_id, home_team_id, away_team_id, home_team_score, away_team_score, match_date) 
VALUES (1, 1, 2, 2, 1, '2022-04-01');
INSERT INTO FootballMatch (footballMatch_id, home_team_id, away_team_id, home_team_score, away_team_score, match_date) 
VALUES (2, 3, 4, 1, 0, '2022-05-15');
INSERT INTO FootballMatch (footballMatch_id, home_team_id, away_team_id, home_team_score, away_team_score, match_date) 
VALUES (3, 5, 3, 3, 3, '2022-06-20');



INSERT INTO Users (user_id, username, email, password, date_created)
VALUES (1, 'john_doe', 'john.doe@example.com', 'password123', '2022-01-01');
INSERT INTO Users (user_id, username, email, password, date_created)
VALUES (2, 'jane_smith', 'jane.smith@example.com', 'password456', '2022-02-15');
INSERT INTO Users (user_id, username, email, password, date_created)
VALUES (3, 'bob_johnson', 'bob.johnson@example.com', 'password789', '2022-03-20');



INSERT INTO FootballTeam (footballTeam_id, team_name, user_id, date_created)
VALUES (1, 'Red Devils', 1, '2022-01-01');
INSERT INTO FootballTeam (footballTeam_id, team_name, user_id, date_created)
VALUES (2, 'The Gunners', 2, '2022-02-15');
INSERT INTO FootballTeam (footballTeam_id, team_name, user_id, date_created)
VALUES (3, 'The Blues', 3, '2022-03-20');



INSERT INTO Player (player_id, player_name, position, footballTeam_id, real_life_team_id, price, release_clause, total_points)
VALUES (1, 'Lionel Messi', 'Forward', 1, 2, 1000000.0, 2000000.0, 500);

INSERT INTO Player (player_id, player_name, position, footballTeam_id, real_life_team_id, price, release_clause, total_points)
VALUES (2, 'Cristiano Ronaldo', 'Forward', 1, 3, 900000.0, 1800000.0, 480);

INSERT INTO Player (player_id, player_name, position, footballTeam_id, real_life_team_id, price, release_clause, total_points)
VALUES (3, 'Kevin De Bruyne', 'Midfielder', 2, 4, 800000.0, 1600000.0, 450);

INSERT INTO Player (player_id, player_name, position, footballTeam_id, real_life_team_id, price, release_clause, total_points)
VALUES (4, 'Virgil van Dijk', 'Defender', 3, 5, 700000.0, 1400000.0, 400);




INSERT INTO Player_Match_Stats (player_match_stats_id, player_id, footballMatch_id, goals_scored, assists, dribbles, yellow_cards, red_cards, minutes_played)
VALUES (1, 1, 1, 2, 0, 4, 1, 0, 90);

INSERT INTO Player_Match_Stats (player_match_stats_id, player_id, footballMatch_id, goals_scored, assists, dribbles, yellow_cards, red_cards, minutes_played)
VALUES (2, 2, 1, 1, 1, 3, 0, 0, 90);

INSERT INTO Player_Match_Stats (player_match_stats_id, player_id, footballMatch_id, goals_scored, assists, dribbles, yellow_cards, red_cards, minutes_played)
VALUES (3, 3, 1, 0, 0, 2, 1, 0, 80);




INSERT INTO Player_Match_Points (player_match_points_id, player_id, footballMatch_id, points_earned) 
VALUES 
(1, 1, 1, 10),
(2, 2, 1, 7),
(3, 3, 1, 5),
(4, 4, 1, 2)
