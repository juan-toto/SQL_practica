-- 3.2. Listar el nombre, la inicial del segundo nombre y el apellido de los empleados de las editoriales
-- “Lucerne Publishing” y “New Moon Books”

SELECT em.nombre, em.inicial_segundo_nombre, em.apellido, ed.editorial_nombre
FROM editoriales AS ed, empleados AS em
WHERE em.editorial_id = ed.editorial_id AND ed.editorial_nombre ="Lucerne Publishing" OR ed.editorial_nombre ="New Moon Books"