--Informar las publicaciones del a�o 2011 exceptuando las de los g�neros �business�, �psychology�
--y �trad_cook�. Mostrar t�tulo y g�nero. Ordenar por g�nero y titulo.

select titulo, genero
from titulos t
where YEAR(t.fecha_publicacion) = 2011 and 
		(t.genero = 'business' or t.genero = 'psychology' or t.genero = 'trad_cook')
order by genero, titulo