-- 3.3. Mostrar los títulos que no sean de la editorial “Algodata Infosystems”. Informar título y Editorial.

SELECT t.titulo, e.editorial_nombre
FROM titulos AS t, editoriales AS e
WHERE t.editorial_id = e.editorial_id AND e.editorial_nombre <> "Algodata Infosystems"