/* 10.9.	Informar el nivel de cargo más alto alcanzado  por algún empleado de cada editorial. 
Mostrar Nombre de la editorial y nivel de cargo. Ordenar por nivel de cargo máximo empezando por el mayor. */

select ed.editorial_nombre, max_nivel
from editoriales as ed inner join (select editorial_id, MAX(nivel_cargo) as max_nivel
								   from empleados
								   group by editorial_id) as e on e.editorial_id = ed.editorial_id
order by max_nivel desc