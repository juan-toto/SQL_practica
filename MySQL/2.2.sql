-- 2.2. Informar los empleados contratados en febrero, junio y agosto de cualquier año. Mostrar
-- apellido, nombre y fecha de contratación y ordenar por mes empezando por los de febrero

SELECT e.apellido, e.nombre, e.fecha_contratacion 
FROM empleados AS e
WHERE MONTH(fecha_contratacion) = 2 or MONTH(fecha_contratacion) = 6 or MONTH(fecha_contratacion) = 8