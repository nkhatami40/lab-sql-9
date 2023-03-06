USE sakila;

DROP TABLE rentals_june;
DROP TABLE rentals_may;
#1-2-3-4:
CREATE TABLE rentals_may SELECT customer_id, rental_date  FROM rental
WHERE Month(Date(rental_date)) = 05;
#Creating another table from rentals and selecting the customer_id and rental_date only for May.

SELECT * FROM rentals_may;

CREATE TABLE rentals_june SELECT customer_id, rental_date  FROM rental
WHERE Month(Date(rental_date)) = 06;
#Creating another table from rentals and selecting the customer_id and rental_date only for June.

SELECT * From rentals_june;

#5-Check the number of rentals for each customer for May.
SELECT customer_id, COUNT(*) AS 'number_of_rentals' 
FROM rentals_may
GROUP BY customer_id
ORDER BY customer_id DESC;

#6-Check the number of rentals for each customer for June.
SELECT customer_id, COUNT(*) AS 'number_of_rentals'
FROM rentals_june
GROUP BY customer_id
ORDER BY customer_id DESC;