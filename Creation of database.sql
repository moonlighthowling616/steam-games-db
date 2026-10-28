-- mysql -u root -p

CREATE DATABASE steam_games_db;

USE steam_games_db;

CREATE TABLE Developer (
developer_id INT AUTO_INCREMENT NOT NULL,
developer_name VARCHAR(255) NOT NULL,
PRIMARY KEY (developer_id)
);

CREATE TABLE Publisher (
publisher_id INT AUTO_INCREMENT NOT NULL,
publisher_name VARCHAR(255) NOT NULL,
PRIMARY KEY (publisher_id)
);

CREATE TABLE Genre (
genre_id INT AUTO_INCREMENT NOT NULL,
genre_name VARCHAR(100) NOT NULL,
PRIMARY KEY (genre_id)
);

CREATE TABLE Category (
category_id INT AUTO_INCREMENT NOT NULL,
category_name VARCHAR(100) NOT NULL,
PRIMARY KEY (category_id)
);

CREATE TABLE Tag (
tag_id INT AUTO_INCREMENT NOT NULL,
tag_name VARCHAR(100) NOT NULL,
PRIMARY KEY (tag_id)
);

CREATE TABLE Language (
language_id INT AUTO_INCREMENT NOT NULL,
language_name VARCHAR(100) NOT NULL,
PRIMARY KEY (language_id)
);

CREATE TABLE Games (
appID INT NOT NULL,
name VARCHAR(255) NOT NULL,
release_date DATE NOT NULL,
estimated_owners VARCHAR(50) NOT NULL,
peak_ccu INT NOT NULL,
required_age INT NOT NULL,
price DECIMAL(10,2) NOT NULL,
dlc_count INT NOT NULL,
detailed_description TEXT NOT NULL,
short_description TEXT NOT NULL,
header_image VARCHAR(255) NOT NULL,
website VARCHAR(255),
support_url VARCHAR(255),
support_email VARCHAR(255),
windows BOOLEAN NOT NULL,
mac BOOLEAN NOT NULL,
linux BOOLEAN NOT NULL,
metacritic_score INT,
user_score INT,
positive INT NOT NULL,
negative INT NOT NULL,
achievements INT NOT NULL,
recommendations INT NOT NULL,
notes TEXT,
average_playtime_forever INT NOT NULL,
average_playtime_2weeks INT NOT NULL,
median_playtime_forever INT NOT NULL,
median_playtime_2weeks INT NOT NULL,
PRIMARY KEY (appID)
);

CREATE TABLE Game_Genre (
appID INT NOT NULL,
genre_id INT NOT NULL,
PRIMARY KEY (appID, genre_id),
FOREIGN KEY (appID) REFERENCES Games(appID),
FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
);

CREATE TABLE Game_Category (
appID INT NOT NULL,
category_id INT NOT NULL,
PRIMARY KEY (appID, category_id),
FOREIGN KEY (appID) REFERENCES Games(appID),
FOREIGN KEY (category_id) REFERENCES Category(category_id)
);

CREATE TABLE Game_Tag (
appID INT NOT NULL,
tag_id INT NOT NULL,
PRIMARY KEY (appID, tag_id),
FOREIGN KEY (appID) REFERENCES Games(appID),
FOREIGN KEY (tag_id) REFERENCES Tag(tag_id)
);

CREATE TABLE Game_Language (
appID INT NOT NULL,
language_id INT NOT NULL,
has_full_audio BOOLEAN NOT NULL,
PRIMARY KEY (appID, language_id),
FOREIGN KEY (appID) REFERENCES Games(appID),
FOREIGN KEY (language_id) REFERENCES Language(language_id)
);

CREATE TABLE Game_Developer (
appID INT NOT NULL,
developer_id INT NOT NULL,
PRIMARY KEY (appID, developer_id),
FOREIGN KEY (appID) REFERENCES Games(appID),
FOREIGN KEY (developer_id) REFERENCES Developer(developer_id)
);

CREATE TABLE Game_Publisher (
appID INT NOT NULL,
publisher_id INT NOT NULL,
PRIMARY KEY (appID, publisher_id),
FOREIGN KEY (appID) REFERENCES Games(appID),
FOREIGN KEY (publisher_id) REFERENCES Publisher(publisher_id)
);

