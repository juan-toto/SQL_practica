--Mostrar los títulos y el adelanto que le corresponde a cada uno, si este valor fuera nulo
--informar el valor predeterminado de 1000 pesos.

select titulo, ISNULL(adelanto,'1000')as'adelanto'
from titulos		