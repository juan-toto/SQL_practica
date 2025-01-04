-- 7.7. Informar el total de regal�as obtenidas por cada t�tulo que haya tenido 40 o m�s unidades
-- vendidas. Mostrar el t�tulo y el monto en pesos de las regal�as y ordenar por mayor regal�a primero.

select t.titulo, SUM(cantidad*precio*regalias/100) as 'Monto regalias en pesos', sum(cantidad)
from titulos as t, ventas as v
where t.titulo_id = v.titulo_id
group by t.titulo
HAVING sum(cantidad) > 39
order by 'Monto regalias en pesos'