-- 2.5. Mostrar aquellos libros que tienen el precio en nulo. Mostrar id de título, nombre y nombre del editor.

SELECT t.titulo_id, t.titulo, e.editorial_nombre
FROM titulos AS t, editoriales AS e
WHERE t.editorial_id = e.editorial_id AND precio IS NULL 