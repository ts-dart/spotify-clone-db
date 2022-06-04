CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE plans (
  plan_id INTEGER NOT NULL,
  plan VARCHAR(100) NOT NULL,
  value_plan DOUBLE NOT NULL,
  CONSTRAINT PRIMARY KEY(plan_id)
);

INSERT INTO plans(plan_id, plan, value_plan)
VALUES 
  (1, 'gratuito', 0),
  (2, 'familiar', 7.99),
  (3, 'universitario', 5.99),
  (4, 'pessoal', 6.99);

CREATE TABLE artists (
  artist_id INTEGER NOT NULL AUTO_INCREMENT,
  artist VARCHAR(100) NOT NULL,
  CONSTRAINT PRIMARY KEY(artist_id)
);

INSERT INTO artists(artist_id, artist)
VALUES
  (1,	'Walter Phoenix'),
  (2,	'Peter Strong'),
  (3,	'Lance Day'),
  (4,	'Freedie Shannon'),
  (5,	'Tyler Isle'),
  (6,	'Fog');

CREATE TABLE users(
  user_id INTEGER NOT NULL AUTO_INCREMENT,
  user VARCHAR(100) NOT NULL,
  age INTEGER NOT NULL,
  plan_id INTEGER NOT NULL,
  signature_date DATE NOT NULL,
  CONSTRAINT PRIMARY KEY(user_id),
  FOREIGN KEY (plan_id) REFERENCES plans (plan_id)
);

INSERT INTO users (user_id, user, age, plan_id, signature_date)
VALUES
  (1,	'Thati',	23,	1,	'2019-10-20'),
  (2,	'Cintia',	35,	2,	'2017-12-30'),
  (3,	'Bill',	20,	3,	'2019-06-05'),
  (4,	'Roger',	45,	4,	'2020-05-13'),
  (5,	'Norman',	58,	4,	'2017-02-17'),
  (6,	'Patrick',	33,	2,	'2017-01-06'),
  (7,	'Vivian',	26,	3,	'2018-01-05'),
  (8,	'Carol',	19,	3,	'2018-02-14'),
  (9,	'Angelina',	42,	2,	'2018-04-29'),
  (10, 'Paul',	46,	2,	'2017-01-17');

CREATE TABLE albums(
  album_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  album VARCHAR(100) NOT NULL,
  artist_id INTEGER NOT NULL,
  release_date YEAR NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
);

INSERT INTO albums (album_id, album, artist_id, release_date)
VALUES
(1,	'Envious',	1,	1990),
(2,	'Exuberant',	1,	1993),
(3,	'Hallowed Steam',	2,	1995),
(4,	'Incandescent',	3,	1998),
(5,	'Temporary Culture',	4,	2001),
(6,	'Library of liberty',	4,	2003),
(7,	'Chained Down',	5,	2007),
(8,	'Cabinet of fools',	5,	2012),
(9,	'No guarantees',	5,	2015),
(10, 'Apparatus',	6,	2015);

CREATE TABLE followers(
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INTEGER NOT NULL,
  artist_id INTEGER NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
);

INSERT INTO followers (id, user_id, artist_id)
VALUES
(1,	1, 1),
(2,	1, 4),
(3,	1, 3),
(4,	2, 1),
(5,	2, 3),
(6,	3, 2),
(7,	3, 1),
(8,	4, 4),
(9,	5, 5),
(10, 5,	6),
(12, 6,	6),
(13, 6,	3),
(14, 6,	1),
(15, 7,	2),
(16, 7,	5),
(17, 8,	1),
(18, 8,	5),
(19, 9,	6),
(20, 9,	4),
(21, 9,	3),
(22, 10, 2),
(23, 10, 6);

CREATE TABLE songs(
  song_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  song VARCHAR(100) NOT NULL,
  duration_seconds INTEGER NOT NULL,
  album_id INTEGER NOT NULL,
  FOREIGN KEY (album_id) REFERENCES albums (album_id)
);

INSERT INTO songs (song_id, song, duration_seconds, album_id)
VALUES
  (1,	'Soul For Us', 200,	1),
  (2,	'Reflections Of Magic',	163,	1),
  (3,	'Dance With Her Own',	116,	1),
  (4,	'Troubles Of My Inner Fire',	203,	2),
  (5,	'Time Fireworks',	152,	2),
  (6,	'Magic Circus',	105,	3),
  (7,	'Honey, So Do I',	207,	3),
  (8,	"Sweetie, Let's Go Wild",	139,	3), # <-- PODE SER AQUI
  (9,	'She Knows',	244,	3),
  (10, 'Fantasy For Me',	100,	4),
  (11, 'Celebration Of More',	146,	4),
  (12, 'Rock His Everything',	223,	4),
  (13, 'Home Forever',	231,	4),
  (14, 'Diamond Power',	241,	4),
  (15, "Let's Be Silly",	132,	4), # <-- AQUI
  (16, 'Thang Of Thunder',	240,	5),
  (17, 'Words Of Her Life',	185,	5),
  (18, 'Without My Streets',	176,	5),
  (19, 'Need Of The Evening',	190,	6)
  (20, 'History Of My Roses',	222,	6),
  (21, 'Without My Love',	111,	6),
  (22, 'Walking And Game',	123,	6),
  (23, 'Young And Father',	197,	6),
  (24, 'Finding My Traditions',	179,	7)
  (25, 'Walking And Man',	229,	7)
  (26, 'Hard And Time',	135,	7),
  (27, "Honey, I'm A Lone Wolf",	150,	7) # <-- AQUI
  (28, "She Thinks I Won't Stay Tonight",	166,	8), # <-- AQUI
  (29, "He Heard You're Bad For Me",	154,	8), # <-- AQUI
  (30, "He Hopes We Can't Stay",	210,	8), # <-- AQUI
  (31, 'I Know I Know',	117,	8),
  (32, "He's Walking Away",	159,	9), # <-- AQUI
  (33, "He's Trouble"	138,	9), # <-- AQUI
  (34, 'I Heard I Want To Bo Alone',	120,	9),
  (35, 'I Ride Alone',	151,	9),
  (36, 'Honey',	79,	10),
  (37, 'You Cheated On Me',	95,	10),
  (38, "Wouldn't It Be Nice",	213,	10), # <-- AQUI
  (39, 'Baby',	136,	10),
  (40, 'You Make Me Feel So..',	83,	10);