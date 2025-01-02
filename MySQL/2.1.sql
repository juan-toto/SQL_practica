-- 2.1. Listar los títulos pertenecientes al editor 1389. Por cada fila, listar el título, el tipo y la fecha de
-- publicación.

SELECT titulo, genero, fecha_publicacion 
FROM titulos 
WHERE editorial_id = "1389"
