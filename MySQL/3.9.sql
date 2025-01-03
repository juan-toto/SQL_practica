-- 3.9. Mostrar los nombres de los autores que empiecen con letras que van de la T a la Y.

SELECT autor_nombre
FROM autores
WHERE LEFT(autor_nombre, 1) BETWEEN 'T' AND 'Y'