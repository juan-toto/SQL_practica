/* 10.10.	Informar los autores que hayan escrito varios g�neros de libros.  Mostrar nombre y cantidad de g�neros 
ordenados por esta �ltima columna empezando por el mayor. */

select autor_nombre, cantidad
from autores as a inner join (select ta.autor_id, COUNT(distinct genero) as cantidad
							  from titulo_autor as ta inner join titulos as t on ta.titulo_id = t.titulo_id
							  group by autor_id
							  having COUNT(distinct genero) > 1) as g on g.autor_id = a.autor_id
order by cantidad desc