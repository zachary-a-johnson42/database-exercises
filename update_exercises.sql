--Selecting whole table
SELECT * FROM albums;
--Updating all sales
UPDATE albums
SET sales = sales * 10;

--Testing select
SELECT * FROM albums
    WHERE release_date < 1980;
--Updating all albums released before 1980
UPDATE albums
SET release_date = release_date - 100
    WHERE release_date < 1980;
--Testing Select
SELECT * FROM albums
    WHERE artist_name = 'Michael Jackson';
--Updating name to Peter Jackson
UPDATE albums
SET artist_name = 'Peter Jackson'
    WHERE artist_name = 'Michael Jackson';
--Query to make sure all updates worked
SELECT * FROM albums;