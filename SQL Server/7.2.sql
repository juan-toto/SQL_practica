-- 7.2. Informar el total de unidades vendidas por número de orden del almacén 7131. Mostrar número de orden y total vendido.

select numero_orden, count(*) as 'cantidad de ventas'
from ventas
where almacen_id like '7131'
group by numero_orden

