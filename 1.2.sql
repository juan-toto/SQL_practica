--Listar todas las columnas de empleados y la descripción del cargo que tienen

select e.*, c.cargo_descripcion 
from cargos AS c , empleados AS e
where c.cargo_id = e.cargo_id