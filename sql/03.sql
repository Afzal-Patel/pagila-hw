/*
 * Find all last names of actors whose last names contain the letters LI (case insensitive).
 * Order results alphabetically.
 */
-- last names are all caps

SELECT last_name 
FROM actor 
WHERE last_name LIKE '%LI%' 
ORDER BY last_name;
