-- 1.6 Tomando las ventas mostrar el id de título, el título y el total de ventas que se obtiene de
-- multiplicar la cantidad por precio. Renombrar a la columna calculada como “Total de venta”.

SELECT v.titulo_id, t.titulo, v.cantidad * t.precio AS "Total de venta" 
FROM ventas AS v, titulos AS t
WHERE v.titulo_id = t.titulo_id