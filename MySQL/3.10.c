-- 3.10. La columna autor id de autores esta formateada con una secuencia de 3 series de
-- caracteres numéricos separadas por guiones asi: ‘xxx-xx-xxxx’ por ejemplo ‘172-32-1176’.
-- Informar los autores que en el id tengan las siguientes condiciones (una consulta por cada
-- punto)

-- c) Segunda serie tenga solo 0, 5 u 8 en cualquier posición.

SELECT autor_id
FROM autores
WHERE autor_id REGEXP '^[0-9]{3}-(0|5|8){2}-[0-9]{4}$'