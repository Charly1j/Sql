/*1*/
SELECT c.first_name AS Nombre, c.last_name AS Apellido, c.email AS Correo_Electrónico, a.address AS Dirección
FROM customer c
JOIN address a ON c.address_id = a.address_id
WHERE a.city_id = 312;
/*2*/
SELECT film.title AS Título, film.description AS Descripción, film.release_year AS Año_de_Estreno, film.rating AS Calificación, film.special_features AS Características_Especiales, category.name AS Género
FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
WHERE category.name = 'Comedy';
/*3*/
SELECT actor.actor_id AS Identificación_del_Actor, CONCAT(actor.first_name, ' ', actor.last_name) AS Nombre_del_Actor, film.title AS Título_de_la_Película, film.description AS Descripción, film.release_year AS Año_de_Lanzamiento
FROM actor
JOIN film_actor ON actor.actor_id = film_actor.actor_id
JOIN film ON film_actor.film_id = film.film_id
WHERE actor.actor_id = 5;
/*4*/
SELECT customer.first_name AS Nombre, customer.last_name AS Apellido, customer.email AS Correo_Electrónico, address.address AS Dirección
FROM customer
JOIN address ON customer.address_id = address.address_id
JOIN city ON address.city_id = city.city_id
WHERE customer.store_id = 1 AND city.city_id IN (1, 42, 312, 459);
/*5*/
SELECT film.title AS Título_de_Película, film.description AS Descripción, film.release_year AS Año_de_Lanzamiento, film.rating AS Calificación, film.special_features AS Función_Especial
FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE film.rating = 'G' AND film.special_features LIKE '%Behind the Scenes%' AND actor.actor_id = 15;
/*6*/
SELECT film.film_id, film.title, film_actor.actor_id, CONCAT(actor.first_name, ' ', actor.last_name) AS actor_name
FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE film.film_id = 369;
/*7*/
SELECT film.title AS Título, film.description AS Descripción, film.release_year AS Año_de_Estreno, film.rating AS Calificación, film.special_features AS Características_Especiales, category.name AS Género
FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
WHERE film.rating = 'R' AND film.rental_rate = 2.99;
/*8*/
SELECT film.title AS Título, film.description AS Descripción, film.release_year AS Año_de_Estreno, film.rating AS Calificación, film.special_features AS Características_Especiales, category.name AS Género, CONCAT(actor.first_name, ' ', actor.last_name) AS Nombre_Actor
FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
JOIN actor ON film_actor.actor_id = actor.actor_id
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
WHERE actor.first_name = 'SANDRA' AND actor.last_name = 'KILMER' AND category.name = 'Action';


