-- 3.10. La columna autor id de autores esta formateada con una secuencia de 3 series de
-- caracteres numéricos separadas por guiones asi: ‘xxx-xx-xxxx’ por ejemplo ‘172-32-1176’.
-- Informar los autores que en el id tengan las siguientes condiciones (una consulta por cada
-- punto)

-- d) Primer serie empiece con 7 a 9.

SELECT autor_id
FROM autores
WHERE LEFT(autor_id, 1) BETWEEN 7 AND 9