CREATE TABLE Game_Screenshot (
screenshot_id INT AUTO_INCREMENT NOT NULL,
appID INT NOT NULL,
screenshot_url VARCHAR(255) NOT NULL,
PRIMARY KEY (screenshot_id),
FOREIGN KEY (appID) REFERENCES Games(appID)
);

CREATE TABLE Game_Movie (
movie_id INT AUTO_INCREMENT NOT NULL,
appID INT NOT NULL,
movie_url VARCHAR(255) NOT NULL,
PRIMARY KEY (movie_id),
FOREIGN KEY (appID) REFERENCES Games(appID)
);

INSERT INTO Developer (developer_name) VALUES
('Valve'), ('Epic Games'), ('CD Projekt Red'), ('Bethesda'), ('Ubisoft'),
('Square Enix'), ('Capcom'), ('Bandai Namco'), ('FromSoftware'), ('Rockstar Games'),
('Bungie'), ('Digital Extremes'), ('Facepunch Studios'), ('Re-Logic'), ('Klei Entertainment'),
('ConcernedApe'), ('Supergiant Games'), ('Larian Studios'), ('Team Cherry'), ('Hello Games');

INSERT INTO Publisher (publisher_name) VALUES
('Valve'), ('Epic Games'), ('CD Projekt'), ('Bethesda Softworks'), ('Ubisoft'),
('Square Enix'), ('Capcom'), ('Bandai Namco Entertainment'), ('Sony Interactive'), ('Rockstar Games'),
('Electronic Arts'), ('Activision'), ('Xbox Game Studios'), ('Sega'), ('Devolver Digital'),
('Paradox Interactive'), ('505 Games'), ('THQ Nordic'), ('Deep Silver'), ('Annapurna Interactive');

INSERT INTO Genre (genre_name) VALUES
('Action'), ('Adventure'), ('RPG'), ('Strategy'), ('Simulation'),
('Sports'), ('Racing'), ('Casual'), ('Indie'), ('MMO'),
('Horror'), ('Puzzle'), ('Shooter'), ('Survival'), ('Sandbox'),
('Fighting'), ('Platformer'), ('Stealth'), ('Rhythm'), ('Visual Novel');

INSERT INTO Category (category_name) VALUES
('Single-player'), ('Multi-player'), ('Co-op'), ('Online Co-op'), ('LAN Co-op'),
('Shared/Split Screen'), ('Cross-Platform Multiplayer'), ('Steam Achievements'), ('Full controller support'), ('Partial controller support'),
('Steam Trading Cards'), ('Steam Cloud'), ('Valve Anti-Cheat enabled'), ('Stats'), ('Steam Leaderboards'),
('Includes level editor'), ('Workshop'), ('In-App Purchases'), ('VR Support'), ('MMO');

INSERT INTO Tag (tag_name) VALUES
('Atmospheric'), ('Story Rich'), ('Open World'), ('Difficult'), ('Sci-fi'),
('Fantasy'), ('Pixel Graphics'), ('First-Person'), ('Third Person'), ('Great Soundtrack'),
('Multiplayer'), ('Co-op'), ('Zombies'), ('Sandbox'), ('Funny'),
('Gore'), ('Violent'), ('Anime'), ('Classic'), ('Retro');

INSERT INTO Language (language_name) VALUES
('English'), ('French'), ('Italian'), ('German'), ('Spanish - Spain'),
('Japanese'), ('Korean'), ('Portuguese - Brazil'), ('Russian'), ('Simplified Chinese'),
('Traditional Chinese'), ('Polish'), ('Turkish'), ('Dutch'), ('Swedish'),
('Czech'), ('Hungarian'), ('Arabic'), ('Thai'), ('Danish');

