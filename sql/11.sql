/*
 * List the name of all actors who have appeared in a movie that has the 'Behind the Scenes' special_feature
 */
select distinct concat(first_name,' ', last_name) "Actor Name"  from (select film_id, title, unnest(special_features) sf from film) T  JOIN film_actor on film_actor.film_id = T.film_id JOIN actor on actor.actor_id = film_actor.actor_id where sf = 'Behind the Scenes';
