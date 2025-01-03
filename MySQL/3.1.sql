-- Listar las ventas que realizo el título “Prolonged Data Deprivation: Four Case Studies” el día 29
-- de mayo de 2013. Mostrar nombre de almacenes, números de orden y la cantidad de cada venta.

SELECT a.almacen_nombre, v.numero_orden, v.cantidad 
FROM ventas AS v, titulos AS t, almacenes AS a
WHERE v.titulo_id = t.titulo_id  AND v.almacen_id = a.almacen_id AND 
	t.titulo = "Prolonged Data Deprivation: Four Case Studies" 
	AND YEAR(v.fecha_orden) = 2013 AND MONTH(v.fecha_orden) = 5 AND DAY(v.fecha_orden) = 29