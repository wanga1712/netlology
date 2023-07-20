-- Создание таблицы "Жанр"
CREATE TABLE Genre (
    genre_id SERIAL PRIMARY KEY,
    genre_name VARCHAR(100) NOT NULL
);

-- Создание таблицы "Исполнитель"
CREATE TABLE Performer (
    performer_id SERIAL PRIMARY KEY,
    performer_name VARCHAR(100) NOT NULL
);

-- Создание таблицы "Альбом"
CREATE TABLE Album (
    album_id SERIAL PRIMARY KEY,
    album_title VARCHAR(200) NOT NULL,
    release_year INTEGER NOT NULL
);

-- Создание таблицы "Композиция"
CREATE TABLE Track (
    track_id SERIAL PRIMARY KEY,
    track_title VARCHAR(200) NOT NULL,
    duration INTEGER NOT NULL,
    album_id INTEGER NOT NULL,
    CONSTRAINT fk_album FOREIGN KEY (album_id) REFERENCES Album (album_id) ON DELETE CASCADE
);

-- Создание таблицы "Коллекция"
CREATE TABLE Collection (
    collection_id SERIAL PRIMARY KEY,
    collection_title VARCHAR(200) NOT NULL,
    release_year INTEGER NOT NULL
);

-- Создание таблицы "Жанр Исполнителя"
CREATE TABLE PerformerGenre (
    performer_id INTEGER NOT NULL,
    genre_id INTEGER NOT NULL,
    PRIMARY KEY (performer_id, genre_id),
    CONSTRAINT fk_performer FOREIGN KEY (performer_id) REFERENCES Performer (performer_id) ON DELETE CASCADE,
    CONSTRAINT fk_genre FOREIGN KEY (genre_id) REFERENCES Genre (genre_id) ON DELETE CASCADE
);

-- Создание таблицы "Альбом Исполнителя"
CREATE TABLE AlbumPerformer (
    album_id INTEGER NOT NULL,
    performer_id INTEGER NOT NULL,
    PRIMARY KEY (album_id, performer_id),
    CONSTRAINT fk_album_performer FOREIGN KEY (album_id) REFERENCES Album (album_id) ON DELETE CASCADE,
    CONSTRAINT fk_performer_album FOREIGN KEY (performer_id) REFERENCES Performer (performer_id) ON DELETE CASCADE
);

-- Создание таблицы "Коллекция Композиции"
CREATE TABLE CollectionTrack (
    collection_id INTEGER NOT NULL,
    track_id INTEGER NOT NULL,
    PRIMARY KEY (collection_id, track_id),
    CONSTRAINT fk_collection FOREIGN KEY (collection_id) REFERENCES Collection (collection_id) ON DELETE CASCADE,
    CONSTRAINT fk_track FOREIGN KEY (track_id) REFERENCES Track (track_id) ON DELETE CASCADE
);
