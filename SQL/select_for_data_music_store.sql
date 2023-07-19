SELECT album_title, release_year
FROM Album
WHERE release_year = 1984;

SELECT track_title, duration
FROM Track
ORDER BY duration DESC
LIMIT 1;

SELECT track_title
FROM Track
WHERE duration >= 180; -- 180 seconds

SELECT collection_title
FROM Collection
WHERE release_year BETWEEN 2018 AND 2020;

SELECT performer_name
FROM Performer
WHERE performer_name LIKE '% %';

SELECT track_title
FROM Track
WHERE track_title ILIKE '%Crazy%';


