/*
 * List the title of all movies that have both the 'Behind the Scenes' and the 'Trailers' special_feature
 *
 * HINT:
 * Create a select statement that lists the titles of all tables with the 'Behind the Scenes' special_feature.
 * Create a select statement that lists the titles of all tables with the 'Trailers' special_feature.
 * Inner join the queries above.
 */
select B.title from (select film_id, title from (select film_id, title, unnest(special_features) sf from film) T where sf='Behind the Scenes') B JOIN (select film_id, title from (select film_id, title, unnest(special_features) sf from film) T where sf='Trailers') Tr on B.film_id = Tr.film_id order by B.title;

