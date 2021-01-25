-- Q1
SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';
-- 2

-- Q2
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
-- 5607

-- Q3
SELECT MAX(film_id)
FROM inventory;
-- 1000

-- Q4
SELECT COUNT(last_name)
FROM customer
WHERE last_name = 'William';
-- 0 

-- Q5
SELECT staff_id, COUNT(staff_id)
FROM rental
GROUP BY staff_id;
-- 1

-- Q6
SELECT COUNT(DISTINCT district)
FROM address;
-- 378

-- Q7
SELECT film_id, COUNT(film_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;
-- 15

-- Q8
SELECT store_id, last_name
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';
-- 13

-- Q9
SELECT amount, COUNT(amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(rental_id) > 250;
-- 3

-- Q10
SELECT DISTINCT rating, COUNT(rating)
FROM film
GROUP BY rating;
-- 5, PG-13












