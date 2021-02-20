/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */

SELECT category.name, COUNT(film.film_id) AS sum 
FROM category 
INNER JOIN film_category ON category.category_id = film_category.category_id 
INNER JOIN film ON film_category.film_id = film.film_id 
INNER JOIN language ON film.language_id = language.language_id 
WHERE film.language_id=1 
GROUP BY category.name 
ORDER BY category.name ASC;
