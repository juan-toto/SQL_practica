--Mostrar aquellos libros que tienen el precio en nulo. Mostrar id de t�tulo, nombre y nombre del
--editor.

select titulo_id, titulo,e.editorial_nombre
from titulos t, editoriales e
where precio is null and t.editorial_id = e.editorial_id