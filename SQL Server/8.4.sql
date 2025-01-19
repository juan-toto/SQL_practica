-- 8.4. Informar las ventas por título. Mostrar título, fecha de orden y cantidad, si no tienen venta al menos 
-- mostrar una fila que indique la cantidad en 0. Ordenar por título y mayor cantidad vendida primero.

select v.titulo_id, t.titulo, fecha_orden, sum(cantidad) as total
from titulos as t left join ventas as v on t.titulo_id = v.titulo_id
group by v.titulo_id, t.titulo, fecha_orden
order by titulo, total desc
