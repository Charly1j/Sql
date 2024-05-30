SELECT SUM(amount) AS Ingresos_Totales
FROM billing
WHERE YEAR(charged_datetime) = 2012 AND MONTH(charged_datetime) = 3;

SELECT SUM(amount) AS Ingresos_Totales
FROM billing
WHERE client_id = 2;

SELECT * 
FROM sites
WHERE client_id = 10;

SELECT YEAR(created_datetime) AS Año, MONTH(created_datetime) AS Mes, COUNT(*) AS Sitios_Creados
FROM sites
WHERE client_id = 1
GROUP BY YEAR(created_datetime), MONTH(created_datetime);
SELECT YEAR(created_datetime) AS Año, MONTH(created_datetime) AS Mes, COUNT(*) AS Sitios_Creados
FROM sites
WHERE client_id = 20
GROUP BY YEAR(created_datetime), MONTH(created_datetime);

SELECT client_id, count(domain_name) AS number_of_websites, domain_name as website, created_datetime as date_generated
FROM sites
WHERE created_datetime >= '2011-01-01' AND created_datetime <= '2011-02-15'
GROUP BY domain_name;

SELECT c.nombre AS Nombre_del_Cliente, COUNT(cp.client_potential_id) AS Total_de_Clientes_Potenciales
FROM clientes c
LEFT JOIN clientes_potenciales cp ON c.client_id = cp.client_id
WHERE cp.fecha_generacion BETWEEN '2011-01-01' AND '2011-12-31'
GROUP BY c.client_id, c.nombre;

SELECT client_id AS Nombre_del_Cliente, COUNT(leads_id) AS Total_de_Clientes_Potenciales
FROM clientes 
JOIN sites s ON c.client_id = s.client_id
LEFT JOIN leads l ON s.site_id = l.site_id
WHERE s.created_datetime BETWEEN '2011-01-01' AND '2011-12-31'
GROUP BY c.client_id, c.nombre, s.site_id;

SELECT client_id AS ID_del_Cliente, first_name AS Nombre_del_Cliente,
  YEAR(joined_datetime) AS Año,
  MONTH(joined_datetime) AS Mes,
  SUM(b.amount) AS Ingresos_Totales
FROM clients
LEFT JOIN billing_id ON client_id = b.client_id;

SELECT client_id AS ID_del_Cliente, first_name AS Nombre_del_Cliente, GROUP_CONCAT(domain_name) AS Sitios
FROM clientes
LEFT JOIN sites  ON client_id = s.client_id
GROUP BY client_id, nombre;




