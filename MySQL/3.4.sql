-- 3.4. Informar las ventas de los siguientes títulos: 'Cooking with Computers: Surreptitious Balance
-- Sheets', 'The Psychology of Computer Cooking', 'Emotional Security: A New Algorithm'. Mostrar
-- titulo, nombre de almacén, fecha de orden, número de orden y cantidad. Ordenar por títulos.

SELECT t.titulo, a.almacen_nombre, v.fecha_orden, v.numero_orden, v.cantidad
FROM titulos AS t, ventas AS v, almacenes AS a
WHERE t.titulo_id = v.titulo_id AND v.almacen_id = a.almacen_id
	AND t.titulo = "Cooking with Computers: Surreptitious Balance Sheets" 
	or t.titulo = "The Psychology of Computer Cooking" 
	or t.titulo = "Emotional Security: A New Algorithm"