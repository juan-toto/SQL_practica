-- 3.6. Mostrar los nombres de los autores que empiecen con “L”.

SELECT autor_nombre
FROM autores
WHERE autor_nombre LIKE "L%"