-- 7.4. Informar el nivel de cargo más alto alcanzado por algún empleado de cada editorial. Mostrar
-- Nombre de la editorial y nivel de cargo. Ordenar por nivel de cargo máximo empezando por el mayor

select ed.editorial_nombre, max(em.nivel_cargo) as 'nivel mas alto'
from empleados as em, editoriales as ed
where em.editorial_id = ed.editorial_id
group by ed.editorial_nombre
order by 'nivel mas alto' desc