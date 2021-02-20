/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */

SELECT title FROM film 
INNER JOIN film_category ON film_category.film_id = film.film_id 
INNER JOIN category ON film_category.category_id = category.category_id 
WHERE category.name='Family' 
GROUP BY film.film_id 
ORDER BY title ASC;
