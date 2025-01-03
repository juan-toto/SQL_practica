-- 4.1. Mostrar todos los libros. Mostrar id de título, nombre y nombre del editor y el precio. Aquellos
-- que tienen el precio en nulo cambiarlo por 0.

SELECT t.titulo_id, t.titulo, e.editorial_nombre, COALESCE(precio, 0)
FROM titulos AS t, editoriales AS e
WHERE t.editorial_id = e.editorial_id