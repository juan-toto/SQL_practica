--Listar el nombre, la inicial del segundo nombre y el apellido de los empleados de las editoriales
--“Lucerne Publishing” y “New Moon Books”

select e.editorial_nombre, em.inicial_segundo_nombre
from editoriales e, empleados em
where e.editorial_id=em.editorial_id and
		(e.editorial_nombre='Lucerne Publishing' or  e.editorial_nombre='New Moon Books')
order by e.editorial_nombre