-- 9.3. Emitir un informe comparativo entre las ventas del año 2012 y el año 2014. El informe debe tener las 
-- siguientes columnas: código de título, titulo, año y cantidad de vendida en el año(cada uno correspondiente 
-- al código de título de la fila correspondiente). Tener presente que un título puede tener ventas en un año y 
-- no en el otro, en cuyo caso debe aparecer igual en el informe el año sin ventas. Ordenar por título y año.

select t.titulo_id, titulo, '2012' as 'year', SUM(v.cantidad)
from titulos as t inner join ventas as v on t.titulo_id = v.titulo_id and YEAR(v.fecha_orden) = 2012
group by t.titulo_id, titulo
union
select t.titulo_id, titulo, '2014', SUM(v.cantidad)
from titulos as t inner join ventas as v on t.titulo_id = v.titulo_id and YEAR(v.fecha_orden) = 2012
group by t.titulo_id, titulo
order by titulo, 'year'