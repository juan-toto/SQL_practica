-- 3.8. Mostrar los títulos que no tengan un “Computer” en su título.

SELECT titulo
FROM titulos
WHERE titulo LIKE "%Compute%"