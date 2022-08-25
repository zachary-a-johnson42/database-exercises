--Selecting all albums by Pink Floyd
SELECT * FROM albums
    WHERE artist_name = 'Pink Floyd'
--Selecting the release date of Sgt Peppers
SELECT release_date FROM albums
    WHERE album_name = 'Sgt. Pepper''s Lonely Heart Club Band'
--Selecting all albums from the 90s
SELECT * FROM albums
    WHERE release_date BETWEEN 1990 AND 1999
--Selecting all albums that earned less than 20 million
SELECT * FROM albums
    WHERE sales < 20000000
--Selecting all albums that are in the rock genre
SELECT * FROM albums
    WHERE genre = "Rock"

--Only gets exact Rock albums, not hard rock, or folk rock.
--Have to use %Rock%?
-- SELECT * FROM albums
--  WHERE genre LIKE %Rock%