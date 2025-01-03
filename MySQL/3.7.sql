-- 3.7. Mostrar los nombres de los autores que tengan una “A” en su nombre.

SELECT autor_nombre
FROM autores
WHERE autor_nombre LIKE "%a%"
