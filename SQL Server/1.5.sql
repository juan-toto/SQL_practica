--Mostrar por cada t�tulo su nombre y cuanto corresponde de regal�as por cada 1000 t�tulos
--vendidos. Esta columna se debe mostrar como �Regal�as x cada 1000 unidades�. Titulo.regal�as
--es un porcentaje.

select t.titulo,(t.precio*t.regalias)/1000 as 'Regal�as x cada 1000 unidades'
from titulos t