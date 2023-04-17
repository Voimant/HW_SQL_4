CREATE TABLE IF NOT EXISTS Genres
(
	genres_id serial PRIMARY KEY,
	genre_title varchar(40) NOT NULL
);
CREATE TABLE IF NOT EXISTS executor
(
	executor_id serial PRIMARY KEY,
	nickname varchar(40) NOT NULL
);
CREATE TABLE IF NOT EXISTS genre_executor
(
	genre_id int REFERENCES Genres(genres_id),
	executor_id int REFERENCES executor(executor_id),
	CONSTRAINT genre_execuror_id PRIMARY KEY (genre_id,executor_id)
);
CREATE TABLE IF NOT EXISTS album
(
	album_id serial PRIMARY KEY,
	album_title varchar(80) NOT NULL,
	year_of_release int NOT NULL
);
CREATE TABLE IF NOT EXISTS album_executor
(
	executor_id int REFERENCES executor(executor_id),
	album_id int REFERENCES album(album_id),
	CONSTRAINT album_executor_id PRIMARY KEY (executor_id,album_id)
);
CREATE TABLE IF NOT EXISTS collection
(
	collection_id serial PRIMARY KEY,
	title varchar(80) NOT NULL,
	year_of_release int NOT NULL
);
CREATE TABLE IF NOT EXISTS tracks
(
	track_id serial PRIMARY KEY,
	track_title varchar(80) NOT NULL,
	duration int NOT NULL,
	album_id int REFERENCES album(album_id)
);
CREATE TABLE IF NOT EXISTS track_collection
(
	track_id int REFERENCES tracks(track_id),
	collection_id int REFERENCES collection(collection_id),
	CONSTRAINT track_collection_id PRIMARY KEY (track_id,collection_id)
);