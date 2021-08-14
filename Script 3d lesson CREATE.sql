CREATE TABLE Genre (
	id SERIAL PRIMARY KEY,
	title VARCHAR(30) NOT NULL UNIQUE
);
CREATE TABLE Artist (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);
CREATE TABLE Album (
	id SERIAL PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	release_year INT CHECK(release_year BETWEEN 0 AND DATE_PART('year', CURRENT_DATE))
);
CREATE TABLE Song (
	id SERIAL PRIMARY KEY,
	title VARCHAR(100),
	duration INT,
	album_id INT REFERENCES Album(id)
);
CREATE TABLE Collection (
	id SERIAL PRIMARY KEY,
	title VARCHAR(100),
	release_year INT CHECK(release_year BETWEEN 0 AND DATE_PART('year', CURRENT_DATE))
);
CREATE TABLE ArtistGenre (
	genre_id INT REFERENCES Genre(id),
	artist_id INT REFERENCES Artist(id),
	CONSTRAINT ag PRIMARY KEY (genre_id, artist_id)
);
CREATE TABLE ArtistAlbum (
	artist_id INT REFERENCES Artist(id),
	album_id INT REFERENCES Album(id),
	CONSTRAINT aa PRIMARY KEY (album_id, artist_id)
);
CREATE TABLE SongCollection (
	song_id INT REFERENCES Song(id),
	collection_id INT REFERENCES Collection(id),
	CONSTRAINT sc PRIMARY KEY (song_id, collection_id)
);
CREATE TABLE SongArtist (
	song_id INT REFERENCES Song(id),
	artist_id INT REFERENCES Artist(id),
	CONSTRAINT sa PRIMARY KEY (song_id, artist_id)
);
