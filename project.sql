CREATE DATABASE Music;
USE  Music;
select * from band;
CREATE TABLE Band(
id INT NOT NULL auto_increment,
name VARCHAR(56),
band_id INT NOT NULL,
Primary key(id));
INSERT INTO Band(name,band_id)VALUES('The Beetle',1),('R & B',2),('Sia',3),('Camp Rock',4),('ASHAKE',5),('Blondie',6);
CREATE TABLE Songs(
id INT NOT NULL auto_increment,
name VARCHAR(56),
rating varchar(30),
length int(20),
album_id INT NOT NULL,
PRIMARY KEY(id));
INSERT INTO Songs(name,rating,length,album_id)
VALUES('FIA','5',3.2,1),('R & B','4',4.3,2),('FALL','5',3.0,3),('HAPPY','3.5',2.3,2);
SELECT * FROM Band;
SELECT AVg(length) from songs;
SELECT max(length)  from songs;
SELECT  max(length)  FROM songs RIGHT JOIN album on album.id=songs.album_id;
CREATE TABLE Album(
id INT NOT NULL auto_increment,
name VARCHAR(56),
rating varchar(30),
realse_year VARCHAR(20),
band_id INT NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY (band_id) references band(id));
INSERT INTO Album (name,rating,realse_year,band_id)
VALUES('ty','5','2003',1),('Made in lAGOS','4','2004',2),('DAVIDO','5','2007',4);
SELECT * FROM Band;
INSERT INTO Album (name,rating,realse_year,band_id)
VALUES('ty','5','NULL',1);
SELECT * FROM Album;
SELECT * FROM Band where name='';
SELECT * FROM ALBUM WHERE realse_year='';
UPDATE Album SET realse_year='1986' where realse_year='';
SELECT * FROM Album;
SELECT * FROM Band;
INSERT INTO Band(name)VALUES('ariana grande');
INSERT INTO Album (name,rating,realse_year,band_id)
VALUES('thank you','5','NULL',3);
