--Listar los títulos pertenecientes al editor 1389. Por cada fila, listar el título, el tipo y la fecha de
--publicación.

select titulo, genero as 'Tipo', fecha_publicacion
from titulos
where titulos.editorial_id = 1389
