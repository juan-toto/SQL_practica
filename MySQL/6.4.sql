-- 6.4. Obtener el total de ventas realizadas a 30 días en el año 2014

SELECT COUNT(*) AS "ventas realizadas a 30 días en el año 2014"
FROM ventas
WHERE forma_pago LIKE '30 días' AND year(fecha_orden) = 2024

