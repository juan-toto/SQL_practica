/* 10.8.	Informar cuantos t�tulos tiene cada autor. 
Mostrar c�digo de autor, nombre y cantidad de libros. */

select autor_nombre, autor_apellido, cantidad
from autores as a inner join (select autor_id, COUNT(*) as cantidad
							  from titulo_autor
							  group by autor_id) as ta on ta.autor_id = a.autor_id