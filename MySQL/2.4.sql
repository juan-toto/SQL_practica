-- Informar la venta de los almacenes de id 7xxx. Mostrar el almacén id, el número de orden, la
-- fecha de la factura y el título nombre.

SELECT a.almacen_id, a.almacen_nombre, v.numero_orden, v.fecha_orden, t.titulo
FROM almacenes AS a , ventas v, titulos AS t
WHERE a.almacen_id = v.almacen_id AND v.titulo_id = t.titulo_id 
	AND v.numero_orden LIKE "7%" 