/*
 * This problem is the same as 06.sql,
 * but instead of using the NOT IN operator, you are to use a LEFT JOIN.
 */
select title from film left outer join inventory on film.film_id = inventory.film_id where inventory.film_id is null;
