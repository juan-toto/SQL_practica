--Mostrar los descuentos que tengan una cantidad mínima establecida. Informar tipo descuento,
--cantidad mínima y descuento

select tipo_descuento, cantidad_minima, descuento
from descuentos
where cantidad_minima is not null