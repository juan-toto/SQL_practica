-- 5.3. Informar la venta más importante con forma de pago a 60 días. Mostrar el almacén, el número
-- de orden, la fecha de la factura y el título.

SELECT a.almacen_nombre, v.numero_orden, v.fecha_orden, t.titulo, v.forma_pago, v.cantidad
FROM ventas AS v, titulos AS t, almacenes AS a
WHERE v.titulo_id = t.titulo_id AND a.almacen_id = v.almacen_id AND v.forma_pago = "60 días"
ORDER BY v.cantidad DESC