INSERT INTO Games (appID, name, release_date, estimated_owners, peak_ccu, required_age, price, dlc_count, detailed_description, short_description, header_image, website, support_url, support_email, windows, mac, linux, metacritic_score, user_score, positive, negative, achievements, recommendations, notes, average_playtime_forever, average_playtime_2weeks, median_playtime_forever, median_playtime_2weeks) VALUES
(10, 'Counter-Strike', '2000-11-01', '10M-20M', 15000, 17, 9.99, 0, 'Play the worlds number 1 online action game.', 'Play the worlds number 1 online action game.', 'header.jpg', 'counter-strike.net', 'support.steampowered.com', 'support@valvesoftware.com', TRUE, TRUE, TRUE, 88, 97, 130000, 3000, 0, 100000, 'None', 10000, 500, 5000, 200),
(20, 'Team Fortress Classic', '1999-04-01', '5M-10M', 100, 13, 4.99, 0, 'One of the most popular online action games of all time.', 'One of the most popular online action games.', 'header2.jpg', NULL, NULL, NULL, TRUE, TRUE, TRUE, NULL, 85, 3500, 900, 0, 2500, 'None', 500, 10, 300, 5),
(30, 'Day of Defeat', '2003-05-01', '5M-10M', 150, 13, 4.99, 0, 'Enlist in an intense brand of Axis vs. Allied teamplay.', 'Enlist in an intense brand of Axis vs. Allied teamplay.', 'header3.jpg', 'dayofdefeat.com', NULL, NULL, TRUE, TRUE, TRUE, 79, 90, 3600, 600, 0, 3000, 'None', 700, 20, 400, 10),
(40, 'Deathmatch Classic', '2001-06-01', '5M-10M', 20, 0, 4.99, 0, 'Enjoy fast-paced multiplayer gaming with Deathmatch Classic.', 'Enjoy fast-paced multiplayer gaming.', 'header4.jpg', NULL, NULL, NULL, TRUE, TRUE, TRUE, NULL, 80, 1500, 400, 0, 1000, 'None', 200, 0, 100, 0),
(50, 'Half-Life: Opposing Force', '1999-11-01', '5M-10M', 200, 17, 4.99, 0, 'Return to the Black Mesa Research Facility.', 'Return to the Black Mesa Research Facility.', 'header5.jpg', NULL, NULL, NULL, TRUE, TRUE, TRUE, NULL, 95, 6000, 300, 0, 5000, 'None', 900, 30, 400, 15),
(60, 'Ricochet', '2000-11-01', '5M-10M', 10, 0, 4.99, 0, 'A futuristic action game that tests your agility.', 'A futuristic action game.', 'header6.jpg', NULL, NULL, NULL, TRUE, TRUE, TRUE, NULL, 75, 3000, 800, 0, 2000, 'None', 50, 0, 20, 0),
(70, 'Half-Life', '1998-11-08', '10M-20M', 1000, 17, 9.99, 0, 'Named Game of the Year by over 50 publications.', 'Named Game of the Year by over 50 publications.', 'header7.jpg', 'half-life.com', NULL, NULL, TRUE, TRUE, TRUE, 96, 96, 30000, 1000, 0, 25000, 'None', 2000, 50, 1000, 20),
(80, 'Condition Zero', '2004-03-01', '10M-20M', 300, 17, 9.99, 0, 'With its extensive Tour of Duty campaign...', 'With its extensive Tour of Duty campaign...', 'header8.jpg', NULL, NULL, NULL, TRUE, TRUE, TRUE, 65, 88, 15000, 2000, 0, 12000, 'None', 1000, 40, 500, 15),
(130, 'Half-Life: Blue Shift', '2001-06-01', '5M-10M', 150, 17, 4.99, 0, 'Made by Gearbox Software.', 'Made by Gearbox Software.', 'header9.jpg', NULL, NULL, NULL, TRUE, TRUE, TRUE, 71, 90, 4000, 450, 0, 3500, 'None', 600, 15, 300, 5),
(220, 'Half-Life 2', '2004-11-16', '20M-50M', 3000, 17, 9.99, 1, '1998. HALF-LIFE sends a shock through the game industry.', 'HALF-LIFE sends a shock through the game industry.', 'header10.jpg', 'half-life2.com', NULL, NULL, TRUE, TRUE, TRUE, 96, 97, 140000, 3000, 33, 120000, 'None', 3000, 100, 1500, 40),
(240, 'Counter-Strike: Source', '2004-11-01', '20M-50M', 5000, 17, 9.99, 0, 'THE NEXT INSTALLMENT OF THE WORLDS # 1 ONLINE ACTION GAME', 'THE NEXT INSTALLMENT OF THE WORLDS # 1 ONLINE ACTION GAME', 'header11.jpg', NULL, NULL, NULL, TRUE, TRUE, TRUE, 88, 96, 120000, 4000, 147, 100000, 'None', 5000, 200, 2000, 80),
(280, 'Half-Life: Source', '2004-06-01', '5M-10M', 50, 17, 9.99, 0, 'Winner of over 50 Game of the Year awards.', 'Winner of over 50 Game of the Year awards.', 'header12.jpg', NULL, NULL, NULL, TRUE, TRUE, TRUE, NULL, 80, 4000, 1500, 0, 3000, 'None', 300, 10, 150, 5),
(300, 'Day of Defeat: Source', '2005-07-12', '5M-10M', 300, 17, 9.99, 0, 'Day of Defeat offers intense online action gameplay.', 'Day of Defeat offers intense online action gameplay.', 'header13.jpg', NULL, NULL, NULL, TRUE, TRUE, TRUE, 80, 92, 12000, 1000, 54, 10000, 'None', 1500, 50, 800, 20),
(320, 'Half-Life 2: Deathmatch', '2004-11-01', '10M-20M', 200, 17, 4.99, 0, 'Fast multiplayer action set in the Half-Life 2 universe!', 'Fast multiplayer action set in the Half-Life 2 universe!', 'header14.jpg', NULL, NULL, NULL, TRUE, TRUE, TRUE, NULL, 85, 7000, 1000, 0, 6000, 'None', 800, 20, 400, 10),
(340, 'Half-Life 2: Lost Coast', '2005-10-27', '10M-20M', 50, 17, 0.00, 0, 'Originally planned as a section of the Highway 17 chapter.', 'Originally planned as a section of the Highway 17 chapter.', 'header15.jpg', NULL, NULL, NULL, TRUE, TRUE, TRUE, NULL, 88, 6500, 1000, 0, 5500, 'None', 100, 5, 50, 0),
(360, 'Half-Life Deathmatch: Source', '2006-05-01', '5M-10M', 30, 17, 9.99, 0, 'Recreation of the first multiplayer game set in the Half-Life universe.', 'Recreation of the first multiplayer game set in the Half-Life universe.', 'header16.jpg', NULL, NULL, NULL, TRUE, TRUE, TRUE, NULL, 78, 2000, 600, 0, 1500, 'None', 150, 0, 80, 0),
(380, 'Half-Life 2: Episode One', '2006-06-01', '5M-10M', 400, 17, 7.99, 0, 'Half-Life 2 has sold over 4 million copies worldwide.', 'Half-Life 2 has sold over 4 million copies worldwide.', 'header17.jpg', 'half-life2.com', NULL, NULL, TRUE, TRUE, TRUE, 87, 95, 7500, 500, 13, 7000, 'None', 800, 30, 400, 15),
(400, 'Portal', '2007-10-10', '20M-50M', 2000, 13, 9.99, 0, 'Portal is a new single player game from Valve.', 'Portal is a new single player game from Valve.', 'header18.jpg', 'thinkwithportals.com', NULL, NULL, TRUE, TRUE, TRUE, 90, 98, 110000, 2000, 15, 105000, 'None', 1500, 60, 700, 25),
(420, 'Half-Life 2: Episode Two', '2007-10-10', '10M-20M', 600, 17, 7.99, 0, 'Half-Life 2: Episode Two is the second in a trilogy.', 'Half-Life 2: Episode Two is the second in a trilogy.', 'header19.jpg', 'half-life2.com', NULL, NULL, TRUE, TRUE, TRUE, 90, 96, 10000, 600, 22, 9000, 'None', 1200, 40, 600, 15),
(440, 'Team Fortress 2', '2007-10-10', '50M-100M', 100000, 13, 0.00, 1, 'Nine distinct classes provide a broad range of tactical abilities.', 'Nine distinct classes provide a broad range of tactical abilities.', 'header20.jpg', 'teamfortress.com', NULL, NULL, TRUE, TRUE, TRUE, 92, 93, 850000, 50000, 520, 800000, 'None', 25000, 1000, 10000, 400);

