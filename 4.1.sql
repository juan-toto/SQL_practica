--Mostrar todos los libros. Mostrar id de título, nombre y nombre del editor y el precio. Aquellos
--que tienen el precio en nulo cambiarlo por 0.

select titulo_id,titulo,e.editorial_nombre , isnull(precio,'0') as 'precio'
from titulos t, editoriales e
where t.editorial_id=e.editorial_id
