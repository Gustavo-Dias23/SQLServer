USE vet;

SELECT * FROM pet ORDER BY Nome;

SELECT * FROM veterinario WHERE IdVeterinario = 1;

SELECT * FROM veterinario WHERE CRVM LIKE '%43%'
AND Nome LIKE '%A%';

SELECT * FROM raca WHERE IdRaca > 1;


SELECT * FROM atendimento WHERE DataAtendimento BETWEEN'2020-06-01T00:00:00'  AND '2020-06-30T00:00:00' ;

-- JOINS
USE vet;

SELECT pet.Nome,
dono.Nome,
pet.DataNascimento
FROM pet INNER JOIN dono ON pet.IdDono = dono.IdDono;

SELECT atendimento.DataAtendimento,
pet.Nome
FROM atendimento RIGHT JOIN pet ON atendimento.IdPet = pet.IdPet;

SELECT veterinario.Nome,
clinica.Nome
FROM veterinario LEFT JOIN clinica ON veterinario.IdClinica = clinica.IdClinica;