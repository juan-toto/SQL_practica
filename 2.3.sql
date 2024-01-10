--Informar los empleados que tengan cargo id entre 10 y 13 excepto que su nivel de cargo sea
--100 o superior. Mostrar Nombre. Apellido y las columnas usadas en el Where.

select nombre, apellido, cargo_id, nivel_cargo
from empleados
where cargo_id between 10 and 13 and nivel_cargo < 99