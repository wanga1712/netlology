-- Вставка данных в таблицу "Жанр"
INSERT INTO Genre (genre_name) VALUES
  ('Rock'),
  ('Pop'),
  ('Electronic'),
  ('Metal'),
  ('Alternative');

-- Вставка данных в таблицу "Исполнитель"
INSERT INTO Performer (performer_name) VALUES
  ('Iron Maiden'),
  ('David Hasselhoff'),
  ('Dan Balan'),
  ('Twisted Sister'),
  ('Savage'),
  ('Daft Punk'),
  ('Blue October'),
  ('Takida'),
  ('Tokio Hotel');

-- Вставка данных в таблицу "Альбом"
INSERT INTO Album (album_title, release_year) VALUES
  ('The Number of the Beast', 1982),
  ('Powerslave', 1984),
  ('Seventh Son of a Seventh Son', 1988),
  ('Looking for Freedom', 1989),
  ('Crazy for You', 1990),
  ('Crazy Loop', 2008),
  ('Freedom', 2010),
  ('Stay Hungry', 1984),
  ('Come Out and Play', 1985),
  ('Savage', 1984),
  ('Hyperactive', 1985),
  ('Homework', 1997),
  ('Discovery', 2001),
  ('Foiled', 2006),
  ('Approaching Normal', 2009),
  ('...Make You Breathe', 2006),
  ('The Darker Instinct', 2009),
  ('Schrei', 2005),
  ('Zimmer 483', 2007);

-- Вставка данных в таблицу "Композиция"
INSERT INTO Track (track_title, duration, album_id) VALUES
  ('Invaders', 180, 1),
  ('Children of the Damned', 210, 1),
  ('The Prisoner', 240, 1),
  ('Aces High', 230, 2),
  ('2 Minutes to Midnight', 270, 2),
  ('Rime of the Ancient Mariner', 525, 2),
  ('Freedom', 270, 3),
  ('Looking for Freedom', 280, 3),
  ('Is Everybody Happy', 240, 3),
  ('Crazy for You', 240, 4),
  ('Lonely Is the Night', 245, 4),
  ('Je T''aime Means I Love You', 220, 4),
  ('my own', 200, 1),
  ('own my', 180, 1),
  ('my', 150, 2),
  ('oh my god', 210, 2),
  ('myself', 190, 3),
  ('by myself', 220, 3),
  ('bemy self', 240, 4),
  ('myself by', 230, 4),
  ('by myself by', 260, 5),
  ('beemy', 170, 5),
  ('premyne', 280, 6);

-- Вставка данных в таблицу "Коллекция"
INSERT INTO Collection (collection_title, release_year) VALUES
  ('Collection 1', 2022),
  ('Collection 2', 2021),
  ('Collection 3', 2023),
  ('Collection 4', 2020),
  ('Collection 5', 2024);

-- Вставка данных в таблицу "Жанр Исполнителя"
INSERT INTO PerformerGenre (performer_id, genre_id) VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5);

-- Вставка данных в таблицу "Альбом Исполнителя"
INSERT INTO AlbumPerformer (album_id, performer_id) VALUES
  (1, 1),
  (2, 1),
  (3, 1),
  (4, 2),
  (5, 2),
  (6, 3),
  (7, 3),
  (8, 4),
  (9, 4),
  (10, 5),
  (11, 5),
  (12, 6),
  (13, 6),
  (14, 7),
  (15, 7),
  (16, 8),
  (17, 8),
  (18, 9),
  (19, 9);

-- Вставка данных в таблицу "Коллекция Композиции"
INSERT INTO CollectionTrack (collection_id, track_id) VALUES
  (1, 1),
  (1, 2),
  (2, 3),
  (2, 4),
  (3, 5);