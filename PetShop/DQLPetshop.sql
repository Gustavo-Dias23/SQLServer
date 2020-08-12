USE vet;

SELECT * FROM pet ORDER BY Nome;

SELECT * FROM veterinario WHERE IdVeterinario = 1;

SELECT * FROM veterinario WHERE CRVM LIKE '%43%'
AND Nome LIKE '%A%';

SELECT * FROM raca WHERE IdRaca > 1;


SELECT * FROM atendimento WHERE DataAtendimento BETWEEN'2020-06-01T00:00:00'  AND '2020-06-30T00:00:00' ;