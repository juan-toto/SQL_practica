--Informar cuantos planes de regal�as tiene el t�tulo MC3021

select COUNT(regalias) as 'cantidad de regalias'
from titulos
where titulo_id='MC3021'