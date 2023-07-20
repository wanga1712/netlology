--Получить названия композиций из таблицы "Track", которые содержат слово "my" в разных позициях:
SELECT track_title
FROM Track
WHERE
    -- Соответствует точно названию композиции "my"
    track_title = 'my'
    OR
    -- Соответствует "my" в начале названия композиции с пробелом после
    track_title LIKE 'my %'
    OR
    -- Соответствует "my" в конце названия композиции с пробелом перед
    track_title LIKE '% my'
    OR
    -- Соответствует "my" в середине названия композиции, окруженное пробелами
    track_title LIKE '% my %'
    OR
    -- Соответствует "my" в начале названия композиции без пробела после
    track_title LIKE 'my''%'
    OR
    -- Соответствует "my" в конце названия композиции без пробела перед
    track_title LIKE '%''my';

--Получить названия альбомов и годы выпуска из таблицы "Album", где год выпуска равен 1984:
SELECT album_title, release_year
FROM Album
WHERE release_year = 1984;

--Получить название и продолжительность самой длинной композиции из таблицы "Track":
SELECT track_title, duration
FROM Track
ORDER BY duration DESC
LIMIT 1;

--Получить названия композиций из таблицы "Track", у которых продолжительность не менее 180 секунд:
SELECT track_title
FROM Track
WHERE duration >= 180; -- 180 секунд

--Получить названия коллекций из таблицы "Collection", выпущенных с 2018 по 2020 год:
SELECT collection_title
FROM Collection
WHERE release_year BETWEEN 2018 AND 2020;

--Получить имена исполнителей из таблицы "Performer", которые содержат пробелы в своих именах:
SELECT performer_name
FROM Performer
WHERE performer_name LIKE '% %';

--Получить названия композиций из таблицы "Track", содержащие слово "Crazy" без учета регистра:
SELECT track_title
FROM Track
WHERE track_title ILIKE '%Crazy%';

-- Возвращает названия композиций из таблицы Track
-- где название композиции содержит слово "my" (регистронезависимое сравнение)
SELECT track_title
FROM Track
WHERE
-- Преобразует название композиции к нижнему регистру и разделяет его на слова, используя пробел как разделитель
    string_to_array(lower(track_title), ' ') && ARRAY['my'];