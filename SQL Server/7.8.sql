-- 7.8. Informar los autores que hayan escrito varios géneros de títulos. Mostrar nombre y cantidad de
-- géneros ordenados por esta última columna empezando por el mayor.

select a.autor_nombre, count(DISTINCT t.genero) as 'cantidad genero'
from autores as a, titulo_autor as ta, titulos as t
where a.autor_id = ta.autor_id and t.titulo_id = ta.titulo_id
group by a.autor_nombre
having count(DISTINCT t.genero) > 1
order by 'cantidad genero' desc
