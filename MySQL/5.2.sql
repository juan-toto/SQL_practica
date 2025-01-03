-- 5.2. Listar los títulos pertenecientes al género “business”. Por cada fila, listar el id, el título y el
-- precio. Ordenar los datos por precio en forma descendente e id de artículo en forma ascendente.

SELECT titulo_id, titulo, precio
FROM titulos AS t
WHERE genero = "business"
ORDER BY precio DESC, titulo_id