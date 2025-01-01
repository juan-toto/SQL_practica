-- 1.9. Listar los nombres de almacén que hayan tenido ventas sin repetirlos.

SELECT DISTINCT  a.almacen_nombre
FROM almacenes AS a, ventas AS v
WHERE a.almacen_id = v.almacen_id