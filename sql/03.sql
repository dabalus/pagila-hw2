/*
 * Management wants to send coupons to customers who have previously rented one of the top-5 most profitable movies.
 * Your task is to list these customers.
 *
 * HINT:
 * In problem 16 of pagila-hw1, you ordered the films by most profitable.
 * Modify this query so that it returns only the film_id of the top 5 most profitable films.
 * This will be your subquery.
 * 
 * Next, join the film, inventory, rental, and customer tables.
 * Use a where clause to restrict results to the subquery.
 */
select distinct  customer.customer_id from film join inventory on film.film_id = inventory.film_id join rental on inventory.inventory_id = rental.inventory_id join customer on customer.customer_id = rental.customer_id where title IN (select title from film join inventory on film.film_id = inventory.film_id join rental on rental.inventory_id = inventory.inventory_id join payment on payment.rental_id = rental.rental_id group by title order by sum(amount) desc limit 5) order by customer.customer_id;
