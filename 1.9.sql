--Listar los nombres de almacén que hayan tenido ventas sin repetirlos.

select DISTINCT a.almacen_nombre
from almacenes a, ventas v
where a.almacen_id = v.almacen_id