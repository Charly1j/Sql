select * from country;
SELECT country.Name AS Nombre_del_País, 
       countrylanguage.Language AS Idioma, 
       countrylanguage.Percentage AS Porcentaje_Idioma
FROM country
JOIN countrylanguage ON country.Code = countrylanguage.CountryCode
WHERE countrylanguage.Language = 'Slovene'
ORDER BY Porcentaje_Idioma DESC;

SELECT country.Name AS Nombre_del_País, COUNT(city.Name) AS Número_de_Ciudades
FROM country
LEFT JOIN city ON country.Code = city.CountryCode
GROUP BY Nombre_del_País
ORDER BY Número_de_Ciudades DESC;

SELECT Name AS Nombre_de_Ciudad, Population AS Población
FROM city
WHERE CountryCode = 'MEX' AND Population > 500000
ORDER BY Población DESC;

SELECT country.Name AS Nombre_del_País, 
       countrylanguage.Language AS Idioma, 
       countrylanguage.Percentage AS Porcentaje_Idioma
FROM country
JOIN countrylanguage ON country.Code = countrylanguage.CountryCode
WHERE countrylanguage.Percentage > 89
ORDER BY Porcentaje_Idioma DESC;

SELECT Name AS Nombre_del_País, Population AS Población, SurfaceArea AS Área_de_Superficie
FROM country
WHERE SurfaceArea < 501 AND Population > 100000;

SELECT Name AS Nombre_del_País, GovernmentForm AS Forma_de_Gobierno, 
       Capital AS Capital_Población, LifeExpectancy AS Esperanza_de_Vida
FROM country
WHERE GovernmentForm = 'Constitutional Monarchy' 
  AND Capital > 200 
  AND LifeExpectancy > 75;

SELECT country.Name AS Nombre_del_País, city.Name AS Nombre_de_Ciudad, city.District AS Distrito, city.Population AS Población
FROM country
JOIN city ON country.Code = city.CountryCode
WHERE country.Code = 'ARG' AND city.District = 'Buenos Aires' AND city.Population > 500000;

SELECT Region AS Nombre_de_Región, COUNT(*) AS Número_de_Países
FROM country
GROUP BY Nombre_de_Región
ORDER BY Número_de_Países DESC;







