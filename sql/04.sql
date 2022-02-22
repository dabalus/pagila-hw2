/*
 * Select the titles of all films that the customer with customer_id=1 has rented more than 1 time.
 *
 * HINT:
 * It's possible to solve this problem both with and without subqueries.
 */
select title  from customer join rental on customer.customer_id = rental.customer_id join inventory on inventory.inventory_id = rental.inventory_id join film on film.film_id = inventory.film_id where customer.customer_id=1 group by title having count(rental_id) > 1;
