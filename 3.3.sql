--Mostrar los t�tulos que no sean de la editorial �Algodata Infosystems�. Informar t�tulo y Editorial.

select t.titulo, e.editorial_nombre
from editoriales e, titulos t
where e.editorial_id=t.editorial_id and e.editorial_nombre not like 'Algodata Infosystems'