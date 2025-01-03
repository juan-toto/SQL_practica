-- 6.5. Informar cuantas formas de pago existen

SELECT COUNT(DISTINCT forma_pago) AS "cantidad formas de pago"
FROM ventas