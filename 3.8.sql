--Mostrar los títulos que no tengan un “Computer” en su título

select *
from titulos
where titulo not like '%Computer%'