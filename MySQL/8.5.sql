-- 8.5. Informar los autores que no tienen títulos.  Mostrar nombre y apellido 

select autor_nombre, autor_apellido
from autores as a left outer join titulo_autor as ta on ta.autor_id = a.autor_id
where ta.titulo_id is null