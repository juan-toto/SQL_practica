-- 2.3. Informar los empleados que tengan cargo id entre 10 y 13 excepto que su nivel de cargo sea
-- 100 o superior. Mostrar Nombre. Apellido y las columnas usadas en el Where

SELECT nombre, apellido, cargo_id, nivel_cargo
FROM empleados
WHERE cargo_id BETWEEN 10 AND 13 AND nivel_cargo < 100