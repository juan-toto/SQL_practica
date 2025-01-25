/* 10.1.	Informar los títulos que no hayan tenido ventas entre el 
año 2011 y 2013 exceptuando los que se hayan publicado posteriormente. 
Mostrar título, y nombre de editorial. 
Resolver este problema dos veces usando In y Exists */

select titulo, editorial_nombre
from titulos as t inner join editoriales as e on e.editorial_id = t.editorial_id
where titulo_id not in (
	select distinct titulo_id
	from ventas
	where year(fecha_orden) between 2011 and 2013
)
and year(fecha_publicacion) <= 2013

select titulo, editorial_nombre
from titulos as t inner join editoriales as e on e.editorial_id = t.editorial_id
where not exists (
	select 1
	from ventas as v
	where year(fecha_orden) between 2011 and 2013 and v.titulo_id = t.titulo_id
)
and year(fecha_publicacion) <= 2013
