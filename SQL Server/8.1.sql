-- 8.1 	Mostrar los tres primeros g�neros m�s vendidos. 
-- Mostrar g�nero y total de ventas ordenado por mayor total de venta.

SELECT TOP 3 genero, SUM(cantidad*precio) as total
FROM titulos as t INNER JOIN ventas as v on v.titulo_id = t.titulo_id
GROUP BY genero
ORDER BY total desc