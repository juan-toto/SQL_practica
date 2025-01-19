-- 8.8. �Informar cuantos t�tulos �Is Anger the Enemy?�  vendi� cada almac�n. Si un almac�n 
-- no tuvo ventas del mismo informar con un cero. Mostrar c�digo de almac�n y cantidad

select a.almacen_id, isnull(sum(cantidad),0) as total
from ventas as v inner join titulos as t on t.titulo_id = v.titulo_id and titulo = 'Is Anger the Enemy?' 
				 right join almacenes as a on a.almacen_id = v.almacen_id
group by a.almacen_id