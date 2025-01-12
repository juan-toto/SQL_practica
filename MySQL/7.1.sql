-- 7.1. Informar cuantos títulos tiene cada autor. Mostrar código de autor y cantidad de libros.



select ta.autor_id, count(t.titulo) as 'CANTIDAD DE LIBRES'
from titulos as t, titulo_autor as ta
where t.titulo_id = ta.titulo_id
group by ta.autor_id