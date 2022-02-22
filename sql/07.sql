/*
 * A group of social scientists is studying American movie watching habits.
 * To help them, select the titles of all films that have never been rented by someone who lives in the United States.
 *
 * NOTE:
 * Not every film in the film table is available in the store's inventory,
 * and you should only return films in the inventory.
 *
 * HINT:
 * This can be solved either with a LEFT JOIN or with the NOT IN operator.
 * You may choose whichever solution makes the most sense to you.
 */
select distinct title from film join inventory on film.film_id = inventory.film_id where film.film_id NOT IN (select film_id  from inventory join rental on inventory.inventory_id = rental.inventory_id join customer on customer.customer_id = rental.customer_id join address on customer.address_id = address.address_id join city on city.city_id = address.city_id join country on country.country_id = city.country_id where country = 'United States') order by title;

