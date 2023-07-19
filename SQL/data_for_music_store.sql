-- Вставляет данные в таблицу жанров
INSERT INTO Genre (genre_name) VALUES
  ('Rock'),
  ('Pop'),
  ('Electronic'),
  ('Metal'),
  ('Alternative');

-- Вставляет данные в таблицу исполнителей
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

--Добавляем в ранее созданную таблицу альбомов новое поле performer_id
ALTER TABLE Album
ADD COLUMN performer_id INTEGER,
ADD CONSTRAINT fk_performer
  FOREIGN KEY (performer_id) REFERENCES Performer (performer_id);

-- Вставляет данные в таблицу альбомов

-- Albums for Iron Maiden
INSERT INTO Album (album_title, release_year, performer_id) VALUES
  ('The Number of the Beast', 1982, 1),
  ('Powerslave', 1984, 1),
  ('Seventh Son of a Seventh Son', 1988, 1);

-- Albums for David Hasselhoff
INSERT INTO Album (album_title, release_year, performer_id) VALUES
  ('Looking for Freedom', 1989, 2),
  ('Crazy for You', 1990, 2);

-- Albums for Dan Balan
INSERT INTO Album (album_title, release_year, performer_id) VALUES
  ('Crazy Loop', 2008, 3),
  ('Freedom', 2010, 3);

-- Albums for Twisted Sister
INSERT INTO Album (album_title, release_year, performer_id) VALUES
  ('Stay Hungry', 1984, 4),
  ('Come Out and Play', 1985, 4);

-- Albums for Savage
INSERT INTO Album (album_title, release_year, performer_id) VALUES
  ('Savage', 1984, 5),
  ('Hyperactive', 1985, 5);

-- Albums for Daft Punk
INSERT INTO Album (album_title, release_year, performer_id) VALUES
  ('Homework', 1997, 6),
  ('Discovery', 2001, 6);

-- Albums for Blue October
INSERT INTO Album (album_title, release_year, performer_id) VALUES
  ('Foiled', 2006, 7),
  ('Approaching Normal', 2009, 7);

-- Albums for Takida
INSERT INTO Album (album_title, release_year, performer_id) VALUES
  ('...Make You Breathe', 2006, 8),
  ('The Darker Instinct', 2009, 8);

-- Albums for Tokio Hotel
INSERT INTO Album (album_title, release_year, performer_id) VALUES
  ('Schrei', 2005, 9),
  ('Zimmer 483', 2007, 9);

-- Вставляет выборочные данные в таблицу композиции
-- Tracks for Iron Maiden - Album 'The Number of the Beast'
INSERT INTO Track (track_title, duration, album_id) VALUES
  ('Invaders', 180, 1),
  ('Children of the Damned', 210, 1),
  ('The Prisoner', 240, 1);

-- Tracks for Iron Maiden - Album 'Powerslave'
INSERT INTO Track (track_title, duration, album_id) VALUES
  ('Aces High', 230, 2),
  ('2 Minutes to Midnight', 270, 2),
  ('Rime of the Ancient Mariner', 525, 2);

-- Tracks for David Hasselhoff - Album 'Looking for Freedom'
INSERT INTO Track (track_title, duration, album_id) VALUES
  ('Freedom', 270, 3),
  ('Looking for Freedom', 280, 3),
  ('Is Everybody Happy', 240, 3);

-- Tracks for David Hasselhoff - Album 'Crazy for You'
INSERT INTO Track (track_title, duration, album_id) VALUES
  ('Crazy for You', 240, 4),
  ('Lonely Is the Night', 245, 4),
  ('Je T'aime Means I Love You', 220, 4);

-- Вставляет выборочные данные в таблицу сбора
INSERT INTO Collection (collection_title, release_year) VALUES
  ('Collection 1', 2022),
  ('Collection 2', 2021),
  ('Collection 3', 2023),
  ('Collection 4', 2020),
  ('Collection 5', 2024);

-- Вставляет примерные данные в таблицу жанров исполнителей
INSERT INTO PerformerGenre (performer_id, genre_id) VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5);

-- Вставляет примерные данные в таблицу исполнителей альбома
INSERT INTO AlbumPerformer (album_id, performer_id) VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5);

-- Вставляет выборочные данные в таблицу отслеживания сбора
INSERT INTO CollectionTrack (collection_id, track_id) VALUES
  (1, 1),
  (1, 2),
  (2, 3),
  (2, 4),
  (3, 5);
