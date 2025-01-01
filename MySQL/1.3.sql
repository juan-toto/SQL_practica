-- 1.3. Listar la tabla empleados y reemplazar los nombres de columnas que tengan guion bajo por espacio

SELECT empleado_id AS "empleados id", nombre, inicial_segundo_nombre AS "inicial segundo nombre",
			apellido, cargo_id AS "cargo id", nivel_cargo AS "nivel cargo", editorial_id AS "editorial id",
			fecha_contratacion AS "fecha contratacion"
FROM empleados 