-- 6.3. Informar cuantos planes de regalías tiene el título MC3021

SELECT COUNT(*) AS "cantidad de planes de regalia que tiende el titulo MC3021"
FROM plan_regalias
WHERE titulo_id = "MC3021"