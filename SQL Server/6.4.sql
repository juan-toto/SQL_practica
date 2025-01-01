-- Obtener el total de ventas realizadas a 30 días en el año 2014

select SUM(cantidad) as 'Total ventas 30 dias año 2014'
from ventas
where forma_pago='30 días' and year(fecha_orden)=2014 