--Informar cuantos planes de regalías tiene el título MC3021

select COUNT(regalias) as 'cantidad de regalias'
from titulos
where titulo_id='MC3021'