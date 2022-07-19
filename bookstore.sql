CREATE DATABASE books;

USE books; 
CREATE TABLE ashleybooks (id integer, name TEXT, author TEXT, genre TEXT, length INTEGER, publish_date INTEGER);

INSERT INTO ashleybooks VALUES (1, "Some Are Always Hungry", "Yun, Jihyun", "poetry", 90, 2020);
INSERT INTO ashleybooks VALUES (2, "Little Women", "Alcott, Louisa May", "fiction", 777, 1868);
INSERT INTO ashleybooks VALUES (3, "The Handmaid's Tale", "Atwood, Margaret", "fiction", 336, 1985);
INSERT INTO ashleybooks VALUES (4, "And Then There Were None", "Christie, Agatha", "fiction", 272, 1939);
INSERT INTO ashleybooks VALUES (5, "D'Aulaires Book of Greek Myths", "d'Aulaire, Ingri and Edgar Parin", "fiction", 208, 1992);
INSERT INTO ashleybooks VALUES (6, "One Hundred Years of Solitude", "Garcia Marquez, Gabriel", "fiction", 448, 1967);
INSERT INTO ashleybooks VALUES (7, "Theogony", "Hesiod", "fiction", 32, 0);
INSERT INTO ashleybooks VALUES (8, "Free Food for Millionaires", "Lee, Min Jin", "fiction", 624, 2007);
INSERT INTO ashleybooks VALUES (9, "Pachinko", "Lee, Min Jin", "fiction", 512, 2017);
INSERT INTO ashleybooks VALUES (10, "Circe", "Miller, Madeline", "fiction", 416, 2018);
INSERT INTO ashleybooks VALUES (11, "Beloved", "Morrison, Toni", "fiction", 352, 1987);
INSERT INTO ashleybooks VALUES (12, "Colorless Tsukuru Tazaki and His Years of Pilgrimage", "Murakami, Haruki", "fiction", 336, 2018);
INSERT INTO ashleybooks VALUES (13, "Feelings and Faith: Cultivating Godly Emotions in the Christian Life", "Borgman, Brian", "christian", 249, 2009);
INSERT INTO ashleybooks VALUES (14, "Respectable Sins: Confronting the Sins We Tolerate", "Bridges, Jerry", "christian", 288, 2007);
INSERT INTO ashleybooks VALUES (15, "The Pilgrim's Progress", "Bunyan, John", "christian", 248, 1678);
INSERT INTO ashleybooks VALUES (16, "A Little Book on the Christian Life", "Calvin, John", "christian", 132, 1539);
INSERT INTO ashleybooks VALUES (17, "Homo Deus: A Brief History of Tomorrow", "Harari, Yuval Noah", "nonfiction", 464, 2018);
INSERT INTO ashleybooks VALUES (18, "Sapiens: A Brief History of Humankind", "Harari, Yuval Noah", "nonfiction",  464, 2011);
INSERT INTO ashleybooks VALUES (19, "The Spider's Thread: Metaphor in Mind, Brain, and Poetry", "Holyoak, Keith", "nonfiction", 288, 2019);
INSERT INTO ashleybooks VALUES (20, "The Making of Asian America: A History", "Lee, Erika", "nonfiction", 560, 2015);
INSERT INTO ashleybooks VALUES (21, "What If?: Serious Scientific Answers to Absurd Hypothetical Questions", "Munroe, Randall", "nonfiction", 320, 2014);


SELECT * FROM  ashleybooks; 

SELECT SUM(length) FROM ashleybooks GROUP BY genre;

SELECT MAX(length) FROM ashleybooks; 
SELECT AVG(length) FROM ashleybooks; 
SELECT MIN(length) FROM ashleybooks; 

SELECT MAX(publish_date) FROM ashleybooks; 
SELECT AVG(publish_date) FROM ashleybooks; 
SELECT MIN(publish_date) FROM ashleybooks; 

SELECT count(name) FROM ashleybooks WHERE genre = "fiction";
SELECT count(name) FROM ashleybooks WHERE genre = "nonfiction";
SELECT count(name) FROM ashleybooks WHERE genre = "poetry";
SELECT count(name) FROM ashleybooks WHERE genre = "christian";

SELECT name FROM ashleybooks WHERE genre = "fiction" OR publish_date > 2010;

SELECT name FROM ashleybooks WHERE genre = "fiction" AND publish_date > 2010 AND length > 200; 

SELECT name, publish_date,
    CASE 
        WHEN publish_date > 2010 THEN "new new"
        WHEN publish_date > 1900 THEN "modern"
        WHEN publish_date > 1700 THEN "classic"
    END as "time_period"
FROM ashleybooks;