INSERT INTO Game_Genre (appID, genre_id) VALUES
(10, 1), (20, 1), (30, 1), (40, 1), (50, 1), (60, 1), (70, 1), (70, 2), (80, 1), (130, 1),
(220, 1), (220, 2), (240, 1), (280, 1), (300, 1), (320, 1), (340, 1), (360, 1), (380, 1), (400, 12);

INSERT INTO Game_Category (appID, category_id) VALUES
(10, 2), (20, 2), (30, 2), (40, 2), (50, 1), (60, 2), (70, 1), (80, 1), (130, 1), (220, 1),
(240, 2), (280, 1), (300, 2), (320, 2), (340, 1), (360, 2), (380, 1), (400, 1), (420, 1), (440, 2);

INSERT INTO Game_Tag (appID, tag_id) VALUES
(10, 11), (20, 11), (30, 11), (40, 11), (50, 1), (60, 11), (70, 2), (80, 8), (130, 8), (220, 2),
(240, 11), (280, 8), (300, 11), (320, 11), (340, 1), (360, 11), (380, 2), (400, 15), (420, 2), (440, 11);

INSERT INTO Game_Language (appID, language_id, has_full_audio) VALUES
(10, 1, TRUE), (20, 1, TRUE), (30, 1, TRUE), (40, 1, TRUE), (50, 1, TRUE), (60, 1, TRUE), (70, 1, TRUE), (80, 1, TRUE), (130, 1, TRUE), (220, 1, TRUE),
(240, 1, TRUE), (280, 1, TRUE), (300, 1, TRUE), (320, 1, TRUE), (340, 1, TRUE), (360, 1, TRUE), (380, 1, TRUE), (400, 1, TRUE), (420, 1, TRUE), (440, 1, TRUE);

