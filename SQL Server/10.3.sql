/* 10.3.	Informar los autores que han hecho algún título juntos. 
Mostrar los nombres y apellidos de a pares, 
ósea en una misma fila apellido y nombre de un autor 
seguido de apellido y nombre del otro autor. 
Ordenar por apellido y nombre de un autor seguido de apellido y nombre del otro autor. */


select a1.autor_apellido, a1.autor_nombre, a2.autor_apellido, a2.autor_nombre
from autores as a1, autores as a2,(select ta1.autor_id autor1, ta2.autor_id autor2
								   from titulo_autor as ta1, titulo_autor as ta2
								   where ta1.titulo_id = ta2.titulo_id and ta1.autor_id <> ta2.autor_id
																	   and ta1.autor_orden < ta2.autor_orden) as ta 
where ta.autor1 = a1.autor_id and ta.autor2 = a2.autor_id
order by a1.autor_apellido, a1.autor_nombre, a2.autor_apellido, a2.autor_nombre


