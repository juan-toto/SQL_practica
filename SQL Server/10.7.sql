/* 10.7.	Informar el o los t�tulos que se vendieron 
m�s que cualquier otro con forma de pago a 60 d�as. */

select t.titulo
from titulos as t inner join (select titulo_id
							  from ventas as v1
							  where forma_pago = '60 d�as'
							  group by titulo_id
							  having sum(cantidad) >= all (select sum(cantidad)
														   from ventas as v2
														   where forma_pago = '60 d�as' and v1.titulo_id <> v2.titulo_id
														   group by titulo_id)) as v on v.titulo_id = t.titulo_id