INSERT INTO Game_Developer (appID, developer_id) VALUES
(10, 1), (20, 1), (30, 1), (40, 1), (50, 1), (60, 1), (70, 1), (80, 1), (130, 1), (220, 1),
(240, 1), (280, 1), (300, 1), (320, 1), (340, 1), (360, 1), (380, 1), (400, 1), (420, 1), (440, 1);

INSERT INTO Game_Publisher (appID, publisher_id) VALUES
(10, 1), (20, 1), (30, 1), (40, 1), (50, 1), (60, 1), (70, 1), (80, 1), (130, 1), (220, 1),
(240, 1), (280, 1), (300, 1), (320, 1), (340, 1), (360, 1), (380, 1), (400, 1), (420, 1), (440, 1);

INSERT INTO Game_Screenshot (appID, screenshot_url) VALUES
(10, 'shot1.jpg'), (20, 'shot2.jpg'), (30, 'shot3.jpg'), (40, 'shot4.jpg'), (50, 'shot5.jpg'), (60, 'shot6.jpg'), (70, 'shot7.jpg'), (80, 'shot8.jpg'), (130, 'shot9.jpg'), (220, 'shot10.jpg'),
(240, 'shot11.jpg'), (280, 'shot12.jpg'), (300, 'shot13.jpg'), (320, 'shot14.jpg'), (340, 'shot15.jpg'), (360, 'shot16.jpg'), (380, 'shot17.jpg'), (400, 'shot18.jpg'), (420, 'shot19.jpg'), (440, 'shot20.jpg');

INSERT INTO Game_Movie (appID, movie_url) VALUES
(10, 'movie1.webm'), (20, 'movie2.webm'), (30, 'movie3.webm'), (40, 'movie4.webm'), (50, 'movie5.webm'), (60, 'movie6.webm'), (70, 'movie7.webm'), (80, 'movie8.webm'), (130, 'movie9.webm'), (220, 'movie10.webm'),
(240, 'movie11.webm'), (280, 'movie12.webm'), (300, 'movie13.webm'), (320, 'movie14.webm'), (340, 'movie15.webm'), (360, 'movie16.webm'), (380, 'movie17.webm'), (400, 'movie18.webm'), (420, 'movie19.webm'), (440, 'movie20.webm');

