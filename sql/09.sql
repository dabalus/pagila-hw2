/*
 * Count the number of movies that contain each type of special feature.
 * Order the results alphabetically be the special_feature.
 * HINT:
 * Use `unnest(special_features)` in a subquery.
 */
select sf special_features, count(film_id) from (select unnest(special_features) as sf , film_id from film) T group by sf order by sf;
