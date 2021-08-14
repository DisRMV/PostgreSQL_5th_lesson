-- №1 количество исполнителей в каждом жанре
SELECT title, COUNT(name) AS artist_by_genre
FROM artist
	JOIN artistgenre ON artist.id = artistgenre.artist_id 
	JOIN genre ON artistgenre.genre_id = genre.id
GROUP BY title
ORDER BY 2 DESC;

-- №2 количество треков, вошедших в альбомы 2019-2020 годов
SELECT COUNT(song.title) AS number_of_songs
FROM song JOIN album ON album.id = song.album_id
WHERE album.release_year BETWEEN 2019 AND 2020;

-- №3 средняя продолжительность треков по каждому альбому
SELECT album.title, CASE WHEN AVG(song.duration) IS NULL THEN 0 
					     ELSE ROUND(AVG(song.duration), 0) 
					END
					AS avg_duration
FROM album LEFT JOIN song ON album.id = song.album_id
GROUP BY album.title
ORDER BY 2 DESC;

-- №4 все исполнители, которые не выпустили альбомы в 2020 году
SELECT name 
FROM artist 
WHERE name NOT IN (SELECT name 
				   FROM artist a
					   JOIN artistalbum aa ON a.id = aa.artist_id
					   JOIN album al ON aa.album_id = al.id
				   WHERE release_year = 2020);

-- №5 названия сборников, в которых присутствует конкретный исполнитель (выберите сами)
SELECT DISTINCT c.title 
FROM collection c
	JOIN songcollection sc ON c.id = sc.collection_id 
	JOIN song s ON s.id = sc.song_id 
	JOIN songartist sa ON s.id = sa.song_id 
	JOIN artist a ON a.id = sa.artist_id 
WHERE a.name = 'Aerosmith'
ORDER BY 1;

-- №6 название альбомов, в которых присутствуют исполнители более 1 жанра
SELECT al.title 
FROM album al
	JOIN artistalbum aa ON al.id = aa.album_id 
WHERE aa.artist_id IN (SELECT artist_id
						FROM artistgenre 
						GROUP BY artist_id 
						HAVING COUNT(genre_id) > 1)
ORDER BY 1; 

-- №7 наименование треков, которые не входят в сборники
SELECT title
FROM song s 
	LEFT JOIN songcollection sc ON s.id = sc.song_id 
WHERE sc.song_id IS NULL;

-- №8 исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько)
SELECT name 
FROM artist a 
	JOIN songartist sa ON a.id = sa.artist_id 
	JOIN song s ON s.id = sa.song_id
WHERE s.duration = (SELECT MIN(duration) 
					FROM song);

-- №9 название альбомов, содержащих наименьшее количество треков
SELECT a.title 
FROM album a 
	JOIN song s ON a.id = s.album_id 
GROUP BY a.title
HAVING COUNT(s.title) = (SELECT COUNT(*)
						 FROM song 
						 GROUP BY album_id
						 ORDER BY 1
						 LIMIT 1)
ORDER BY 1;