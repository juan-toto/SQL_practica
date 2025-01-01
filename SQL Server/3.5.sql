--Informar las publicaciones del año 2011 exceptuando las de los géneros ‘business’, ‘psychology’
--y ‘trad_cook’. Mostrar título y género. Ordenar por género y titulo.

select titulo, genero
from titulos t
where YEAR(t.fecha_publicacion) = 2011 and 
		(t.genero = 'business' or t.genero = 'psychology' or t.genero = 'trad_cook')
order by genero, titulo