USE vet;

INSERT INTO clinica (Nome, Endereco) VALUES ('Companhia dos animais', 'Av Paulista');

INSERT INTO tipopet (Descricao) VALUES ('Cachorro');

INSERT INTO dono (Nome) VALUES ('Marcos');

INSERT INTO veterinario (IdClinica,IdVeterinario, Nome) VALUES (1,1, 'Dr.Andre');
UPDATE veterinario SET
CRVM = 43551
WHERE IdVeterinario = 1; 

INSERT INTO raca (Descricao, IdTipoPet) VALUES ('Vira-Lata', 2);

INSERT INTO pet (Nome, DataNascimento, IdDono, IdRaca) VALUES ('Max', '2017-08-21T23:59:59', 1, 2);

INSERT INTO atendimento (IdVeterinario, DataAtendimento, Descricao, IdPet) VALUES ( 1, '2020-06-22T23:59:59', 'Tudo OK', 4);

DELETE FROM dono WHERE IdDono = 3;






SELECT * FROM clinica;
SELECT * FROM dono;
SELECT * FROM pet;
SELECT * FROM tipopet;
SELECT * FROM raca;
SELECT * FROM veterinario;
SELECT * FROM atendimento;