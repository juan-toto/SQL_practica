-- Informar cuantas formas de pago existen

select COUNT(DISTINCT forma_pago) as 'catidad de formas de pagos'
from ventas