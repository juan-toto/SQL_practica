-- 9.2. Informar cuantos títulos se han publicado primer semestre del 2011 y en el primer semestre del 2017. 
-- Mostrar dos columnas y dos filas: en la primera columna la descripción del periodo y en la segunda la cantidad de títulos.

select 'publicaciones del primer semestre del 2011' as ' perioda de tiempo',count(titulo) as 'cantidad vendida'
from titulos
where YEAR(fecha_publicacion) = 2011 and MONTH(fecha_publicacion) BETWEEN 1 and 6
union
select 'publicaciones del primer semestre del 2017',count(titulo)
from titulos
where YEAR(fecha_publicacion) = 2017 and MONTH(fecha_publicacion) BETWEEN 1 and 6