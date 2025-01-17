-- 9.3. Emitir un informe comparativo entre las ventas del a�o 2012 y el a�o 2014. El informe debe tener las 
-- siguientes columnas: c�digo de t�tulo, titulo, a�o y cantidad de vendida en el a�o(cada uno correspondiente 
-- al c�digo de t�tulo de la fila correspondiente). Tener presente que un t�tulo puede tener ventas en un a�o y 
-- no en el otro, en cuyo caso debe aparecer igual en el informe el a�o sin ventas. Ordenar por t�tulo y a�o.

select t.titulo_id, titulo, '2012' as 'year', SUM(v.cantidad)
from titulos as t inner join ventas as v on t.titulo_id = v.titulo_id and YEAR(v.fecha_orden) = 2012
group by t.titulo_id, titulo
union
select t.titulo_id, titulo, '2014', SUM(v.cantidad)
from titulos as t inner join ventas as v on t.titulo_id = v.titulo_id and YEAR(v.fecha_orden) = 2012
group by t.titulo_id, titulo
order by titulo, 'year'