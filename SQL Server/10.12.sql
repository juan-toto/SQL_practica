/* 10.12	Informar el monto de regalías a pagar por cada autor, inclusive aquellos que no tengan ventas, 
de las ventas del año 2013 de la editorial ‘Binnet & Hardley’. Mostrar apellido y nombre del autor y monto a pagar. 
Tener en cuenta que hay que operar la regalía del título y sobre esta la regalía del autor respecto a ese libro. */

select a.autor_nombre, a.autor_apellido, regalias = sum(cantidad * precio * regalias / 100 * porcentaje_regalias / 100)
from autores as a inner join titulo_autor as ta on a.autor_id = ta.autor_id
				  inner join titulos as t on t.titulo_id = ta.titulo_id
				  inner join editoriales as e on e.editorial_id = t.editorial_id and editorial_nombre = 'Binnet & Hardley'
				  left join ventas as v on v.titulo_id = ta.titulo_id and year(fecha_orden) = 2013
group by a.autor_id, a.autor_nombre, a.autor_apellido
