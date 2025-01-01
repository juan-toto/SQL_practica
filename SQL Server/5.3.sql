--Informar la venta m�s importante con forma de pago a 60 d�as. Mostrar el almac�n, el n�mero
--de orden, la fecha de la factura y el t�tulo.

select a.almacen_nombre, v.numero_orden, fecha_orden,t.titulo
from ventas v, almacenes a, titulos t
where v.forma_pago='60 d�as' and v.almacen_id=a.almacen_id and v.titulo_id=t.titulo_id
order by numero_orden, t.titulo