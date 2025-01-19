-- 8.2. Informar las ventas a 60 d�as. Mostrar el id de t�tulo, el t�tulo y el 
-- total de ventas (cantidad por precio). Renombrar a la columna calculada.


select t.titulo_id, titulo, sum(cantidad*precio) as total_venta
from titulos as t inner join ventas as v on v.titulo_id = t.titulo_id
where forma_pago = '60 d�as'
group by t.titulo_id, titulo