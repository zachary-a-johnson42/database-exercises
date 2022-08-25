DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist_name VARCHAR(50),
    album_name VARCHAR(50),
    release_date INT,
    genre VARCHAR(50),
    sales DECIMAL,
    PRIMARY KEY (id)
);

