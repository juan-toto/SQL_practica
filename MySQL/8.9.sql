-- 8.9. Informar los totales de ventas (pesos) al contado entre abril y septiembre del 2014 por cada almacén. 
-- Mostrar nombre de almacén, y total de venta. Si un almacén no tiene ventas mostrar en cero.


select almacen_nombre, ifnull(sum(cantidad * precio),0) as total
from almacenes as al left join ventas as v on v.almacen_id = al.almacen_id
	 						left join titulos as t on t.titulo_id = v.titulo_id and year(fecha_orden) = 2014 
										and MONTH(fecha_orden) between 4 and 9 and v.forma_pago = 'Al contado'
group by al.almacen_id, almacen_nombre