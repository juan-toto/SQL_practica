-- Obtener el total de ventas realizadas a 30 d�as en el a�o 2014

select SUM(cantidad) as 'Total ventas 30 dias a�o 2014'
from ventas
where forma_pago='30 d�as' and year(fecha_orden)=2014 