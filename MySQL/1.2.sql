-- 1.2. Listar todas las columnas de empleados y la descripción del cargo que tienen.

SELECT e.empleado_id, e.nombre , e.inicial_segundo_nombre, e.apellido,e.cargo_id, 
			e.nivel_cargo,e.editorial_id,e.fecha_contratacion  ,c.cargo_descripcion
FROM empleados AS e , cargos AS c
WHERE e.cargo_id = c.cargo_id 