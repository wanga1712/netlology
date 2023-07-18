-- Создание таблицы жанров
CREATE TABLE Genre (
  genre_id SERIAL PRIMARY KEY,
  genre_name VARCHAR(255) NOT NULL
);

-- Создание таблицы исполнителей
CREATE TABLE Performer (
  performer_id SERIAL PRIMARY KEY,
  performer_name VARCHAR(255) NOT NULL
);

-- Создание таблицы альбомов
CREATE TABLE Album (
  album_id SERIAL PRIMARY KEY,
  album_title VARCHAR(255) NOT NULL,
  release_year INTEGER
);

-- Создание таблицы отслеживания
CREATE TABLE Track (
  track_id SERIAL PRIMARY KEY,
  track_title VARCHAR(255) NOT NULL,
  duration INTEGER,
  album_id INTEGER,
  FOREIGN KEY (album_id) REFERENCES Album(album_id)
);

-- Создание таблицы коллекции
CREATE TABLE Collection (
  collection_id SERIAL PRIMARY KEY,
  collection_title VARCHAR(255) NOT NULL,
  release_year INTEGER
);

-- Создание таблицы жанров исполнителей для связи между исполнителем и жанром
CREATE TABLE PerformerGenre (
  performer_id INTEGER,
  genre_id INTEGER,
  FOREIGN KEY (performer_id) REFERENCES Performer(performer_id),
  FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
);

-- Создание таблицы исполнителей альбома для связи между альбомом и исполнителем
CREATE TABLE AlbumPerformer (
  album_id INTEGER,
  performer_id INTEGER,
  FOREIGN KEY (album_id) REFERENCES Album(album_id),
  FOREIGN KEY (performer_id) REFERENCES Performer(performer_id)
);

-- Создание таблицы отслеживания коллекции для связи между коллекцией и дорожкой
CREATE TABLE CollectionTrack (
  collection_id INTEGER,
  track_id INTEGER,
  FOREIGN KEY (collection_id) REFERENCES Collection(collection_id),
  FOREIGN KEY (track_id) REFERENCES Track(track_id)
);
