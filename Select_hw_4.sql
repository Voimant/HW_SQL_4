-- количество исполнителей в каждом жанре
SELECT genre_title, COUNT(nickname) 
FROM genres g
JOIN genre_executor ge ON g.genres_id = ge.genre_id
JOIN executor e ON ge.executor_id = e.executor_id 
GROUP BY genre_title;


--2 кол-во треков вошедщих в альбомы 2019-2020

SELECT	COUNT(t.track_title) FROM tracks t
JOIN album a ON t.album_id = a.album_id
WHERE a.year_of_release BETWEEN 2019 AND 2020;

--3 Средняя продолжительность треков по каждому альбому

SELECT a.album_title, AVG (t.duration)
FROM album a JOIN tracks t 
ON a.album_id = t.album_id
GROUP BY a.album_title;

--4 Все исполнители, которые не выпустили альбомы в 2020 году

SELECT nickname FROM executor 
WHERE nickname  NOT IN (SELECT nickname
				FROM executor e
				JOIN album_executor ae ON e.executor_id = ae.executor_id 
				JOIN album a ON ae.album_id = a.album_id
				WHERE year_of_release = 2020);
			
-- 5 Названия сборников, в которых присутствует конкретный исполнитель
SELECT title FROM collection c
JOIN track_collection tc ON tc.collection_id = c.collection_id
JOIN album a ON a.album_id  = c.collection_id
JOIN album_executor ae ON ae.album_id  = a.album_id 
JOIN executor e ON e.executor_id  = ae.executor_id 
WHERE nickname = 'Korn';

-- 6 Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT DISTINCT(album_title) FROM album a
JOIN album_executor ae ON a.album_id = ae.album_id 
JOIN executor e ON ae.executor_id = e.executor_id
JOIN genre_executor ge ON e.executor_id  = ge.executor_id 
JOIN genres g ON ge.genre_id = g.genres_id
GROUP BY album_title, e.executor_id
HAVING COUNT(ge.genre_id) > 1;

-- 7 Наименования треков, которые не входят в сборники.
SELECT track_title FROM tracks t 
LEFT JOIN track_collection tc ON t.track_id = tc.track_id 
WHERE tc.track_id IS  NULL;

--8 Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько

SELECT nickname, FROM executor e 
JOIN album_executor ae ON e.executor_id =  ae.executor_id 
JOIN album a ON ae.album_id = a.album_id
JOIN tracks t ON a.album_id = t.album_id 
WHERE duration = (SELECT min(duration) FROM tracks);

-- 9 Названия альбомов, содержащих наименьшее количество треков
SELECT album_title FROM album a
JOIN tracks t ON a.album_id = t.album_id
GROUP BY a.album_title
HAVING COUNT(t.track_title) = (SELECT count(t.track_title)
								FROM tracks t JOIN album a ON t.album_id = a.album_id
								GROUP BY a.album_title
								ORDER BY COUNT(t.track_title)
								LIMIT 1);





