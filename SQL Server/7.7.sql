-- 7.7. Informar el total de regalías obtenidas por cada título que haya tenido 40 o más unidades
-- vendidas. Mostrar el título y el monto en pesos de las regalías y ordenar por mayor regalía primero.

select t.titulo, SUM(cantidad*precio*regalias/100) as 'Monto regalias en pesos', sum(cantidad)
from titulos as t, ventas as v
where t.titulo_id = v.titulo_id
group by t.titulo
HAVING sum(cantidad) > 39
order by 'Monto regalias en pesos'