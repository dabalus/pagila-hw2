/*
 * Management is planning on purchasing new inventory.
 * Films with special features cost more to purchase than films without special features,
 * and so management wants to know if the addition of special features impacts revenue from movies.
 *
 * Write a query that for each special_feature, calculates the total profit of all movies rented with that special feature.
 *
 * HINT:
 * Start with the query you created in pagila-hw1 problem 16, but add the special_features column to the output.
 * Use this query as a subquery in a select statement similar to answer to the previous problem.
 */
 select sf special_feature, sum(amount)  profit  from (select film_id, unnest(special_features) sf  from film) T  join inventory on T.film_id = inventory.film_id JOIN rental on rental.inventory_id = inventory.inventory_id join payment on payment.rental_id = rental.rental_id group by sf  order by sf;
