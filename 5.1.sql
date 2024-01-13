--Listar los empleados ordenados por apellido, por nombre y por inicial del segundo nombre.

select *
from empleados
order by apellido, nombre, inicial_segundo_nombre