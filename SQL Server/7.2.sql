-- 7.2. Informar el total de unidades vendidas por n�mero de orden del almac�n 7131. Mostrar n�mero de orden y total vendido.

select numero_orden, count(*) as 'cantidad de ventas'
from ventas
where almacen_id like '7131'
group by numero_orden

