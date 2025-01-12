-- 7.3. Informar la última orden generada por cada almacén con forma de pago a 30 días y 60 días.
-- Mostrar código de almacén, fecha de la orden y forma de pago. Ordenar por fecha de orden.


select a.almacen_id, max(v.fecha_orden) as 'ultima orden', v.forma_pago 
from almacenes as a, ventas AS v
where a.almacen_id = v.almacen_id and v.forma_pago like '%[30,60] días%'
group by a.almacen_id , v.forma_pago
order BY 'ultima orden'	