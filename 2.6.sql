--Mostrar los descuentos que tengan una cantidad m�nima establecida. Informar tipo descuento,
--cantidad m�nima y descuento

select tipo_descuento, cantidad_minima, descuento
from descuentos
where cantidad_minima is not null