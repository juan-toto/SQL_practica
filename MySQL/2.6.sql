-- 2.6. Mostrar los descuentos que tengan una cantidad mínima establecida. Informar tipo descuento,
-- cantidad mínima y descuento

SELECT TIPO_DESCUENTO, cantidad_minima, descuento
FROM descuentos
 WHERE cantidad_minima IS NOT NULL 
 