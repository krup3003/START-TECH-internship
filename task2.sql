CREATE TABLE matches1 (
match_id INT PRIMARY KEY,
season INT,
city VARCHAR(255),
date DATE,
team1 VARCHAR(255),
team2 VARCHAR(255),
toss_winner VARCHAR(255),
toss_decision VARCHAR(255),
result VARCHAR(255),
dl_applied INT,
winner VARCHAR(255),
win_by_runs INT,
win_by_wickets INT,
player_of_match VARCHAR(255),
venue VARCHAR(255),
umpire1 VARCHAR(255),
umpire2 VARCHAR(255),
umpire3 VARCHAR(255)
);

CREATE TABLE deliveries1 (
match_id INT,
inning INT,
batting_team VARCHAR(255),
bowling_team VARCHAR(255),
overe INT,
ball INT,
batsman VARCHAR(255),
non_striker VARCHAR(255),
bowler VARCHAR(255),
is_super_over INT,
wide_runs INT,
bye_runs INT,
legbye_runs INT,
noball_runs INT,
penalty_runs INT,
batsman_runs INT,
extra_runs INT,
total_runs INT,
player_dismissed VARCHAR(255),
dismissal_kind VARCHAR(255),
fielder VARCHAR(255)
);

COPY matches1 FROM 'IPL_matches.csv' DELIMITER ',' CSV HEADER
COPY deliveries1 FROM 'IPL_Ball.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM deliveries1 LIMIT 20;

SELECT * FROM matches1 LIMIT 20;

SELECT * FROM matches1 WHERE date='2013-05-02';

SELECT * FROM matches1 WHERE win_by_runs > 100;

SELECT * FROM matches1 WHERE result='tie' ORDER BY date DESC;

SELECT COUNT(DISTINCT city) FROM matches1;