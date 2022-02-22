/*
 * Select the title of all 'G' rated movies that have the 'Trailers' special feature.
 * Order the results alphabetically.
 * HINT:
 * Use `unnest(special_features)` in a subquery.
 */
select distinct  Title from film JOIN (select film_id,unnest(special_features) as sf from film f1) T on film.film_id = T.film_id  where rating = 'G' and sf='Trailers';
