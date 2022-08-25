SELECT * FROM albums
    WHERE artist_name = 'Pink Floyd'

SELECT release_date FROM albums
    WHERE album_name = 'Sgt. Pepper''s Lonely Heart Club Band'

SELECT * FROM albums
    WHERE release_date BETWEEN 1990 AND 1999

SELECT * FROM albums
    WHERE sales < 20000000

SELECT * FROM albums
    WHERE genre = "Rock"