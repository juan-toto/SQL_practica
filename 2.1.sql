--Listar los t�tulos pertenecientes al editor 1389. Por cada fila, listar el t�tulo, el tipo y la fecha de
--publicaci�n.

select titulo, genero as 'Tipo', fecha_publicacion
from titulos
where titulos.editorial_id = 1389
