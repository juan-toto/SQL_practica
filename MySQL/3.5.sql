-- 3.5. Informar las publicaciones del año 2011 exceptuando las de los géneros ‘business’, ‘psychology’
-- y ‘trad_cook’. Mostrar título y género. Ordenar por género y titulo.

SELECT t.titulo, t.genero
FROM titulos AS t
ORDER BY t.genero, t.titulo 