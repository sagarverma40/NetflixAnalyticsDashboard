CREATE DATABASE netflix_db;
USE netflix_db;

CREATE TABLE Movies (
	movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    type VARCHAR(50),
    releaseYear INT,
    imdbId VARCHAR(20),
    imdbAverageRating FLOAT,
    imdbNumVotes INT
); 

CREATE TABLE Generes (
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    movie_id INT,
    genre VARCHAR(100),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);

CREATE TABLE Countries (
    country_id INT AUTO_INCREMENT PRIMARY KEY,
    movie_id INT, 
    availableCountry VARCHAR(100),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);
	
GRANT ALL PRIVILEGES ON netflix_db.* TO 'root'@'localhost';
FLUSH PRIVILEGES;

ALTER TABLE Movies ADD COLUMN genres VARCHAR(255);
ALTER TABLE Movies ADD COLUMN availableCountries VARCHAR(255);
ALTER TABLE Movies MODIFY availableCountries VARCHAR(255);
ALTER TABLE Movies MODIFY COLUMN availableCountries VARCHAR(1000);

DESCRIBE Movies;
DESCRIBE countries;

ALTER TABLE countries ADD COLUMN title VARCHAR(255);

ALTER TABLE countries ADD COLUMN availableCountries VARCHAR(1000);

DROP TABLE generes;







   
    