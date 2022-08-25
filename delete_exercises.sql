--Testing query to get all albums released after 1991
SELECT * FROM albums
    WHERE release_date > 1991;
--Deleting after confirmation
DELETE FROM albums
    WHERE release_date > 1991;
--Testing query to get all albums ith genre Disco
SELECT * FROM albums
    WHERE genre = 'Disco';
--Deleting after confirmation
DELETE FROM albums
    WHERE genre = 'Disco';
--Getting all albums by Whitney Houston
SELECT * FROM albums
    WHERE artist_name = 'Whitney Houston';
--Deleting
DELETE FROM albums
    WHERE artist_name = 'Whitney Houston';
--Checking to see all deletions have worked
SELECT * FROM albums;