CREATE TABLE MOVIES(
ID INT NOT NULL PRIMARY KEY,
TITLE VARCHAR (50) NOT NULL, 
DIRECTOR VARCHAR (50) NOT NULL,
YEAR INT NOT NULL,
LENGTH_MINUTES INT NOT NULL
);

INSERT INTO MOVIES (ID, TITLE, DIRECTOR,YEAR, LENGTH_MINUTES)
VALUES
(1, 'Toy Story', 'John Lasseter', 1995, 81), 
(2, 'A Bugs Life', 'John Lasseter', 1998, 95),
(3, 'Toy Story 2', 'john Lasseter', 1999, 93), 
(4, 'Monsters, Inc.', 'Pete Docter', 2001, 92), 
(5, 'Finding Nemo', 'Andrew Stanton', 2003, 107),
(6, 'The Incredibles', 'Brad Bird', 2004, 116), 
(7, 'Cars', 'John Lasseter', 2006, 117), 
(8, 'Ratatouille', 'Brad Bird', 2007, 115), 
(9, 'WALL-E', 'Andrew Stanton', 2008, 104),
(10, 'Up', 'Pete Docter', 2009, 101), 
(11, 'Toy Story 3', 'Lee Unkrich', 2010, 103),
(12, 'Cars 2', 'John Lasseter', 2011, 120), 
(13, 'Brave', 'Brenda Chapman', 2012, 102), 
(14, 'Monsters University', 'Dan Scanlon', 2013, 110);

SELECT * FROM MOVIES

--1. Find the title of each film 
SELECT TITLE
FROM MOVIES

--2. Find the director of each film 
SELECT DIRECTOR
FROM MOVIES

--3. Find the title and director of each film 
SELECT TITLE, DIRECTOR 
FROM MOVIES

--4. Find the title and year of each film
SELECT TITLE, YEAR
FROM MOVIES

--5. Find all the information about each film
SELECT * FROM MOVIES

--6. Find the movie with a row id of 6 
SELECT * 
FROM movies 
WHERE id = 6;

--7. Find the movies released in the years between 2000 and 2010
SELECT * 
FROM movies 
WHERE year BETWEEN 2000 AND 2010;

--8. Find the movies not released in the years between 2000 and 2010
SELECT * 
FROM movies 
WHERE year NOT BETWEEN 2000 AND 2010;

--9. Find the first 5 Pixar movies and their release year 
SELECT TOP 5 TITLE, year 
FROM movies 

--10. Find all the Toy Story movies 
SELECT * 
FROM movies 
where TITLE = 'toy story'

--11. Find all the movies directed by John Lasseter
SELECT * 
FROM movies 
where DIRECTOR = 'john Lasseter'

--12. Find all the movies (and director) not directed by John Lasseter 
SELECT * 
FROM movies 
where NOT DIRECTOR = 'john Lasseter'

--13. Find all the WALL-* movies 
SELECT * 
FROM movies 
WHERE TITLE LIKE 'WALL-%';

--14. List all directors of Pixar movies (alphabetically), without duplicates
SELECT DISTINCT DIRECTOR 
FROM movies 
ORDER BY DIRECTOR ASC;

--15. List the last four Pixar movies released (ordered from most recent to least)
SELECT TOP 4 TITLE, YEAR
FROM movies
ORDER BY YEAR DESC;

--16. List the first five Pixar movies sorted alphabetically 
SELECT TOP 5 TITLE
FROM movies
ORDER BY TITLE ASC;

--17. List the next five Pixar movies sorted alphabetically 
SELECT TITLE FROM MOVIES
ORDER BY TITLE 
OFFSET 5 ROWS FETCH NEXT 5 ROWS ONLY;
