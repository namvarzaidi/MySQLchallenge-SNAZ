-- question 1 - list all actors
USE sakila;
SELECT * FROM actor;

-- question 2 - Find the surname of the actor with the forename 'John
SELECT last_name FROM actor WHERE first_name = 'John';

-- question 3 - FInd all actors with the surname Neeson
SELECT * FROM actor WHERE last_name= 'Neeson';

-- question 4 - Find all actors with ID numbers divisible by 10?
SELECT * FROM actor WHERE actor_id%10=0;

-- question 5 - What is the description of the movie with an ID of 100?
SELECT description FROM film WHERE film_id= 100;

-- question 6 - Find every R-rated movie.
SELECT* FROM film WHERE rating= 'R';

-- question 7 - Find every non-R-rated movie.
SELECT * FROM film WHERE rating != 'R';

-- question 8 - Find the ten shortest movies.
SELECT title FROM film ORDER BY  length ASC limit 10;

-- question 9 - Find the movies with the longest runtime, without using LIMIT.  
SELECT `Title`, `Length` 
FROM film
 WHERE length IN (SELECT MAX(length) FROM film);
    
-- question 10 - Find all movies that have deleted scenes.
SELECT * FROM film WHERE special_features='deleted scenes';

-- question 11 - Using HAVING, reverse-alphabetically list the last names that are not repeated.
SELECT last_name FROM actor GROUP BY last_name HAVING last_name < 2 ORDER BY last_name DESC ;

-- question 12 - Using HAVING, list the last names that appear more than once, from highest to lowest frequency.
SELECT last_name COUNT(last_name)AS Frequency FROM actor GROUP BY last_name HAVING last_name > 2 ORDER BY last_name;

-- question 13 - Which actor has appeared in the most films?
SELECT f.first_name, last_name FROM film f
INNER JOIN actor a ON f.film_id=a.actor_id;
WHERE first_name, last_name =;

SELECT a.first_name, a.last_name, COUNT(DISTINCT fa.film_id) film_count FROM actor a
INNER JOIN film_actor fa ON a.actor_id = fa.actor_id
GROUP BY fa.actor_id                                                        -- Using JOIN
ORDER BY film_count DESC LIMIT 1;


SELECT actor_id, COUNT(DISTINCT film_id) film_count FROM film_actor
GROUP BY actor_id
HAVING film_count > 1                                                       -- NOT using JOIN
ORDER BY COUNT(actor_id) DESC LIMIT 1;

SELECT * FROM actor 
WHERE actor_id = 107;




-- question 14 - When is 'Academy Dinosaur' due?
SELECT f.title, i.film_id, r.inventory_id, r.return_date FROM film f
INNER JOIN inventory i ON f.film_id = i.film_id                              
INNER JOIN rental r ON i.inventory_id = r.inventory_id
HAVING f.title = 'Academy Dinosaur';

-- question 15 - What is the average runtime of all films?
SELECT AVG(length) FROM film;

-- question 16 - List the average runtime for every film category.
SELECT AVG;

-- question 17 - List all movies featuring a robot.
SELECT * FROM film WHERE special_features='Robot';

-- question 18 - How many movies were released in 2010?
SELECT COUNT(release_year) FROM film WHERE release_year='2010';

-- question 19 - Find the titles of all the horror movies.
SELECT f.title, ca.`name`, ca.category_id FROM film f
INNER JOIN film_category fc ON f.film_id = fc.film_id
INNER JOIN category ca ON fc.category_id = ca.category_id
WHERE ca.`name` = 'Horror';

-- question 20 - List the full name of the staff member with the ID of 2.
SELECT first_name, last_name FROM staff WHERE staff_id='2';

-- question 21 - List all the movies that Fred Costner has appeared in.
SELECT
INNER JOIN
;

-- question 22 - How many distinct countries are there?
SELECT COUNT(country) FROM country;

-- question 23 - List the name of every language in reverse-alphabetical order.
-- SELECT name FROM language GROUP BY name  ORDER BY last_name DESC ;

-- 	question 24 - List the full names of every actor whose surname ends with '-son' in alphabetical order by their forename.
SELECT first_name, last_name FROM actor WHERE last_name LIKE '%son' ORDER by first_name asc;

-- question 25 - Which category contains the most films?
SELECT 
JOIN
JOIN
SELECT;