--Informar la venta más importante con forma de pago a 60 días. Mostrar el almacén, el número
--de orden, la fecha de la factura y el título.

select a.almacen_nombre, v.numero_orden, fecha_orden,t.titulo
from ventas v, almacenes a, titulos t
where v.forma_pago='60 días' and v.almacen_id=a.almacen_id and v.titulo_id=t.titulo_id
order by numero_orden, t.titulo