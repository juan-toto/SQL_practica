--Informar la venta de los almacenes de id 7xxx. Mostrar el almacén id, el número de orden, la
--fecha de la factura y el título nombre.

select almacen_id, numero_orden, fecha_orden, t.titulo
from ventas v, titulos t
where v.titulo_id=t.titulo_id and almacen_id like '7%'