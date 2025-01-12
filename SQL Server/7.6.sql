-- 7.6. Informar aquellos t�tulos que tengan m�s de un autor. Mostrar c�digo de t�tulo y cantidad de autores

select t.titulo_id, count(a.autor_id) as 'cantidad autores'
from titulos as t, titulo_autor as a
where t.titulo_id = a.titulo_id
group by t.titulo_id
HAVING count(a.autor_id) > 1
order by 'cantidad autores'