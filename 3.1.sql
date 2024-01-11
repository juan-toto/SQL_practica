--Listar las ventas que realizo el título “Prolonged Data Deprivation: Four Case Studies” el día 29
--de mayo de 2013. Mostrar nombre de almacenes, números de orden y la cantidad de cada venta

select a.almacen_nombre,v.numero_orden,v.cantidad
from almacenes a, titulos t, ventas v
where a.almacen_id=v.almacen_id and t.titulo_id=v.titulo_id and
		t.titulo ='Prolonged Data Deprivation: Four Case Studies' and YEAR(v.fecha_orden)=2013 and
		MONTH(v.fecha_orden)=5 and DAY(v.fecha_orden)=29