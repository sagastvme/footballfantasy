CREATE TABLE User (
  user_id INT PRIMARY KEY,
  username VARCHAR(50),
  email VARCHAR(100),
  password VARCHAR(100),
  date_created DATE,
  Team INT,
  FOREIGN KEY (Team) REFERENCES Team(team_id)
);

CREATE TABLE Team (
  team_id INT PRIMARY KEY,
  team_name VARCHAR(50),
  user_id INT,
  date_created DATE,
  FOREIGN KEY (user_id) REFERENCES User(user_id)
);

CREATE TABLE Player (
  player_id INT PRIMARY KEY,
  player_name VARCHAR(50),
  position VARCHAR(50),
  team_id INT,
  real_life_team_id INT,
  price FLOAT,
  release_clause FLOAT,
  total_points INT,
  FOREIGN KEY (team_id) REFERENCES Team(team_id),
  FOREIGN KEY (real_life_team_id) REFERENCES Real_Life_Team(real_life_team_id)
);

CREATE TABLE Match (
  match_id INT PRIMARY KEY,
  home_team_id INT,
  away_team_id INT,
  home_team_score INT,
  away_team_score INT,
  match_date DATE,
  FOREIGN KEY (home_team_id) REFERENCES Real_Life_Team(real_life_team_id),
  FOREIGN KEY (away_team_id) REFERENCES Real_Life_Team(real_life_team_id)
);

CREATE TABLE Player_Match_Stats (
  player_match_stats_id INT PRIMARY KEY,
  player_id INT,
  match_id INT,
  goals_scored INT,
  assists INT,
  dribbles INT,
  yellow_cards INT,
  red_cards INT,
  minutes_played INT,
  FOREIGN KEY (player_id) REFERENCES Player(player_id),
  FOREIGN KEY (match_id) REFERENCES Match(match_id)
);

CREATE TABLE Player_Match_Points (
  player_match_points_id INT PRIMARY KEY,
  player_id INT,
  match_id INT,
  points_earned INT,
  FOREIGN KEY (player_id) REFERENCES Player(player_id),
  FOREIGN KEY (match_id) REFERENCES Match(match_id)
);


CREATE TABLE Real_Life_Team (
  real_life_team_id INT PRIMARY KEY,
  real_life_team_name VARCHAR(50)
);
