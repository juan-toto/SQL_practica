-- 3.10. La columna autor id de autores esta formateada con una secuencia de 3 series de
-- caracteres numéricos separadas por guiones asi: ‘xxx-xx-xxxx’ por ejemplo ‘172-32-1176’.
-- Informar los autores que en el id tengan las siguientes condiciones (una consulta por cada
-- punto)

-- e) Primer serie empiece con 7 a 9 y segunda serie no tenga 1 o 7

SELECT autor_id
FROM autores
WHERE autor_id REGEXP '^[7-9][0-9]{2}-(?!.*[17])[0-9]{2}-[0-9]{4}$'