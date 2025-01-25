/* 10.4.	Informar aquellos títulos
 que hayan tenido alguna venta mejor que las ventas del titulo 
 “Onions, Leeks, and Garlic: Cooking Secrets of the Mediterranean”. 
 Mostrar titulo y genero. Ordenar por titulo. */

select distinct t.titulo, t.genero
from ventas as v inner join titulos as t on t.titulo_id = v.titulo_id
where cantidad > some (select cantidad
					   from ventas as v inner join titulos as t on t.titulo_id = v.titulo_id
	                   where titulo = 'Onions, Leeks, and Garlic: Cooking Secrets of the Mediterranean')
order by titulo