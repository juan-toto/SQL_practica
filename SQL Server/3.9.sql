--Mostrar los nombres de los autores que empiecen con letras que van de la T a la Y.

select *
from autores
where autor_nombre like '[t-y]%'